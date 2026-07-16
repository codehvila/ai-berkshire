# OpenAI Group PBC — Investigación Multi-Agente de Empresa No Cotizada

**Fecha del informe**: 15 de julio de 2026
**Metodología**: 6 analistas en paralelo (modelo de negocio, financiero/valoración, competencia, riesgo/gobierno, tecnología/IP, señales alternativas) + arbitraje cruzado del team-lead
**Informes complementarios en el repositorio**: `reports/OpenAI/OpenAI-investment-research-20260714.md` (marco de los 4 maestros, 14-jul-2026) y `reports/OpenAI/OpenAI-tech-ip-20260715.md` (detalle completo del analista de tecnología)

> "El riesgo viene de no saber lo que estás haciendo." — Warren Buffett (traducción)

**Advertencia de sesgo de investigación con IA (principio rector de este informe)**: OpenAI es una empresa privada en pleno proceso confidencial hacia una posible salida a bolsa — el ecosistema informativo sobre ella en julio de 2026 mezcla comunicados oficiales verificables con especulación de mercado secundario, filtraciones de medios (The Information, FT, New Yorker) y contenido reciclado. Esta investigación es además especialmente delicada porque el patrón central que emerge de tres de los seis analistas es de **opacidad informativa deliberada**: la propia dificultad para verificar cifras es, en este caso, un hallazgo, no solo una limitación. Cada dato se marca con su nivel de confianza (🟢 alta / 🟡 media / 🔴 baja) y se prefiere dejar constancia de "no se sabe" antes que rellenar huecos con inferencias disfrazadas de hechos.

---

## 1. Conclusión en una frase

OpenAI es el líder de distribución de consumo de la IA generativa (~900M-1.000M de usuarios semanales de ChatGPT) y el nombre más reconocible del sector, pero es simultáneamente la empresa de peor calidad de gobierno, mayor opacidad financiera y foso más erosionado de las tres grandes de frontera: ha sido superada por Anthropic en cuota de API empresarial *y* en valoración implícita por ARR, cotiza a una prima del 66% sobre Anthropic en múltiplo valoración/ARR pese a crecer más despacio y quemar más caja, arrastra un patrón verificado y repetido de falta de transparencia de su fundador-CEO, y sostiene compromisos de infraestructura (~1,15 billones de dólares) que superan en ~16 veces su caja disponible — un perfil de "mejor marca, peores fundamentos, precio más caro" que exige extraordinaria fe en la ejecución y en el propio Sam Altman.

---

## 2. Ficha de la empresa

| Campo | Dato | Confianza |
|---|---|---|
| Nombre legal | OpenAI Group PBC (Public Benefit Corporation) bajo la OpenAI Foundation (sin ánimo de lucro) | 🟢 |
| Fundación | 2015 (como laboratorio sin ánimo de lucro) | 🟢 |
| Sede | San Francisco, California | 🟢 |
| CEO | Sam Altman | 🟢 |
| Negocio principal | ChatGPT (consumo, ~85% del ARR) + API para desarrolladores + Enterprise/Team | 🟢 |
| Usuarios | ~900M-1.000M usuarios semanales activos de ChatGPT (jun-2026) | 🟡 |
| Empleados | Discrepancia sin reconciliar: 7.850 (dic-2025, Reveliolabs) vs. ~4.500 (mar-2026, otra fuente); objetivo declarado ~8.000 en 2026 | 🔴 |
| Última valoración (primaria/tender) | ~852.000 M$ (mar-2026, tender secundario de empleados con SoftBank/inversores) | 🟢 |
| ARR más reciente | ~20.000-25.000 M$ (1S-2026, estimaciones convergentes de terceros; la propia OpenAI no lo confirma con comunicado auditado) | 🟡 |
| Inversores/estructura de control | OpenAI Foundation (sin ánimo de lucro) ~26% y **control de la junta**; Microsoft ~27% (exposición económica); empleados+otros ~47% | 🟢 (control) / 🟡 (porcentajes exactos) |
| Proceso de salida a bolsa | S-1 confidencial presentado ante la SEC el 8-jun-2026; Altman se resistiría a cotizar por debajo de 1 billón $, lo que podría retrasar la IPO a 2027 | 🟢 (filing) / 🟡 (timing) |

