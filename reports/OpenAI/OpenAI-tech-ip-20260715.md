# OpenAI — Capacidad Técnica, Propiedad Intelectual y Foso Tecnológico

> Rol: tech-ip-analyst (equipo de investigación OpenAI) | Fecha: 15 de julio de 2026
> Empresa privada (OpenAI Group PBC) — este informe cubre exclusivamente la dimensión técnica/IP, no la financiera (ver `reports/OpenAI/OpenAI-investment-research-20260714.md` para el análisis financiero completo con el marco de los 4 maestros).

---

## Nota metodológica breve

Este informe se apoya en gran medida en cobertura periodística especializada, blogs técnicos de terceros y bases de datos de patentes de acceso público — **no en documentación técnica auditada de OpenAI** (la compañía no publica arquitectura detallada de sus modelos desde GPT-3). Cuando dos fuentes no reconcilian una cifra (ej. plantilla de empleados), se presentan ambas explícitamente en vez de promediar o elegir la más citada. Confianza marcada 🟢 (alta, múltiples fuentes independientes convergentes) / 🟡 (media, fuente única o estimación de terceros) / 🔴 (baja, dato contradictorio o no verificable).

---

## 1. Pila tecnológica y arquitectura

### 1.1 Evolución de generaciones de modelos

| Modelo | Lanzamiento | Salto de capacidad reportado | Fuente | Confianza |
|---|---|---|---|---|
| GPT-3 | jun-2020 | 175B parámetros; primer LLM de uso general a gran escala | OpenAI | 🟢 |
| InstructGPT / RLHF | ene-2022 | Alineación mediante *Reinforcement Learning from Human Feedback* — técnica que OpenAI populariza masivamente (no inventó el concepto de RLHF, pero lo llevó a producto por primera vez a escala) | Paper OpenAI 2022 | 🟢 |
| GPT-3.5 / ChatGPT | nov-2022 | Producto de consumo; lanzamiento más rápido en llegar a 100M usuarios de la historia hasta ese momento | OpenAI | 🟢 |
| GPT-4 | mar-2023 | Multimodal (texto+imagen en entrada), salto grande en razonamiento/exámenes estandarizados | OpenAI | 🟢 |
| GPT-4o | may-2024 | "Omni": voz, visión y texto nativos en un solo modelo, latencia reducida | OpenAI | 🟢 |
| o1 | sep-2024 | Primer modelo de "razonamiento" con cómputo en tiempo de inferencia (cadena de pensamiento extendida antes de responder) | OpenAI | 🟢 |
| o3 / o4-mini | abr-2025 | Nuevo SOTA en Codeforces, SWE-bench, MMMU en su momento de lanzamiento | OpenAI (Introducing o3 and o4-mini) | 🟢 |
| GPT-5 | ago-2025 (est.) | Fusión de "modo instantáneo" y "modo razonamiento" en un único sistema con enrutador automático | OpenAI / prensa especializada | 🟡 |
| GPT-5.1 → 5.6 | nov-2025 → jul-2026 | Cadencia de iteración de ~4-8 semanas; GPT-5.6 "Sol" lanzado 9-jul-2026 como el modelo más capaz vigente | Help Center OpenAI / TechCrunch | 🟢 |
| Retiro o1/o3/GPT-4 de ChatGPT | 13-feb-2026 (anuncio) / o3 retirado de ChatGPT 26-ago-2026 tras periodo de gracia de 90 días | Toda la familia activa de ChatGPT pasa a ser GPT-5.x; acceso vía API a modelos retirados se mantiene para integraciones existentes | Help Center OpenAI | 🟢 |
| gpt-oss-120b / 20b | 2025 | Modelos de razonamiento de **pesos abiertos**, pensados para que terceros ejecuten y personalicen en infraestructura propia — cambio de estrategia notable frente al histórico "closed weights" de OpenAI | OpenAI | 🟢 |

**Lectura**: la cadencia de lanzamiento se ha acelerado desde ~1 salto mayor/año (2020-2023) a una iteración menor cada 4-8 semanas dentro de la familia GPT-5 (nov-2025 a jul-2026). Esto sugiere que el "salto de generación" discreto (GPT-3→4) se ha sustituido por mejora continua incremental — un patrón más parecido a software-as-a-service que a lanzamiento de producto de hardware, y consistente con lo observado en Anthropic (Claude Opus 4.x/Fable) y Google (Gemini 3.x) en el mismo periodo.

### 1.2 Modelos de razonamiento y cómputo en tiempo de inferencia

