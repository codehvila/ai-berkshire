# ASML Holding N.V. (Euronext: ASML / NASDAQ ADR: ASML) — Informe de Investigación

**Fecha de investigación**: 12 de julio de 2026
**Marco de análisis**: Buffett – Munger – Duan Yongping – Li Lu (cuatro maestros)
**Precio actual**: 1.569,00 € (Euronext Ámsterdam, cierre 10-jul-2026) / 1.797,32 $ (ADR NASDAQ, cierre 10-jul-2026) — ratio ADR 1:1, coherencia cambiaria verificada (EUR/USD implícito 1,1455 vs. BCE 1,1430, desviación ±0,2%)

**⚠️ Aviso de calendario**: ASML publica resultados del 2T2026 el **15 de julio de 2026 — dentro de 3 días**. Toda la sección de valoración de este informe puede quedar desplazada por ese evento. Cualquier decisión debería esperar a esa publicación.

---

## Declaración previa: calificación de riqueza informativa y limitaciones de la investigación con IA

**Calificación de riqueza informativa: Nivel A (información abundante)**

ASML cotiza en Euronext Ámsterdam y NASDAQ, es emisor registrado ante la SEC (20-F/6-K), forma parte del AEX y del top-10 mundial por capitalización, y está cubierta por decenas de analistas. El monopolio EUV es probablemente la tesis de inversión más documentada del sector tecnológico europeo.

**Trampa de investigación con IA para una empresa de nivel A**: el consenso está extraordinariamente trabajado — "monopolio EUV, cuello de botella de la IA, backlog récord". Un informe que repita eso no aporta nada. El valor incremental de este informe está en: (1) la validación programática de cifras (se detectó y resolvió una discrepancia sistemática de ~4% en el beneficio neto entre fuentes, ver §1.2); (2) la cuantificación de lo que el precio actual ya descuenta (DCF inverso, §7.3) — que es el punto donde el consenso alcista es más vulnerable; y (3) el etiquetado explícito de qué es dato verificado y qué es inferencia.

**Declaración de limitaciones**: este informe se basa en información pública. No puede verificar: el desenlace del MATCH Act en el Congreso de EE. UU. (proceso legislativo abierto), el ritmo real de adopción de High-NA EUV por los clientes, ni el punto exacto del ciclo de capex de semiconductores en que nos encontramos. Los resultados del 2T2026 (15-jul-2026) no están incorporados.

---

## 1. Recolección y validación cruzada de datos

### 1.1 Tabla de datos clave (validados con `tools/financial_rigor.py`)

| Dato | Valor | Estado de validación |
|---|---|---|
| Precio Euronext (10-jul-2026) | 1.569,00 € | ✅ stockanalysis.com |
| Precio ADR NASDAQ (10-jul-2026) | 1.797,32 $ | ✅ stockanalysis.com; coherente con companiesmarketcap |
| Ratio ADR : acción ordinaria | 1:1 | ✅ Coherencia cambiaria verificada (±0,2% vs. BCE) |
| Acciones en circulación | ~384,8–385,4 M | ✅ 2 fuentes, desviación <1% (recompras activas) |
| Capitalización bursátil (EUR) | ~603.760 M€ | ✅ Desviación de verificación 0,00% |
| Capitalización bursátil (USD) | ~690.240–692.710 M$ | ✅ Desviación de verificación 0,35% |
| Ventas netas FY2025 | 32.667 M€ (+16%) | ✅ Triple fuente, desviación ≤0,10% |
| Beneficio neto FY2025 | 9.600 M€ (US GAAP oficial) | ⚠️ Ver §1.2 — discrepancia del 4% con S&P Global |
| BPA básico FY2025 | 24,73 € | ✅ Nota de prensa oficial (28-ene-2026) |
| Margen bruto FY2025 | 52,8% | ⚠️ stockanalysis: 51,83% — se adopta cifra oficial |
| FCF FY2025 | 12.253 M€ | ⚠️ Fuente única (stockanalysis); derivado de 13.827 M€ operativo − 1.574 M€ capex |
| Caja neta (31-dic-2025) | +8.931 M€ (13.322 M€ caja − 4.391 M€ deuda) | ✅ Caja con doble fuente exacta; deuda de fuente única |
| Backlog (31-dic-2025) | 38.800 M€ | ✅ Oficial; coherente con ~45 B$ citados en prensa |
| Pedidos (bookings) FY2025 | 28.035 M€ (4T récord: 13.158 M€) | ✅ Oficial + confirmación de prensa |

**Verificación de capitalización bursátil (tool output, base EUR)**:
```
Precio: 1.569,00 € | Acciones: 384,80 M | Cap. calculada: 603.750 M€
Cap. reportada (stockanalysis): 603.760 M€ | Desviación: 0,00% ✅
```

**Verificación de capitalización bursátil (tool output, base USD/ADR)**:
```
Precio: 1.797,32 $ | Acciones: 385,40 M | Cap. calculada: 692.690 M$
Cap. reportada (stockanalysis): 690.240 M$ | Desviación: 0,35% ✅
```

### 1.2 Discrepancias detectadas y resueltas

