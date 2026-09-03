# Por qué aparece texto en chino en los informes en español

**Fecha:** 3 de septiembre de 2026
**Estado:** analizado — **no requiere acción**

## Resumen

Los caracteres chinos que aparecen en los informes `*-research-*.md` en español son
la **salida cruda de `tools/financial_rigor.py`**, pegada dentro de bloques de código.
No es un fallo de generación ni un incumplimiento de la política de idioma: la
Report Language Policy de `CLAUDE.md` lo permite explícitamente.

> 嵌入 `tools/` 输出（如 `financial_rigor.py`、`report_audit.py`）时，在报告正文中将校验结果转写为西班牙语；**工具原始输出本身可保持不变**。

El diseño es: el bloque chino queda como traza de auditoría reproducible, y la tabla
en español inmediatamente debajo es la transcripción legible.

## Origen exacto

Las etiquetas están escritas en chino en el propio código del script:

| Cadena en el informe | Ubicación | Significado |
|---|---|---|
| `市值验算` | `financial_rigor.py:84` | Verificación de capitalización |
| `交叉验证` | `financial_rigor.py:183` | Validación cruzada |
| `三情景估值模型` | `financial_rigor.py:339` | Valoración a tres escenarios |
| `情景 / 年增速 / 目标PE / 目标EPS / 目标股价 / 涨跌幅` | `financial_rigor.py:356` | Escenario / crec. anual / PER obj. / EPS obj. / precio obj. / variación |
| `乐观 / 中性 / 悲观` | `financial_rigor.py:347-349` | Optimista / neutral / pesimista |
| `股价 / 总股本 / 偏差 / 验证通过` | `financial_rigor.py:86-103` | Precio / acciones / desviación / verificación superada |

## Alcance medido

De los 8 informes `research` en español: **218 líneas con caracteres CJK, 200 dentro
de bloques de código** (salida de la herramienta).

| Informe | En bloque | En prosa |
|---|---|---|
| Telefonica | 42 | 1 |
| Iberdrola | 40 | 2 |
| Google | 35 | 3 |
| Microsoft | 22 | 2 |
| Amazon | 22 | 3 |
| Nvidia | 21 | 5 |
| AMD | 18 | 0 |
| Meta | 0 | 2 |

Las 18 líneas de prosa tampoco son error:

- 6 son la cita `本分` de Duan Yongping, conservada en original con glosa en español.
- 12 son **rutas de archivo reales** de informes chinos del upstream
  (`reports/英伟达/`, `Google-Alphabet投资研究报告-20260623.md`, `reports/Meta/最终报告.md`,
  `Temu-vs-Amazon-财务对比-20260515.md`). Traducirlas rompería las referencias.

## Verificación de fidelidad (3-sep-2026)

Se comprobó que las cifras presentes en ambas tablas coinciden. Método: las tres
filas de escenario parten del mismo EPS actual, así que cada una debe implicar el mismo
EPS base al deshacer `EPS_obj / (1+g)³`.

**Matiz de cobertura:** la tabla española tiene **5 columnas frente a las 6 del bloque
chino** en los 6 informes — omite `目标EPS` (EPS objetivo). No es pérdida de información:
se recupera como `precio objetivo ÷ PER`, verificado en las 18 filas. Es una simplificación
editorial (el EPS objetivo es un paso intermedio del cálculo).

| Columna china | Equivalente español |
|---|---|
| `情景` | Escenario |
| `年增速` | Crecimiento anual EPS |
| `目标PE` | PER objetivo |
| **`目标EPS`** | **ausente — derivable como precio ÷ PER** |
| `目标股价` | Precio objetivo |
| `涨跌幅` | Retorno |

| Informe | EPS base implícito (Bull / Base / Bear) | Coherente |
|---|---|---|
| Telefonica | 0,3731 / 0,3734 / 0,3725 | sí |
| Microsoft | 15,779 / 15,780 / 15,776 | sí |
| Google | 10,810 / 10,810 / 10,812 | sí |
| Amazon | 7,170 / 7,169 / 7,168 | sí |
| Nvidia | 5,999 / 6,001 / 6,004 | sí |
| Iberdrola | 0,9421 / **0,9572** / 0,9426 | **no — fila Base** |

