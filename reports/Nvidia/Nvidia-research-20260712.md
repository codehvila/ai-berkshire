# NVIDIA Corp. (NASDAQ:NVDA) — Informe de Investigación de Inversión

**Fecha del informe:** 12 de julio de 2026
**Marco analítico:** Buffett · Munger · Duan Yongping · Li Lu
**Precio de referencia:** $210,96 (cierre del 10-jul-2026)
**Nota de calendario fiscal:** el año fiscal de NVIDIA termina a finales de enero. FY2026 cerró el 25-ene-2026; último trimestre reportado: T1 FY2027 (feb-abr 2026, publicado el 20-may-2026); **resultados del T2 FY2027 el 26-ago-2026**.
**Trabajo previo en este repositorio:** `reports/英伟达/` (abril de 2026, en chino) — serie sobre el foso CUDA de 5 capas, amenaza de chips propios, división entrenamiento/inferencia y análisis de margen de seguridad. Este informe actualiza esas conclusiones donde los hechos han cambiado (ver §0).

---

## 0. Autoevaluación de sesgo de investigación con IA

### Calificación de riqueza informativa: **A (la acción más cubierta del planeta)**

**Trampa específica**: en NVIDIA no existe ventaja informativa — existe, como mucho, disciplina para no dejarse arrastrar por ninguna de las dos narrativas industrializadas ("burbuja/Cisco 2000" vs "nueva revolución industrial"). Este informe se apoya en una ventaja distinta: **contrastar contra nuestro propio trabajo de abril de 2026** y registrar qué predicciones se confirmaron y cuáles no. Resultado del contraste:

| Proyección de abril-2026 | Estado en julio-2026 |
|---|---|
| Erosión de cuota en inferencia hacia 65-75% | ✅ **Confirmada** por fuentes independientes (60-75%) |
| Margen bruto comprimiéndose del 75% hacia los 60s | ❌ **Refutada por ahora** — recuperado a 74,9% en T1 FY27 (guía 75%) |
| LOI NVIDIA→OpenAI de $100.000M como riesgo circular | ✅/➖ **Murió sin ejecutarse** — sustituida por $30.000M de equity en la ronda de feb-2026; la exposición circular directa se REDUJO |
| China como opción degradada | ✅ Peor de lo previsto — cuota "del 95% a efectivamente cero" (palabras del propio Huang), 5,6% de ingresos y cayendo |
| CUDA como foso de 5 capas | Sin cambios materiales; refuerzo adicional: compra de Groq (~$20.000M, dic-2025) eliminando al principal especialista de inferencia |

**Autochequeo de sesgo:**
- El dato más manipulable del caso es el beneficio GAAP: **~27% del beneficio del T1 FY27 son marcas de inversiones** (+$15.900M pre-impuestos) en empresas que compran sus chips ✅ calculado — todo PER que no lo ajuste está mal medido.
- El riesgo de anclaje aquí es triple: al pico de $5,5T (may-2026), al hito de "primera empresa de $5T" (oct-2025), y a la analogía Cisco. Ninguno es análisis.
- Ambos bandos tienen razón parcial verificable: los alcistas en los hechos de NVIDIA (dos beats masivos, margen recuperado, ~$1T de pedidos), los escépticos en la dirección de las cuentas de sus CLIENTES (FCF de las big tech rozando cero este verano, MSFT -24% YTD).

---

## 1. Recopilación de datos — Cifras clave (verificadas)

### 1.1 Identificación y cotización

| Campo | Valor |
|---|---|
| Precio (10-jul-2026) | $210,96 |
| Rango 52 semanas | $161,61 – $236,54 (a -10,8% del máximo ✅; récord de cierre $235,47 el 14-may-2026) |
| Acciones en circulación | 24.220M |
| Capitalización bursátil | **$5,11 billones (trillions)** ✅ (verificado, desviación 0,01%) — primera empresa de la historia en cruzar $5T (29-oct-2025); mayor peso del S&P 500 (~7,3%) |
| Comportamiento | 2024: +171% · 2025: +39% (cerró en $187,78) · **2026 YTD: ~+12%** — pero con dos correcciones >18% intra-año (T1: -23% desde el pico de oct; jun: -18% desde el récord de mayo) |
| Dividendo | $0,25/trimestre (elevado 25x desde $0,01 en may-2026), yield 0,47% ✅; recompra: nueva autorización de **$80.000M** |
| Consenso | Strong Buy (61 analistas), PT medio $301,62 (+43%) ⚠️ fuente única |

### 1.2 Resultados FY2026 y últimos 4 trimestres (fuentes primarias: comunicados + 10-K/10-Q leídos en origen)

| $B | T2 FY26 (jul-25) | T3 FY26 (oct-25) | T4 FY26 (ene-26) | T1 FY27 (abr-26) |
|---|---|---|---|---|
| Ingresos totales | 46,7 (+56%) | 57,0 (+62%) | 68,1 (+73%) | **81,6 (+85%)** |
| Data Center | 41,1 | 51,2 | 62,3 | **75,2 (+92%)** |
| — Cómputo DC | n/d | 43,0 | 51,3 | 60,4 (+77%) |
| — **Networking** | n/d | 8,2 (+162%) | 11,0 (+263%) | **14,8 (+199%)** |
| Margen bruto | 72,4% | 73,4% | 75,0% | **74,9%** |

