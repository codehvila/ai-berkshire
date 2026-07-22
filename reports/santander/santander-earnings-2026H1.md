# Banco Santander, S.A. (BME: SAN / NYSE ADR: SAN) — Resultados H1 2026 (1S2026)

**Fecha del informe**: 22 de julio de 2026
**Periodo cubierto**: primer semestre de 2026 (enero–junio), publicado hoy a las 10:00h (hora de Madrid)
**Marco de referencia**: `skills/earnings-review.md` + `skills/financial-data.md`; comparación contra `reports/santander/santander-research-20260710.md` y `reports/santander/santander-thesis.md`

---

## Aviso metodológico: calificación de acceso a fuente primaria de ESTE informe

**Calificación: Nivel B (fuente parcial / agregación de terceros)** — degradado respecto al Nivel A del informe de investigación del 10-jul-2026.

Durante la elaboración de este informe, el acceso directo a páginas web (`WebFetch`) estuvo bloqueado por la política de red de esta sesión (error 403 de la política de egress del proxy, confirmado en todos los dominios probados, incluidos santander.com, sec.gov y sitios de control como wikipedia.org — no es un bloqueo específico de Santander, es una restricción de la sesión). No fue posible descargar y leer el texto completo de la nota de prensa oficial, el informe financiero del semestre ni ningún transcript de la conferencia con analistas.

Todos los datos de este informe proceden de **resúmenes y extractos obtenidos vía motor de búsqueda** (`WebSearch`) de: (a) el titular y fragmentos de la nota de prensa oficial de Santander (santander.com/es/sala-de-comunicacion, indexada pero no accesible en texto completo), y (b) cobertura periodística especializada que cita directamente esa nota de prensa (Bolsamania, Infobae, El Español, Estrategias de Inversión, XTB, CityAM, Kalkine Media, Insider Media, entre otros). Se ha cruzado cada cifra clave contra al menos 2 fuentes independientes cuando ha sido posible (ver tablas), siguiendo `skills/financial-data.md`.

**Consecuencia práctica**: la lectura de tono de la dirección (§3), la extracción de citas textuales de la conferencia con analistas y el detalle de notas al pie del informe financiero (§4) son más limitados de lo habitual — se marcan explícitamente como "no disponible con esta fuente" donde corresponda, en lugar de inferir o inventar contenido. Los datos financieros centrales (beneficio, ingresos, capital, provisiones) tienen doble fuente y se consideran fiables.

---

## Uno: Panorama general — ¿la presentación ya tuvo lugar?

**Sí.** Santander presentó los resultados de H1 2026 hoy, 22 de julio de 2026, a las 10:00h de Madrid (conferencia con analistas) y a las 12:00h (rueda de prensa con medios). La acción cotizó a la baja durante la sesión pese a los resultados récord (ver §7).

---

## Dos: Datos financieros clave (nivel Grupo)

### 2.1 Cuenta de resultados

| Indicador | H1 2026 | H1 2025 (implícito) | Var. interanual | Fuente (×2) |
|---|---|---|---|---|
| Beneficio atribuido (contable, incluye extraordinarios) | 8.973 M€ | ~6.834 M€ (calc.) | **+31,3%** | Bolsamania ✅ / Infobae ✅ (desviación 0,00%) |
| Beneficio ordinario ("underlying", excluye extraordinarios) | 7.328 M€ | ~6.376 M€ (calc.) | **+15%** (algunas fuentes citan +14,9%) | Bolsamania ✅ / Estrategias de Inversión ✅ (desviación 0,00%) |
| Ingresos totales | 30.847 M€ | ~29.000 M€ (calc.) | **+6% / +6,4%** (dos cifras citadas, rango) | El Español / Estrategias de Inversión |
| Margen de intereses (NII) | 22.711 M€ | ~21.226 M€ (calc.) | **+7%** | El Español ✅ / Estrategias de Inversión ✅ |
| Comisiones netas | 6.851 M€ | ~6.286-6.343 M€ (calc.) | **+8% / +9%** (dos cifras citadas, diferencia de redondeo — auditoría: desviación 11,1% en el % pero <0,1% en el importe absoluto de 6.851 M€, que sí coincide entre fuentes) | El Español / Estrategias de Inversión |
| Costes totales | — | — | **-2%** en euros constantes, excl. TSB | Estrategias de Inversión |
| RoTE ordinario | 15,6% | ~14,9% (calc.) | **+0,7 p.p.** | Directivos y Empresas / Bolsamania |
| Ratio de eficiencia | 42,8% | ~45,7% (calc.) | **-2,9 p.p.** (mejora) | WebSearch (agregado, fuente única identificada con certeza — ⚠️ ver nota) |
| CET1 fully loaded | ~14,0% | 13,5% (FY2025) | +0,5 p.p. vs FY2025; -0,4 p.p. vs 1T2026 (14,4%) | Directivosyempresas / múltiples medios |
| Coste del riesgo | 1,15% | — | ligero repunte vs 1,14% en 1T2026 | WebSearch (fuente única — ⚠️ marcar con reserva) |
| Clientes totales | 182 millones | 170 millones | +12 millones (+7%) | Ana Botín (declaración oficial), múltiples medios |

