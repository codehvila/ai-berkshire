# Banco Santander, S.A. (BME: SAN / NYSE ADR: SAN) — Informe de Investigación

**Fecha de investigación**: 10 de julio de 2026
**Marco de análisis**: Buffett – Munger – Duan Yongping – Li Lu (cuatro maestros)
**Precio actual**: 11.92 € (BME Madrid, +0.46%) / 13.87 $ (ADR NYSE, cierre 10-jul-2026) — ratio ADR 1:1 confirmado

---

## Declaración previa: calificación de riqueza informativa y limitaciones de la investigación con IA

**Calificación de riqueza informativa: Nivel A (información abundante)**

Santander cotiza en Madrid desde antes de la fundación del mercado bursátil moderno español, forma parte del IBEX 35, cotiza como ADR en el NYSE, es emisor registrado ante la SEC (20-F/6-K), y está cubierto por decenas de analistas de bulge-bracket (UBS, RBC, Morgan Stanley, etc.). Esto obliga a una autocrítica previa:

**Trampa de investigación con IA para una empresa de nivel A**: el consenso de mercado sobre Santander ya está muy trabajado — "banco diversificado, barato en libros, con recompras agresivas, pero con descuento estructural por riesgo emergente y regulatorio". Un informe de IA que se limite a repetir ese consenso no aporta ventaja informativa. El valor incremental de este informe está en tres puntos: (1) validación programática de las cifras (se han detectado y resuelto varias discrepancias entre fuentes, ver §1.2); (2) el caso bajista de "trampa de valor" (value trap) que plantea TIKR y que rara vez aparece en el discurso corporativo; y (3) separar explícitamente qué conclusiones se apoyan en datos sólidos y cuáles son inferencias razonables pero no confirmadas (marcadas como tal a lo largo del texto).

**Declaración de limitaciones**: este informe se basa en información pública (comunicados oficiales, SEC EDGAR, agregadores financieros, prensa especializada). No puede verificar: la calidad real de la cultura de riesgo dentro de cada filial local, la velocidad real de deterioro de las carteras de crédito en Brasil/México (los datos reportados van siempre por detrás de la realidad económica), ni el desenlace final del proceso legal sobre comisiones de financiación de automóviles en el Reino Unido (litigio en curso, sin resolución a la fecha de este informe).

---

## 1. Recolección y validación cruzada de datos

### 1.1 Tabla de datos clave (validados con `tools/financial_rigor.py`)

| Dato | Valor | Estado de validación |
|---|---|---|
| Precio BME (10-jul-2026) | 11.92 € | ✅ Yahoo Finance |
| Precio ADR NYSE (10-jul-2026) | 13.87 $ | ✅ stockanalysis.com |
| Ratio ADR : acción ordinaria | 1:1 | ✅ Confirmado en NYSE listing y en los términos de la operación Webster |
| Tipo de cambio implícito EUR/USD | 1.1636 | ✅ Coherente con el mercado (13.87/11.92) |
| Acciones en circulación | ~14,540 M | ⚠️ Ver §1.2 — recompras activas mueven la cifra semana a semana |
| Capitalización bursátil (EUR) | ~171,000–173,000 M€ | ✅ Desviación de verificación 1.36% (aceptable) |
| Capitalización bursátil (USD) | ~198,400–201,700 M$ | ✅ Desviación de verificación 1.65% (aceptable) |
| Beneficio atribuido FY2025 | 14,101 M€ | ✅ Doble fuente, desviación 0.00% |
| BPA FY2025 | 0.91 € | ✅ Coherente con beneficio/acciones |
| CET1 fully loaded (2025) | 13.5% (14.4% en 1T2026 tras venta de Polonia) | ✅ |

**Verificación de capitalización bursátil (tool output, base EUR)**:
```
Precio: 11.92 € | Acciones: 14,540 M | Cap. calculada: 173,320 M€
Cap. reportada (Yahoo Finance): 170,990 M€ | Desviación: 1.36% — dentro de rango aceptable
```

**Verificación de capitalización bursátil (tool output, base USD/ADR)**:
```
Precio: 13.87 $ | Acciones: 14,540 M | Cap. calculada: 201,670 M$
Cap. reportada (stockanalysis.com): 198,390 M$ | Desviación: 1.65% — dentro de rango aceptable
```

Ambas desviaciones (~1.4–1.7%) se explican por el desfase temporal entre la foto de precio y la foto de acciones en circulación mientras el programa de recompras retira acciones de forma continua — no son errores de datos.

### 1.2 Discrepancias detectadas y resueltas

| Dato | Fuente 1 | Fuente 2 | Desviación | Resolución |
|---|---|---|---|---|
| Acciones en circulación | stockanalysis.com: 14,540 M (actual) | companiesmarketcap.com: 15,153 M (jul-2026) | 4.22% ❌ | Se usa 14,540 M (más reciente); la diferencia refleja recompras en curso, no un error |
| Ingresos totales FY2025 | Santander oficial "total income": 62,390 M€ | stockanalysis.com "revenue": 58,559 M€ | 3.17% frente a mediana ❌ | Diferencia de alcance contable: "total income" bancario (margen de intereses + comisiones + trading + otros) vs. la métrica "revenue" genérica de stockanalysis, que excluye algunas partidas. Se usa la cifra oficial (62,390 M€) como referencia principal, con nota de alcance |
| Beneficio atribuido México FY2025 | Informe oficial 4T2025 (segmentos): 1,705 M€ | Prensa EFE/Investing.com ES: 1,795 M€ | 2.57% frente a mediana ❌ | Se prioriza el informe oficial de segmentos (1,705 M€) sobre la agregación de prensa, siguiendo la regla de "año oficial primero" |
| Ratio de cobertura FY2025 | 66% (comunicado oficial) | 67% (resumen oficial alternativo) | 1.5% | Diferencia menor, se reporta el rango 66-67% |
| Rentabilidad por dividendo | stockanalysis.com (base ADR, USD): 1.45% | Yahoo Finance (base BME, EUR): 2.11% | >30% relativo | No es error: bases de cálculo distintas (TTM vs. forward, USD vs. EUR). Se recalcula de forma independiente en §7 con datos verificados por herramienta: 1.89% |

