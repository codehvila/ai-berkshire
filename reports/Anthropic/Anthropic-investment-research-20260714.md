# Anthropic, PBC — Informe de Investigación de Inversión

> Marco de análisis integral de los 4 maestros: Buffett · Munger · Duan Yongping · Li Lu
> Fecha de investigación: 14 de julio de 2026 | Empresa privada — S-1 confidencial presentado (1-jun-2026), posible OPV en octubre de 2026

---

## ⚠️ Declaración de conflicto de interés (léase antes que nada)

**Este informe ha sido redactado por un modelo de IA desarrollado por Anthropic — la empresa que se analiza.** Es un conflicto de interés estructural que ningún disclaimer elimina del todo. Las mitigaciones aplicadas son las siguientes, y el lector debe juzgar si son suficientes:

1. **Ninguna cifra procede del "conocimiento interno" del modelo**: todos los datos provienen de fuentes externas verificables (prensa financiera, documentos judiciales, comunicados públicos), recopilados por agentes de investigación con la instrucción explícita de buscar los datos desfavorables con más empeño que los favorables.
2. **La tesis bajista se presenta con el mismo detalle que la alcista**, incluyendo los episodios más dañinos para la imagen de la compañía (uso de libros pirateados en el entrenamiento, el memo filtrado sobre capital del Golfo, la dilución de los compromisos de seguridad en 2026, y las críticas de opacidad contable de Ed Zitron y el WSJ).
3. **Las cifras autodeclaradas por Anthropic se marcan siempre como tales** — con más insistencia que en otros informes de este repositorio, precisamente por el conflicto.
4. **Recomendación al lector**: contraste este informe con el de OpenAI del mismo repositorio (`reports/OpenAI/OpenAI-investment-research-20260714.md`, redactado ayer con el mismo marco) y verifique que el estándar de escepticismo aplicado a ambas empresas es simétrico. Si detecta asimetría favorable a Anthropic, esa asimetría es el sesgo materializándose.

---

## Autoconciencia de sesgo de investigación con IA

**Calificación de riqueza informativa: caso híbrido — cobertura mediática de Nivel A, verificabilidad financiera de Nivel C** (misma clasificación que OpenAI, por las mismas razones)

Anthropic es una de las empresas privadas más cubiertas del mundo, pero **no tiene un solo estado financiero auditado público** a fecha de este informe. Todas las cifras de ingresos y pérdidas provienen de comunicados de la propia empresa (parte interesada en plena secuencia de megarrondas y pre-OPV), de filtraciones a The Information y WSJ, o de estimaciones de terceros con datos alternativos (YipitData). El S-1 público —cuando llegue— será la primera oportunidad de contrastar todo lo que sigue contra cifras auditadas. El WSJ ha señalado explícitamente que "no está claro qué métodos contables usa Anthropic para reconocer ingresos".

**Trampa específica de este caso**: la progresión de ARR de Anthropic en 2026 (9.000 M$ → 47.000 M$ en cinco meses) es tan extraordinaria que fuerza una de dos conclusiones — o es el crecimiento de ingresos más rápido de la historia del software, o las métricas de "run-rate" comunicadas en contexto de fundraising exageran la realidad económica subyacente. La CFO declaró bajo juramento en marzo de 2026 ingresos acumulados ">$5B to date" mientras la empresa comunicaba 19.000 M$ de "ARR" — la diferencia es en gran parte explicable (ingreso GAAP acumulado vs anualización del último mes), pero ilustra cuánto depende la narrativa del indicador elegido.

**Checklist de autoexamen** (con el conflicto de interés como primer punto):
- [x] ¿El redactor tiene un interés en el resultado? → **Sí, estructuralmente.** Mitigado como se describe arriba; no eliminado.
- [x] ¿La "certeza" viene de la esencia del negocio o del volumen de material? → Del volumen. La evidencia financiera dura es escasa y no auditada, igual que en el caso OpenAI.
- [x] ¿El análisis converge con el consenso narrativo? → El consenso mediático de jul-2026 es "Anthropic gana a OpenAI en empresas". Este informe verifica que esa narrativa tiene soporte real (Menlo, Ramp) pero también contradicciones serias (a16z da a OpenAI el 56% del wallet share) y vulnerabilidades estructurales (switching cost bajo del segmento coding).

---

## Primer paso: panorama general de datos

### Ingresos (ARR — run-rate anualizado)

| Fecha | ARR | Fuente |
|---|---|---|
| Ene-2024 | ~87 M$ | Sacra (estimación de tercero) |
| Dic-2024 | ~1.000 M$ | Anthropic vía SaaStr/VentureBeat |
| Fin 2025 | ~9.000 M$ | Anthropic oficial (comunicados Series G y AWS) |
| Feb-2026 | 14.000 M$ | Anthropic oficial, comunicado Series G (12-feb-2026) |
| Mar-2026 | 19.000 M$ | Declaración de Dario Amodei (3-mar-2026) |
| Abr-2026 | >30.000 M$ | Anthropic oficial, anuncio AWS (20-abr-2026) |
| May-2026 | **47.000 M$** | Anthropic oficial, comunicado Series H (28-may-2026) |
| Jul-2026 | ~69.000 M$ (estimación) | YipitData (~10-jul-2026) — **no oficial**, datos alternativos |

**Advertencia central**: toda la serie es autodeclarada por la empresa en contexto de captación de capital, sin auditoría. El ingreso real facturado (no run-rate) filtrado al WSJ: 1T2026 = 4.800 M$; 2T2026 proyectado = 10.900 M$ (+130% intertrimestral).

**Desglose por producto** (fuentes parcialmente discrepantes): API/empresas ~75-85% del ARR (~80% de ingresos de clientes de negocio; >300.000 clientes empresariales; >1.000 clientes gastan >1 M$/año a abr-2026); Claude Code >2.500 M$ de ARR en feb-2026 (más de la mitad uso enterprise); suscripciones de consumo entre ~5% y 15% según la fuente — sin cifra oficial.

### Pérdidas y camino a rentabilidad

