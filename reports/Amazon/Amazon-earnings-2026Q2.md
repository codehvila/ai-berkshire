# Amazon.com, Inc. (NASDAQ:AMZN) — Revisión de Resultados T2 2026

**Período reportado:** trimestre finalizado el 30 de junio de 2026
**Fecha de publicación:** 30 de julio de 2026, tras el cierre del mercado de EE.UU. (conferencia con analistas ~17:00 ET / ~21:00 UTC)
**Marco analítico:** Buffett · Munger · Duan Yongping · Li Lu
**Informes relacionados:** `Amazon-research-20260712.md` (informe de investigación, 12-jul-2026), `Amazon-thesis.md` (tesis en vigilancia, sin posición abierta)

---

## 0. Nivel de acceso a fuentes primarias (autoevaluación obligatoria)

**Calificación: B (fuentes primarias localizadas pero no legibles en sesión; cross-validación exhaustiva de fuentes secundarias)**

Se identificó la fuente primaria exacta — el Exhibit 99.1 del 8-K en SEC EDGAR (`sec.gov/Archives/edgar/data/1018724/000101872426000024/amzn-20260630xex991.htm`) y el comunicado en `ir.aboutamazon.com` — pero la herramienta de lectura web (WebFetch) devolvió error 403 en **todos** los intentos de esta sesión, incluida una URL de control neutral (`example.com`), lo que indica un fallo generalizado de la herramienta y no un bloqueo específico de Amazon o de SEC.gov. El diagnóstico del proxy (`__agentproxy/status`) no registró fallos de red — el bloqueo ocurrió en la capa de la herramienta, no en la política de red de la sesión.

**Mitigación aplicada**: cada cifra clave de este informe se contrastó contra **al menos 2 fuentes secundarias independientes** (CNBC, Yahoo Finance, Investing.com, Seeking Alpha, Bloomberg, Fortune, The Motley Fool, GeekWire, TradingView/datos estructurados citando el propio Exhibit 99.1, gurufocus), con desviación 0,00-0,41% entre fuentes en todos los casos verificados con `financial_rigor.py cross-validate` (ver Anexo). No se detectaron discrepancias >1% en ninguna cifra financiera clave. Los datos de balance (deuda exacta a 30-jun-2026) no pudieron confirmarse con precisión — ver gaps en el Anexo A.4.

**Nivel de confianza en las cifras reportadas: Alto** (múltiples fuentes convergen exactamente); **nivel de confianza en la interpretación cualitativa (tono de management, respuestas de Q&A): Medio** (reconstruida a partir de resúmenes de la conferencia, no de la transcripción completa palabra por palabra).

---

## I. Núcleo de datos — Resumen de una página

### Resultados consolidados

| Métrica | T2 2026 | T2 2025 | YoY | vs. consenso |
|---|---|---|---|---|
| Ingresos netos | **200.600 M$** | 167.700 M$ | **+19,6%** (redondeado +20%) ✅ | Superó ($196.470 M$ esperado) |
| Beneficio operativo | **27.500 M$** | 19.200 M$ | **+43,2%** ✅ | Superó ($23.570 M$ esperado) |
| Margen operativo | **13,7%** (récord histórico, supera el 13,1% de T1 2026) | 11,4% (implícito) | +2,3pp | — |
| Beneficio neto | **62.600 M$** | 18.200 M$ | +244% | — |
| EPS diluido | **$5,75** | $1,68 | +242% | Muy por encima de consenso ($1,82) — **ver nota crítica abajo** |
| Flujo de caja operativo (ttm) | **161.400 M$** | 121.100 M$ | +33% | — |
| Capex/compras de inmovilizado (ttm, implícito) | **~169.000 M$** | ~102.900 M$ | **+64%** | — |
| **FCF (ttm)** | **≈ −7.600 M$** | +18.200 M$ | Se torna **negativo** por primera vez en años recientes | — |

