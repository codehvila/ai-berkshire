# Advanced Micro Devices, Inc. (NASDAQ: AMD) — Informe de Investigación

**Fecha de investigación**: 13 de julio de 2026
**Marco de análisis**: Buffett – Munger – Duan Yongping – Li Lu
**Precio de referencia**: $535,10 (cierre 13-jul-2026, stockanalysis.com) — otra fuente (Yahoo Finance) reportó $532,62 con 20 minutos de diferencia; discrepancia normal en un día de caída de -4 a -4,5%
**Capitalización de mercado**: ~$872.500 M (verificada por herramienta, ver Anexo)

---

## Calificación de riqueza informativa: **A (información abundante)**

AMD cotiza en NASDAQ desde 1979, tiene cobertura de decenas de analistas sell-side (Goldman Sachs, UBS, Cantor Fitzgerald, William Blair, D.A. Davidson, Morgan Stanley, Bernstein, entre otros), cobertura mediática diaria y datos financieros trimestrales auditados con más de 20 años de historial. Esto implica:

- **Trampa de investigación típica de nivel A**: el consenso es muy fuerte y el output de cualquier modelo de IA (incluido este informe) tenderá a converger con la narrativa ya descontada por el mercado. El alpha informativo de "encontrar un dato que nadie vio" es bajo.
- **Estrategia aplicada en este informe**: en lugar de repetir el consenso alcista (cuota de mercado ganada, momentum de IA), este informe pone el foco en **verificación cruzada obligatoria** (herramienta `financial_rigor.py`), en un **DCF inverso** que cuantifica exactamente qué crecimiento exige el precio actual, y en las **razones por las que inversores sofisticados podrían NO comprar o incluso vender** (William Blair, D.A. Davidson, benchmarks independientes de SemiAnalysis).
- **Autochequeo de sesgo**: la sensación de "esto se ve sólido" en este informe proviene en gran parte del volumen de datos disponibles (ganancias de cuota documentadas trimestre a trimestre), no necesariamente de que el negocio sea mejor que el de un competidor con menos cobertura. Se ha intentado compensar esto dedicando la Sección 4 (Munger) y la Sección 7 (valoración) a cuantificar exactamente cuánto optimismo ya está pagado en el precio.

---

## 1. Datos recopilados y verificación cruzada

### 1.1 Estructura de ingresos — Año fiscal completo (FY2025 vs FY2024)

| Segmento | FY2025 | FY2024 | Var. YoY |
|---|---|---|---|
| Data Center | $16.635 M | $12.579 M | +32% |
| Client | $10.640 M | $7.054 M | +51% |
| Gaming | $3.910 M | $2.595 M | +51% |
| Embedded | $3.454 M | $3.557 M | -3% |
| **Total** | **$34.639 M** ✅ | **$25.785 M** | **+34%** |

✅ Ingresos FY2025 verificados por herramienta: AMD 10-K/press release $34.639M vs stockanalysis.com $34.639M — desviación 0,00%.

AMD no desglosa margen bruto por segmento, solo resultado operativo:

| Segmento | Resultado operativo FY2025 | FY2024 |
|---|---|---|
| Data Center | $3.603 M | $3.482 M |
| Client & Gaming (combinado) | $2.855 M | $1.187 M |
| Embedded | $1.243 M | $1.421 M |

### 1.2 Últimos 4 trimestres

| Segmento | Q2'25 | Q3'25 | Q4'25 | Q1'26 |
|---|---|---|---|---|
| Data Center | $3.240M (+14%) | $4.341M (+22%) | $5.380M | $5.775M (+57%) |
| Client | $2.499M (+67%) | $2.750M (+46%) | $3.097M | $2.885M (+26%) |
| Gaming | $1.122M (+73%) | $1.298M (+181%) | $843M | $720M (+11%) |
| Embedded | $824M (-4%) | $857M (-8%) | $950M | $873M (+6%) |
| **Total** | **$7.685M** (+32%) | **$9.246M** (+36%) | **$10.270M** (+34%) | **$10.253M** (+38%) |

Nota: Q2 2025 incluyó ~$800M de cargos por restricciones de exportación de MI308 a China, deprimiendo el margen bruto GAAP a 40% ese trimestre (vs 49-54% en el resto).

### 1.3 Serie histórica 5 años

| Métrica | FY2021 | FY2022 | FY2023 | FY2024 | FY2025 |
|---|---|---|---|---|---|
| Ingresos | $16.434M | $23.601M | $22.680M | $25.785M | $34.639M |
| Margen bruto GAAP | 48% | 45% | 46% | 49% | 50% |
| Resultado operativo GAAP | $3.648M | $1.264M | $401M | $1.900M | $3.694M |
| Margen operativo GAAP | 22,2% | 5,4% | 1,8% | 7,4% | 10,7% |
| Beneficio neto GAAP | $3.162M ✅ | $1.320M | $854M | $1.641M | $4.335M |
| Beneficio neto Non-GAAP | $3.435M | $5.504M | $4.300M | $5.420M | $6.831M |
| EPS diluido GAAP | $2,57 | $0,84 | $0,53 | $1,00 | $2,65 |
| EPS diluido Non-GAAP | $2,79 | $3,50 | $2,65 | $3,31 | $4,17 |
| Efectivo + inversiones CP | $3.608M | $5.855M | $5.773M | $5.132M | $10.552M ✅ |
| Deuda total | $313M | $2.467M | — | — | $3.222M ⚠️ |
| Flujo de caja operativo | $3.521M | $3.565M | $1.667M | $3.041M | $7.709M |
| Capex | -$301M | -$450M | -$546M | -$636M | -$1.012M |
| **FCF** | **$3.220M** | **$3.115M** | **$1.121M** | **$2.405M** | **$6.697M** |