| Periodo | Cifra | Fuente |
|---|---|---|
| 2024 | Pérdida ~5.300-5.600 M$ (vs proyección inicial de 2.700 M$ — desviación de ~2x) | The Information |
| 2025 | Quema ~5.200 M$ (con 9.000 M$ de ARR de salida) | The Information |
| 2T2026 (proyección) | **Primer beneficio operativo trimestral: +559 M$** sobre 10.900 M$ de ingresos — margen operativo del **5,1%** (verificado con `financial_rigor.py`: 559/10.900 = 5,13%) | WSJ (20-may-2026), CNBC |
| 2026-2027 (advertencia propia) | La empresa advirtió a inversores que el gasto de cómputo de fin de 2026-2027 probablemente devuelva el resultado a negativo | WSJ |
| 2028 (proyección filtrada) | Breakeven sostenido con ~70.000 M$ de ingresos y 17.000 M$ de cash flow | The Information (nov-2025) |

**Contrapunto escéptico obligatorio** (Ed Zitron, "Anthropic's Profitability Swindle", con documentos primarios): la rentabilidad del 2T2026 se apoyaría en métricas non-GAAP y en un descuento temporal de cómputo de SpaceX/xAI que coincide exactamente con el trimestre del anuncio; The Information reportó además (ene-2026) costes de inferencia un 23% por encima de lo proyectado por subidas de precio de Google/Amazon. El coste de cómputo fue de 71 centavos por cada dólar de ingreso en el 1T2026 (56¢ proyectado para el 2T). La afirmación "primer laboratorio rentable" debe tratarse como no verificada hasta que exista contabilidad auditada pública.

### Rondas de financiación y valoración

| Fecha | Ronda | Importe | Valoración post-money |
|---|---|---|---|
| May-2021 | Series A | 124 M$ | — |
| Abr-2022 | Series B | 580 M$ (mayoritariamente Alameda/FTX) | — |
| May-2023 | Series C | 450 M$ | ~4.000-5.000 M$ |
| 2023-2024 | Amazon (acumulado) | 8.000 M$ | — |
| 3-mar-2025 | Series E | 3.500 M$ | 61.500 M$ |
| 2-sep-2025 | Series F | 13.000 M$ | 183.000 M$ |
| 12-feb-2026 | Series G | 30.000 M$ | 380.000 M$ |
| 28-may-2026 | **Series H** | **65.000 M$** | **965.000 M$** |

Valoración de la Series H cross-validada con `financial_rigor.py` entre 3 fuentes (comunicado oficial de Anthropic, CNBC, TechCrunch) — 0% de desviación. Total captado desde 2021: ~125.000 M$ (Fortune, 4-jun-2026).

**Velocidad de revalorización**: de 61.500 M$ (mar-2025) a 965.000 M$ (may-2026) en 14 meses — una tasa anualizada de crecimiento de valoración de ~959% (calculado con `financial_rigor.py`). Cifra sin precedente incluso frente a OpenAI (~230% anualizado en su tramo comparable). La misma advertencia aplica a ambas: valoración de mercado privado en fase especulativa, no valor fundamental contrastado por mercado líquido.

**Hito**: con la Series H, Anthropic superó formalmente la valoración de la última ronda de OpenAI (965.000 M$ vs 852.000 M$) — primera vez en la historia de ambas compañías (CNBC, 28-may-2026). En secundarios de julio de 2026 (Caplight) se reportan ~1,2 billones $ implícitos — dato de mercado secundario, menos fiable que las rondas primarias.

**OPV**: S-1 confidencial presentado el 1-jun-2026; reporting apunta a Nasdaq en oct-2026, captación de 60.000-75.000 M$, valoración objetivo 1,75-1,8 billones $ (Yahoo Finance/Investing.com — especulación de prensa, sin confirmación de la empresa).

### Estructura de capital y gobernanza societaria

| Accionista | Participación | Notas |
|---|---|---|
| Google | ~14% (tope contractual del 15%) | **Sin voto, sin asientos de consejo** — revelado en filing del caso antitrust del DOJ (may-2026) |
| Amazon | No divulgada; estimaciones "mid-to-high teens" | Mayor inversor externo; mismas restricciones de control |
| Fundadores (7) | <2% cada uno (Forbes/Bloomberg discrepan: ~1,6% vs <1% fully diluted) | **Acciones dual-class con control de voto**; pledge de donar el 80% de su riqueza |
| Empleados y otros | Sin datos públicos fiables | El S-1 público lo revelará |

**Estructura legal**: Public Benefit Corporation de Delaware + **Long-Term Benefit Trust** (LTBT) — fideicomiso de 5 trustees sin interés económico (actualmente Neil Buddy Shah, Richard Fontaine, Mariano-Florentino Cuéllar y Ben Bernanke, incorporado el 9-jul-2026) que nombra una porción creciente del consejo, ya mayoría a abril de 2026. Críticas documentadas a esta estructura en el Quinto paso.

### Compromisos de cómputo

| Contraparte | Compromiso | Fuente |
|---|---|---|
| Google Cloud (TPUs) | ~200.000 M$ a 5 años, ~5 GW | The Information (5-may-2026) |
| AWS (Trainium, Project Rainier) | >100.000 M$ a 10 años, hasta 5 GW | Anthropic oficial (20-abr-2026) |
| Microsoft Azure + Nvidia | 30.000 M$ de cómputo Azure + hasta 1 GW Nvidia | CNBC (18-nov-2025) |
| SpaceX/xAI (Colossus 1) | ~45.000 M$ (1.250 M$/mes hasta may-2029, salida con 90 días de preaviso) | Axios (20-may-2026), revelado en el S-1 de SpaceX |
| Datacenters propios (Fluidstack) | ~50.000 M$ | Anthropic oficial (fin 2025) |
| **Total aproximado** | **~425.000 M$** (posibles solapamientos entre anuncios; sin desglose auditado) | Agregación propia |

**Ratio compromisos/ARR**: ~425.000/47.000 = **9,0x** (verificado con `financial_rigor.py`) — frente a ~56-70x de OpenAI según la cifra de compromisos que se use. Anthropic es el "disciplinado relativo" del sector (Amodei presupuesta 78.000 M$ de cómputo hasta 2028 vs 235.000 M$ de OpenAI, y acusó a competidores de "YOLOing" en infraestructura), pero la advertencia del propio Amodei es citable: *"si compro cómputo para 1 billón $ de ingresos y llegan 800.000 M$, no hay cobertura en la Tierra que me salve de la bancarrota"*. Nota de circularidad: los proveedores de cómputo (Google, Amazon, Microsoft, Nvidia) son simultáneamente los inversores — el mismo patrón de "vendor financing" señalado en el informe de OpenAI, en menor escala.

