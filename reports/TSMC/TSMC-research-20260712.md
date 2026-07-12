# Taiwan Semiconductor Manufacturing Company (TWSE: 2330 / NYSE ADR: TSM) — Informe de Investigación

**Fecha de investigación**: 12 de julio de 2026
**Marco de análisis**: Buffett – Munger – Duan Yongping – Li Lu (cuatro maestros)
**Precio actual**: 2.415,00 NT$ (TWSE, 11-jul-2026) / 434,11 $ (ADR NYSE, cierre 10-jul-2026)

**⚠️ Aviso de calendario**: TSMC publica resultados del 2T2026 el **16 de julio de 2026 — mañana**. Toda la sección de valoración de este informe puede quedar desplazada por ese evento. Cualquier decisión debería esperar a esa publicación.

---

## Declaración previa: calificación de riqueza informativa y limitaciones de la investigación con IA

**Calificación de riqueza informativa: Nivel A (información abundante)**

TSMC cotiza en TWSE y NYSE (ADR), es emisor registrado ante la SEC (20-F/6-K), es la mayor empresa de Asia por capitalización, y está cubierta exhaustivamente por analistas de bulge-bracket, prensa especializada en semiconductores (DigiTimes, TrendForce, SemiAnalysis) y financiera generalista. El consenso —"fundición dominante, cuello de botella de la IA junto a ASML/Nvidia"— está tan trabajado como el de ASML.

**Trampa de investigación con IA para una empresa de nivel A**: repetir "monopolio de fundición avanzada" no aporta nada nuevo. El valor incremental de este informe está en: (1) la resolución programática de varias discrepancias de datos no triviales, incluida una prima implícita del ADR del ~15% sobre las acciones ordinarias que no se explica solo por tipo de cambio (ver §1.2 y §1.3); (2) la comparación directa del DCF inverso de TSMC frente al de ASML (informe `reports/ASML/ASML-research-20260712.md`) — hallazgo relevante: el mercado exige mucho menos optimismo prospectivo de TSMC que de ASML, pese a que ambas son "cuello de botella de la IA"; y (3) el riesgo geopolítico Taiwán-China, que rara vez se cuantifica más allá de la mención genérica.

**Declaración de limitaciones**: este informe se basa en información pública. No puede verificar: la probabilidad real de escalada militar en el Estrecho de Taiwán (cualquier cifra de probabilidad citada en prensa es especulativa), el rendimiento (yield) real de producción de N2 (2nm) más allá de lo que la compañía comunica, ni el desenlace de los litigios de patentes en curso. Los resultados del 2T2026 (16-jul-2026) no están incorporados. **macrotrends.net resultó inaccesible durante toda la investigación (HTTP 402)**, lo que limitó la triple verificación de varias series históricas — se etiquetan como tal.

---

## 1. Recolección y validación cruzada de datos

### 1.1 Tabla de datos clave (validados con `tools/financial_rigor.py`)

| Dato | Valor | Estado de validación |
|---|---|---|
| Precio TWSE (11-jul-2026) | 2.415,00 NT$ | ✅ TradingView/companiesmarketcap |
| Precio ADR NYSE (10-jul-2026) | 434,11 $ | ✅ stockanalysis.com, Yahoo/CNN Markets |
| Ratio ADR : acción ordinaria | 1 : 5 | ✅ Confirmado en TSMC investor FAQ |
| Acciones ordinarias en circulación | ~25.930–26.470 M | ⚠️ Desviación 2,0% entre fuentes — ver §1.2 |
| Capitalización bursátil (USD) | ~2,25 billones $ (2,25 T$) | ✅ Verificado por cálculo propio (0,01% de desviación vs. companiesmarketcap); **se descarta la cifra de stockanalysis (1,95 T$, desviación 15,45%)** |
| Capitalización bursátil (TWD) | ~62,6–63,9 billones NT$ | ✅ Desviación de verificación 2,03% (aceptable) |
| Ingresos FY2025 | 3.809.050 M NT$ (+31,6%) | ✅ Doble fuente, desviación 0,00% |
| Beneficio neto FY2025 | 1.717.880 M NT$ (oficial) | ✅ Doble fuente, desviación 0,59% |
| EPS diluido FY2025 (TWD) | 66,26 NT$ | ✅ Coherente con beneficio/acciones; se descarta la cifra de 327,35 NT$ de stockanalysis (matemáticamente incoherente, error de la fuente) |
| EPS ADR FY2025 (USD) | 10,65 $ (oficial, suma trimestral) | ⚠️ Desviación 3,88% vs. stockanalysis (11,51 $) — se adopta la oficial |
| Margen bruto FY2025 | 59,9% | ✅ Doble fuente |
| Capex FY2025 | 1.272.410 M NT$ (~39-40.000 M$) | ⚠️ Fuente única con desglose completo |

**Verificación de capitalización bursátil (tool output, base USD/ADR)**:
```
Precio: 434,11 $ | Acciones ADR-equivalentes: 5.186 M | Cap. calculada: 2,25 T$
Cap. reportada (companiesmarketcap): 2,25 T$ | Desviación: 0,01% ✅
Cap. reportada (stockanalysis): 1,95 T$ | Desviación: 15,45% ❌ — se descarta como desactualizada
```

**Verificación de capitalización bursátil (tool output, base TWD)**:
```
Precio: 2.415,00 NT$ | Acciones: 25.930 M | Cap. calculada: 62,62 billones NT$
Cap. reportada (companiesmarketcap): 63,92 billones NT$ | Desviación: 2,03% (aceptable)
```

### 1.2 Discrepancias detectadas y resueltas