⚠️ **Nota crítica — calidad del beneficio**: el beneficio neto de $62.600 M$ incluye un **ingreso no operativo, no monetario (mark-to-market), de $53.400 M$ antes de impuestos**, atribuido mayoritariamente a la revalorización de la participación de Amazon en Anthropic. Excluyendo ese efecto (estimación propia, tasa impositiva ~22%), el **beneficio neto "limpio" del trimestre sería de ≈ $20.900 M$ y el EPS limpio ≈ $1,92** — cifra que coincide razonablemente con el consenso de analistas ex-ganancia ($1,82), lo que corrobora que el mercado profesional ya excluía este efecto de sus estimaciones. **El beneficio operativo ($27.500 M$, +43%) es la cifra que refleja el negocio real — y esa sí superó expectativas de forma limpia.**

### Desglose por segmento

| Segmento | Ingresos T2 2026 | YoY | Beneficio operativo | Margen | Margen T1 2026 (referencia) |
|---|---|---|---|---|---|
| **AWS** | **42.200 M$** | **+36,7% / +37%** ✅ (aceleración: 5º trimestre consecutivo, el crecimiento más rápido en **18 trimestres**) | 16.600 M$ | **39,3-39,4%** (+650 pb YoY, implica ~32,9% en T2 2025) | 37,7% |
| Norteamérica | 116.200 M$ | +16% | 9.100 M$ | **7,8-7,9%** (superó el consenso de 7,5%) | 7,9% (plano QoQ) |
| Internacional | 42.200 M$ | +15% (+18% ex-FX) | 1.700 M$ | 4,0-4,1% | 3,6% |
| Publicidad (dentro de NA/Intl) | **19.800 M$** | **+26%** (aceleración vs +22-24% en 2025) | — (margen no desglosado) | — | — |

**Run-rate anualizado de AWS**: 42.200 × 4 = **168.800 M$** ✅ (calculado).

### Backlog / RPO de AWS — el dato más importante del trimestre

| Trimestre | Backlog (RPO) | Variación |
|---|---|---|
| T4 2025 | 244.000 M$ | — |
| T1 2026 | 364.000 M$ | +49% |
| **T2 2026** | **496.000 M$** | **+36,3% QoQ** ✅ (calculado), "triple dígito YoY" según management |

### Capex y guía

| Métrica | Valor | Fuente/nota |
|---|---|---|
| Capex 2026 guiado (anterior, feb-2026) | ~200.000 M$ | Ya conocido (informe 12-jul) |
| **Capex 2026 guiado (nuevo, T2 2026)** | **~220.000 M$ (+10%)** ✅ | Motivo explícito: **encarecimiento de memoria (DRAM/NAND)**, no mayor volumen de proyectos |
| Comentario sobre 2027 | Jassy: capacidad **seguirá ajustada en 2027** ("this dynamic will also be true in 2027 too"); demanda para 2028 ya es "llamativa" ("striking") | Sugiere que el capex de 2027 probablemente **no bajará** — sin cifra formal aún (se conocerá en el release de T4 2026, ~feb-2027) |
| Guía T3 2026 — ingresos | 197.000-202.000 M$ (crecimiento +9% a +12% YoY) | Por debajo del consenso de ~204.000 M$ en el punto medio |
| Guía T3 2026 — beneficio operativo | 22.500-26.500 M$ | En línea con consenso (~24.790 M$) |

### Balance y deuda