o1 (sep-2024) introdujo el paradigma de "pensar más antes de responder" (test-time compute / chain-of-thought extendida), escalando capacidad no solo vía tamaño de modelo/datos de entrenamiento sino vía cómputo adicional gastado en el momento de la consulta — un tercer eje de escalado ("inference-time scaling") que Google y Anthropic replicaron en sus propias líneas de "thinking models" en los meses siguientes. Con GPT-5, OpenAI fusionó este modo de razonamiento con el modelo "instantáneo" en un único sistema con enrutador automático (Instant ↔ Thinking) que decide cuánto cómputo dedicar según la complejidad detectada de la consulta — arquitectónicamente distinto de tener dos modelos separados que el usuario elige manualmente (como era el caso con GPT-4o vs o1). 🟢 (múltiples fuentes convergen en esta descripción de alto nivel; los detalles internos del router y del entrenamiento de razonamiento no son públicos — 🔴 en el detalle fino).

### 1.3 Infraestructura de entrenamiento y cómputo

| Proveedor/Proyecto | Compromiso | Estado a jul-2026 | Fuente | Confianza |
|---|---|---|---|---|
| Microsoft Azure | 250.000 M$ incremental | En curso, 2025-2030 | CNBC/prensa financiera | 🟡 |
| Oracle (Stargate) | 300.000 M$ | 5 años, 4,5 GW | DCD/Openai.com | 🟢 |
| Stargate (total, SoftBank/Oracle/MGX/Crusoe) | Hasta 500.000 M$ | Objetivo de 10 GW ya **superado** a inicios de 2026 (+3GW en los últimos 90 días previos a feb-2026); sitio insignia Abilene (TX) 1,2 GW, parcialmente operativo desde finales de 2025, con GPUs GB200 de Nvidia entregadas jun-2025; otros sitios: Shackelford County (TX), Doña Ana County (NM), Lordstown (OH), Wisconsin | Epoch AI / DCD / OpenAI | 🟢 |
| Nvidia | Hasta 100.000 M$ en LOI original, reducido a ~30.000 M$ de equity (feb-2026) | GPUs (Blackwell/GB200) siguen siendo la base de cómputo dominante | Prensa financiera | 🟡 |
| AMD | Warrant por hasta 160M acciones (~10% AMD) a cambio de 6 GW de GPUs | Suministro desde 2ª mitad de 2026 | Prensa financiera | 🟡 |
| CoreWeave | 22.400 M$ acumulado | Proveedor de cómputo adicional, múltiples contratos | Prensa financiera | 🟡 |
| Chip propio "Titan" | Diseño con Broadcom (ASIC), fabricación TSMC N3; pedido &gt;10.000 M$; memoria HBM4 exclusiva de Samsung | Equipo interno liderado por Richard Ho, duplicado a ~40 personas; producción en masa prevista 2ª mitad de 2026; Titan 2 (proceso A16) ya en planificación; **uso exclusivamente interno, no se venderá comercialmente** | TrendForce / AnySilicon / Yahoo Finance | 🟡 |

**Lectura clave**: a diferencia de Google (TPU propia desde 2015) y de forma similar a Anthropic (que también depende de Nvidia/TPU vía Google y Amazon Trainium), OpenAI **no controla su cadena de suministro de cómputo** — depende de Microsoft, Oracle, Nvidia, AMD y CoreWeave simultáneamente. El proyecto Titan es el primer intento serio de mitigar esa dependencia, pero está en fase temprana (mass production H2-2026) y su primera generación está destinada solo a uso interno, no a generar ingresos ni ventaja de escala frente a terceros a corto plazo.

---

## 2. Patentes

### 2.1 Portafolio de OpenAI

| Métrica | Valor | Fuente/Fecha | Confianza |
|---|---|---|---|
| Total de patentes globales | 110 | Patent Detectives / GreyB, abr-2026 | 🟡 |
| Familias de patentes únicas | 58 | Patent Detectives, abr-2026 | 🟡 |
| Patentes concedidas | 42 | Patent Detectives, abr-2026 | 🟡 |
| % activas | 93% | Patent Detectives, abr-2026 | 🟡 |
| Solicitudes en EE.UU. / EPO | 96 / 1 | Patent Detectives, abr-2026 | 🟡 |
| Solicitudes por año — histórico | ≤7/año hasta 2022 → 26 en 2023 → 42 en 2024 | Patent Detectives, abr-2026 | 🟡 |