| Dato | Fuente 1 | Fuente 2 | Desviación | Resolución |
|---|---|---|---|---|
| Capitalización bursátil USD | companiesmarketcap: 2,25 T$ | stockanalysis: 1,95 T$ | 15,45% ❌ | El cálculo propio (precio × acciones) coincide con companiesmarketcap con 0,01% de desviación. Se adopta 2,25 T$; stockanalysis parece usar un precio o recuento de acciones desactualizado |
| EPS diluido FY2025 (TWD) | Prensa/cálculo oficial: 66,26 NT$ | stockanalysis (tabla histórica): 327,35 NT$ | Incoherente | 327,35 NT$ es matemáticamente imposible dado el beneficio neto y las acciones reportadas en la misma tabla — se descarta como error de scraping de la fuente |
| EPS ADR FY2025 (USD) | Suma de 4 comunicados trimestrales oficiales: 10,65 $ | stockanalysis (cifra agregada): 11,51 $ | 3,88% ❌ | Se adopta la cifra oficial (10,65 $) por trazabilidad directa a comunicados de prensa trimestrales |
| Acciones ordinarias en circulación | stockanalysis: 25.930 M | Implícito de companiesmarketcap (cap/precio): 26.470 M | 2,03% | Diferencia menor, coherente con recompras/emisiones o fecha de corte distinta; se usa 25.930 M como base más trazable |
| Caja a 31-dic-2025 | Agregadores (gurufocus/tradingeconomics): 2.767.860 M NT$ | Cifra trimestral 3T2025 + tendencia: 2.470.760 M NT$ | 5,67% ❌ | No resuelto con confianza alta — ambas cifras son de fuente única/estimada. Se marca [estimado, verificar contra 20-F oficial] |

### 1.3 Hallazgo relevante: prima implícita del ADR sobre la acción ordinaria

Al convertir el precio de la acción ordinaria en TWSE a USD usando el tipo de cambio de referencia (32,11 NT$/$), el ADR (que representa 5 acciones ordinarias) debería cotizar en torno a:

```
5 × 2.415 NT$ / 32,11 = 376,05 $
```

El ADR cotiza realmente a **434,11 $** — una prima implícita del **15,4%**. Esto es inusualmente alto: históricamente el ADR de TSM cotiza cerca de la paridad con 5x la acción ordinaria (prima o descuento de un solo dígito bajo, por arbitraje). **No se pudo determinar con confianza si esta prima es real (demanda diferencial de inversores estadounidenses) o un artefacto de datos con fechas de corte no perfectamente sincronizadas entre TWSE (11-jul) y NYSE (10-jul)**. Se marca como discrepancia sin resolver y **se recomienda verificación directa antes de operar** — no se debe asumir arbitraje sin confirmar precios simultáneos. Consecuencia práctica: el PER calculado en base TWD (36,45x) y en base ADR/USD (40,76x) difieren por esta misma razón; ambos se muestran en §7.1.

### 1.4 Datos de una sola fuente (no doblemente verificados)

Capex FY2025 con desglose por tipo, deuda total (~1.033.000 M NT$: bonos + préstamos), participación accionarial de C.C. Wei (no divulgada), desglose geográfico de ingresos (Norteamérica 75%/China 9%, de fuentes secundarias sin confirmación directa en el 20-F), y la cifra de cuota de mercado exacta de fundición (69,9% vs. una base de ingresos alternativa que implica ~8% de diferencia). **Estos datos se usan con la etiqueta [fuente única]**.

---

## 2. Análisis de la esencia del negocio — Duan Yongping, "el negocio correcto"

### 2.1 Definición en una frase

**La esencia del negocio de TSMC: fabricar, por encargo y sin diseñar chips propios, los semiconductores más avanzados del mundo para virtualmente todas las empresas de diseño de chips (fabless) del planeta — capturando el valor de ser el único fabricante capaz de producir en volumen los nodos de vanguardia que la ley de Moore y la carrera de la IA exigen.**

El modelo "puro fundición" (pure-play foundry) es la clave estratégica: TSMC nunca compite con sus clientes (a diferencia de Samsung, que fabrica sus propios chips Exynos e Intel, que diseña y fabrica). Esta neutralidad es en sí misma una ventaja competitiva estructural — Apple, Nvidia, AMD y Qualcomm pueden confiarle su propiedad intelectual sin temor a que se filtre a un competidor interno.

### 2.2 Estructura de ingresos (ejercicio 2025)

| Partida | % de ingresos | Var. interanual | Nota |
|---|---|---|---|
| HPC (computación de alto rendimiento / IA) | 58% | +48% | Motor principal de crecimiento |
| Smartphone | 29% | +11% | Segundo pilar, más maduro |
| IoT | 5% | +15% | |
| Automotive | 5% | +34% | Recuperación fuerte desde base baja |
| Otros/DCE | ~1-2% | — | |
| **Por nodo (7nm o más avanzado)** | **74% del total FY2025** | — | 3nm: 22-28% trimestral; 5nm: ~35-37%; 7nm: ~14-15% |
| **Por cliente**: Nvidia | 19% (frente a 12% en 2024) | — | Superó a Apple como mayor cliente individual en 2025 [fuente secundaria, 20-F] |
| **Por cliente**: Apple | 17% (frente a 22% en 2024) | — | Sigue siendo el segundo cliente, en descenso relativo |

**Lectura**: el vuelco de HPC (58% y +48%) y el adelantamiento de Nvidia sobre Apple como mayor cliente en un solo año es el cambio estructural más significativo de la década en la base de clientes de TSMC. La compañía ha pasado de depender del ciclo del smartphone a depender del ciclo de capex de IA — un cambio de concentración de riesgo, no de reducción de riesgo.

### 2.3 Tendencia de rentabilidad a 5 años (2021–2025)

| Indicador | 2021 | 2022 | 2023 | 2024 | 2025 |
|---|---|---|---|---|---|
| Ingresos (M NT$) | 1.587.420 | 2.263.890 | 2.161.740 | 2.894.310 | 3.809.050 |
| Margen bruto | 51,6% | 59,6% | 54,4% | 56,1% | 59,9% |
| Margen operativo | 41,0% | 49,5% | 42,6% | 45,7% | 50,8% |
| FCF (M NT$) | 272.965 | 527.927 | 292.151 | 870.171 | 1.002.570 |
| Capex (M NT$) | 839.196 | 1.082.670 | 949.817 | 956.007 | 1.272.410 |