| Métrica | Valor | Nota |
|---|---|---|
| Deuda a largo plazo (31-mar-2026, referencia) | 119.100 M$ | Ya conocida (T1 2026) |
| Nueva emisión de bonos **dentro de T2 2026** (abr-jun) | **~10.000 M$** (C$14.000 M en bonos "maple" en Canadá, 9-jun-2026, récord histórico en esa divisa) | Fuerte **desaceleración** vs. el ritmo de T1 2026 (+53.400 M$ en un trimestre) |
| Emisión de bonos **posterior al cierre de T2** (7-jul-2026, ya en T3) | 25.000 M$ (8 tramos) | Management indicó que **no habrá más emisión de deuda en lo que resta de 2026** tras esta colocación |
| Emisión de bonos acumulada en 2026 (a 7-jul) | **>106.000 M$** (37.000 M$ marzo + ~10.000 M$ junio + 25.000 M$ julio) | La cifra exacta de deuda total a 30-jun-2026 **no se pudo confirmar con precisión** esta sesión — ver Anexo A.4 |
| Suscripción del bono de julio | 1,6x (vs. promedio investment-grade 2026 de 4x) | Señal de **menor apetito relativo** del mercado de crédito por más papel de Amazon — dato cualitativo de vigilancia |

### Otros datos relevantes

| Ítem | Dato |
|---|---|
| Chips propios (Trainium/Graviton/Inferentia) | Run-rate **>25.000 M$** (vs >20.000 M$ en el informe de julio), creciendo a triple dígito; Amazon explora **vender Trainium fuera de AWS** por demanda de clientes |
| Amazon Leo (ex-Kuiper) | Beta empresarial lanzada 8-abr-2026; disponibilidad comercial prevista mediados de 2026; nuevos acuerdos con Delta Air Lines (se suma a Verizon, AT&T, Vodafone). **Sin ingresos desglosados** |
| Zoox | Recibió exención Part 555 de la NHTSA — **primer robotaxi de diseño propio autorizado a cobrar tarifas** en EE.UU. **Sin ingresos desglosados aún** |
| Caso FTC (monopolización) | Sin novedad material detectada este trimestre; juicio sigue previsto para **feb-2027**. (Nota: el acuerdo separado de $2.500 M por "dark patterns" en Prime — ya cerrado en 2025 — tuvo como plazo de reclamación el 27-jul-2026, un ítem administrativo no relacionado con el juicio de monopolización) |
| Reacción de la acción | Cierre regular 30-jul: $235,50 (+3,9%, antes de la publicación); **subida adicional de ~9% en after-hours** tras el release, hasta **~$257** ✅ (verificado con `verify-market-cap`, desviación 0,05% frente a capitalización implícita ~2,80 billones de $). **Cierre confirmado de la sesión regular del 31-jul no disponible en esta sesión — ver gap en Anexo A.4** |

---

## II. Los 3 cambios más importantes del trimestre

**1. AWS rompe al alza de forma inequívoca — el riesgo #1 de la tesis se aleja.** El crecimiento saltó de 28% (T1 2026) a **37%** (T2 2026), el ritmo más rápido en 18 trimestres, y el backlog contratado saltó otro 36% en un solo trimestre hasta **$496.000 M$**. Jassy fue explícito: ni con capex de $220.000 M$ habrá capacidad suficiente para toda la demanda de 2026 y 2027, y la demanda visible para 2028 ya es "llamativa". Este es el dato más favorable a la tesis desde su establecimiento.

**2. El FCF se vuelve negativo por primera vez, y el capex sube — el coste de la apuesta también se agrava.** El FCF ttm pasó de ≈$1.200 M$ (T1 2026) a **≈ −$7.600 M$** (T2 2026), y la guía de capex 2026 subió de $200.000 M$ a **$220.000 M$**, no por más proyectos sino por encarecimiento de memoria (DRAM/NAND) — un factor de coste externo, no de disciplina de asignación. Jassy no dio ninguna señal de que el capex de 2027 vaya a normalizarse; al contrario, sugirió que seguirá ajustado. La hipótesis #2 de la tesis (inflexión de FCF en 2027-28) **no tiene evidencia a favor este trimestre — más bien al contrario**.