| Dato | Fuente 1 | Fuente 2 | Desviación | Resolución |
|---|---|---|---|---|
| Beneficio neto FY2025 | ASML oficial (US GAAP): 9.600 M€ | stockanalysis (S&P Global): 9.996 M€ | ~4% ❌ | Se adopta la cifra oficial US GAAP. La diferencia parece deberse a la estandarización de S&P Global, y el mismo sesgo sistemático aparece en toda la serie 2021-2024 de stockanalysis. Regla del proyecto: informe de la compañía primero |
| BPA FY2025 | Oficial: 24,73 € (básico) | stockanalysis: 26,26 € (diluido) | ~6% ❌ | Deriva de la discrepancia anterior; no se explica solo por básico vs. diluido. Se adopta 24,73 € oficial |
| Margen bruto FY2025 | Oficial: 52,8% | stockanalysis: 51,83% | ~1 p.p. | Mismo origen. Se adopta 52,8% oficial |
| PER forward | stockanalysis (12-jul): 45,4x | Prensa citando Morningstar (may-jun): ~51x | ~11% ❌ | Difieren la fecha y la estimación de BPA 2026 usada. Se reporta el rango 45-51x |
| Capitalización USD | stockanalysis: 690,24 B$ | companiesmarketcap: 692,71 B$ | 0,4% | Ruido de fecha/hora de corte, aceptable |

**Consecuencia metodológica importante**: la serie histórica de beneficio neto/BPA de stockanalysis (S&P Global) difiere sistemáticamente de las cifras US GAAP oficiales de ASML. Para este informe, las cifras de beneficio y BPA usadas en valoración son las **oficiales** (9.600 M€ / 24,73 €), lo que hace el PER calculado (63,45x) *más conservador* (más alto) que el publicado por agregadores (59,9x, que usan la base S&P más alta). Ambas cifras se muestran donde procede.

### 1.3 Datos de una sola fuente (no doblemente verificados)

Margen operativo FY2025 (36,9%), deuda total (4.391 M€), FCF (12.253 M€) — todos de stockanalysis; la nota de prensa oficial no los desglosa. Concentración de clientes (TSMC ~24%, top-2 ~38%) — de un agregador que cita el informe anual 2025; pendiente de confirmar contra el 20-F. macrotrends resultó inaccesible (HTTP 402) durante esta investigación, limitando la triple verificación de la serie histórica. **Estos datos se usan con la etiqueta [fuente única].**

---

## 2. Análisis de la esencia del negocio — Duan Yongping, "el negocio correcto"

### 2.1 Definición en una frase

**La esencia del negocio de ASML: ser el único proveedor mundial de las máquinas de litografía EUV sin las cuales es físicamente imposible fabricar chips avanzados, y monetizar cada máquina dos veces — primero como venta de sistema (~200-400 M$ por unidad High-NA) y después como flujo perpetuo de servicios y mejoras durante los 20-30 años de vida útil del equipo instalado.**

No es un fabricante de equipos cíclico ordinario: es un peaje tecnológico sobre la ley de Moore. Cada empresa que quiera fabricar chips por debajo de ~7nm debe pasar por ASML. No hay segunda fuente. No la ha habido desde 2019 y, según la evidencia disponible, no la habrá al menos hasta ~2030 (ver §3).

### 2.2 Estructura de ingresos (ejercicio 2025)

| Partida | Importe | Var. interanual | Nota |
|---|---|---|---|
| Ventas netas totales | 32.667 M€ | +16% (exacto: +15,6%; la compañía redondea a 16%) | 300 sistemas nuevos + 27 usados |
| — Sistemas EUV | 11.600 M€ | +39% | Ingreso reconocido en 48 sistemas; incluye 2 High-NA en el 4T |
| — Sistemas DUV | 12.000 M€ | −6% | 279 sistemas, 47% inmersión |
| — Metrología e inspección | 825 M€ | +28% | |
| — Installed Base Management (servicios + upgrades) | 8.193 M€ | +26% | ~25% de las ventas; recurrente por naturaleza |
| Beneficio neto | 9.600 M€ | +~18% [estimado sobre serie oficial] | Margen neto ~29,4% |

**Lectura**: el motor del crecimiento es EUV (+39%) y la base instalada (+26%); DUV cae (−6%) por la normalización de China. El 25% de ingresos recurrentes de servicios es la parte del negocio que amortigua el ciclo: la base instalada solo puede crecer.

### 2.3 Tendencia de rentabilidad a 5 años (2021–2025)

| Indicador | 2021 | 2022 | 2023 | 2024 | 2025 |
|---|---|---|---|---|---|
| Ventas (M€) | 18.611 | 21.173 | 27.559 | 28.263 | 32.667 |
| Margen bruto | 52,7% | 49,7% | 50,0% | 50,5% | 52,8%* |
| FCF (M€) | 9.945 | 8.153 | 4.381 | 10.303 | 12.253 |

Serie de stockanalysis (S&P Global); (*) para 2025 se muestra la cifra oficial de ASML (52,8%). La serie de beneficio neto de stockanalysis presenta el sesgo sistemático descrito en §1.2 y se omite aquí para no mezclar bases; la referencia oficial FY2025 es 9.600 M€.

**Lectura**: ventas +76% acumulado en 4 años con margen bruto estable en el rango 50-53% — crecimiento sin degradación de márgenes. El bache de FCF de 2023 (4.381 M€) se explica por absorción de circulante en plena expansión de capacidad, no por deterioro del negocio; en 2024-2025 el FCF marcó récords. Nota: ese bache ilustra que incluso un monopolio tiene FCF volátil por el calendario de pagos anticipados de clientes.