### Hallazgo: el bloque chino puede ser MENOS preciso que la tabla española

En `reports/Iberdrola/Iberdrola-research-20260712.md` el bloque chino imprime
`中性 (Base) 6%` mientras la tabla española dice **+6,5%**. La española es la correcta.

Causa: `financial_rigor.py:357` formatea el crecimiento con `:>7.0f` — **cero decimales**.
Todo crecimiento fraccionario se pierde al imprimirse. Reproducido:

```bash
python3 tools/financial_rigor.py three-scenario --price 20.9 --eps 0.9423 \
    --shares 66.7 --growth 0.09 0.065 0.03 --pe 24 20 15 --currency EUR
#   中性 (Base)          6%      20x       1.14      22.8    +8.9%   <- imprime 6%, entrada 6,5%
```

El precio objetivo de 22,8 € está calculado con 6,5%, y el 6,54% aparece derivado en el
anexo A.6 del propio informe. **Conclusión: la tabla en español es la lectura autorizada;
el bloque chino es una traza cruda y ligeramente lossy.**

## Los anexos: mezcla de idiomas y de procedencia (investigado 4-sep-2026)

### Por qué hay español dentro de los bloques chinos

La herramienta **interpola en plantillas chinas los textos que le pasa quien la llama**.
Reproducido carácter a carácter con el A.2 de Iberdrola:

```bash
python3 tools/financial_rigor.py cross-validate \
    --field "Ingresos FY2025" \
    --values '{"Iberdrola_slides": 45017, "stockanalysis": 46612}' --unit "M EUR"
```

| Parte | Idioma | Origen |
|---|---|---|
| `交叉验证`, `偏差`, `所有来源偏差`, `共识值` | chino | literales del script |
| `Ingresos FY2025` | español | `--field` |
| `Iberdrola_slides`, `stockanalysis` | español | claves del JSON de `--values` |
| `M EUR`, `EUR` | — | `--unit` / `--currency` |

Lo chino es del script; lo español es lo que el agente le pasó como argumento.

### Los anexos no son una traza reproducible

El anexo se titula «Registro de verificación cruzada de datos clave», que se lee como
rastro de auditoría reproducible. Se desvía en **las dos direcciones**:

**(a) Bloques recortados.** De 12 bloques `cross-validate` revisados, **11 omiten líneas que
la herramienta sí imprime**: `数据来源数` (nº de fuentes), `参考中位数` (mediana de
referencia) y `共识值` (valor de consenso). El único íntegro es el A.2 de Telefónica.

**(b) Líneas añadidas a mano.** 42 líneas dentro de los bloques del anexo que **ningún
comando produce**; 31 son métricas calculadas formateadas para parecer salida de herramienta.

| Informe | Líneas ajenas | Dónde |
|---|---|---|
| Telefonica | 0 | — (el único limpio) |
| Iberdrola | 5 | A.6 (EV/EBITDA ×2, P/S, CAGR ×2) |
| Google | 6 | A.5 |
| Amazon | 9 | A.2, A.3 |
| Microsoft | 10 | A.2, A.3 |
| Nvidia | 12 | A.2, A.3 |

En el A.6 de Iberdrola, `verify-valuation` termina en `✅ 以上指标均使用精确十进制计算,
无浮点误差`; todo lo posterior (EV/EBITDA, P/S, los dos CAGR) está escrito a mano dentro
del mismo bloque.

**Las 31 cuentas se recalcularon: 31/31 exactas.** No hay ninguna conclusión afectada en
ningún informe. El problema es de **procedencia**, no de corrección: quien re-ejecute los
comandos obtendrá más líneas en unos sitios y menos en otros.

### Reglas derivadas

- El caso **(a)** ya lo cubre la regla de cobertura completa (no omitir columnas ni líneas).
- El caso **(b)** motivó una segunda regla en `CLAUDE.md`: dentro de un bloque de código de
  salida de herramienta solo va lo que la herramienta imprime; los cálculos derivados van
  fuera, o dentro con la etiqueta `— derivado, no salida de herramienta`.