✅ = verificado por `financial_rigor.py cross-validate` con desviación ≤2% entre AMD 10-K/press release y stockanalysis.com.
⚠️ = **deuda total FY2025 presenta discrepancia real de 8,84%** entre AMD 10-K/press release ($3.222M) y stockanalysis.com ($3.847M). Herramienta: mediana ponderada $3.534,5M. Se prioriza la cifra del 10-K oficial de AMD por ser fuente primaria directa, siguiendo la regla del proyecto, pero la discrepancia queda señalada sin resolver — posible diferencia de qué pasivos se incluyen (arrendamientos operativos, porción corriente).

### 1.4 Valoración actual (13-jul-2026)

| Métrica | AMD | NVIDIA | Intel | Broadcom |
|---|---|---|---|---|
| Precio | $535,10 | $204,30 | $103,27 | $386,98 |
| Market Cap | $872.500M* | $4,95 billones | $519.140M | $1,84 billones |
| PE trailing | 186,04x | 32,31x | n/a (pérdida neta) | 66,57x |
| PE forward | 63,51x | 21,19x | 103,13x | 25,40x |
| PS | 23,86x | 19,82x | 10,27x | 24,28x |
| PEG | 1,08 | 0,47 | 1,39 | 0,55 |
| EV/Revenue | 23,63x | 19,66x | 10,49x | 24,88x |
| EV/EBITDA | **119,13x** | 30,11x | 39,79x | 44,61x |

*✅ Verificado: $535,10 × 1.630.338.779 acciones = $872.390M calculado vs $872.530M reportado — desviación 0,02%. Herramienta `financial_rigor.py verify-market-cap`.

**Anomalía a destacar**: el EV/EBITDA de AMD (119x) es 4x el de NVIDIA (30x) y casi 3x el de Broadcom (45x), pese a que AMD crece ingresos a tasa similar o menor. Esto refleja en parte un EBITDA TTM comprimido por los cargos de exportación a China de 2025, pero incluso ajustando por ese efecto, AMD cotiza sustancialmente más cara que sus comparables directos en esta métrica.

**⚠️ Discrepancia detectada en auditoría de datos (post-publicación)**: el PE forward de AMD reportado aquí (63,51x, stockanalysis.com) diverge un **24,97%** frente a Yahoo Finance (79,37x), ambos consultados el mismo día (13-jul-2026). La diferencia proviene de distintas estimaciones de consenso de EPS forward usadas por cada proveedor, no de un error de transcripción. De igual modo, el PE trailing de Broadcom (66,57x aquí vs 58,99x en macrotrends, 4 días antes) y el PS de Intel (10,27x aquí vs 9,55x en GuruFocus, ~6 semanas antes) muestran variaciones de 7-11% atribuibles a desfase temporal y metodología de EPS/ingresos TTM entre proveedores. Ninguna de estas variaciones cambia la conclusión direccional de la Sección 7 (AMD cotiza con prima sustancial frente a NVIDIA y Broadcom en casi cualquier métrica y fuente consultada), pero el lector debe tratar los múltiplos de mercado de esta sección como aproximaciones puntuales, no cifras exactas de consenso único.

### 1.5 Otras validaciones cruzadas ejecutadas

| Dato | Fuente 1 | Fuente 2 | Resultado |
|---|---|---|---|
| Beneficio neto GAAP FY2021 | AMD press release $3.162M | stockanalysis $3.156M | ✅ desviación 0,09% |
| Participación económica Lisa Su (personal + indirecta) | Form 4 SEC: 4.305.973 acciones | — | ✅ = 0,26% del total (1.630.338.779 acciones) |
| Directiva + consejo combinados | DEF 14A: 8.107.566 acciones | — | ✅ = 0,50% del total |
| Precio medio recompra 2022 | $3.702M / 36,3M acciones | — | ✅ = $101,98/acción, calculado |

---

## 2. Análisis de la esencia del negocio — "El negocio correcto" (Duan Yongping)

**Definición en una frase**: AMD diseña (sin fabricar) circuitos de cómputo de alto rendimiento —CPUs x86 y aceleradores de IA— que vende como producto físico de ciclo de reemplazo de 2-4 años, no como suscripción, compitiendo simultáneamente contra un rival dominante distinto en cada uno de sus tres mercados (Intel en CPU, NVIDIA en IA/gaming).

### 2.1 Modelo de negocio: venta de producto físico, no recurrente por contrato

AMD no tiene ingresos recurrentes contractuales (no es SaaS ni suscripción). Cada generación de EPYC, Ryzen, Radeon o Instinct es una venta puntual que debe volver a ganarse en el ciclo siguiente. La "recompra" existe pero está mediada por:
- **Ciclos de actualización de hyperscalers** (cada 2-3 años en servidores) — más parecido a un contrato de suministro renovable que a una suscripción.
- **Roadmap de producto público y comprometido** (Zen 6/"Venice", MI400/MI500) que genera expectativa de actualización, pero no genera ingreso hasta que el producto se lanza y gana diseño ("design win").

### 2.2 Tres negocios distintos bajo un mismo balance

| Negocio | % de ingresos FY2025 | Naturaleza competitiva |
|---|---|---|
| CPU servidor (EPYC, dentro de Data Center) | Mayoría del segmento Data Center (46,2% ✅ cuota de ingresos x86 servidor, récord 1T2026) | AMD está ganando estructuralmente frente a Intel |
| CPU cliente (Ryzen) + GPU gaming (Radeon) | Client $10.640M + Gaming $3.910M = 42% del total | Cliente: ganando cuota frente a Intel. Gaming: perdiendo cuota frente a NVIDIA (5% en 4T2025, mínimo histórico) |
| Aceleradores IA (Instinct MI300/MI325/MI350, dentro de Data Center) | Estimado $6.000-8.000M (no desglosado por AMD) | AMD es un distante #2 frente a NVIDIA (~85-92% de cuota) |
| Embedded (ex-Xilinx, FPGA) | $3.454M (-3%) | En declive desde el pico de 2023, sin recuperación 3 años después de la adquisición |