**Nota estructural clave**: tras la reestructuración de 2025, los inversores externos (incluido Microsoft) tienen **exposición económica pero no control**: la OpenAI Foundation sin ánimo de lucro retiene el control de la junta. Esto es lo contrario de una empresa cotizada normal y debe pesar en cualquier tesis — quien invierta compra flujo económico, no gobierno.

---

## 3. Tabla de seis evaluaciones

| Dimensión | Analista | Puntuación | Juicio central | Confianza | Completitud de información |
|---|---|---|---|---|---|
| Modelo de negocio y usuarios | business-decoder | ★3/5 | Distribución de consumo dominante (900M usuarios semanales), pero margen bruto comprimiéndose (40%→33%), Sora cerrado por economía insostenible y pérdida de cuota de API empresarial frente a Anthropic (~27% vs ~40%) | Media | Moderada |
| Financiero y valoración | financial-detective | Rango: conservador 300-450 B$ / central 700-900 B$ / optimista >1,2 T$ | Múltiplo de 34,1x ARR (66% de prima sobre Anthropic) sin cifras auditadas; compromisos de infra ~1,15 T$ vs caja ~73 B$ | Media | Débil en costes/caja |
| Industria y competencia | competitive-mapper | ★2,5/5 (atractivo de industria) | Anthropic superó a OpenAI en ARR ($47B vs ~$20-25B) *y* en valoración ($965B vs $852B); Apple eligió Gemini (no ChatGPT) para Siri; modelos abiertos chinos >45% del volumen de tokens en OpenRouter | Media | Media |
| Riesgo y gobierno | risk-governance-analyst | ★2/5 (confianza en el equipo directivo) | Patrón verificado y repetido de opacidad de Altman (exposé New Yorker, dossier de Sutskever, testimonio en juicio Musk v. Altman); gaffe de "government backstop" de la CFO | Media-alta | ~75% |
| Tecnología y propiedad intelectual | tech-ip-analyst | Foso: DÉBIL-MEDIO | Liderazgo de capacidad rota cada 4-8 semanas; 110 patentes (modestas); éxodo del núcleo fundador (Sutskever, Murati, McGrew); sin control de cadena de cómputo | Media | Media, con puntos ciegos explícitos |
| Señales alternativas | signal-miner | — (no aplica ★) | Stargate posiblemente estancado (el JV nunca contrató personal según The Information/FT); IPO posiblemente retrasada a 2027; 6ª salida senior de seguridad en 2 años; financiación "circular" con AMD/Nvidia/CoreWeave | Media-alta | Buena en señales de producto/legal |

**Puntuación cualitativa global (por consenso de lectura entre analistas, sin promediar mecánicamente): ★2,5-3/5** — un activo de marca y distribución de primer orden mundial, montado sobre los fundamentos de gobierno, transparencia y foso competitivo más débiles de las tres grandes, y al precio relativo más caro. La distancia entre la fortaleza de la narrativa pública y la debilidad de los fundamentos verificables es, en sí misma, el hallazgo central de esta investigación.

---

## 4. Datos clave — solo los que resistieron validación cruzada entre ≥2 analistas