### 2.4 Modelo de negocio: ¿venta puntual o recurrencia?

Híbrido con recurrencia creciente y bloqueo (lock-in) extremo:

- **Venta de sistemas** (~75% de ingresos): puntual pero con backlog plurianual (38,8 B€, más de un año de ventas) y pedidos que requieren años de antelación — la "venta puntual" de ASML tiene más visibilidad que la suscripción de muchas empresas de software.
- **Base instalada** (~25%): servicios, recambios y mejoras de por vida. Una máquina EUV no se puede mantener sin ASML — el "cliente cautivo" aquí es literal: ni siquiera existe mercado gris de mantenimiento EUV.
- **Apalancamiento operativo**: alto. El coste de I+D (~4-5 B€/año) es fijo; cada sistema incremental cae sobre la misma base de conocimiento.

**Pregunta al estilo Duan Yongping — "¿en qué es buena esta empresa? ¿Si solo pudiera describirla en una frase?"**: ASML es la única empresa del mundo que sabe integrar los ~457.000 componentes de una máquina que dispara estaño fundido con láseres 50.000 veces por segundo para generar luz de 13,5 nm — y ese conocimiento integrador, acumulado durante 30 años junto a Zeiss, TSMC, Intel y Samsung, no se puede comprar con dinero. **Es de los poquísimos negocios del mundo donde la respuesta a "¿podría un competidor con 100.000 M$ replicarlo?" es un "no" demostrado empíricamente** — China lleva años intentándolo con recursos estatales ilimitados.

---

## 3. Evaluación del foso económico — Buffett, "moat"

| Tipo de foso | Evaluación | Evidencia |
|---|---|---|
| Marca / poder de fijación de precios | **Muy fuerte** | Precios por sistema High-NA de ~350-400 M$ [estimado de prensa]; los clientes pagan anticipos multianuales; margen bruto 52,8% en un negocio de hardware pesado |
| Coste de cambio | **Máximo teórico** | No existe alternativa a la que cambiar en EUV. En DUV inmersión, Nikon sobrevive marginalmente (<15% de cuota) |
| Efecto de red | **Fuerte (ecosistema)** | Co-desarrollo con TSMC/Intel/Samsung/Zeiss: cada generación se diseña con y para los clientes; el conocimiento de proceso acumulado en la base instalada realimenta la siguiente generación |
| Economías de escala | **Fuerte** | ~4-5 B€/año de I+D solo son amortizables con el 100% del mercado EUV; ningún entrante puede igualar esa inversión sin ingresos que la financien |
| Barrera tecnológica/regulatoria | **Extrema y única** | 100% de cuota en EUV; >84% en litografía total [Mordor/GM Insights]. Cadena de proveedores irreplicable (ópticas Zeiss, láseres Trumpf, fuente de luz Cymer — propiedad de ASML). Paradoja regulatoria: los controles de exportación occidentales *protegen* el monopolio al prohibir la transferencia tecnológica a China |

**Tendencia del foso — últimos 5 años vs. próximos 5**: se ha **ampliado**. En 2021 High-NA era un plan; en 2025 ya reconoce ingresos (2 sistemas en el 4T2025). Cada generación (Low-NA → High-NA → futura Hyper-NA) añade otra década de ventaja acumulada. El esfuerzo chino (SMEE, SiCarrier, Huawei) sigue sin producir litografía sub-14nm fiable; los análisis independientes sitúan la producción doméstica sub-10nm no antes de ~2030 [Asia Times, jul-2026; abhs.in, 2026], y eso sería DUV multi-patterning, no EUV.

**Caso bajista sobre el foso (obligatorio considerarlo)**: (1) el foso es absoluto *dentro* de la litografía óptica avanzada, pero no protege contra un **desvío tecnológico** — si el avance de nodos dejara de ser económicamente rentable (fin de la ley de Moore económica) o si emergieran rutas alternativas (empaquetado avanzado, chips fotónicos, nanoimpresión de Canon en nichos), la demanda de EUV podría estancarse sin que ASML pierda cuota de nada; (2) el monopolio invita a riesgo político permanente — ASML no controla a quién puede vender (Washington y La Haya deciden); (3) la concentración de clientes es el espejo del monopolio: TSMC ~24% de ventas, top-2 ~38% [fuente única, agregador citando informe anual]. Si Intel recorta capex o Samsung tropieza en foundry, el "monopolio" tiene 2-3 compradores reales de EUV de vanguardia.

**Pregunta al estilo Buffett — "¿seguirá este foso en 10 años? ¿Qué podría destruirlo?"**: el foso frente a competidores directos casi con seguridad seguirá — nadie está a menos de una década. Lo que podría erosionarlo no es un rival, sino la **irrelevancia del avance de nodo**: si la economía de la computación se desplaza hacia arquitecturas que no exijan litografía de vanguardia, ASML pasaría de peaje de la ley de Moore a proveedor de un mercado maduro. Hoy la evidencia (capex récord de IA, nodo 2nm, HBM) apunta en la dirección contraria — pero esa es exactamente la apuesta que el precio actual ya da por ganada (§7).