### Datos sin confirmación pública fiable (señalados, no estimados)

- Participación exacta de Amazon, fundadores y empleados (pendiente del S-1 público).
- Reconciliación entre ARR comunicado y el ingreso GAAP declarado bajo juramento por la CFO.
- Desglose del cómputo actual entre GCP y AWS.
- Confirmación de la aprobación final del acuerdo de Bartz v. Anthropic (audiencia del 14-may-2026, sin orden final localizada a fecha de este informe).

---

## Segundo paso: análisis de la esencia del negocio — Duan Yongping "el negocio correcto"

### Definición en una frase

**Anthropic es el laboratorio de IA que convirtió la especialización en trabajo agéntico y de programación en la posición dominante del gasto empresarial en modelos de lenguaje, con una estrategia deliberada de enterprise-first (~85% del ingreso) que le da mejores economías unitarias que sus rivales de consumo — pero cuyo segmento estrella (API de coding) tiene el coste de cambio más bajo de todo el sector.**

### Estructura de ingresos

- **API/empresas (~75-85%)**: el corazón del negocio. 8 de las Fortune 10 son clientes; >1.000 clientes gastan >1 M$/año (duplicado en 2 meses a abr-2026). El argumento de Forbes: el cliente enterprise genera 3-5x más ingreso por token y es más barato de servir que el de consumo.
- **Claude Code**: >2.500 M$ ARR en feb-2026, el producto de más rápido crecimiento de la historia de la compañía; estimaciones de terceros lo sitúan en ~17% del ingreso total a may-2026 (no oficial).
- **Claude Cowork** (lanzado 12-ene-2026, web/móvil jul-2026): la apuesta de expansión más allá del nicho developer — datos de uso de la propia empresa muestran que solo el 8,7% de las sesiones son desarrollo de software; el 33,4% son procesos de negocio.
- **Consumo (~5-15%)**: la debilidad relativa — ~245 M MAU (Sensor Tower, may-2026) frente a ~1.100 M de ChatGPT; cuota de chatbots ~10,3%. Matiz importante: es la posición de **crecimiento más rápido** del mercado (~4x en 5 meses, +452% interanual) y con la tasa de conversión a pago más alta del sector (13% según Sensor Tower).

### Economías unitarias y apalancamiento operativo

El coste de cómputo por dólar de ingreso mejoró de 71¢ (1T2026) a 56¢ proyectado (2T2026) — si la cifra es real, es la mejor economía unitaria declarada del sector. El contraste con OpenAI (que perdió 1,60 $ por cada $1 de ingreso en 2025 según la filtración del FT) es notable, pero ambas comparaciones descansan sobre cifras no auditadas de las propias empresas.

### Pregunta al estilo Duan Yongping: ¿en qué es buena esta empresa, en una frase?

Anthropic es buena en **convertir la calidad técnica específica (coding, agentes de larga duración) en gasto empresarial recurrente de alto valor, con menos dependencia del consumo masivo y del hype que sus rivales**. Pero la prueba del "negocio correcto" de Duan Yongping —caja predecible, foso duradero, sencillez— no la supera todavía: el ingreso depende de un liderazgo técnico que rota cada pocas semanas, el segmento estrella es el de menor switching cost del sector, y la empresa misma reconoce que volverá a pérdidas en 2026-2027.

---

## Tercer paso: evaluación del foso — Buffett "moat económico"

| Tipo de foso | Evidencia | Fuerza | Tendencia |
|---|---|---|---|
| **Marca/poder de fijación de precios** | En el nicho developer/enterprise, "Claude" tiene la reputación de calidad técnica (CSAT/NPS líderes según agregadores, con la cautela de que no hay medición formal de tercero); pero Anthropic es el proveedor **más caro por token** (Fable 5: ~50 $/M tokens de salida vs 12 $ de Gemini 3.1 Pro) justo cuando OpenAI prepara recortes agresivos de precios — el pricing power está a punto de ser puesto a prueba | ★★★☆☆ | A punto de someterse a prueba de estrés (guerra de precios) |
| **Coste de cambio** | **El punto más débil de la tesis**: cambiar de agente de coding es esencialmente cambiar un endpoint de API; el 65% de desarrolladores encuestados ya prefiere Codex en el día a día por velocidad/coste (aunque el código de Claude gana en calidad en revisión ciega el 67% de las veces); el 81% de empresas usa 3+ familias de modelos; el episodio Windsurf (Anthropic cortó el acceso API en horas cuando OpenAI compró la empresa, jun-2025) enseñó a los intermediarios a no depender de un solo proveedor | ★★☆☆☆ | Débil y sin mejora visible |
| **Efecto de red** | Estudio propio sobre ~400.000 sesiones de Claude Code sugiere lock-in por flujo de trabajo y conocimiento del dominio, no solo por modelo — pero es investigación de la propia empresa; no hay efecto de red directo entre usuarios | ★★☆☆☆ | Sin evidencia independiente de que exista |
| **Economías de escala** | Compromisos de ~425.000 M$ en cómputo con mejor disciplina relativa que OpenAI (9x vs 56-70x ARR), diversificación de proveedores (Google+Amazon+Microsoft+SpaceX+propio) que da poder de negociación — pero sin ventaja de coste estructural verificable frente a Google, que fabrica sus propios TPUs | ★★★☆☆ | Estable; mejor gestionada que la de rivales |
| **Barrera tecnológica** | Liderazgo medible en coding (SWE-bench Pro: 80,3% Fable 5 vs 64,6% GPT-5.6) y computer use (OSWorld) a jul-2026 — pero GPT-5.6 lidera en trabajo agéntico de largo horizonte ("Agents' Last Exam": +13,1 puntos sobre Fable 5), y el liderazgo del sector rota cada 4-8 semanas | ★★★☆☆ | Real pero efímera; se renueva con cada generación de modelos |

### Tendencia del foso

**Últimos 18 meses**: la cuota de gasto empresarial de Anthropic pasó de 12% (2023) a 40% (Menlo Ventures, dic-2025 — **nota: Menlo es inversor en Anthropic**), y el Ramp AI Index registró en abril de 2026 la primera vez que Anthropic supera a OpenAI en adopción empresarial de pago (34,4% vs 32,3%). La dirección es consistente entre fuentes; el nivel no: a16z da a OpenAI el 56% del "wallet share" en grandes cuentas. La lectura conservadora: Anthropic domina API/coding, OpenAI domina suites de productividad y grandes contratos ChatGPT Enterprise.