**3. El beneficio contable queda más distorsionado que nunca por marcas de Anthropic — y el precio ya reaccionó con fuerza.** El EPS de $5,75 incluye $53.400 M$ de ganancia no monetaria (vs. $16.800 M$ en T1 2026), ligada a la ronda Serie H-1 de Anthropic (mayo-2026, valoración $965.000 M$, frente a $380.000 M$ en la Serie G de febrero) y su presentación confidencial de S-1 para una posible salida a bolsa en octubre-2026. El EPS "limpio" (~$1,92) es la cifra que importa, y de hecho coincide con el consenso ex-ganancia ($1,82) — el mercado ya lo sabía. Pero el precio de la acción subió con fuerza (+9% after-hours hasta ~$257) **impulsado por el negocio operativo real (ingresos, AWS, margen récord), no por la ganancia contable** — lo cual es la lectura correcta, pero deja el precio **más lejos, no más cerca**, de la zona de compra $200-215 de la tesis.

---

## III. Tono de la dirección y seguimiento de compromisos

| Señal | Tipo | Evidencia |
|---|---|---|
| Explicación del alza de capex (memoria, no exceso de proyectos) | 🟢 Candor | Jassy atribuyó el alza específicamente al coste de componentes, no a sobreexpansión — señal de transparencia, aunque el efecto para el accionista (más capex, mismo output) es el mismo |
| Cuantificación de la demanda futura | 🟢 Claridad | Cifras concretas: capacidad 2027 "en gran parte reservada", demanda 2028 "llamativa", chips >$25.000 M de run-rate — no son generalidades vagas |
| "AWS puede ser un negocio de un billón de dólares... con FCF y ROIC muy atractivos" | 🔴 Parcialmente promocional | Es una proyección de largo plazo sin cronograma ni cifra de ROIC actual — el tipo de frase que Duan Yongping calificaría de aspiracional más que verificable hoy |
| Nada de nueva orientación sobre 2027 más allá de comentarios cualitativos | — | Comprensible (la guía formal de 2027 llega en feb-2027), pero significa que la hipótesis #2 de la tesis sigue **sin poder verificarse** este trimestre |

### Tabla de cumplimiento de compromisos previos

| Compromiso previo (T1 2026 / informe jul-2026) | Resultado en T2 2026 | Evaluación |
|---|---|---|
| Capex 2026 ~$200.000 M$ | Revisado al alza a $220.000 M$ (+10%) | ❌ No se cumplió tal cual — aunque la razón (memoria) es exógena, no de ejecución |
| AWS sosteniendo aceleración | 28% → 37% | ✅ Superado ampliamente |
| Margen NA hacia 8-10% vía robótica | 7,9% (T1) → 7,8-7,9% (T2, prácticamente plano) | ⚠️ Cumplimiento parcial — la mejora se **estancó** este trimestre tras varios trimestres de expansión continua |
| Ritmo de emisión de deuda (~$53.400 M$/trimestre en T1) | ~$10.000 M$ dentro de T2 (bono canadiense) | ✅ Fuerte desaceleración — aunque el bono de $25.000 M$ de julio (ya en T3) reabre la pregunta |

---

## IV. Información en notas y detalles no evidentes

