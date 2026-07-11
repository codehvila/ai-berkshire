# Iberdrola, S.A. (BME:IBE / OTC:IBDRY) — Informe de Investigación de Inversión

**Fecha del informe:** 12 de julio de 2026
**Marco analítico:** Buffett · Munger · Duan Yongping · Li Lu
**Precio de referencia:** 20,90 € (BME, cierre del 10-jul-2026)
**Nota de calendario:** los resultados del primer semestre de 2026 se publican en torno al 23-jul-2026 — algunas cifras de este informe pueden quedar superadas en dos semanas.

---

## 0. Autoevaluación de sesgo de investigación con IA

### Calificación de riqueza informativa: **A (información abundante)**

Iberdrola cotiza en Madrid desde hace décadas, es la mayor utility de Europa por capitalización bursátil (~139.400 M€), tiene cobertura de más de 20 analistas y una presencia mediática densa en prensa española e internacional. Nivel A sin ambigüedad.

**Trampa específica de este caso (advertencia):** el riesgo de sesgo aquí es el opuesto al de una empresa desconocida — **la narrativa de "compounder de calidad + superciclo de redes" es hoy el consenso absoluto del mercado**. La acción acumula ~+60% desde inicios de 2025 (de ~13 € a 20,90 €), cotiza cerca de máximos históricos, y toda la prensa financiera repite la misma historia (electrificación, centros de datos, RAB creciente). Un análisis de IA alimentado con ese corpus tenderá a reproducir el consenso alcista. El dato más incómodo y menos repetido es este: **el precio objetivo medio del consenso de analistas (~17,9-18,6 €) está POR DEBAJO del precio de mercado (20,90 €)** — el mercado ha corrido por delante de los modelos fundamentales de los propios analistas. Cuando la historia es tan buena y tan unánime, la pregunta de Munger ("¿por qué la gente inteligente no compraría esto?") no es retórica: los analistas que no la recomiendan citan precisamente la valoración, no el negocio.

**Autochequeo de sesgo:**
- La calidad del negocio de Iberdrola está genuinamente bien documentada (25 años de historial verificable). La incertidumbre no está en el negocio, sino en **cuánto de esa calidad ya está pagada en el precio**.
- El "superciclo de redes" es una tesis compartida simultáneamente por National Grid, E.ON, Enel y todos los grandes del sector — cuando todos persiguen la misma estrategia, el capex unitario se infla (transformadores, cables) y la ventaja informativa de la tesis es nula.
- Distinguir en todo el informe entre lo que los datos históricos demuestran (ejecución excelente) y lo que solo el futuro puede demostrar (que los retornos regulados batan al coste de capital creciente).