**Esto es relevante para la tesis de inversión**: la narrativa de mercado ("AMD, la alternativa a NVIDIA en IA") describe solo una fracción del negocio real. El crecimiento reportado (+34% ingresos totales, +57% Data Center en 1T2026) mezcla la genuina ganancia de cuota en CPU de servidor —bien documentada y medible— con un negocio de aceleradores de IA cuya cuota real de mercado (5-10%, estimación de analista, no cifra de firma de research con metodología pública) es mucho menor que lo que el entusiasmo bursátil sugiere.

### 2.3 Margen bruto y apalancamiento operativo

Margen bruto GAAP: 48% (2021) → 45% (2022, integración Xilinx) → 46% (2023) → 49% (2024) → 50% (2025). Comparado con NVIDIA (~75% margen bruto GAAP en años recientes) y con Intel (~35-40%), AMD ocupa una posición intermedia: mejor que un fabricante de commodities, sensiblemente peor que el líder de la industria (NVIDIA), lo que refleja su posición de "segundo proveedor" que debe competir parcialmente en precio (MI300X se vendió a la mitad del precio del H100 por unidad de memoria).

El apalancamiento operativo es marcado: el margen operativo GAAP pasó de 1,8% (2023, año de exceso de inventario post-pandemia) a 10,7% (2025) con solo 53% más de ingresos — evidencia de que buena parte de la estructura de costos es fija y que el crecimiento actual cae de forma desproporcionada a la línea de resultado operativo.

### Pregunta al estilo Duan Yongping

*"¿Qué tiene de bueno este negocio, en una frase?"* — AMD es la prueba de que en semiconductores de cómputo se puede ser una alternativa viable y rentable al líder si se ejecuta bien el diseño durante una década (Zen), pero **no** ha demostrado (todavía) que pueda repetir ese mismo logro frente a NVIDIA en IA — el negocio de CPU es "el bueno"; el de aceleradores de IA es, a día de hoy, una apuesta de opcionalidad, no un hecho consumado.

---

## 3. Evaluación del foso económico — Buffett

| Tipo de foso | Verificación | Veredicto |
|---|---|---|
| **Marca / poder de fijación de precios** | En CPU servidor: cuota de ingresos (46,2%) supera ampliamente a cuota de unidades (33,2%) → AMD vende mezcla de mayor valor y lo cobra. En gaming: RX 9000 "no logró tracción" (JPR), cuota cayó a mínimo histórico de 5% — sin poder de fijación de precios. En IA: MI300X se vende con descuento explícito frente a NVIDIA (más memoria, mitad de precio) — es una estrategia de valor, no de marca premium. | **Mixto — fuerte solo en CPU servidor** |
| **Costes de cambio** | x86 (CPU): el coste de cambio beneficia a la arquitectura x86 en su conjunto (Intel+AMD), no a AMD específicamente frente a Intel — y está siendo erosionado estructuralmente por la migración a ARM en hyperscalers (>50% del cómputo de los principales hyperscalers ya es ARM en 2025; Netflix migró el 70% de codificación de video a AWS Graviton3, ahorro de $15M/año). En IA: ROCm vs CUDA — el coste de cambio **juega a favor de NVIDIA, no de AMD**: CUDA tiene ~18-20 años de desarrollo, librerías maduras y millones de desarrolladores entrenados; ROCm alcanzó "listo para producción" recién en 2026. | **Débil / negativo en IA** |
| **Efectos de red** | Ausentes para AMD. CUDA sí tiene efecto de red (cuantos más desarrolladores lo usan, más valioso se vuelve el ecosistema) — pero ese efecto de red beneficia a NVIDIA, no a AMD. | **No hay foso propio** |
| **Economías de escala** | AMD es fabless, depende de capacidad de TSMC (~7% de los ingresos de TSMC, frente a NVIDIA 11%, Apple 25%) — menor poder de negociación relativo. I+D absoluto ($8.091M en 2025) es menos de la mitad que Intel ($16.500M) y NVIDIA ($12.900M en términos absolutos aunque menor % de ingresos). | **Débil** |
| **Tecnología / patentes** | Arquitectura Zen: liderazgo real y medible en cuota de CPU servidor. CDNA/Instinct: ventaja de especificación en memoria HBM (MI300X 2,4x la capacidad del H100), pero benchmarks independientes (SemiAnalysis) muestran que MI300X alcanza solo ~45% del pico teórico de FLOPS vs ~93% de H100/B200, y que 25% de los modelos probados fallan tests de precisión sobre ROCm. La ventaja de hardware está parcialmente neutralizada por una brecha de software real. | **Fuerte en CPU, parcial/frágil en IA** |

### Conclusión del foso: **estrecho y asimétrico, no uno solo**

AMD no tiene "un foso"; tiene un foso genuino y verificable en un segmento (CPU x86, especialmente servidor) y prácticamente ningún foso propio en los otros dos (GPU gaming, aceleradores de IA), donde compite como retador con ventajas de precio/especificación pero desventajas de ecosistema de software. La cuota de mercado de IA de AMD (5-10%, estimación) no es resultado de un foso, sino de ser la única alternativa creíble a NVIDIA para hyperscalers que quieren diversificar proveedor por razones de poder de negociación — un rol valioso, pero distinto de tener un foso propio.

**Tendencia a 5 años**: el foso de CPU servidor se ha ampliado de forma medible y continua (cuota de ingresos de 2% en 2017 a 46,2% en 1T2026). El "foso" de IA no existe todavía como tal — es una carrera abierta donde AMD compite por participación, no por control de precio.