Fuente: stockanalysis.com (macrotrends inaccesible; serie no triplemente verificada). **Lectura**: crecimiento no lineal — 2023 fue un año de caída de ingresos (-4,5%) y compresión de margen por la desaceleración post-COVID del ciclo de semiconductores, seguido de una recuperación explosiva en 2024-2025 (+31,6% en 2025) impulsada por IA. El capex creció más rápido que los ingresos en 2025 (+33% vs. +31,6%), reflejando la expansión agresiva de capacidad (N2, Arizona, Japón, Alemania) — coherente con un ciclo de inversión, no con maduración del negocio.

### 2.4 Modelo de negocio: ¿venta puntual o recurrencia?

Híbrido con dinámica distinta a ASML: no es una venta de sistemas con servicio recurrente, sino una **relación de coproducción de largo plazo** con cada cliente de diseño. El coste de cambio es extremo pero de naturaleza distinta al de ASML: un cliente fabless que diseña su chip para el proceso N3 de TSMC no puede simplemente "cambiar de proveedor" — el diseño físico del chip está optimizado para las reglas de diseño (design rules) específicas de TSMC. Recalificar un chip para un proceso de otro fabricante cuesta años y cientos de millones de dólares. El apalancamiento operativo es alto: la I+D y el capex de cada nodo se amortizan sobre el volumen agregado de todos los clientes que lo usan.

**Pregunta al estilo Duan Yongping — "¿en qué es buena esta empresa? Si solo pudiera describirla en una frase"**: TSMC es buena en ejecutar, año tras año, la transición al siguiente nodo de fabricación con mayor rendimiento (yield) y a mayor escala que cualquier competidor — una disciplina operativa acumulada durante casi 40 años que ningún competidor (Samsung, Intel, SMIC) ha logrado igualar de forma sostenida. **Es un negocio de ejecución repetida, no de invención puntual**: TSMC no inventó la litografía EUV (eso lo hizo ASML) ni diseña los chips que fabrica — su ventaja es ser consistentemente el primero en producir en volumen con altos rendimientos cada nuevo nodo.

---

## 3. Evaluación del foso económico — Buffett, "moat"

| Tipo de foso | Evaluación | Evidencia |
|---|---|---|
| Marca / poder de fijación de precios | **Fuerte y creciente** | Margen bruto del 59,9% en un negocio de manufactura pesada de capital intensivo es excepcional; TSMC ha subido precios de forma sostenida en los últimos ciclos sin perder clientes clave |
| Coste de cambio | **Extremo** | Un chip diseñado para el proceso de TSMC no es portable a otro fabricante sin un rediseño de años; ningún cliente importante ha migrado volumen significativo fuera de TSMC en nodos avanzados |
| Efecto de red | **Moderado (ecosistema de diseño)** | El ecosistema de herramientas de diseño (EDA) y bibliotecas de IP certificadas para los procesos de TSMC atrae a más diseñadores, lo que a su vez atrae a más proveedores de IP — un círculo virtuoso, aunque menos determinante que en ASML |
| Economías de escala | **Muy fuerte** | Cuota de ~70% en fundición pura global le permite amortizar capex de decenas de miles de millones por nodo sobre el mayor volumen del sector — ningún competidor puede igualar esa base de costes unitarios |
| Barrera tecnológica | **Fuerte, pero replicable en el margen** | Producción en volumen de N2 (2nm) iniciada en 4T2025 con buenos rendimientos declarados; Samsung también inició producción de 2nm GAA (aunque en volumen limitado) e Intel avanza con 18A — a diferencia de ASML, **TSMC sí tiene competidores capaces de fabricar en nodos de vanguardia**, aunque con cuota y rendimientos inferiores |

**Diferencia clave frente a ASML (relevante para el lector que compare ambos informes)**: el foso de TSMC es de **ejecución y escala**, no de monopolio absoluto. Samsung e Intel fabrican en nodos comparables; lo que TSMC tiene es mejor rendimiento (yield), mayor capacidad y la confianza acumulada de los clientes fabless (que no quieren fabricar en Samsung, su competidor de producto en electrónica de consumo, ni en Intel, históricamente centrado en sus propios chips). Es un foso más defendible en la práctica que en la teoría — pero, a diferencia del monopolio EUV de ASML, es en principio replicable con suficiente tiempo y capital, y de hecho se está replicando parcialmente.

**Tendencia del foso — últimos 5 años vs. próximos 5**: se ha ampliado en términos absolutos (cuota de mercado ~70%, en aumento desde niveles ya dominantes) pero **el ritmo de cierre de brecha de Samsung e Intel en nodos de vanguardia es la variable a vigilar**. Intel 18A y Samsung SF2 son los primeros intentos serios en años de competir en la frontera tecnológica, con resultados aún no probados en volumen y rendimiento.

**Caso bajista sobre el foso**: no se ha encontrado ninguna cita documentada de Buffett o Munger específica sobre TSMC — este es un razonamiento por analogía con su marco general, etiquetado como **opinión/inferencia**. El caso bajista de mercado más citado es la concentración de clientes (Nvidia 19% + Apple 17% = 36% combinado) — si cualquiera de los dos recortara pedidos de forma abrupta, el impacto en ingresos sería material y rápido, algo que un "monopolio" en el sentido estricto de ASML no sufriría con la misma intensidad porque no depende de 2-3 clientes concentrados en la misma medida relativa.

**Pregunta al estilo Buffett — "¿seguirá este foso en 10 años? ¿Qué podría destruirlo?"**: probablemente sí en la práctica (la brecha de ejecución con Samsung/Intel se mide en años, no en trimestres), pero con más incertidumbre que ASML. Lo que podría erosionarlo: (1) que Intel 18A o Samsung SF2 logren paridad de rendimiento y ganen un cliente ancla grande (Nvidia o Apple diversificando parte de su volumen); (2) que la fragmentación geográfica forzada por la geopolítica (Arizona, Japón, Alemania) diluya la ventaja de escala centralizada en Taiwán, aunque esto también reduce el riesgo geopolítico concentrado.

---

## 4. Pensamiento inverso y lista de riesgos — Munger, "dale la vuelta"

### 4.1 Rutas de fracaso