---

## 4. Pensamiento inverso y lista de riesgos — Munger, "dale la vuelta"

### 4.1 Rutas de fracaso

| Ruta | Probabilidad estimada | Impacto | Nota |
|---|---|---|---|
| Compresión de múltiplo sin fallo operativo: la acción cae 30-40% simplemente por volver a su PER histórico (35-45x desde ~60x) | **Alta** | Alto para el accionista, nulo para el negocio | Es la ruta de pérdida más probable. Ya ocurrió en 2022 (la acción cayó ~45% sin deterioro del monopolio). La revalorización del +124% en 12 meses ha adelantado años de crecimiento |
| MATCH Act u otra vuelta de tuerca regulatoria elimina las ventas de DUV inmersión y el servicio técnico en China | Media | Medio-alto | China ≈ 33% de ventas 2025, guiada a ~20% en 2026 por ASML. El MATCH Act (abr-2026, pendiente en el Congreso) prohibiría también el servicio — atacando el segmento recurrente de alto margen. La acción ya cayó con la noticia [CNBC, abr-2026] |
| Pico de ciclo de capex en 2027: exceso de capacidad de IA/memoria → colapso de pedidos 2028 | Media | Alto | SEMI proyecta récords 133→145→156 B$ en 2025-2027 y los ciclos de equipos siempre han tenido resaca. Un PER de 60x no sobrevive a un año de bookings cayendo |
| Adopción de High-NA más lenta de lo previsto ("pausa High-NA") | Media | Medio | Solo 2 sistemas High-NA con ingreso reconocido en 4T2025. Intel es el adoptante más entusiasta — y es el cliente financieramente más débil. TSMC ha sido públicamente escéptico sobre el calendario de High-NA |
| Escrutinio del BIS por presunto desvío de componentes EUV a China daña la relación regulatoria | Baja-media | Medio | Desde abr-2026 el Dpto. de Comercio de EE. UU. interroga a ASML; la compañía niega incumplimientos [techtimes, jun-2026]. Sin resolución a la fecha |
| Desvío tecnológico (empaquetado avanzado, fotónica, fin de la ley de Moore económica) | Baja (horizonte >10 años) | Muy alto | Es el único riesgo existencial real; no hay señales a corto plazo |

### 4.2 Analogía histórica

- **Cisco 2000**: monopolio de facto del equipamiento de internet, tesis correcta (internet creció 100x), y aun así la acción tardó >20 años en recuperar su máximo — porque el PER de 100x ya lo descontaba todo. La analogía relevante para ASML hoy no es "¿es un gran negocio?" (lo es, más que Cisco), sino "¿qué parte del futuro está ya en el precio?".
- **ASML 2021-2022**: la propia empresa es su mejor analogía — en nov-2021 cotizó a PER ~55x, cayó ~45% en 2022 sin que el monopolio sufriera un rasguño, y quien compró en el pico tardó ~2 años en recuperarse. Hoy cotiza a PER 60-63x.
- Contraejemplo alcista: quien nunca vendió ASML desde 2015 multiplicó por >15x — la calidad extrema del negocio ha acabado rescatando cada punto de entrada caro, *si el horizonte era de década*.

### 4.3 Verificación cruzada con otras disciplinas

- **Teoría de colas/cuellos de botella**: en una cadena de suministro, el cuello de botella captura el margen — ASML es el cuello de botella físico del capex de IA (los fabricantes hacen cola años por cada EUV). Esto valida el poder de precios *mientras* la demanda exceda la capacidad (~110 sistemas Low-NA/año según JP Morgan).
- **Curva de adopción**: EUV está en fase de despliegue masivo (madurez temprana); High-NA está en fase de innovadores (2 sistemas). El relevo generacional entre ambas curvas es el riesgo de "hueco" de crecimiento 2027-2028.
- **Teoría de juegos geopolítica**: EE. UU. necesita que ASML no venda a China, pero también que ASML siga siendo el monopolio (si muriera, China celebraría). Resultado probable: presión permanente pero calibrada — restricciones sí, destrucción no.

### 4.4 Autocrítica de sesgos

- **Sesgo narrativo**: "monopolio + IA" es posiblemente la narrativa más seductora del mercado actual. Este informe la comparte en lo cualitativo — el antídoto es el DCF inverso de §7.3, que cuantifica cuánta narrativa hay ya en el precio.
- **Sesgo de anclaje**: anclar en el +124% de revalorización de 12 meses ("ya ha subido demasiado") es tan erróneo como anclar en el backlog récord ("todo va bien"). Lo relevante es precio vs. valor, no precio vs. precio pasado.
- **Sesgo de confirmación del consenso**: consenso de analistas ~1.807 $ ≈ precio actual — el analista mediano ya no ve upside. Cuando el consenso alcista no ve recorrido y aun así mantiene "comprar", conviene desconfiar de la inercia de las recomendaciones.

**Argumentos de la parte bajista (síntesis de fuentes de mercado, 2026)**: (1) valoración en máximos históricos de múltiplo con Morningstar en "Sell" [may-2026]; (2) acantilado chino 33%→20% con el MATCH Act amenazando también los servicios; (3) guía de margen bruto del 2T2026 (51-52%) por debajo del 1T (53%); (4) adopción High-NA lenta; (5) pico de ciclo SEMI en 2027.