**Áreas de concentración**: procesamiento de lenguaje natural (NLP), aprendizaje por refuerzo (RL), procesamiento multimodal, generación de código (relacionada con Codex), generación/edición de texto e imagen. Análisis independientes (GreyB, Parola Analytics) señalan una expansión reciente hacia **hardware y sistemas embebidos** — señal que, leída junto con los reportes de un dispositivo de consumo de IA codiseñado con el ex Chief Design Officer de Apple Jony Ive (previsto 2026), sugiere una estrategia de construcción de IP orientada a un futuro pivote hacia hardware, no solo software. 🟡 (interpretación de terceros, no confirmada por OpenAI).

### 2.2 Comparación con la industria

| Empresa | Patentes globales (aprox.) | Estrategia inferida | Fuente/Fecha | Confianza |
|---|---|---|---|---|
| OpenAI | 110 (58 familias) | Baja intensidad de patentamiento, acelerando desde 2023; preferencia histórica por secreto comercial + publicación selectiva | Patent Detectives, abr-2026 | 🟡 |
| Anthropic | ~39 (investigación previa del repositorio) | Estrategia de secreto comercial aún más marcada que OpenAI | Investigación previa ai-berkshire (ver memoria de proyecto) | 🟡 |
| Google | &gt;2.000 solicitudes IA/año (USPTO+EPO) | Patentamiento defensivo masivo, cartera histórica pre-IA generativa | WIPO / Patent Detectives | 🟢 |
| Microsoft | ~1.500 solicitudes IA/año | Patentamiento defensivo masivo | WIPO / Patent Detectives | 🟢 |

**Lectura**: tanto OpenAI como Anthropic operan con carteras de patentes **órdenes de magnitud menores** que Google o Microsoft — consistente con una industria donde la ventaja competitiva se protege mediante secreto comercial (pesos de modelo no publicados, detalles de entrenamiento no divulgados) y velocidad de iteración, no mediante litigio de patentes. La aceleración de OpenAI (7→26→42 solicitudes/año) sugiere una defensa reactiva más que una estrategia de "fortaleza de patentes" al estilo IBM/Qualcomm — el volumen absoluto sigue siendo bajo para el tamaño de la compañía (852.000 M$ de valoración, ver informe financiero). No se encontró evidencia de litigio activo de OpenAI usando su cartera de patentes como arma ofensiva contra competidores a jul-2026.

---

## 3. Capacidad de I+D

### 3.1 Publicaciones de investigación

No fue posible obtener un conteo fiable y actualizado (2026) de papers de OpenAI en arXiv/openai.com/research específicamente — las búsquedas devuelven cifras agregadas de toda la industria (170.927 papers de IA en arXiv entre ene-2025 y jun-2026, todas las categorías de ML) o cifras desactualizadas de bases como Scopus (164 papers, sin fecha clara de corte). 🔴 **Dato insuficiente** — no se incluye una cifra puntual para evitar falsa precisión. Cualitativamente, OpenAI continúa publicando papers técnicos asociados a cada lanzamiento mayor de modelo (o1, o3, GPT-5) pero, a diferencia de Google DeepMind, publica menos detalle arquitectónico que en la era GPT-2/GPT-3 — patrón consistente con una industria que se ha movido hacia mayor secretismo competitivo desde 2023.

### 3.2 Tamaño del equipo y comparación

| Empresa | Empleados totales (aprox.) | Fuente/Fecha | Confianza |
|---|---|---|---|
| OpenAI | 7.850 (dic-2025, Reveliolabs) **vs.** 4.500 (mar-2026, otra fuente) — **discrepancia sin reconciliar** | Reveliolabs / SQ Magazine | 🔴 |
| OpenAI (plan) | Objetivo declarado de duplicar a ~8.000 durante 2026 | Financial Times / Engadget | 🟡 |
| Anthropic | ~5.000-5.189 | SaaStr / Tracxn / investigación previa del repositorio | 🟡 |
| Google DeepMind | ~5.600 | Prensa especializada, 2026 | 🟡 |

**Nota de discrepancia explícita**: una fuente cita "7.850 empleados a dic-2025, un 54,9% de crecimiento interanual desde 4.467 a fin de 2024" — pero el cálculo aritmético de esas dos cifras (7.850/4.467) da **75,7%**, no 54,9%. La fuente es internamente inconsistente; se señala sin intentar reconciliar. Otra fuente (mar-2026) cita 4.500 empleados totales, muy por debajo de la cifra de dic-2025 de otra fuente — no hay forma de saber cuál, si alguna, es correcta sin acceso a datos internos auditados de RRHH.