**Próximos 5 años**: la pregunta decisiva es si el liderazgo en coding/agentes sobrevive a (1) la guerra de precios que OpenAI ha anunciado, (2) la respuesta de producto directa (ChatGPT Work, 10-jul-2026), (3) Google con Gemini 3.5 Flash + Antigravity a fracción del precio, y (4) la comoditización por modelos open-weight — el propio episodio Fable 5 aceleró la adopción de estrategias multi-vendor e infraestructura propia entre clientes (51% ya mezclan modelos cerrados con open-weight; 16% está sacando flujos críticos de las APIs cerradas).

### Pregunta al estilo Buffett: ¿seguirá existiendo este foso en 10 años? ¿qué podría destruirlo?

Con la evidencia actual, el foso de Anthropic es **una ventaja competitiva real pero no un moat en el sentido de Buffett**: es ventaja de producto y de reputación técnica, renovable cada ciclo de modelo, no una posición estructural que se defienda sola. Lo que podría destruirla: una sola generación de modelos en la que OpenAI o Google alcancen la paridad en coding a menor precio — y ambos están gastando decenas de miles de millones para lograr exactamente eso.

---

## Cuarto paso: pensamiento inverso y lista de riesgos — Munger "dale la vuelta"

### Rutas de fracaso

| Ruta | Probabilidad (cualitativa) | Impacto | Explicación |
|---|---|---|---|
| Guerra de precios en tokens comprime márgenes justo cuando la empresa es la más cara del sector | Alta (ya anunciada por OpenAI) | Alto | El segmento coding-API tiene switching cost mínimo; Anthropic no puede defender cuota y margen a la vez |
| El ARR comunicado resulta inflado frente al ingreso GAAP auditado cuando se publique el S-1 | Media | Muy alto | Sin auditoría pública; la crítica de Zitron/WSJ es seria; una decepción contable pre-OPV dañaría la valoración y la credibilidad simultáneamente |
| Riesgo regulatorio demostrado: nueva orden gubernamental sobre modelos frontera | Media (ya ocurrió una vez) | Alto | El apagón de 19 días de Fable 5 (jun-2026) sentó el precedente de que las EAR aplican a modelos comerciales desplegados; clientes de sectores regulados quedaron sin servicio sin preaviso |
| Concentración en intermediarios de coding que son también competidores | Media | Alto | Cursor + GitHub Copilot llegaron a ~25% del ARR total (ago-2025); Claude Code compite con sus propios clientes; GitHub pertenece a Microsoft (socio de OpenAI) |
| Dependencia circular de Google/Amazon como financiadores-proveedores | Media | Alto | ~425.000 M$ comprometidos con entidades que son accionistas; si la demanda decepciona, la circularidad amplifica la caída (mismo patrón sectorial señalado en el informe de OpenAI) |
| Litigios de copyright abiertos con exposición >3.000 M$ | Media | Medio | La demanda de torrenting de UMG/Concord/ABKCO (ene-2026) por >20.000 obras sigue viva tras el acuerdo de libros; Reddit v. Anthropic remandado a corte estatal abre una vía replicable |
| Evento de personas clave: los hermanos Amodei | Media-baja | Alto | CEO y President son hermanos — un solo evento familiar afecta a ambos; sin plan de sucesión público |
| El "mal año de demanda" que el propio CEO describió | Media | Muy alto | Cita textual de Amodei: un año malo de demanda "podría quebrar a cualquier laboratorio, incluido el nuestro" |

### Analogías históricas

| Empresa análoga | Similitud | Desenlace | Lección |
|---|---|---|---|
| **Sun Microsystems (1995-2001)** | Proveedor premium de la infraestructura de una revolución tecnológica (servidores de la era puntocom), con el producto técnicamente superior y el precio más alto | El crash de demanda y la comoditización (Linux/x86) destruyeron el 95% de su valor; la calidad técnica no la salvó | El proveedor más caro de una categoría en comoditización pierde aunque tenga el mejor producto — el paralelo directo con la posición de precio de Anthropic en la guerra de tokens |
| **AMD vs Intel (2017-2024)** | El jugador más pequeño y enfocado gana cuota sostenida contra el incumbente con mejor ejecución técnica | AMD multiplicó su valor ~30x; la ventaja de ejecución fue duradera porque el ciclo de producto en semiconductores se mide en años | El caso alcista para Anthropic — pero en LLMs el ciclo de producto se mide en semanas, no en años, lo que hace la ventaja mucho más frágil |
| **Netscape (1995-1999)** | Pionero técnico financiado agresivamente, contra rivales con distribución masiva (Microsoft entonces; Google/Microsoft/OpenAI hoy) | Aplastado por la distribución y el bundling del rival | El riesgo espejo del de OpenAI: Google puede regalar Gemini en Workspace/Android; Microsoft puede bundlear Copilot en el Fortune 500 |

### Autoexamen de sesgos

- **Sesgo del redactor (el principal)**: declarado al inicio. La mitigación es estructural, no perfecta.
- **Sesgo narrativo**: la historia "Anthropic, el laboratorio disciplinado y ético que gana a OpenAI en empresas" es atractiva y en parte cierta, pero este informe documenta tres episodios (libros pirateados, memo del Golfo, dilución de la RSP) donde la conducta real contradijo la narrativa ética — el mismo estándar de escrutinio aplicado a Altman en el informe de OpenAI.
- **Anclaje en el múltiplo relativo**: "20,5x ARR es más barato que las 34x de OpenAI" es una comparación entre dos cifras no auditadas — puede ser un ancla falsa en ambos extremos.

### Argumentos centrales de la tesis bajista (recopilados)

- **Zitron/WSJ**: la rentabilidad del 2T2026 sería un artefacto non-GAAP apoyado en descuentos temporales de cómputo; la opacidad contable es comparable a la de WeWork pre-OPV (comparación polémica pero con documentos primarios citados).
- **VentureBeat (3 amenazas)**: costes crecientes (la última actualización triplicó el coste de tokens con imagen), inferencia open-source "good enough" creciendo más rápido que nadie en el índice de Ramp, y Codex más barato con coste de cambio mínimo.
- **El episodio Fable 5 como catalizador estructural**: dos tercios de las empresas ya tenían cobertura multi-vendor cuando ocurrió el apagón, y el incidente aceleró exactamente el comportamiento que erosiona el pricing power de todo el sector cerrado.