**Nota metodológica sobre el margen de intermediación (NIM)**: Santander no publica un "NIM" único en su comunicado de resultados. Se calculó como margen de intereses ÷ activos totales medios: 45,354 M€ / 1,843,112 M€ = **2.46%** (2025); 46,668 M€ / 1,803,272 M€ = **2.59%** (2024). Esta es una cifra **derivada de una sola fuente primaria**, no contrastada de forma independiente — se marca como [estimado].

**Nota sobre BPTA (valor tangible en libros por acción)**: se obtuvo de forma directa del informe oficial (5.76 € en 2025, +9.9% interanual). El valor en libros "completo" (no tangible) no se pudo extraer de forma fiable del balance consolidado; se infiere de forma indirecta a partir del P/B de mercado reportado por stockanalysis (1.53x sobre precio ADR) ≈ 7.79 € — la diferencia frente al TBVPS (5.76 €) es coherente con el fondo de comercio e intangibles acumulados por adquisiciones históricas (Popular, Sovereign, Abbey, etc.).

### 1.3 Suma de segmentos geográficos vs. beneficio consolidado (gap detectado)

La suma de los beneficios atribuidos "underlying" por geografía (ver §6.2) asciende a **14,886 M€**, frente al beneficio atribuido consolidado de **14,101 M€** — una diferencia de 785 M€ (5.6%) que no se puede explicar con los datos disponibles. La explicación más probable es la existencia de una partida de "Centro Corporativo" (costes de holding, cobertura de tipos de cambio, eliminaciones) que no se pudo obtener en esta investigación y que típicamente resta al agregar segmentos. **Se marca como vacío de datos, no como error**, y se recomienda verificación adicional antes de usar las cifras por segmento para conclusiones de precisión decimal.

---

## 2. Análisis de la esencia del negocio — Duan Yongping, "el negocio correcto"

### 2.1 Definición en una frase

**La esencia del negocio de Santander: operar una federación de bancos locales de escala relevante (España, Reino Unido, Brasil, México, EE. UU., Polonia hasta enero de 2026, Portugal, Chile, Argentina, financiación al consumo/automóvil y banca digital) que comparten una plataforma tecnológica común, capturando así el coste de capital más bajo posible en cada geografía sin asumir el riesgo de un balance único global.**

No es un "banco global" en el sentido de JPMorgan o HSBC (balance consolidado, riesgo compartido); es más parecido a un fondo de bancos independientes con blindaje de capital y liquidez entre sí, unidos por tecnología compartida en lugar de por balance compartido. Fuente: informe anual 2025 de Santander UK Group Holdings; presentaciones 6-K ante la SEC sobre planes de resolución.

### 2.2 Estructura de ingresos (ejercicio 2025)

| Partida | Importe | % | Nota |
|---|---|---|---|
| Ingresos totales (total income, cifra oficial) | 62,390 M€ | 100% | ⚠️ Ver discrepancia de alcance en §1.2 |
| Margen de intereses (NII) | 45,354 M€ | ~73% | Fuente: informe financiero 4T2025 |
| Comisiones netas y otros ingresos | resto | ~27% | No desglosado con precisión en esta investigación |
| Beneficio atribuido | 14,101 M€ | — | +12% interanual, +16% en euros constantes |

### 2.3 Tendencia de rentabilidad a 5 años (2021–2025)

| Indicador | 2021 | 2022 | 2023 | 2024 | 2025 |
|---|---|---|---|---|---|
| Beneficio atribuido (M€) | 8,124 | 9,605 | 11,076 | 12,574 | 14,101 |
| BPA (€) | 0.44 | 0.54 | 0.65 | 0.77 | 0.91 |
| RoTE | 12.7%(*) | 13.4% | 15.1% | 16.3%(**) | 16.3% |
| Ratio de eficiencia (costes/ingresos) | 46.2% | 45.8% | 44.1% | 41.8% | 41.2% |
| CET1 fully loaded | 12.1% | 12.0% | 12.3% | 12.8% | 13.5% |
| Coste del riesgo | 0.77% | 0.99% | 1.18% | 1.15% | 1.15% |
| Ratio de morosidad (NPL) | 3.16% | 3.08% | 3.14% | 3.05% | ~2.92% |
| Ratio de cobertura | 71% | n.d. | 65% | 65% | 66-67% |

(*) RoTE "underlying" 2021; (**) hay dos cifras oficiales para 2024 (16.3% pre-AT1 / 15.5% post-AT1) — se reporta la serie pre-AT1 por consistencia con 2023 y 2025. Fuentes: comunicados de resultados oficiales de Santander 2022-2026; contraste parcial con stockanalysis.com/stocks/san/financials/.

**Lectura**: crecimiento sostenido y consistente del beneficio (+73% acumulado en 4 años) impulsado tanto por expansión de márgenes como por mejora de eficiencia operativa (46.2%→41.2%), no por apalancamiento de capital — el CET1 sube en el mismo periodo. Es un perfil de mejora operativa genuina, no de "maquillaje contable" vía recompra apalancada.