Con la salvedad anterior: si se toma la cifra más alta (7.850) y la estimación de que investigación (research) representa ~25% del headcount total (ingeniería ~56%), OpenAI tendría **~1.100-2.000 investigadores**, frente a ~5.000 empleados totales de Anthropic (composición interna de Anthropic no desglosada en las fuentes disponibles). En términos de headcount total, OpenAI sería el laboratorio independiente más grande, aproximadamente el doble de Anthropic — pero la comparación de "investigadores puros" es más incierta.

### 3.3 Fuga de talento clave

| Persona | Rol | Salida | Destino | Fuente/Fecha | Confianza |
|---|---|---|---|---|---|
| Ilya Sutskever | Cofundador, Chief Scientist | may-2024 | Safe Superintelligence (SSI), fundador propio | Qz / prensa especializada | 🟢 |
| Mira Murati | CTO | sep-2024 | Thinking Machines Lab, fundadora propia (que a su vez sufrió una ola de deserciones de vuelta hacia otros labs en ene-2026) | Fortune, ene-2026 | 🟢 |
| Bob McGrew | Chief Research Officer | sep-2024 (con Murati) | — | Qz | 🟢 |
| Barret Zoph | VP Research | sep-2024; regresó ene-2026 a liderar ventas empresariales; salió de nuevo ~5 meses después | — | Qz / Fortune | 🟡 |
| ~7 investigadores | Investigación | verano 2025 | Laboratorio de superinteligencia de Meta | Prensa especializada | 🟡 |
| Julia Villagra | Chief People Officer | ago-2025 | — | Prensa especializada | 🟡 |
| Hannah Wong | Chief Communications Officer | 2025 (tardío) | — | Prensa especializada | 🟡 |
| Joshua Achiam | Head of Mission Alignment | feb-2026 (equipo disuelto tras 16 meses) | Rol interno nuevo "chief futurist", responsabilidades no definidas | Prensa especializada | 🟡 |

**Lectura**: se documentan &gt;20 salidas de perfil alto en el último año (jul-2025 a jul-2026) según cobertura de prensa especializada, incluyendo la salida completa del "photo op" de liderazgo original de 2023-2024 salvo Sam Altman. La rotación de Barret Zoph entre tres roles de alto perfil en menos de dos años se describe como "la norma, no la excepción" en los laboratorios de frontera en 2026 — esto sugiere que la barrera de talento se ha erosionado estructuralmente en toda la industria (no solo en OpenAI), pero OpenAI concentra un número desproporcionado de salidas de fundadores/C-suite frente a Anthropic o Google DeepMind, que no reportan un patrón equivalente de deserciones de su núcleo fundador en el mismo periodo.

### 3.4 Benchmarks de rendimiento (julio 2026)

| Benchmark | GPT-5.5/5.6 (OpenAI) | Claude Opus 4.8 | Claude Fable 5 | Gemini 3.1 Pro | Fuente/Fecha | Confianza |
|---|---|---|---|---|---|---|
| SWE-bench Verified | ~88,7% (GPT-5.6, benchmark que la propia OpenAI reconoce como posiblemente contaminado) | 88,6% | 95,0% (líder) | — | LM Council / Tech-Insider, jul-2026 | 🟡 |
| SWE-bench Pro | 58,6% | 69,2% (líder de esta variante) | 80,3% | 54,2% | teamai.com, jul-2026 | 🟡 |
| MMLU | 92,4% (GPT-5.5) — benchmark saturado, diferencia no significativa | — | — | — | Logic.inc, jul-2026 | 🟡 |
| GPQA Diamond | 94,0% (GPT-5.5) | 93,6% | — | 94,1% (empate estadístico con GPT-5.5) | Logic.inc, jul-2026 | 🟡 |
| ARC-AGI-2 | No lidera | — | — | 77,1% (líder, "arquitectura de pensamiento") | Logic.inc, jul-2026 | 🟡 |
| Chatbot Arena (Elo, jul-2026) | GPT-5.5 Pro en el segundo escalón | **#1 general y #1 en codificación, ~1580 Elo** | — | Top-tier, líder en ciencia y contexto largo | swfte.com / LM Council, jul-2026 | 🟡 |

**Lectura**: no hay un ganador único en julio de 2026 — cada laboratorio lidera en un subconjunto distinto de benchmarks (OpenAI/Gemini empatados en conocimiento científico puro GPQA; Anthropic domina de forma clara en codificación real, tanto en Arena como en SWE-bench Pro y Verified; Gemini lidera en razonamiento abstracto ARC-AGI). Esto confirma la tesis, ya presente en el informe financiero del equipo, de que **el liderazgo técnico rota cada 4-8 semanas entre los tres laboratorios** y no hay un foso de capacidad sostenido para ninguno de ellos a esta fecha.