| Ruta | Probabilidad estimada | Impacto | Nota |
|---|---|---|---|
| Escalada militar o bloqueo en el Estrecho de Taiwán | Baja-media (cifras de prensa citan ~20%, [estimado de fuente única, no consenso oficial, tratar con máxima cautela]) | Catastrófico | >60% de la fundición global y >90% de los nodos de vanguardia se concentran en Taiwán; un escenario de disrupción severa se estima que extendería plazos de entrega >6 meses y subiría precios 25-35% en nodos críticos [estimado de fuente de análisis de riesgo] |
| Concentración de clientes: recorte abrupto de capex de IA por parte de Nvidia o hiperescaladores | Media | Alto | Nvidia (19%) + Apple (17%) = 36% de ingresos combinados; HPC ya es 58% del total. Prensa reciente menciona señales de reventa de capacidad de IA excedente por parte de algún hiperescalador [fuente única, sin confirmar magnitud] |
| Samsung o Intel logran paridad de rendimiento en nodos de vanguardia y capturan un cliente ancla | Baja-media | Medio-alto | Samsung ya inició producción de 2nm GAA (volumen limitado); Intel 18A en desarrollo con yields "de clase mundial" no esperados hasta 2027 [fuente de prensa especializada] |
| Restricciones de exportación de EE. UU. se amplían y afectan la relación TSMC-clientes (ej. Nvidia) de forma indirecta | Media | Medio | Propuesta de abril 2026 para endurecer controles DUV/grabado hacia China dirigida a SMIC — TSMC no está sancionada directamente, pero opera en el mismo marco regulatorio que sus clientes de IA |
| Compresión de múltiplo sin fallo operativo | Media-alta | Medio-alto | PER TTM actual (32,6x en base agregada/hasta 40,8x en base ADR-USD) está en el extremo alto del rango histórico 5 años (mínimo 2022: ~12x) |

### 4.2 Analogía histórica

- **TSMC 2022**: la propia empresa es la mejor analogía de riesgo de valoración — PER TTM cayó a ~12x en 2022 (desde múltiplos de 25-30x) en la corrección generalizada de tecnología, sin que el foso sufriera daño alguno. Quien compró en 2022 ha obtenido un retorno extraordinario; quien compró en los picos previos tardó en recuperarse.
- **Riesgo de concentración geográfica**: análogo parcial a empresas petroleras con activos concentrados en zonas de riesgo geopolítico (ej. compañías con operaciones concentradas en Oriente Medio) — el mercado históricamente aplica un "descuento por riesgo país" que se expande y contrae con el ciclo de tensión geopolítica, sin relación directa con los fundamentales del negocio.
- **Contraejemplo de fragmentación exitosa**: empresas que diversificaron geografía de producción bajo presión geopolítica (ej. manufactura electrónica saliendo de una sola región) en general mantuvieron su ventaja competitiva si la tecnología central seguía siendo superior — la expansión de TSMC a Arizona/Japón/Alemania sigue ese patrón, aunque a costes más altos por unidad que en Taiwán [inferencia razonable, no confirmada con datos de costes comparativos].

### 4.3 Verificación cruzada con otras disciplinas

- **Teoría de juegos geopolítica**: EE. UU. tiene un incentivo estructural en que TSMC siga siendo indispensable (de ahí el CHIPS Act y la presión para fabricar en Arizona) pero también en reducir su propia dependencia de un activo concentrado en una zona de riesgo — la "estrategia del silicio" ("silicon shield") de Taiwán depende de que esta ambigüedad se mantenga sin resolverse hacia ningún extremo.
- **Curva de adopción tecnológica**: N2 (2nm) está en fase de despliegue temprano (4T2025-2026); la curva de rampa histórica de TSMC en nodos anteriores (N5, N3) ha sido consistentemente más rápida que la de sus competidores — el rendimiento (yield) es la métrica crítica a vigilar en los próximos 2-3 trimestres.
- **Teoría de colas/cuellos de botella**: TSMC, junto con ASML, forma parte de la misma cadena de cuello de botella físico del capex de IA — pero TSMC tiene más "grados de libertad" competitivos (Samsung, Intel existen como alternativas parciales) que ASML (sin alternativa alguna en EUV).

### 4.4 Autocrítica de sesgos

- **Sesgo narrativo**: "TSMC es el corazón de la IA global" es una narrativa tan poderosa como la de ASML, y comparte el mismo riesgo de sobreponderar lo visible (backlog de IA) frente a lo menos visible (riesgo geopolítico, que por definición es difícil de cuantificar con datos históricos porque no ha ocurrido un evento de esa magnitud).
- **Sesgo de anclaje**: anclar en el PER de 12x de 2022 como "precio justo" ignora que los fundamentales (margen bruto, ROE, posición competitiva) han mejorado sustancialmente desde entonces — no es una comparación como-con-como.
- **Sesgo de disponibilidad**: la abundancia de cobertura mediática sobre el riesgo Taiwán-China puede llevar tanto a sobreestimarlo (por la frecuencia de titulares) como a subestimarlo (por "fatiga de titulares" tras años de tensión sin escalada real) — este informe no puede resolver esa tensión con datos.

**Argumentos de la parte bajista (síntesis de fuentes de mercado, 2026)**: (1) alta exposición a una eventual pausa en capex de IA de hiperescaladores (HPC = 58% de ingresos); (2) valoración premium que asume crecimiento continuado; (3) concentración de clientes (36% combinado Nvidia+Apple); (4) riesgo geopolítico Taiwán-China no completamente descontado; (5) señales tempranas de posible exceso de capacidad de IA en algunos hiperescaladores [fuente única, Forbes cita una tesis de "trampa de valor" con 33% de sobrevaloración — cifra de fuente única, tratar con cautela].

**Pregunta al estilo Munger — "¿dónde es más probable que me equivoque?"**: en asumir que el riesgo geopolítico es "solo cola" (tail risk) cuando en realidad podría estar subvalorado precisamente porque nunca se ha materializado en la era moderna de los semiconductores — la ausencia de evidencia histórica de una crisis similar no es evidencia de su imposibilidad, es la razón por la que este riesgo específico es estructuralmente difícil de modelar con datos.

---

## 5. Evaluación del equipo directivo — Duan Yongping "las personas correctas" + Buffett "integridad"

### 5.1 Perfil