### Pregunta al estilo Buffett

*"¿Seguirá este foso ahí dentro de 10 años? ¿Qué podría destruirlo?"* — El foso de CPU servidor podría ser destruido no por Intel, sino por la migración estructural a ARM en los hyperscalers (Graviton, Cobalt, Maia, Axion) — un riesgo que afecta por igual a AMD e Intel y que ya supera el 50% del cómputo de los grandes hyperscalers. En IA, no hay foso que proteger todavía: la pregunta relevante no es "qué lo destruye" sino "si llegará a formarse".

---

## 4. Pensamiento inverso y lista de riesgos — Munger

### 4.1 Rutas de fracaso

| Ruta | Probabilidad (estimación) | Impacto | Horizonte |
|---|---|---|---|
| Migración a ARM erosiona el TAM de x86 servidor (afecta a AMD e Intel por igual) | Media-alta | Alto | 5-10 años |
| NVIDIA mantiene/amplía el foso de software CUDA; AMD queda estancada en 5-10% de cuota de IA de forma indefinida | Media | Alto — aquí descansa toda la narrativa de crecimiento y la prima de valoración | 2-5 años |
| Disrupción geopolítica en Taiwán (TSMC) | Baja | Catastrófico — riesgo compartido con NVIDIA, Apple, Broadcom; sin fuente de fabricación alternativa | Impredecible |
| Escalada de restricciones de exportación a China | Media-alta (ya materializada parcialmente: ~$1.500M de impacto en 2025) | Medio — estimación de analista: pérdida permanente de 10-15% de ingresos potenciales | En curso |
| Repetición del patrón Xilinx en M&A futuro (pagar múltiplos altos en acciones, integración que no cumple la promesa) | Media | Medio-alto | Ya observable |
| Compresión de múltiplo por desaceleración de capex de IA en hyperscalers | Media | Alto para el precio de la acción, no necesariamente para el negocio | 1-3 años |
| Clientes-competidores: Microsoft, Meta, Google, Amazon son simultáneamente los mayores clientes de AMD **y** están desarrollando su propio silicio de IA (TPU, Trainium, Maia, MTIA) | Media-alta a largo plazo | Alto — riesgo de desintermediación estructural | 5-10 años |

### 4.2 Analogía histórica

- **3dfx Interactive** (años 90-2000): pionero de gráficos 3D para consumo, perdió la guerra de estándares frente a NVIDIA y desapareció en 2000 pese a tener tecnología reconocida — precedente directo de qué le puede pasar al "segundo" en una guerra de plataformas de GPU si no logra diferenciarse a tiempo.
- **Intel–Altera (2015)**: adquisición de FPGA por $16.700M que el propio sector considera un fracaso de integración — un analista citado en la investigación traza explícitamente el paralelismo con Xilinx-AMD: "tres años después, AMD no ha entregado un producto revolucionario" con Xilinx.
- **AMD pre-2014**: la propia AMD estuvo al borde de la quiebra (deuda de ~$2.500M, capitalización <$2.000M, acción en $1,61) antes del giro liderado por Lisa Su — recordatorio de que el negocio de semiconductores de cómputo es cíclico y que el liderazgo actual no es una posición permanentemente asegurada.

### 4.3 Autochequeo de sesgos

- **Sesgo narrativo**: la historia "AMD, la alternativa de IA a NVIDIA" es atractiva y fácil de contar, lo que puede llevar a sobreponderar el segmento de aceleradores de IA (una fracción no desglosada de $16.635M de Data Center) frente al motor de crecimiento real y mejor documentado (CPU servidor).
- **Anclaje**: el consenso de precios objetivo ($565-$700, media ~$640) puede anclar el análisis hacia la conclusión "hay que subir el objetivo", cuando el reverse-DCF (Sección 7) muestra que el precio actual ya exige un crecimiento de BPA sostenido de 42-54% anual durante 3 años — un umbral que ni siquiera el escenario "alcista" definido en este informe (35% anual) alcanza a justificar.
- **Sesgo de superviviente**: la comparación se hace naturalmente contra Intel (que ha perdido cuota) y NVIDIA (que domina), ignorando que el espacio de semiconductores está lleno de "segundos proveedores" que no sobrevivieron (3dfx, Cyrix, National Semiconductor en su día).

### 4.4 Argumentos de la tesis bajista (resumidos, con atribución)

- **William Blair** (analista Sebastien Naji, cobertura iniciada julio 2026): rating "market perform", valor razonable $565 — "ya cerca de su valor justo" tras el rally de IA.
- **D.A. Davidson**: reconoce ganancia de cuota de CPU, pero advierte que la valoración se ha vuelto "cada vez más exigente" y que NVIDIA se está expandiendo también hacia CPU.
- **Valoración**: PE trailing 186x, EV/EBITDA 119x — sin margen para el error de ejecución.
- **Riesgo de margen bruto en IA**: un solo punto de compresión de margen por presión de precios de NVIDIA dañaría más la tesis que un fallo modesto de ingresos, porque la prima de valoración exige que AMD *gane dinero* con silicio de IA, no solo que lo *venda*.

### Pregunta al estilo Munger

*"¿Dónde es más probable que me equivoque? ¿Por qué la gente inteligente no compraría (o vendería) esta acción?"* — La gente inteligente que no compra a $535 probablemente no discute que AMD esté ganando cuota en CPU (eso es un hecho verificado); discute que **el precio ya paga por adelantado un resultado en aceleradores de IA que todavía no está garantizado**, y que la brecha de software ROCm-CUDA documentada por SemiAnalysis es más persistente de lo que el consenso alcista asume.

---

## 5. Evaluación de la gestión — Duan Yongping "la persona correcta" + Buffett "integridad de la gestión"

### 5.1 Lisa Su — trayectoria y decisiones clave