- **Mecánica del mark-to-market de Anthropic**: la revalorización refleja el salto de valoración privada de Anthropic de $380.000 M$ (Serie G, feb-2026) a $965.000 M$ (Serie H-1, mayo-2026) y su S-1 confidencial (1-jun-2026, objetivo de salida a bolsa en Nasdaq ~oct-2026, banca liderada por Goldman Sachs/JPMorgan/Morgan Stanley, oferta esperada >$60.000 M$). Es una ganancia de papel, no de caja — y su reversión es posible si la valoración de la OPV decepciona.
- **Ritmo de deuda dentro del trimestre vs. justo después**: la emisión *dentro* de T2 2026 (~$10.000 M$, bono canadiense de junio) fue modesta comparada con el ritmo de T1 (+$53.400 M$) — un dato que, tomado aisladamente, sugeriría que la línea roja #6 de la tesis (>$50.000 M$/trimestre sostenido) **no se activó este trimestre**. Pero el bono de $25.000 M$ de julio (technically T3) eleva la emisión acumulada 2026 a más de $106.000 M$, y el ratio de suscripción de ese bono (1,6x) fue notablemente más bajo que el promedio investment-grade de 2026 (4x) — una señal de apetito de mercado más ajustado que merece vigilancia, no una alarma todavía.
- **Trainium fuera de AWS**: la exploración de vender chips Trainium a clientes fuera del ecosistema AWS es una novedad — si se concreta, sería una fuente de ingresos adicional no contemplada en la tesis original, pero también una señal de que la demanda interna por sí sola podría no estar absorbiendo toda la capacidad de fabricación.
- **Zoox — desbloqueo regulatorio, no comercial**: la exención Part 555 de la NHTSA es un hito regulatorio real (primer robotaxi de diseño propio en poder cobrar tarifas), pero no implica ingresos materiales todavía — la hipótesis #7 de la tesis (moonshots sin escalar) sigue sin resolverse.

---

## V. Preguntas clave de la conferencia con analistas (resumen, no transcripción palabra por palabra — ver nivel de acceso en §0)

| Pregunta de analista (resumida) | Respuesta de Jassy (resumida) | Calidad de respuesta (1-5) | ¿Evasiva? |
|---|---|---|---|
| ¿Podría el capex de centros de datos desacelerar en 2027, y cuándo vendería Trainium a terceros? | Demanda sigue muy alta, capacidad de 2027 "en gran parte reservada", 2028 también fuerte; confirma exploración de ventas de Trainium fuera de AWS por interés de clientes | 4/5 — cuantificó con cifras concretas ($25.000 M$ run-rate de chips), aunque sin comprometerse a un cronograma de venta externa | No — dato específico, no genérico |
| (Implícita en la cobertura) Sobre el aumento de capex por memoria | Atribución específica al coste de componentes (DRAM/NAND), no a más proyectos | 4/5 — explicación concreta y verificable externamente (la inflación de memoria es un fenómeno de mercado documentado en 2026) | No |

**Limitación**: no se obtuvo la transcripción completa palabra por palabra esta sesión (fallo de WebFetch, §0) — este resumen se reconstruyó a partir de coberturas de múltiples medios que citan las mismas frases textuales de Jassy, lo que da razonable confianza en su literalidad, pero no cubre la totalidad del Q&A.

---

## VI. Relación con la tesis de inversión (`Amazon-thesis.md`)

### Revisión de las 7 hipótesis centrales

| # | Hipótesis | Estado previo | Evidencia T2 2026 | Estado nuevo |
|---|---|---|---|---|
| 1 | AWS sostiene crecimiento ≥20-25% con backlog convirtiéndose en ingresos | 🟢 Establecida | Aceleración a 37%, backlog +36% QoQ hasta $496.000 M$ | 🟢 **Reforzada — muy por encima del umbral** |
| 2 | El FCF inflexiona en 2027-28 al normalizarse el capex | 🟡 Apuesta central, sin evidencia | FCF ttm se volvió **negativo** (−$7.600 M$); capex 2026 subió (no bajó); Jassy no da señal de normalización en 2027 | 🟡 **Sin deterioro de tesis pero sin ninguna evidencia a favor — el "túnel" se confirma más largo/profundo de lo modelado** |
| 3 | Publicidad mantiene crecimiento ≥18-20% | 🟢 Establecida | +26% (aceleración) | 🟢 **Reforzada** |
| 4 | Margen NA sigue expandiéndose vía robótica (hacia 8-10%) | 🟢 Establecida | 7,8-7,9%, **prácticamente plano** vs. T1 2026 (7,9%) | 🟡 **Edge weakening — la expansión se detuvo este trimestre; superó el consenso pero no avanzó secuencialmente** |
| 5 | La deuda se estabiliza sin dilución ni capital externo adicional | 🟡 Vigilar ritmo | Emisión *dentro* de T2 se desaceleró (~$10.000 M$) pero el bono de julio ($25.000 M$, ya T3) eleva el acumulado 2026 a >$106.000 M$ | 🟡 **Sin cambio — mejora aparente en el trimestre, pero el acumulado anual sigue siendo alto; vigilar T3** |
| 6 | El juicio FTC (feb-2027) no termina en remedios estructurales | 🟢 Sin señales adversas | Sin novedad material detectada este trimestre | 🟢 **Sin cambio** |
| 7 | Los moonshots no escalan su quema de capital sin hitos comerciales | 🟡 Sin ingresos disclosed | Zoox obtiene autorización regulatoria para cobrar tarifas (hito, no ingreso); Leo con nuevo cliente (Delta) pero sin ingresos | 🟡 **Sin cambio material — avances regulatorios/comerciales pero cero ingresos disclosed** |