- **C.C. Wei** — Presidente del Consejo (Chairman) y CEO desde junio de 2024, primera persona en la historia de TSMC en ocupar ambos cargos simultáneamente. Trayectoria interna larga: CEO en solitario 2018-2024, Presidente y Co-CEO 2013-2018. Reconocido entre las 100 personas más influyentes de 2026 por TIME (abr-2026).
- **Mark Liu** — Se retiró del consejo tras la junta de accionistas de junio de 2024; ya no tiene rol activo en TSMC (actualmente en el consejo de Micron). La sucesión ya se completó, sin fricción visible.
- **Consejo de administración**: 10 miembros, mayoría independiente con perfiles de peso de la industria (ex-Applied Materials, ex-Xilinx, MIT). El mayor accionista es el National Development Fund del gobierno de Taiwán (6,4%) — un vínculo estatal relevante para entender los incentivos de la compañía en la negociación de la expansión en EE. UU.

### 5.2 Decisiones clave revisadas (tabla)

| Fecha | Decisión | Resultado | Valoración |
|---|---|---|---|
| Jun-2024 | Consolidación de Chairman + CEO en C.C. Wei tras la salida de Mark Liu | Transición sin sobresaltos; guía cumplida y elevada desde entonces | ★★★★★ — sucesión ordenada |
| Mar-2025 | Compromiso ampliado de inversión en Arizona a 165.000 M$ (desde el compromiso original menor) | En ejecución: Fase 1 en producción de 4nm desde inicios de 2025; Fase 2 (equipos desde 3T2026, 3nm/2nm en 2027) | ★★★★ — respuesta calculada a la presión geopolítica/CHIPS Act, aunque a mayor coste por unidad que en Taiwán [inferencia, sin datos comparativos de costes] |
| 2025-2026 | Kumamoto (Japón, JASM) alcanza el primer trimestre de beneficio en 1T2026 tras una pérdida de ~1.400 M$ en todo 2025 | Validación de que la diversificación geográfica puede alcanzar rentabilidad, aunque con curva de aprendizaje costosa | ★★★★ — ejecución sólida de una apuesta de diversificación cara |
| 4T2025 | Inicio de producción en volumen de N2 (2nm) según calendario, con buenos rendimientos declarados | ~15 clientes confirmados (Apple, Nvidia, AMD, Qualcomm, MediaTek); capacidad objetivo 100.000 obleas/mes en 2026 | ★★★★★ — ejecución tecnológica en el núcleo de la ventaja competitiva |
| Abr-2026 | Guía de capex 2026 elevada a 52.000-56.000 M$ (+32% interanual), con sesgo hacia el extremo alto | Coherente con la demanda de IA declarada; eleva el riesgo de sobre-inversión si el ciclo gira | ★★★ — decisión correcta si el ciclo de IA se sostiene, arriesgada si no |

### 5.3 Asignación de capital

Política declarada: dividendo en efectivo "sostenible y creciente de forma estable", nunca inferior al periodo anterior. **A diferencia de ASML, TSMC no realiza programas de recompra significativos** — no se encontró evidencia de recompras activas relevantes en 2025-2026, coherente con su histórico. El capital se reinvierte de forma abrumadora en capex (1.272.410 M NT$ en 2025, guía 2026 de 52.000-56.000 M$, +32%).

| Año | Dividendo total por acción (NT$) | Payout ratio |
|---|---|---|
| 2022 | ~11,00 | — |
| 2023 | ~11,25 | — |
| 2024 | ~14,00 | — |
| 2025 | Serie incompleta en fuentes consultadas [dato no encontrado con confianza] | ~24% [fuente única] |

**Lectura**: el payout ratio bajo (~24%) refleja una decisión consciente de priorizar el reinvestimiento en capacidad sobre la retribución al accionista — coherente con una empresa en fase de expansión de capital intensivo, no con una empresa madura que devuelve caja. Esto contrasta con ASML (payout ~25% pero con recompras adicionales de 12.000 M€ 2026-2028) — TSMC reinvierte proporcionalmente más.

### 5.4 Alineación accionarial y gobernanza

No se encontraron cifras verificadas de la participación accionarial individual de C.C. Wei ni de otros directivos en las fuentes consultadas — **vacío de datos**, no se debe inferir alineación o desalineación sin esa información. El fundador Morris Chang mantendría ~0,5% [estimación de fuente única no oficial, no verificada].

**Pregunta al estilo Duan Yongping — "¿sobreviviría la empresa a la jubilación del CEO?"**: sí, con alta confianza — TSMC ya ha demostrado dos transiciones de liderazgo (Chang→Liu/Wei co-CEO→Wei consolidado) sin pérdida de ejecución operativa. El riesgo de dependencia de personas está distribuido en la cultura de ingeniería de procesos acumulada durante casi 40 años, no en un individuo. El mayor riesgo de gobernanza no es de personas, sino estructural: la relación entre TSMC y el gobierno de Taiwán (mayor accionista único) en un contexto de negociación geopolítica activa con EE. UU.

---

## 6. Tendencias sectoriales y civilizatorias — Li Lu

### 6.1 ¿Cambio de paradigma o negocio maduro?

TSMC es, junto con ASML y Nvidia, uno de los tres nodos físicos indispensables del paradigma de la IA: Nvidia diseña, ASML fabrica las máquinas, TSMC fabrica los chips. A diferencia de ASML (proveedor de bienes de capital sin competencia), TSMC opera en un mercado con competidores reales aunque rezagados (Samsung, Intel), lo que la sitúa en una posición intermedia entre "monopolio absoluto" y "líder de mercado disputado".

### 6.2 Posición en la cadena de valor

| Eslabón | Quién | Poder de negociación frente a TSMC |
|---|---|---|
| Proveedor de equipos | ASML (litografía EUV/DUV), Applied Materials, Tokyo Electron | Alto: TSMC depende de ASML de la misma forma que sus propios clientes dependen de TSMC — una cadena de dependencias en serie |
| TSMC | Fundición: ~70% de cuota en fundición pura global, >90% en nodos de vanguardia | — |
| Clientes fabless | Nvidia (19%), Apple (17%), AMD, Qualcomm, MediaTek | Creciente: la concentración en 2 clientes (36%) da a Nvidia y Apple más influencia relativa que hace 5 años, cuando la base de clientes estaba más repartida |
| Cliente final | Hiperescaladores (vía Nvidia), consumidores (vía Apple) | Indirecto pero relevante: el capex de IA de los hiperescaladores es la marea que sostiene el 58% de HPC |