PhD en Ingeniería Eléctrica (MIT, 1994), pasó por Texas Instruments, IBM (lideró la tecnología de interconexión de cobre) y Freescale (CTO) antes de unirse a AMD en 2012. Nombrada CEO el 8 de octubre de 2014, cuando AMD tenía ~$2.500M de deuda, la acción cotizaba en ~$1,61 y varios analistas discutían abiertamente el riesgo de quiebra.

| Fecha | Decisión | Resultado conocido | Veredicto |
|---|---|---|---|
| 2019-2021 (profundización) | Culminar la transición 100% fabless (7ª enmienda al Wafer Supply Agreement con GlobalFoundries) | Libertad total para contratar nodos ≤7nm con cualquier fundición | Condición estructural necesaria para competir hoy — ★★★★★ |
| Ago-2012 / lanzamiento mar-2017 | Apostar por rediseñar x86 desde cero (Zen), manteniendo el presupuesto en los años de mayor tensión financiera (2015-2016) | Cuota x86 <10% (2017) → 46,2% cuota de ingresos en servidor (1T2026) | La apuesta que salvó a la compañía — ★★★★★ |
| Anuncio oct-2020 / cierre feb-2022 | Adquisición de Xilinx, $48.800M (100% en acciones, ajustado por apreciación) | Embedded: +17% en 2023, pero **-33% en 2024** y -3% en 2025 — ingresos por debajo del año de consolidación parcial (2022); Victor Peng (ex-CEO Xilinx) se retiró en 2024; sin impairment de goodwill reportado pese al declive | Mixto a negativo — ★★☆☆☆ |
| Anuncio ago-2024 / cierre mar-2025 | Adquisición de ZT Systems ($4.400-4.900M) + reventa inmediata del negocio de fabricación a Sanmina (hasta $3.000M) | Estrategia "comprar y desinvertir": AMD se queda solo con diseño/talento; resultados no desglosados por AMD ("neither material nor meaningful") | Analista Stacy Rasgon (Bernstein): podría leerse como "confesión" de estar por detrás de NVIDIA en sistemas — ★★★☆☆ (aún sin veredicto claro) |
| Completada 2022 | Adquisición de Pensando Systems (DPU), $1.900M | Integrado en cartera de datacenter, clientes incluyen Goldman Sachs, Microsoft Azure | Sin controversia — ★★★★☆ |

**Nota relevante**: Jim Keller, arquitecto que lideró el diseño inicial de Zen, dejó AMD en 2015 —dos años antes del lanzamiento de Ryzen—. La ejecución final y la ganancia de cuota posterior a 2017 ocurrieron sin él en la compañía, lo cual sugiere que el éxito de Zen no dependía de una sola persona irremplazable, sino de una capacidad organizativa más amplia.

### 5.2 Alineación de intereses — un punto de fricción real

- **Participación económica de Lisa Su**: 0,26% del capital total (✅ verificado). Directiva + consejo en conjunto: 0,50%.
- **Historial de transacciones**: de los últimos 24 Form 4 de Lisa Su (2024-2026), **cero son compras en mercado abierto**; todas las adquisiciones provienen de ejercicio de opciones/vesting, y todas las ventas (1.644.226 acciones, ~$355M en 24 meses) están pre-programadas bajo planes 10b5-1. A nivel de toda la compañía: 155 ventas de insiders frente a solo 2 compras en el periodo reciente (AltIndex).
- **Lectura Duan Yongping**: un fundador/CEO con "skin in the game" real compra en mercado abierto en algún momento de su mandato, más allá de ejercer opciones y vender sistemáticamente. En 12 años como CEO, no hay evidencia de que Su haya comprado una sola acción con su propio dinero fuera de la compensación otorgada. Esto no es una señal negativa fuerte (la venta programada es una práctica común y defendible para diversificar patrimonio), pero sí es la ausencia de una señal positiva que Buffett valoraría explícitamente.
- **Contrapeso**: la compensación de Su está mayoritariamente en riesgo (96% variable, 89% equity de largo plazo), con métricas verificables de desempeño real — el ciclo de PRSU 2022-2025 liquidó al 96,84% del objetivo (por debajo de 100%), lo que demuestra que el mecanismo puede pagar menos que el objetivo, no es un sello de goma automático.

### 5.3 Asignación de capital

- **Recompras**: $8.627M acumulados en 2021-2025, pero las acciones en circulación **aumentaron 35%** (de 1.207M a 1.630M) por la emisión de 429M de acciones para pagar Xilinx y la compensación en acciones continua. **Las recompras han compensado la dilución, no han reducido el conteo neto de acciones** — un patrón que Buffett calificaría como ineficiente en términos de creación de valor por acción, aunque no necesariamente irracional dado el contexto de M&A.
- **Timing de recompras**: 2022 fue el año de peor timing (mayor gasto, $3.702M a precio medio ~$102, justo antes de que la acción cayera a un mínimo de $54,57 — caída de 46% frente al precio medio de compra). 2025 fue el de mejor timing (precio medio ~$106, cerca del mínimo anual de $76,48).
- **Dividendo**: AMD no paga dividendo desde 1995 (más de 30 años). Toda la caja excedente se dirige a I+D, M&A y recompras.
- **I+D**: $8.091M en 2025 (23,4% de ingresos ✅ verificado), menor en términos absolutos que Intel ($16.500M) y NVIDIA ($12.900M), pero con retorno tangible y verificable en la cuota de mercado de CPU servidor.

### 5.4 Gobierno corporativo y estabilidad