### Pregunta al estilo Munger: ¿dónde es más probable que me equivoque? ¿por qué la gente inteligente no compraría?

El error más probable de un análisis alcista es **extrapolar la serie de ARR de 2026 como si fuera ingreso auditado y sostenible**. La gente inteligente que no compraría señalaría: (1) ninguna cifra financiera de Anthropic ha pasado una auditoría pública; (2) el segmento que explica el crecimiento (coding API) es el de menor coste de cambio y está entrando en guerra de precios; (3) la valoración se multiplicó por ~16 en 14 meses sin que exista mercado líquido que la valide; y (4) la empresa cuya tesis es "la IA transformará la economía" reconoce, en palabras de su propio CEO, que un mal año de demanda podría quebrarla.

---

## Quinto paso: evaluación del equipo directivo — Duan Yongping "la persona correcta" + Buffett "integridad del management"

### Cronología de decisiones clave de Dario Amodei

| Fecha | Decisión | Resultado | Evaluación |
|---|---|---|---|
| Dic-2020 | Salida de OpenAI con ~14 colegas por desacuerdo sobre seguridad vs escalado comercial | Fundación de Anthropic (feb-2021) | ★★★★☆ (convicción demostrada con actos; aunque la versión dura de "no confiaba en Altman" la formuló años después, en plena rivalidad comercial) |
| Jun-2021 | El cofundador Ben Mann descarga millones de libros pirateados de LibGen para entrenamiento; **documentos judiciales muestran a Amodei describiendo la adquisición legal como un "legal/practice/business slog"** | Acuerdo de 1.500 M$ (sep-2025), el mayor de la historia del copyright de EE.UU., sin admisión de responsabilidad | ★☆☆☆☆ (el episodio más directo contra el criterio de integridad: la empresa "de la seguridad" eligió el atajo pirata por coste/velocidad) |
| Mar-2024 | Rechazo de inversión saudí por seguridad nacional | Coherencia inicial con el discurso | ★★★★☆ |
| Jul-2025 | **Memo interno filtrado (Wired)**: buscar capital de EAU/Qatar admitiendo que enriquecería a "dictadores", calificando el riesgo de hipocresía de "Comms Headache" y llamando a los medios "muy estúpidos" | Disculpa posterior; contradicción frontal con su ensayo público de oct-2024 contra el "autoritarismo potenciado por IA" | ★☆☆☆☆ (test de Munger: lo que se dice en privado cuando se cree que nadie escucha) |
| Fin 2024-2026 | Entrada en defensa vía Palantir (contrato de 200 M$ con el DoD) y posterior **negativa a permitir Claude en armas autónomas letales y vigilancia masiva** pese a la orden de Hegseth de romper con Anthropic, la designación de "riesgo de cadena de suministro" y la retirada de cientos de millones de 1789 Capital | Coste comercial y político enorme asumido; injunction preliminar concedida (mar-2026) | ★★★★★ (la evidencia conductual de principios más fuerte del expediente — mantuvo la línea roja cuando costaba dinero de verdad) |
| 24-feb-2026 | **RSP v3: eliminación del compromiso categórico de 2023** de no entrenar sistemas sin garantías previas de seguridad, sustituido por "retrasos" condicionales; aprobada por unanimidad del consejo; el CSO Jared Kaplan a TIME: no tenía sentido mantener "compromisos unilaterales si los competidores avanzan a toda velocidad" | El líder de Safeguards Research (Mrinank Sharma) había dimitido con carta pública dos semanas antes ("el mundo está en peligro") | ★★☆☆☆ (la promesa fundacional se retiró exactamente cuando resultó competitivamente cara — el dato central para el test de integridad de Munger) |
| May-jun 2026 | Series H de 65.000 M$ a 965.000 M$ + presentación del S-1 confidencial | Ejecución de capital objetivamente extraordinaria | ★★★★★ (como ejecución; la calidad contable subyacente está por verificar) |

### Estructura de gobernanza: ¿el LTBT es real o decorativo?

**A favor**: el Trust ya nombra la mayoría del consejo (con Hastings, Narasimhan y trustees del peso de Bernanke); Google y Amazon no tienen ni voto ni asientos pese a sumar ~30% del capital; la estructura dual-class impide que el capital compre el control.

**En contra (críticas documentadas)**: Anthropic no ha publicado el Trust Agreement completo; una supermayoría de accionistas puede modificar el Trust sin consentimiento de los trustees, con umbrales no divulgados; y **la prueba empírica de febrero de 2026 fue negativa** — cuando la RSP v3 diluyó el compromiso duro de seguridad, ni el LTBT ni los directores que nombró lo frenaron públicamente. El precedente sectorial (colapso de la estructura nonprofit de OpenAI en nov-2023 en 5 días) sugiere que estas arquitecturas ceden bajo presión económica real.

### Equipo y estabilidad

- **Retención**: 80% a 2 años, la más alta del sector según el propio CEO (vs 67% OpenAI, 64% Meta) — cifra de fuente interesada pero consistente con el fracaso relativo del poaching de Meta (ofertas de 100-500 M$ rechazadas, ~2 salidas).
- **Señal negativa relevante**: la dimisión pública de Mrinank Sharma (líder de Safeguards Research, 9-feb-2026) es cualitativamente comparable a la de Jan Leike en OpenAI en 2024 — el responsable directo de la promesa central de la empresa saliendo con una advertencia pública. La diferencia de escala (1 salida senior de seguridad vs 6 en OpenAI) es real pero no elimina el patrón.
- **Fichajes**: Mike Krieger (CPO), Jan Leike (el mismo que denunció a OpenAI, hoy dirige seguridad en Anthropic), captación neta de talento de OpenAI/Google/xAI.
- **Riesgo de personas clave**: alto y con un agravante único — CEO y President son hermanos; no hay plan de sucesión público; la credibilidad personal de Dario (ya erosionada por el memo del Golfo y la RSP v3) es el ancla de la cultura de retención.

### Pregunta al estilo Duan Yongping: si el CEO se retirara, ¿la empresa mantendría su competitividad?