### 2.4 Modelo de negocio: ¿venta puntual o recurrencia?

Es un negocio 100% de **recurrencia por naturaleza** (depósitos, préstamos, tarjetas, gestión patrimonial) con altísimo coste de cambio implícito para el cliente medio (cambiar de banco principal implica reconfigurar nóminas, domiciliaciones, hipotecas). El apalancamiento operativo es limitado — la palanca de mejora de márgenes viene sobre todo de tecnología compartida ("Gravity", 1.3 billones de transacciones/año, ~70% de las operaciones técnicas del grupo) que permite desarrollar un producto una vez y desplegarlo en todas las geografías a coste marginal casi nulo. Esta plataforma común ha sido el motor documentado de la caída del ratio de eficiencia de 45.8% a 41.2% en tres años. Fuente: santander.com, "7 preguntas sobre cómo Gravity está transformando Santander"; comunicado del Investor Day 2026.

**Pregunta al estilo Duan Yongping — "¿en qué es buena esta empresa?"**: Santander es buena en operar banca retail y de consumo a escala en mercados fragmentados (América Latina, financiación de automóvil en Europa) reutilizando la misma tecnología en 10+ países — eso es una ventaja de coste real, no cosmética. Pero **no es un negocio con capacidad de fijación de precios**: el producto (depósito, préstamo, tarjeta) es sustituible, y el cliente compara tipos de interés. Si tuviera que resumirlo en una frase: "una fábrica de banca retail eficiente, no una marca con poder de precio".

---

## 3. Evaluación del foso económico — Buffett, "moat"

| Tipo de foso | Evaluación | Evidencia |
|---|---|---|
| Marca / poder de fijación de precios | **Débil** | La banca comercial es un producto ampliamente sustituible; no hay evidencia de que Santander pueda subir precios sin perder volumen |
| Coste de cambio | **Moderado-alto** | Clientes retail rara vez cambian de banco principal (fricción de domiciliaciones/hipotecas), pero la banca digital (Openbank, neobancos) está reduciendo esa fricción estructuralmente |
| Efecto de red | **Débil, salvo en pagos** | La banca tradicional no se beneficia de efectos de red clásicos; PagoNxt (pagos) podría tener cierto efecto de red, pero no hay datos que lo confirmen |
| Economías de escala | **Fuerte y verificable** | Plataforma tecnológica compartida (Gravity) sirve ~70% de operaciones técnicas del grupo en 2025; financiación de automóvil en Europa (>140,000 M€ en préstamos, 18 países) opera con escala que un competidor local no puede igualar fácilmente |
| Barrera regulatoria/tecnológica | **Moderada, decreciente** | La licencia bancaria es una barrera de entrada real, pero el "open banking" (PSD2→PSD3) y los neobancos con licencia (Nubank) están erosionando esa barrera en Brasil y México |

**Caso bajista sobre el foso (relevante, no debe minimizarse)**: la visión clásica de inversión en valor —incluyendo el razonamiento general de Buffett y Munger sobre negocios "commodity"— es que la banca comercial pura carece de foso duradero: el producto es sustituible y las ganancias de eficiencia tienden a trasladarse al cliente vía competencia de precios, no a quedarse en manos del accionista. **Aclaración importante**: no se ha encontrado ninguna cita documentada de Buffett o Munger específica sobre Santander o la banca europea — este es un razonamiento por analogía con su marco general, y se etiqueta aquí como **opinión/inferencia**, no como hecho.

Evidencia de mercado que respalda el caso bajista del foso: Santander cotiza de forma persistente con descuento sobre valor en libros y sobre comparables europeos. Un análisis de TIKR (2026) plantea explícitamente el riesgo de "trampa de valor": con un PER forward de ~10.7x frente a un rango histórico de comparables europeos de 6.8x–8.1x, la normalización del múltiplo podría por sí sola compensar el crecimiento de beneficios hasta 2027. Adicionalmente, la historia de dilución accionarial (ampliación de capital de 9,200 M$ en 2008 tras las adquisiciones de Alliance & Leicester/Sovereign, cuando el Core Tier 1 cayó a 6.31%; ampliación de 7,000 M€ en 2017 para financiar el rescate de Banco Popular, con dilución de hasta el 9.1%) sigue pesando en la memoria de los inversores institucionales como razón estructural para exigir un descuento.

**Tendencia del foso — últimos 5 años vs. próximos 5**: el foso tecnológico (plataforma compartida) se ha ampliado de forma verificable (mejora de eficiencia real). El foso de "escala en mercados emergentes" está bajo presión creciente por neobancos con estructura de coste estructuralmente inferior (ver §6.1). Neto: **foso mixto — se amplía en el eje de coste tecnológico, se estrecha en el eje de defensa frente a la banca digital en LatAm**.

**Pregunta al estilo Buffett — "¿seguirá este foso en 10 años?"**: la plataforma tecnológica compartida probablemente sí sobreviva y siga generando ventaja de coste. Lo que podría destruirlo no es un competidor tradicional, sino la combinación de (a) neobancos con coste de servicio estructuralmente menor ganando cuota en los segmentos más rentables (Brasil, México) y (b) que la regulación de open banking siga bajando la fricción de cambio de banco que hoy protege la base de clientes retail europea.

---

## 4. Pensamiento inverso y lista de riesgos — Munger, "dale la vuelta"

### 4.1 Rutas de fracaso

