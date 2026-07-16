# TSMC (TWSE: 2330 / NYSE ADR: TSM) — Revisión de Resultados 2T2026

**Fecha del informe**: 16 de julio de 2026
**Período cubierto**: 2T2026 (trimestre cerrado el 30 de junio de 2026), publicado el 16-jul-2026 (conferencia con inversores a las 14:00 hora Taiwán / 06:00 UTC)
**Nivel de acceso a fuentes**: **A/B** — nota de prensa oficial completa (pr.tsmc.com, nota nº 3326) + 6-K en SEC EDGAR (identificado pero bloqueado al acceso directo; contenido validado vía dos medios que lo reproducen) + cobertura del transcript de la conferencia (Investing.com, GuruFocus). El desglose completo por plataforma (IoT/automoción/DCE) y los estados financieros detallados del 6-K no estaban íntegramente accesibles — se marca donde aplica.
**Informes previos relacionados**: `TSMC-research-20260712.md` (investigación, 4 maestros), `TSMC-thesis.md` (tesis watchlist, 12-jul-2026)

> "Yo no leo informes de analistas. Leo los informes originales." — Li Lu

---

## Una. Datos clave de un vistazo

### 1.1 Cuenta de resultados

| Indicador | 2T2026 | 2T2025 | YoY | QoQ | Guía de abril | ¿Cumplida? |
|---|---|---|---|---|---|---|
| Ingresos (B NT$) | 1.270,38 | ~934,1 * | +36,0% | +12,0% | — | — |
| Ingresos (B USD) | 40,20 | 30,07 * | +33,7% | +12,0% | 39,0–40,2 | ✅ En el tope del rango |
| Margen bruto | 67,7% | ~58,6% * | +~9 pp | +1,5 pp | 65,5%–67,5% | ✅ Superada (+0,2 pp sobre el tope) |
| Margen operativo | 60,3% | — | — | — | 56,5%–58,5% | ✅ Superada (+1,8 pp sobre el tope) |
| Margen neto | 55,6% | — | — | — | — | — |
| Beneficio neto (B NT$) | 706,56 (récord) | ~398,3 * | +77,4% | +23,4% | Consenso LSEG: 632,6 | ✅ Batido en +11,7% |
| BPA diluido (NT$) | 27,25 | 15,36 * | +77,4% | — | — | — |
| BPA por ADR (US$) | 4,31 | — | +77,4% | — | — | — |

\* Valores del 2T2025 derivados de las variaciones interanuales oficiales publicadas por TSMC (no tomados directamente de la nota del 2T2025). El BN de 2T2025 así derivado (~398,3 B NT$) coincide con el histórico conocido (398,27 B NT$).

**⚠️ Matiz esencial al "+77,4%"**: el beneficio neto incluye una **ganancia extraordinaria de ~63,2 B NT$ (~1,97 B$) por la venta de la participación en Vanguard International Semiconductor** (operación anunciada en 6-K de mayo de 2026). Excluyéndola, el beneficio recurrente sería ~643,4 B NT$ — que **aún batiría el consenso, pero solo en +1,70%** (cálculo verificado con `financial_rigor.py`). El titular "+77,4%" mezcla operativa excepcional con un one-off.

### 1.2 Desglose de ingresos

| Dimensión | 2T2026 | Variación | Lectura |
|---|---|---|---|
| **Por nodo**: 2 nm | 3% | Primera contribución material | Rampa "empinada" prevista en 2S2026 |
| 3 nm | 30% | — | — |
| 5 nm | 33% | — | Sigue siendo el mayor nodo |
| 7 nm | 11% | — | — |
| **Tecnologías avanzadas (≤7 nm)** | **77% del ingreso por obleas** | — | — |
| **Por plataforma**: HPC/IA | **66%** | **+20% QoQ** | Nuevo máximo de concentración en HPC |
| Smartphone | 22% | −4% QoQ | Estacionalidad + debilidad de consumo |
| Resto (IoT, automoción, DCE, otros) | 12% | Sin desglose disponible | ⚠️ No accesible en las fuentes consultadas |

### 1.3 Flujo de caja y balance (lo que más mira Buffett)