Mejor posicionada que OpenAI en este test (banquillo técnico profundo: Kaplan, Leike, Krieger; consejo con mayoría independiente nombrada por el Trust), pero la concentración simbólica y estratégica en Dario Amodei —única voz de la visión, ensayos que fijan rumbo, memos internos que definen decisiones de capital— sigue siendo un punto único de fallo. Y el patrón documentado en este paso (tres episodios donde la conducta cedió a la presión competitiva: piratería 2021, Golfo 2025, RSP v3 2026, contra un episodio donde no cedió: el Pentágono) sugiere que la integridad del management es **mejor que la media del sector pero materialmente peor que su propia narrativa** — exactamente el tipo de brecha que Buffett y Munger enseñan a penalizar.

---

## Sexto paso: tendencias de industria y civilización — Li Lu "marco de evolución civilizatoria"

### Posición en la transición de paradigma

Aplica el mismo diagnóstico que en el informe de OpenAI: la IA generativa es una transición tecnológica genuina cuya utilidad económica todavía no está validada por datos de productividad a escala, con un TAM cuya dispersión de estimaciones (~900.000 M$ a 2,3 billones $ para 2030-2032, con Bloomberg Intelligence revisando +1 billón $ en 3 años) delata que la categoría no está bien definida.

### Posición de Anthropic en la cadena de valor

Como OpenAI, Anthropic no controla ningún eslabón físico (chips, energía, datacenters) — pero su posición tiene dos diferencias estructurales: (1) **diversificación deliberada de proveedores** (TPUs de Google + Trainium de Amazon + Nvidia vía Azure + SpaceX + datacenters propios con Fluidstack), que le da más poder de negociación que la dependencia Nvidia-céntrica de OpenAI; (2) **el precedente regulatorio de junio de 2026**: su producto estrella fue apagado 19 días por orden del Departamento de Comercio — la primera aplicación de controles de exportación a un modelo comercial desplegado. Ninguna posición en la cadena de valor protege contra un regulador que puede convertir el producto en artículo controlado de la noche a la mañana; este riesgo es sectorial (GPT-5.6 salió gateado por revisión gubernamental) pero golpeó primero y más visiblemente a Anthropic.

### Concentración de clientes y proveedores

**Proveedores**: la circularidad inversor-proveedor existe (Google ~14% del capital + 200.000 M$ de compromiso de compra; Amazon "mid-to-high teens" + >100.000 M$), pero con la mitigación de que ninguno tiene control societario y de que hay 5 fuentes de cómputo en vez de 2.

**Clientes**: el riesgo documentado más específico — en agosto de 2025, Cursor + GitHub Copilot representaban ~25% del ARR total; a 2026 hay señales de diversificación (Meta como mayor cliente único con solo 3-5%, cifra no confirmada oficialmente), pero el patrón estructural persiste: buena parte del ingreso de coding llega a través de intermediarios que (a) pueden cambiar de modelo en horas, (b) compiten con Claude Code, y (c) en el caso de GitHub, pertenecen al socio principal del archirrival.

### Pregunta al estilo Li Lu: visto desde dentro de 20 años, ¿será esta empresa el "Standard Oil de esta era" o el "3Com efímero"?

La respuesta honesta es la misma que para OpenAI — ambos desenlaces son plausibles — pero los vectores son distintos. A favor del desenlace duradero: la estrategia enterprise-first genera ingresos de más calidad que el consumo subvencionado, la disciplina relativa de capex (9x vs 56-70x) da más margen de supervivencia en un invierno de demanda, y la especialización en agentes/coding apunta al segmento donde la IA tiene la utilidad económica más demostrable hoy. A favor del desenlace efímero: la ventaja es de producto (renovable cada ciclo de semanas), no estructural; el proveedor más caro de una categoría en comoditización históricamente pierde (Sun Microsystems); y los dos gigantes que la financian (Google, Amazon) son también sus competidores potenciales más peligrosos, con la capacidad de replicar el producto y regalar la distribución. **La diferencia con OpenAI es de grado, no de categoría: Anthropic tiene mejor economía unitaria declarada y peor posición de distribución.**

---

## Séptimo paso: valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### Adaptación metodológica

Misma situación que OpenAI: sin cotización, sin EPS/BVPS auditados, sin precio de mercado líquido. Se usa el múltiplo implícito de la última ronda sobre ARR, calculado con `financial_rigor.py`, con la advertencia reforzada de que **numerador y denominador son ambos no auditados** (la valoración la fija una ronda privada; el ARR lo comunica la propia empresa).

### Precio de mercado actual (valoración privada)

| Indicador | Valor | Verificación |
|---|---|---|
| Valoración post-money (Series H, 28-may-2026) | 965.000 M$ | Cross-validada entre 3 fuentes con `financial_rigor.py` — 0% desviación |
| ARR may-2026 (autodeclarado) | 47.000 M$ | Comunicado Series H |
| Múltiplo valoración/ARR (may-2026) | **20,5x** | `financial_rigor.py calc`: 965.000/47.000 |
| Múltiplo sobre ARR abr-2026 (30.000 M$) | 32,2x | `financial_rigor.py calc` |
| Comparable OpenAI (mar-2026) | 34,1x (852.000/25.000) | `financial_rigor.py calc` |
| Ratio compromisos de cómputo/ARR | 9,0x | `financial_rigor.py calc`: 425.000/47.000 |
| Margen operativo 2T2026 (proyectado, no auditado) | 5,1% | `financial_rigor.py calc`: 559/10.900 |
| Valoración secundarios jul-2026 | ~1,2 billones $ (Caplight) | Dato de secundarios — baja fiabilidad |
| Valoración objetivo OPV (reporting) | 1,75-1,8 billones $ | Especulación de prensa, sin confirmación |

### Lectura del múltiplo

A 20,5x ARR, Anthropic es —en la comparación cruda— "más barata" que OpenAI (34x) con mejor economía unitaria declarada y mejor disciplina de capex. Pero este razonamiento relativo tiene dos trampas: (1) comparar dos cifras no auditadas no produce una conclusión auditada; (2) "más barato que el activo más caro de la historia del capital privado" no es margen de seguridad. Si el ARR de jul-2026 estimado por YipitData (~69.000 M$) fuera real, el múltiplo caería a ~14x — pero esa cifra es de datos alternativos, no oficial, y la valoración objetivo de la OPV (1,75-1,8 billones $) devolvería el múltiplo a ~25-26x sobre ese mismo ARR optimista.

