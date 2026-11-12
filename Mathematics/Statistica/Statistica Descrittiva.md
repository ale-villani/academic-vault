---
title: "Statistica Descrittiva"
domain: "math/statistics"
source_course: "Statistica (Cap. 1)"
tags:
  - math/statistics/descriptive
  - math/statistics/data-analysis
  - math/statistics/box-plot
  - math/statistics/chebyshev
---

La statistica descrittiva è la scienza che si occupa di descrivere con poche quantità sintetiche un fenomeno complesso.

## Dati Statistici e Distribuzioni di Frequenza

### Classificazione dei Dati

> [!definition] Dato Statistico
> Si dice **dato** il risultato ottenuto in una singola misura.
> Un dato si definisce:
> - **Numerico**: se di natura quantitativa.
> - **Categorico**: altrimenti (qualitativo).

> [!note] Quantificazione dei Dati Categorici
> In realtà la distinzione tra dato numerico e categorico non è strettamente necessaria: ad esempio, anche i colori possono essere rigorosamente quantificati mediante terne di coordinate numeriche (es. codifica RGB).

> [!definition] Dato Discreto e Dato Continuo
> Un dato si dice:
> - **Discreto**: se l'insieme dei possibili valori che può assumere è finito o numerabile.
> - **Continuo**: se l'insieme dei valori è non numerabile (cardinalità del continuo).

### Partizione in Classi e Frequenze

> [!definition] Valori e Classi di valori
> Chiamiamo $S$ l'insieme di tutti i valori possibili per ciascun dato. Si definisce **classe di valori** $C$ un sottoinsieme di $S$.

> [!note] Osservazione
> Le classi $\{C_i\}_{i=1}^n$ devono costituire una partizione dell'insieme $S$, ovvero devono essere a due a due disgiunte e la loro unione deve ricoprire l'intero spazio $S$: $$ \begin{aligned} C_i \cap C_j = \emptyset \quad \forall i \neq j, \qquad \bigcup_{i=1}^n C_i = S \end{aligned}$$

> [!definition] Frequenza Assoluta e Frequenza Relativa
> - **Frequenza Assoluta ($FA$)**: è definita dalla cardinalità della classe:
>   $$
>   \begin{aligned}
>   FA(C) = \mathrm{card}(C)
>   \end{aligned}
>   $$
> - **Frequenza Relativa ($FR$)**: è il rapporto tra la frequenza assoluta di $C$ e la cardinalità complessiva dell'insieme $S$:
>   $$
>   \begin{aligned}
>   FR(C) = \frac{\mathrm{card}(C)}{\mathrm{card}(S)}
>   \end{aligned}
>   $$

> [!example] Gruppi Sanguigni
> In un gruppo di studenti si rileva la distribuzione dei gruppi sanguigni:
> - $FA$: rappresenta il numero effettivo di studenti aventi un determinato gruppo sanguigno.
> - $FR$: rappresenta la frazione (o percentuale) di studenti con quel determinato gruppo sanguigno rispetto al totale.

I dati statistici possono essere visualizzati e organizzati attraverso diverse modalità:
1. **Tabelle numeriche**: aggregazione tabellare dei conteggi e delle frequenze.
2. **Istogrammi e diagrammi**:
   - Istogrammi a barre: l'altezza delle barre è proporzionale alla frequenza relativa ($h \propto FR$).
   - Diagrammi a torta o altre rappresentazioni areali.

### Ordinamento e Frequenza Cumulata