- **FY2026 completo**: ingresos **$215.938M (+65%)** ✅ desviación 0,00%; Data Center $193.700M (+68%); beneficio neto **$120.067M** ✅ desviación 0,00%; EPS $4,90; margen bruto 71,1% (incluye el cargo de $4.500M por H20).
- **T1 FY27**: beneficio GAAP $58.300M ⚠️ — incluye **+$15.900M de ganancias de valores** (marcas de OpenAI/Intel/participadas = **27,3% del beneficio GAAP del trimestre** ✅); el no-GAAP fue $45.500M. TTM: ingresos $253.450M ✅ (verificado por suma de trimestres), beneficio $159.600M ⚠️ (con marcas).
- **Guía T2 FY27**: ingresos **$91.000M ±2%** (~+95% interanual), margen bruto 74,9-75,0%, **asumiendo cero cómputo DC en China**.
- **Cambio de presentación de segmentos en T1 FY27**: Data Center dividido en Hiperescala ($37.869M) y Nubes IA/Industrial/Empresa ($37.377M); Gaming/ProViz/Auto absorbidos en "Edge Computing" ($6.369M, +29%).
- **Rubin (Vera Rubin)**: rampa de producción 2S-2026; 3,5x entrenamiento / 5x inferencia vs Blackwell (GTC mar-2026).

### 1.3 Concentración de clientes — el dato más importante del informe (10-Q/10-K, literal)

| Periodo | Concentración |
|---|---|
| T1 FY26 (hace un año) | Dos clientes directos: 16% y 14% |
| FY2026 completo | Un cliente **22%**, otro 14% |
| **T1 FY27** | **Tres clientes directos: 21% + 17% + 16% = 54% de los ingresos** ✅; concentración de cuentas por cobrar aún mayor: 30%/18%/16% = 64% |

Además, el 10-Q señala que "una empresa de investigación y despliegue de IA" (OpenAI, sin nombrar) genera "una cantidad significativa de ingresos" de forma **indirecta** comprando servicios cloud a clientes de NVIDIA. La concentración está **subiendo**, y los 4-5 grandes clientes construyen todos silicio sustitutivo.

### 1.4 Tendencia a 5 años (años fiscales terminados en enero)

| $M | FY22 | FY23 | FY24 | FY25 | FY26 |
|---|---|---|---|---|---|
| Ingresos | 26.914 | 26.974 | 60.922 | 130.497 | 215.938 |
| Margen bruto | 64,9% | 56,9% | 72,7% | 75,0% | 71,1% |
| Margen operativo | 37,3% | 15,7% | 54,1% | 62,4% | 60,4% |
| Beneficio neto | 9.752 | 4.368 | 29.760 | 72.880 | 120.067 |
| EPS diluido | $0,39 | $0,17 | $1,19 | $2,94 | $4,90 |
| FCF | 8.132 | 3.808 | 27.021 | 60.853 | **96.676** |
| Recompras | ~0 | 10.039 | 9.533 | 33.706 | 40.086 |

CAGR de ingresos FY22-FY26: **68,3% anual** ✅ — sin precedente a esta escala. El propio FY23 (ingresos planos, margen hundido) recuerda que este negocio ES cíclico: el cripto-invierno de 2022 está a solo tres años.

### 1.5 Los indicadores de ciclo (los datos que vigilar cada trimestre)

| Indicador | Trayectoria | Lectura |
|---|---|---|
| **Inventario** | $10.100M (ene-25) → $21.400M (ene-26) → **$25.800M (abr-26)** | Creciendo más rápido que las ventas — clásico de pico de ciclo O de rampa de producto (Rubin); ambiguo por diseño |
| **Compromisos de compra/capacidad** | $50.300M (oct-25) → $95.200M (ene-26) → **$119.000M (abr-26)** — 2,4x en seis meses | La huella contable de la apuesta: si la demanda se corta, esto se convierte en cargos |
| Cuentas por cobrar | $40.700M | Creciendo con el negocio |
| Provisiones de inventario | $800M en T1 FY27 (vs $2.300M hace un año) | Sin señal de estrés aún |
| **Cartera de inversiones** | No cotizadas: $22.300M (ene-26) → **$43.400M (abr-26)** + $30.200M cotizadas + **$27.000M comprometidos** | La red circular, cuantificada — ver §1.7 |

### 1.6 El libro de demanda

- **Visibilidad declarada**: $500.000M en pedidos Blackwell+Rubin hasta fin de 2026 (GTC oct-2025; IR matizó que Huang "se expresó mal" sobre el plazo) → elevada en GTC mar-2026: **"veo hasta 2027 al menos $1 billón (trillion)"** en pedidos.
- **Capex hiperescalador 2026**: ~$700-725.000M agregado (+77% interanual) — Amazon ~$200B, Microsoft ~$190B, Google $175-185B, Meta $125-145B ⚠️ el total varía según perímetro ($700B/$725B/$750B).
- **IA soberana**: real pero más lenta que los titulares — HUMAIN saudí (35.000 GB300 aprobados, primeros DC en T2-2026), Stargate UAE (primera fase 200MW en T3-2026), programa de gigafactorías de la UE (€20.000M, fase 1 desde T3-2026). Decenas de miles de millones, no centenares.
- **China**: prácticamente cero — sin envíos de Hopper en el T1 FY27 (vs $4.600M hace un año) pese a la aprobación del H200 con peaje del 25% al gobierno de EE.UU. (dic-2025); Pekín responde con una red nacional de cómputo de $295.000M con mandato de 80% de chips domésticos; Huawei duplica producción de Ascend. El marco del 15% de ago-2025 nunca se codificó ni produjo entregas relevantes (~$60M).