**Nota sobre la partida extraordinaria (1.645 M€ de diferencia entre beneficio contable y ordinario)**: verificado con herramienta —

```
python3 tools/financial_rigor.py calc --expr '(8973-7328)'
→ 1.645 M€
```

Esta cifra se compone de: **+1.895 M€** de plusvalía neta por la venta del 49% de Santander Bank Polska a Erste Group (completada en enero de 2026), parcialmente compensada por **-250 M€** de costes de reestructuración ligados a la integración de TSB. 1.895 − 250 = 1.645 M€ ✅ cuadra exactamente con la herramienta.

**⚠️ Dato con reserva metodológica — ratio de eficiencia y coste del riesgo**: estas dos cifras (42,8% y 1,15%) provienen de un resumen agregado del motor de búsqueda sin poder identificar con certeza el artículo fuente original ni contrastarlas con una segunda fuente independiente en esta sesión (bloqueo de `WebFetch`, ver aviso metodológico). Se presentan como **[dato no confirmado por segunda fuente independiente — usar con cautela]**, a la espera de contraste directo contra el informe financiero oficial cuando sea accesible.

### 2.2 Capital y retribución al accionista

| Indicador | Valor H1 2026 | Comparación | Fuente |
|---|---|---|---|
| CET1 fully loaded | ~14,0% | vs. objetivo de cierre de año 12,8-13% (tras consumo de TSB ~60 p.b. y Webster ~150 p.b. previsto en 2S) | Directivosyempresas, múltiples medios |
| Programa de recompra activo (anunciado feb-2026) | 5.030 M€ máx.; ejecutado ~2.970 M€ (59%) a inicios de junio | En curso | Investing.com / Benzinga |
| Nueva recompra anunciada con los resultados de H1 | 1.800 M€, ya aprobada por el BCE | Adicional al programa de febrero | XTB |
| Dividendo complementario 2025 (pagado en el semestre) | 0,125 €/acción bruto, abonado desde el 5-may-2026 | Aprobado en junta del 27-mar-2026 | Investing.com |
| Objetivo de retribución acumulada 2025-2026 (recompras) | ≥10.000 M€ | Reiterado | (heredado del informe de investigación, no recontrastado esta sesión) |

**Lectura**: la política de retribución (~50% del beneficio, mitad dividendo/mitad recompra, más el reciclaje de capital de Polonia) sigue ejecutándose sin cambios de rumbo — coherente con la hipótesis clave #6 de la tesis.

### 2.3 Verificación de mercado (herramienta)

```
python3 tools/financial_rigor.py verify-market-cap --price 11.75 --shares 14.5e9 --reported 178e9 --currency EUR
→ Cap. calculada: 170,38 B€ | Cap. reportada (fin de junio): 178,00 B€ | Desviación: 4,28%
```

**Explicación de la desviación (4,28%, dentro del rango "requiere nota" de `financial-data.md`)**: no es un error de datos — la capitalización de "178.000 M€" reportada en prensa corresponde al **cierre de junio de 2026** (con la acción en el entorno de 12,0-12,3 €, según datos de mediados de julio), mientras que el precio de 11,75 € usado en la verificación es el **cierre de hoy, 22-jul-2026**, tras la caída del día de resultados (ver §7). El número de acciones (14.500 M, estimado por interpolación entre los 14.690 M de abril y los 14.540 M de julio-10, con recompras continuas reduciendo el conteo) también añade una pequeña incertidumbre. Ambos efectos combinados explican el 4,28% sin indicar error.