| Indicador | Dato | Fuentes que coinciden | Confianza |
|---|---|---|---|
| Usuarios semanales de ChatGPT | ~900M-1.000M (jun-2026) | business-decoder, tech-ip-analyst | 🟢 |
| ARR OpenAI (1S-2026) | ~20.000-25.000 M$ | business-decoder, financial-detective, competitive-mapper | 🟡 |
| Valoración OpenAI (tender mar-2026) | ~852.000 M$ | financial-detective, competitive-mapper, risk-governance-analyst | 🟢 |
| Múltiplo valoración/ARR OpenAI | 34,08x (852/25) vs. Anthropic 20,53x (965/47) — prima del **66%** (verificado con `financial_rigor.py`) | financial-detective (cálculo propio) | 🟢 (cálculo) / 🟡 (insumos) |
| Anthropic superó a OpenAI en ARR y valoración | Anthropic $47B ARR / $965B val. vs OpenAI ~$20-25B ARR / $852B val. | competitive-mapper, financial-detective | 🟢 |
| Cuota de API empresarial | OpenAI ~27% vs Anthropic ~40% (Menlo Ventures) | business-decoder, competitive-mapper | 🟢/🟡 |
| Margen bruto en compresión | ~40% → ~33% | business-decoder | 🟡 (fuente única) |
| Compromisos de infraestructura | ~1,15 billones $ comprometidos vs. caja ~73.000 M$ (ratio ~15,75x) | financial-detective, tech-ip-analyst (Stargate/Nvidia/AMD/Oracle) | 🟢 (compromisos) / 🟡 (caja) |
| Estructura de control | Foundation ~26% + control de junta / Microsoft ~27% / empleados ~47% | financial-detective, risk-governance-analyst | 🟢 |
| S-1 confidencial presentado | 8-jun-2026 | risk-governance-analyst, signal-miner | 🟢 |
| Cierre de Sora | Discontinuado por economía insostenible | business-decoder, signal-miner | 🟡 |
| Éxodo del núcleo fundador de investigación | Sutskever (may-2024), Murati (sep-2024), McGrew (sep-2024) | tech-ip-analyst, risk-governance-analyst | 🟢 |
| Patentes globales | 110 (58 familias) vs Anthropic ~39 | tech-ip-analyst | 🟡 |
| Modelos abiertos chinos en OpenRouter | >45% (competitive-mapper) / ~61% de tokens (tech-ip) | competitive-mapper, tech-ip-analyst | 🟡 |

---

## 5. Matriz de arbitraje de datos en conflicto

| Dato | Versión A | Versión B | Desviación | Resolución del team-lead |
|---|---|---|---|---|
| ARR de OpenAI | ~20.000 M$ (competitive-mapper) | ~25.000 M$ (financial-detective, usado en el múltiplo) | ~25% | Se usa 25.000 M$ para el cálculo del múltiplo por prudencia (favorece a OpenAI, da un múltiplo *menor*); se advierte que ninguna cifra está auditada y que la propia OpenAI no publica ARR con comunicado oficial como sí hace Anthropic |
| Empleados totales | 7.850 (dic-2025, Reveliolabs) | ~4.500 (mar-2026, otra fuente) | ~75% | **No reconciliable.** El tech-ip-analyst ya documentó que la propia fuente de 7.850 es aritméticamente inconsistente (declara 54,9% de crecimiento cuando el cálculo da 75,7%). Se marca 🔴 y no se usa el headcount exacto en ninguna conclusión |
| Estado de Stargate | Oficialmente >10 GW comprometidos y sitio Abilene parcialmente operativo (tech-ip, fuentes oficiales) | El JV "nunca contrató personal", posible estancamiento (signal-miner, vía The Information/FT) | Contradicción narrativa | Se presentan **ambas**: el capital comprometido y los sitios físicos son verificables (🟢), pero la ejecución operativa del vehículo conjunto está cuestionada por filtraciones creíbles (🟡). No se resuelve — es precisamente el tipo de brecha entre anuncio y ejecución que esta empresa exhibe repetidamente |
| Valoración "real" | 852.000 M$ (tender de mercado) | Rango propio del financial-detective: central 700-900 B$, conservador 300-450 B$ | Hasta ~2x a la baja | El financial-detective sostiene que el precio de tender refleja escasez de oferta secundaria y FOMO, no un análisis de flujos; su rango central (700-900 B$) queda por debajo o en el borde del tender. Se documenta la discrepancia como señal de que el precio de mercado puede tener poco soporte fundamental |
| Cuota de modelos chinos | >45% del volumen de tokens en OpenRouter (competitive-mapper) | ~61% de tokens (tech-ip-analyst) | ~16 p.p. | Distintas ventanas/metodologías de medición; ambas apuntan a lo mismo (los modelos abiertos chinos ya son mayoría o casi-mayoría del uso en el router neutral más grande). Se reporta el rango, no un punto |