### 6.3 TAM y techo

Objetivos oficiales dados por TSMC (guía reiterada en llamadas de resultados 2025-2026): CAGR de ingresos "cercano al 25%" en USD para 2024-2029, con el segmento de IA creciendo a un CAGR de "gama media-alta del 50%" en el mismo periodo; margen bruto objetivo de "56% o superior a través del ciclo"; ROE objetivo de "alto 20%" a través del ciclo. Sobre la base 2025 (ingresos ~123.000-128.000 M$ según fuente), un CAGR del 25% hasta 2029 implicaría ingresos de ~300.000 M$ — una cifra que exige que la demanda de IA no sufra ninguna resaca de ciclo material en el intervalo.

**Pregunta al estilo Li Lu — "dentro de 20 años, ¿será el 'Standard Oil de su época' o el '3Com que se desvaneció'?"**: la analogía con Standard Oil es más matizada que en ASML — TSMC domina hoy, pero a diferencia de ASML **tiene competidores reales trabajando activamente para cerrar la brecha** (Samsung, Intel, con el respaldo de sus respectivos gobiernos). Es más parecido a un campeón nacional con ventaja de ejecución sostenida que a un monopolio estructural irreplicable. Dentro de 20 años, lo más probable es que TSMC siga siendo el líder, pero con una cuota de mercado más disputada que la actual (~70%), especialmente si Intel o Samsung logran un punto de apoyo geopolítico (subsidios, contratos gubernamentales) que compense su desventaja de ejecución.

---

## 7. Valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### 7.1 Métricas de valoración actuales (verificadas con herramienta)

```
Base TWD (acción ordinaria):
Precio: 2.415,00 NT$ | EPS diluido FY2025: 66,26 NT$ | FCF/acción: ~38,66 NT$ | Dividendo: ~19,50 NT$ [estimado]

PER (BPA FY2025 oficial):    2.415,00 / 66,26 = 36,45x
Rentabilidad del beneficio:  2,74%
P/FCF:                       62,47x  |  FCF yield: 1,60%
Rentabilidad por dividendo:  0,81%

Base USD (ADR):
Precio: 434,11 $ | EPS ADR FY2025 oficial: 10,65 $ | Dividendo: ~3,05 $ [estimado]

PER (BPA FY2025 oficial):    434,11 / 10,65 = 40,76x
Rentabilidad del beneficio:  2,45%
Rentabilidad por dividendo:  0,70%
```

**Nota importante**: el PER en base TWD (36,45x) y en base ADR/USD (40,76x) difieren en ~4,3 puntos porcentuales absolutos por la prima implícita del ADR documentada en §1.3 — no son directamente comparables sin ajustar por esa prima. Para comparación con comparables internacionales (mayormente cotizados en USD), se usa la base ADR (40,76x) con la advertencia explícita de que incluye esa prima no resuelta.

Referencia de agregador: PER TTM 32,60x, PER forward 22,24x, EV/EBITDA 21,00x, P/B 10,49x [stockanalysis, 12-jul-2026] — nótese que el PER TTM de 32,60x del agregador es inferior tanto al cálculo TWD (36,45x) como al ADR (40,76x) de este informe; la diferencia probablemente se debe a que el agregador usa el EPS TTM (que ya incorpora el fuerte 1T2026, con margen bruto del 66,2%) en vez del EPS FY2025 completo. **Ambas bases son válidas bajo su propio periodo temporal; no deben mezclarse.**

### 7.2 Comparación con la propia historia y con comparables

- **Historia propia**: PER TTM osciló entre ~12x (mínimo, 2022) y el nivel actual (32,6-40,8x según base) — el extremo superior del rango de 5 años. EV/EBITDA pasó de 7,16x (2022) a 21,00x (actual); P/B de 4,08x (2022) a 10,49x (actual).
- **Comparables** (12-jul-2026, con las reservas de fuente única indicadas):

| Empresa | PER TTM | PER forward | Nota |
|---|---|---|---|
| **TSMC (ADR)** | 40,76x (calculado, oficial) / 32,60x (agregador, TTM con 1T2026) | 22,24x | — |
| ASML | 63,44-59,9x | 45,4-49,5x | Ver `ASML-research-20260712.md` |
| Samsung Electronics | 13,7x-22,9x [discrepancia amplia entre fuentes, no resuelta] | 4,94x [cifra que parece anómalamente baja, no confiable] | ⚠️ No usar sin verificación adicional |
| GlobalFoundries | 60,5x | — | Comparable de menor escala/tecnología |
| Intel | [dato no encontrado] | [dato no encontrado] | — |

**Lectura (con reservas)**: TSMC cotiza con un descuento relevante frente a ASML en cualquiera de las dos bases (36-41x vs. 60-63x TTM), pese a que ambas se benefician de la misma narrativa de "cuello de botella de la IA". Esto es coherente con la evaluación del foso de §3: el mercado sí distingue entre el monopolio absoluto de ASML y la posición de liderazgo (pero no monopolio) de TSMC.

### 7.3 ¿Qué descuenta el precio actual? (DCF inverso, calculado con herramienta, base ADR/USD)

Para que un comprador a 434,11 $ obtenga un 10% anual durante 10 años con un PER terminal de 30x (en línea con el nivel actual, ni expansión ni compresión de múltiplo):

```
BPA 2035 requerido: 434,11 × 1,10^10 / 30 = 37,53 $
CAGR de BPA implícito: (37,53 / 10,65)^(1/10) − 1 = 13,4% anual durante 10 años
```

**Comparación directa con ASML** (mismo cálculo, mismo informe de investigación paralelo): ASML requiere un CAGR de BPA del **18,6%** para el mismo retorno objetivo, mientras que la propia guía de crecimiento de ingresos a largo plazo de TSMC es de ~25% CAGR (2024-2029) — con lo cual el 13,4% implícito en el precio de TSMC está **por debajo** de lo que la compañía guía, mientras que el 18,6% implícito en ASML está **por encima** de lo que su guía 2030 sugiere de forma óptima. **Esta es la asimetría más relevante de este informe**: al precio actual, el mercado exige menos optimismo prospectivo a TSMC que a ASML, pese a compartir la misma narrativa macro de "cuello de botella de la IA".