- Consejo de 9 miembros (8 tras la junta de 2026), 87,5% independientes; Lisa Su combina CEO y Chair desde 2022, mitigado por un Lead Independent Director con poderes formales reales (Nora Denzel).
- CFO (Jean Hu, desde 2023) y CTO (Mark Papermaster, desde 2019) estables; Victor Peng (Presidente, ex-Xilinx) se retiró en 2024 sin sucesor único designado.
- Cultura corporativa: Glassdoor 4,0/5 (95% aprobación de la CEO), pero con reseñas documentadas de "cultura tóxica" en niveles de gestión intermedia y quejas de compensación base inferior a NVIDIA/Intel. Reportaje de CNBC confirma cultura de alta exigencia (reuniones de fin de semana, revisión de memos tras medianoche).
- Riesgo de fuga de talento hacia NVIDIA documentado a nivel agregado (arquitectos GPU senior migran de ~$250K a ~$410K de compensación), sin casos individuales nombrados verificados.
- Litigios: solo litigio ordinario de patentes (Adeia y otros), sin demandas colectivas de accionistas activas ni investigación de la SEC identificada.

### Pregunta al estilo Duan Yongping

*"Si la CEO se jubilara, ¿seguiría la compañía siendo competitiva?"* — La evidencia del caso Jim Keller (el arquitecto de Zen se fue en 2015 y el éxito llegó igualmente en 2017) sugiere que sí existe profundidad organizativa más allá de un solo individuo. Pero la ausencia de un sucesor claro para Su (nombrada Chair además de CEO) y la salida sin reemplazo directo de Victor Peng son señales de concentración de decisiones estratégicas de IA en pocas manos.

---

## 6. Industria y tendencia civilizatoria — Li Lu

### 6.1 ¿Cambio de paradigma civilizatorio?

La demanda de cómputo de IA sí presenta las características de un cambio de paradigma (curva de adopción exponencial, TAM proyectado por la propia AMD en más de $1 billón para 2030, crecimiento >40% CAGR). Pero la posición de AMD en ese cambio es la de **proveedor de un insumo dentro de una cadena de valor dominada por otro actor (NVIDIA/CUDA)**, no la de definidor de estándar.

### 6.2 Analogía con revoluciones tecnológicas previas

En cada revolución tecnológica (vapor, electricidad, internet) hubo un patrón repetido: un estándar dominante capturó la mayoría del valor, y varios "segundos proveedores" capturaron una porción significativa pero menor del mercado total, sirviendo como contrapeso de poder de negociación para los compradores. AMD encaja mejor en el segundo patrón que en el primero.

### 6.3 Posición en la cadena de valor

AMD es fabless (diseño puro), dependiente de TSMC para fabricación —igual que NVIDIA—, por lo que no compite en ese eslabón. Compite en:
1. **Diseño de CPU x86**: aquí AMD ha demostrado ejecución de clase mundial y ganancia de cuota sostenida durante 8 años consecutivos — evidencia sólida, no proyección.
2. **Diseño de aceleradores de IA**: aquí AMD compite por participación en un mercado que NVIDIA definió y sigue controlando en términos de ecosistema de software (CUDA), no solo de hardware.

### 6.4 Riesgo de ruta tecnológica y concentración de clientes

Los mayores clientes de aceleradores de IA de AMD (Microsoft, Meta, Oracle, OpenAI) son simultáneamente los actores que más están invirtiendo en silicio propio (aunque OpenAI recibió warrants de hasta 10% de AMD como parte del acuerdo de suministro de 6GW, alineando parcialmente los incentivos). Esta dualidad cliente/competidor potencial es un riesgo estructural de largo plazo que no tiene equivalente claro en el negocio de CPU (donde AMD no compite contra sus propios clientes hyperscalers, que no diseñan CPUs x86 propias de forma significativa).

### Pregunta al estilo Li Lu

*"Visto desde dentro de 20 años, ¿será esta empresa el 'Standard Oil' de esta era, o el '3Com' de un momento fugaz?"* — En CPU x86, la evidencia actual apunta más hacia un jugador estructuralmente relevante y duradero (aunque nunca "Standard Oil" — Intel sigue siendo mayoría del mercado). En aceleradores de IA, la analogía más honesta con la evidencia disponible hoy es la de **un "3Com" con posibilidades reales de evitar ese destino**, no un candidato a "Standard Oil": tiene tecnología competitiva y clientes reales, pero no controla el estándar de software de la industria (CUDA), que es hoy la ventaja competitiva más defendible del sector.

---

## 7. Valoración y margen de seguridad — Buffett + Duan Yongping

### 7.1 Métricas actuales (ver también Sección 1.4)

- Precio: $535,10 | Market cap: ~$872.500M (verificado)
- PE trailing (GAAP): **201,92x** (EPS $2,65) | PE trailing (Non-GAAP): **128,32x** (EPS $4,17) — ambos verificados por herramienta
- P/FCF: **130,26x** (FCF/acción $4,108) | FCF Yield: **0,77%**
- Rendimiento de beneficio (earnings yield, GAAP): **0,50%**
- Dividendo: 0%

### 7.2 DCF inverso — ¿qué crecimiento exige el precio actual?

Usando EPS Non-GAAP base de $4,17 y un horizonte de 3 años (herramienta `financial_rigor.py three-scenario`):

| Escenario | Crecimiento anual de BPA | PE de salida | Precio objetivo (3 años) | Retorno desde $535,10 |
|---|---|---|---|---|
| Alcista | 35% | 45x | $461,7 | **-13,7%** |
| Base | 20% | 30x | $216,2 | **-59,6%** |
| Bajista | 5% | 20x | $96,5 | **-82,0%** |

**Hallazgo central**: ni siquiera el escenario "alcista" definido (35% anual, con múltiplo de salida elevado de 45x) alcanza a justificar el precio actual. Para que el precio actual esté justificado a 3 años, se necesita:

| Escenario "de equilibrio" | Crecimiento anual de BPA necesario | PE de salida | Precio objetivo (3 años) |
|---|---|---|---|
| A | 54% | 35x | $533,0 (≈precio actual) |
| B | 42% | 45x | $537,3 (≈precio actual) |