**Pregunta al estilo Munger — "¿dónde es más probable que me equivoque?"**: en el timing del ciclo. El error clásico con ASML no es equivocarse sobre la calidad del negocio (es casi imposible — la evidencia es abrumadora), sino comprar calidad extrema a precio extremo justo antes del giro de ciclo, confundiendo un backlog récord (indicador retrasado del entusiasmo de los clientes) con visibilidad real de 2028.

---

## 5. Evaluación del equipo directivo — Duan Yongping "las personas correctas" + Buffett "integridad"

### 5.1 Perfil

- **Christophe Fouquet** — CEO desde abril de 2024. Francés, en ASML desde 2008, ex-responsable del negocio EUV (el producto que define la empresa) y ex-Chief Business Officer. Promoción interna pura: continuidad del ADN técnico.
- **Roger Dassen** — CFO desde 2018, ex-CEO global de auditoría de Deloitte. Perfil de rigor contable elevado.

### 5.2 Decisiones clave revisadas (tabla)

| Fecha | Decisión | Resultado | Valoración |
|---|---|---|---|
| 2024 | Transición de CEO Wennink→Fouquet planificada con años de antelación, promoción interna | Sin sobresaltos operativos; guía cumplida y elevada desde entonces | ★★★★★ — sucesión de manual |
| Nov-2024 | Investor Day: reafirmación de objetivos 2030 (44-60 B€ ventas, 56-60% margen bruto) pese al ruido chino | Credibilidad intacta; 2025 batió expectativas | ★★★★ |
| Sept-2025 | **Inversión de 1.300 M€ en Mistral AI** (~11% del capital, mayor accionista; Dassen en el comité estratégico) | Sin retorno visible aún. Diversificación fuera del núcleo de competencia — una empresa de litografía comprando participación en un laboratorio de modelos de IA | ★★ — la decisión más cuestionable del mandato de Fouquet: 1,3 B€ del accionista en un negocio que ASML no controla ni entiende mejor que el mercado. [Opinión] Huele más a política industrial europea que a asignación de capital disciplinada |
| Ene-2026 | Nuevo programa de recompras de 12.000 M€ hasta 2028 + dividendo 2025 +17% (7,50 €) | En ejecución (1,1 B€ recomprados en 1T2026) | ★★★★ — retorno al accionista sólido; la crítica: recomprar a PER 60x crea menos valor que hacerlo a PER 25x como en 2021-2022 |
| Abr-2026 | Elevación de guía FY2026 a 36-40 B€ (desde 34-39 B€) en plena amenaza del MATCH Act | Confianza respaldada por backlog | ★★★★ |
| 2019-2026 | Cumplimiento estricto y verificable de los controles de exportación (nunca envió EUV a China) | Ante el escrutinio del BIS de 2026, la posición negociadora de ASML es limpia | ★★★★★ — integridad regulatoria como activo estratégico |

### 5.3 Asignación de capital

| Año | Dividendos pagados (M€) | Recompras (M€) | Total | % del FCF |
|---|---|---|---|---|
| 2023 | 2.348 | 1.000 | 3.348 | 76% (FCF deprimido ese año) |
| 2024 | 2.453 | 500 | 2.953 | 29% |
| 2025 | 2.550 | 5.950 | 8.500 | 69% |

Patrón: dividendo creciente y estable (+17% en 2025), recompras oportunistas pero — nota crítica — más agresivas en 2025 (acción cara) que en 2023-2024 (acción más barata). Balance con caja neta de +8.931 M€: fortaleza sin apalancamiento.

### 5.4 Alineación accionarial

Fouquet posee ~0,008% del capital (~46 M$) — modesto en porcentaje, significativo en términos personales; compró acciones con dinero propio en enero de 2025 (~750 $/ADR), igual que Dassen (sept-2024 y feb-2025) [TIKR/simplywall.st, agregadores]. Compras de insiders a precios muy inferiores al actual: señal de convicción entonces; su ausencia a los precios de 2026 es coherente con la valoración exigente. Compensación de Fouquet ~5,4 M€/año, 82% variable — razonable para el tamaño de la empresa.

**Pregunta al estilo Duan Yongping — "¿sobreviviría la empresa a la jubilación del CEO?"**: sí, con más claridad que casi cualquier empresa analizada en este repositorio. ASML es una máquina institucional de 30 años de conocimiento acumulado con Zeiss y sus clientes; ya ha sobrevivido sin fricción a la transición Wennink→Fouquet. El riesgo de personas clave está distribuido en miles de ingenieros, no en el CEO. La reserva sobre la gestión no es de competencia ni de integridad, sino de disciplina de capital (Mistral).

---

## 6. Tendencias sectoriales y civilizatorias — Li Lu

### 6.1 ¿Cambio de paradigma o negocio maduro?

La IA es discutiblemente el tercer cambio de paradigma computacional (mainframe → PC/internet → móvil/nube → IA), y toda la cadena de valor converge en un hecho físico: **más inteligencia requiere más transistores avanzados, y los transistores avanzados requieren EUV**. SEMI proyecta un "giga-ciclo" de equipos: 133 B$ (2025) → 145 B$ (2026) → 156 B$ (2027). ASML no es un participante del paradigma: es su condición de posibilidad física.