| Ruta | Probabilidad estimada | Impacto | Nota |
|---|---|---|---|
| El coste real de la indemnización por comisiones de financiación de automóvil en el Reino Unido supera ampliamente lo provisionado | Media | Medio-alto | Provisión actual: 461 M£ (feb-2026); RBC Capital Markets estima una exposición real de hasta 1,400 M£ — más de 3x lo provisionado. El proceso está parcialmente suspendido a la espera de 4 recursos legales ante el Upper Tribunal, con vistas no previstas antes de octubre de 2026 |
| Deterioro macro/cambiario en Brasil o México erosiona el beneficio consolidado | Media | Alto (Brasil + México ≈ 30% de ingresos por región, cifra de fuente única, indicativa) | El beneficio de Brasil ya cayó -10.5% interanual en 2025 (atribuido "principalmente" por Santander a efectos cambiarios, sin verificación independiente) y Argentina -34.9% |
| Erosión de cuota en banca digital LatAm por neobancos (Nubank) | Baja-media (no confirmada con datos directos) | Alto si se materializa | Nubank supera 90 M de clientes en Brasil/México/Colombia con ratio de eficiencia de 28.3% frente a 40-50% de la banca tradicional — pero **no se encontró evidencia directa de pérdida de cuota de Santander frente a Nubank específicamente**; es una inferencia razonable, no un hecho confirmado |
| Repetición de historial de ampliaciones de capital dilutivas | Baja en el escenario actual (CET1 en máximos, 13.5%→14.4%) | Alto si ocurriera | Precedente 2008 y 2017; el escenario actual de fortaleza de capital hace esta ruta poco probable a corto plazo, pero es la memoria que explica el descuento estructural de valoración |
| Fallo de integración en las adquisiciones en curso (TSB, Webster Financial) | Media | Medio | Historial mixto: Banco Popular (2017) se considera una integración exitosa; el episodio Orcel (2018-2019) muestra fricción de gobernanza en decisiones de gran calado |

### 4.2 Analogía histórica

Bancos que persiguieron una estrategia de diversificación geográfica agresiva vía M&A (RBS con ABN AMRO, Citigroup con su huella global, Deutsche Bank con su expansión en banca de inversión en EE. UU.) sufrieron episodios de sobre-extensión que terminaron en rescates o reestructuraciones forzadas. La diferencia relevante en el caso de Santander: su modelo de "filiales autónomas con capital y liquidez blindados" está diseñado explícitamente para evitar el contagio que hundió a esos bancos — pero esto es una afirmación de la propia gerencia, no verificada de forma independiente en esta investigación mediante un escenario de estrés real.

### 4.3 Verificación cruzada con otras disciplinas

- **Curva de adopción tecnológica**: la migración de clientes hacia banca 100% digital sigue una curva de adopción que ya está en fase de aceleración en Brasil/México (Nubank) y en fase temprana en Europa (Openbank). Santander compite en ambos frentes con Openbank, pero no lidera la curva en LatAm.
- **Teoría de juegos competitivos**: en un mercado de comisiones a la baja (presión regulatoria + competencia de neobancos con coste cero de "sucursal"), el jugador con menor coste de servicio gana cuota a largo plazo salvo que el incumbente iguale ese coste — la apuesta de Santander es que su plataforma tecnológica compartida cierra parte de esa brecha de coste.

### 4.4 Autocrítica de sesgos

- **Sesgo narrativo**: la historia de "banco value, recompras agresivas, RoTE en mejora" es atractiva y fácil de sobreponderar frente a los riesgos menos visibles (litigio del Reino Unido, concentración en mercados emergentes).
- **Sesgo de anclaje**: existe el riesgo de anclar la valoración a la tendencia reciente de mejora de RoTE (12.7%→16.3%) y extrapolar linealmente hacia el objetivo de >20% para 2028, sin descontar suficientemente que ese objetivo depende en parte de sinergias de Webster Financial, una operación aún no cerrada.
- **Sesgo de supervivencia**: al comparar con "bancos exitosos que se diversificaron" hay que recordar que también existen bancos que se diversificaron y fracasaron (§4.2) — el marco no debe limitarse a comparar solo con los casos de éxito.

**Argumentos de la parte bajista (resumen)**: ver §6.3 para el detalle completo del caso bajista recopilado de fuentes de mercado.

**Pregunta al estilo Munger — "¿dónde es más probable que me equivoque?"**: el error más probable en este informe es sobreestimar la comparabilidad de los datos por segmento geográfico (la discrepancia de 785 M€ del §1.3 sugiere que el desglose por país no es perfectamente transparente) y subestimar el coste final del litigio de comisiones de automóvil en el Reino Unido, dado que la banda de estimaciones (461 M£ provisionados vs. hasta 1,400 M£ de exposición según RBC) es muy amplia y el proceso legal sigue abierto.

---

## 5. Evaluación del equipo directivo — Duan Yongping "las personas correctas" + Buffett "integridad"

### 5.1 Perfil

- **Ana Botín** — Presidenta ejecutiva desde 2014, hija del expresidente Emilio Botín. La participación agregada de la familia Botín se estima hoy en ~1-1.5% del capital (frente al control histórico mayoritario de décadas atrás), aunque mantiene presencia en el consejo (p. ej. el consejero Javier Botín).
- **Héctor Grisi** — Consejero delegado del grupo desde enero de 2023 (previamente CEO de Santander México), sucediendo a José Antonio Álvarez.

### 5.2 Decisiones clave revisadas (tabla)