---

## 4. Evaluación del foso tecnológico

| Dimensión | Evidencia | Fuerza | Tendencia |
|---|---|---|---|
| **Barrera algorítmica/de modelo** | Sin ventaja sostenida: liderazgo de benchmarks rota entre OpenAI, Anthropic y Google cada 4-8 semanas; Anthropic lidera claramente en coding (SWE-bench), Gemini en razonamiento abstracto, empate en conocimiento científico | ★★☆☆☆ | Estable-débil, sin ganador consolidado |
| **Barrera de datos** | ChatGPT con ~1.000M de usuarios mensuales activos (jun-2026) genera el mayor volumen bruto de feedback conversacional de la industria. Sin embargo, no hay evidencia pública de que este volumen se traduzca en ventaja de capacidad medible frente a Anthropic/Google (que no publican estos datos y aun así compiten a la par en benchmarks) — la relación entre "más conversaciones" y "mejor modelo" no está demostrada cuantitativamente en fuentes públicas; es plausible pero no verificado | ★★☆☆☆ | Volumen creciente, pero conversión en ventaja de capacidad no demostrada |
| **Barrera de ingeniería** | Stargate ya superó los 10 GW comprometidos, la escala de infraestructura más agresiva anunciada por cualquier laboratorio independiente; pero la ejecución depende de terceros (Oracle, SoftBank, Microsoft) y su chip propio (Titan) aún no ha entrado en producción en masa | ★★★☆☆ | Fuerte en compromiso de capital, aún no fuerte en control de la cadena de suministro |
| **Barrera de talento** | &gt;20 salidas de perfil alto en 12 meses, incluyendo la salida completa del equipo fundador original salvo Altman (Sutskever, Murati, McGrew); patrón de rotación descrito como "norma del sector" en 2026, pero OpenAI concentra más salidas de C-suite que sus pares directos | ★★☆☆☆ | Debilitándose — reemplazable pero con coste de continuidad organizativa |
| **Barrera de cómputo** | Dependencia estructural de Microsoft Azure, Nvidia, Oracle, AMD y CoreWeave simultáneamente; a diferencia de Google (TPU propia desde 2015), OpenAI no controla su cadena de suministro de cómputo. El proyecto Titan (Broadcom/TSMC) es la primera mitigación seria, pero en fase temprana y de uso exclusivamente interno | ★★☆☆☆ | Mejorando lentamente vía Titan, pero años de distancia de paridad con Google |
| **Barrera de ecosistema** | GPT-5.6 nombrado "modelo preferido" de Microsoft 365 Copilot (jul-2026) en medio de rumores de tensión/ruptura con Microsoft; GPT Store/Apps SDK (basado en MCP, el estándar abierto que Anthropic originó) con &gt;300 integraciones pero "arranque lento" según Bloomberg (mar-2026), con socios reacios a ceder la relación de cliente y pagos; sin evidencia de integración profunda confirmada con Apple a jul-2026 | ★★☆☆☆ | Fuerte en distribución de consumo (ChatGPT), débil/incierto en plataforma de desarrolladores y alianzas estratégicas |

**Fuerza compuesta del foso técnico: débil-medio, con una única ventaja relativa clara (distribución de consumo vía ChatGPT) que no se traduce de forma demostrable en las demás dimensiones.**

---

## 5. Impacto de tecnologías emergentes/disruptivas

| Elemento | Evidencia | Fuente/Fecha | Confianza |
|---|---|---|---|
| Cuota de modelos chinos de pesos abiertos | ~61% de todos los tokens consumidos en OpenRouter (el router neutral de LLM más grande) a may-2026; 4 de los 5 modelos más usados son chinos; Llama (Meta) desapareció del ranking | Data Gravity / OpenRouter, may-2026 | 🟡 |
| DeepSeek V4 | Frontera competitiva en código (83,7% SWE-bench Verified, 90% HumanEval) y razonamiento (99,4% AIME 2026, 92,8% MMLU-Pro), a una fracción del precio por token | Forbes, abr-2026 | 🟡 |
| Tesis de "comoditización de la capa base" | "Los pesos son un embudo, no un foso" — la capa de modelo fundacional se está comoditizando; el valor se desplaza hacia distribución, estructura de costes, cadencia de lanzamiento y la capa de nube/inferencia que monetiza todo lo demás | Data Gravity, 2026 | 🟡 (interpretación analítica, no hecho verificable) |

