#!/usr/bin/env python3
"""Generate Codex custom prompts from AI Berkshire skills.

Codex custom prompts are deprecated in favor of skills, but they provide the
slash-command style entry point that Claude Code users expect.
"""

from __future__ import annotations

import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CLAUDE_SKILLS = ROOT / "skills"
CODEX_PROMPTS = ROOT / "codex-prompts"


def split_frontmatter(text: str):
    if not text.startswith("---\n"):
        return None, text
    end = text.find("\n---\n", 4)
    if end == -1:
        return None, text
    return text[4:end], text[end + 5 :].lstrip("\n")


def first_heading(text: str, fallback: str) -> str:
    for line in text.splitlines():
        if line.startswith("# "):
            return line[2:].strip()
    return fallback


def yaml_quote(value: str) -> str:
    value = value.replace("\\", "\\\\").replace('"', '\\"')
    return f'"{value}"'


def extract_description(frontmatter_text: str) -> str | None:
    """Extract the `description:` value from a source frontmatter block.

    Supports both an inline value (`description: text` or quoted) and a
    YAML block-literal value (`description: |` followed by indented
    lines), without depending on a YAML library, to keep this script
    dependency-free.
    """
    lines = frontmatter_text.splitlines()
    for i, line in enumerate(lines):
        if not line.startswith("description:"):
            continue
        rest = line[len("description:") :].strip()
        if rest in ("|", "|-", ">", ">-", ""):
            collected: list[str] = []
            indent: int | None = None
            for nxt in lines[i + 1 :]:
                if nxt.strip() == "":
                    collected.append("")
                    continue
                stripped = nxt.lstrip()
                cur_indent = len(nxt) - len(stripped)
                if indent is None:
                    indent = cur_indent
                if cur_indent < indent:
                    break
                collected.append(nxt[indent:])
            value = "\n".join(collected).rstrip()
            return value or None
        if (rest.startswith('"') and rest.endswith('"')) or (
            rest.startswith("'") and rest.endswith("'")
        ):
            rest = rest[1:-1]
        return rest or None
    return None


def format_description_field(description: str) -> str:
    """Render a `description:` frontmatter field, using a block literal
    when the value spans multiple lines (e.g. bilingual descriptions)."""
    if "\n" in description:
        indented = "\n".join(
            f"  {line}" if line else "" for line in description.split("\n")
        )
        return "description: |\n" + indented + "\n"
    return f"description: {yaml_quote(description)}\n"


def prompt_for(source: Path) -> str:
    name = source.stem
    source_text = source.read_text(encoding="utf-8")
    existing, body = split_frontmatter(source_text)
    description = extract_description(existing) if existing else None
    if not description:
        title = first_heading(body, name)
        description = f"AI Berkshire slash entry for {title}."
    return (
        "---\n"
        + format_description_field(description)
        + "argument-hint: $ARGUMENTS\n"
        "---\n\n"
        f"Use the installed AI Berkshire Codex skill `{name}` for this request.\n\n"
        f"If the skill is not already loaded, read and follow "
        f"`~/ai-berkshire/codex-skills/{name}/SKILL.md`.\n\n"
        "User arguments:\n"
        "$ARGUMENTS\n"
    )


def main() -> None:
    check = "--check" in sys.argv[1:]
    unknown_args = [arg for arg in sys.argv[1:] if arg != "--check"]
    if unknown_args:
        joined = ", ".join(unknown_args)
        raise SystemExit(f"Unknown argument(s): {joined}")

    if not check:
        CODEX_PROMPTS.mkdir(exist_ok=True)

    count = 0
    stale: list[str] = []
    for source in sorted(CLAUDE_SKILLS.glob("*.md")):
        target = CODEX_PROMPTS / source.name
        content = prompt_for(source)
        if check:
            if not target.exists() or target.read_text(encoding="utf-8") != content:
                stale.append(str(target.relative_to(ROOT)))
        else:
            target.write_text(content, encoding="utf-8")
        count += 1

    if check:
        if stale:
            print("Codex prompts are out of date:")
            for path in stale:
                print(f"  {path}")
            raise SystemExit(1)
        print(f"Checked {count} Codex prompts in {CODEX_PROMPTS.relative_to(ROOT)}")
        return

    print(f"Generated {count} Codex prompts in {CODEX_PROMPTS.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