Es decir, el mercado está pagando hoy por un crecimiento sostenido de beneficio por acción de entre **42% y 54% anual durante 3 años consecutivos** — un ritmo superior al crecimiento de ingresos histórico reciente de AMD (34% en 2025) y que exige, además, que el mercado no comprima el múltiplo de salida por debajo de 35-45x (hoy NVIDIA cotiza a 21x forward, Broadcom a 25x forward).

### 7.3 Valor presente descontado de los escenarios (tasa de descuento 10% anual)

| Escenario | Precio objetivo a 3 años | Valor presente (hoy) |
|---|---|---|
| Alcista (35% BPA, PE 45x) | $461,7 | **$346,9** |
| Base (20% BPA, PE 30x) | $216,2 | **$162,4** |
| Bajista (5% BPA, PE 20x) | $96,5 | **$72,5** |

**Incluso el escenario alcista, descontado a valor presente ($346,9), queda un 35% por debajo del precio actual ($535,10).** Esto no significa que AMD sea un mal negocio — significa que, con las hipótesis de crecimiento aquí definidas (que ya son generosas frente al consenso), **el precio actual no ofrece margen de seguridad bajo ningún escenario razonable**.

### 7.4 Comparación con pares

AMD cotiza con PE forward (63,51x) y EV/EBITDA (119,13x) muy por encima de NVIDIA (21,19x / 30,11x) y Broadcom (25,40x / 44,61x) — pese a que NVIDIA controla el foso de software (CUDA) y crece a tasas comparables o superiores en el segmento de IA. El PEG de AMD (1,08) es más alto que el de NVIDIA (0,47) o Broadcom (0,55), sugiriendo que el mercado paga más por cada punto de crecimiento esperado de AMD que por el de sus dos comparables más directos.

### Rango de precio con margen de seguridad (estimación de este informe)

**$160 – $350** (escenarios base a alcista, descontados a valor presente a una tasa de retorno exigida del 10% anual). El precio actual ($535,10) está por encima incluso del extremo superior de este rango.

### Pregunta al estilo Duan Yongping

*"Si la bolsa cerrara mañana durante 5 años, ¿estarías dispuesto a mantener esta posición a este precio?"* — Solo si se tiene una convicción firme, superior a la del consenso sell-side ya optimista, de que AMD sostendrá un crecimiento de BPA de 40%+ anual durante varios años consecutivos **y** de que el mercado seguirá pagando un múltiplo de 35-45x por ese crecimiento dentro de 3 años. Es una apuesta de alta convicción sobre ejecución futura en IA, no una compra con margen de seguridad basada en fundamentales ya demostrados.

---

## 8. Memorando de decisión final

| Dimensión | Conclusión | Confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | Negocio genuinamente bueno en CPU (foso real, en expansión); negocio no probado todavía en aceleradores de IA | Alta en CPU / Baja-media en IA |
| Foso (Buffett) | Estrecho y asimétrico: fuerte en CPU servidor, débil/ausente en gaming e IA (desventaja de ecosistema de software frente a CUDA) | Alta |
| Gestión (Duan Yongping + Buffett) | CEO con historial de ejecución probado (turnaround 2014, apuesta Zen); alineación de intereses débil (0,26% de propiedad, cero compras en mercado abierto en 12 años); historial de M&A mixto a negativo (Xilinx) | Media |
| Mayor riesgo (Munger) | El precio ya descuenta un resultado en IA que aún no está garantizado; brecha de software ROCm-CUDA es más persistente de lo que asume el consenso | Alta en la identificación del riesgo |
| Tendencia civilizatoria (Li Lu) | Insumo relevante de una revolución real (IA), pero como "segundo proveedor" sin control del estándar, no como definidor de la plataforma | Media |
| Valoración (Buffett + Duan Yongping) | Sin margen de seguridad en ningún escenario modelado; el precio exige 42-54% de crecimiento anual de BPA sostenido 3 años | Alta (cálculo verificado por herramienta) |

### Tabla de decisión final

| Estrategia | Recomendación |
|---|---|
| **Inversor sin posición** | Observar, no comprar al precio actual. El negocio de CPU es de calidad demostrada, pero el precio ya incorpora una ejecución en IA que todavía debe demostrarse; esperar compresión de múltiplo o corrección hacia el rango $160-350 antes de construir posición, o esperar evidencia concreta de que la brecha de software ROCm-CUDA se está cerrando. |
| **Inversor con posición existente** | Revisar el tamaño de la posición en función del riesgo de concentración: el caso alcista de este informe (descontado a valor presente, $347) ya está por debajo del precio actual. Mantener exige convicción explícita en un crecimiento de BPA superior al 40% anual sostenido. |
| **Señal de venta** | Deterioro en la cuota de mercado de CPU servidor (el único foso demostrado); evidencia de que los hyperscalers están desplazando gasto de capex de IA de terceros hacia silicio propio (TPU/Trainium/Maia/MTIA) de forma acelerada; nuevo impairment de goodwill en Embedded (Xilinx) que reconozca lo que los datos ya sugieren. |
| **Señal de compra / acumulación** | Corrección de precio hacia el rango $160-350 sin deterioro del negocio subyacente; evidencia verificable (no solo declaraciones de la compañía) de que ROCm cierra la brecha de rendimiento por dólar frente a CUDA en cargas de producción, no solo en benchmarks controlados. |

### Comentarios simulados de los cuatro maestros

> "Prefiero una certeza del 90% de un resultado bueno, a una posibilidad del 10% de un resultado espectacular. El negocio de CPU de AMD es lo primero; su negocio de IA es todavía, en gran medida, lo segundo — y el precio de hoy está pagando como si ya fuera lo primero."
> — Warren Buffett