---

## 6. Matriz de consistencia de señales

| Prueba de consistencia | Señal A | Señal B | Consistencia | Lectura |
|---|---|---|---|---|
| Narrativa de liderazgo vs. posición competitiva real | "OpenAI es el líder de la IA" | Anthropic la superó en ARR ($47B vs ~$25B) *y* valoración ($965B vs $852B); Apple eligió Gemini para Siri | ❌ Inconsistente | El liderazgo de OpenAI es de *marca y distribución de consumo*, no de negocio empresarial ni de valoración. La narrativa popular va por detrás de los datos |
| Nivel de valoración vs. fundamentos | Prima del 66% en múltiplo valoración/ARR sobre Anthropic | Crece más despacio, quema más caja, peor gobierno, foso más débil | ❌ Inconsistente | El mercado privado paga *más* por la empresa con *peores* métricas verificables — se explica por marca/momentum/tamaño de usuarios, no por fundamentos. Señal de riesgo de valoración |
| Narrativa de infraestructura vs. ejecución | Stargate: hasta 500.000 M$, >10 GW comprometidos | El JV "nunca contrató personal"; financiación circular con AMD/Nvidia/CoreWeave | ⚠️ Parcialmente inconsistente | Capital anunciado ≠ capacidad ejecutada. El patrón de anuncios grandilocuentes con ejecución opaca se repite |
| Narrativa de misión de seguridad vs. acción real | "AGI en beneficio de toda la humanidad" | 6ª salida senior de seguridad en 2 años; 9 demandas por suicidio/autolesión vinculadas a ChatGPT; retirada de salvaguardas alegada | ❌ Inconsistente | Grieta grave y repetida entre la misión declarada y las señales verificables de comportamiento del producto y retención de personal de seguridad |
| Transparencia declarada vs. patrón documentado del CEO | Imagen pública de Altman como líder responsable de la IA | Exposé del New Yorker (abr-2026), dossier de 70 páginas de Sutskever, testimonio en juicio Musk v. Altman (may-2026) sobre patrón de opacidad | ❌ Inconsistente | Es el hallazgo más consecuente de la dimensión de gobierno: múltiples fuentes independientes y bajo juramento describen un patrón de falta de transparencia del fundador-CEO |
| Señal de IPO: prisa vs. freno | S-1 confidencial presentado 8-jun-2026 (avanza) | Altman se resistiría a cotizar por debajo de 1 billón $; IPO podría retrasarse a 2027 | ⚠️ Mixta | La empresa prepara el terreno legal pero el CEO condiciona el momento a alcanzar una valoración psicológica — sugiere que la valoración es tanto objetivo como restricción |

---

## 7. Los hallazgos más importantes por dimensión (síntesis)

**Modelo de negocio**: OpenAI es esencialmente un negocio de *consumo* (ChatGPT ~85% del ARR, 900M-1.000M usuarios semanales) con un negocio de API empresarial más pequeño y en retirada de cuota (~27% vs ~40% de Anthropic). El margen bruto se comprime (~40%→~33%) y el cierre de Sora por "economía insostenible" es una señal concreta de que no todos sus productos de frontera son viables al coste de cómputo actual.