### 1.7 La red de financiación circular — cuantificada desde los filings

| Vínculo | Importe | Estado |
|---|---|---|
| NVIDIA→OpenAI | **$30.000M de equity** (ronda de $110.000M, feb-2026, $730B pre-money) — la LOI de "$100.000M/10GW" de sep-2025 **nunca se firmó ni desembolsó**; Huang: el $100B "probablemente ya no toca" porque OpenAI saldrá a bolsa | Ejecutado |
| NVIDIA→Anthropic | Hasta $10.000M (triángulo con Microsoft $5.000M; Anthropic compra $30.000M de Azure y ≥1GW de cómputo NVIDIA) | Confirmado en 10-Q, sujeto a cierres |
| NVIDIA→xAI | ~$2.000M vía SPV de $20.000M (compra GPUs y las alquila a xAI) | Ejecutado |
| NVIDIA→CoreWeave | Equity + **backstop de capacidad de $6.300M hasta 2032** (+$2.000M ene-2026) | Activo |
| NVIDIA→Nebius | $2.000M ⚠️ fuente única | Reportado |
| NVIDIA→Intel | $5.000M (~4% a $23,28) — con Intel +190% en 2026, la participación vale ~$23.000M y es el motor principal de las plusvalías cotizadas | Completado |
| **NVIDIA→Groq** | **~$20.000M** por activos + acqui-hire del CEO (ex-TPU de Google), estructurado como "licencia no exclusiva" — la mayor operación de su historia; leída como la compra del principal competidor de inferencia ("mantener viva la ficción de competencia" — analista en CNBC) | dic-2025; $3.957M aún pagaderos según 10-Q |

**Total**: cartera de ~$74.000M en libros + $27.000M comprometidos ≈ 40% de los ingresos TTM. **Réplicas alcistas con base factual**: la LOI gigante murió sin ejecutarse; lo desembolsado es una fracción del libro de pedidos; los clientes principales (hiperescaladores) financian su capex con flujo operativo propio; NVIDIA afirma <10% de ingresos de participadas (memo del IR, nov-2025). **El hecho incómodo que queda**: SoftBank vendió TODO su NVDA ($5.830M, oct-2025) precisamente para financiar a OpenAI — la circularidad del sistema no depende solo de NVIDIA.

### 1.8 Valoración actual (verificada con `financial_rigor.py`)

| Métrica | Valor | Nota |
|---|---|---|
| PER trailing (EPS ttm $6,53) | **32,31x** ✅ | Inflado por marcas de inversión |
| **PER ttm ex-marcas** (EPS ~$6,00 est.) | **~35,2x** ✅ | La cifra limpia (estimación propia, flag) |
| PER forward | 21,2x | El más bajo desde 2019 según agregadores |
| P/S ttm | 20,2x ✅ | El múltiplo que Burry señala en el sector |
| PEG | 0,47 ⚠️ fuente única, sensible a definición | |
| FCF yield ttm | 2,33% ✅ | FCF ttm $119.100M |
| Corto agregado | ~$50.000M nocionales — el mayor corto en dólares del S&P 500, pero solo ~1,2% del float (se usa como cobertura del "AI trade", no como apuesta direccional) | S3 Partners feb-2026 |

---

## 2. Análisis del negocio — Duan Yongping: "el negocio correcto"

### La empresa en una frase

NVIDIA es **el proveedor cuasi-monopolista de las fábricas de inteligencia artificial (85-90%+ en entrenamiento, 60-75% en inferencia), con un foso de software de 19 años (CUDA, 5 capas), un negocio de networking que casi se triplica cada año ($14.800M/trimestre), y márgenes del 75% — vendiendo a un puñado de clientes (3 = 54% de ingresos) que son a la vez sus mayores compradores, sus competidores en silicio y, en parte, sus participadas.**

### Lo que hace único al negocio — y lo que lo hace frágil

**Único**: márgenes del 70-75% con crecimiento del 65-85% a escala de $250.000M — no existe precedente en la historia empresarial. El atacante necesita replicar simultáneamente el chip, el interconector (NVLink/InfiniBand — Mellanox fue posiblemente la mejor M&A de la historia del sector), y 19 años de software. La cadencia anual (Blackwell→Blackwell Ultra→Rubin) obliga a los ASICs a disparar a un blanco móvil.

**Frágil**: es un negocio de **venta puntual de hardware** (no suscripción) a un oligopsonio de 4-5 compradores con presupuestos ilimitados para autoabastecerse, en un mercado cuyo tamaño depende del capex cycle de esos mismos compradores. El FY23 (ingresos planos, margen 56,9%) demuestra que cuando el ciclo gira, gira violentamente.

### Pregunta al estilo Duan Yongping: ¿qué tiene de bueno este negocio, en una frase?