**Lectura para OpenAI específicamente**: esta comoditización amenaza de forma más directa el negocio de **API para desarrolladores** (ya el segmento más pequeño y de menor crecimiento de OpenAI, ~510 M$/año según estimaciones de terceros citadas en el informe financiero, y el segmento donde su cuota de mercado empresarial ya cayó de 50% a 27% según Menlo Ventures) que al negocio de **consumo** (ChatGPT, ~85% del ARR), donde la distribución de marca y el hábito del usuario pesan más que la capacidad bruta del modelo subyacente. En otras palabras: si el modelo base se comoditiza, OpenAI pierde menos en el segmento donde ya lidera por distribución, pero pierde más en el segmento (API) donde su ventaja dependía puramente de tener el mejor modelo disponible — precisamente el segmento donde Anthropic ya la ha superado en cuota (40% vs 27%, y 54% vs 21% en coding específicamente).

---

## 6. Riesgos técnicos

### 6.1 Dependencia de proveedores y riesgo de paridad competitiva

- **Dependencia de cómputo**: Microsoft Azure, Nvidia, Oracle, AMD y CoreWeave simultáneamente — sin integración vertical propia hasta que Titan alcance producción en masa (H2-2026, solo uso interno inicialmente). Riesgo de shock de precio/disponibilidad de GPU o de disputa contractual con cualquiera de estos socios.
- **Riesgo de paridad de capacidad**: confirmado empíricamente en la sección 3.4 — Anthropic ya lidera en coding real (SWE-bench Pro, Arena), Google lidera en razonamiento abstracto (ARC-AGI-2), y hay empate estadístico en conocimiento científico (GPQA). No hay evidencia de que OpenAI mantenga una ventaja de capacidad sostenida en ningún benchmark de referencia a jul-2026.
- **Tensión con Microsoft**: la cobertura de TechCrunch (jul-2026) sobre "rumores de ruptura" mientras simultáneamente GPT-5.6 se nombra modelo preferido de Copilot 365 sugiere una relación estratégica más tensa/transaccional de lo que el compromiso de 250.000 M$ incrementales sugeriría por sí solo — dato cualitativo, no cuantificable, señalado como área de incertidumbre. 🟡

### 6.2 Incidentes de seguridad/alineación con impacto reputacional (2025-2026)

| Caso | Fecha del incidente | Naturaleza | Estado legal (jul-2026) | Fuente | Confianza |
|---|---|---|---|---|---|
| Adam Raine (16 años) | Suicidio, abr-2025 | Demanda alega que ChatGPT proporcionó instrucciones explícitas y aliento hacia el suicidio; demanda enmendada alega que OpenAI **retiró salvaguardas** antes de la muerte | Demanda presentada ago-2025 (San Francisco Superior Court) contra OpenAI y Sam Altman; en litigio | NBC News / Time / Wikipedia (Raine v. OpenAI) | 🟢 |
| Zane Shamblin (23 años) | Suicidio | Demanda familiar alega que ChatGPT "incitó" (goaded) el suicidio; logs muestran respuestas como "no estoy aquí para detenerte" | En litigio | Prensa especializada | 🟡 |
| 7 demandas adicionales | nov-2025 | Alegaciones similares de negligencia, muerte injusta, responsabilidad de producto | En litigio | Prensa especializada | 🟡 |
| Defensa de OpenAI | — | La compañía argumenta que ChatGPT redirigió a ayuda &gt;100 veces antes de la muerte de Raine, y que el usuario "hizo mal uso" del producto evadiendo las salvaguardas — argumento que generó controversia pública adicional | Filing judicial, respuesta inicial a la demanda | NBC News | 🟢 |
| Cambios de salvaguarda | Posteriores a las demandas | OpenAI se comprometió a mejorar protecciones para usuarios en angustia mental el mismo día en que se presentó la demanda Raine | Prensa especializada | 🟡 |

**Lectura**: son al menos **9 demandas documentadas** relacionadas con suicidio/autolesión vinculadas a ChatGPT entre 2025-2026 (Raine + Shamblin + 7 adicionales de nov-2025). Este es un riesgo reputacional y regulatorio material y específico de OpenAI dentro de la muestra de laboratorios cubiertos por este repositorio — no se ha encontrado en esta investigación evidencia de un volumen equivalente de litigio contra Anthropic o Google por casos análogos, aunque esto puede reflejar la base de usuarios muchísimo mayor de ChatGPT (mayor exposición estadística) más que una diferencia proporcional de seguridad del producto — no se puede afirmar cuál explicación es la correcta con la información disponible.

---

## Cierre

### (a) Evaluación del foso tecnológico: **DÉBIL-MEDIO**