```
python3 tools/financial_rigor.py calc --expr '8973e6/14.5e9'   → BPA atribuido semestral ≈ 0,62 €
python3 tools/financial_rigor.py calc --expr '7328e6/14.5e9'   → BPA ordinario semestral ≈ 0,51 €
python3 tools/financial_rigor.py verify-valuation --price 11.75 --eps 1.0108 --bvps 5.76
→ PER (BPA ordinario semestral ×2, anualizado): 11,62x | P/BPTA: 2,04x | RoE implícito: 17,55%
```

Nota: el BPTA usado (5,76 €) es el de cierre de FY2025 (`santander-research-20260710.md`, §7.1) — previsiblemente algo mayor a cierre de junio de 2026 por la retención de beneficios del semestre; el P/BPTA de 2,04x es por tanto una **cota superior aproximada**, no la cifra exacta con BPTA de H1'26 (no disponible en esta sesión). Comparado con el 2,07x del informe de investigación (10-jul-2026, precio 11,92 €), el múltiplo se mantiene esencialmente estable pese a la caída del precio, porque el BPA ordinario anualizado también ha subido.

---

## Tres: Beneficio por región — comparación con la tesis

| Región | H1 2026 | Var. interanual | Nota |
|---|---|---|---|
| España | 2.534 M€ | +12,2% | Sigue siendo la geografía más rentable del grupo |
| Brasil | 1.093 M€ | **+9,7%** | 🟢 **Cambio de tendencia relevante** — FY2025 había cerrado en -10,5% interanual |
| México | 897 M€ | **+13%** | 🟢 También revierte la fotografía más débil de FY2025 (+2,0% FY2025) |
| EE. UU. | 989 M€ | +17,9% | Continúa la fuerte trayectoria de FY2025 (+38,9%) |
| Reino Unido | 725 M€ (grupo, según desglose regional) — **pero 827 M€ según otra fuente** ⚠️ | +29,5% (sobre la cifra de 725 M€) | Ya incorpora TSB desde el 1-may-2026; **discrepancia de 102 M€ (14,1%) entre dos fuentes no resuelta esta sesión — ver nota abajo** |

**⚠️ Discrepancia sin resolver (regla de `financial-data.md`: >5% de desviación exige verificación directa en fuente primaria, no disponible esta sesión)**: dos fragmentos de búsqueda distintos citan cifras diferentes para el beneficio del semestre en Reino Unido a nivel de segmento de grupo (725 M€ "+29,5%" en una nota, 827 M€ "beneficio ordinario del grupo afectado por las provisiones de coches" en otra, que podría no ser estrictamente comparable — esta segunda cifra podría referirse a una base distinta). No se puede reconciliar sin el informe financiero original. Se recomienda verificación directa en el próximo acceso a fuente primaria antes de usar esta cifra para conclusiones de precisión decimal — mismo patrón de "vacío de datos, no error" ya señalado en el informe de investigación (§1.3 del informe del 10-jul-2026, gap de 785 M€ entre segmentos y consolidado).

**Portugal, Chile, Argentina, Consumer Finance Europa**: **no disponibles en esta sesión** — no se encontraron desgloses fiables vía búsqueda para estos segmentos en H1 2026. Se marca como "dato no disponible", no se estima ni se rellena con cifras de FY2025.

**Lectura sobre la hipótesis clave #5 de la tesis** ("Brasil y México no siguen deteriorándose de forma sostenida"): el dato de H1 2026 es una **señal positiva clara** — ambas geografías, que cerraron FY2025 con beneficio débil o en caída (Brasil -10,5%), muestran crecimiento de doble dígito o cercano en H1 2026. Esto **mejora el estado de la hipótesis #5** respecto a la tesis original (ver §6 de este informe).

---

## Cuatro: Litigio de comisiones de financiación de automóvil en Reino Unido

Este es el riesgo identificado como "el mayor riesgo" en el memorando de decisión del informe de investigación (§8.1). Estado a fecha de hoy:

- **Provisión de referencia usada en la tesis (12-jul-2026)**: 461 M£ (~535 M€), cifra de cierre de FY2025 (feb-2026).
- **Nueva información de esta sesión**: Santander UK realizó una **provisión adicional de 179 M£ (≈207 M€ bruto / 155 M€ neto de impuestos) durante el 1T 2026**, elevando el saldo total provisionado a **~633-640 M£ (dos cifras citadas, rango estrecho) a 31 de marzo de 2026**. No se ha encontrado en esta sesión evidencia concluyente de una **nueva** dotación adicional específica del 2T 2026 (abril-junio) más allá de ese incremento del 1T — el saldo de H1 probablemente sea el mismo ~640 M£ o ligeramente superior, pero **no se puede confirmar el importe exacto a 30-jun-2026 sin el informe financiero original**.
- **Resultado a nivel de Santander UK**: el beneficio antes de impuestos del semestre de Santander UK Group Holdings cayó un 31% interanual, hasta 528 M£, explicado por la combinación de la provisión de coches y los costes de integración de TSB.
- **Proceso legal**: no se ha encontrado en esta sesión ninguna novedad sobre las vistas del Upper Tribunal — la expectativa (recogida en la tesis) de que no haya resolución antes de octubre de 2026 sigue sin cambios, en la medida en que la ausencia de noticias es en sí misma consistente con "sin novedad".

**Lectura cuantitativa**: 640 M£ provisionados frente a la banda alta de RBC de 1.400 M£ implica que el banco ha cubierto ya ~46% de esa banda alta (frente a ~33% en la fotografía de la tesis del 12-jul, cuando la provisión de referencia era 461 M£). El incremento de provisión (+179 M£ en el trimestre) es coherente con — no contradice — el riesgo ya identificado en la tesis; **no constituye por sí mismo la activación de la línea roja #3** ("revisión sustancial al alza hacia la banda de RBC sin que el mercado lo haya descontado"), porque el incremento fue conocido por el mercado desde la publicación de resultados del 1T'26 (29-abr-2026) y no es una sorpresa de esta presentación de H1. Se mantiene el estado 🟡 "pendiente de resolución" en la tesis, con la nota de que la trayectoria de provisiones sigue siendo ascendente trimestre a trimestre.

---

## Cinco: Integración de TSB y Webster Financial

### TSB (Reino Unido)
- Adquisición **completada el 30 de abril de 2026** (cierre dentro del calendario previsto).
- Aporta más de 4 millones de clientes, depósitos de calidad y una cartera hipotecaria de bajo riesgo.
- Sinergias previstas: **≥400 M£**.
- Costes de reestructuración ya reconocidos en el semestre: **250 M€** (parte de la partida extraordinaria, ver §2.1).
- Consumo de capital: **~60 puntos básicos de CET1** en el 2T 2026, ya reflejado en la caída de 14,4% (1T'26) a ~14,0% (H1'26).

### Webster Financial (EE. UU.)
- Aprobada por los accionistas de Webster el **26 de mayo de 2026**.
- Aprobada por la Oficina del Comptroller de la Moneda (OCC) el **12 de junio de 2026**.
- Aprobada por el **Banco Central Europeo el 21 de julio de 2026** — es decir, **un día antes** de la publicación de estos resultados. Todas las aprobaciones regulatorias relevantes citadas en las fuentes consultadas están ya obtenidas.
- **Cierre esperado**: segunda mitad de 2026 (aún no cerrada a la fecha de este informe).
- Consumo de capital previsto: **~150 puntos básicos de CET1** en el 2S 2026 — es la razón principal por la que el objetivo de CET1 de cierre de año (12,8%-13%) es sustancialmente inferior al 14,0% actual.

**Lectura sobre la hipótesis clave #7 de la tesis** ("riesgo de cierre fallido o en condiciones sustancialmente peores"): con todas las aprobaciones regulatorias relevantes ya obtenidas a 21-jul-2026, el riesgo de ejecución de Webster se reduce significativamente — queda pendiente solo el cierre formal en el 2S 2026. No hay indicios en las fuentes consultadas de condiciones sustancialmente peores a lo anunciado.

---

## Seis: Objetivos 2026 y declaraciones de la dirección

**Objetivos 2026 reiterados sin cambios** (excluyendo impacto de M&A):
- Crecimiento de ingresos de dígito medio.
- Costes a la baja en euros constantes.
- Beneficio superior a los 14.101 M€ de 2025.
- CET1 de cierre de año entre 12,8% y 13%.

**Declaración de Ana Botín (presidenta)**, citada en prensa:

> "Hemos tenido un buen primer semestre, con doce millones de clientes más que hace un año. Los ingresos crecen un 6%, los costes bajan y ONE Transformation sigue impulsando la mejora del apalancamiento operativo, que contribuye a unos resultados récord."

Botín añadió que la integración de TSB "refuerza la posición de Santander en uno de sus mercados clave".

**Limitación importante de esta sección**: no se ha podido acceder al transcript de la conferencia con analistas de las 10:00h ni a la rueda de prensa de las 12:00h (bloqueo de `WebFetch`, ver aviso metodológico). Por tanto, **no es posible completar en este informe**: el análisis de tono de la dirección en el Q&A (§3 del formato estándar de `earnings-review.md`), el seguimiento de compromisos trimestre a trimestre más allá de lo ya documentado en el informe de investigación, ni la tabla de preguntas de analistas y calidad de respuesta. Esto se marca explícitamente como **vacío de información**, no se rellena con inferencia.

---

## Siete: Reacción del mercado

- **Cierre de la acción hoy (22-jul-2026, BME Madrid)**: **11,75 €**, con caídas intradía citadas entre -0,52% y -1,14% según el momento de la sesión (varias fuentes citan cifras ligeramente distintas de la variación porcentual exacta, sin que se pueda reconciliar con precisión sin el dato oficial de cierre; el nivel de 11,75 € tiene una fuente directa: "Las acciones de Banco Santander ceden 0,52% y cierran en 11,75 euros").
- **IBEX 35**: abrió a la baja (-0,47%), lastrado en parte por Santander e Iberdrola, en una jornada marcada por la expectativa de la decisión de tipos del BCE (prevista para el día siguiente) y tensión geopolítica en Oriente Medio — es decir, la caída de Santander no está aislada de un contexto de mercado más amplio.
- **Explicación de mercado citada (XTB) para la caída pese a resultados récord**: el beneficio contable (+31%) incorpora un efecto extraordinario neto de 1.645 M€ (plusvalía de Polonia neta de costes de TSB) que el mercado ya conocía y que no representa mejora operativa recurrente; el foco de los inversores se desplazó al **impacto de las adquisiciones (TSB, Webster) sobre el capital** y a distinguir entre "beneficio contable" y "mejora real del negocio subyacente".
- **ADR NYSE**: no se encontraron en esta sesión datos fiables sobre la cotización del ADR en la sesión de hoy — **dato no disponible**, no se estima.

**Nota de honestidad**: no es posible, con las fuentes disponibles en esta sesión, distinguir con precisión qué parte de la caída de la acción es específica a la lectura del mercado sobre los resultados de Santander frente a qué parte es ruido de mercado general del día (BCE + IBEX en negativo). Se presentan ambos factores sin forzar una atribución única.

---

## Ocho: Relación con la tesis de inversión — ¿fortalece, no afecta, o debilita?

**Conclusión explícita (regla de `earnings-review.md`)**: estos resultados **fortalecen parcialmente** la tesis en los puntos de mayor incertidumbre (Brasil/México), la **mantienen sin cambios** en capital y retribución, y añaden un **matiz de vigilancia** (no una ruptura) en el litigio del Reino Unido y en la calidad interna de la cifra de RoTE. No hay ningún elemento en los datos disponibles que constituya ruptura de tesis ni activación de línea roja.