*"Mientras la arquitectura de los modelos cambie cada trimestre, la flexibilidad de una GPU programable con CUDA vale más que la eficiencia de un ASIC — el negocio es bueno exactamente mientras la IA siga siendo un blanco móvil."* El corolario incómodo: si la arquitectura se estabiliza (como pasó con el minado de bitcoin), el ASIC gana y el margen se va.

---

## 3. Evaluación del foso económico — Buffett: "moat"

*(Base: análisis de 5 capas de `reports/英伟达/` abril-2026; aquí el resumen actualizado)*

| Tipo de foso | Evaluación | Actualización jul-2026 |
|---|---|---|
| **Ecosistema CUDA (5 capas, 19 años)** | ★★★★★ | Intacto; la amenaza "la IA escribe código y portar deja de ser caro" sigue siendo la más seria a largo plazo (la identificamos en abril) pero sin evidencia material aún |
| **Networking (Mellanox/NVLink/Spectrum-X)** | ★★★★★ y ensanchándose | +199% interanual, $14.800M/trimestre — el foso menos discutido y el que más crece; el cluster se compra entero, no chip a chip |
| **Cadencia anual + escala de I+D** | ★★★★☆ | Rubin en 2S-2026 según plan (3,5-5x vs Blackwell); TSMC no da abasto (CoWoS) — la capacidad reservada ES parte del foso |
| **Costes de cambio** | ★★★★☆ en frontera, ★★★☆☆ en inferencia commodity | La inferencia estable es portable (Midjourney a TPU: coste -65%) — la erosión de cuota en inferencia (90%→60-75%) es real y continuará |
| **Poder de fijación de precios** | ★★★★☆ | Margen bruto de vuelta al 74,9% tras el susto de Blackwell — la compresión hacia los 60s que proyectamos en abril NO ha ocurrido (aún) |

### Tendencia del foso: **se ensancha en networking y frontera, se estrecha en inferencia commodity — y NVIDIA compra lo que no puede defender (Groq, ~$20.000M)**

### Pregunta al estilo Buffett: ¿seguirá este foso existiendo dentro de 10 años? ¿Qué podría destruirlo?

Tres destructores plausibles, por orden de probabilidad: (1) **estabilización arquitectónica** — si los transformers/razonadores se congelan, el ASIC captura la inferencia masiva y NVIDIA queda con el nicho de frontera; (2) **la IA erosionando CUDA** — si los agentes de código hacen trivial portar kernels, la capa 2-4 del foso se adelgaza (nuestra tesis de abril, sin materializarse aún); (3) **desintegración vertical de los clientes** — los 4 grandes ya diseñan chips; les falta el networking y el software, exactamente lo que NVIDIA refuerza (NVLink Fusion abre el interconector para capturar valor incluso en clusters con silicio ajeno — Trainium4 lo adoptará).

---

## 4. Pensamiento inverso y lista de riesgos — Munger: "dale la vuelta"

### Rutas de fracaso

| Ruta de fracaso | Probabilidad (estimación) | Impacto |
|---|---|---|
| **"Air pocket" de pedidos 2027**: el FCF agregado de las big tech roza cero este verano (OCF +23%/año vs capex +70%/año, cruce ~T3-2026); si los consejos frenan, los $119.000M de compromisos de compra de NVIDIA se convierten en inventario y cargos — el mecanismo exacto de 2018 y 2022, a escala 20x | Media | **Muy alto** — la historia sectorial dice -40/-60% independientemente del múltiplo de partida |
| Concentración: 3 clientes = 54% y subiendo; una sola decisión de un solo consejo mueve >$40.000M/año | Estructural | Alto |
| La brecha capex/ingresos-finales de IA (~$725.000M de capex vs ~$50-60.000M de ingresos finales de IA del sector) supera ya la del ciclo telecom de 2001 (46% vs 32% — Forbes jun-2026); la matemática de alguien tiene que romperse | Media (en 2-3 años) | Alto |
| Cuota de inferencia sigue cayendo (60-75% → 45-55% en 2030 según nuestra proyección de abril) mientras la inferencia se convierte en 2/3+ del mercado | Alta (direccional) | Medio — si el pastel crece +77%/año, la pérdida de cuota es absorbible; el problema es cuando el pastel desacelere |
| Energía: 40% de los DC de IA limitados por potencia en 2027 (Gartner); colas de interconexión de 4-7 años — pedidos aplazados | Media | Medio (doble filo: también alarga el ciclo) |
| Desenlace regulatorio China en ambas direcciones (venta con peaje vs exclusión total) + red doméstica china de $295.000M | Ya materializado en ~cero | Bajo incremental (ya está fuera del precio y de la guía) |
| Reflexividad pasiva: 7,3% del S&P 500 — sin comprador marginal sensible a precio si el flujo indexado se invierte | Baja-media | Alto transitorio |

### La analogía Cisco — tratada con rigor, no como eslogan

Burry: *"No estoy afirmando que Nvidia sea Enron. Es claramente Cisco."* Los hechos a favor de la analogía: proveedor de picos y palas del ciclo de infraestructura, márgenes récord que invitan a la entrada, financiación de clientes (vendor financing), y el dato demoledor de que **Cisco ganó más dinero en 2005 que en 2000 y su múltiplo jamás se recuperó**. Los hechos en contra: Cisco cotizaba a >100x beneficios de pico con crecimiento del ~50%; NVIDIA cotiza a **21x forward / 32x trailing con crecimiento del 85%** — el múltiplo ya se comprimió (de 35-50x forward en 2023-25 al mínimo desde 2019) mientras el beneficio se duplicaba. La analogía correcta no es sobre la empresa sino sobre el ciclo: **si hay air pocket, el múltiplo de partida no te salva; pero a 21x forward, la pérdida permanente exige que el beneficio caiga Y no se recupere — el escenario Cisco requiere que la IA sea como la fibra de 2000 (sobre-construida 10 años por delante de la demanda), no como la nube de 2015**.