> "Invertido: en lugar de preguntar por qué AMD podría tener éxito en IA, pregunte por qué NVIDIA podría fracasar. La respuesta, con la evidencia de hoy, es 'no hay razón clara' — y eso debería hacer dudar a cualquiera que pague 63 veces beneficios futuros por el segundo lugar."
> — Charlie Munger

> "Yo compraría el negocio de CPU de AMD sin dudar, al precio correcto. El problema no es el negocio — es que el mercado está cobrando también por un negocio de IA que todavía no ha demostrado que puede ganar dinero de forma sostenida frente a NVIDIA."
> — Duan Yongping

> "La pregunta no es si la IA transformará la civilización — probablemente lo hará. La pregunta es si AMD será quien capture ese valor, o simplemente quien fabrique una de las piezas reemplazables de la infraestructura que la sostiene. Los datos de hoy apuntan más a lo segundo."
> — Li Lu

---

## Distinción entre confianza del análisis de IA y certidumbre de inversión

**Basado en datos amplios y verificados (alta confianza del análisis de IA)**:
- Cifras financieras históricas (ingresos, márgenes, EPS, FCF) — verificadas por cruce de al menos 2 fuentes con la herramienta `financial_rigor.py`.
- Ganancia de cuota de mercado en CPU x86 (servidor, escritorio, portátil) — documentada trimestre a trimestre por Mercury Research vía múltiples medios especializados.
- Estructura de compensación, propiedad accionarial e historial de transacciones de insiders — verificado directamente contra filings SEC (DEF 14A, Form 4).
- Cálculo del DCF inverso y de los escenarios de valoración — aritmética exacta verificada por herramienta, no estimación mental.

**Basado en información limitada o de fuente única (menor confianza, mayor incertidumbre real)**:
- Cuota de mercado de aceleradores de IA (5-10%) — proviene de estimaciones de analistas y sitios especializados, no de una firma de investigación de mercado con metodología pública auditable (tipo IDC/Gartner).
- Proyecciones de TAM ($1 billón para 2030) — provienen exclusivamente de AMD (Financial Analyst Day), con incentivo evidente a proyectar de forma optimista; no se cruzó con una fuente independiente (Gartner/IDC).
- Concentración de ingresos por cliente (Microsoft/Meta/Oracle/OpenAI >40% combinado) — estimación de analista, no confirmada en un 10-K.
- Ausencia de retrasos documentados en la hoja de ruta MI400/MI500 — podría reflejar cobertura de prensa favorable a la narrativa de la compañía más que verificación independiente.
- Discrepancia no resuelta en deuda total FY2025 (8,84% entre fuentes).

**La certidumbre de inversión real depende de la naturaleza del negocio, no del volumen de datos disponibles**: incluso con la enorme cantidad de información pública sobre AMD (calificación A), la pregunta central de esta tesis —¿logrará AMD convertir su ventaja de especificación de hardware en una cuota de mercado de IA sostenible y rentable frente al foso de software de NVIDIA?— **no se puede responder con los datos disponibles hoy**. Es una pregunta sobre el futuro de una carrera tecnológica en curso, no sobre un hecho ya verificable. La abundancia de cobertura mediática sobre AMD no reduce esa incertidumbre fundamental; solo da la sensación de que se conoce más de lo que realmente se sabe sobre el desenlace.

---

## Anexo: registro de verificación cruzada de datos clave

```
============================================================
市值验算 (Market Cap Verification)
============================================================
  股价 (Price):       535.1 USD
  总股本 (Shares):    1.63B
  计算市值:           872.39B USD
  报告市值:           872.53B USD
  偏差:               0.02%
  ✅ 验证通过

============================================================
交叉验证: Ingresos FY2025 — AMD 10-K $34,639M vs stockanalysis $34,639M
  ✅ 偏差 0.00%

交叉验证: Efectivo+inversiones CP FY2025 — AMD 10-K $10,552M vs stockanalysis $10,552M
  ✅ 偏差 0.00%

交叉验证: Deuda total FY2025 — AMD 10-K $3,222M vs stockanalysis $3,847M
  ❌ 偏差 8.84% — no resuelto, se prioriza cifra del 10-K oficial

交叉验证: Beneficio neto GAAP FY2021 — AMD press release $3,162M vs stockanalysis $3,156M
  ✅ 偏差 0.09%
============================================================

估值指标验算 (EPS GAAP $2.65):  PE(TTM) 201.92x | Earnings Yield 0.50% | P/FCF 130.26x | FCF Yield 0.77%
估值指标验算 (EPS Non-GAAP $4.17): PE(TTM) 128.32x | Earnings Yield 0.78%

三情景估值 (base EPS Non-GAAP $4.17, 3 años):
  Alcista (35%, PE 45x):  precio objetivo $461.7  (-13.7% vs. $535.10)
  Base    (20%, PE 30x):  precio objetivo $216.2  (-59.6% vs. $535.10)
  Bajista (5%,  PE 20x):  precio objetivo $96.5   (-82.0% vs. $535.10)

  "Equilibrio" (crecimiento necesario para justificar precio actual a 3 años):
  54% anual con PE salida 35x → $533.0 (≈ precio actual)
  42% anual con PE salida 45x → $537.3 (≈ precio actual)
```

---

*Fuentes principales: comunicados de resultados trimestrales de AMD (ir.amd.com), Form 10-K/10-Q/DEF 14A en SEC EDGAR, stockanalysis.com, Mercury Research (vía Tom's Hardware, The Register, wccftech, TweakTown, Guru3d), Jon Peddie Research, SemiAnalysis, y cobertura de analistas sell-side (Goldman Sachs, UBS, Cantor Fitzgerald, William Blair, D.A. Davidson, Morgan Stanley, Bernstein) citada con atribución específica en cada sección.*