| Indicador | 2T2026 | Comentario |
|---|---|---|
| Flujo de caja operativo | 783 B NT$ | **110,8% del beneficio neto** (>100% = calidad de beneficio sana; verificado) |
| Capex del trimestre | 496 B NT$ | Intensidad muy alta y subiendo |
| Flujo de caja libre | ~287 B NT$ (287,36 reportado) | Positivo pese al capex récord (783−496=287, verificado) |
| Dividendos pagados | 156 B NT$ | Sin recompras significativas, coherente con su política histórica |
| Caja + valores negociables | ~3,5 T NT$ (~110 B$) | Fortaleza de balance intacta |

### 1.4 Guías

| Guía | Anterior | Nueva (16-jul-2026) | Cambio |
|---|---|---|---|
| Ingresos 3T2026 | — | 44,6–45,8 B$ (punto medio 45,2 B$: +12,4% QoQ, ~+37% YoY) | — |
| Margen bruto 3T2026 | — | 65%–67% (−~170 pb secuencial por la rampa de N2) | — |
| Margen operativo 3T2026 | — | 56%–58% | — |
| Tipo de cambio asumido | — | 32,0 NT$/US$ | — |
| **Crecimiento de ingresos FY2026 (USD)** | ~+30% YoY (abr-2026) | **"Ligeramente por encima del +40%" YoY** | ⬆️ **Elevada ~10 pp** |
| **Capex 2026** | 52–56 B$ (ene-2026) | **60–64 B$** | ⬆️ **+~15% en el punto medio (62 vs. 54 B$)** |

---

## Dos. Los 3 cambios más importantes del trimestre

**1. La guía anual sube de +30% a "ligeramente por encima de +40%" — la demanda de IA se acelera, no se modera.** Es la segunda subida de guía del año (enero: ~mid-20s%; abril: +30%; julio: >+40%). El dato responde directamente a la pregunta central de la tesis: el ciclo de capex de los hiperescaladores **no** ha girado; C.C. Wei afirmó que la brecha oferta-demanda es "muy grande" y podría persistir hasta 2029-2030, y que la IA agéntica añade demanda de CPU además de aceleradores. Contrapunto: es exactamente lo que diría un directivo en la cima de un ciclo; la evidencia dura (backlog, prepagos de clientes) no se cuantificó en la conferencia.

**2. El capex 2026 sube a 60–64 B$ y "los próximos 3 años serán significativamente mayores que los 3 anteriores".** El mercado leyó esto con ambivalencia: valida la demanda, pero eleva el riesgo de sobrecapacidad si el ciclo de IA gira (el mismo patrón que el informe de Oracle documenta en el extremo opuesto de la cadena). La dilución de margen guiada es concreta: rampa de N2 −3/4 pp en 2S2026 + fabs en el extranjero −2/3 pp (ampliándose a −3/4 pp). El margen bruto del 67,7% de este trimestre es, según la propia guía, un **pico local**.

**3. El beneficio récord lleva un one-off dentro.** La venta de Vanguard aporta ~63,2 B NT$ del beneficio. El +77,4% interanual de titular se convierte en un beat operativo modesto (+1,7% sobre consenso) al excluirla. La operativa subyacente es excelente (margen operativo 60,3%, 1,8 pp sobre el tope de la guía), pero la magnitud del titular exagera el trimestre.

---

## Tres. Tono de la dirección y seguimiento de promesas

### 3.1 Señales del tono

| Señal | Evidencia | Tipo |
|---|---|---|
| Concreción cuantitativa en la dilución de márgenes (N2 −3/4 pp; fabs extranjeras −2/3→−3/4 pp) | Wendell Huang, CFO | 🟢 Coherente y específico |
| Subida de guía con cifra concreta (>+40%) en vez de vaguedades | C.C. Wei | 🟢 Claridad |
| "Nuestra convicción en la megatendencia de IA multianual sigue siendo muy alta" | C.C. Wei | 🔴 Afirmación de confianza sin datos nuevos que la soporten en la propia frase |
| Sobre competencia (Samsung/Intel): "Elegir una tecnología y escalarla no es comprar leche en el 7-Eleven... se necesitan unos 5 años" | C.C. Wei, respuesta a Morgan Stanley | 🟢 Directo, argumentado en plazos |
| Sobre concentración de clientes: "hay muchos jugadores nuevos en la industria de la IA" | C.C. Wei | 🔴 Respuesta genérica; evitó cuantificar la dependencia de Nvidia/Apple |
| Reconocimiento de riesgos: incertidumbre macro, precios de componentes al alza, debilidad en nodos maduros | Conferencia | 🟢 Franqueza sobre las partes débiles |