La contrapartida: ASML captura el paradigma con **beta de ciclo**. No monetiza el uso de la IA (como los hyperscalers) ni el diseño (como Nvidia); monetiza la *construcción de capacidad* — y la construcción de capacidad es cíclica por naturaleza, incluso dentro de una megatendencia secular.

### 6.2 Posición en la cadena de valor

| Eslabón | Quién | Poder de negociación frente a ASML |
|---|---|---|
| Proveedores críticos | Zeiss (óptica, exclusivo), Trumpf (láser), Cymer (fuente de luz, propiedad de ASML) | Simbiosis, no rivalidad: Zeiss no puede vender a nadie más |
| ASML | Litografía avanzada: 100% EUV, >84% total | — |
| Clientes | TSMC (~24% de ventas), Samsung, Intel, SK Hynix, Micron | Alto y creciente: 2-3 compradores reales de EUV de vanguardia. Es la simetría oscura del monopolio |
| Cliente final | Nvidia/hyperscalers/Apple vía foundries | Indirecto; el capex de IA de los hyperscalers (>300 B$/año agregado [estimado de prensa]) es la marea que sube |

### 6.3 TAM y techo

Objetivos oficiales 2030 (Investor Day nov-2024): mercado de semiconductores >1 billón $ en 2030 (~9% CAGR), ventas ASML de **44-60 B€** con margen bruto **56-60%**. Sobre la base 2025 (32,7 B€), el punto medio (52 B€) implica ~9,7% CAGR — alcanzable si el capex de IA se sostiene; el extremo superior (60 B€, ~13% CAGR) exige que no haya ningún año de resaca antes de 2030. BofA modela incluso 73 B€ [jul-2026] — escenario por encima de la guía de la propia compañía, ilustrativo del optimismo del sell-side en el pico del entusiasmo.

**Pregunta al estilo Li Lu — "dentro de 20 años, ¿será el 'Standard Oil de su época' o el '3Com que se desvaneció'?"**: ASML es de las pocas empresas donde la analogía con Standard Oil es estructuralmente defendible — controla el 100% del insumo crítico de la industria definitoria de la era, con barreras que ni un estado-continente ha podido replicar. El único matiz: Standard Oil fue troceada por ser monopolio; el "riesgo antimonopolio" de ASML es distinto — no ser troceada, sino ser convertida en instrumento geopolítico cuyo mercado definen los gobiernos, no ella.

---

## 7. Valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### 7.1 Métricas de valoración actuales (verificadas con herramienta)

```
Precio: 1.569,00 € | BPA oficial FY2025: 24,73 € | FCF/acción: ~31,50 € | Dividendo: 7,50 €

PER (BPA FY2025 oficial):    1.569,00 / 24,73 = 63,45x
Rentabilidad del beneficio:  1,58%
P/FCF:                       49,81x  |  FCF yield: 2,01%
Rentabilidad por dividendo:  0,48%
```

Referencias de agregadores (base S&P/ADR): PER TTM 59,9x, PER forward 45,4-51x, P/S 17,8x, EV/EBITDA 46,7x [stockanalysis, 12-jul-2026]. La diferencia entre el 63,45x calculado y el 59,9x publicado se explica por la base de BPA (oficial vs. S&P, §1.2) y por el trimestre 1T2026 ya incorporado al TTM.

### 7.2 Comparación con la propia historia y con comparables

- **Historia propia**: PER medio de 5 años ~35-45x; EV/EBITDA histórico ~30-35x vs. 46,7x actual. La acción se ha revalorizado **+124% en 12 meses** (capitalización: 280,6 B$ fin 2024 → 416,4 B$ fin 2025 → ~690 B$ hoy). Morningstar rebajó a "Sell" por valoración [may-2026]. Consenso medio de analistas ~1.807 $ ≈ precio actual.
- **Comparables** (cierre 10-jul-2026, stockanalysis):

| Empresa | PER TTM | PER fwd | Crecimiento ventas |
|---|---|---|---|
| **ASML** | 59,9x | 45,4x | +16% FY2025 (guía FY2026: +10-22%) |
| Applied Materials | 56,7x | 40,3x | +3,3% |
| Lam Research | 66,2x | 46,3x | +26,5% |
| KLA | 65,5x | 48,4x | +13,4% |
| Tokyo Electron | 56,8x | n.d. | +0,5% |

**Lectura**: todo el sector de equipos cotiza a 50-66x — múltiplos de pico de entusiasmo sectorial, no una anomalía específica de ASML. Eso es más inquietante, no menos: cuando el sector entero descuenta perfección, la corrección (si llega) también es sectorial. ASML no está cara *frente a sus comparables*; está cara junto con todos ellos frente a la historia.

### 7.3 ¿Qué descuenta el precio actual? (DCF inverso, calculado con herramienta)

Para que un comprador a 1.569 € obtenga un 10% anual durante 10 años con un PER terminal de 30x (generoso: sería aún premium sobre el mercado en 2036), ASML necesita:

```
BPA 2035 requerido: 1.569 × 1,10^10 / 30 = 135,65 €
CAGR de BPA implícito: (135,65 / 24,73)^(1/10) − 1 = 18,6% anual durante 10 años
```