| Fecha | Decisión | Resultado | Valoración |
|---|---|---|---|
| 2017 | Adquisición de Banco Popular por 1 € vía resolución bancaria (sin rescate público), financiada con ampliación de capital de 7,000 M€ | Coste de integración ~300 M€; Popular aportó ~263 M€ de beneficio ese mismo año; consolidó el liderazgo de Santander en España | ★★★★ — ejecución distressed sólida, aunque con coste de dilución para el accionista |
| 2018-2019 | Contratación anunciada públicamente de Andrea Orcel como CEO, después revocada por desacuerdo sobre compensación | Litigio; condena inicial de 67.8 M€, reducida en apelación a 43.5 M€; el proxy advisor ISS criticó la gestión del episodio como dañina para la reputación | ★★ — fallo de gobernanza corporativa significativo |
| 2023-2025 | Reestructuración "ONE Transformation": plataforma tecnológica común, recorte de ratio de eficiencia de 45.8% a 41.2% en 3 años | Beneficio récord de 14,101 M€ en 2025 (+12%), BPA +68% acumulado en el ciclo de 3 años | ★★★★★ — ejecución operativa sólida y verificable |
| Mayo 2025 – enero 2026 | Venta del 49% de Santander Bank Polska y del 50% de su gestora de activos a Erste Group por ~7,000 M€ | Plusvalía de ~1,900 M€, +95 pb de CET1 (~6,000 M€), financió gran parte del segundo programa de recompras de 2025 | ★★★★ — reciclaje de capital hacia mercados de mayor rentabilidad, bien ejecutado |
| Julio 2025 – abril 2026 | Adquisición de TSB (Reino Unido) a Sabadell por 2,650 M£ | Aporta 5 M de clientes, 34,000 M£ en hipotecas, objetivo de RoTE del Reino Unido del 16% para 2028 con ≥400 M£ de sinergias | Pendiente de verificación en la ejecución — decisión reciente, sin resultados aún |
| Febrero 2026 (pendiente de cierre) | Adquisición anunciada de Webster Financial (EE. UU.) por ~12,300 M$ (efectivo + ADS de Santander) | Convertiría a Santander en un banco top-10 de EE. UU. por activos; objetivo de casi duplicar el RoTE en EE. UU. al 18% para 2028 | Pendiente — operación no cerrada, sujeta a aprobación regulatoria y de accionistas de Webster |

### 5.3 Asignación de capital

Política declarada: **pago de ~50% del beneficio reportado**, repartido aproximadamente al 50/50 entre dividendo en efectivo y recompra de acciones (2023-2025). A partir de 2027, el pago en efectivo sube a ~35% del beneficio (con ~15% adicional vía recompras).

| Año | Retribución total al accionista | Dividendo en efectivo | Recompras |
|---|---|---|---|
| 2023 | 5,538 M€ (~50% del beneficio) | 2,769 M€ | 2,769 M€ |
| 2024 | 6,293 M€ (~50%) | 3,181 M€ | 3,112 M€ |
| 2025 | 7,050 M€ (~50%) | ~3,525 M€ | ~3,525 M€ |

Compromiso adicional: distribuir al menos 10,000 M€ vía recompras contra los resultados de 2025-2026 y el exceso de capital esperado; desde 2021, Santander habrá devuelto ~16,200 M€ acumulados solo vía recompras.

### 5.4 Alineación accionarial y gobernanza

- Compensación 2023: Botín ~12.2 M€ (fijo +3%), Grisi ~6.8 M€. Una propuesta de subida salarial del 5% para ambos recibió una recomendación de **voto en contra** por parte de ISS, que citó una correlación débil entre remuneración y desempeño.
- Para 2024, el 61% (presidenta) y el 57% (CEO) de la retribución total es variable ligada a desempeño; la parte de retribución variable pagada en acciones sube del 50% al 60% desde 2025. Ambos deben mantener acciones por valor superior al 200% de su salario fijo.

**Pregunta al estilo Duan Yongping — "¿sobreviviría la empresa a la jubilación del CEO?"**: sí, con matices. El modelo de filiales autónomas + plataforma tecnológica compartida está diseñado para no depender de un ejecutivo individual, y la mejora de eficiencia (45.8%→41.2%) es una tendencia estructural, no un logro personal de Grisi. El mayor riesgo de dependencia de personas no está en el CEO, sino en Ana Botín como ancla de la marca familiar y de la relación con inversores institucionales de largo plazo — su salida sería un evento de gobernanza más relevante que el de Grisi.

---

## 6. Tendencias sectoriales y civilizatorias — Li Lu

### 6.1 ¿Cambio de paradigma o negocio maduro?

La banca comercial no está viviendo un cambio de paradigma civilizatorio comparable a la electricidad o internet — pero sí una **reconfiguración estructural del coste de servir al cliente** vía banca digital, que favorece a quien tenga el coste marginal más bajo. En este eje, Nubank es el actor más relevante a vigilar en los mercados más rentables de Santander (Brasil, México): más de 90 millones de clientes, mayor banco digital fuera de Asia a mediados de 2025, ratio de eficiencia del 28.3% frente al 40-50% de la banca tradicional con red de oficinas. **No se ha encontrado evidencia directa y confirmada de pérdida de cuota de Santander frente a Nubank** — esto se etiqueta explícitamente como inferencia razonable a partir de la trayectoria de crecimiento de Nubank, no como hecho verificado.

### 6.2 Posición en la cadena de valor — desglose geográfico FY2025 (beneficio atribuido underlying)

| Región | Beneficio (M€) | Var. interanual |
|---|---|---|
| España | 4,272 | +13.5% |
| Brasil | 2,168 | -10.5% |
| México | 1,705 | +2.0% |
| EE. UU. | 1,541 | +38.9% |
| Reino Unido | 1,307 | +0.1% |
| Portugal | 1,010 | +0.9% |
| Polonia | 949 | +18.5% |
| Chile | 729 | +15.9% |
| Digital Consumer Bank Europa | 772 | +20.2% |
| Argentina | 433 | -34.9% |