Ambas aplican solo a informes nuevos; los existentes no se modifican.

## Opción evaluada y descartada por ahora: envoltorio `--lang es`

Si algún día se quiere eliminar el chino de la salida, la vía que **no toca código del
autor original**:

1. **Archivo nuevo** `tools/financial_rigor_es.py`. Git resuelve conflictos por archivo:
   un archivo sin contrapartida upstream no entra nunca en el merge. Editar
   `financial_rigor.py` en cambio costaría un conflicto en cada sincronización.
2. **Intercepción por stdout**, no por importación de funciones internas:
   ```python
   with contextlib.redirect_stdout(buf):
       sys.argv = ["financial_rigor.py"] + args
       runpy.run_path("tools/financial_rigor.py", run_name="__main__")
   ```
   El contrato consumido es la CLI, lo más estable del script.
3. **Re-render, no `str.replace`.** El script alinea columnas con anchos fijos
   (`{'情景':12}`), pero Python cuenta caracteres y los ideogramas ocupan dos columnas
   (`情景` = 2 caracteres, 4 columnas). Sustituir texto rompe la alineación de la tabla.
   El envoltorio debe extraer los números con regex y redibujar con anchos españoles.
   Toda línea que no case con un patrón conocido se pasa tal cual y se avisa por stderr,
   para que un cambio de formato del upstream falle de forma visible.
4. **Punto de llamada: no editar los skills.** Siete skills invocan `financial_rigor.py`
   por su nombre (`investment-team`, `investment-checklist`, `earnings-team`,
   `portfolio-review`, `management-deep-dive`…) y todos son del upstream. En su lugar,
   una línea en la Report Language Policy de `CLAUDE.md` — zona propia, que se fusiona
   limpiamente y que ya declara que anula las instrucciones de los skills.

Balance: 0 ediciones en `financial_rigor.py`, 0 en los skills, 1 archivo nuevo y 1 línea
en `CLAUDE.md`.

**Alternativa de fondo:** contribuir al upstream un flag `--json` en `financial_rigor.py`.
Con salida estructurada, el envoltorio se reduce a un formateador sin regex frágiles, y
el mantenimiento pasa al autor original.

## Decisión (3-sep-2026)

**Informes existentes: no se tocan.** El comportamiento actual cumple la política de idioma
y la tabla en español es fiel (y en un caso, más precisa) respecto al bloque chino. La
columna `目标EPS` ausente es derivable y su omisión no invalida ninguna conclusión.

**Informes futuros: la transcripción española debe conservar todos los datos.** Regla
añadida a la Report Language Policy de `CLAUDE.md`, que es el punto de anulación correcto:
los 7 skills que invocan `financial_rigor.py` son del upstream y editarlos costaría un
conflicto en cada sincronización, mientras que esa sección de `CLAUDE.md` es propia, se
fusiona limpiamente y ya declara prioridad sobre los skills.

La misma nota advierte del redondeo de `:>7.0f`, para que la tabla traducida escriba el
crecimiento realmente pasado a la herramienta y no el valor truncado del bloque chino.

### Alcance de la regla

**Por tipo de informe:** al vivir en `CLAUDE.md` la regla es global, no exclusiva de
`/investment-research`. Alcanza a los 7 skills que invocan `financial_rigor.py`
(`investment-team`, `investment-checklist`, `earnings-team`, `earnings-review`,
`portfolio-review`, `management-deep-dive`), y por tanto a los informes `earnings-*`,
`management-*`, `thesis` y `private` además de los `research`.

**Por subcomando:** solo dos emiten tablas con columnas — `three-scenario` (6 columnas) y
`benford` (4: `首位数`/`观测`/`Benford期望`/`偏差`). Los otros cuatro
(`verify-market-cap`, `verify-valuation`, `cross-validate`, `calc`) emiten líneas
etiquetadas, no tablas. La regla se redactó como «todas las columnas **o líneas de datos**»
precisamente para que también les alcance: una redacción limitada a «columnas» los habría
dejado fuera sin decirlo.