| Hipótesis clave (tesis 12-jul-2026) | Estado previo | Estado tras H1 2026 | Cambio |
|---|---|---|---|
| #1 RoTE mejora hacia >20% (2028) | 🟢 16,3% FY2025 | 🟡 RoTE ordinario H1'26 = 15,6% (+0,7 p.p. interanual, pero por debajo del nivel anual FY2025) | Sigue mejorando interanualmente en base semestral, pero el nivel absoluto (15,6%) es inferior al del cierre de FY2025 (16,3%) — no comparable 1:1 (semestre vs. año completo); requiere vigilancia el próximo trimestre, no señal de ruptura |
| #2 Ratio de eficiencia ≤42% o mejora | 🟢 41,2% FY2025 | 🟡 42,8% H1'26 (dato de fuente única, no confirmado) — mejora interanual (-2,9 p.p.) pero por encima del umbral de 42% | Mejora en tendencia, pero el nivel absoluto empeora ligeramente frente a FY2025 — parcialmente explicable por integración de TSB (cost-to-integrate); dato con reserva metodológica |
| #3 CET1 ≥13% | 🟢 14,4% (1T2026) | 🟢 ~14,0% (H1'26) — cae como estaba previsto por consumo de capital de TSB, sigue muy por encima del umbral | Cumple, evolución dentro de lo guiado |
| #4 Litigio UK dentro de rango razonable | 🟡 461 M£ provisionado | 🟡 ~640 M£ provisionado (+179 M£ en 1T'26); sin resolución del Upper Tribunal | Provisión sube pero de forma ya conocida por el mercado, no es sorpresa de esta presentación; sigue pendiente |
| #5 Brasil/México no se deterioran | 🟡 Brasil -10,5% FY2025 | 🟢 Brasil +9,7%, México +13% en H1'26 | **Mejora clara** — revierte la señal negativa de la tesis original |
| #6 Retribución al accionista ~50% del beneficio | 🟢 Cumple | 🟢 Cumple — recompra en curso (59% ejecutado) + nueva recompra de 1.800 M€ aprobada por el BCE | Sin cambios |
| #7 Sin pérdida de cuota confirmada frente a Nubank | ⚪ Sin datos directos | ⚪ Sin datos directos | Sin cambios — no se buscó en profundidad esta sesión, fuera del alcance de un earnings review trimestral |

**Líneas rojas**: ninguna activada. La más cercana a vigilar sigue siendo la #3 (litigio UK) y la #4 (estancamiento de RoTE), ninguna de las dos activada por los datos de H1'26.

**Catalizador siguiente a vigilar**: (1) cierre formal de la adquisición de Webster Financial en el 2S 2026 y su impacto real en CET1; (2) resultados del 3T 2026 para confirmar si la mejora de Brasil/México es sostenida o puntual; (3) cualquier novedad de las vistas del Upper Tribunal sobre el caso de comisiones de financiación de automóvil (no esperadas antes de octubre de 2026, pero a vigilar).

**Si ya se tuviera posición real (recordatorio: la tesis está en modo watchlist, sin compra ejecutada)**: los datos de H1'26 no cambian la recomendación de la tesis original — el margen de seguridad al precio de referencia seguía siendo limitado en el escenario base, y el precio de hoy (11,75 €) está de hecho ligeramente por debajo del precio de referencia de la tesis (11,92 €, 10-jul-2026), sin que el margen de seguridad haya mejorado sustancialmente (el PER anualizado sobre BPA ordinario, 11,62x, es similar al 13,10x calculado sobre BPA FY2025 completo, con la diferencia explicada por el crecimiento de beneficio ya incorporado). No hay una señal clara de "mejor punto de entrada" ni de "señal de venta" en estos datos.

---

## Fuentes consultadas (nivel B — agregación de terceros, sin acceso a texto completo original)

Nota de prensa oficial de Santander (título y fragmentos indexados, santander.com/es/sala-de-comunicacion/notas-de-prensa/2026/07/resultados-banco-santander-2t-2026 — no accesible en texto completo esta sesión); Bolsamania; Infobae; El Español (Invertia); Estrategias de Inversión; Directivos y Empresas; XTB (análisis de mercado); El Correo Gallego; Benzinga España; El Plural; Investing.com España; Kalkine Media; Insider Media / Yahoo Finance UK; CityAM (histórico, contexto del caso de coches); theofficer.es (cotización de cierre). Todas las cifras clave de beneficio, ingresos y capital fueron cruzadas contra un mínimo de 2 fuentes independientes cuando fue posible, siguiendo `skills/financial-data.md`. Las cifras marcadas con ⚠️ no pudieron cruzarse con una segunda fuente independiente en esta sesión.

**Repetición del aviso metodológico**: este informe se degrada a Nivel B de riqueza de fuente primaria únicamente por la restricción de red de esta sesión concreta (bloqueo de `WebFetch`), no por falta de disponibilidad de la información — Santander es una empresa de Nivel A de cobertura informativa (ver informe de investigación del 10-jul-2026). Se recomienda, si es posible en una sesión futura con acceso a `WebFetch` habilitado, releer el informe financiero oficial completo y el transcript de la conferencia con analistas para completar el análisis de tono de dirección (§6) y resolver las dos discrepancias marcadas (§3, ratio de eficiencia en §2.1).