Nota: la suma de estas cifras (14,886 M€) no cuadra exactamente con el beneficio consolidado (14,101 M€) — diferencia de 785 M€ atribuible probablemente a una partida de Centro Corporativo no capturada en esta investigación (ver §1.3). Fuente: informe financiero oficial 4T2025 de Santander.

**Lectura**: España, EE. UU., Polonia y Chile crecen con fuerza; Brasil y sobre todo Argentina caen con fuerza. Santander atribuye la caída de Brasil "principalmente" al tipo de cambio, una explicación no verificada de forma independiente en esta investigación.

### 6.3 Regulación y ciclo de tipos

- El BCE subió tipos 25 pb en junio de 2026 (primera subida desde 2023), llevando la facilidad de depósito al 2.25%, con el mercado descontando más subidas si la inflación sorprende al alza (previsión de IPC 2026 revisada al 3.0%). El impacto en el margen de intereses depende de la composición de activos/pasivos de cada filial — Santander reporta riesgo de tipos de interés más significativo en Brasil (57 M€ de sensibilidad de NII) y en el valor económico del capital en Brasil (257 M€) y Chile (225 M€).
- CRR3/Basilea IV: impacto nulo en el día uno sobre el CET1 según Santander (implementación de junio de 2024); requisito mínimo de CET1 sube ligeramente de 9.60% (2024) a 9.67% (2025) — margen amplio frente al CET1 real de 13.5-14.4%.
- Consolidación bancaria europea: 2025 marcó un máximo de la década en fusiones bancarias europeas (73,500 M$ en 219 operaciones frente a 43,300 M$ en 140 operaciones en 2024), y las nuevas normas de fusión de la UE desde enero de 2026 buscan facilitar la consolidación transfronteriza — aunque persiste la barrera estructural de la ausencia de un sistema único de garantía de depósitos en la UE.

**Pregunta al estilo Li Lu — "dentro de 20 años, ¿será esta empresa el 'Standard Oil de su época' o el '3Com que se desvaneció'?"**: ni lo uno ni lo otro. Es más probable que Santander siga siendo, dentro de 20 años, un banco diversificado de tamaño medio-grande que ha defendido su posición en mercados fragmentados gracias a la escala tecnológica compartida, pero sin capturar una posición dominante o de "ganador que se lo lleva todo" en ninguna geografía — su historia no es la de un disruptor, sino la de un operador eficiente en un sector maduro y fragmentado por naturaleza.

---

## 7. Valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### 7.1 Métricas de valoración actuales (verificadas con herramienta)

```
Precio: 11.92 € | BPA: 0.91 € | BPTA: 5.76 €| Dividendo: 0.225 €

PER (BPA FY2025 auditado): 11.92 / 0.91 = 13.10x
Rentabilidad del beneficio (earnings yield): 7.63%
P/BPTA (valor tangible en libros): 11.92 / 5.76 = 2.07x
RoE implícito (BPA/BPTA): 15.80%
Rentabilidad por dividendo: 0.225 / 11.92 = 1.89%
```

Nota: el PER de 13.10x usa el BPA auditado del ejercicio 2025 completo. La cifra de PER "TTM" (últimos doce meses) publicada por stockanalysis.com es de 11.08x en base ADR — más baja porque incorpora ya el crecimiento de beneficio del 1T2026. Ambas cifras son correctas bajo su propia base temporal; no deben mezclarse.

**P/BPTA vs. P/BC (valor en libros completo)**: sobre BPTA (valor tangible, 5.76 €), el múltiplo es 2.07x. Sobre valor en libros completo (estimado indirectamente en ~7.79 €, incluye fondo de comercio), el múltiplo cae a ~1.53x. Esta diferencia (~2.03 €/acción) representa el fondo de comercio e intangibles acumulados por adquisiciones históricas.

### 7.2 Comparación con competidores (auditado — ver advertencia de calidad de dato tras la tabla)

| Banco | Precio | Cap. mercado | PER (TTM/fwd, stockanalysis) | P/B (rango de 2 fuentes) | RoE | Rent. dividendo |
|---|---|---|---|---|---|---|
| **Santander** | 13.87 $ (rango verificado 13.57–13.87 $, desviación 1.09%, ✅) | 198,400 M$ | 11.08x / 11.26x | 1.53x | 16.3%(RoTE) | 1.45% |
| BBVA | 22.48 € | 124,800 M€ (rango verificado 138,700–145,200 M$, desviación 2.30%, ⚠️) | 12.35x / 10.97x | 2.05x–2.19x (desviación 3.30%, ⚠️) | 19.04% | 4.16% |
| CaixaBank | 12.53 € | 87,300 M€ | 15.38x / 13.27x | 2.36x | 16.02% | 3.98% |
| HSBC | 99.09 $ | 338,500 M$ | **14.92x–16.04x (desviación 3.62%, ⚠️)** | **1.72x–3.66x (desviación 36.06%, ❌ no confiable)** | 11.61% | 3.76% |
| Intesa Sanpaolo | 6.26 € | 109,200 M€ | 11.60x / 10.56x | 1.59x | 14.01% | 6.14% |
| BNP Paribas | 100.70 € | 110,700 M€ (rango verificado 102,030–110,700 M€, desviación 7.83%, ⚠️) | **7.61x–9.39x (desviación 10.47%, ❌)** | **0.81x–1.53x (desviación 30.77%, ❌ no confiable)** | 9.57% | 5.15% |
| UniCredit | 82.97 € | 122,700 M€ | 11.28x / 10.80x | 1.78x | 16.98% | 3.84% |