### 3.2 Seguimiento de promesas (guía de abril vs. real)

| Promesa (conferencia 1T2026, abril) | Resultado 2T2026 | Veredicto |
|---|---|---|
| Ingresos 39,0–40,2 B$ | 40,20 B$ | ✅ Cumplida en el tope exacto |
| Margen bruto 65,5%–67,5% | 67,7% | ✅ Superada |
| Margen operativo 56,5%–58,5% | 60,3% | ✅ Superada con holgura |
| Crecimiento FY2026 ~+30% (USD) | Elevado a >+40% | ✅ Superada (revisada al alza) |
| N2 en producción en volumen desde 4T2025 | 2 nm ya es el 3% del ingreso por obleas | ✅ En marcha; sin datos cuantitativos de rendimientos (yields) |

**Cuatro de cinco promesas cumplidas o superadas; ninguna incumplida.** Como diría Duan Yongping: "La forma más sencilla de saber si una dirección es fiable es comprobar si hizo lo que dijo." — el historial de este equipo directivo sigue intachable en lo verificable.

---

## Cuatro. Información no evidente (notas y letra pequeña)

- **Ganancia extraordinaria de Vanguard (~63,2 B NT$)**: ya comentada en §Dos. Es el ajuste más importante para leer el trimestre correctamente.
- **El tipo de cambio juega a favor**: el NT$ se ha depreciado ~9,5% interanual contra el USD (32,21 NT$/US$ el 16-jul-2026). El crecimiento en NT$ (+36,0%) supera al crecimiento en USD (+33,7%) y los márgenes en NT$ se benefician (TSMC cobra en USD y paga costes mayormente en NT$). Parte de la expansión de margen es cambiaria, no operativa. **Dato no cuantificado por la compañía en las fuentes accesibles** — la sensibilidad histórica que TSMC ha citado es de ~0,4 pp de margen bruto por cada 1% de movimiento del NT$.
- **Concentración por plataforma en máximos**: HPC ya es el 66% de ingresos (vs. 58% en FY2025, según el informe de investigación del 12-jul). La diversificación por plataforma de TSMC se está estrechando a medida que la IA crece — el negocio es cada vez más un derivado del capex de IA.
- **Sin desglose de clientes**: ni la nota de prensa ni la cobertura de la conferencia cuantifican la concentración Nvidia/Apple este trimestre (última cifra conocida: ~19% + ~17%, FY2025). ⚠️ Dato pendiente hasta el informe anual.
- **Geopolítica**: **sin comentarios sustantivos** sobre Taiwán, aranceles o controles de exportación en la conferencia, según las fuentes consultadas. La ausencia de novedad es en sí la noticia — ni escalada ni desescalada.

---

## Cinco. Preguntas clave de la conferencia (Q&A)

| Pregunta del analista | Respuesta de la dirección | Calidad (1–5) | ¿Evasiva? |
|---|---|---|---|
| Charlie Chan (Morgan Stanley): ¿amenaza competitiva de Samsung e Intel con subsidios? | "Elegir una tecnología y escalarla no es comprar leche en el 7-Eleven... se necesitan unos 5 años" — el foso es el tiempo de ejecución, no el dinero | 4 | No |
| Gokul: ¿persistirá la brecha oferta-demanda hasta 2029–2030? | La brecha es "muy grande"; la IA es "una industria nueva" que afecta a automoción, robótica y computación en general | 3 | Parcialmente — sin cuantificación |
| Ha Lu (BofA): ¿puede el packaging avanzado de terceros (EMIB-T de Intel) canibalizar valor del front-end? | Front-end y back-end son "dos cosas distintas... la capacidad de packaging está tan tensionada... damos la bienvenida a flexibilidad adicional" | 4 | No |

---

## Seis. Relación con la tesis de inversión (`TSMC-thesis.md`, 12-jul-2026)

### 6.1 Las 7 hipótesis clave, reevaluadas con datos del 2T2026