**Financiero**: cotiza a 34,08x ARR — una prima del **66%** sobre Anthropic (20,53x) — pese a tener menor ARR, menor crecimiento y peor gobierno. Los compromisos de infraestructura (~1,15 billones $) superan la caja disponible (~73.000 M$) en ~16 veces, lo que implica una dependencia total de rondas de financiación y flujos futuros que aún no existen. No hay cifras auditadas de caja/EBITDA/margen.

**Competencia**: el hecho más duro de esta investigación es que **Anthropic ha superado a OpenAI tanto en ARR como en valoración**, y que Apple eligió Gemini (no ChatGPT) para Siri. La industria es de rivalidad máxima con liderazgo rotatorio y una amenaza de sustitución open-source (modelos chinos >45% de los tokens de OpenRouter) que golpea justo el segmento de API donde OpenAI es más débil.

**Riesgo/gobierno**: es la dimensión peor puntuada (★2/5). Existe un patrón *verificado y multi-fuente* de opacidad del CEO Sam Altman: el exposé del New Yorker (abr-2026), el dossier de 70 páginas de Ilya Sutskever y el testimonio bajo juramento en el juicio Musk v. Altman (may-2026, aunque el jurado desestimó las reclamaciones de Musk por prescripción). Sumado a la estructura donde los inversores externos no tienen control de junta, el riesgo de gobierno es estructural, no anecdótico.

**Tecnología**: foso débil-medio. El liderazgo de capacidad rota cada 4-8 semanas; Anthropic ya lidera claramente en codificación real; la cartera de 110 patentes es modesta; el núcleo fundador de investigación (Sutskever, Murati, McGrew) se marchó en 18 meses; y no controla su cadena de cómputo (depende de Microsoft, Nvidia, Oracle, AMD, CoreWeave a la vez). Ventaja real única y clara: distribución de consumo.

**Señales alternativas**: las señales apuntan a fricción bajo la superficie — Stargate posiblemente estancado a nivel operativo, IPO posiblemente aplazada a 2027, 6ª salida senior de seguridad en 2 años, y una estructura de financiación "circular" (AMD/Nvidia/CoreWeave son a la vez proveedores, inversores y clientes de capacidad) que reproduce el mismo riesgo de opacidad que el BIS señaló para el conjunto del sector.

---

## 8. Evaluación de foso económico (síntesis de las 6 dimensiones)

| Tipo de foso | Evaluación | Evidencia | Tendencia |
|---|---|---|---|
| Efecto de red / marca de consumo | **Fuerte** (única ventaja clara) | ChatGPT ~900M-1.000M usuarios semanales; "ChatGPT" es sinónimo popular de IA; hábito y distribución dominantes | Se mantiene, pero no se traduce en las demás dimensiones |
| Efecto de red de datos | Débil / no demostrado | Mayor volumen de feedback conversacional, pero Anthropic/Google compiten a la par o superan en benchmarks sin bases de usuarios comparables — la conversión "más datos → mejor modelo" no está demostrada | Incierta — punto ciego central |
| Coste de cambio | Débil | Interfaces API sustancialmente intercambiables; la fuga de cuota empresarial a Anthropic demuestra baja retención en el segmento de mayor margen | Debilitándose |
| Marca empresarial (B2B) | Débil y en retroceso | Cuota de API cayó de ~50% a ~27%; Apple eligió Gemini para Siri | Debilitándose |
| Patentes / protección legal | Débil | 110 patentes, no usadas ofensivamente; modesto para su tamaño | Estable-débil |
| Escala de cómputo | Moderada en compromiso, débil en control | Stargate >10 GW comprometidos (agresivo), pero sin chip propio operativo (Titan H2-2026, uso interno) y dependencia de 5 proveedores externos | Mejorando lentamente vía Titan |
| Talento | Debilitándose | Éxodo completo del núcleo fundador de investigación salvo Altman; >20 salidas de alto perfil en 12 meses | Debilitándose |