**Advertencia de calidad de dato (resultado de la auditoría de datos, §Auditoría final)**: al contrastar esta tabla contra una segunda fuente independiente durante la fase de auditoría, se detectaron desviaciones que superan ampliamente el umbral de tolerancia del 5% definido en `skills/financial-data.md` para varias celdas — de forma extrema en **HSBC P/B (36,1% de desviación: 1.72x vs. 3.66x según la fuente)** y **BNP Paribas P/B (30,8%: 0.81x vs. 1.53x)** y P/E (10,5%: 9.39x vs. 7.61x). Según la regla del proyecto, estas diferencias son demasiado grandes para achacarlas a ruido de mercado y **no deben usarse de forma directa sin verificación adicional contra el balance/informe anual de cada banco** — probablemente reflejan diferencias de metodología entre proveedores de datos (valor en libros tangible vs. total, EPS ajustado vs. reportado, fecha de corte del precio). **Conclusión operativa**: la fila de Santander (verificada con desviación de solo 1.09% en precio) es fiable; la comparación de P/B y P/E de HSBC y BNP Paribas frente al resto de la tabla debe tratarse como no concluyente hasta verificación adicional directa en las fuentes primarias de cada banco. Las filas de CaixaBank, Intesa Sanpaolo y UniCredit no se sometieron a esta segunda verificación por límite de tiempo de la auditoría y mantienen el estatus de fuente única.

**Lectura (con las reservas anteriores)**: Santander cotiza con la rentabilidad por dividendo más baja del grupo comparable (1.45-1.89% según base). En P/B, su cifra (1.53x) es internamente consistente y verificada, pero la comparación directa con HSBC y BNP Paribas no es fiable en este momento — lo que sí se sostiene con más confianza es la comparación frente a BBVA (P/B 2.05x-2.19x) y CaixaBank (2.36x), ambas más caras que Santander sobre esta métrica, con BBVA además mostrando mayor RoE (19.04% vs. 16.3% RoTE de Santander).

### 7.3 ¿Qué crecimiento implica el precio actual? (DCF inverso simplificado)

Si el mercado exige una rentabilidad sobre recursos propios tangibles (coste de capital) de referencia de ~10.5% para banca europea, un RoTE sostenible del 16.3% justificaría razonablemente un P/BPTA de ~1.5x (16.3/10.5), mientras que el objetivo de RoTE >20% para 2028 justificaría un P/BPTA de ~1.9x. **El P/BPTA actual (2.07x) ya está ligeramente por encima de lo que justificaría incluso el objetivo de RoTE del 20% para 2028** — es decir, el precio actual ya incorpora buena parte de la mejora de rentabilidad futura, no solo la rentabilidad actual. Este es el núcleo cuantitativo del argumento de "trampa de valor" de TIKR.

### 7.4 Valoración en tres escenarios (herramienta, base EUR, horizonte 3 años)

```
Escenario       Crecimiento anual   PE objetivo   BPA objetivo   Precio objetivo   Variación
Alcista (Bull)         12%              13x            1.28           16.6 €        +39.4%
Base (Neutral)          7%              11x            1.11           12.3 €         +2.9%
Bajista (Bear)           0%               8x            0.91            7.3 €        -38.9%
```

- **Alcista**: se cumple el objetivo de crecimiento de doble dígito guiado para 2026-2028, sinergias de TSB y Webster se materializan, y el múltiplo se re-clasifica hacia el rango alto reciente (13x).
- **Base**: crecimiento moderado en línea con guía conservadora, múltiplo se mantiene estable en el nivel actual.
- **Bajista**: escenario de "trampa de valor" de TIKR — el litigio del Reino Unido supera lo provisionado, Brasil/México siguen deteriorándose, y el múltiplo revierte hacia el rango histórico de comparables europeos (8x).

**Rango de precio objetivo a 3 años: 7.3 € – 16.6 €**, con el escenario base apenas por encima del precio actual (11.92 €) — el mercado ya no ofrece un margen de seguridad amplio en el escenario central.

### 7.5 Comparación con la valoración histórica propia

El P/BPTA actual (2.07x) está muy por encima de los niveles de 2021-2023, cuando Santander cotizaba de forma recurrente por debajo de 1x valor tangible en libros tras años de RoTE de un solo dígito. La revalorización de los últimos años refleja la mejora real de rentabilidad (RoTE 12.7%→16.3%), pero también reduce el margen de seguridad para un comprador nuevo hoy frente a quien compró en el punto de RoTE deprimido.

**Pregunta al estilo Duan Yongping — "si la bolsa cerrara mañana durante 5 años, ¿estarías dispuesto a mantener esta acción a este precio?"**: la respuesta honesta es matizada. Para un holder ya posicionado desde niveles de valoración más bajos, sí — la trayectoria de mejora operativa y la política de retribución del ~50% del beneficio hacen razonable mantener. Para un comprador nuevo al precio actual, el margen de seguridad es limitado: el escenario base del modelo de tres escenarios apenas ofrece retorno positivo, y el riesgo bajista (litigio del Reino Unido + reversión de múltiplo) es asimétrico a corto-medio plazo.

---

## 8. Memorando de decisión final

### 8.1 Tabla resumen