### 7.4 Valoración en tres escenarios (herramienta, base ADR/USD, horizonte 3 años)

```
Escenario       Crecimiento anual   PE objetivo   BPA objetivo   Precio objetivo   Variación
Alcista (Bull)         25%              35x           20,80         728,0 $         +67,7%
Base (Neutral)         18%              28x           17,50         490,0 $         +12,9%
Bajista (Bear)          8%              18x           13,42         241,5 $         −44,4%
```

- **Alcista**: el crecimiento de ingresos se mantiene cerca del objetivo guiado de ~25% CAGR, el ramp de N2 es limpio, y el múltiplo se mantiene en la zona alta actual (35x). Retorno: +67,7% en 3 años (~18,8% anual).
- **Base**: crecimiento moderado (18%, aún fuerte pero por debajo de la guía optimista), múltiplo revierte parcialmente hacia 28x. Retorno: +12,9% en 3 años (~4,1% anual) — modesto pero positivo, a diferencia del escenario base negativo de ASML.
- **Bajista**: resaca de ciclo de capex de IA (crecimiento cae a 8%), múltiplo revierte hacia 18x (aún por encima del mínimo histórico de 12x de 2022). Retorno: −44,4%.

**Rango de precio objetivo a 3 años: 241,5 $ – 728,0 $, con el escenario central en 490,0 $ — un +12,9% sobre el precio actual.** A diferencia de ASML (escenario central negativo), **el escenario central de TSMC a 3 años es positivo**, aunque modesto. La asimetría entre el escenario alcista (+68%) y el bajista (−44%) sigue siendo desfavorable en magnitud absoluta, pero el punto central no exige ya un error del mercado para que el comprador de hoy obtenga retorno.

### 7.5 Comparación cualitativa con la valoración de ASML

| | TSMC | ASML |
|---|---|---|
| PER actual (base local/oficial) | 36,45x (TWD) / 40,76x (ADR) | 63,45x |
| PER histórico 5 años (rango) | 12x – 40,8x | 35-45x (mediana), pico ~63x actual |
| Posición vs. rango histórico | En el extremo superior, pero con precedente reciente (2022) de haber estado muy por debajo | Muy por encima de la mediana histórica |
| CAGR de BPA implícito (DCF inverso, 10 años) | 13,4% | 18,6% |
| CAGR de crecimiento guiado por la propia compañía | ~25% (ingresos, 2024-2029) | ~9,7% (ventas, punto medio guía 2030) |
| ¿El precio exige más o menos que la guía propia? | **Menos** — margen de holgura | **Más** — sin margen de holgura |
| Escenario central a 3 años (modelo del informe) | **+12,9%** | **−20,6%** |

**Lectura conjunta**: pese a compartir la misma narrativa de "cuello de botella físico de la IA", el mercado valora a TSMC con más disciplina relativa a su propio potencial de crecimiento que a ASML. Esto no significa que TSMC sea "barata" en términos absolutos (36-41x PER sigue siendo un múltiplo elevado para una manufacturera de capital intensivo), pero sí que **el margen de seguridad relativo es mayor en TSMC que en ASML al precio actual**.

**Pregunta al estilo Duan Yongping — "si la bolsa cerrara mañana durante 5 años, ¿estarías dispuesto a mantener a este precio?"**: con más tranquilidad que con ASML. El negocio es de calidad extrema pero no de monopolio absoluto, el precio no exige un escenario de perfección continuada, y el escenario central del modelo ya es positivo. La principal reserva no es de valoración, sino del riesgo geopolítico de cola (§4.1), que ningún modelo de valoración basado en fundamentales puede capturar adecuadamente.

---

## 8. Memorando de decisión final

### 8.1 Tabla resumen

| Dimensión | Conclusión | Confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | ★★★★★ Fundición pura líder, ejecución de nodo consistentemente superior durante casi 40 años; vuelco reciente hacia HPC/IA (58% de ingresos, Nvidia ya el mayor cliente) | Alta |
| Foso económico (Buffett) | ★★★★ Fuerte (escala, coste de cambio extremo, márgenes del 59,9%) pero **no absoluto** — a diferencia de ASML, tiene competidores reales (Samsung, Intel) intentando cerrar la brecha en nodos de vanguardia | Media-alta |
| Equipo directivo (Duan Yongping + Buffett) | ★★★★★ Sucesión ordenada, ejecución tecnológica sólida (N2 en calendario), gestión disciplinada de la expansión geográfica forzada por geopolítica; vacío de datos sobre alineación accionarial individual | Media-alta |
| Mayor riesgo (Munger) | Concentración geopolítica en Taiwán (riesgo de cola, no cuantificable con confianza) + concentración de clientes (Nvidia+Apple 36%) + exposición a un eventual giro del ciclo de capex de IA (HPC = 58% de ingresos) | Alta en la identificación del riesgo; imposible cuantificar la probabilidad del escenario geopolítico con rigor |
| Tendencia sectorial/civilizatoria (Li Lu) | Nodo físico indispensable del paradigma de la IA junto a ASML y Nvidia, pero con posición competitiva disputada (no monopolio) | Media-alta |
| Valoración (Buffett + Duan Yongping) | PER 36-41x en el extremo superior del rango histórico, pero **el precio actual exige menos optimismo (CAGR de BPA implícito 13,4%) que la propia guía de crecimiento de la compañía (~25%)** — a diferencia de ASML. Escenario central a 3 años: **+12,9%** | Alta en el cálculo; los inputs de crecimiento son estimaciones |

### 8.2 Tabla de decisión