### Autochequeo de sesgos

- **El PER de 32x es mentira en ambas direcciones**: inflado por marcas de inversión (~35x limpio) y deflactado por un crecimiento del 85% (21x forward). Elegir el número que confirma la tesis propia es el error básico de este caso.
- **Sesgo de supervivencia del backlog**: "$1 billón de pedidos hasta 2027" son pedidos, no ingresos — los pedidos se cancelan o aplazan en cada ciclo; los $119.000M de compromisos de NVIDIA con SUS proveedores, en cambio, son bastante firmes. La asimetría contractual es desfavorable.
- **La evidencia de los dos bandos no se anula**: NVIDIA puede batir estimaciones cuatro trimestres más MIENTRAS sus clientes se acercan al muro de FCF. Ambas cosas están pasando a la vez desde enero.

### Pregunta al estilo Munger: ¿dónde es más probable que me equivoque? ¿Por qué la gente inteligente no compra (o está corta)?

SoftBank vendió todo, Thiel salió, Burry está corto desde $198 (jun-2026), y $50.000M nocionales de cortos usan NVDA como cobertura del AI-trade completo. Su argumento común no es que NVIDIA sea mala — es que **es el instrumento de máxima beta al único riesgo macro que importa (el capex cycle de 4 empresas)**. Mi error más probable como analista: dar peso al múltiplo "barato" (21x forward) en un negocio donde el "E" puede caer 40% en dos trimestres si el ciclo gira — en las cíclicas profundas, el PER bajo en el pico es la trampa clásica. El error simétrico: confundir ciclicidad con burbuja y perderse un negocio que compone al 68% anual con el foso de software más profundo del hardware mundial.

---

## 5. Evaluación de la dirección — Duan Yongping "la persona correcta" + Buffett "integridad"

### Jensen Huang — 33 años como fundador-CEO, el historial estratégico vivo más largo del sector

| Fecha | Decisión | Resultado | Valoración |
|---|---|---|---|
| 2006 | CUDA — gastar en un ecosistema de software para GPUs cuando Wall Street lo consideraba despilfarro | El foso que sostiene todo | ★★★★★ |
| 2016 | Pivote al data center antes de que existiera el mercado | 88-92% de los ingresos hoy | ★★★★★ |
| 2019 | **Mellanox, $6.900M** | Networking factura hoy $14.800M POR TRIMESTRE (+199%) — cabe defenderla como la mejor adquisición de la historia del sector | ★★★★★ |
| 2024→ | Cadencia anual de arquitecturas | Rubin en plazo; los ASICs disparan a blanco móvil | ★★★★☆ |
| 2025-26 | Red de inversiones en clientes ($74.000M) + compra de Groq (~$20.000M) + gestión del colapso de China | Financieramente brillante (Intel +190%), estratégicamente defensivo, ópticamente costoso (munición para la tesis de circularidad) | ★★★☆☆ — genuinamente dual |

**Los contrapesos**: (1) **riesgo de hombre-clave máximo del S&P 500** — 63 años, ~60 reportes directos, sin plan de sucesión divulgado ("hasta el último día de mi vida"), y una organización diseñada alrededor de su ancho de banda personal; (2) ventas por 10b5-1 constantes pero <1% de su posición anual (mantiene ~3,6%, ~$184.000M — la mayor alineación absoluta del mercado); (3) su papel público 2025-26 (lobby pro-exportación a China, desdén hacia los "doomers", "$1T de visibilidad") lo convierte en el portavoz del ciclo — si el ciclo decepciona, la credibilidad del management cae con él; (4) cultura excepcional: mediana salarial $301.233, ~27.000 empleados millonarios que no se van.

### Pregunta al estilo Duan Yongping: si el CEO se jubilara mañana, ¿la empresa mantendría su competitividad?

**Es la pregunta sin buena respuesta de este caso.** Ninguna empresa de las seis analizadas depende tanto de una persona: arquitectura organizativa plana diseñada para él, sin número dos, con las relaciones críticas (TSMC, clientes soberanos, Washington) personalizadas en Jensen. La maquinaria de ingeniería sobreviviría; la velocidad de decisión que sostiene la cadencia anual, probablemente no al mismo nivel.

---

## 6. Tendencias sectoriales y civilizatorias — Li Lu

### ¿Está el sector en un cambio de paradigma civilizatorio?

**Sí — y NVIDIA es hoy el nodo físico central del paradigma**: el ~7,3% del S&P 500, el proveedor del 80-85% del cómputo que entrena y sirve la IA mundial, y el cuello de botella (junto a TSMC y la energía) de toda la transición.