| Dimensión | Conclusión | Confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | Operador eficiente de banca retail/consumo diversificada, sin poder de fijación de precios, con ventaja de coste tecnológico real pero replicable a largo plazo | Media-alta |
| Foso económico (Buffett) | Mixto: se amplía en el eje tecnológico/de coste, se estrecha frente a neobancos en los mercados más rentables (Brasil, México) | Media |
| Equipo directivo (Duan Yongping + Buffett) | Ejecución operativa sólida y verificable (eficiencia, capital, M&A reciente bien estructurado); antecedente de fricción de gobernanza (caso Orcel) y remuneración cuestionada por ISS | Media-alta |
| Mayor riesgo (Munger) | Litigio de comisiones de financiación de automóvil en el Reino Unido — banda de exposición muy amplia (461 M£ provisionado vs. hasta 1,400 M£ estimado por RBC) y sin resolución legal a la fecha | Alta (el riesgo está bien documentado, aunque su desenlace es incierto) |
| Tendencia sectorial/civilizatoria (Li Lu) | Sector maduro, sin cambio de paradigma, pero con reconfiguración de coste vía banca digital que favorece a los jugadores de menor coste de servicio | Media |
| Valoración (Buffett + Duan Yongping) | El precio actual ya incorpora buena parte de la mejora de RoTE guiada hasta 2028; margen de seguridad limitado en el escenario central | Media-alta (cálculo verificado con herramienta; el input de crecimiento futuro es una estimación) |

### 8.2 Tabla de decisión

| Estrategia | Recomendación |
|---|---|
| Inversor sin posición | Observar, no comprar de forma agresiva al precio actual (11.92 €); el escenario base del modelo de tres escenarios ofrece apenas +2.9% a 3 años, lo que no compensa el riesgo del litigio del Reino Unido ni la concentración en mercados emergentes |
| Inversor con posición | Mantener — la política de retribución (~50% del beneficio, mitad dividendo/mitad recompra) y la mejora operativa verificable sustentan la tesis de largo plazo, pero conviene vigilar de cerca la resolución del litigio de comisiones de automóvil en el Reino Unido |
| Señal de venta | Si la provisión del litigio del Reino Unido se revisa sustancialmente al alza hacia la banda de RBC (1,400 M£) sin que el mercado lo haya descontado ya, o si el RoTE deja de mejorar hacia el objetivo de 2028 |
| Señal de refuerzo de posición | Una caída del precio hacia la zona de 8-9 € (más cerca del escenario bajista del modelo) ofrecería un margen de seguridad sustancialmente mejor para nueva entrada de capital |

### 8.3 Comentarios simulados de los cuatro maestros

> "Nunca inviertas en un negocio que no puedas entender. La banca es entendible en su mecánica, pero un banco con activos en nueve países y exposición cambiaria en cada uno de ellos exige entender nueve negocios distintos, no uno." — Warren Buffett (paráfrasis del marco de inversión de Buffett, adaptada al caso; no es una cita textual sobre Santander)

> "Muéstrame el incentivo y te mostraré el resultado. El hecho de que ISS haya recomendado votar en contra de una subida salarial por débil correlación entre pago y desempeño es la clase de señal que merece más atención de la que suele recibir." — Charlie Munger (paráfrasis del marco de Munger, adaptada al caso)

> "Haz lo correcto, y hazlo bien. Recortar el ratio de eficiencia de 45.8% a 41.2% en tres años reutilizando la misma plataforma tecnológica en nueve países es 'hacer lo correcto' de forma verificable — pero el precio ya lo sabe, y ya lo paga." — Duan Yongping (paráfrasis del marco de Duan Yongping, adaptada al caso)

> "La pregunta no es si Santander sobrevivirá los próximos 20 años — probablemente sí. La pregunta es si seguirá siendo relevante frente a competidores digitales que operan con una fracción de su coste estructural en los mercados donde hoy genera su mayor rentabilidad." — Li Lu (paráfrasis del marco de Li Lu, adaptada al caso)

---

## Cierre: confianza del análisis de IA vs. certeza de inversión

**Lo que este informe puede afirmar con alta confianza (datos verificados con herramienta, doble fuente)**: la trayectoria de mejora operativa 2021-2025 (beneficio, eficiencia, CET1), la magnitud de la retribución al accionista, la estructura de las operaciones de M&A recientes (Polonia, TSB, Webster), y las métricas de valoración actuales verificadas con `financial_rigor.py`.

**Lo que este informe no puede afirmar con la misma confianza**: el desenlace del litigio de comisiones de financiación de automóvil en el Reino Unido (proceso legal abierto), la velocidad real de pérdida de cuota frente a neobancos en Brasil/México (sin datos directos de cuota de mercado), la atribución cambiaria exacta de la caída de beneficio en Brasil (afirmación de la propia compañía, no verificada de forma independiente), y la partida de 785 M€ no reconciliada entre la suma de segmentos geográficos y el beneficio consolidado.

La calificación de "nivel A" de riqueza informativa de Santander significa que la **confianza en los datos** de este informe es alta — pero eso es distinto de la **certeza de inversión**, que depende de juicios sobre el desenlace de un litigio en curso, la dinámica competitiva futura frente a la banca digital, y si el mercado ha sobrerreaccionado o infrarreaccionado a la mejora de RoTE ya visible en el precio. Un lector de este informe debería tratar la sección de datos (§1, §2, §5.2-5.3, §7.1) como sólida, y las secciones de riesgo (§4, §6.3) y valoración prospectiva (§7.3-7.4) como marco de análisis razonado, no como predicción.

---

### Fuentes principales consultadas

santander.com (comunicados de resultados FY2021-FY2025, notas de prensa sobre recompras, Investor Day 2026, informe financiero 4T2025); SEC EDGAR (20-F/6-K/425 de Santander, Webster Financial, Erste Group, Nu Holdings); stockanalysis.com; companiesmarketcap.com; Yahoo Finance; FCA (comunicados sobre el esquema de indemnización de comisiones de financiación de automóvil); ECB (comunicados de política monetaria y supervisión); TIKR.com; CNBC; Irish Times; Banking Dive; rankingslatam.com; Business of Apps.