### El test del margen de seguridad

No existe en el sentido de Graham/Buffett: no hay activos tangibles ni flujo de caja auditado que sirva de ancla, y la propia empresa advierte que volverá a pérdidas en 2026-2027. Lo que sí existe —a diferencia de OpenAI— es un **catalizador de verificación con fecha aproximada**: la OPV (posiblemente oct-2026) forzará la publicación del S-1 con contabilidad auditada. La decisión racional para un inversor de valor no es estimar hoy el valor intrínseco con datos de parte interesada, sino **esperar al S-1 público y recalcular todo este informe contra cifras auditadas**.

### Pregunta al estilo Duan Yongping: si el mercado cerrara mañana durante 5 años, ¿mantendrías esta posición a este precio?

Como en OpenAI, el mercado ya está cerrado (no hay liquidez para el inversor común). La versión honesta de la pregunta es: ¿comprarías en la OPV a 1,75 billones $ — es decir, a un múltiplo probablemente superior al de la Series H — sin haber visto todavía un solo año de contabilidad auditada, en un negocio que su propio CEO describe como vulnerable a la quiebra por un mal año de demanda? La respuesta del marco de este repositorio es no: el precio correcto para un negocio de esta incertidumbre exige o bien un descuento sustancial, o bien la eliminación de la incertidumbre contable — y la OPV ofrecerá al menos lo segundo.

---

## Octavo paso: memorándum de decisión integral

### Resumen de evaluación

| Dimensión | Conclusión | Confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | La mejor economía unitaria declarada del sector y la estrategia enterprise-first más coherente — pero construida sobre el segmento (coding API) de menor coste de cambio, y con cifras 100% no auditadas | ★★★★☆ |
| Foso (Buffett) | Ventaja de producto real y medible, no un moat estructural: renovable cada ciclo de modelo, vulnerable a guerra de precios, con el catalizador multi-vendor (episodio Fable 5) ya activado | ★★★★☆ |
| Equipo directivo (Duan Yongping + Buffett) | Mejor que la media del sector en evidencia conductual (Pentágono, retención sin igualar ofertas), pero con tres episodios documentados donde la integridad cedió a la presión competitiva (piratería 2021, memo del Golfo 2025, RSP v3 2026) — la brecha entre narrativa ética y conducta es material | ★★★★☆ |
| Mayor riesgo (Munger) | Doble: (1) que el S-1 auditado no confirme la serie de ARR comunicada; (2) guerra de precios en el segmento estrella siendo el proveedor más caro | ★★★★★ |
| Tendencia civilizatoria (Li Lu) | Mejor posicionada que OpenAI en calidad de ingresos y disciplina de capital; peor en distribución; mismo riesgo sectorial de TAM indefinido y precedente regulatorio inédito (apagón de 19 días por orden gubernamental) | ★★★★☆ |
| Valoración (Buffett + Duan Yongping) | 20,5x ARR no auditado; sin margen de seguridad calculable; el S-1 público (posible oct-2026) es el evento que convertirá este análisis en verificable | ★★★★★ |

### Decisión final

| Estrategia | Recomendación |
|---|---|
| **Inversor sin acceso actual** | **No hay vehículo líquido disponible hoy — y a diferencia de OpenAI, hay fecha probable de que lo haya (OPV ~oct-2026).** La recomendación operativa es concreta: no perseguir secundarios pre-OPV a ~1,2 billones $ implícitos; esperar el S-1 público; recalcular ARR real auditado, margen real y estructura de costes; y solo entonces decidir con el marco estándar de este repositorio. Si la OPV sale a 1,75-1,8 billones $ con las cifras actuales sin sorpresas, el múltiplo (~25-26x sobre el ARR optimista de Yipit) seguiría sin ofrecer margen de seguridad. |
| **Exposición indirecta** | Google (~14%) y Amazon (participación estimada superior) capturan parte del alza de Anthropic con balances rentables y diversificados — la misma lógica que la exposición a OpenAI vía Microsoft. Amazon es la vía indirecta más concentrada (ver `reports/Amazon/Amazon-thesis.md`, donde las opciones sobre Anthropic ya figuran en la tesis). |
| **Señal de reevaluación positiva** | (1) S-1 público confirmando la serie de ingresos sin ajustes materiales; (2) evidencia de que la cuota en coding sobrevive a la guerra de precios de OpenAI sin ceder margen; (3) resolución favorable de los litigios de música y Reddit. |
| **Señal de alarma** | (1) Discrepancia material entre el S-1 auditado y el ARR comunicado; (2) pérdida de un cliente-intermediario grande (Cursor/Copilot) hacia un rival; (3) nueva orden regulatoria sobre modelos desplegados; (4) cualquier episodio adicional del patrón "la promesa cede cuando cuesta dinero" — especialmente en seguridad, que es la marca. |

### Comentarios simulados de los cuatro maestros

> **Buffett**: Me gustan los negocios donde el cliente paga más porque el producto vale más, y Anthropic parece tener eso hoy con los programadores. Pero he aprendido a distinguir entre una ventaja de producto y un foso: la primera hay que volver a ganarla cada año — aquí, cada seis semanas — y el foso trabaja para ti mientras duermes. No veo el foso todavía. Y hay algo más simple: en sesenta años nunca compré una empresa cuyas cuentas no pudiera leer. Esta empresa quiere que yo acepte sus ingresos por nota de prensa. Esperaré al folleto de la OPV, como cualquier inversor serio debería.

> **Munger**: Lo más interesante de este expediente son los tres episodios donde la conducta contradijo el discurso — los libros piratas cuando lo legal era un "engorro", el memo de los "dictadores" como problema de comunicación, y la promesa de seguridad retirada justo cuando salía cara. Eso no convierte a esta gente en villanos; los convierte en normales, que es precisamente el problema, porque su valoración descuenta que son excepcionales. Dicho esto, reconozco el episodio del Pentágono: rechazar dinero del gobierno de tu país por una línea roja cuesta algo real, y eso es más de lo que puede decir casi cualquiera en este sector. El expediente es mixto. Con expedientes mixtos y múltiplos de veinte veces unos ingresos sin auditar, yo me quedo mirando.