| # | Hipótesis | Estado tras 2T2026 | Evidencia |
|---|---|---|---|
| 1 | Liderazgo de ejecución sobre Samsung/Intel | 🟢 Intacta | N2 ya al 3% de ingresos con rampa acelerándose; sin capturas de clientes ancla por competidores |
| 2 | HPC/IA crece sin giro del capex de hiperescaladores | 🟢 **Reforzada** | HPC 66% (+20% QoQ); guía FY elevada a >+40%; brecha oferta-demanda "muy grande" |
| 3 | Concentración Nvidia+Apple sin recorte de pedidos | 🟢 Intacta (sin datos nuevos) | Sin cuantificación este trimestre; respuesta cualitativa de Wei ("muchos jugadores nuevos") |
| 4 | Margen bruto ≥56% | 🟢 Cumple con holgura | 67,7% real; incluso tras dilución guiada de N2 (−3/4 pp) + fabs extranjeras (−3/4 pp), el suelo implícito ~60% sigue >56% |
| 5 | Expansión geográfica sin dilución material | 🟢 Cumple (vigilar) | Dilución cuantificada y guiada (−2/3 pp → −3/4 pp), dentro de lo ya conocido |
| 6 | Sin escalada geopolítica | 🟢 Sin cambios | Sin menciones sustantivas en la conferencia |
| 7 | Crecimiento ≥ guía propia | 🟢 **Reforzada** | Guía FY2026 elevada de +30% a >+40% |

### 6.2 Líneas rojas: **ninguna activada** (0 de 7)

### 6.3 Los 8 puntos críticos marcados en la tesis, respondidos

| Punto | Respuesta |
|---|---|
| (a) Ingresos vs. guía 39,0–40,2 B$; MB vs. 65,5–67,5% | Tope del rango (40,20 B$); MB superada (67,7%) |
| (b) ¿Se reafirma/eleva/recorta la guía FY2026 (+30%)? | **Elevada a >+40%** |
| (c) Plataformas y sostenibilidad del capex de IA | HPC 66% (+20% QoQ), smartphone 22% (−4% QoQ); convicción declarada "muy alta", sin cuantificación de backlog |
| (d) Avance y yields de N2 | 2 nm = 3% de obleas; rampa "empinada" en 2S; **sin datos cuantitativos de yields publicados** |
| (e) Concentración de clientes | Sin datos nuevos; respuesta cualitativa |
| (f) Geopolítica de Taiwán | Sin comentarios sustantivos |
| (g) Reacción del precio | ADR −3,56% a 404,56 $ (toma de beneficios: "las expectativas eran excepcionalmente altas"); **la TWSE cerró a las 13:30, antes de la publicación de las 14:00** — 2330 cerró a 2.440 NT$ (+0,8%) sin reflejar aún los resultados; la reacción local se verá el 17-jul |
| (h) ¿Persiste la prima del ~15% del ADR? | Con el cierre de TWSE (2.440 NT$, pre-resultados), 5 acciones a 32,213 NT$/US$ implican 378,73 $/ADR vs. ADR a 404,56 $ → **prima del 6,82%** (verificado). ⚠️ Precios **no simultáneos** (el ADR ya cayó −3,56% post-resultados y la ordinaria no ha reaccionado): la prima "limpia" se podrá medir el 17-jul con ambos mercados ya ajustados. En todo caso, muy por debajo del ~15% documentado el 12-jul |

---

## Siete. Conclusión: ¿qué cambia esta publicación?

**1. ¿Superó, cumplió o quedó por debajo de expectativas?** **Superó** — con matiz. Operativamente: tope de la guía de ingresos, márgenes por encima del rango guiado, y doble subida de guía (ingresos FY y capex). El titular del beneficio (+77,4%) exagera: excluyendo la venta de Vanguard, el beat sobre consenso es +1,7%. La reacción del ADR (−3,56%) indica que el mercado ya descontaba un trimestre excelente y puso el foco en la dilución de márgenes guiada para 2S2026 y en el capex.