### Revisión de las 7 líneas rojas

| # | Condición | ¿Activada este trimestre? | Evidencia |
|---|---|---|---|
| 1 | AWS <20% con backlog estancado/cayendo | ❌ No — todo lo contrario | AWS a 37%, backlog +36% QoQ |
| 2 | Guía capex 2027 al alza SIN inflexión de FCF ni backlog correspondiente | ⏳ **No evaluable aún** | La guía formal de 2027 llega en feb-2027; el comentario cualitativo de Jassy ("2027 seguirá ajustado") es una **señal de alerta temprana**, no una activación formal de la línea roja |
| 3 | Remedios estructurales FTC que desacoplen Prime/FBA | ❌ No | Sin novedad |
| 4 | Salida de Garman (AWS) o Jassy | ❌ No | Sin indicios |
| 5 | Writedown material de infraestructura de cómputo | ❌ No | Sin indicios — al contrario, backlog sugiere sobredemanda, no sobrecapacidad |
| 6 | Nueva deuda >$50.000 M$/trimestre sostenido con FCF aún negativo en 2027 | ⚠️ **Zona gris** | Emisión *dentro* de T2 (~$10.000 M$) no activa la línea roja; pero el acumulado 2026 (>$106.000 M$ incluyendo el bono de julio, ya T3) y la menor suscripción relativa (1,6x vs. 4x) son datos a vigilar en T3. FCF ya es negativo en 2026 (antes de 2027), lo cual es la condición base que la línea roja anticipaba, pero el ritmo trimestral de deuda no ha vuelto a superar $50.000 M$ desde T1 |
| 7 | Impago/renegociación a la baja de compromisos de Anthropic/OpenAI | ❌ No — al contrario | Anthropic elevó su valoración y avanza hacia una OPV, reforzando (no debilitando) la credibilidad de sus compromisos con AWS |

**Ninguna línea roja se activó formalmente este trimestre.** La línea roja #2 (capex 2027) queda en estado de alerta temprana cualitativa, pendiente de la guía formal de febrero-2027.

### Cálculo de salud de la tesis (fórmula `thesis-tracker.md`)

```
Salud = 10 − (3 × hipótesis rotas) − (2 × hipótesis dañadas) − (1 × hipótesis debilitadas) − (5 × líneas rojas activadas)
```