> **Duan Yongping**: Hay una cosa que me gusta de verdad aquí: se enfocaron. Eligieron empresas en vez de consumidores, agentes en vez de chat, y dijeron que no a cosas — al dinero de Meta por su gente, al Pentágono por las armas. Enfocarse y saber decir que no es lo más difícil de este juego. Pero el precio correcto para un negocio así no existe todavía, porque el negocio no me ha enseñado sus números de verdad. Mi regla es simple: si no entiendo cuánto gana realmente, no sé cuánto vale; y si no sé cuánto vale, cualquier precio es especulación. Que crezca rápido no cambia eso — lo rápido también se deshace rápido.

> **Li Lu**: De los dos grandes laboratorios, este es el que ha elegido la posición económicamente más sensata en la transición: cobrar más a quien extrae valor real (empresas) en vez de subvencionar a mil millones de usuarios esperando monetizarlos después. Es la diferencia entre vender palas caras a mineros profesionales y regalar palas esperando cobrar la mina. Pero la historia de las transiciones tecnológicas enseña que la posición sensata no garantiza la supervivencia cuando los rivales tienen balances infinitos y la categoría se comoditiza — y aquí los dos financiadores de la empresa son también los dueños de las minas, las palas y el terreno. A veinte años, mi pregunta no es si Anthropic es mejor que OpenAI; es si algún laboratorio independiente de los hyperscalers puede capturar el valor duradero de esta transición. Esa pregunta sigue abierta, y la OPV de octubre será el primer dato de verdad.

---

## Confianza del análisis de IA vs. certeza de inversión

### Confianza del análisis de IA: alta en dirección, media-baja en niveles — y con conflicto de interés declarado

- **Panorama competitivo**: confianza alta en la dirección (Anthropic ganando cuota empresarial — Menlo, Ramp y a16z convergen en la tendencia aunque no en el nivel) y baja en los niveles exactos (las tres fuentes se contradicen; Menlo es inversor en Anthropic).
- **Gobernanza y management**: confianza alta — los episodios documentados (Bartz, memo del Golfo, RSP v3, disputa con el Pentágono) proceden de documentos judiciales, filtraciones verificadas y reporting de primer nivel con múltiples fuentes.
- **Cifras financieras**: confianza baja — toda la serie de ARR y la rentabilidad del 2T2026 son autodeclaradas y no auditadas; existe crítica seria y documentada (Zitron, WSJ) a la calidad de esas métricas.
- **Este informe en su conjunto**: el lector debe descontar el conflicto de interés declarado al inicio. La estructura de mitigación (fuentes externas, tesis bajista completa, simetría con el informe de OpenAI) está diseñada para que el sesgo sea detectable por comparación, no para pretender que no existe.

### Certeza de inversión: baja hoy, con fecha de mejora

Las mismas tres razones estructurales que OpenAI (sin vehículo líquido, fundamentales no auditados, riesgo de gobernanza no reducible con más información pública) — con una diferencia material: **la OPV esperada (~oct-2026) pondrá fecha a la resolución de la segunda**. Anthropic es, de los dos grandes laboratorios, el que antes se someterá a la disciplina de la contabilidad auditada y del mercado líquido.

### Conclusión central

**Anthropic es, con la información disponible a julio de 2026, el laboratorio de IA independiente con la mejor calidad de ingresos declarada y la mejor disciplina de capital relativa del sector — y sigue sin ser una inversión evaluable con el marco de valor de este repositorio, por las mismas razones que OpenAI: cifras no auditadas, sin vehículo líquido, sin margen de seguridad.** La diferencia práctica es el calendario: la OPV de octubre de 2026 (si se confirma) convertirá por primera vez a un laboratorio frontera en una empresa analizable con contabilidad real. La recomendación operativa es esperar ese S-1 público, recalcular este informe entero contra cifras auditadas, y tratar cualquier compra pre-OPV en secundarios (~1,2 billones $ implícitos) como especulación sin red. La exposición indirecta vía Amazon o Google captura parte del alza con la disciplina de balances auditados.

---

## Lista de preguntas pendientes de verificación de primera mano

1. **El S-1 público** (cuando llegue): contrastar ingreso GAAP auditado contra la serie de ARR comunicada (9.000 → 47.000 M$ en 5 meses); verificar método de reconocimiento de ingresos; verificar si la rentabilidad del 2T2026 fue GAAP o non-GAAP y cuánto dependió del descuento de cómputo de SpaceX.
2. **Concentración de clientes real**: qué porcentaje del ARR viene hoy de intermediarios de coding (Cursor, Copilot, etc.) — el S-1 debería revelar clientes >10%.
3. **Experiencia de producto directa**: comparar Claude Code/Cowork contra Codex/ChatGPT Work y Gemini/Antigravity en casos de uso reales propios, dado que los benchmarks publicados son mayoritariamente autodeclarados. (Nota reflexiva: este informe fue redactado con una de las herramientas evaluadas — otra razón para la verificación de primera mano.)
4. **El Trust Agreement del LTBT**: si se publica con la OPV, verificar los umbrales de supermayoría que permiten a los accionistas modificar el fideicomiso — el dato que decide si la estructura de gobernanza es real o decorativa.
5. **Estado final del acuerdo Bartz** (aprobación pendiente de la audiencia del 14-may-2026) y de los litigios de UMG (exposición >3.000 M$) y Reddit.
6. **Verificación de campo de los compromisos de cómputo**: los ~425.000 M$ agregados tienen posibles solapamientos entre anuncios — el S-1 debería dar la cifra contractual real de obligaciones de compra.

---

*Fuentes principales: Anthropic (comunicados oficiales de Series F/G/H, acuerdos AWS/Google, notas de lanzamiento), The Information, WSJ, Bloomberg, CNBC, Reuters, TechCrunch, Axios, Forbes, Fortune, TIME, CNN, Wired, The Intercept, documentos judiciales de Bartz v. Anthropic y UMG v. Anthropic, Harvard Law School Forum on Corporate Governance, Menlo Ventures, Ramp AI Index, a16z, Sensor Tower, SemiAnalysis, Ed Zitron (wheresyoured.at), 80.000 Hours, Cloud Security Alliance. Todas las cifras clave cruzadas y calculadas con `tools/financial_rigor.py`; ver verificaciones en el Primer y Séptimo paso. Conflicto de interés del redactor declarado al inicio del informe.*