| Estrategia | Recomendación |
|---|---|
| Inversor sin posición | **Más atractivo que ASML al precio actual**, pero no una compra sin reservas: el PER (36-41x) sigue en el extremo alto de su propio rango histórico, y el riesgo geopolítico de cola no está reflejado en ningún modelo de valoración basado en fundamentales. Considerar posición inicial moderada, con la advertencia de que **los resultados del 2T2026 se publican mañana (16-jul-2026)** |
| Inversor con posición | Mantener — el escenario central a 3 años es positivo (+12,9%) y el negocio muestra mejora fundamental continuada (margen bruto en máximos, N2 en calendario). El riesgo principal a vigilar no es de ejecución sino geopolítico y de concentración de clientes |
| Señal de venta | (1) Evidencia de escalada real de tensión en el Estrecho de Taiwán más allá de retórica; (2) recorte material y sostenido de pedidos de Nvidia o Apple; (3) evidencia de que Samsung o Intel han capturado un cliente ancla de nodo avanzado de TSMC |
| Señal de refuerzo de posición | Corrección hacia PER ~20-25x (más cerca del escenario bajista del modelo, ~250-300 $ en base ADR) sin deterioro de la posición competitiva ni de la guía a largo plazo |
| **Regla inmediata** | **No actuar antes del 16-jul-2026 (resultados 2T2026, mañana): la guía de 3T2026 y cualquier comentario sobre la sostenibilidad del capex de IA pueden mover la acción de forma significativa** |

### 8.3 Comentarios simulados de los cuatro maestros

> "TSMC es más fácil de entender que muchas empresas de tecnología: fabrica lo que otros diseñan, y lo hace mejor que nadie más en el mundo. El riesgo no está en el negocio, está en dónde está el negocio — y eso es algo que ningún balance puede mostrarte." — Warren Buffett (paráfrasis del marco de Buffett, adaptada al caso; no es una cita textual sobre TSMC)

> "Invierte el problema de Taiwán: no preguntes qué probabilidad exacta tiene un conflicto — nadie la sabe con precisión, y cualquier cifra citada en prensa es una ilusión de precisión. Pregunta si estás dispuesto a que una parte no trivial de tu cartera dependa de que ese riesgo, sea cual sea su probabilidad real, no se materialice en tu horizonte de inversión." — Charlie Munger (paráfrasis del marco de Munger, adaptada al caso)

> "Comparado con ASML, este es el negocio 'algo más barato pero algo menos seguro' — y esa es exactamente la clase de decisión que vale la pena pensar dos veces, en vez de comprar automáticamente lo que ya subió más. El precio de TSMC no te está pidiendo que creas en un milagro; el de ASML, ahora mismo, sí." — Duan Yongping (paráfrasis del marco de Duan Yongping, adaptada al caso)

> "Dentro de 20 años, la pregunta no es si el mundo seguirá necesitando fabricar chips avanzados — claramente sí. La pregunta es si esa fabricación seguirá concentrada en una isla de 36.000 km² a 180 kilómetros de una potencia que la reclama como propia. La respuesta a esa pregunta la está escribiendo, ahora mismo, la geopolítica — no el balance de TSMC." — Li Lu (paráfrasis del marco de Li Lu, adaptada al caso)

---

## Cierre: confianza del análisis de IA vs. certeza de inversión

**Lo que este informe puede afirmar con alta confianza (datos verificados con herramienta, doble fuente o cálculo propio)**: capitalización bursátil (resuelta la discrepancia de 15,45% mediante cálculo propio), ingresos y beneficio neto FY2025 (doble fuente, ≤0,59%), EPS oficial diluido y ADR, la estructura de ingresos por segmento y nodo, la trayectoria de márgenes 2021-2025, y todos los cálculos de valoración (PER, escenarios, DCF inverso) — ejecutados con `financial_rigor.py`, sin cálculo mental.

**Lo que este informe no puede afirmar con la misma confianza**: la prima implícita del 15,4% del ADR sobre la acción ordinaria (§1.3, sin resolver con confianza), la cifra exacta de deuda total y caja (fuentes divergentes >5%), la participación accionarial de C.C. Wei y otros directivos (vacío de datos), la probabilidad real de un evento geopolítico severo en Taiwán (cualquier cifra citada es especulativa), y el rendimiento (yield) real de producción de N2 más allá de lo comunicado por la propia compañía.

**Distinción final**: la confianza de los *datos* de este informe es alta (nivel A), con la salvedad de la prima del ADR no resuelta. La *certeza de inversión* sobre la calidad del negocio es alta pero **estructuralmente menor que la de ASML**, precisamente porque el foso de TSMC es de ejecución y escala frente a competidores reales, no un monopolio irreplicable — y porque el riesgo geopolítico de Taiwán es, por su propia naturaleza, no modelable con los datos financieros de este informe. Un lector que considere ese riesgo geopolítico como remoto encontrará en TSMC una propuesta de valor más equilibrada que ASML al precio actual (escenario central positivo, menos optimismo exigido por el precio); un lector que lo pondere de forma severa debería tratar cualquier concentración en TSMC con el mismo cuidado que aplicaría a un activo con riesgo de cola no asegurable.

---

### Fuentes principales consultadas

pr.tsmc.com / investor.tsmc.com (comunicados de resultados 4T/FY2025 y 1T2026, guía de capex 2026, política de dividendos); SEC EDGAR (20-F, 6-K trimestrales a1q25e-a1q26e); stockanalysis.com; companiesmarketcap.com; TradingView; Taipei Times (mar-2026, cuota de mercado); SiliconCanals.com, mlq.ai, FourWeekMBA (estructura de ingresos); PCGuide.com, WCCFTech (concentración de clientes, citando 20-F); TechPowerUp, Tom's Hardware, AppleInsider (N2/2nm); tech-insider.org, blackridgeresearch.com, gpec.org (Arizona); BigGo Finance, Taipei Times, TrendForce (Kumamoto/Dresde); AnySilicon, Semicone.com, Merics.org, SemiAnalysis (competencia Samsung/Intel/SMIC); SCMP, defconlevel.com, mapshock.com (riesgo geopolítico — fuentes de análisis de riesgo, no oficiales); FinanceFeeds, Motley Fool, Forbes, BingX, analyticsinsight.net (tesis alcista/bajista); Seoul Economic Daily, Digitimes, MLex (litigios); Time.com, Focustaiwan.tw (C.C. Wei); Micron 8-K (Mark Liu).