- **La demanda de tokens es la variable civilizatoria**: coste de inferencia -95% en dos años con demanda súper-elástica (elasticidad ~1,42); los modelos razonadores queman 10-50x tokens; Goldman proyecta consumo 24x a 2030. Si Jevons se cumple, la deflación del cómputo EXPANDE el mercado — es la mejor carta estructural de NVIDIA (y, nótese, el título del post de Burry del 8-jul es precisamente un ataque a esa muleta).
- **El contrapunto histórico de Li Lu**: en toda revolución de infraestructura (ferrocarril 1870s, telecom 2000), la infraestructura se sobre-construyó y el capital de la fase eufórica se destruyó, AUNQUE la tecnología cambiara la civilización. La brecha actual capex/ingresos-finales (~46%) ya excede la de 2001 (32%). La revolución puede ser real Y el ciclo de capital puede romperse igualmente — no son incompatibles; es lo que pasó exactamente en 1873 y en 2001.

### Pregunta al estilo Li Lu: visto desde dentro de 20 años, ¿es esta empresa el "Standard Oil de esta era" o el "3Com de un día"?

NVIDIA es hoy lo más parecido al **Intel de 1995** que existe: el estándar de facto de la era de cómputo naciente, con foso de arquitectura+software, en el pico de su poder relativo. La lección de Intel es exacta: siguió siendo enormemente rentable 20 años más, PERO el pico de cuota y margen fue ese, los paradigmas siguientes (móvil, IA) los perdió, y el accionista que compró en el pico de 2000 esperó 17 años. La respuesta honesta: **casi seguro no es 3Com; probablemente tampoco vuelve a ser el 90% de cuota con 75% de margen en 2036** — el rango de resultados a 10 años es el más ancho de las seis empresas analizadas.

---

## 7. Valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### Métricas actuales (verificadas, ver §1.8 y Anexo)

- PER trailing 32,3x (con marcas) / ~35,2x limpio / **21,2x forward** · P/S 20,2x · FCF yield 2,33% · PEG ~0,5 ⚠️
- El de-rating ya ocurrió: de 35-50x forward (2023-25) a 21x — **todo el crecimiento del BPA de los últimos 12 meses se lo comió la compresión de múltiplo** (acción +12% YTD con beneficios +85%)

### DCF inverso (cualitativo)

A 21x forward con guía de +95% en el trimestre entrante, el mercado descuenta: **desaceleración fuerte e inminente** (hacia crecimiento del 20-30% en FY28) sin colapso. No descuenta ni la continuación del boom (upside) ni un air pocket (downside). Es un precio de "aterrizaje suave del capex" — razonable como caso central, frágil ante cualquiera de los dos extremos.

### Valoración a tres escenarios (verificada con `financial_rigor.py`; base EPS ttm ex-marcas ~$6,00)

```
情景                年增速     目标PE      目标EPS       目标股价      涨跌幅
乐观 (Bull)         35%      26x      14.76     383.8   +81.9%
中性 (Base)         25%      22x      11.72     257.8   +22.2%
悲观 (Bear)          5%      14x       6.95      97.2   -53.9%
```

| Escenario | Crecimiento anual EPS | PER objetivo | Precio objetivo | Retorno |
|---|---|---|---|---|
| **Alcista** | +35% (Jevons se cumple, Rubin ejecuta, tokens 24x, sin air pocket) | 26x | **$384** | **+81,9%** |
| **Base** | +25% (desaceleración ordenada del capex, cuota de inferencia sigue erosionándose, networking compensa) | 22x | **$258** | **+22,2%** |
| **Bajista** | +5% (air pocket 2027 al estilo 2018/2022: el FCF de los clientes fuerza pausa de pedidos; los $119.000M de compromisos se convierten en cargos) | 14x | **$97** | **-53,9%** |

**La asimetría de NVIDIA es la más extrema de las seis empresas analizadas** (+82%/-54%): el mejor escenario alcista y el peor bajista de la serie. Es matemáticamente coherente con lo que es: la cíclica más profunda con el foso más fuerte. El PT del consenso ($302) está entre nuestro base y nuestro bull.

### Pregunta al estilo Duan Yongping: si la bolsa cerrara mañana durante 5 años, ¿estaría dispuesto a mantener a este precio?

**Solo con un tamaño de posición que tolere un -54% intermedio sin vender.** A diferencia de Microsoft (donde el riesgo a 5 años es de rendimiento mediocre), aquí el escenario bajista es una caída profunda REAL de beneficios — la historia del propio NVIDIA (FY23: EPS -66%) lo demuestra. La respuesta de Duan Yongping sería probablemente: negocio extraordinario, precio razonable para su crecimiento, **pero la incertidumbre del ciclo excede mi círculo de competencia para una posición grande** — y de hecho el material de `reports/英伟达/段永平雪球发言-NVDA相关.md` documenta exactamente esa postura de prudencia suya.

---

## 8. Memorándum de decisión final