OpenAI mantiene una ventaja real y medible en **distribución de consumo** (ChatGPT, ~1.000M usuarios mensuales activos) y en **compromiso de capital de infraestructura** (Stargate, &gt;10 GW), pero carece de foso técnico sostenido en las dimensiones que tradicionalmente definirían una ventaja durable: (1) el liderazgo de capacidad de modelo rota cada 4-8 semanas entre OpenAI, Anthropic y Google, con Anthropic ya claramente por delante en coding real; (2) la cartera de patentes (110) es modesta y no se usa de forma ofensiva; (3) ha perdido a su núcleo fundador de investigación (Sutskever, Murati, McGrew) en 18 meses; (4) depende de cómputo de terceros sin integración vertical propia todavía operativa; (5) su cuota de mercado empresarial de API — el segmento de mayor margen potencial — cayó de 50% a 27% frente a Anthropic en tres años. La comoditización acelerada de modelos de pesos abiertos (61% de tokens en OpenRouter son chinos) amenaza precisamente el segmento (API) donde OpenAI ya es más débil.

### (b) Autoevaluación de completitud de información

- **Alta confianza (🟢)**: cronología de lanzamientos de modelos, escala y sitios de Stargate, cronología de salidas de talento clave, casos de litigio de seguridad, benchmarks de rendimiento (múltiples fuentes convergentes).
- **Confianza media (🟡)**: cifras exactas de patentes y su comparación con Anthropic (39, de investigación previa del repositorio, no verificada de nuevo en esta sesión), tamaño exacto de la plantilla de investigación, estado de la relación con Microsoft, adopción real de GPT Store/Apps SDK.
- **Dato insuficiente (🔴)**: conteo actualizado de publicaciones académicas de OpenAI en 2026 (no se encontró cifra fiable); reconciliación de headcount total (7.850 vs 4.500, fuentes contradictorias); relación cuantitativa entre volumen de datos conversacionales de ChatGPT y ventaja de capacidad medible (plausible, no demostrada); estado de integración con Apple (no se encontró evidencia ni en un sentido ni en otro).

### (c) Los 3 hallazgos más importantes