**2. Impacto en la tesis: REFUERZA.** Las dos hipótesis centrales que el mercado más cuestionaba (sostenibilidad de la demanda de IA — #2; crecimiento por encima de la guía — #7) salen reforzadas con datos, no con retórica: guía elevada 10 pp y HPC +20% QoQ. Ninguna línea roja activada. Los contrapesos: (i) el margen bruto ha tocado un pico local según la propia guía; (ii) la concentración en HPC/IA (66%) hace la tesis más binaria respecto al ciclo de capex de IA; (iii) el capex de 60–64 B$ eleva el coste de equivocarse si el ciclo gira — la misma lógica de "sobreconstrucción ferroviaria" que el informe de Oracle aplica al otro extremo de la cadena. Datos a favor y en contra expuestos; el lector pondera.

**3. Próximo catalizador**: reacción de TWSE el 17-jul (medir la prima del ADR con precios simultáneos); informes mensuales de ingresos (agosto/septiembre); resultados 3T2026 (~mediados de octubre) donde se verá la primera dilución real de la rampa N2 contra la guía de 65–67%.

**4. ¿Y la posición?** No hay posición (tesis en modo watchlist). Al cierre del ADR (~404,56 $), el PER sobre BPA ttm (11,51 $) es ~35x — sigue en el extremo alto del rango histórico, pero la subida de guía mejora el denominador prospectivo: el CAGR implícito exigido por el DCF inverso de la tesis (13,4%) queda aún más holgado frente a una guía anual que ahora apunta a >+40% en 2026. **La caída post-resultados acerca marginalmente el precio a la zona de entrada; no la alcanza.** Mantener en watchlist con sesgo constructivo.

> "El precio es lo que pagas; el valor es lo que recibes." — Warren Buffett
>
> "Si un negocio va bien, la acción acaba siguiéndolo." — Warren Buffett

---

## Apéndice — Registro de verificaciones (`tools/financial_rigor.py`)

| Verificación | Resultado | Fuentes |
|---|---|---|
| BPA diluido: 706,56 B NT$ / 25,93 B acciones | 27,25 NT$ — coincide con el reportado (27,25) | pr.tsmc.com; StockAnalysis (acciones) |
| FCF: 783 − 496 | 287 B NT$ — coincide con el reportado (287,36; redondeo de componentes) | SemiWiki/cobertura del 6-K |
| BN ex-Vanguard: 706,56 − 63,2 | 643,36 B NT$ → beat de consenso de +1,70% (vs. 632,6 LSEG) | TradingKey; 6-K may-2026 (venta Vanguard) |
| OCF / BN | 110,82% | Derivado de cifras anteriores |
| Prima ADR: 404,56 $ vs. 2.440×5/32,213 = 378,73 $ | +6,82% (⚠️ precios no simultáneos) | StockAnalysis (ADR); TradingEconomics (2330); tipo de cambio 32,213 (Investing.com) |
| Capitalización implícita ADR: 404,56/5 × 25,93 B | ~2.098 B$ (~2,1 T$); StockAnalysis muestra 1,99 T$ (desviación ~5%, atribuible a precio intradía en caída y/o base de acciones distinta) | StockAnalysis |
| Guía 3T punto medio vs. 2T | 45,2/40,2 = +12,4% QoQ | pr.tsmc.com (guía); cálculo propio |
| Validación cruzada ingresos 2T (40,20 B$) | 3 fuentes, desviación 0,00% ✅ | pr.tsmc.com; TradingKey/LSEG; Investing.com |
| Validación cruzada BN 2T (706,56 B NT$) | 2 fuentes, desviación 0,00% ✅ | pr.tsmc.com; TradingKey |
| Validación cruzada margen bruto (67,7%) | 3 fuentes, desviación 0,00% ✅ | pr.tsmc.com; TradingKey; Investing.com |
| Validación cruzada capex 2026 nuevo (60–64 B$, medio 62) | 2 fuentes, desviación 0,00% ✅ | Investing.com (transcript); GuruFocus |

**Fuentes primarias**: [Nota de prensa oficial TSMC 2T2026](https://pr.tsmc.com/english/news/3326) · [6-K SEC EDGAR](https://www.sec.gov/Archives/edgar/data/0001046179/000104617926000451/a2q26e_withguidancexfinal.htm) · [Transcript de la conferencia (Investing.com)](https://www.investing.com/news/transcripts/earnings-call-transcript-tsmc-lifts-2026-outlook-as-ai-demand-stays-hot-in-q2-2026-93CH-4794777) · [Highlights del call (GuruFocus)](https://ca.investing.com/news/company-news/taiwan-semiconductor-manufacturing-co-ltd-tsm-q2-2026-earnings-call-highlights-strong--4737378) · [TradingKey](https://www.tradingkey.com/analysis/stocks/us-stocks/262033904-tsmc-q2-profit-77-percent-record-hightradingkey) · [StockAnalysis TSM](https://stockanalysis.com/stocks/tsm/) · [TradingEconomics 2330](https://tradingeconomics.com/2330:tt)