Contexto: la guía 2030 de la propia ASML (punto medio: 52 B€ de ventas, ~58% margen bruto) implica un CAGR de ventas de ~9,7% 2025-2030. Para sostener un 18,6% de CAGR de BPA durante una **década** haría falta que se cumpliera el extremo superior de todo simultáneamente: techo de la guía de ventas, techo de margen, recompras continuas y ningún año de ciclo bajista hasta 2036. **El precio actual no descuenta el escenario base de la propia compañía: descuenta su escenario óptimo prolongado más allá de 2030.**

### 7.4 Valoración en tres escenarios (herramienta, base EUR, horizonte 3 años)

```
Escenario       Crecimiento anual   PE objetivo   BPA objetivo   Precio objetivo   Variación
Alcista (Bull)        22%              42x           44,91          1.886,0 €        +20,2%
Base (Neutral)        14%              34x           36,64          1.245,7 €        −20,6%
Bajista (Bear)         5%              25x           28,63            715,7 €        −54,4%
```

- **Alcista**: el giga-ciclo se extiende sin resaca hasta 2028, High-NA acelera, China se resuelve sin el MATCH Act, y el múltiplo solo cede de 63x a 42x. Aun así: +20% en 3 años ≈ 6,3% anual — menos que el objetivo mínimo razonable de un inversor en renta variable.
- **Base**: crecimiento en línea con la trayectoria hacia la guía 2030, múltiplo revierte al centro de su rango histórico (34x). Resultado: **−20,6%**.
- **Bajista**: resaca de ciclo en 2027-2028 (crecimiento medio 5%), múltiplo al suelo histórico (25x): −54,4%.

**Rango de precio objetivo a 3 años: 715,7 € – 1.886,0 €, con el escenario central en 1.245,7 € — un 21% por debajo del precio actual.** La asimetría es desfavorable: el escenario alcista renta menos que un índice y el bajista corta el capital por la mitad.

**Zona de compra con margen de seguridad** [derivada del modelo]: por debajo de ~1.050-1.150 € (descuento del 10-15% sobre el escenario central), el comprador paga el negocio con el ciclo y el múltiplo ya normalizados. A 1.569 €, paga el escenario óptimo.

### 7.5 La paradoja de calidad

Este informe concluye simultáneamente que ASML es (a) uno de los mejores negocios del mundo — posiblemente el foso más verificable que existe — y (b) una mala compra al precio actual bajo cualquier supuesto que no sea la prolongación indefinida del entusiasmo. No hay contradicción: *precio es lo que pagas, valor es lo que recibes*. En 2022 el mismo negocio, con el mismo monopolio, se pudo comprar a menos de la mitad de múltiplo.

**Pregunta al estilo Duan Yongping — "si la bolsa cerrara mañana durante 5 años, ¿estarías dispuesto a mantener a este precio?"**: al negocio, sí sin dudar — es de los pocos donde los 5 años a ciegas dan igual. Al precio, no: con una rentabilidad del beneficio del 1,58% y un dividendo del 0,48%, el retorno de esos 5 años dependería casi por completo de que en la reapertura alguien pague un múltiplo aún mayor. Eso no es inversión en valor; es fe en el múltiplo.

---

## 8. Memorando de decisión final

### 8.1 Tabla resumen

| Dimensión | Conclusión | Confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | ★★★★★ Peaje físico sobre la ley de Moore; 25% de ingresos recurrentes cautivos; poder de precios demostrado | Alta |
| Foso económico (Buffett) | ★★★★★ Monopolio EUV 100%, empíricamente irreplicable (China lleva años fallando con recursos estatales); ampliándose con High-NA. Riesgos: desvío tecnológico (>10 años) y concentración de clientes (top-2 ≈ 38%) | Alta |
| Equipo directivo (Duan Yongping + Buffett) | ★★★★ Sucesión ejemplar, integridad regulatoria como activo, retorno al accionista sólido; mancha: 1,3 B€ en Mistral AI fuera del círculo de competencia y recompras más agresivas justo con la acción cara | Media-alta |
| Mayor riesgo (Munger) | Compresión de múltiplo sin fallo operativo (de 60x hacia 35-45x histórico) — la ruta de pérdida más probable, precedente en la propia ASML 2022 (−45% sin daño al monopolio). Secundarios: MATCH Act/China (33%→20% de ventas), pico de ciclo SEMI 2027 | Alta (el riesgo de valoración es cuantificable; el legislativo no) |
| Tendencia sectorial/civilizatoria (Li Lu) | Condición de posibilidad física del paradigma IA; captura la megatendencia con beta de ciclo. La analogía "Standard Oil de su época" es defendible | Media-alta |
| Valoración (Buffett + Duan Yongping) | PER 60-63x vs. 35-45x histórico; el DCF inverso exige 18,6% CAGR de BPA por una década — por encima del escenario óptimo de la guía 2030 de la propia compañía; escenario central a 3 años: −20,6% | Alta en el cálculo; los inputs de crecimiento son estimaciones |

### 8.2 Tabla de decisión