**Calificación global del foso: DÉBIL-MEDIO** (coincide con la conclusión independiente del analista de tecnología). El único foso fuerte y verificable es la marca/distribución de consumo de ChatGPT — un activo real y muy valioso, pero que (a) no se ha traducido en ventaja empresarial, de valoración ni de capacidad de modelo, y (b) es el tipo de foso más vulnerable a un cambio de hábito o a la aparición de un producto de consumo superior. Es lo contrario del foso "castillo con puente levadizo" (ASML): es un foso de reconocimiento de marca, defendible mientras el hábito persista, erosionable si el producto deja de liderar.

---

## 9. Argumentos de inversión

### 🟢 A favor (con fuente)
1. Marca y distribución de consumo dominantes: ~900M-1.000M usuarios semanales de ChatGPT, el producto de IA más reconocible del mundo — business-decoder, tech-ip-analyst.
2. Escala de compromiso de infraestructura sin igual entre laboratorios independientes (Stargate, hasta 500.000 M$, >10 GW comprometidos) — tech-ip-analyst, financial-detective.
3. Cadencia de producto rápida (iteración GPT-5.x cada 4-8 semanas) que mantiene a OpenAI en el pelotón de cabeza en capacidad, aunque sin liderar — tech-ip-analyst.
4. Relación con Microsoft (compromiso incremental de 250.000 M$) que aporta canal de distribución empresarial vía Copilot 365 — tech-ip-analyst.
5. Opcionalidad de hardware: patentes recientes en sistemas embebidos + dispositivo de consumo codiseñado con Jony Ive (previsto 2026) sugieren un posible segundo acto más allá del software — tech-ip-analyst.

### 🔴 En contra (con fuente)
1. Superada por Anthropic en ARR *y* valoración: el líder narrativo ya no es el líder de negocio ni de mercado — competitive-mapper, financial-detective.
2. Prima de valoración del 66% sobre Anthropic (34,08x vs 20,53x ARR) pese a peores fundamentos — riesgo de valoración explícito — financial-detective.
3. Compromisos de infraestructura ~1,15 billones $ frente a caja ~73.000 M$ (~16x) — dependencia total de financiación futura — financial-detective, tech-ip-analyst.
4. Patrón verificado y multi-fuente de opacidad del CEO (New Yorker, dossier de Sutskever, testimonio en juicio) — el mayor riesgo de gobierno de las tres grandes — risk-governance-analyst.
5. Estructura de control donde los inversores externos (incl. Microsoft) no controlan la junta; el control lo retiene la Foundation — financial-detective, risk-governance-analyst.
6. Riesgo reputacional/legal material: 9 demandas documentadas por suicidio/autolesión vinculadas a ChatGPT, con alegación de retirada de salvaguardas — tech-ip-analyst.
7. Foso técnico erosionado: liderazgo de capacidad rotatorio, éxodo del núcleo fundador, sin control de cómputo, cuota de API en caída — tech-ip-analyst, competitive-mapper.
8. Márgenes en compresión (~40%→~33%) y cierre de Sora por economía insostenible — señales de que no todos los productos de frontera son viables al coste actual — business-decoder, signal-miner.
9. Financiación "circular" con AMD/Nvidia/CoreWeave (proveedores que son a la vez inversores/socios de capacidad) — opacidad de la estructura de capital — signal-miner.

### ⚖️ ¿Qué lado pesa más?

A diferencia de Anthropic — donde los argumentos a favor descansaban sobre datos oficiales verificados y el debate era de precio — en OpenAI **los argumentos en contra están mejor documentados que los argumentos a favor**. El caso alcista se apoya en gran medida en la marca, el tamaño de usuarios y la escala de anuncios de infraestructura; el caso bajista se apoya en hechos verificados y multi-fuente: la superación por Anthropic, la prima de valoración, el patrón de gobierno, el éxodo de talento y el riesgo legal. La marca de consumo de OpenAI es un activo genuino y difícil de replicar, pero al precio implícito actual (~852.000 M$, 34x ARR) el comprador paga la prima más alta del sector por la empresa con los fundamentos verificables más débiles. No hay margen de seguridad; hay una apuesta a que la marca y Altman conviertan la ventaja de distribución en algo más duradero antes de que la caja y la paciencia del mercado se agoten.