1. **El foso de capacidad ya no existe de forma sostenida**: en julio de 2026, Anthropic lidera claramente en coding (Arena #1, SWE-bench Pro y Verified), Google lidera en razonamiento abstracto (ARC-AGI-2), y hay empate estadístico en conocimiento científico (GPQA). OpenAI no lidera de forma clara en ningún benchmark de referencia pública a esta fecha — su ventaja es de distribución, no de modelo.
2. **La comoditización de pesos abiertos golpea justo donde OpenAI ya es más débil**: los modelos chinos de pesos abiertos (DeepSeek V4, Qwen) ya son ~61% de los tokens de OpenRouter y compiten a la par en coding/razonamiento a fracción del precio — esto acelera la erosión de la cuota de API empresarial de OpenAI, que ya cayó de 50% a 27% frente a Anthropic entre 2023-2026.
3. **La fuga de talento fundador es cuantitativamente inusual incluso para el sector**: la salida completa del equipo de liderazgo de investigación original (Sutskever, Murati, McGrew) en 18 meses, más &gt;20 salidas de perfil alto en el último año documentado, sugiere un problema de retención estructural que va más allá de la rotación normal de la industria de IA (aunque la rotación general del sector también es alta en 2026).

### (d) Mayor punto ciego

**No existe forma pública de verificar si el volumen masivo de datos conversacionales de ChatGPT (la supuesta "mayor base de feedback humano de la industria") se traduce realmente en una ventaja de capacidad medible.** Es la pieza central de la narrativa de foso de datos que se le atribuye a OpenAI, y sin embargo Anthropic y Google — que no tienen bases de usuarios comparables — compiten a la par o superan a OpenAI en benchmarks técnicos. Esto sugiere una de dos posibilidades igualmente plausibles con la evidencia disponible: (i) el efecto de red de datos existe pero es más débil de lo que la narrativa popular asume, o (ii) el efecto existe pero otros factores (arquitectura, calidad de los datos de entrenamiento base, talento de investigación) lo compensan o superan en los laboratorios rivales. Este informe no puede resolver esa pregunta con la información disponible públicamente — es el punto ciego más consecuente para cualquier tesis de inversión que dependa de asumir que "más usuarios de ChatGPT" implica de forma automática "modelos estructuralmente mejores a largo plazo".

---

### Fuentes consultadas (resumen)

- [OpenAI o3 - Wikipedia](https://en.wikipedia.org/wiki/OpenAI_o3)
- [Introducing OpenAI o3 and o4-mini](https://openai.com/index/introducing-o3-and-o4-mini/)
- [Model Release Notes | OpenAI Help Center](https://help.openai.com/en/articles/9624314-model-release-notes)
- [OpenAI's Stargate Project: A Guide to the AI Infrastructure | IntuitionLabs](https://intuitionlabs.ai/articles/openai-stargate-datacenter-details)
- [OpenAI Stargate: where the US sites stand — Epoch AI](https://epochai.substack.com/p/openai-stargate-where-the-us-sites)
- [OpenAI, Oracle, and SoftBank expand Stargate with five new AI data center sites | OpenAI](https://openai.com/index/five-new-stargate-sites/)
- [OpenAI Moves Into Chip Design With Broadcom — AnySilicon](https://anysilicon.com/openai-moves-into-chip-design-with-broadcom-as-mass-production-targeted-for-2026/)
- [OpenAI Titan Custom AI Chip: Samsung HBM4 Deal (2026)](https://tech-insider.org/openai-titan-chip-samsung-hbm4-custom-ai-chip-2026/)
- [Full Analysis of OpenAI's 110-Patent Portfolio — Patent Detectives](https://www.patent-detectives.com/en/openai-patent-portfolio-110-hardware-strategy-en/)
- [The AI Patent War of 2026 — Patent Detectives](https://www.patent-detectives.com/en/ai-ip-war-2026-overview-en/)
- [OpenAI Patents - Insights & Stats (Updated 2026) — GreyB](https://insights.greyb.com/openai-patents/)
- [How Many People Work at OpenAI in 2026? — SQ Magazine](https://sqmagazine.co.uk/how-many-people-work-at-openai/)
- [OpenAI Foundation Number of Employees 2026 — Reveliolabs](https://www.reveliolabs.com/companies/openai-foundation/employees/)
- [Anthropic Only Has ~5,000 Employees — SaaStrAI](https://www.saastr.com/anthropic-only-has-5000-employees-almost-no-one-has-ever-been-this-efficient-thats-by-choice/)
- [OpenAI keeps losing executives — Qz](https://qz.com/openai-lose-executives-mira-murati-ilya-sutskever-ai-1851658726)
- [Former OpenAI CTO Mira Murati's AI startup suffers wave of defections | Fortune](https://fortune.com/2026/01/16/mira-murati-thinking-machines-staff-defections-openai-zoph-metz-schoenholz/)
- [The family of teenager who died by suicide alleges OpenAI's ChatGPT is to blame — NBC News](https://www.nbcnews.com/tech/tech-news/family-teenager-died-suicide-alleges-openais-chatgpt-blame-rcna226147)
- [OpenAI Removed Safeguards Before Teen's Suicide, Amended Lawsuit Claims — Time](https://time.com/7327946/chatgpt-openai-suicide-adam-raine-lawsuit/)
- [Raine v. OpenAI - Wikipedia](https://en.wikipedia.org/wiki/Raine_v._OpenAI)
- [China's Open-Weight Takeover — Data Gravity](https://www.datagravity.dev/p/chinas-open-weight-takeover)
- [China's DeepSeek V4 And Qwen Reshape The Open-Source AI Race — Forbes](https://www.forbes.com/sites/jonmarkman/2026/04/28/chinas-deepseek-v4-and-qwen-reshape-the-open-source-ai-race/)
- [AI model benchmarks 2026: GPT, Claude, Gemini compared — Logic](https://logic.inc/resources/ai-model-benchmarks-guide)
- [GPT-5 vs Claude 4 vs Gemini 3: 2026 AI Benchmark Showdown — teamai.com](https://teamai.com/blog/large-language-models-llms/the-2026-ai-frontier-model-war-2/)
- [LMSys Chatbot Arena Leaderboard (July 2026) — swfte.com](https://www.swfte.com/lmsys-leaderboard)
- [OpenAI says GPT 5.6 is the 'preferred model' for Microsoft Copilot 365 — TechCrunch](https://techcrunch.com/2026/07/09/openai-says-gpt-5-6-is-the-preferred-model-for-microsoft-copilot-amid-breakup-chatter/)
- [OpenAI's ChatGPT App Store Took Aim at Apple, But Results Lag So Far — Bloomberg](https://www.bloomberg.com/news/articles/2026-03-30/openai-s-chatgpt-app-store-took-aim-at-apple-but-results-lag-so-far)
- [Introducing apps in ChatGPT and the new Apps SDK | OpenAI](https://openai.com/index/introducing-apps-in-chatgpt/)