| Estrategia | Recomendación |
|---|---|
| Inversor sin posición | **No comprar al precio actual (1.569 €).** La asimetría a 3 años es desfavorable (alcista +20% / central −21% / bajista −54%). Añadir ASML a la lista de vigilancia permanente: es exactamente el tipo de negocio que se compra agresivamente en el pánico del próximo ciclo bajista. Zona de interés con margen de seguridad: **por debajo de ~1.050-1.150 €** |
| Inversor con posición | Mantener el núcleo si el horizonte es >10 años (la calidad del negocio ha rescatado históricamente cada punto de entrada caro), pero es momento defendible para **recortar posiciones sobredimensionadas**: la rentabilidad implícita a 3 años del escenario central es negativa. No añadir a estos precios |
| Señal de venta (para el holder) | (1) Aprobación del MATCH Act con prohibición de servicios en China sin reacción del precio; (2) dos trimestres consecutivos de bookings en contracción interanual con el múltiplo aún >45x; (3) cancelaciones o retrasos documentados de pedidos High-NA por parte de TSMC/Samsung |
| Señal de compra/refuerzo | Caída hacia 1.000-1.150 € (múltiplo ~35-40x sobre BPA 2026 estimado) sin deterioro del monopolio ni de la guía 2030 — el patrón ASML-2022: el precio castiga al ciclo, el foso queda intacto |
| **Regla inmediata** | **No actuar antes del 15-jul-2026 (resultados 2T2026, en 3 días): los bookings del 2T y cualquier comentario sobre el MATCH Act pueden mover la acción >5% en un día** |

### 8.3 Comentarios simulados de los cuatro maestros

> "Es un negocio maravilloso a un precio que no lo es. Preferimos comprar un negocio maravilloso a un precio justo que un negocio justo a un precio maravilloso — pero a 63 veces beneficios, esto no es un precio justo: es un precio que ya se ha gastado los próximos cinco años de maravillas." — Warren Buffett (paráfrasis del marco de Buffett, adaptada al caso; no es una cita textual sobre ASML)

> "Invierte el problema: no preguntes cuánto puede ganar ASML si todo sale bien — pregunta qué pasa con un PER de 60 si algo, cualquier cosa, sale regular. La respuesta la dio la propia acción en 2022: menos 45% sin que el monopolio perdiera un solo cliente." — Charlie Munger (paráfrasis del marco de Munger, adaptada al caso)

> "Este es un negocio que entiendo y de los 'correctos': el cliente no puede irse, el producto es imprescindible y la empresa manda en el precio. Pero comprar bien tiene dos mitades, y la segunda es el precio. Con una rentabilidad del beneficio del 1,6%, hoy solo está en venta la fe. Yo esperaría — este negocio no va a desaparecer, y el mercado siempre acaba ofreciendo un mal día." — Duan Yongping (paráfrasis del marco de Duan Yongping, adaptada al caso)

> "En veinte años, la litografía de ASML seguirá siendo la imprenta de la civilización digital — mi duda no es esa. Mi duda es si el accionista de 2026 pagó por adelantado la década de 2030. La historia de las grandes tecnológicas dice que se puede tener razón sobre la empresa y perder dinero por el precio de entrada." — Li Lu (paráfrasis del marco de Li Lu, adaptada al caso)

---

## Cierre: confianza del análisis de IA vs. certeza de inversión

**Lo que este informe puede afirmar con alta confianza (datos verificados con herramienta, doble fuente)**: precio y capitalización (desviación 0,00-0,35%), ventas FY2025 (triple fuente, ≤0,10%), caja, backlog y bookings (oficiales), la estructura de ingresos por segmento, el programa de retribución al accionista, y todos los cálculos de valoración (PER, escenarios, DCF inverso — ejecutados con `financial_rigor.py`, sin cálculo mental).

**Lo que este informe no puede afirmar con la misma confianza**: el beneficio neto exacto según la base del agregador (discrepancia del 4% documentada en §1.2, resuelta a favor de la cifra oficial), el margen operativo/deuda/FCF [fuente única], la concentración exacta de clientes [fuente única], el desenlace del MATCH Act, el punto del ciclo de capex, y el ritmo de adopción de High-NA.

**Distinción final**: la confianza de los *datos* de este informe es alta (nivel A). La *certeza de inversión* sobre la calidad del negocio también es inusualmente alta — el monopolio de ASML es de los pocos hechos empíricamente verificables del mercado. Pero la conclusión operativa (no comprar a 1.569 €) descansa sobre estimaciones de crecimiento y múltiplo que son juicio, no dato: un lector que crea que el capex de IA crecerá sin resaca hasta 2030 puede razonablemente llegar a la conclusión opuesta — y este informe le señala exactamente qué tendría que cumplirse (18,6% CAGR de BPA durante 10 años) para que tenga razón.

---

### Fuentes principales consultadas

asml.com (notas de prensa 4T/FY2025 del 28-ene-2026 y 1T2026 del 15-abr-2026, Investor Day nov-2024, nota Mistral AI sept-2025); SEC EDGAR (20-F asml-20251231, 6-K); stockanalysis.com; companiesmarketcap.com; BCE (tipo EUR/USD); CNBC (abr-2026); Motley Fool (20-abr-2026, MATCH Act); SEMI (proyecciones de equipos dic-2025/2026); Counterpoint Research; Mordor Intelligence / GM Insights (cuotas de litografía); Asia Times (jul-2026, litografía china); techtimes (jul-2026); TIKR/simplywall.st (operaciones de insiders); gurufocus (objetivos BofA/Bernstein, jul-2026); marketbeat/public.com (consenso de analistas).