---

## 10. Matriz de riesgos (Top 6 por severidad)

| Riesgo | Probabilidad | Impacto | Severidad | ¿Mitigable? | Indicador a vigilar |
|---|---|---|---|---|---|
| Corrección de valoración (prima del 66% sin soporte fundamental) en la ventana de IPO | Media-alta | Muy alto | Muy alto | No, solo timing | Condiciones del S-1 público; sentimiento hacia IPOs tecnológicas; comparación con marca de Anthropic |
| Riesgo de gobierno/CEO (patrón de opacidad de Altman) que erosione confianza de inversores/reguladores | Media | Muy alto | Alto | No unilateralmente | Nuevas revelaciones; salidas adicionales de junta/C-suite; cobertura judicial |
| Incapacidad de financiar ~1,15 T$ de compromisos con ~73 B$ de caja | Media | Muy alto | Alto | Parcial (nuevas rondas) | Cierres de financiación; renegociación/reducción de compromisos (ya ocurrió con Nvidia: 100B→30B) |
| Erosión continua de cuota empresarial de API frente a Anthropic y modelos abiertos | Alta (en curso) | Alto | Alto | Parcial | Menlo Ventures cuota API; cuota de tokens open-source en OpenRouter |
| Riesgo legal/regulatorio por casos de seguridad (9 demandas de suicidio/autolesión) | Media | Alto | Alto | Parcial (salvaguardas) | Resoluciones judiciales; nueva regulación de seguridad de IA de consumo |
| Ruptura o deterioro de la relación con Microsoft | Media-baja | Muy alto | Alto | Parcial | Cobertura de tensión (TechCrunch jul-2026); términos del acuerdo; distribución vía Copilot |

---

## 11. Rutas de salida

| Ruta | Estado | Probabilidad | Ventana estimada |
|---|---|---|---|
| IPO | S-1 confidencial presentado (8-jun-2026); Altman resistente a cotizar <1 billón $ | Media-alta (proceso en curso, pero timing incierto) | 2026 tardío o **2027** (posible retraso) |
| Adquisición | Descartada por tamaño (~852.000 M$) y estructura de control de la Foundation | Muy baja | N/A |
| Mercado secundario / tender offers | Ya ocurrió (tender mar-2026, ~852.000 M$); podría repetirse | Media | Continuo hasta la IPO |

---

## 12. Mapa de puntos ciegos de información

| Dimensión | Conocido | Desconocido | ¿Afecta la conclusión? |
|---|---|---|---|
| Financiero | Valoración de tender, compromisos de infra, estructura de control | ARR auditado, caja real, EBITDA, margen neto, plan de financiación de los 1,15 T$ | Sí — cualquier valoración es especulativa; el múltiplo usa un ARR no auditado |
| Operativo | Anuncios de Stargate, sitios físicos | Ejecución real del JV Stargate (¿personal?, ¿operativo?) | Sí — determina si la escala anunciada es real o retórica |
| Gobierno | Estructura Foundation/Microsoft/empleados; patrón documentado de Altman | Dinámica interna real de la junta; grado de control efectivo de la Foundation | Sí — determina el riesgo real para el inversor sin control |
| Comercial | Usuarios de consumo, cuota de API agregada | Desglose real de ingresos consumo vs API vs enterprise; economía unitaria por producto | Sí — el cierre de Sora sugiere que la economía unitaria de algunos productos es negativa |
| Tecnología | Benchmarks, cronología de modelos, patentes | Si el volumen de datos de ChatGPT es una ventaja de capacidad real | Parcial — es el punto ciego central de la tesis de "foso de datos" |

---