| Dimensión | Conclusión | Nivel de confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | Extraordinaria y cíclica a la vez: monopolio de facto en frontera con márgenes del 75%, sobre una base de clientes oligopsónica (3 = 54%) que se autoabastece progresivamente | Alta |
| Foso económico (Buffett) | CUDA (5 capas) + networking (+199%) + cadencia anual; se estrecha en inferencia commodity; NVIDIA compra lo que no puede defender (Groq) | Alta |
| Dirección (Duan Yongping + Buffett) | Jensen: el mejor historial estratégico vivo del hardware; riesgo de hombre-clave máximo del S&P 500, sin sucesión | Alta en el historial |
| Mayor riesgo (Munger) | Air pocket 2027: el cruce OCF/capex de los clientes (~T3-2026) contra $119.000M de compromisos de compra propios; la historia sectorial produce -40/-60% en esos episodios | Alta en el mecanismo, incierta en el timing |
| Tendencia civilizatoria (Li Lu) | Nodo físico central del paradigma; pero "revolución real + ciclo de capital roto" han coexistido en 1873 y 2001 — la brecha capex/ingresos finales ya excede la de 2001 | Alta |
| Valoración (Buffett + Duan Yongping) | 21x forward (mínimo desde 2019) tras un año de de-rating; escenarios $97/$258/$384 — la asimetría más extrema de la serie | Alta en el cálculo |

### Tabla de decisión final

| Estrategia | Recomendación |
|---|---|
| **Inversor sin posición** | **Posición pequeña y dimensionada al riesgo (≤1/3 de una posición normal), o abstenerse si no se tolera un -50% intermedio.** El precio es razonable (21x forward) y el negocio es el mejor de su categoría, pero esta es la única empresa de la serie donde el escenario bajista implica caída profunda de beneficios, no solo de múltiplo. La posición correcta se dimensiona por el bajista (-54%), no por el alcista. Si ya se tiene exposición indirecta vía índices (7,3% del S&P) o vía Google/Amazon/Microsoft, contabilizarla antes de añadir. |
| **Inversor con posición existente** | **Mantener con disciplina de tamaño**: si NVDA ha crecido por encima del 10-15% de la cartera por revalorización, recortar hasta el tamaño tolerable no es market timing — es gestión de riesgo. Vigilar los dos indicadores de ciclo del §1.5 cada trimestre. |
| **Señal de venta** | Primera cancelación/aplazamiento material de pedidos de un hiperescalador; inventario >$35.000M con provisiones subiendo; guías de capex 2027 de los 4 grandes planas o negativas; margen bruto <70% dos trimestres seguidos; salida o incapacidad de Jensen. |
| **Señal de compra/refuerzo** | Un air pocket tipo 2018/2022 (caída >40% con foso intacto) sería históricamente LA oportunidad — el patrón NVIDIA post-cripto-invierno (comprada a $11 en oct-2022, split-ajustado); guías de capex 2027 de los clientes creciendo >30% con FCF positivo (desmontaría el muro de depreciación); evidencia de que Jevons domina (tokens creciendo más rápido que la deflación de coste). |

### Comentarios simulados de los cuatro maestros

> "Solo cuando baja la marea se sabe quién nadaba desnudo." — Warren Buffett
>
> *NVIDIA no nada desnuda — nada con el mejor traje del océano. Pero cobra en función de cuánta agua haya, y la marea (el capex de cuatro empresas) está en el máximo histórico de todos los tiempos. Yo no compro negocios donde no puedo estimar la marea de 2028.*

> "No estoy afirmando que Nvidia sea Enron. Es claramente Cisco." — Michael Burry (cita real, nov-2025, incluida por su valor documental)
>
> *Y la réplica de Munger sería: Cisco a 100x era una apuesta sobre la fe; NVIDIA a 21x forward es una apuesta sobre el ciclo. Confundir las dos es tan peligroso como ignorar ambas. Invertir el problema: ¿qué tendría que pasar para que el beneficio de 2029 sea MENOR que el de 2026? Solo el air pocket. Dimensiona para él.*

> "本分" — Solo hacer lo correcto, y hacerlo bien. — Duan Yongping
>
> *He dicho públicamente que NVIDIA está fuera de mi círculo de competencia — no porque el negocio sea malo, sino porque no sé estimar dónde estará la demanda en cinco años. Admitir eso y quedarse fuera (o pequeño) también es 本分. El que la compre, que sepa exactamente qué pregunta está respondiendo: no "¿es buena empresa?" (lo es), sino "¿sé algo del capex de 2028 que el mercado no sepa?"*

> "Las revoluciones tecnológicas reales y las burbujas de capital no son excluyentes — casi siempre llegan juntas." — Li Lu (síntesis de su marco)
>
> *El ferrocarril transformó la civilización Y quebró a una generación de inversores en 1873. La IA hará lo primero; si hace lo segundo, el superviviente estructural con el foso de software será quien compre los activos del pánico — como hizo NVIDIA misma comprando Groq. La pregunta del inversor no es si la IA es real; es si su estómago y su tamaño de posición sobreviven al invierno intermedio, si llega.*

---

## 9. Confianza del análisis de IA vs. certeza de la inversión

**Confianza del análisis de IA: Alta en los datos** — filings leídos en origen (10-K, 10-Q, comentarios de la CFO), verificaciones internas cruzadas (TTM por suma de trimestres, desviación 0,02%), y contraste explícito con nuestro trabajo de abril (dos proyecciones confirmadas, una refutada, dos actualizadas). **La calidad de datos de este informe es la mejor de la serie de seis.**

**Certeza de la inversión: Media-baja — y es irreducible por diseño.** No por falta de información (sobra), sino porque la variable que decide el resultado — el capex de 4 empresas en 2027-28 — no la conocen ni esas propias empresas hoy. Este es el caso límite que separa "confianza del análisis" de "certeza de inversión": se puede saber TODO sobre NVIDIA y aun así no saber lo único que importa. La respuesta racional no es predecir el ciclo sino dimensionar la posición para sobrevivir a ambos desenlaces.