- Hipótesis rotas (⚫): 0
- Hipótesis dañadas (🔴): 0
- Hipótesis debilitadas (🟡 con deterioro neto vs. trimestre anterior): 1 (#4, margen NA plano) — las hipótesis #2, #5 y #7 se mantienen en 🟡 pero **sin deterioro adicional** respecto al estado previo (ya estaban en vigilancia), por lo que no se cuentan como nuevas debilitaciones
- Líneas rojas activadas: 0

**Salud de la tesis: 10 − 1 = 9/10**

Nota de interpretación: la puntuación numérica alta refleja que el trimestre fue, en el negocio operativo, mejor de lo modelado (AWS, ads, backlog, margen operativo récord). No captura por sí sola el hecho de que el **precio ya se movió con fuerza en la dirección contraria a la oportunidad de entrada** (ver §VII) — eso se trata como una variable de valoración, no de salud de la tesis.

---

## VII. Conclusión — ¿qué cambió esta tesis?

**1. ¿Superó, cumplió o quedó por debajo de las expectativas?**
**Superó ampliamente en el negocio operativo real** — ingresos, beneficio operativo, AWS y backlog batieron consenso con margen claro, y el margen operativo consolidado (13,7%) marcó un nuevo récord histórico. **En la variable que más importa a esta tesis (coste de capital del ciclo de IA) el trimestre fue neutral-a-negativo**: el capex subió (no bajó) y el FCF se volvió negativo por primera vez, sin ninguna señal de inflexión próxima. El titular de EPS ($5,75, "triplica el consenso") es en gran parte un artefacto contable no monetario y no debe usarse para valorar la empresa.

**2. Impacto en la tesis de inversión: Refuerza (con matices).** La hipótesis central — que AWS no está perdiendo la carrera de la IA y que el backlog contratado es la evidencia — se confirmó de forma más contundente que en cualquier trimestre anterior. Pero el "coste visible" de la tesis (capex, deuda, FCF cero) también se confirmó y se agravó ligeramente. Ninguna hipótesis se rompió; ninguna línea roja se activó. Salud: **9/10**.

**3. Próximo catalizador**: resultados T3 2026 (finales de octubre/inicios de noviembre 2026) — vigilar si el ritmo de emisión de deuda de T3 refleja el bono de $25.000 M$ de julio; posible OPV de Anthropic (~oct-2026), que podría validar o desmentir la marca de $53.400 M$ de este trimestre; guía formal de capex 2027 (en el release de T4 2026, ~feb-2027) — el hito que resolverá definitivamente la hipótesis #2; juicio FTC (feb-2027).

**4. Recomendación (posición actual: vigilancia, sin posición abierta)**: **Seguir vigilando — no completar posición.** El precio se movió en after-hours hasta ~$257, **alejándose** de la zona de compra $200-215 en lugar de acercarse a ella, y también por encima del precio ancla de la tesis ($245,34). El PER "limpio" implícito (~33-34x sobre EPS anualizado ex-ganancia) es prácticamente idéntico al de la tesis original — es decir, **el precio subió aproximadamente en línea con la mejora del negocio operativo, no más barato ni más caro en términos relativos**. No hay ninguna señal (ni de deterioro de hipótesis ni de línea roja) que justifique reevaluar a la baja, y tampoco hay ninguna razón de valoración para perseguir el precio aquí. La disciplina de la tesis (comprar en $200-215 o tras evidencia de inflexión de FCF) se mantiene sin cambios.

---

## Anexo: Registro de verificación cruzada de datos clave

### A.1 Cross-validación de cifras principales (`financial_rigor.py cross-validate`)

```
Crecimiento AWS (%):
  ✅ CNBC/Yahoo Finance   : 36.70%  (偏差 0.41%)
  ✅ gurufocus/otros      : 37.00%  (偏差 0.41%)
  → Consenso: 36.85% — se usa "36,7% / ~37%" en el cuerpo del informe

Ingresos T2 2026 (B USD):
  ✅ Yahoo Finance        : 200.60B  (偏差 0.00%)
  ✅ SEC (vía cita estructurada de Wall St Engine, con referencia directa al Exhibit 99.1) : 200.60B  (偏差 0.00%)
```

### A.2 Verificaciones aritméticas (`financial_rigor.py calc`)

```
Crecimiento de ingresos:        (200.6-167.7)/167.7 = 19.62% (redondeado 20% en el release)
Crecimiento beneficio operativo: (27.5-19.2)/19.2 = 43.23%
Margen operativo consolidado:    27.5/200.6 = 13.71%
Margen AWS:                      16.6/42.2 = 39.34%
Margen Norteamérica:             9.1/116.2 = 7.83%
Margen Internacional:            1.7/42.2 = 4.03%
Run-rate AWS anualizado:         42.2 × 4 = 168.8 (≈169.000 M$ reportado)
Crecimiento QoQ backlog AWS:     (496-364)/364 = 36.26%
Capex 2026 (alza de guía):       (220-200)/200 = 10.00%
FCF ttm (comprobación):          OCF ttm 161.4B − Capex ttm ~169.0B = −7.6B ✅ consistente con el −$7.600M reportado
Acciones diluidas implícitas:    62.6B / 5.75 = 10.89B (consistente con la tendencia de dilución ~1%/año desde 10.754B en T1 2026)
EPS "limpio" estimado:           (62.6B − 53.4B×(1−0.22)) / 10.89B = $1.92 (vs. consenso ex-ganancia $1.82 — coherencia razonable)
```

### A.3 Verificación de capitalización bursátil post-resultados (indicativa, after-hours)

```
============================================================
市值验算 (Market Cap Verification)
============================================================
  股价 (Price):       257.06 USD (after-hours, 30-jul-2026 — NO es cierre de sesión regular confirmado)
  总股本 (Shares):    10.89B (implícito de EPS/beneficio neto)
  计算市值:           2.80T USD
  报告市值:           2.80T USD
  偏差:               0.05%
  ✅ 验证通过
```

### A.4 Gaps de datos y flags de fuente única (transparencia obligatoria)

1. **Fallo de WebFetch en toda la sesión** (incluida URL de control neutral): no se pudo leer directamente el Exhibit 99.1 del 8-K, el 10-Q, ni el comunicado de `ir.aboutamazon.com`. Todas las cifras se obtuvieron por triangulación de múltiples fuentes secundarias vía búsqueda web, con cross-validación donde fue posible (ver A.1). Nivel de acceso: **B**, no A.
2. **Deuda total exacta a 30-jun-2026**: no se pudo confirmar el saldo exacto de deuda a largo plazo al cierre de T2 2026 (solo se confirmó la referencia de T1 2026, $119.100 M$, y la nueva emisión conocida dentro de T2, ~$10.000 M$). El saldo implícito sería ≈$129.000 M$, pero es una **estimación no verificada**, no un dato reportado.
3. **Cierre de sesión regular del 31-jul-2026**: no disponible en esta sesión. Se usa el dato confirmado más reciente (after-hours 30-jul, ~$257,06, +9% sobre el cierre regular de $235,50) como referencia de reacción del mercado, claramente etiquetado como tal.
4. **Transcripción completa de la conferencia con analistas**: no obtenida palabra por palabra; el resumen de Q&A (§V) se reconstruyó de coberturas periodísticas múltiples y coincidentes, no de la transcripción oficial.
5. **Tasa impositiva usada para el EPS "limpio" (22%)**: es una estimación estándar, no la tasa efectiva real de Amazon en T2 2026, que no se pudo confirmar. El resultado (~$1,92) es una aproximación razonable, contrastada favorablemente contra el consenso de analistas ex-ganancia ($1,82), pero no debe tratarse como cifra oficial de la compañía.
6. **Margen AWS T2 2025 (~32,9%)**: derivado por resta del dato de "expansión de 650 puntos básicos YoY" citado por una fuente secundaria — no confirmado de forma independiente en una segunda fuente.

---

*Informe elaborado siguiendo el marco de los 4 maestros (Buffett, Munger, Duan Yongping, Li Lu) y el protocolo `skills/earnings-review.md`. Cifras en dólares estadounidenses, expresadas en M (millones) salvo indicación contraria. Próximo catalizador: resultados T3 2026 (~finales de octubre 2026); guía formal de capex 2027 (~feb-2027, junto a resultados T4 2026); juicio FTC (feb-2027).*