**Discrepancias de datos encontradas y su resolución** (verificadas con `financial_rigor.py`, ver Anexo):
1. Ingresos FY2025: 45.017 M€ (diapositivas de la compañía) vs. 46.612 M€ (stockanalysis) — diferencia definicional (ingresos IFRS vs. ingresos totales con otros ingresos operativos); se usa la cifra de la compañía.
2. Beneficio neto FY2025: 6.285 M€ (atribuido, compañía) vs. 6.426 M€ (stockanalysis, probablemente incluye minoritarios); se usa la cifra atribuida de la compañía.
3. Deuda neta: 50.200 M€ (definición "ajustada" de la compañía) vs. 54.880 M€ (stockanalysis sin ajustar) — desviación 4,45%, definicional (híbridos, FX); ambas se presentan etiquetadas.
4. Impuesto extraordinario a las energéticas: fuentes contradictorias ("rechazado" vs. "prorrogado") — **resuelto**: la prórroga del gravamen del 1,2% fue rechazada por el Congreso (ene-2025), y el [RD-ley 18/2026](https://www.iberley.es/noticias/el-rd-ley-18-2026-prorroga-las-medidas-fiscales-materia-energetica-preve-su-retirada-progresiva-36675) fija además la eliminación progresiva del IVPEE (3,5% en 2027, 0% desde 2028). Dirección fiscal favorable, con riesgo político de reintroducción en un parlamento fragmentado.

---

## 1. Recopilación de datos — Cifras clave (verificadas)

### 1.1 Identificación y cotización

| Campo | Valor |
|---|---|
| Nombre | Iberdrola, S.A. |
| Cotización principal | BME:IBE (Madrid); ADR OTC:IBDRY |
| Precio (10-jul-2026) | 20,90 € |
| Rango 52 semanas | 15,095 € – 21,89 € (a ~4,5% del máximo histórico) |
| Acciones en circulación | 6.670 millones (incluye ~330M de la ampliación de capital de 5.000 M€ a 15,15 €/acción de jul-2025, sobresuscrita 3,8x) |
| Capitalización bursátil | **139.400 M€** ✅ (verificado: precio × acciones, desviación 0,06%) — #1 utility de Europa, #4 del mundo (tras NextEra) |
| Comportamiento | 52 semanas: **+33,5%** (stockanalysis) · acumulado ~18 meses: **~+60%** (de ~13 € a inicios de 2025 hasta 20,90 €) ⚠️ el desglose por año natural es inconsistente entre fuentes (companiesmarketcap atribuía +61% al año 2025, incompatible con las anclas de precio verificables: ampliación jul-2025 a 15,15 €, máximo 52 sem. 21,89 €); se usa solo el acumulado verificable |

### 1.2 Cuenta de resultados FY2025 (publicada 25-feb-2026)

| Métrica | Valor | Var. interanual |
|---|---|---|
| Ingresos | 45.017 M€ ✅ (cross-validado, desviación 1,74% vs. stockanalysis por definición) | +0,6% |
| EBITDA reportado | 16.592 M€ ✅ (confirmado en auditoría con 2ª fuente: presentación oficial de resultados vía CNMV + prensa española, 25-feb-2026) | -1,5% |
| EBITDA ajustado | 15.684 M€ ✅ (dos fuentes, desviación 0,00%) | +3% |
| **Beneficio neto atribuido** | **6.285 M€** ✅ (récord histórico; cross-validado, desviación 1,11%) | **+12%** |
| Beneficio neto ajustado | 6.231 M€ | +10,3% |
| Inversiones brutas | 14.460 M€ (62% en redes: 8.975 M€) | — |
| Deuda neta ajustada | 50.200 M€ (2 fuentes) · sin ajustar: 54.880 M€ ⚠️ diferencia definicional 4,45% | -1.500 M€ interanual |
| Deuda neta/EBITDA | 3,02x | mejorando |

### 1.3 EBITDA por segmento FY2025 — la historia del año en una tabla

| Segmento | EBITDA ajustado | Var. interanual | Motor |
|---|---|---|---|
| **Redes (regulado)** | 7.794 M€ | **+21%** | Tarifas de distribución en EE.UU. (+34,8% ajustado), Reino Unido +28,7% (consolidación de Electricity North West desde mar-2025: +405 M£), Brasil +13,8%, mayor RAB en España |
| **Producción y Clientes** | 7.872 M€ | **-10%** | Precios eléctricos más bajos + costes extraordinarios de servicios de ajuste en Iberia tras el apagón del 28-abr-2025 |

El negocio regulado ya es el motor del grupo: el crecimiento del beneficio (+12%) provino íntegramente de redes, mientras la generación/comercialización retrocedió.

**T1 2026** (abr-2026): beneficio neto ajustado 1.865 M€ (+11,4%); RAB ~53.000 M€; España redes +6,2% por el nuevo retorno regulado del 6,58%; **guía 2026 elevada a >8% de crecimiento del beneficio ajustado**.

### 1.4 Tendencia a 5 años (cifras atribuidas reportadas por la compañía)

| Año | Beneficio neto atribuido | EBITDA reportado | Flujo de caja operativo* | Capex de caja* |
|---|---|---|---|---|
| 2021 | 3.885 M€ | ~12.006 M€ | 8.106 M€ | 6.330 M€ |
| 2022 | 4.339 M€ (+11,7%) | 13.228 M€ | 10.443 M€ | 6.278 M€ |
| 2023 | 4.803 M€ (+10,7%) | 14.417 M€ | 12.130 M€ | 7.339 M€ |
| 2024 | 5.612 M€ (+17%) | ~16.845 M€ (implícito) ⚠️ | 11.925 M€ | 7.673 M€ |
| 2025 | 6.285 M€ (+12%) | 16.592 M€ | 11.635 M€ | 7.616 M€ |

*Serie de flujos de caja: fuente única (stockanalysis.com) — macrotrends inaccesible (402), flag de gap. El "capex de caja" (~7.600 M€) difiere de las "inversiones brutas" de la compañía (14.460-17.000 M€) porque estas últimas incluyen M&A (ENW, minoritarios de Avangrid y Neoenergia).

**CAGR del beneficio atribuido 2021-2025: 12,8% anual** ✅ (calculado con herramienta) — un historial de crecimiento poco común para una utility.

⚠️ La serie de beneficio neto de stockanalysis (4.387/5.131/5.415/4.469/6.426) diverge materialmente de la serie atribuida de la compañía — probable inclusión de minoritarios y reexpresiones (salida de México). Se usa la serie de la compañía.

### 1.5 Simplificación societaria completada (2024-2026) — todo el crecimiento ya es para el accionista de IBE

| Operación | Fecha | Detalle |
|---|---|---|
| Compra del 18,4% minoritario de **Avangrid** (EE.UU.) | dic-2024 | $35,75/acción (~$2.550M), exclusión de NYSE → 100% |
| Compra del 30,29% de PREVI en **Neoenergia** (Brasil) | oct-2025 | ~1.920 M€ → ~84%; OPA de exclusión posterior → **~98%** (abr-2026), squeeze-out al 100% en curso |
| Adquisición de **Electricity North West** (Reino Unido) | oct-2024 | ~2.100 M£ de equity (~5.000 M€ EV) → 2º operador de redes eléctricas del Reino Unido |
| **Salida completa de México** | feb-2024 y abr-2026 | 55% del negocio por $6.200M (2024) + resto (2.600 MW) a Cox ABG por $4.200M (abr-2026) — total ~$10.400M reciclados hacia redes reguladas |

### 1.6 Valoración actual (verificada con `financial_rigor.py`)

| Métrica | Valor | Cálculo/Fuente |
|---|---|---|
| PER (beneficio atribuido FY2025) | **22,18x** ✅ | 20,90 € / 0,9423 € EPS |
| PER forward (consenso) | ~20,4x | stockanalysis 10-jul-2026 |
| Rentabilidad por beneficio | 4,51% | inversa del PER |
| Rentabilidad por dividendo | **3,28%** ✅ | 0,685 € / 20,90 € |
| EV/EBITDA | **11,7x–12,1x** ✅ (según definición de deuda/EBITDA) | calculado; stockanalysis muestra 14,6x con su propia definición ⚠️ |
| P/B | 2,22x | stockanalysis |
| P/S | ~3,10x ✅ | calculado |
| Beta | 0,57 | stockanalysis |
| Consenso de analistas | **Mayoría "Mantener"** — TipRanks: 2 compra / 10 mantener / 0 vender; **PT medio ~17,9-18,6 € (POR DEBAJO del precio actual)**; rango 9,70 €-22 € | TipRanks/MarketScreener, jul-2026 |

### 1.7 Marco regulatorio — las decisiones ya están fijadas para 5-6 años

| Jurisdicción | Decisión | Detalle |
|---|---|---|
| **España (CNMC)** | ✅ Cerrada dic-2025 | Retorno permitido **6,58%** para transporte+distribución 2026-2031 (desde 5,58% anterior; las utilities pedían 7-7,5% — lo llamaron "un paso atrás", no descartan recurso) |
| **Reino Unido (Ofgem RIIO-T3)** | ✅ Cerrada dic-2025 | Coste de equity **5,70% real CPIH** post-impuestos, periodo abr-2026 a mar-2031; 28.100 M£ de financiación inicial. ED3 (distribución 2028-33) pendiente |
| **EE.UU. (NY PSC)** | ⏳ En curso | Plan tarifario "Powering NY" de NYSEG/RG&E — acuerdo multiparte presentado, revisión extendida tras >26.000 comentarios públicos |
| **EE.UU. (Maine/Connecticut)** | ⚠️ Adversas | Maine PUC desestimó por unanimidad el plan tarifario quinquenal de CMP (nov-2025); Connecticut descrito como "tóxico" por el propio ex-CEO de Avangrid |
| **Brasil (ANEEL)** | Estable | Todas las líneas de transmisión completadas (+1.619M BRL de EBITDA anual) |

---

## 2. Análisis del negocio — Duan Yongping: "el negocio correcto"

### La empresa en una frase

Iberdrola es **un propietario-operador de monopolios regulados de redes eléctricas en cuatro jurisdicciones estables (España, Reino Unido, noreste de EE.UU., Brasil) — con una base de activos regulados de 53.000 M€ que crecerá ~40% hasta 70.000 M€ en 2028 — complementado por la mayor flota renovable privada de Europa (46 GW), en plena rotación estratégica desde la generación hacia las redes.**

### Modelo de negocio: dos negocios muy distintos bajo un mismo techo

1. **Redes (regulado, ~50% del EBITDA y subiendo)**: monopolio legal de distribución/transporte. El regulador fija el retorno sobre la base de activos (RAB). No hay riesgo de demanda ni de precio — el riesgo es exclusivamente regulatorio. Cuanto más invierte, más crece la RAB y más beneficio regulado genera. Con el retorno español fijado en 6,58% y el británico en 5,70% real hasta 2031, este negocio es hoy **un bono con crecimiento del principal**.
2. **Producción y Clientes (~50% del EBITDA y bajando en peso relativo)**: renovables (46,2 GW instalados, 79% del total; 4,7 GW en construcción; >9 GW de pipeline a 2028) + comercialización. Expuesto a precios eléctricos (−10% en 2025), aunque ~100% de la producción de 2026 ya está contratada.

### Ciclo de capital y flujo de caja — el punto débil estructural

- Plan estratégico (CMD sep-2025): **58.000 M€ de inversión hasta 2028**, dos tercios a redes, 85% en jurisdicciones reguladas "clase A" (Reino Unido 20.000 M€, EE.UU. 16.000 M€).
- FCF de caja ~4.000 M€/año frente a una capitalización de 139.400 M€ (**FCF yield ~2,9%**) — el crecimiento se financia con deuda (50.200 M€ netos) y, cuando hace falta, con ampliaciones de capital (5.000 M€ en jul-2025, dilución ~5%).
- El dividendo en efectivo solo es cómodamente cubierto gracias al mecanismo scrip ("Retribución Flexible") con recompra-amortización que neutraliza la dilución.

### Pregunta al estilo Duan Yongping: ¿qué tiene de bueno este negocio, en una frase?

*"Es el negocio de peaje de la electrificación: cada kWh adicional que consuma la economía (coches eléctricos, bombas de calor, centros de datos) tiene que pasar por sus cables, y el regulador le garantiza un retorno sobre cada euro invertido en ampliarlos."* Es un negocio genuinamente bueno — pero con una salvedad que Duan Yongping señalaría de inmediato: **el techo de rentabilidad también lo fija el regulador**. No es un negocio donde la excelencia operativa pueda expandir márgenes indefinidamente; es un negocio donde la excelencia consiste en desplegar capital más rápido y en mejores jurisdicciones que los demás.

---

## 3. Evaluación del foso económico — Buffett: "moat"

| Tipo de foso | Evaluación | Evidencia |
|---|---|---|
| **Monopolio regulado (redes)** | ★★★★★ El foso más fuerte que existe | La distribución eléctrica es un monopolio legal: ningún competidor puede construir una red paralela. La única "competencia" es el regulador mismo. |
| **Escala y coste de capital** | ★★★★☆ Fuerte | Mayor utility europea; acceso a financiación verde masiva y barata; escala de compras en un mercado de turbinas/transformadores con cuellos de botella; rating sólido (FFO/DN 25,5%). |
| **Costes de cambio** | ★★☆☆☆ Débil (comercialización) | En el negocio minorista de energía el cliente cambia fácilmente; churn no relevante en redes (no hay alternativa). |
| **Marca / poder de precios** | ★★☆☆☆ Limitado | En generación es precio-aceptante; en redes el precio lo fija el regulador. La "marca" relevante es su reputación ante reguladores. |
| **Ventaja institucional/regulatoria** | ★★★★☆ Fuerte y poco replicable | 25 años de relaciones con Ofgem, CNMC, ANEEL, PSC de NY; historial de ejecución que le da credibilidad para conseguir planes de inversión aprobados. Contrapunto: Maine y Connecticut demuestran que esta ventaja no es transferible a jurisdicciones hostiles. |

### Tendencia del foso: **se ha ensanchado, por diseño**

La rotación 2024-2026 (comprar el 100% de Avangrid y Neoenergia, adquirir ENW, salir de México y del carbón/gas mercante) ha concentrado deliberadamente el grupo en los activos con foso máximo (redes reguladas) y ha reducido la exposición a los negocios sin foso (generación mercante, países con riesgo político tipo México). Es la operación inversa a la de Telefónica: mientras las telecos venden infraestructura, Iberdrola compra más monopolio regulado.

### Pregunta al estilo Buffett: ¿seguirá este foso existiendo dentro de 10 años? ¿Qué podría destruirlo?

El foso físico (los cables) es indestructible a 10 años vista. Lo que sí puede erosionarse es **la rentabilidad del foso**: un ciclo político adverso puede comprimir los retornos permitidos (España acaba de conceder 6,58% cuando se pedía 7,5%; Maine desestimó el plan de CMP por presión ciudadana). El riesgo no es la desaparición del monopolio, sino que el monopolio se vuelva un mal negocio por decisión política — el destino histórico de las utilities europeas entre 2008 y 2020.

---

## 4. Pensamiento inverso y lista de riesgos — Munger: "dale la vuelta"

### Rutas de fracaso

| Ruta de fracaso | Probabilidad (estimación) | Impacto |
|---|---|---|
| **Compresión de múltiplo por tipos altos**: con el bono a 10 años EE.UU. ~4,45% y el dividendo de IBE en 3,28%, la matemática de "sustituto de bono" está rota; si los tipos suben o simplemente no bajan, el PER de 22x puede comprimirse hacia 15-17x sin que el negocio empeore | Media-alta | Alto — es el riesgo principal a este precio |
| Resets regulatorios a la baja (ED3 Reino Unido 2028, orden final de NY PSC, siguiente ciclo CNMC) en un contexto de presión política por asequibilidad | Media | Medio-alto |
| Inflación de capex (transformadores, cables, turbinas) por encima de los retornos permitidos — todo el sector persigue los mismos equipos a la vez | Media | Medio |
| Sucesión de Galán (75 años) mal gestionada o abrupta | Media | Medio |
| Offshore EE.UU.: Vineyard Wind 1 produce menos de la mitad de lo esperado dos años después del fallo de pala (36 de 62 turbinas paradas, litigio con GE Vernova de $300-545M, en zona de incumplimiento de financiación); entorno Trump/OBBBA hostil a nueva eólica | Alta (ya materializándose) | Bajo-medio (activo al 50%, y la exposición renovable de EE.UU. es minoritaria vs. redes) |
| Reintroducción del impuesto extraordinario en España por un cambio de mayoría parlamentaria | Baja-media | Bajo-medio |
| Nueva ampliación de capital dilutiva si el plan de 58.000 M€ se queda corto de financiación | Baja-media | Medio |

### Analogía histórica — la advertencia más relevante

**Las utilities que cotizaron con prima de "crecimiento" han decepcionado sistemáticamente cuando el ciclo de tipos giró en su contra**: utilities estadounidenses en 2000-2001, europeas antes de 2008, y los picos de "bond proxy" de 2016 y 2021. En todos los casos el negocio siguió funcionando — fue **la prima de valoración, no el negocio, lo que destruyó al inversor**. Iberdrola cotiza hoy con ~30% de prima sobre el índice de utilities europeas tras subir +33,5% en 52 semanas (~+60% acumulado desde inicios de 2025). La analogía no dice que Iberdrola vaya a caer; dice que comprar utilities excelentes a múltiplos récord tiene un historial pobre.

Contrapunto igualmente honesto: el que compró Iberdrola "cara" en 2021-2023 también batió al mercado, porque el crecimiento del beneficio (+12,8% CAGR) validó la prima. La prima solo es letal cuando el crecimiento decepciona.

### Autochequeo de sesgos

- **Sesgo narrativo**: "los centros de datos necesitarán la red" es la narrativa perfecta de 2025-2026 — demasiado perfecta. Las colas de conexión (30 GW en la UE) no son demanda firme; parte se cancelará.
- **Anclaje en el máximo**: que la acción esté "solo un 4,5% bajo máximos" no es información sobre su valor.
- **Sesgo de confirmación del historial**: 25 años de ejecución excelente de Galán no garantizan la ejecución del sucesor.

### Argumentos de la parte bajista (recopilados)

- El consenso de analistas tiene el precio objetivo medio **por debajo** de la cotización (17,9-18,6 € vs. 20,90 €) — los modelos fundamentales del sell-side no justifican el precio actual; 10 de 12 analistas en "Mantener".
- 24/7 Wall St (jun-2026): "de bond proxy a campo de batalla — las utilities son el peor escondite de 2026" con el Treasury a 10 años en el percentil 91 de su rango.
- TIKR (2026): incluso los modelos que asumen prima de calidad permanente arrojan retornos esperados "mediocres" con "muy poco margen de error".
- JPMorgan Neutral (PT 18 €), RBC Sector Perform (17 €) — citan que el crecimiento de redes es intensivo en capital, financiado con deuda, y dependiente de decisiones de ROE permitido aún no tomadas.

### Pregunta al estilo Munger: ¿dónde es más probable que me equivoque? ¿Por qué la gente inteligente no compra esto?

La gente inteligente que no compra Iberdrola hoy no duda del negocio — duda del **precio pagado por un retorno regulado del 6,58% nominal en España y 5,70% real en Reino Unido, fijo durante 5-6 años, cuando el activo cotiza a 2,2x su valor en libros**. Pagar 2,2x libros por activos que rinden ~6,5% sobre libros implica un retorno económico inicial del ~3% sobre el precio pagado — la tesis exige que el crecimiento de la RAB (+40% a 2028) haga el resto. Mi error más probable sería confundir "empresa excelente" con "inversión excelente a cualquier precio": exactamente el error contra el que Buffett construyó su regla del margen de seguridad.

---

## 5. Evaluación de la dirección — Duan Yongping "la persona correcta" + Buffett "integridad"

### Ignacio Sánchez Galán — presidente ejecutivo desde 2001 (25 años)

**El historial de asignación de capital es, objetivamente, de los mejores de Europa en cualquier sector:**

| Fecha | Decisión | Resultado en retrospectiva | Valoración |
|---|---|---|---|
| 2001-2010 | Apuesta por las renovables cuando la eólica era marginal; cierre progresivo de 17 plantas de carbón/fuel (>8.500 MW) | Posicionamiento adelantado en una década a la transición energética | ★★★★★ |
| 2007 | Compra de ScottishPower (~17.100 M€) | Base del negocio regulado británico, hoy el mayor destino de inversión del grupo | ★★★★☆ |
| 2008 | Entrada en EE.UU. (Energy East → Avangrid) | Plataforma regulada en NY/Maine/Connecticut; ejecución mixta en jurisdicciones hostiles | ★★★☆☆ |
| 2023-2026 | **Venta de México (~$10.400M total)** al subir el riesgo político | Salida cerca de máximos, capital reciclado a redes reguladas | ★★★★★ |
| 2024-2026 | Compra de minoritarios de Avangrid ($2.550M, prima 11,4%) y Neoenergia (~98%), adquisición de ENW | Primas modestas, simplificación total: el crecimiento 2026+ es 100% para el accionista de IBE | ★★★★☆ |
| jul-2025 | Ampliación de capital de 5.000 M€ a 15,15 € | Dilución ~5%, pero sobresuscrita 3,8x y el precio actual (20,90 €) la valida ampliamente | ★★★★☆ |

Precio de la acción ~3,50 € (2001) → >20 € (2026) más >7 €/acción de dividendos acumulados.

### Los contrapuntos de gobernanza (obligatorio presentarlos)

- **Riesgo de hombre clave**: Galán tiene 75 años, sin fecha de retirada anunciada. Pedro Azagra (58, ICADE + Chicago Booth, ex-CEO de Avangrid, arquitecto del M&A del grupo desde 1997) fue nombrado CEO en jun-2025 y reelegido con ~98% en la junta de 2026 — sucesión razonablemente encauzada, pero **el poder ejecutivo sigue visiblemente en Galán**, que además preside los consejos de ScottishPower, Avangrid y Neoenergia.
- **Retribución**: 15,87 M€ en 2025 (+12,2%), 171 veces el salario medio de la plantilla (99x en 2017) — entre los ejecutivos mejor pagados de España, con crítica recurrente de proxy advisors.
- **Caso Villarejo**: Iberdrola pagó ~1,05 M€ al excomisario Villarejo (2004-2012) por trabajos de espionaje. La imputación personal de Galán fue **sobreseída en 2022 por falta de indicios** (confirmado por la Audiencia Nacional); a juicio van Villarejo y el ex-jefe de seguridad de Iberdrola; la sociedad comparece solo como **responsable civil subsidiaria** (fianza 21 M€). Mancha reputacional real, riesgo penal para la cúpula ya descartado judicialmente.
- **Accionariado**: Qatar Investment Authority ~8,7% (ha sondeado superar el 10%), BlackRock ~5,3%, Norges ~3,1%. Sin accionista de control.

### Pregunta al estilo Duan Yongping: si el CEO se jubilara mañana, ¿la empresa mantendría su competitividad?

Mejor posicionada que la mayoría: el negocio dominante (redes reguladas) es el que menos depende del genio individual — los retornos están fijados por contrato regulatorio hasta 2031 y el plan de inversión está aprobado y financiado. El riesgo de sucesión afecta a la **asignación de capital futura** (dónde invertir los próximos 58.000 M€), no a la operación corriente. Aun así, 25 años de un solo hombre al mando es una concentración de decisión que Duan Yongping señalaría como no institucionalizada del todo.

---

## 6. Tendencias sectoriales y civilizatorias — Li Lu

### ¿Está el sector en un cambio de paradigma civilizatorio?

**Sí — y esta es la diferencia fundamental con el caso Telefónica.** La electrificación de la economía (transporte, calefacción, industria) y la explosión de demanda eléctrica de los centros de datos de IA constituyen un cambio estructural genuino de la demanda de electricidad tras dos décadas planas en Occidente:

- Electricidad distribuida por Iberdrola en 2025: récord de 255.976 GWh (+7,5%) — la demanda ya está acelerando, no es solo proyección.
- Colas de conexión de centros de datos en la UE: 30 GW a finales de 2024 (80% solicitado en los últimos 12 meses); del ~3% al 5,7% de la demanda eléctrica europea prevista para 2035 (Ember, jun-2025).
- Inversión global en redes proyectada: ~$5,8 billones en 2026-2035.
- El apagón ibérico del 28-abr-2025 (informe ENTSO-E: fallos de control de tensión y desconexiones en cascada; sin responsabilidad atribuida a Iberdrola, que acusó públicamente a Red Eléctrica) reforzó políticamente la necesidad de invertir en red.

**La matización de Li Lu**: ser el "pico y pala" de una revolución solo enriquece al accionista si captura parte del valor. En un negocio regulado, el excedente del superciclo lo capturan en gran parte los consumidores (vía tarifas contenidas) y el regulador decide el reparto. Iberdrola crece en volumen (RAB +40%), no en margen. Es una exposición real pero **amortiguada** al cambio civilizatorio.

### Posición en la cadena de valor

La mejor posible dentro del sector eléctrico: el cuello de botella físico de la electrificación no es la generación (abundante y deflacionaria vía solar) sino **la red** — y las redes son monopolios. Iberdrola concentró su capital exactamente ahí antes que la mayoría (aunque National Grid, E.ON y Enel ejecutan ahora la misma rotación).

### Pregunta al estilo Li Lu: visto desde dentro de 20 años, ¿es esta empresa el "Standard Oil de esta era" o el "3Com de un día"?

Iberdrola es probablemente lo más parecido que existe en Europa a un "Standard Oil de la electrificación" — activos monopolísticos sobre el flujo físico esencial de la era eléctrica, en cuatro jurisdicciones estables. Pero con una diferencia decisiva: Standard Oil no tenía un regulador fijándole el retorno cada 5 años. A 20 años vista, el negocio casi con certeza seguirá existiendo y creciendo; **la rentabilidad para el accionista dependerá del precio de entrada y del ciclo regulatorio, no de la supervivencia del negocio**.

---

## 7. Valoración y margen de seguridad — Buffett "valor intrínseco" + Duan Yongping "el precio correcto"

### Métricas actuales (verificadas, ver §1.6 y Anexo)

- PER 22,18x (atribuido) / ~20,4x forward — frente a ~16,4x de media del sector eléctrico europeo (~30% de prima)
- EV/EBITDA 11,7x–12,1x · P/B 2,22x · Dividendo 3,28% (creciente ~10% anual, suelo de 0,64 €/acción hasta 2028, payout 65-75%)
- FCF yield ~2,9% — el más bajo de los tres pilares de retorno (dividendo + crecimiento)

### DCF inverso (cualitativo)

A 22x beneficios con crecimiento guiado de ~6,5-8%, el precio actual descuenta aproximadamente: **cumplimiento íntegro del plan 2028 (7.600 M€ de beneficio) + mantenimiento de la prima de calidad + tipos estables o a la baja**. No descuenta catástrofes, pero tampoco deja margen para decepciones regulatorias, de tipos o de ejecución. Es la definición de "priced for perfection" con matiz: la "perfección" exigida (6,5% CAGR) es modesta y la compañía la ha superado 5 años seguidos.

### Valoración a tres escenarios (verificada con `financial_rigor.py`)

```
情景                年增速     目标PE      目标EPS       目标股价      涨跌幅
乐观 (Bull)          9%      24x       1.22      29.3   +40.1%
中性 (Base)          6%      20x       1.14      22.8    +8.9%
悲观 (Bear)          3%      15x       1.03      15.4   -26.1%
```

Traducción de supuestos (horizonte 3 años, base 20,90 €, EPS 0,9423 €):

| Escenario | Crecimiento anual EPS | PER objetivo | Precio objetivo | Retorno (sin dividendos) |
|---|---|---|---|---|
| **Alcista** | +9% (supera guía; superciclo de demanda se confirma; tipos bajan) | 24x | **29,30 €** | **+40,1%** |
| **Base** | +6,5% (cumple la guía de 7.600 M€ en 2028) | 20x | **22,80 €** | **+8,9%** (~+18-19% con dividendos acumulados) |
| **Bajista** | +3% (resets regulatorios adversos, capex inflado) | 15x (compresión a múltiplo histórico de utility) | **15,40 €** | **-26,1%** |

Lectura: el escenario base ofrece un retorno total anual de ~5-6% con dividendos — **aceptable pero no atractivo para el estándar de "precio con margen de seguridad"**. La asimetría (+40%/-26%) es mucho menos favorable que hace 18 meses, cuando la acción cotizaba a 11-12 €.

### Comparación con la propia historia y el sector

- La acción ha pasado de ~12 € (inicio 2024) a 20,90 € — la re-calificación (re-rating) **ya ha ocurrido**.
- El PT medio del consenso (17,9-18,6 €) implica que el sell-side valora la empresa un 11-14% por debajo del precio de mercado.

### Pregunta al estilo Duan Yongping: si la bolsa cerrara mañana durante 5 años, ¿estaría dispuesto a mantener a este precio?

**Mantener, sí — comprar, con reservas.** A diferencia de Telefónica, aquí no hay duda razonable sobre la calidad del negocio ni sobre su supervivencia a 5 años: retornos regulados fijados hasta 2031, demanda estructural creciente, dividendo creciente con suelo garantizado. El problema es exclusivamente de precio: a 22x beneficios y 2,2x libros, el retorno esperado a 5 años es probablemente del orden de 5-8% anual (crecimiento + dividendo − posible compresión de múltiplo) — decente, pero sin margen de seguridad frente a un giro de tipos o regulatorio.

---

## 8. Memorándum de decisión final

| Dimensión | Conclusión | Nivel de confianza |
|---|---|---|
| Calidad del negocio (Duan Yongping) | Excelente — monopolios regulados de red + escala renovable; el mejor modelo de negocio posible dentro del sector eléctrico | Alta |
| Foso económico (Buffett) | Máximo en redes (monopolio legal), ensanchado deliberadamente con la rotación 2024-26; la amenaza no es competitiva sino política/regulatoria | Alta |
| Dirección (Duan Yongping + Buffett) | Historial de asignación de capital de 25 años excepcional y verificable; contrapesos: hombre clave de 75 años, retribución polémica, caso Villarejo (sobreseído para Galán) | Alta en el historial, media en la sucesión |
| Mayor riesgo (Munger) | El precio, no el negocio: prima del ~30% sobre el sector con tipos en máximos de ciclo; el consenso de analistas valora la acción por debajo de su cotización | Alta |
| Tendencia civilizatoria (Li Lu) | Exposición genuina (y regulada, por tanto amortiguada) al superciclo de electrificación/IA — el contraste directo con el sector telecom | Alta |
| Valoración (Buffett + Duan Yongping) | 22,2x PER, 2,2x P/B, 3,28% dividendo; escenarios 15,40 € / 22,80 € / 29,30 € a 3 años; asimetría mediocre al precio actual | Alta en el cálculo, media en los supuestos |

### Tabla de decisión final

| Estrategia | Recomendación |
|---|---|
| **Inversor sin posición** | **Observar y esperar mejor precio.** La empresa merece estar en cualquier lista de vigilancia permanente, pero a 20,90 € el margen de seguridad es insuficiente: el escenario base ofrece ~5-6% anual total y el bajista -26%. Zona de interés orientativa: **por debajo de ~17-18 €** (PER ~18x, dividendo ~4%), que coincide además con el precio objetivo medio del consenso. Una corrección de mercado o un susto regulatorio puntual serían la oportunidad. |
| **Inversor con posición existente** | **Mantener.** No hay deterioro del negocio que justifique vender; vender una empresa de esta calidad solo por valoración exigente suele ser un error si el coste de oportunidad no está identificado. Revisar la tesis si el múltiplo supera ~25x forward sin mejora de guía. |
| **Señal de venta** | Reset regulatorio materialmente adverso (ED3 británico o ciclo CNMC siguiente muy por debajo de lo actual); salida abrupta de Galán sin transición ordenada a Azagra; nueva ampliación de capital no anunciada en el plan; PER >25x forward sin revisión al alza del crecimiento. |
| **Señal de compra/refuerzo** | Caída a la zona de 17-18 € (o inferior) sin deterioro de fundamentales; confirmación de demanda de centros de datos convirtiéndose en contratos firmes de conexión; resolución favorable del caso tarifario de NY. |

### Comentarios simulados de los cuatro maestros

> "Es mucho mejor comprar una empresa maravillosa a un precio justo que una empresa razonable a un precio maravilloso." — Warren Buffett
>
> *Iberdrola es la empresa maravillosa de este par de informes. La cuestión abierta es si 22 veces beneficios, tras una subida acumulada de ~60% en 18 meses, sigue siendo un "precio justo" — o si la paciencia comprará lo mismo más barato.*

> "La primera regla es no engañarse a uno mismo — y uno es la persona más fácil de engañar." — Charlie Munger
>
> *El autoengaño disponible aquí es elegante: como el negocio es objetivamente excelente, resulta fácil justificar cualquier precio. Los analistas que la cubren a diario tienen su precio objetivo por debajo de la cotización. Eso no es ruido; es información.*

> "本分" — Solo hacer lo correcto, y hacerlo bien. — Duan Yongping
>
> *La venta de México cerca de máximos y la recompra de todos los minoritarios justo antes de la fase de cosecha es asignación de capital de manual. Este equipo hace lo correcto. Pero comprar bien también es parte del 本分 del inversor — y hoy el que compra no tiene el precio de su lado.*

> "Las grandes oportunidades llegan cuando una empresa excelente atraviesa un problema temporal que el mercado confunde con uno permanente." — Li Lu
>
> *Hoy es exactamente el caso contrario: una empresa excelente en su momento de máximo reconocimiento. La oportunidad estilo Li Lu en Iberdrola fue el periodo 2021-2023 de tipos al alza, cuando cotizaba a 10-12 €. La próxima llegará — probablemente con el siguiente susto de tipos o de regulación — y este informe deja fijada la zona de precio para reconocerla.*

---

## 9. Confianza del análisis de IA vs. certeza de la inversión

**Confianza del análisis de IA: Alta.** Empresa de nivel A con datos abundantes, cifras clave verificadas con dos fuentes y herramienta de cálculo exacto, marco regulatorio ya decidido y público (CNMC 6,58%, Ofgem 5,70%) — el grueso de las variables de los próximos 5 años está inusualmente bien documentado para tratarse de proyecciones.

**Certeza de la inversión: Alta sobre el negocio, baja sobre el retorno al precio actual.** Esta distinción es el corazón del informe: la probabilidad de que Iberdrola siga siendo una excelente empresa en 2031 es alta (monopolios regulados, retornos contractualizados, demanda estructural). La probabilidad de que comprar a 20,90 € genere un retorno satisfactorio depende de una variable que nadie controla — el ciclo de tipos y la prima que el mercado quiera pagar por la calidad — y la evidencia disponible (consenso por debajo del precio, prima del 30% sobre el sector, +33,5% en 52 semanas) sugiere que esa variable está hoy en contra del comprador.

**Conclusiones basadas en datos sólidos:**
- Toda la sección 1 (resultados, segmentos, valoración, marco regulatorio) — múltiples fuentes independientes.
- El historial de asignación de capital de Galán (§5) — hechos verificables de 25 años.
- Las decisiones regulatorias 2026-2031 de España y Reino Unido — documentos oficiales publicados.

**Conclusiones basadas en inferencia:**
- La sostenibilidad de la prima de valoración (depende de tipos futuros — incognoscible).
- La conversión de las colas de conexión de centros de datos en demanda real facturada.
- El desenlace de los casos tarifarios de EE.UU. (NY pendiente; Maine/Connecticut adversos).
- La transición Galán → Azagra.

---

## Anexo: Registro de verificación cruzada de datos clave

### A.1 Verificación de capitalización bursátil

```
============================================================
市值验算 (Market Cap Verification)
============================================================
  股价 (Price):       20.9 EUR
  总股本 (Shares):    6.67B
  计算市值:           139.40B EUR
  报告市值:           139.48B EUR
  偏差:               0.06%

  ✅ 验证通过, 偏差仅 0.06%
```

### A.2 Cross-validación de ingresos FY2025

```
============================================================
交叉验证: Ingresos FY2025 (Cross-Validation)
============================================================
  ✅ Iberdrola_slides    : 45,017.00 M EUR  (偏差 1.74%)
  ✅ stockanalysis       : 46,612.00 M EUR  (偏差 1.74%)
  ✅ 所有来源偏差 ≤ 2.0%, 数据一致
  共识值 (加权中位数): 45,814.50 M EUR
```
*Nota: la diferencia es definicional (ingresos IFRS vs. ingresos totales); se usa la cifra de la compañía en el cuerpo del informe.*

### A.3 Cross-validación de beneficio neto atribuido FY2025

```
============================================================
交叉验证: Beneficio neto atribuido FY2025 (Cross-Validation)
============================================================
  ✅ Iberdrola_press_release: 6,285.00 M EUR  (偏差 1.11%)
  ✅ stockanalysis       : 6,426.00 M EUR  (偏差 1.11%)
  ✅ 所有来源偏差 ≤ 2.0%, 数据一致
```
*Nota: stockanalysis probablemente incluye minoritarios; se usa la cifra atribuida de la compañía.*

### A.4 Cross-validación de EBITDA ajustado FY2025

```
============================================================
交叉验证: EBITDA ajustado FY2025 (Cross-Validation)
============================================================
  ✅ RenewablesNow       : 15,684.00 M EUR  (偏差 0.00%)
  ✅ Investing_slides    : 15,684.00 M EUR  (偏差 0.00%)
  ✅ 所有来源偏差 ≤ 2.0%, 数据一致
```

### A.5 Cross-validación de deuda neta (discrepancia definicional documentada)

```
============================================================
交叉验证: Deuda neta ajustada dic-2025 (Cross-Validation)
============================================================
  ❌ Iberdrola_ajustada  : 50,200.00 M EUR  (偏差 4.45%)
  ❌ stockanalysis_sin_ajustar: 54,880.00 M EUR  (偏差 4.45%)
  ⚠️  存在来源偏差 > 2.0%, 请核实差异原因
```
*Resolución: no es un error de datos sino de definición — la cifra "ajustada" de la compañía excluye/trata de forma distinta híbridos y efectos FX. Ambas cifras se presentan etiquetadas en §1.2; para EV/EBITDA se calculan ambas variantes (§A.6).*

### A.6 Verificación de métricas de valoración

```
============================================================
估值指标验算 (Valuation Verification)
============================================================
  当前股价: 20.9
  PE (TTM):  20.9 / 0.9423 = 22.18x
  盈利收益率: 4.51%
  股息率:    0.685 / 20.9 = 3.28%
  ✅ 以上指标均使用精确十进制计算, 无浮点误差

EV/EBITDA (deuda ajustada 50.2B + EBITDA ajustado 15.684B):  12.09x
EV/EBITDA (deuda sin ajustar 54.88B + EBITDA reportado 16.592B): 11.71x
P/S: 139.4B / 45.017B = 3.10x
CAGR beneficio atribuido 2021-2025: (6285/3885)^(1/4) - 1 = 12.78%
CAGR implícito guía 2025→2028 (7.600M): (7600/6285)^(1/3) - 1 = 6.54%
```

### A.7 Valoración a tres escenarios

```
============================================================
三情景估值模型 (Three-Scenario Valuation)
============================================================
  当前股价: 20.9 EUR   当前EPS: 0.9423   预测期: 3年

  情景                年增速     目标PE      目标EPS       目标股价      涨跌幅
  乐观 (Bull)          9%      24x       1.22      29.3   +40.1%
  中性 (Base)          6%      20x       1.14      22.8    +8.9%
  悲观 (Bear)          3%      15x       1.03      15.4   -26.1%

  ✅ 所有计算使用精确十进制, 结果可审计复现
```

### A.8 Gaps de datos pendientes (transparencia)

1. Presentación oficial FY2025 (report-25FY.pdf) devuelve 403 a la descarga automatizada — el desglose geográfico de EBITDA y el EBITDA reportado de 2024 (~16.845 M€, implícito) están pendientes de doble fuente; descargar y verificar manualmente.
2. Serie de flujos de caja 2021-2025: fuente única (stockanalysis); macrotrends inaccesible (402).
3. EBITDA/RAB de comparables (E.ON, RWE, SSE, National Grid, Endesa, Naturgy, EDF) no recopilados individualmente — la prima del ~30% sobre el sector procede de fuentes agregadas (Capital.com, Simply Wall St).
4. Casos tarifarios de Maine y Connecticut: estado citado de prensa, sin expediente primario.
5. Participación accionarial personal de Galán no obtenida (consultar informe de gobierno corporativo CNMV).
6. Ranking eólico mundial "líder entre privadas" es una afirmación de la propia compañía, no verificada con ranking independiente.
7. Precio exacto de la compra de Energy East (2008): operación confirmada, cifra exacta (~$4.500M + deuda) no verificada con segunda fuente.
8. Desglose de la revalorización bursátil por año natural (2024/2025/2026): las fuentes son mutuamente inconsistentes (companiesmarketcap: 2025 +61%; El Español sugiere reparto distinto). Detectado y corregido en auditoría — el informe usa únicamente magnitudes verificables con anclas de precio (ampliación jul-2025 a 15,15 €, rango 52 semanas, precio actual).

---

*Informe elaborado siguiendo el marco de los 4 maestros (Buffett, Munger, Duan Yongping, Li Lu). Todas las cifras en euros (€) salvo indicación contraria. Fecha de precios de referencia: 10 de julio de 2026. Resultados del primer semestre de 2026 previstos para ~23-jul-2026.*