## 13. Lista de seguimiento (para revisión post-IPO o próxima actualización)

| Evento a vigilar | Frecuencia | Fuente | Indicador de alerta |
|---|---|---|---|
| Publicación pública del S-1 | Puntual | SEC EDGAR | Primeras cifras auditadas de ARR/caja/EBITDA — resolverá la mayor incertidumbre de este informe y validará o refutará el múltiplo de 34x |
| Timing y valoración objetivo de la IPO | Continuo | Prensa financiera | Confirmación de retraso a 2027 o de valoración objetivo <1 billón $ |
| Cuota de API empresarial OpenAI vs Anthropic | Trimestral | Menlo Ventures "State of Generative AI" | Si la brecha 27% vs 40% se ensancha o se cierra |
| Ejecución real de Stargate | Trimestral | The Information, FT, DCD, Epoch AI | Contrataciones del JV, sitios operativos, entregas de cómputo vs. anuncios |
| Salidas de personal senior (seguridad/investigación/junta) | Continuo | Prensa especializada, LinkedIn | 7ª salida senior de seguridad; salidas de junta; nuevas revelaciones sobre Altman |
| Resolución de demandas de seguridad (Raine v. OpenAI y otras) | Trimestral | Prensa, registros judiciales | Sentencias, acuerdos o nueva regulación de IA de consumo |

---

## 14. Resumen final (para decisión)

OpenAI es, con los datos disponibles en julio de 2026, la empresa de IA de frontera con **la mejor marca y la peor calidad de fundamentos verificables** de las tres grandes. Su ventaja es real y difícil de replicar — ~900M-1.000M de usuarios semanales de ChatGPT y una posición de marca que hace de "ChatGPT" un sinónimo popular de IA — pero es una ventaja de *distribución de consumo* que, a esta fecha, **no se ha traducido en liderazgo de negocio empresarial, de valoración ni de capacidad de modelo**: Anthropic la ha superado en ARR ($47B vs ~$25B) *y* en valoración implícita ($965B vs $852B), y lo ha hecho cotizando a un múltiplo un 66% *inferior*. A esto se suman los tres agravantes que ninguna de las otras dos comparte en el mismo grado: (a) un patrón verificado y multi-fuente de opacidad del fundador-CEO (New Yorker, dossier de Sutskever, testimonio judicial), (b) una estructura de control donde el inversor externo no gobierna, y (c) unos compromisos de infraestructura (~1,15 billones $) que superan en ~16 veces su caja. La mayor incertidumbre — y el evento que más puede resolverla — es la publicación del S-1 previo a la IPO, que expondría por primera vez cifras auditadas y permitiría verificar si el múltiplo de 34x ARR tiene algún soporte fundamental. Hasta entonces, invertir en OpenAI al precio implícito actual es pagar la prima más alta del sector por la marca más fuerte y los fundamentos más débiles, con una apuesta implícita a que Sam Altman y la distribución de ChatGPT conviertan esa ventaja de consumo en un foso durable antes de que la caja, la competencia o la confianza del mercado la erosionen.

---

### Fuentes

Ver la atribución detallada dato por dato en cada sección de este informe y en `reports/OpenAI/OpenAI-tech-ip-20260715.md` y `reports/OpenAI/OpenAI-investment-research-20260714.md`. Fuentes principales agregadas por los 6 analistas: openai.com (comunicados, notas de modelos), SEC (S-1 confidencial), Bloomberg, CNBC, TechCrunch, The Information, Financial Times, The New Yorker (exposé abr-2026), Fortune, NBC News, Time, Menlo Ventures ("State of Generative AI in the Enterprise"), Epoch AI, DCD, Patent Detectives/GreyB (patentes), Reveliolabs/SQ Magazine (plantilla), OpenRouter/Data Gravity (cuota open-source), registros judiciales (Raine v. OpenAI, Musk v. Altman), Wikipedia (cronologías verificadas cruzando con prensa).
