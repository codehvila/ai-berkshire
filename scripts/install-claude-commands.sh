#!/usr/bin/env bash
set -euo pipefail

# ── AI Berkshire · Claude Code Commands Installer (improved) ────────────────
#
# Changes from the original flat-copy approach:
#   1. Namespacing — skills land in ~/.claude/commands/berkshire/ so they
#      appear as /berkshire:investment-research instead of polluting the
#      top-level / menu.
#   2. Selective install — --only and --skip let you pick which skills.
#      Default is still "install all".
#   3. Uninstall — --uninstall removes the namespace directory cleanly.
#   4. Overwrite safety — warns and backs up before clobbering existing
#      commands that live outside the namespace (stale flat installs).
#   5. Dry-run — --dry-run prints what would happen without touching disk.
#   6. Unchanged — tools/ are still chmod +x in-place (no contamination).

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST_BASE="${CLAUDE_COMMANDS_DIR:-$HOME/.claude/commands}"
NAMESPACE="berkshire"
DEST="$DEST_BASE/$NAMESPACE"

# ── helpers ─────────────────────────────────────────────────────────────────

usage() {
  cat <<EOF
Usage: $0 [flags]

Flags:
  (none)              Install all 19 AI Berkshire skills under /berkshire:
  --only name,...     Install only the named skills (comma-separated)
  --skip name,...     Install all except the named skills
  --uninstall         Remove the /berkshire namespace and stale flat files
  --dry-run           Print what would be done without doing it
  -h, --help          Show this message

Examples:
  $0                              # install everything
  $0 --only investment-research   # single skill
  $0 --skip dyp-ask,wechat-article # all but those two
  $0 --uninstall                  # clean removal
EOF
  exit 0
}

# ── arguments ───────────────────────────────────────────────────────────────

MODE=install
ONLY=()
SKIP=()
DRY_RUN=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help) usage ;;
    --uninstall) MODE=uninstall ;;
    --dry-run) DRY_RUN=true ;;
    --only)
      [[ $# -gt 1 ]] || { echo "ERROR: --only requires a value"; exit 1; }
      IFS=',' read -r -a ONLY <<< "$2"; shift ;;
    --skip)
      [[ $# -gt 1 ]] || { echo "ERROR: --skip requires a value"; exit 1; }
      IFS=',' read -r -a SKIP <<< "$2"; shift ;;
    *) echo "ERROR: unknown flag $1"; usage ;;
  esac
  shift
done

# ── uninstall ───────────────────────────────────────────────────────────────

do_uninstall() {
  echo "🧹 Uninstalling AI Berkshire Claude Code commands..."

  # 1) Remove the namespace directory
  if [[ -d "$DEST" ]]; then
    if $DRY_RUN; then
      echo "  [dry-run] rm -rf $DEST"
    else
      rm -rf "$DEST"
      echo "  Removed $DEST"
    fi
  else
    echo "  (no namespace directory at $DEST)"
  fi

  # 2) Remove stale flat files from the original install (root of commands/)
  local stale=0
  for src in "$ROOT"/skills/*.md; do
    local name
    name="$(basename "$src")"
    local flat="$DEST_BASE/$name"
    if [[ -f "$flat" ]]; then
      stale=$((stale + 1))
      if $DRY_RUN; then
        echo "  [dry-run] rm $flat  (stale flat install)"
      else
        rm "$flat"
        echo "  Removed stale flat file: $flat"
      fi
    fi
  done
  [[ $stale -eq 0 ]] && echo "  (no stale flat files found)"

  echo "✅ Uninstall complete."
}

# ── install ─────────────────────────────────────────────────────────────────

do_install() {
  echo "📦 Installing AI Berkshire Claude Code commands → /$NAMESPACE:..."

  # Build the list of skills to install
  local skills=()
  for src in "$ROOT"/skills/*.md; do
    local name
    name="$(basename "$src" .md)"

    # --only filter
    if [[ ${#ONLY[@]} -gt 0 ]]; then
      local match=false
      for o in "${ONLY[@]}"; do [[ "$o" == "$name" ]] && match=true; done
      $match || continue
    fi

    # --skip filter
    local skip=false
    for s in "${SKIP[@]}"; do [[ "$s" == "$name" ]] && skip=true; done
    $skip && continue

    skills+=("$src")
  done

  if [[ ${#skills[@]} -eq 0 ]]; then
    echo "⚠️  No skills matched your filters. Nothing to install."
    exit 0
  fi

  echo "  Will install ${#skills[@]} skill(s)"

  # Warn about existing flat files from old-style install
  local conflicts=()
  for src in "${skills[@]}"; do
    local name
    name="$(basename "$src")"
    local flat="$DEST_BASE/$name"
    [[ -f "$flat" ]] && conflicts+=("$flat")
  done

  if [[ ${#conflicts[@]} -gt 0 ]]; then
    echo ""
    echo "⚠️  Found ${#conflicts[@]} stale flat file(s) from a previous non-namespaced install:"
    for f in "${conflicts[@]}"; do echo "     $f"; done
    echo ""
    echo "  These will be moved to $DEST_BASE/.backup-$(date +%Y%m%d-%H%M%S)/"
    echo "  (They would shadow the namespaced versions if left in place.)"
    echo ""
  fi

  # Create namespace directory
  if $DRY_RUN; then
    echo "  [dry-run] mkdir -p $DEST"
  else
    mkdir -p "$DEST"
  fi

  # Backup and remove stale flat files
  if [[ ${#conflicts[@]} -gt 0 ]] && ! $DRY_RUN; then
    local backup_dir="$DEST_BASE/.backup-$(date +%Y%m%d-%H%M%S)"
    mkdir -p "$backup_dir"
    for f in "${conflicts[@]}"; do
      mv "$f" "$backup_dir/"
      echo "  Backed up: $(basename "$f") → $backup_dir/"
    done
  fi

  # Copy skills into namespace
  for src in "${skills[@]}"; do
    local name
    name="$(basename "$src")"
    if $DRY_RUN; then
      echo "  [dry-run] cp $name → $DEST/"
    else
      cp "$src" "$DEST/"
      echo "  ✓ /$NAMESPACE:$(basename "$src" .md)"
    fi
  done

  # Make tools executable (in-repo, not in ~/.claude)
  if ! $DRY_RUN; then
    chmod +x "$ROOT"/tools/*.py "$ROOT"/tools/*.sh 2>/dev/null || true
  fi

  echo ""
  echo "✅ Done. Restart Claude Code and use:"
  echo "   /berkshire:investment-research Tesla"
  echo "   /berkshire:quality-screen Hang Seng Index"
  echo ""
  echo "   Uninstall: $0 --uninstall"
}

# ── main ────────────────────────────────────────────────────────────────────

case "$MODE" in
  install)    do_install ;;
  uninstall)  do_uninstall ;;
esac