**Conclusiones basadas en datos sólidos:** toda la sección 1 (filings primarios); la concentración de clientes (54%) y su trayectoria; los indicadores de ciclo (inventario, compromisos $119.000M); la red de inversiones cuantificada desde el balance; el peso de las marcas de inversión en el GAAP (27,3% del T1); la muerte de la LOI de $100.000M; China ~cero.

**Conclusiones basadas en inferencia o fuente única (⚠️):** EPS ttm ex-marcas (~$6,00, estimación propia); PEG 0,47; PT del consenso; cuotas de inferencia (60-75%, estimaciones de terceros con dispersión amplia); Nebius $2.000M; el límite de 75.000 unidades H200; si Burry cerró sus puts originales; retornos precisos a 3/5 años; estado del B30A.

---

## Anexo: Registro de verificación cruzada de datos clave

### A.1 Verificación de capitalización bursátil

```
============================================================
市值验算 (Market Cap Verification)
============================================================
  股价 (Price):       210.96 USD
  总股本 (Shares):    24.22B
  计算市值:           5.11T USD
  报告市值:           5.11T USD
  偏差:               0.01%

  ✅ 验证通过, 偏差仅 0.01%
```

### A.2 Cross-validaciones FY2026 y TTM

```
Ingresos FY2026:
  ✅ NVIDIA_10K          : 215,938.00 M USD  (偏差 0.00%)
  ✅ stockanalysis       : 215,938.00 M USD  (偏差 0.00%)

Beneficio neto FY2026:
  ✅ NVIDIA_10K          : 120,067.00 M USD  (偏差 0.00%)
  ✅ stockanalysis       : 120,067.00 M USD  (偏差 0.00%)

Ingresos TTM (verificación interna por suma):
  ✅ suma 46.7+57.0+68.1+81.6 = 253.40 B  vs stockanalysis 253.50 B  (偏差 0.02%)
```

### A.3 Verificación de métricas de valoración y escenarios

```
PE trailing (EPS ttm 6.53):      210.96 / 6.53 = 32.31x
PE ttm ex-marcas (est. 6.00):    210.96 / 6.00 = 35.16x
Dividendo: 1.00 / 210.96 = 0.47%
P/S ttm: 5.11T / 253.5B = 20.16x
FCF yield: 119.1B / 5.11T = 2.33%
Peso marcas equity en GAAP T1 FY27: 15.9 / 58.3 = 27.3%
Concentración top-3: 21+17+16 = 54%
Caída desde máximo 52 sem: (210.96/236.54-1) = -10.81%
CAGR ingresos FY22-FY26: (215938/26914)^(1/4)-1 = 68.30%

三情景估值模型 — 当前股价 210.96, EPS 6.00 (ttm ex-marcas est.), 3年:
  乐观 (Bull)  35% / 26x → 383.8  (+81.9%)
  中性 (Base)  25% / 22x → 257.8  (+22.2%)
  悲观 (Bear)   5% / 14x →  97.2  (-53.9%)
  ✅ 所有计算使用精确十进制, 结果可审计复现
```

### A.4 Gaps de datos y flags (transparencia)

1. macrotrends inaccesible (402) — stockanalysis como secundaria; coincidió al dólar con 10-K/10-Q en todas las cifras contrastadas.
2. EPS ttm ex-marcas de inversión (~$6,00): estimación propia restando el efecto después de impuestos del T1 FY27; las marcas de otros trimestres no están desglosadas con la misma precisión — el PER limpio exacto requiere el detalle del 10-Q.
3. PEG 0,47 y consenso de analistas (61, PT $301,62): fuente única (stockanalysis).
4. Cuotas de mercado de aceleradores/inferencia: estimaciones de terceros (Silicon Analysts, TrendForce) con dispersión amplia — todas etiquetadas como estimación.
5. Cap de 75.000 unidades H200 para China: fuente única débil (tech-insider) — no usar sin verificar.
6. Nebius $2.000M: fuente única (io-fund).
7. Capex hiperescalador 2026: $700B/$725B/$750B según perímetro de la fuente — se usa "~$700-725.000M" con flag.
8. Si Burry cerró los puts originales de nov-2025: no público (se desregistró de la SEC); lo documentado es su nuevo corto a $198,09 (30-jun-2026, su Substack).
9. Retornos precisos a 3/5 años: no obtenidos de fuente citable — omitidos del cuerpo del informe.
10. Estado de la licencia B30A para China: sin resolución encontrada a mediados de 2026.
11. Conflictos menores documentados: máximo 52 sem $236,54 (intradía) vs $235,47 (cierre récord) — ambos correctos; China % (base facturación vs sede del cliente) — se reportan ambas bases.

---

*Informe elaborado siguiendo el marco de los 4 maestros (Buffett, Munger, Duan Yongping, Li Lu). Todas las cifras en dólares estadounidenses ($), en M (millones) o B/billones americanos (trillions) señalados explícitamente. Años fiscales de NVIDIA terminan a finales de enero y se etiquetan como FY. Fecha de precios: 10 de julio de 2026. Próximo catalizador: resultados T2 FY2027 el 26-ago-2026; antes, las publicaciones de resultados de sus 4 grandes clientes (22-30 de julio) son señales indirectas de primer orden.*