> [!note] Notazione per Dati Ordinati
> - Se i dati grezzi non sono ordinati, vengono indicati con la sequenza:
>   $$
>   \begin{aligned}
>   x_1, x_2, \dots, x_n
>   \end{aligned}
>   $$
> - Se i dati sono disposti in ordine non decrescente (statistiche d'ordine), vengono indicati con la notazione con indici tra parentesi tonde:
>   $$
>   \begin{aligned}
>   x_{(1)} \le x_{(2)} \le \dots \le x_{(n)}
>   \end{aligned}
>   $$

> [!definition] Frequenza Cumulata
> Si definisce **frequenza cumulata** $FC$ in un set di dati numerici per un dato valore soglia $k$:
> $$
> \begin{aligned}
> FC(k) = \mathrm{card}\{x \in S : x \le k\}
> \end{aligned}
> $$
> Nel caso di frequenze cumulate relative, la quantità viene normalizzata rispetto al totale, cosicché l'ultima classe assume valore $FC = 1$.

I dati possono inoltre subire trasformazioni analitiche, in particolare:
- Trasformazioni lineari: $x \mapsto ax$
- Trasformazioni affini: $x \mapsto ax + b$

> [!example] Controllo Difetti in Scatole di Compact Disc
> Si consideri un campione di $24$ scatole contenenti ciascuna $100$ compact disc, per analizzare quanti presentano difetti di fabbricazione:
> - Insieme dei possibili valori:
>   $$
>   \begin{aligned}
>   S = \{0, 1, \dots, 100\} \quad (\text{numero di CD difettosi per scatola})
>   \end{aligned}
>   $$
> - Si definiscono le classi: $\{0\}, \{1\}, \dots, \{5\}$ (indicate con $C_0, C_1, \dots, C_5$) e una classe residuale $\{6, 7, \dots, 100\}$ (indicata con $C_6$).
> - Nell'istogramma delle frequenze relative ($FR$), l'area complessiva sottesa è unitaria.
> - Nel diagramma a barre delle frequenze cumulate ($FC$), la funzione a gradini cresce monotonicamente fino all'ultima classe che raggiunge il massimo ($FC = 1$ in forma normalizzata).

## Indici Descrittivi di Posizione e Dispersione

### Indici di Posizione: Moda, Media Campionaria e Mediana

> [!definition] Moda
> In un set discreto di $n$ dati numerici, si dice **moda** la classe (o le classi) avente la massima frequenza relativa $FR$.

> [!definition] Media Campionaria
> Si dice **media campionaria** il valore baricentrico dato dalla media aritmetica dei valori:
> $$
> \begin{aligned}
> \overline{x}_n = \frac{\sum_{i=1}^n x_i}{n} = \sum_{i=1}^n x_i \cdot FR(\{x_i\})
> \end{aligned}
> $$

> [!definition] Mediana
> Dati gli $n$ dati ordinati $x_{(1)} \le x_{(2)} \le \dots \le x_{(n)}$, si dice **mediana** $m$ il valore centrale così definito:
> $$
> \begin{aligned}
> m := \begin{cases}
> x_{\left(\lfloor \frac{n}{2} \rfloor + 1\right)} & \text{se } \frac{n}{2} \notin \mathbb{N} \quad (n \text{ dispari, con } \lfloor \cdot \rfloor \text{ parte intera inferiore}) \\
> \frac{x_{(\frac{n}{2})} + x_{(\frac{n}{2} + 1)}}{2} & \text{se } \frac{n}{2} \in \mathbb{N} \quad (n \text{ pari})
> \end{cases}
> \end{aligned}
> $$

> [!example] Calcolo della Mediana
> - **Campione con $n = 3$ dati (dispari):**
>   Dati ordinati: $x_{(1)} = 8.3, \quad x_{(2)} = 15.7, \quad x_{(3)} = 20.4$.
>   Poiché $n = 3$, $\lfloor 3/2 \rfloor + 1 = 1 + 1 = 2$:
>   $$
>   \begin{aligned}
>   m = x_{(2)} = 15.7
>   \end{aligned}
>   $$
> - **Campione con $n = 4$ dati (pari):**
>   Dati ordinati: $x_{(1)} = 0.57, \quad x_{(2)} = 2.08, \quad x_{(3)} = 5.00, \quad x_{(4)} = 7.93$.
>   Poiché $n = 4$, $n/2 = 2$:
>   $$
>   \begin{aligned}
>   m = \frac{x_{(2)} + x_{(3)}}{2} = \frac{2.08 + 5.00}{2} = 3.54
>   \end{aligned}
>   $$

### Asimmetria e Trasformazioni Affini

> [!note] Asimmetria della Distribuzione e Code
> Il confronto tra la media campionaria $\overline{x}$ e la mediana $m$ fornisce indicazioni sulla forma e l'asimmetria dell'istogramma:
> - Se $\overline{x} > m$: la distribuzione presenta una **coda a destra** (asimmetria positiva).
> - Se $\overline{x} < m$: la distribuzione presenta una **coda a sinistra** (asimmetria negativa).

> [!note] Proprietà della Media sotto Trasformazioni Affini
> Se i dati vengono sottoposti a una trasformazione affine $L(x) = ax + b$, la media campionaria si trasforma linearmente secondo la medesima legge:
> $$
> \begin{aligned}
> \overline{x} \longmapsto L(\overline{x}) = a \overline{x} + b
> \end{aligned}
> $$

### Indici di Dispersione: Range, Varianza e Deviazione Standard

> [!definition] Campo di Variazione (Range)
> Si definisce **range** (o campo di variazione) di un set di $n$ dati numerici ordinati la differenza tra il massimo e il minimo:
> $$
> \begin{aligned}
> \text{Range} = x_{(n)} - x_{(1)}
> \end{aligned}
> $$

> [!definition] Varianza Campionaria e Deviazione Standard
> - **Varianza campionaria ($S_n^2$)**:
>   $$
>   \begin{aligned}
>   S_n^2 := \frac{\sum_{i=1}^n (x_i - \overline{x}_n)^2}{n - 1}
>   \end{aligned}
>   $$
>   Il fattore $n - 1$ a denominatore rappresenta una convenzione fondamentale per garantire la correttezza della stima campionaria, rivelandosi essenziale nel passaggio alle distribuzioni continue.
> - **Deviazione standard campionaria ($S_n$)**:
>   $$
>   \begin{aligned}
>   S_n = \sqrt{S_n^2}
>   \end{aligned}
>   $$

### Disuguaglianza di Chebyshev

> [!theorem] Disuguaglianza di Chebyshev (Formulazione Campionaria)
> Per qualunque costante positiva $k > 0$, il numero di osservazioni campionarie che distano dalla media più di $k$ deviazioni standard è superiormente limitato:
> $$
> \begin{aligned}
> \forall k > 0, \quad \mathrm{card}\left(\{i \in \{1, \dots, n\} : |x_i - \overline{x}| > k S\}\right) \le \frac{n - 1}{k^2}
> \end{aligned}
> $$

> [!example] Applicazione con $k = 2$
> Ponendo $k = 2$, il numero di dati che distano dalla media per più del doppio della deviazione standard soddisfa:
> $$
> \begin{aligned}
> \mathrm{card}\left(\{i : |x_i - \overline{x}| > 2S\}\right) \le \frac{n - 1}{4} \le \frac{1}{4} n
> \end{aligned}
> $$
> Al massimo un quarto dei dati (il $25\%$) può cadere oltre due deviazioni standard dalla media.

> [!note] Riformulazione della Disuguaglianza con Tolleranza Fissata
> Posto $\varepsilon := k S$, da cui $k = \varepsilon / S$, la disuguaglianza assume la forma equivalente:
> $$
> \begin{aligned}
> \mathrm{card}\left(\{i \in \{1, \dots, n\} : |x_i - \overline{x}| > \varepsilon\}\right) \le \frac{(n - 1)S^2}{\varepsilon^2}
> \end{aligned}
> $$
> Di conseguenza, al decrescere della varianza $S^2$, il numero di elementi distanti più di $\varepsilon$ dalla media decresce quadraticamente.

### Formula di Calcolo Rapido della Varianza Campionaria

> [!proposition] Formula Alternativa per la Varianza Campionaria
> La varianza campionaria può essere calcolata mediante la formula computazionale:
> $$
> \begin{aligned}
> S^2 = \frac{1}{n - 1}\left(\sum_{i=1}^n x_i^2 - n \overline{x}^2\right)
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Sviluppando il quadrato del binomio all'interno della sommatoria:
> $$
> \begin{aligned}
> S^2 &:= \frac{1}{n - 1}\sum_{i=1}^n (x_i - \overline{x})^2 \\
> &= \frac{1}{n - 1}\sum_{i=1}^n \left(x_i^2 - 2 x_i \overline{x} + \overline{x}^2\right) \\
> &= \frac{1}{n - 1}\left[\sum_{i=1}^n x_i^2 - 2 \overline{x}\sum_{i=1}^n x_i + \overline{x}^2\sum_{i=1}^n 1\right]
> \end{aligned}
> $$
> Ricordando che $\sum_{i=1}^n x_i = n\overline{x}$ e che $\sum_{i=1}^n 1 = n$:
> $$
> \begin{aligned}
> S^2 &= \frac{1}{n - 1}\left[\sum_{i=1}^n x_i^2 - 2\overline{x}(n\overline{x}) + n\overline{x}^2\right] \\
> &= \frac{1}{n - 1}\left[\sum_{i=1}^n x_i^2 - 2n\overline{x}^2 + n\overline{x}^2\right] \\
> &= \frac{1}{n - 1}\left[\sum_{i=1}^n x_i^2 - n \overline{x}^2\right]
> \end{aligned}
> $$
> Il risultato è così dimostrato. $\blacksquare$

> [!note] Trasformazione Affine dei Dati e Varianza
> Sia data una trasformazione affine $L(x) = ax + b$ con parametri $a, b \in \mathbb{R}$. La varianza campionaria scala con il quadrato del coefficiente moltiplicativo, risultando invariante per traslazioni:
> $$
> \begin{aligned}
> S^2 \longmapsto a^2 S^2
> \end{aligned}
> $$
> La verifica analitica è immediata:
> $$
> \begin{aligned}
> \sum_{i=1}^n \frac{1}{n - 1}\left[(a x_i + b) - (a \overline{x} + b)\right]^2 &= \sum_{i=1}^n \frac{1}{n - 1}\left[a(x_i - \overline{x})\right]^2 \\
> &= a^2 \frac{1}{n - 1}\sum_{i=1}^n (x_i - \overline{x})^2 \\
> &= a^2 S^2
> \end{aligned}
> $$

### Quantili e Box Plot

> [!definition] Quantile di Ordine $\gamma$
> Sia $\gamma \in (0, 1)$. Si definisce **quantile di ordine $\gamma$** il valore $q_\gamma$ ricavato dai dati ordinati:
> $$
> \begin{aligned}
> q_\gamma := \begin{cases}
> x_{(\lfloor n\gamma \rfloor + 1)} & \text{se } n\gamma \notin \mathbb{N} \\
> \frac{x_{(n\gamma)} + x_{(n\gamma + 1)}}{2} & \text{se } n\gamma \in \mathbb{N}
> \end{cases}
> \end{aligned}
> $$
> Il quantile è una diretta generalizzazione della mediana, la quale coincide esattamente con il quantile di ordine $\gamma = \frac{1}{2}$.

> [!note] Costruzione del Diagramma a Scatola (Box Plot)
> Il Box Plot è una rappresentazione grafica sintetica basata sui quartili e sulla dispersione dei dati:
> 1. Si traccia l'asse delle ascisse coprendo l'intero range dei dati osservati.
> 2. Si identificano e si segnano il primo quartile $q_{\frac{1}{4}}$ e il terzo quartile $q_{\frac{3}{4}}$.
> 3. Si disegna una scatola rettangolare i cui estremi verticali coincidono con i quartili $q_{\frac{1}{4}}$ e $q_{\frac{3}{4}}$.
> 4. All'interno della scatola si segna la posizione della mediana $m = q_{\frac{1}{2}}$.
> 5. Si estendono lateralmente i cosiddetti "baffi" (whiskers), aventi estensione massima pari a:
>    $$
>    \begin{aligned}
>    \frac{3}{2}\left[q_{\frac{3}{4}} - q_{\frac{1}{4}}\right]
>    \end{aligned}
>    $$
>    Eventuali dati che cadono oltre tale limite vengono identificati come valori anomali (outlier).

