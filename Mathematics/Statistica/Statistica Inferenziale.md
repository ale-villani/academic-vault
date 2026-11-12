---
title: "Statistica Inferenziale: Stima, Test d'Ipotesi e Regressione"
domain: "math/statistics"
source_course: "Statistica (Cap. 4-6)"
tags:
  - math/statistics/inference
  - math/statistics/point-estimation
  - math/statistics/confidence-intervals
  - math/statistics/hypothesis-testing
  - math/statistics/linear-regression
---
# 4 - Statistica e Stimatori
## Statistiche e Stimatori Puntuali

### Campione Statistico e Definizione di Statistica

> [!definition] Statistica
> Siano $X_1, \dots, X_n$ un $n$-campione di variabili aleatorie estratte da una popolazione con densità $f(\cdot, \boldsymbol{\theta})$, dove $\boldsymbol{\theta} \subseteq \mathbb{R}^k$ rappresenta il vettore dei parametri incogniti del modello.
> Si definisce **statistica** una qualsiasi funzione a valori reali o vettoriali del campione aleatorio:
> $$
> \begin{aligned}
> T_n = t_n(X_1, \dots, X_n)
> \end{aligned}
> $$
> Tale funzione non dipende in modo esplicito da parametri incogniti.

> [!example] Statistiche Fondamentali
> 1. **Media campionaria**:
> $$
> \begin{aligned}
> \bar{X}_n = \frac{1}{n} \sum_{k=1}^n X_k
> \end{aligned}
> $$
> 2. **Varianza campionaria corretta**:
> $$
> \begin{aligned}
> S_n^2 = \frac{1}{n-1} \sum_{k=1}^n (X_k - \bar{X}_n)^2
> \end{aligned}
> $$

### Stimatori e Proprietà di Non Distorsione

> [!definition] Stimatore
> Una statistica $T_n = \hat{\Theta} = \hat{\theta}(X_1, \dots, X_n)$ impiegata per effettuare una congettura quantitativa o dedurre il valore di un parametro incognito $\theta$ prende il nome di **stimatore** del parametro $\theta$.
> Il valore scalare numerico ottenuto valutando lo stimatore sui dati osservati nel campione specifico $(x_1, \dots, x_n)$ è detto **stima**.

> [!example] Esempi di Stimatori
> - Sia $X_1, \dots, X_n$ un $n$-campione da densità bernoulliana $\mathcal{B}(1, \theta)$. Poiché $\mathbb{E}[X_1] = \theta$, la media campionaria $\bar{X}_n$ costituisce uno stimatore naturale per il parametro $\theta$.
> - Sia $X_1, \dots, X_n$ un $n$-campione da densità esponenziale $\mathcal{E}(\lambda)$. Poiché $\mathbb{E}[X_i] = \frac{1}{\lambda}$, la media campionaria $\bar{X}_n$ è uno stimatore del parametro $\frac{1}{\lambda}$.

Per discriminare quali stimatori presentino prestazioni ottimali, si introducono specifici indici e criteri di qualità.

> [!definition] Stimatore Non Distorto (o Corretto)
> Uno stimatore $\hat{\Theta} = \hat{\theta}(X_1, \dots, X_n)$ del parametro incognito $\theta$ si dice **non distorto** (o **corretto**) se il suo valore atteso coincide con il parametro target per ogni valore ammissibile di $\theta$:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{\Theta}] = \theta
> \end{aligned}
> $$

### Errore Quadratico Medio (MSE)

> [!definition] Errore Quadratico Medio (Mean Squared Error, MSE)
> Si definisce **errore quadratico medio** dello stimatore $\hat{\Theta}$ rispetto al parametro $\theta$ il valore atteso della discrepanza quadratica tra lo stimatore e il parametro:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) = \mathbb{E}\left[ (\hat{\Theta} - \theta)^2 \right]
> \end{aligned}
> $$

> [!note] MSE di uno Stimatore Non Distorto
> Se lo stimatore $\hat{\Theta}$ è non distorto ($\mathbb{E}[\hat{\Theta}] = \theta$), l'errore quadratico medio coincide identicamente con la varianza dello stimatore:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) = \mathbb{E}\left[ (\hat{\Theta} - \mathbb{E}[\hat{\Theta}])^2 \right] = \mathbb{V}[\hat{\Theta}]
> \end{aligned}
> $$

### Esempi di Stimatori e Calcolo dell'MSE

> [!example] Media Campionaria per Variabili Bernoulli
> Sia $X_1, \dots, X_n$ un $n$-campione indipendente estratto da una distribuzione bernoulliana $\mathcal{B}(1, \theta)$ con $0 < \theta < 1$.
> Consideriamo lo stimatore media campionaria $\bar{X}_n$:
> $$
> \begin{aligned}
> \mathbb{E}[X_i] = \theta \implies \mathbb{E}[\bar{X}_n] = \mathbb{E}\left[ \frac{1}{n} \sum_{i=1}^n X_i \right] = \frac{n \theta}{n} = \theta
> \end{aligned}
> $$
> Pertanto $\bar{X}_n$ è uno stimatore non distorto di $\theta$.
> 
> L'errore quadratico medio è pari alla varianza:
> $$
> \begin{aligned}
> \mathrm{MSE}(\bar{X}_n, \theta) = \mathbb{V}[\bar{X}_n] = \mathbb{V}\left[ \frac{1}{n}\sum_{k=1}^n X_k \right] = \frac{1}{n^2} \sum_{k=1}^n \mathbb{V}[X_k] = \frac{1}{n} \mathbb{V}[X_i] = \frac{\theta(1 - \theta)}{n}
> \end{aligned}
> $$

> [!example] Media Geometrica come Stimatore per Variabili Bernoulli
> Sia $X_1, \dots, X_n \sim \mathcal{B}(1, \theta)$. Si consideri lo stimatore definito mediante la media geometrica:
> $$
> \begin{aligned}
> \hat{\Theta}(X_1, \dots, X_n) = \sqrt[n]{X_1 \cdots X_n}
> \end{aligned}
> $$
> Poiché ciascuna variabile assume valori nell'insieme $\{0, 1\}$, il prodotto $X_1 \cdots X_n$ (e di conseguenza la radice $n$-esima) può assumere esclusivamente i valori $0$ oppure $1$:
> $$
> \begin{aligned}
> \hat{\Theta} = \begin{cases} 1 & \text{se } X_1 = 1, \dots, X_n = 1 \\ 0 & \text{altrimenti} \end{cases}
> \end{aligned}
> $$
> Di conseguenza, il valore atteso è dato dalla probabilità congiunta:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{\Theta}] = \mathbb{P}\{X_1 = 1, \dots, X_n = 1\} = \prod_{i=1}^n \mathbb{P}\{X_i = 1\} = \theta^n
> \end{aligned}
> $$
> Ne segue che:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{\Theta}] = \theta^n \neq \theta \quad \forall n > 1
> \end{aligned}
> $$
> Lo stimatore è distorto per qualsiasi dimensione campionaria $n \neq 1$.
> 
> Calcolo dell'MSE come stimatore di $\theta$:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) &= \mathbb{E}\left[ (\hat{\Theta} - \theta)^2 \right] \\
> &= (0 - \theta)^2 \mathbb{P}\{\hat{\Theta} = 0\} + (1 - \theta)^2 \mathbb{P}\{\hat{\Theta} = 1\} \\
> &= \theta^2 \mathbb{P}\left(\{X_1 = 1, \dots, X_n = 1\}^c\right) + (1 - \theta)^2 \mathbb{P}\{X_1 = 1, \dots, X_n = 1\} \\
> &= \theta^2 (1 - \theta^n) + (1 - \theta)^2 \theta^n
> \end{aligned}
> $$
> Tale errore quadratico medio è significativamente peggiore rispetto a quello della media campionaria $\bar{X}_n$.

> [!example] Stimatore con Eliminazione delle Osservazioni Estreme
> Sia $X_1, \dots, X_n$ un $n$-campione bernoulliano $\mathcal{B}(1, \theta)$. Si consideri lo stimatore che elimina la prima e l'ultima osservazione:
> $$
> \begin{aligned}
> \hat{\Theta}(X_1, \dots, X_n) = \frac{X_2 + \dots + X_{n-1}}{n-2}
> \end{aligned}
> $$
> Calcolando media e varianza:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{\Theta}] = \frac{(n-2)\theta}{n-2} = \theta \implies \text{stimatore non distorto}
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \mathbb{V}[\hat{\Theta}] = \frac{\theta(1 - \theta)}{n - 2}
> \end{aligned}
> $$
> Poiché $n - 2 < n$:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) = \mathbb{V}[\hat{\Theta}] = \frac{\theta(1 - \theta)}{n - 2} > \frac{\theta(1 - \theta)}{n} = \mathrm{MSE}(\bar{X}_n, \theta)
> \end{aligned}
> $$
> Lo stimatore è corretto, ma presenta un MSE strettamente maggiore rispetto alla media campionaria completa $\bar{X}_n$, confermando che l'eliminazione ingiustificata di dati informativi degrada l'efficienza della stima.

### Decomposizione Bias-Varianza dell'MSE

Nel caso generale in cui lo stimatore $\hat{\Theta}$ sia distorto, l'errore quadratico medio non si riduce alla sola varianza, ma include un contributo dovuto alla distorsione (bias).

> [!proposition] Decomposizione Bias-Varianza dell'Errore Quadratico Medio
> Sia $\hat{\Theta} = \hat{\theta}(X_1, \dots, X_n)$ uno stimatore del parametro $\theta$. Vale l'identità fondamentale:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) = \mathbb{V}[\hat{\Theta}] + \mathrm{Bias}(\hat{\Theta}, \theta)^2
> \end{aligned}
> $$
> dove la distorsione (bias) è definita da:
> $$
> \begin{aligned}
> \mathrm{Bias}(\hat{\Theta}, \theta) := \mathbb{E}[\hat{\Theta}] - \theta
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Si parte dalla definizione di MSE aggiungendo e sottraendo all'interno dell'argomento il valore atteso $\mathbb{E}[\hat{\Theta}]$:
> $$
> \begin{aligned}
> \mathrm{MSE}(\hat{\Theta}, \theta) &= \mathbb{E}\left[ (\hat{\Theta} - \theta)^2 \right] \\
> &= \mathbb{E}\left[ \Big( (\hat{\Theta} - \mathbb{E}[\hat{\Theta}]) + (\mathbb{E}[\hat{\Theta}] - \theta) \Big)^2 \right] \\
> &= \mathbb{E}\left[ \Big( (\hat{\Theta} - \mathbb{E}[\hat{\Theta}]) + \mathrm{Bias}(\hat{\Theta}, \theta) \Big)^2 \right]
> \end{aligned}
> $$
> Sviluppando il quadrato del binomio:
> $$
> \begin{aligned}
> &= \mathbb{E}\left[ (\hat{\Theta} - \mathbb{E}[\hat{\Theta}])^2 + \mathrm{Bias}(\hat{\Theta}, \theta)^2 + 2 \mathrm{Bias}(\hat{\Theta}, \theta) (\hat{\Theta} - \mathbb{E}[\hat{\Theta}]) \right]
> \end{aligned}
> $$
> Applicando la linearità del valore atteso, ricordando che $\mathrm{Bias}(\hat{\Theta}, \theta)$ è una costante deterministica:
> $$
> \begin{aligned}
> &= \mathbb{E}\left[ (\hat{\Theta} - \mathbb{E}[\hat{\Theta}])^2 \right] + \mathrm{Bias}(\hat{\Theta}, \theta)^2 + 2 \mathrm{Bias}(\hat{\Theta}, \theta) \, \mathbb{E}\left[ \hat{\Theta} - \mathbb{E}[\hat{\Theta}] \right] \\
> &= \mathbb{V}[\hat{\Theta}] + \mathrm{Bias}(\hat{\Theta}, \theta)^2 + 2 \mathrm{Bias}(\hat{\Theta}, \theta) \left( \mathbb{E}[\hat{\Theta}] - \mathbb{E}[\hat{\Theta}] \right) \\
> &= \mathbb{V}[\hat{\Theta}] + \mathrm{Bias}(\hat{\Theta}, \theta)^2 + 0 \\
> &= \mathbb{V}[\hat{\Theta}] + \mathrm{Bias}(\hat{\Theta}, \theta)^2
> \end{aligned}
> $$
> Il che dimostra l'enunciato. $\blacksquare$

### Consistenza degli Stimatori e Teoria della Misura

> [!definition] Consistenza in Media Quadratica e Quasi Certa
> Sia $\{\hat{\Theta}_n\}_{n \in \mathbb{N}}$ una successione di stimatori del parametro incognito $\theta$.
> 1. Si dice che lo stimatore è **consistente in media quadratica** se l'errore quadratico medio tende a zero per $n \to +\infty$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathrm{MSE}[\hat{\Theta}_n, \theta] = 0
> \end{aligned}
> $$
> 2. Si dice che lo stimatore è **consistente quasi certamente** (o **fortemente consistente**) se converge al vero valore del parametro quasi certamente:
> $$
> \begin{aligned}
> \hat{\Theta}_n \xrightarrow{n \to +\infty} \theta \quad \text{q.c.} \iff \mathbb{P}\left\{ \lim_{n \to +\infty} \hat{\Theta}_n = \theta \right\} = 1
> \end{aligned}
> $$

> [!note] Collegamento con gli Spazi $L_2$ e la Teoria della Misura
> All'interno della formalizzazione rigorosa della teoria della misura su $(\Omega, \mathcal{F}, \mathbb{P})$, lo spazio delle variabili aleatorie con momento secondo finito coincide con lo spazio di Hilbert $L_2(\Omega, \mathcal{F}, \mathbb{P})$, dotato del prodotto scalare $\langle X, Y \rangle = \mathbb{E}[XY]$ e della corrispondente norma:
> $$
> \begin{aligned}
> \|X\|_2 = \sqrt{\mathbb{E}[X^2]}
> \end{aligned}
> $$
> Di conseguenza, la convergenza in media quadratica di uno stimatore al valore deterministico $\theta$ (trattato come variabile aleatoria degenere concentrata su $\theta$) equivale esattamente alla convergenza nella topologia indotta dalla norma $\|\cdot\|_2$:
> $$
> \begin{aligned}
> \|\hat{\Theta}_n - \theta\|_2 = \sqrt{\mathbb{E}[(\hat{\Theta}_n - \theta)^2]} = \sqrt{\mathrm{MSE}[\hat{\Theta}_n, \theta]} \xrightarrow{n \to +\infty} 0
> \end{aligned}
> $$

## Proprietà Asintotiche e Varianza Campionaria

### Convergenza in Media Quadratica e Tipologie di Convergenza

Il criterio di consistenza in media quadratica (MSE) per una successione di stimatori $\hat{\Theta}_n$ del parametro incognito $\theta$ è espresso dalla condizione al limite:
$$
\begin{aligned}
\lim_{n \to +\infty} \mathrm{MSE}[\hat{\Theta}_n, \theta] = 0 \iff \lim_{n \to +\infty} \int_{\mathbb{R}} (x - \theta)^2 f_{\hat{\Theta}_n}(x) \, dx = 0
\end{aligned}
$$
dove $x$ rappresenta i valori scalari che possono essere assunti dalla variabile aleatoria stimatore $\hat{\Theta}_n$.

Nel contesto della teoria asintotica sono state introdotte quattro principali modalità di convergenza per successioni di variabili aleatorie $\{X_n\}_{n \in \mathbb{N}}$:
1. Convergenza in probabilità:
$$
\begin{aligned}
X_n \xrightarrow[n \to +\infty]{\mathbb{P}} X
\end{aligned}
$$
2. Convergenza quasi certa:
$$
\begin{aligned}
X_n \xrightarrow[n \to +\infty]{\text{q.c.}} X
\end{aligned}
$$
3. Convergenza in distribuzione (o in legge):
$$
\begin{aligned}
X_n \xrightarrow[n \to +\infty]{\mathcal{D}} X
\end{aligned}
$$
4. Convergenza in media quadratica:
$$
\begin{aligned}
X_n \xrightarrow[n \to +\infty]{L^2} X
\end{aligned}
$$

Il legame fondamentale di implicazione tra le convergenze appena definite è dato da:
$$
\begin{aligned}
X_n \xrightarrow[n \to +\infty]{\text{q.c.}} X \implies X_n \xrightarrow[n \to +\infty]{\mathbb{P}} X
\end{aligned}
$$

### Formula Alternativa della Varianza Campionaria

> [!proposition] Formula Alternativa della Varianza Campionaria
> Sia dato un campione aleatorio di ampiezza $n$. La varianza campionaria corretta $S_n^2$ ammette la seguente formulazione computazionale alternativa:
> $$
> \begin{aligned}
> S_n^2 &= \frac{1}{n-1} \left( \sum_{k=1}^n X_k^2 - n \overline{X}_n^2 \right) \\
> &= \frac{1}{n-1} \sum_{k=1}^n (X_k^2 - \overline{X}_n^2)
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Partendo dalla definizione standard della varianza campionaria e sviluppando il quadrato del binomio:
> $$
> \begin{aligned}
> S_n^2 &= \frac{1}{n-1} \sum_{k=1}^n (X_k - \overline{X}_n)^2 \\
> &= \frac{1}{n-1} \sum_{k=1}^n \left( X_k^2 - 2 \overline{X}_n X_k + \overline{X}_n^2 \right) \\
> &= \frac{1}{n-1} \left( \sum_{k=1}^n X_k^2 - 2 \overline{X}_n \sum_{k=1}^n X_k + n \overline{X}_n^2 \right)
> \end{aligned}
> $$
> Ricordando che dalla definizione di media campionaria si ha $\sum_{k=1}^n X_k = n \overline{X}_n$:
> $$
> \begin{aligned}
> S_n^2 &= \frac{1}{n-1} \left( \sum_{k=1}^n X_k^2 - 2 n \overline{X}_n^2 + n \overline{X}_n^2 \right) \\
> &= \frac{1}{n-1} \left( \sum_{k=1}^n X_k^2 - n \overline{X}_n^2 \right)
> \end{aligned}
> $$
> La proposizione risulta pertanto dimostrata. $\blacksquare$

### Proprietà Statistiche della Varianza Campionaria

> [!theorem] Proprietà della Varianza Campionaria
> Sia $\{X_n\}_{n \in \mathbb{N}}$ un campione aleatorio con media e varianza finite:
> $$
> \begin{aligned}
> \mathbb{E}[X_n] = \mu, \quad \mathbb{V}[X_n] = \sigma^2 < +\infty
> \end{aligned}
> $$
> Considerato lo stimatore della varianza campionaria:
> $$
> \begin{aligned}
> S_n^2 = \frac{1}{n-1} \left( \sum_{k=1}^n X_k^2 - n \overline{X}_n^2 \right)
> \end{aligned}
> $$
> sussistono le seguenti proprietà:
> 1. $S_n^2$ è uno stimatore non distorto per $\sigma^2$: $\mathbb{E}[S_n^2] = \sigma^2$.
> 2. $S_n^2$ è consistente quasi certamente per $\sigma^2$: $S_n^2 \xrightarrow[n \to +\infty]{\text{q.c.}} \sigma^2$.
> 3. $S_n^2$ è consistente in media quadratica per $\sigma^2$: $\lim_{n \to +\infty} \mathrm{MSE}[S_n^2, \sigma^2] = 0$.

> [!quote]- Dimostrazione (Proprietà 1: Non Distorsione)
> Calcolando il valore atteso della varianza campionaria:
> $$
> \begin{aligned}
> \mathbb{E}[S_n^2] = \frac{1}{n-1} \left( \mathbb{E}\left[ \sum_{k=1}^n X_k^2 \right] - n \mathbb{E}\left[\overline{X}_n^2\right] \right)
> \end{aligned}
> $$
> Valutiamo separatamente il primo valore atteso sfruttando la relazione fondamentale tra varianza e momenti:
> $$
> \begin{aligned}
> \mathbb{E}\left[ \sum_{k=1}^n X_k^2 \right] &= \sum_{k=1}^n \mathbb{E}\left[X_k^2\right] \\
> &= \sum_{k=1}^n \left( \mathbb{V}[X_k] + (\mathbb{E}[X_k])^2 \right) \\
> &= \sum_{k=1}^n (\sigma^2 + \mu^2) \\
> &= n (\sigma^2 + \mu^2)
> \end{aligned}
> $$
> Per il secondo termine, calcoliamo il momento secondo della media campionaria $\overline{X}_n$, sapendo che $\mathbb{E}[\overline{X}_n] = \mu$ e $\mathbb{V}[\overline{X}_n] = \frac{\sigma^2}{n}$:
> $$
> \begin{aligned}
> \mathbb{E}\left[\overline{X}_n^2\right] &= \mathbb{V}[\overline{X}_n] + (\mathbb{E}[\overline{X}_n])^2 \\
> &= \frac{\sigma^2}{n} + \mu^2
> \end{aligned}
> $$
> Sostituendo le due quantità nell'espressione iniziale:
> $$
> \begin{aligned}
> \mathbb{E}[S_n^2] &= \frac{1}{n-1} \left( n(\sigma^2 + \mu^2) - n \left( \frac{\sigma^2}{n} + \mu^2 \right) \right) \\
> &= \frac{1}{n-1} \left( n \sigma^2 + n \mu^2 - \sigma^2 - n \mu^2 \right) \\
> &= \frac{1}{n-1} (n - 1) \sigma^2 \\
> &= \sigma^2
> \end{aligned}
> $$
> Lo stimatore $S_n^2$ risulta pertanto rigorosamente non distorto. $\blacksquare$

> [!quote]- Dimostrazione (Proprietà 2: Consistenza Quasi Certa)
> Esprimiamo $S_n^2$ centrando le osservazioni e la media campionaria rispetto al valore atteso $\mu$:
> $$
> \begin{aligned}
> S_n^2 &= \frac{1}{n-1} \left[ \sum_{i=1}^n X_i^2 - n \overline{X}_n^2 \right] \\
> &= \frac{1}{n-1} \left[ \sum_{i=1}^n (X_i - \mu)^2 - n(\overline{X}_n - \mu)^2 \right]
> \end{aligned}
> $$
> L'uguaglianza è verificata in quanto il doppio prodotto algebrico si semplifica:
> $$
> \begin{aligned}
> \sum_{i=1}^n 2\mu X_i = 2\mu \sum_{i=1}^n X_i = 2 n \mu \overline{X}_n
> \end{aligned}
> $$
> Definiamo ora la successione di variabili aleatorie indipendenti e identicamente distribuite:
> $$
> \begin{aligned}
> Y_i = (X_i - \mu)^2 \quad \forall i \le n
> \end{aligned}
> $$
> La successione $\{Y_n\}_{n \in \mathbb{N}}$ costituisce un $n$-campione aleatorio con valore atteso finito:
> $$
> \begin{aligned}
> \mathbb{E}[Y_i] = \mathbb{E}[(X_i - \mu)^2] = \mathbb{V}[X_i] = \sigma^2 < +\infty
> \end{aligned}
> $$
> In virtù della Legge Forte dei Grandi Numeri (SLLN), la media campionaria delle $Y_i$ converge quasi certamente al valore atteso teorico:
> $$
> \begin{aligned}
> \frac{1}{n} \sum_{i=1}^n Y_i \xrightarrow[n \to +\infty]{\text{q.c.}} \sigma^2 \implies \frac{1}{n} \sum_{i=1}^n (X_i - \mu)^2 \xrightarrow[n \to +\infty]{\text{q.c.}} \sigma^2
> \end{aligned}
> $$
> Analogamente, per la media campionaria $\overline{X}_n$ vale la convergenza quasi certa:
> $$
> \begin{aligned}
> \overline{X}_n \xrightarrow[n \to +\infty]{\text{q.c.}} \mu \implies (\overline{X}_n - \mu) \xrightarrow[n \to +\infty]{\text{q.c.}} 0 \implies (\overline{X}_n - \mu)^2 \xrightarrow[n \to +\infty]{\text{q.c.}} 0
> \end{aligned}
> $$
> Raccogliendo il fattore $\frac{n}{n-1}$ nell'espressione di $S_n^2$:
> $$
> \begin{aligned}
> S_n^2 &= \frac{n}{n-1} \left[ \frac{1}{n} \sum_{i=1}^n (X_i - \mu)^2 - (\overline{X}_n - \mu)^2 \right] \\
> &\xrightarrow[n \to +\infty]{\text{q.c.}} 1 \cdot [\sigma^2 - 0] = \sigma^2 \quad \text{q.c.}
> \end{aligned}
> $$
> Il che conclude la dimostrazione della consistenza quasi certa. $\blacksquare$

> [!quote]- Dimostrazione (Proprietà 3: Consistenza in Media Quadratica)
> Omettendo i passaggi combinatori estesi sul calcolo del momento quarto, si applica la formula per l'errore quadratico medio di $S_n^2$:
> $$
> \begin{aligned}
> \mathrm{MSE}[S_n^2] = \frac{1}{n} \mathbb{E}\left[(X_i - \mu)^4\right] - \frac{\sigma^4 (n-3)}{n(n-1)}
> \end{aligned}
> $$
> Mandando $n \to +\infty$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathrm{MSE}[S_n^2] = 0 - 0 = 0
> \end{aligned}
> $$
> Lo stimatore $S_n^2$ è dunque consistente in media quadratica. $\blacksquare$

## Intervalli di Confidenza

### Definizione Generale

In alternativa alla stima puntuale del parametro incognito $\theta$, si ricorre alla stima intervallare, volta a determinare un intervallo numerico aleatorio che contenga il vero valore del parametro con una probabilità fissata.

> [!definition] Intervallo di Confidenza Bilatero
> Siano $X_1, \dots, X_n$ un $n$-campione estratto da una popolazione con densità $f(x, \theta)$, dove $\theta$ è un parametro scalare incognito.
> Siano $A(X_1, \dots, X_n)$ e $B(X_1, \dots, X_n)$ due statistiche campionarie tali che:
> $$
> \begin{aligned}
> A(X_1, \dots, X_n) < B(X_1, \dots, X_n)
> \end{aligned}
> $$
> L'intervallo aleatorio:
> $$
> \begin{aligned}
> I_{1-\alpha} = [A(\mathbf{X}), B(\mathbf{X})]
> \end{aligned}
> $$
> si definisce **intervallo di confidenza bilatero per $\theta$ al livello di confidenza $1-\alpha$** (notazione: $\mathrm{IC}_\theta(1-\alpha)$) se soddisfa la condizione:
> $$
> \begin{aligned}
> \mathbb{P}\{\theta \in I_{1-\alpha}\} = 1 - \alpha
> \end{aligned}
> $$
> La quantità $\alpha \in (0, 1)$ prende il nome di livello di significatività.

> [!note] Indipendenza dal Parametro
> Le funzioni $A(\mathbf{X})$ e $B(\mathbf{X})$ devono dipendere unicamente dai dati campionari e non possono contenere il parametro incognito $\theta$.

### Intervallo di Confidenza per la Media con Varianza Nota

Si consideri un $n$-campione $\mathbf{X}$ estratto da una distribuzione normale $N(\mu, \sigma^2)$ con parametro $\mu$ incognito.

Una scelta naturale per la costruzione dell'intervallo consiste nell'individuare un intorno simmetrico attorno alla media campionaria $\overline{X}_n$:
$$
\begin{aligned}
A(\mathbf{X}) &= \overline{X}_n - \delta \\
B(\mathbf{X}) &= \overline{X}_n + \delta, \quad \delta > 0
\end{aligned}
$$

Supponiamo di conoscere il valore della varianza della popolazione $\sigma^2 = \sigma_0^2$. Si definiscono le statistiche estremo:
$$
\begin{aligned}
A(X_1, \dots, X_n) &= \overline{X}_n - \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} \\
B(X_1, \dots, X_n) &= \overline{X}_n + \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}}
\end{aligned}
$$
dove $z_{1-\frac{\alpha}{2}} := \Phi^{-1}\left(1-\frac{\alpha}{2}\right)$ indica il quantile di ordine $1-\frac{\alpha}{2}$ della distribuzione normale standard $N(0,1)$, con $\Phi$ funzione di ripartizione di $N(0,1)$.

> [!proposition] Copertura Probabilistica per la Media (Varianza Nota)
> L'intervallo così costruito soddisfa l'esatto livello di confidenza $1-\alpha$:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \overline{X}_n - \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} < \mu < \overline{X}_n + \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} \right\} = 1 - \alpha
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Esplicitando la condizione di appartenenza del parametro $\mu$ all'intervallo:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \mu \in \left[ \overline{X}_n - \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}}, \, \overline{X}_n + \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} \right] \right\} &= \mathbb{P}\left\{ - \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} < \overline{X}_n - \mu < \frac{z_{1-\frac{\alpha}{2}}\sigma_0}{\sqrt{n}} \right\} \\
> &= \mathbb{P}\left\{ - z_{1-\frac{\alpha}{2}} < \frac{\overline{X}_n - \mu}{\frac{\sigma_0}{\sqrt{n}}} < z_{1-\frac{\alpha}{2}} \right\}
> \end{aligned}
> $$
> Poiché $\overline{X}_n \sim N\left(\mu, \frac{\sigma_0^2}{n}\right)$, la variabile standardizzata $Z = \frac{\overline{X}_n - \mu}{\frac{\sigma_0}{\sqrt{n}}}$ si distribuisce come una $N(0,1)$. Pertanto:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ - z_{1-\frac{\alpha}{2}} < Z < z_{1-\frac{\alpha}{2}} \right\} &= \Phi\left(z_{1-\frac{\alpha}{2}}\right) - \Phi\left(-z_{1-\frac{\alpha}{2}}\right) \\
> &= \Phi\left(z_{1-\frac{\alpha}{2}}\right) - \left( 1 - \Phi\left(z_{1-\frac{\alpha}{2}}\right) \right) \\
> &= 2\Phi\left(z_{1-\frac{\alpha}{2}}\right) - 1 \\
> &= 2\left( 1 - \frac{\alpha}{2} \right) - 1 \\
> &= 2 - \alpha - 1 \\
> &= 1 - \alpha
> \end{aligned}
> $$
> L'intervallo possiede quindi esattamente probabilità di copertura pari a $1-\alpha$. $\blacksquare$

### Intervallo di Confidenza per la Media con Varianza Incognita (Student)

Nel caso in cui la varianza $\sigma_0^2$ non sia nota, si sostituisce $\sigma_0$ con la sua stima campionaria non distorta $S_n$.

Tuttavia, la variabile aleatoria risultante non segue più una legge normale standard:
$$
\begin{aligned}
\frac{\overline{X}_n - \mu}{\frac{S_n}{\sqrt{n}}} \quad \text{non ha densità normale standard}
\end{aligned}
$$
Si dimostra che il rapporto standardizzato con varianza campionaria segue una distribuzione $t$ di Student a $n-1$ gradi di libertà:
$$
\begin{aligned}
T_{n-1} = \frac{\overline{X}_n - \mu}{\frac{S_n}{\sqrt{n}}} \sim t(n-1)
\end{aligned}
$$
La distribuzione $t$ è simmetrica e a campana, ma presenta code più pesanti rispetto alla normale standard. La sua densità di probabilità con parametro di scala/gradi di libertà $n$ è proporzionale a:
$$
\begin{aligned}
f_{n, X}(x) = \frac{c_n}{\left( 1 + \frac{x^2}{n} \right)^{\frac{n+1}{2}}}
\end{aligned}
$$
dove $c_n$ è una costante di normalizzazione. Per $n-1$ gradi di libertà si ha:
$$
\begin{aligned}
f_{n-1, X}(x) = \frac{c_{n-1}}{\left( 1 + \frac{x^2}{n-1} \right)^{\frac{n}{2}}}
\end{aligned}
$$

All'aumentare della numerosità campionaria $n$, la densità converge a quella della gaussiana:
$$
\begin{aligned}
\lim_{n \to +\infty} \left( 1 + \frac{x^2}{n} \right)^{\frac{n+1}{2}} &= \lim_{n \to +\infty} \left( 1 + \frac{x^2}{n} \right)^{\frac{1}{2}} \cdot \lim_{n \to +\infty} \left( 1 + \frac{x^2}{n} \right)^{\frac{n}{2}} \\
&= 1 \cdot e^{\frac{x^2}{2}} \\
&= e^{\frac{x^2}{2}}
\end{aligned}
$$
Ne segue che:
$$
\begin{aligned}
\lim_{n \to +\infty} f_{n, X}(x) = c_\infty e^{-\frac{x^2}{2}}
\end{aligned}
$$
che, ponendo la costante $c_\infty = \frac{1}{\sqrt{2\pi}}$, coincide esattamente con la densità della normale standard.

Per ampie numerosità campionarie ($n > 50$):
$$
\begin{aligned}
\frac{\overline{X}_n - \mu}{\frac{S_n}{\sqrt{n}}} \stackrel{\text{approx}}{\sim} N(0,1)
\end{aligned}
$$
Per piccoli campioni ($n \le 50$) è necessario fare ricorso ai quantili della $t$ di Student:
$$
\begin{aligned}
I_{1-\alpha} = \left[ \overline{X}_n - \frac{S_n t_{1-\frac{\alpha}{2}, n-1}}{\sqrt{n}}, \, \overline{X}_n + \frac{S_n t_{1-\frac{\alpha}{2}, n-1}}{\sqrt{n}} \right]
\end{aligned}
$$
dove $t_{1-\frac{\alpha}{2}, n-1}$ rappresenta il quantile di ordine $1-\frac{\alpha}{2}$ della variabile $T_{n-1} \sim t(n-1)$:
$$
\begin{aligned}
\mathbb{P}\left\{ T_{n-1} < t_{1-\frac{\alpha}{2}, n-1} \right\} = 1 - \frac{\alpha}{2}
\end{aligned}
$$

### Esempio Numerico di Calcolo

> [!example] Calcolo di Intervalli di Confidenza al 95%
> Si consideri il seguente campione osservato di ampiezza $n = 8$:
> $$
> \begin{aligned}
> x_1 = 17.3, \quad x_2 = 16.5, \quad x_3 = 18.4, \quad x_4 = 17.7, \\
> x_5 = 18.2, \quad x_6 = 18.7, \quad x_7 = 16.8, \quad x_8 = 18.2
> \end{aligned}
> $$
> con $X_i \sim N(\mu, \sigma^2)$. Si richiede di calcolare l'intervallo di confidenza al livello $1-\alpha = 0.95$ ($\alpha = 0.05 \implies 1-\frac{\alpha}{2} = 0.975$) nei due casi:
> 1. Varianza nota: $\sigma_0 = 0.7$.
> 2. Varianza incognita.
> 
> La media campionaria è pari a:
> $$
> \begin{aligned}
> \overline{x}_8 = \frac{1}{8} \sum_{k=1}^8 x_k = \frac{141.8}{8} = 17.725
> \end{aligned}
> $$
> 
> **Caso 1: $\sigma_0 = 0.7$ noto**
> Il quantile della normale standard è $z_{0.975} = 1.96$. L'intervallo risulta:
> $$
> \begin{aligned}
> I_{0.95} &= \left[ \overline{x}_8 - \frac{\sigma_0 z_{0.975}}{\sqrt{8}}, \, \overline{x}_8 + \frac{\sigma_0 z_{0.975}}{\sqrt{8}} \right] \\
> &= \left[ 17.725 - \frac{0.7 \cdot 1.96}{\sqrt{8}}, \, 17.725 + \frac{0.7 \cdot 1.96}{\sqrt{8}} \right] \\
> &= \left[ 17.725 - 0.485, \, 17.725 + 0.485 \right] \\
> &= [17.24, \, 18.21]
> \end{aligned}
> $$
> 
> **Caso 2: $\sigma$ non noto**
> Si calcola la deviazione standard campionaria corretta con $n-1 = 7$ gradi di libertà:
> $$
> \begin{aligned}
> S_8 = \sqrt{\frac{1}{7} \sum_{k=1}^8 (x_k - \overline{x}_8)^2} \approx 0.79
> \end{aligned}
> $$
> Il quantile della distribuzione $t$ di Student con 7 gradi di libertà è dato da $t_{0.975, 7} = 2.365$. L'intervallo di confidenza diventa:
> $$
> \begin{aligned}
> I_{0.95} &= \left[ \overline{x}_8 - \frac{S_8 t_{0.975, 7}}{\sqrt{8}}, \, \overline{x}_8 + \frac{S_8 t_{0.975, 7}}{\sqrt{8}} \right] \\
> &= \left[ 17.725 - \frac{0.79 \cdot 2.365}{\sqrt{8}}, \, 17.725 + \frac{0.79 \cdot 2.365}{\sqrt{8}} \right] \\
> &= \left[ 17.725 - 0.661, \, 17.725 + 0.661 \right] \\
> &= [17.06, \, 18.39]
> \end{aligned}
> $$

### Intervalli di Confidenza Unilateri per la Media

> [!note] Struttura degli Intervalli Unilateri
> Per distribuzioni normali $X \sim N(\mu, \sigma^2)$ è possibile definire intervalli di confidenza semiretti (unilateri) al livello $1-\alpha$:
> 
> | Ipotesi di Varianza | Intervallo Sinistro (limite inferiore per $\mu$) | Intervallo Destro (limite superiore per $\mu$) |
> | :--- | :--- | :--- |
> | **$\sigma_0^2$ noto** | $\left( \overline{X}_n - \frac{\sigma_0 z_{1-\alpha}}{\sqrt{n}}, \, +\infty \right)$ | $\left( -\infty, \, \overline{X}_n + \frac{\sigma_0 z_{1-\alpha}}{\sqrt{n}} \right)$ |
> | **$\sigma^2$ non noto** | $\left( \overline{X}_n - \frac{S_n t_{1-\alpha, n-1}}{\sqrt{n}}, \, +\infty \right)$ | $\left( -\infty, \, \overline{X}_n + \frac{S_n t_{1-\alpha, n-1}}{\sqrt{n}} \right)$ |

> [!quote]- Dimostrazione (Caso Destro con Varianza Incognita)
> La probabilità che $\mu$ sia limitata superiormente dalla statistica estrema si sviluppa come:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \mu < \overline{X}_n + \frac{S_n t_{1-\alpha, n-1}}{\sqrt{n}} \right\} &= \mathbb{P}\left\{ \overline{X}_n - \mu > - \frac{S_n t_{1-\alpha, n-1}}{\sqrt{n}} \right\} \\
> &= \mathbb{P}\left\{ \frac{\overline{X}_n - \mu}{\frac{S_n}{\sqrt{n}}} > - t_{1-\alpha, n-1} \right\}
> \end{aligned}
> $$
> Sfruttando la simmetria della densità della $t$ di Student attorno all'origine:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ T_{n-1} > - t_{1-\alpha, n-1} \right\} &= \mathbb{P}\left\{ T_{n-1} < t_{1-\alpha, n-1} \right\} \\
> &= 1 - \alpha
> \end{aligned}
> $$
> Il che certifica il livello di copertura nominale $1-\alpha$. $\blacksquare$

### Intervallo di Confidenza per la Proporzione (Bernoulli)

> [!example] Intervallo di Confidenza per Parametro di Bernoulli $X \sim B(1, p)$
> Sia $X \sim B(1, p)$ con parametro di successo incognito $p \in (0, 1)$ e consideriamo un campione di grande ampiezza ($n > 30$).
> 
> La media campionaria coincide con la frequenza relativa dei successi:
> $$
> \begin{aligned}
> \overline{X}_n = \frac{1}{n} \sum_{i=1}^n X_i
> \end{aligned}
> $$
> Il valore atteso e la varianza di $\overline{X}_n$ valgono:
> $$
> \begin{aligned}
> \mathbb{E}[\overline{X}_n] = p, \quad \mathbb{V}[\overline{X}_n] = \frac{p(1-p)}{n}
> \end{aligned}
> $$
> Per il Teorema del Limite Centrale (CLT), la media campionaria è asintoticamente normale:
> $$
> \begin{aligned}
> \overline{X}_n \stackrel{\mathcal{D}}{\approx} N\left(p, \frac{p(1-p)}{n}\right)
> \end{aligned}
> $$
> Standardizzando la variabile:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ -z_{1-\frac{\alpha}{2}} < \frac{\overline{X}_n - p}{\sqrt{\frac{p(1-p)}{n}}} < z_{1-\frac{\alpha}{2}} \right\} \approx 1 - \alpha
> \end{aligned}
> $$
> Isolando algebricamente $p$:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \overline{X}_n - z_{1-\frac{\alpha}{2}} \sqrt{\frac{p(1-p)}{n}} < p < \overline{X}_n + z_{1-\frac{\alpha}{2}} \sqrt{\frac{p(1-p)}{n}} \right\} \approx 1 - \alpha
> \end{aligned}
> $$
> Poiché il parametro $p$ nella varianza è ignoto, si adotta la stima plug-in mediante lo stimatore non distorto $\overline{X}_n$. L'intervallo di confidenza bilatero asintotico di livello $1-\alpha$ risulta:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left[ \overline{X}_n - z_{1-\frac{\alpha}{2}} \sqrt{\frac{\overline{X}_n(1-\overline{X}_n)}{n}}, \, \overline{X}_n + z_{1-\frac{\alpha}{2}} \sqrt{\frac{\overline{X}_n(1-\overline{X}_n)}{n}} \right]
> \end{aligned}
> $$
> 
> Essendo $X(\Omega) = \{0, 1\}$, si ha $0 \le \overline{X}_n \le 1$. Tenendo conto che $\mathbb{P}\{p \in (0, 1)\} = 1$, gli intervalli di confidenza unilateri assumono la forma:
> $$
> \begin{aligned}
> I_{1-\alpha}^{\text{sinistro}} &= \left( \overline{X}_n - z_{1-\alpha} \sqrt{\frac{\overline{X}_n(1-\overline{X}_n)}{n}}, \, 1 \right) \\
> I_{1-\alpha}^{\text{destro}} &= \left( 0, \, \overline{X}_n + z_{1-\alpha} \sqrt{\frac{\overline{X}_n(1-\overline{X}_n)}{n}} \right)
> \end{aligned}
> $$

## Intervallo di Confidenza per la Varianza e Distribuzione Chi-Quadro

### Distribuzione Chi-Quadro e Statistica Pivotale

Si consideri un $n$-campione gaussiano $X \sim N(\mu, \sigma^2)$ di cui si voglia stimare la varianza $\sigma^2$.

A tale scopo si introduce la distribuzione $\chi^2(n)$ (Chi-quadrato con $n$ gradi di libertà), la cui densità è data da:
$$
\begin{aligned}
f_{\chi^2(n)}(x) = \begin{cases} c_n x^{\frac{n}{2}-1} e^{-\frac{x}{2}} & x \ge 0 \\ 0 & x < 0 \end{cases}
\end{aligned}
$$
dove $c_n$ è la costante di normalizzazione legata alla funzione Gamma di Eulero:
$$
\begin{aligned}
c_n = \frac{1}{2^{\frac{n}{2}} \Gamma\left(\frac{n}{2}\right)}
\end{aligned}
$$

La quantità pivotale fondamentale che lega la varianza campionaria corretta $S_n^2$ al parametro $\sigma^2$ è data da:
$$
\begin{aligned}
\frac{(n-1)S_n^2}{\sigma^2} \sim \chi^2(n-1)
\end{aligned}
$$

Si sottolinea che la densità $\chi^2(n-1)$ **non è simmetrica** rispetto alla media:
- Per $n=1$ è strettamente decrescente con asintoto verticale nell'origine.
- Per $n > 2$ ammette moda positiva ed è asimmetrica a destra.
- Al crescere di $n$ la densità assume una forma sempre più simile a una curva a campana.

Di conseguenza, per i quantili non vale alcuna relazione di opposizione diretta:
$$
\begin{aligned}
\chi^2_{\alpha, n-1} \neq \chi^2_{1-\alpha, n-1}
\end{aligned}
$$
Per grandi campioni ($n \to +\infty$), per effetto del Teorema del Limite Centrale, la distribuzione Chi-quadrato converge alla distribuzione normale:
$$
\begin{aligned}
\chi^2(n-1) \sim N(n-1, 2(n-1))
\end{aligned}
$$

### Intervallo di Confidenza per la Varianza

La relazione di copertura al livello $1-\alpha$ per la statistica pivotale si imposta suddividendo equamente la probabilità di coda $\alpha$ sui due estremi:
$$
\begin{aligned}
\mathbb{P}\left\{ \chi^2_{\frac{\alpha}{2}, n-1} < \frac{(n-1)S_n^2}{\sigma^2} < \chi^2_{1-\frac{\alpha}{2}, n-1} \right\} = 1 - \alpha
\end{aligned}
$$
Prendendo il reciproco di ciascun termine (tutti strettamente positivi):
$$
\begin{aligned}
\frac{1}{\chi^2_{1-\frac{\alpha}{2}, n-1}} < \frac{\sigma^2}{(n-1)S_n^2} < \frac{1}{\chi^2_{\frac{\alpha}{2}, n-1}}
\end{aligned}
$$
Moltiplicando per $(n-1)S_n^2$, si perviene all'intervallo di confidenza bilatero per $\sigma^2$:
$$
\begin{aligned}
I_{1-\alpha} = \left[ \frac{(n-1)S_n^2}{\chi^2_{1-\frac{\alpha}{2}, n-1}}, \, \frac{(n-1)S_n^2}{\chi^2_{\frac{\alpha}{2}, n-1}} \right]
\end{aligned}
$$

Considerando che per la varianza vale il vincolo fisico $\sigma^2 \in [0, +\infty)$, gli intervalli di confidenza unilateri risultano:
$$
\begin{aligned}
\left( 0, \, \frac{(n-1)S_n^2}{\chi^2_{\alpha, n-1}} \right) \quad \text{e} \quad \left( \frac{(n-1)S_n^2}{\chi^2_{1-\alpha, n-1}}, \, +\infty \right)
\end{aligned}
$$

### Connessione con la Distribuzione di Maxwell-Boltzmann

> [!note] Distribuzione Chi e Modello di Maxwell-Boltzmann per le Velocità
> La distribuzione $\chi(3)$, definita come la radice quadrata di una variabile aleatoria $\chi^2(3)$:
> $$
> \begin{aligned}
> \sqrt{\chi^2(3)} =: \chi(3)
> \end{aligned}
> $$
> coincide con la celebre distribuzione di Maxwell-Boltzmann utilizzata in fisica statistica per descrivere la distribuzione dei moduli delle velocità molecolari in un gas perfetto all'equilibrio termodinamico.
> 
> Infatti, ipotizzando che le tre componenti cartesiane della velocità particellare siano indipendenti e distribuite secondo una normale standard $X_1, X_2, X_3 \sim N(0, 1)$:
> $$
> \begin{aligned}
> X_1^2 + X_2^2 + X_3^2 &\sim \chi^2(3) \\
> \sqrt{X_1^2 + X_2^2 + X_3^2} &\sim \chi(3)
> \end{aligned}
> $$
> La densità di probabilità del modulo della velocità $x \ge 0$ assume l'espressione:
> $$
> \begin{aligned}
> f_{3, X}(x) = \begin{cases} \sqrt{c_3} \, x^2 e^{-\frac{x^2}{2}} & x \ge 0 \\ 0 & x < 0 \end{cases}
> \end{aligned}
> $$

# 5. Test d'Ipotesi Statistici

## Fondamenti dei Test Statistici

### Definizione di Ipotesi Statistica

I test d'ipotesi costituiscono una procedura inferenziale sistematica volta a stabilire se una determinata congettura o affermazione riguardante i parametri di una distribuzione di probabilità sia compatibile con i dati empirici osservati nel campione.

> [!definition] Ipotesi Statistica
> Si definisce **ipotesi statistica** una qualsiasi affermazione concernente i parametri $\boldsymbol{\theta}$ della funzione di densità o di probabilità di una popolazione.

> [!example] Esempi di Ipotesi Statistica
> Sia $\mathbf{X}$ un $n$-campione estratto da una distribuzione gaussiana $N(\mu, \sigma^2)$ e sia fissato un valore di riferimento $\mu_0 \in \mathbb{R}$.
> Costituiscono esempi di ipotesi nulla $H_0$:
> - Ipotesi puntuale (semplice per la media):
> $$
> \begin{aligned}
> H_0: \mu = \mu_0
> \end{aligned}
> $$
> - Ipotesi composita unilatera:
> $$
> \begin{aligned}
> H_0: \mu \ge \mu_0
> \end{aligned}
> $$

### Definizione di Test d'Ipotesi

> [!definition] Test d'Ipotesi
> Si definisce **test d'ipotesi statistica** una regola di decisione quantitativa che, in base al valore assunto da una specifica statistica test calcolata sul campione di dati osservato, stabilisce se accettare o rifiutare l'ipotesi nulla $H_0$ sui parametri $\boldsymbol{\theta}$ della popolazione.

## Teoria dei Test Statistici

Nel contesto dell'inferenza statistica, quando si formulano e si saggiano ipotesi su parametri incogniti della popolazione a partire da dati campionari, si possono commettere diversi tipi di errore decisionale.

### Errori di Tipo I e di Tipo II

> [!definition] Errore di Tipo I ed Errore di Tipo II
> Siano $H_0$ l'ipotesi nulla e $H_1$ l'ipotesi alternativa:
> - **Errore di Tipo I (o di prima specie)**: si commette se si **rifiuta** $H_0$ sebbene essa sia **vera**.
> - **Errore di Tipo II (o di seconda specie)**: si commette se si **accetta** $H_0$ sebbene essa sia **falsa**.

La struttura logica delle decisioni e dei possibili errori è riassunta nella matrice di contingenza seguente:

| Decisione \ Stato della Natura | $H_0$ vera | $H_0$ falsa |
| :--- | :---: | :---: |
| **Accetto $H_0$** | Decisione corretta ($\checkmark$) | Errore di Tipo II |
| **Rifiuto $H_0$** | Errore di Tipo I | Decisione corretta ($\checkmark$) |

Più formalmente, la formulazione di un **test d'ipotesi** consiste nella specificazione di:
1. Una **statistica test** $T = t(\mathbf{X})$, ovvero una funzione del campione di dati osservati $\mathbf{X} = (X_1, \dots, X_n)$.
2. Una **regione di rifiuto** (o **regione critica**) $C \subset \mathbb{R}$.

In base a tali elementi, la regola decisionale stabilisce:
$$
\begin{aligned}
\text{Rifiuto } H_0 \iff t(\mathbf{X}) \in C
\end{aligned}
$$

### Livello di Significatività e P-Value

> [!definition] Livello di Significatività
> Si definisce **livello di significatività** (indicato comunemente con $\alpha$) la probabilità massima di commettere un errore di tipo I:
> $$
> \begin{aligned}
> \alpha = \mathbb{P}_{H_0}(\text{rifiutare } H_0) = \mathbb{P}_{H_0}(t(\mathbf{X}) \in C)
> \end{aligned}
> $$
> calcolata sotto la condizione che $H_0$ sia vera.

> [!definition] P-Value (Livello di Significatività Osservato)
> Il **p-value** dei dati è la probabilità, calcolata supponendo vera l'ipotesi nulla $H_0$, di osservare un valore della statistica test uguale o ancora più estremo rispetto a quello effettivamente calcolato sul campione.

### Criterio di Scelta tra Ipotesi Nulla e Ipotesi Alternativa

> [!note] Come scegliere $H_0$ e $H_1$?
> Nella formulazione del problema deve valere il seguente principio metodologico fondamentale:
> - Si **rifiuta $H_0$** soltanto se si possiede una **forte evidenza empirica** che supporta la sua invalidità.
> - Si **accetta $H_0$** qualora **manchi l'evidenza necessaria** per poterla falsificare.

> [!example] Esempio Ingegneristico: Sicurezza Strutturale
> Si supponga di dover progettare e costruire un ponte e di voler garantire che i piloni siano strutturalmente sicuri.
> Sia $\theta_{MIN}$ il carico minimo di rottura ammissibile affinché i piloni risultino idonei, e sia $\theta$ l'effettivo carico di rottura medio del materiale.
> L'impostazione corretta del test cautelativo impone:
> $$
> \begin{aligned}
> H_0: \theta \le \theta_{MIN} &\quad \longrightarrow \quad \text{si necessita di una forte evidenza per rigettare } H_0 \text{ e procedere alla costruzione} \\
> H_1: \theta > \theta_{MIN} &\quad \longrightarrow \quad \text{il ponte rispetta i requisiti di sicurezza}
> \end{aligned}
> $$

## Test per la Media di una Popolazione Gaussiana

### Test Z Bilaterale sulla Media con Varianza Nota

Si consideri un campione casuale $\mathbf{X} = (X_1, \dots, X_n)$ estratto da una distribuzione normale $N(\mu, \sigma_0^2)$, con deviazione standard $\sigma_0$ nota e fissa.
Si intende saggiare il sistema di ipotesi:
$$
\begin{aligned}
H_0: \mu = \mu_0 \quad \text{contro} \quad H_1: \mu \neq \mu_0
\end{aligned}
$$

Sotto la condizione di validità di $H_0$, la media campionaria $\overline{X}_n = \frac{1}{n}\sum_{i=1}^n X_i$ standardizzata soddisfa:
$$
\begin{aligned}
T_0 = \frac{\overline{X}_n - \mu_0}{\frac{\sigma_0}{\sqrt{n}}} \sim N(0, 1)
\end{aligned}
$$

La regola decisionale impone di rifiutare $H_0$ a livello di significatività $\alpha$ se il modulo della statistica test supera una soglia critica $r > 0$:
$$
\begin{aligned}
\text{Rifiuto } H_0 \iff |T_0| > r
\end{aligned}
$$
La probabilità di errore di tipo I (supponendo $H_0$ vera) è:
$$
\begin{aligned}
\mathbb{P}\{|T_0| > r\} = \alpha \iff r = z_{1 - \frac{\alpha}{2}}
\end{aligned}
$$
dove $z_{1 - \frac{\alpha}{2}}$ è il quantile di ordine $1 - \frac{\alpha}{2}$ della distribuzione normale standard.
La conseguente regione critica di rifiuto è:
$$
\begin{aligned}
C = \left( -\infty, -z_{1 - \frac{\alpha}{2}} \right] \cup \left[ z_{1 - \frac{\alpha}{2}}, +\infty \right)
\end{aligned}
$$

> [!example] Produzione di Tondini con Varianza Nota
> Un produttore di tondini metallici afferma che il loro diametro nominale è $d = 17.2\text{ mm}$, con deviazione standard nota e fissa pari a $\sigma_0 = 0.7\text{ mm}$.
> Si effettuano $n = 8$ misurazioni indipendenti:
> $$
> \begin{aligned}
> X_1 = 17.3, \quad X_2 = 16.5, \quad X_3 = 18.4, \quad X_4 = 17.7, \\
> X_5 = 18.2, \quad X_6 = 18.7, \quad X_7 = 16.8, \quad X_8 = 18.2
> \end{aligned}
> $$
> I dati osservati possono essere ragionevolmente modellati come un 8-campione estratto da $N(\mu, \sigma_0^2)$.
> Si impostano le ipotesi:
> $$
> \begin{aligned}
> H_0: \mu = 17.2 \quad \text{contro} \quad H_1: \mu \neq 17.2
> \end{aligned}
> $$
> Prima dell'osservazione, supponendo valida $H_0$:
> $$
> \begin{aligned}
> \frac{\overline{X}_8 - 17.2}{\frac{0.7}{\sqrt{8}}} \sim N(0, 1)
> \end{aligned}
> $$
> La statistica test prescelta è:
> $$
> \begin{aligned}
> T = \frac{\overline{X}_8 - 17.2}{\frac{0.7}{\sqrt{8}}}
> \end{aligned}
> $$
> Con i dati a disposizione si ottiene il valore empirico:
> $$
> \begin{aligned}
> t_{\text{oss}} = \frac{\overline{X}_8 - 17.2}{\frac{0.7}{\sqrt{8}}} \simeq 2.12
> \end{aligned}
> $$
> 
> Valutiamo la decisione al variare del livello di significatività $\alpha$:
> 1. **Per $\alpha = 0.05$**:
>    $$
>    \begin{aligned}
>    z_{1 - \frac{0.05}{2}} = z_{0.975} = 1.96 \implies C = (-\infty, -1.96) \cup (1.96, +\infty)
>    \end{aligned}
>    $$
>    Poiché $|t_{\text{oss}}| = 2.12 > 1.96$, si ha $2.12 \in C \implies \textbf{RIFIUTO } H_0$.
> 
> 2. **Per $\alpha = 0.02$**:
>    $$
>    \begin{aligned}
>    z_{1 - \frac{0.02}{2}} = z_{0.99} = 2.33 \implies C = (-\infty, -2.33) \cup (2.33, +\infty)
>    \end{aligned}
>    $$
>    Poiché $|t_{\text{oss}}| = 2.12 \le 2.33$, si ha $2.12 \notin C \implies \textbf{ACCETTO } H_0$.
> 
> Calcolo analitico del **p-value** per questo campione:
> $$
> \begin{aligned}
> \text{p-value} &= \mathbb{P}\{|T| > 2.12\} \\
> &= \mathbb{P}\{T < -2.12\} + \mathbb{P}\{T > 2.12\} \\
> &= 2 - 2\Phi(2.12) = 0.034
> \end{aligned}
> $$
> Si osserva puntualmente che $0.034 \in (0.02, 0.05)$, confermando che $H_0$ viene rifiutata per ogni $\alpha > 0.034$ e accettata per ogni $\alpha \le 0.034$.

### Test t di Student sulla Media con Varianza Incognita

Qualora il parametro di dispersione $\sigma$ non sia noto a priori, si sostituisce la varianza della popolazione con la varianza campionaria corretta $S_n^2 = \frac{1}{n-1}\sum_{i=1}^n (X_i - \overline{X}_n)^2$.

Sotto $H_0: \mu = \mu_0$, la statistica test risultante è:
$$
\begin{aligned}
T_{\text{test}} = \frac{\overline{X}_n - \mu_0}{\frac{S_n}{\sqrt{n}}} \sim t(n-1)
\end{aligned}
$$
distribuita secondo una $t$ di Student con $n-1$ gradi di libertà (g.d.l.).

La regola di decisione bilaterale a livello $\alpha$ prescrive:
$$
\begin{aligned}
\text{Rifiuto } H_0 \iff |T_{\text{test}}| > t_{n-1, 1 - \frac{\alpha}{2}}
\end{aligned}
$$
Il p-value corrispondente è fornito da:
$$
\begin{aligned}
\text{p-value} = \mathbb{P}\{|T_{\text{test}}| > |t_{\text{oss}}|\}
\end{aligned}
$$
dove $t_{\text{oss}}$ rappresenta il valore numerico calcolato sui dati.

> [!note] Quantili delle Tavole della t di Student
> Sulle tavole numeriche della distribuzione $t$ di Student non sono tabulati tutti i quantili continui possibili. Di conseguenza, nella prassi si individua l'intervallo di valori critici entro cui è compreso il p-value:
> $$
> \begin{aligned}
> \alpha_1 < \text{p-value} < \alpha_2
> \end{aligned}
> $$

### Test Unilaterale sulla Media

Si consideri un test d'ipotesi unilaterale per la media di una popolazione $N(\mu, \sigma^2)$:
$$
\begin{aligned}
H_0: \mu \le \mu_0 \quad \text{contro} \quad H_1: \mu > \mu_0
\end{aligned}
$$

La procedura è analoga a quella per $H_0: \mu = \mu_0$. La probabilità di commettere un errore di prima specie:
$$
\begin{aligned}
\mathbb{P}_{H_0}\left\{ \frac{\overline{X}_n - \mu_0}{\frac{S_n}{\sqrt{n}}} > c \right\}
\end{aligned}
$$
dipende dal valore puntuale del parametro non noto $\mu \in (-\infty, \mu_0]$. Per garantire che il livello di significatività massimo non ecceda $\alpha$, ci si pone nella condizione limite peggiore $\mu = \mu_0$.

La regola decisionale impone di rifiutare $H_0$ se:
$$
\begin{aligned}
\frac{\overline{X}_n - \mu_0}{\frac{S_n}{\sqrt{n}}} > t_{n-1, 1-\alpha}
\end{aligned}
$$

> [!example] Verifica di Conformità Unilaterale
> Dalle $n = 8$ misurazioni sui tondini si ottengono i valori campionari:
> $$
> \begin{aligned}
> \overline{X}_8 = 17.725, \qquad S_8 = 0.7924
> \end{aligned}
> $$
> Si vuole verificare se l'ipotesi di conformità $d \le 17.5$ sia compatibile con i dati sperimentali.
> Si definisce il test:
> $$
> \begin{aligned}
> H_0: \mu \le 17.5 \quad \text{contro} \quad H_1: \mu > 17.5
> \end{aligned}
> $$
> La statistica test è:
> $$
> \begin{aligned}
> T_7 = \frac{\overline{X}_8 - 17.5}{\frac{S_8}{\sqrt{8}}} \sim t(8-1) = t(7) \quad \text{sotto } H_0 \text{ (nel caso limite } \mu_0 = 17.5)
> \end{aligned}
> $$
> Si considerano i livelli di significatività $\alpha \in \{0.1, 0.05, 0.025\}$.
> Regola decisionale: **rifiuto $H_0$ se $T_7 > t_{7, 1-\alpha}$**.
> 
> Calcolo numerico del valore empirico:
> $$
> \begin{aligned}
> t_{\text{oss}} = \frac{17.725 - 17.5}{\frac{0.7924}{\sqrt{8}}} = \frac{0.225}{0.28016} \simeq 0.803
> \end{aligned}
> $$
> Confrontando con i quantili della $t(7)$:
> $$
> \begin{aligned}
> t_{7, 0.9} = 1.414 \implies t_{\text{oss}} = 0.803 < 1.414 \implies \textbf{ACCETTO } H_0
> \end{aligned}
> $$
> Poiché i quantili per livelli di significatività inferiori crescono monotonicamente:
> $$
> \begin{aligned}
> t_{7, 0.975} > t_{7, 0.95} > t_{7, 0.9} = 1.414 \implies \textbf{ACCETTO } H_0 \quad \forall \alpha \in \{0.1, 0.05, 0.025\}
> \end{aligned}
> $$

## Test di Confronto su Due Campioni

### Test sulla Differenza tra le Medie per Grandi Campioni

Si considerino due campioni casuali indipendenti:
$$
\begin{aligned}
\mathbf{X} = (X_1, \dots, X_n) \sim N(\mu_X, \sigma_X^2), \qquad \mathbf{Y} = (Y_1, \dots, Y_m) \sim N(\mu_Y, \sigma_Y^2)
\end{aligned}
$$
con medie campionarie rispettive:
$$
\begin{aligned}
\overline{X}_n = \frac{1}{n}\sum_{i=1}^n X_i, \qquad \overline{Y}_m = \frac{1}{m}\sum_{i=1}^m Y_i
\end{aligned}
$$

Per campioni di dimensione $n, m$ sufficientemente grande, in virtù del Teorema del Limite Centrale si ha:
$$
\begin{aligned}
\frac{\overline{X}_n - \overline{Y}_m - (\mu_X - \mu_Y)}{\sqrt{\frac{\sigma_X^2}{n} + \frac{\sigma_Y^2}{m}}} \sim N(0, 1)
\end{aligned}
$$
in quanto, per l'indipendenza dei due campioni:
$$
\begin{aligned}
\mathbb{V}[\overline{X}_n - \overline{Y}_m - (\mu_X - \mu_Y)] = \mathbb{V}[\overline{X}_n] + \mathbb{V}[\overline{Y}_m] = \frac{\sigma_X^2}{n} + \frac{\sigma_Y^2}{m}
\end{aligned}
$$

Essendo le varianze teoriche $\sigma_X^2, \sigma_Y^2$ generalmente incognite, per grandi campioni possono essere stimate coerentemente tramite le varianze campionarie $S_X^2$ e $S_Y^2$, ottenendo la statistica test asintotica:
$$
\begin{aligned}
\frac{\overline{X}_n - \overline{Y}_m - (\mu_X - \mu_Y)}{\sqrt{\frac{S_X^2}{n} + \frac{S_Y^2}{m}}} \sim N(0, 1)
\end{aligned}
$$

Sotto l'ipotesi nulla di una differenza prefissata $\delta_0$:
1. **Test Bilaterale**:
   $$
   \begin{aligned}
   H_0: \mu_X - \mu_Y = \delta_0 \quad \text{contro} \quad H_1: \mu_X - \mu_Y \neq \delta_0
   \end{aligned}
   $$
   Regola di decisione: **rifiuto $H_0$ a livello $\alpha$ se**:
   $$
   \begin{aligned}
   \left| \frac{\overline{X}_n - \overline{Y}_m - \delta_0}{\sqrt{\frac{S_X^2}{n} + \frac{S_Y^2}{m}}} \right| > z_{1 - \frac{\alpha}{2}}
   \end{aligned}
   $$

2. **Test Unilaterale**:
   $$
   \begin{aligned}
   H_0: \mu_X - \mu_Y \ge \delta_0 \quad \text{contro} \quad H_1: \mu_X - \mu_Y < \delta_0
   \end{aligned}
   $$
   Regola di decisione: **rifiuto $H_0$ a livello $\alpha$ se**:
   $$
   \begin{aligned}
   \frac{\overline{X}_n - \overline{Y}_m - \delta_0}{\sqrt{\frac{S_X^2}{n} + \frac{S_Y^2}{m}}} < -z_{1-\alpha}
   \end{aligned}
   $$

### Test sulla Differenza tra le Medie per Piccoli Campioni con Omoschedasticità

Se le dimensioni campionarie $n, m$ sono ridotte, non è possibile ricorrere all'approssimazione normale asintotica. Nell'ipotesi in cui le due popolazioni abbiano varianza comune incognita (**omoschedasticità**, $\sigma_X^2 = \sigma_Y^2 = \sigma^2$), si definisce lo stimatore congiunto (*pooled variance*):
$$
\begin{aligned}
S_p^2 = \frac{(n-1)S_X^2 + (m-1)S_Y^2}{n+m-2}
\end{aligned}
$$

La statistica test sotto $H_0: \mu_X - \mu_Y = \delta_0$ assume la forma:
$$
\begin{aligned}
T_0 = \frac{\overline{X}_n - \overline{Y}_m - \delta_0}{\sqrt{\frac{(n-1)S_X^2 + (m-1)S_Y^2}{n+m-2}\left(\frac{1}{n} + \frac{1}{m}\right)}} \sim t(n+m-2)
\end{aligned}
$$
La variabile aleatoria $T_0$ ha esattamente distribuzione $t$ di Student con $n+m-2$ gradi di libertà.

La regola di decisione per il test bilaterale prevede:
$$
\begin{aligned}
\text{Rifiuto } H_0 \iff |T_0| > t_{n+m-2, 1-\frac{\alpha}{2}}
\end{aligned}
$$

### Test di Fisher per il Confronto tra Due Varianze

Per saggiare l'uguaglianza tra le varianze di due popolazioni normali indipendenti:
$$
\begin{aligned}
H_0: \sigma_X^2 = \sigma_Y^2 \quad \text{contro} \quad H_1: \sigma_X^2 \neq \sigma_Y^2
\end{aligned}
$$
si impiega come statistica test il rapporto delle varianze campionarie:
$$
\begin{aligned}
F_0 = \frac{S_X^2}{S_Y^2}
\end{aligned}
$$

Si ricordi che, in generale, per campioni gaussiani indipendenti:
$$
\begin{aligned}
\frac{(n-1)S_X^2}{\sigma_X^2} \sim \chi^2(n-1), \qquad \frac{(m-1)S_Y^2}{\sigma_Y^2} \sim \chi^2(m-1)
\end{aligned}
$$
Pertanto, sotto l'ipotesi nulla $H_0$ ($\sigma_X^2 = \sigma_Y^2$), il rapporto delle due quantità standardizzate coincide con $F_0$ e segue una distribuzione $F$ di Fisher-Snedecor con $n-1$ e $m-1$ gradi di libertà:
$$
\begin{aligned}
F_0 \sim F(n-1, m-1)
\end{aligned}
$$

Fissato il livello di significatività $\alpha$, la regola di decisione bilaterale prescrive:
$$
\begin{aligned}
\text{Rifiuto } H_0 \iff F_0 > f_{n-1, m-1, 1-\frac{\alpha}{2}} \quad \text{oppure} \quad F_0 < f_{n-1, m-1, \frac{\alpha}{2}}
\end{aligned}
$$
dove $f_{n-1, m-1, p}$ denota il quantile di ordine $p$ della distribuzione di Fisher con $n-1$ e $m-1$ gradi di libertà.

# 6. Modelli di Regressione Lineare e Multipla

## Regressione Lineare Semplice: Metodo dei Minimi Quadrati

### Modello dei Minimi Quadrati e Formulazione

Si consideri un insieme di osservazioni costituito da coppie $(x_1, y_1), \dots, (x_n, y_n)$, in cui:
- $x_1, \dots, x_n$ sono le variabili esplicative (o regressori), considerate note e **non aleatorie**.
- $y_1, \dots, y_n$ sono le variabili dipendenti, dette **variabili di risposta**.

Si assume l'esistenza di una relazione lineare tra $x$ e $y$ affetta da errore:
$$
\begin{aligned}
y_i = b x_i + a + e_i, \qquad i = 1, \dots, n
\end{aligned}
$$
dove $b$ rappresenta il coefficiente angolare (pendenza), $a$ rappresenta l'intercetta, ed $e_i$ indica l'**errore** residuo rispetto alla retta teorica.

Gli obiettivi primari dell'analisi consistono nel:
1. Stimare i parametri ignoti $a$ e $b$ in modo da rendere minimi gli errori residui.
2. Formulare previsioni affidabili su una risposta futura $y'$ associata a un nuovo valore della variabile esplicita $x'$.

La minimizzazione degli errori si traduce in un problema di ottimo libero in due variabili. Si definisce la funzione di perdita quadratica $L: \mathbb{R}^2 \to \mathbb{R}$:
$$
\begin{aligned}
L(a, b) := \sum_{i=1}^n (y_i - b x_i - a)^2
\end{aligned}
$$
Si cercano i valori ottimali $\hat{a}, \hat{b} \in \mathbb{R}$ tali che:
$$
\begin{aligned}
L(\hat{a}, \hat{b}) = \min_{a, b \in \mathbb{R}} L(a, b)
\end{aligned}
$$

> [!note] Motivo della Norma Quadratica
> La scelta della somma dei quadrati degli scarti risiede nel fatto che conduce a equazioni normali lineari analiticamente risolubili in forma chiusa con estrema semplicità.

### Derivazione Analitica dei Coefficienti dei Minimi Quadrati

Per determinare il punto di minimo, si calcola il gradiente di $L(a, b)$ rispetto ai parametri $b$ e $a$ e lo si impone uguale al vettore nullo:
$$
\begin{aligned}
\nabla L = \begin{pmatrix} \frac{\partial L}{\partial b} \\ \frac{\partial L}{\partial a} \end{pmatrix} = \begin{pmatrix} 2 \sum_{i=1}^n x_i (b x_i + a - y_i) \\ 2 \sum_{i=1}^n (b x_i + a - y_i) \end{pmatrix} = \mathbf{0}
\end{aligned}
$$

Espandendo le sommatorie:
$$
\begin{aligned}
\nabla L = 2 \begin{pmatrix} b \sum_{i=1}^n x_i^2 + a \sum_{i=1}^n x_i - \sum_{i=1}^n x_i y_i \\ b \sum_{i=1}^n x_i + n a - \sum_{i=1}^n y_i \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
\end{aligned}
$$

Introducendo le medie campionarie dei dati:
$$
\begin{aligned}
\overline{x} = \frac{1}{n} \sum_{i=1}^n x_i, \qquad \overline{y} = \frac{1}{n} \sum_{i=1}^n y_i
\end{aligned}
$$
il sistema assume la forma:
$$
\begin{aligned}
\nabla L = 2 \begin{pmatrix} b \sum_{i=1}^n x_i^2 - \sum_{i=1}^n x_i y_i + a n \overline{x} \\ b n \overline{x} + n a - n \overline{y} \end{pmatrix} = \mathbf{0}
\end{aligned}
$$

Dalla seconda equazione si ricava l'espressione dell'intercetta in funzione del coefficiente angolare:
$$
\begin{aligned}
b n \overline{x} + n a - n \overline{y} = 0 \iff b \overline{x} + a - \overline{y} = 0 \iff a = \overline{y} - b \overline{x}
\end{aligned}
$$

Sostituendo l'espressione $a = \overline{y} - b \overline{x}$ nella prima equazione:
$$
\begin{aligned}
b \sum_{i=1}^n x_i^2 - \sum_{i=1}^n x_i y_i + n (\overline{y} - b \overline{x})\overline{x} = 0
\end{aligned}
$$
Raggruppando i termini in $b$:
$$
\begin{aligned}
b \left( \sum_{i=1}^n x_i^2 - n \overline{x}^2 \right) + n \overline{y}\,\overline{x} - \sum_{i=1}^n x_i y_i = 0
\end{aligned}
$$
da cui segue:
$$
\begin{aligned}
b \left( \sum_{i=1}^n x_i^2 - n \overline{x}^2 \right) = \sum_{i=1}^n x_i y_i - n \overline{x}\,\overline{y}
\end{aligned}
$$

Risolvendo per $b$ e $a$:
$$
\begin{aligned}
\begin{cases}
b = \frac{\sum_{i=1}^n x_i y_i - n \overline{x}\,\overline{y}}{\sum_{i=1}^n x_i^2 - n \overline{x}^2} \\
a = \overline{y} - b \overline{x}
\end{cases}
\end{aligned}
$$

### Notazione di Devianza, Codevianza e Retta Ottimale

> [!definition] Devianze e Codevianza Campionarie
> Si definiscono le seguenti quantità di dispersione:
> 1. **Devianza campionaria di $x$**:
>    $$
>    \begin{aligned}
>    S_{xx} := \sum_{i=1}^n (x_i - \overline{x})^2 = \sum_{i=1}^n x_i^2 - n \overline{x}^2
>    \end{aligned}
>    $$
> 2. **Devianza campionaria di $y$**:
>    $$
>    \begin{aligned}
>    S_{yy} := \sum_{i=1}^n (y_i - \overline{y})^2 = \sum_{i=1}^n y_i^2 - n \overline{y}^2
>    \end{aligned}
>    $$
> 3. **Codevianza campionaria tra $x$ e $y$**:
>    $$
>    \begin{aligned}
>    S_{xy} := \sum_{i=1}^n (x_i - \overline{x})(y_i - \overline{y}) = \sum_{i=1}^n x_i y_i - n \overline{x}\,\overline{y} = S_{yx}
>    \end{aligned}
>    $$
> In generale, per due sequenze arbitrarie $\alpha$ e $\beta$:
> $$
> \begin{aligned}
> S_{\alpha\beta} := \sum_{i=1}^n (\alpha_i - \overline{\alpha})(\beta_i - \overline{\beta})
> \end{aligned}
> $$

Gli stimatori dei minimi quadrati per la pendenza e l'intercetta si esprimono sinteticamente come:
$$
\begin{aligned}
\begin{cases}
\hat{b} = \frac{S_{xy}}{S_{xx}} \\
\hat{a} = \overline{y} - \frac{S_{xy}}{S_{xx}} \overline{x}
\end{cases}
\end{aligned}
$$

La **retta di regressione ottimale** (retta dei minimi quadrati) è pertanto:
$$
\begin{aligned}
y(x) = \hat{b} x + \hat{a} = \frac{S_{xy}}{S_{xx}} x + \overline{y} - \frac{S_{xy}}{S_{xx}}\overline{x} = \frac{S_{xy}}{S_{xx}}(x - \overline{x}) + \overline{y}
\end{aligned}
$$
L'errore medio commesso associato agli stimatori ottimali $\hat{a}$ e $\hat{b}$ vale pertanto...

## Decomposizione della Varianza e Bontà di Adattamento

### Somma dei Quadrati Residui ($SS_e$) e Somma dei Quadrati di Regressione ($SS_r$)

> [!definition] Somma dei Quadrati Residui ($SS_e$)
> Si definisce la somma dei quadrati residui (Sum of Error Squares) come il valore della funzione di perdita calcolata negli stimatori di minimi quadrati $(\hat{a}, \hat{b})$:
> $$
> \begin{aligned}
> SS_e := L(\hat{a}, \hat{b}) = \sum_{i=1}^n (y_i - \hat{b}x_i - \hat{a})^2
> \end{aligned}
> $$
> In particolare, si ha:
> $$
> \begin{aligned}
> SS_e = 0 \iff (x_i, y_i) \text{ giacciono esattamente sulla retta: } y = \hat{b}x + \hat{a} \quad \forall i=1,\dots,n
> \end{aligned}
> $$

> [!definition] Somma dei Quadrati della Regressione ($SS_r$) e Somma Totale dei Quadrati ($SS_T$)
> Si definisce la somma dei quadrati spiegata dalla regressione (Sum of Regression Errors):
> $$
> \begin{aligned}
> SS_r := \sum_{i=1}^n (\bar{y} - \hat{b}x_i - \hat{a})^2
> \end{aligned}
> $$
> e la somma totale dei quadrati (Sum of Total Errors):
> $$
> \begin{aligned}
> SS_T := S_{yy} = \sum_{i=1}^n (y_i - \bar{y})^2
> \end{aligned}
> $$

> [!note] Significato Geometrico e Statistico degli Indici
> - **$SS_e \to$ SUM of ERROR SQUARES**: misura l'errore quadratico complessivo nello scegliere la retta di regressione anziché i singoli dati osservati (varianza residua non spiegata dal modello).
> - **$SS_r \to$ SUM of REGRESSION ERRORS**: misura la varianza spiegata dalla regressione lineare, ovvero lo scostamento dei valori predetti dalla retta rispetto alla media campionaria $\bar{y}$.
> - **$SS_T := S_{yy} \to$ SUM of TOTAL ERRORS**: misura la varianza totale dei dati grezzi della variabile di risposta $y$ rispetto alla loro media campionaria.

### Decomposizione della Varianza Totale

> [!proposition] Relazione Fondamentale di Decomposizione della Varianza
> La somma totale dei quadrati si scompone esattamente nella somma dei quadrati della regressione e nella somma dei quadrati residui:
> $$
> \begin{aligned}
> SS_T = S_{yy} = SS_r + SS_e
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Esprimiamo $SS_e$ inserendo e sottraendo la media campionaria $\bar{y}$:
> $$
> \begin{aligned}
> SS_e &= \sum_{i=1}^n (y_i - \bar{y} + \bar{y} - \hat{b}x_i - \hat{a})^2
> \end{aligned}
> $$
> Ricordando la relazione per l'intercetta di minimi quadrati $\hat{a} = \bar{y} - \hat{b}\bar{x}$, sostituiamo $\bar{y} - \hat{a} = \hat{b}\bar{x}$:
> $$
> \begin{aligned}
> \bar{y} - \hat{b}x_i - \hat{a} &= (\bar{y} - \hat{a}) - \hat{b}x_i = \hat{b}\bar{x} - \hat{b}x_i = -\hat{b}(x_i - \bar{x})
> \end{aligned}
> $$
> Sviluppando il quadrato del binomio:
> $$
> \begin{aligned}
> SS_e &= \sum_{i=1}^n \left[ (y_i - \bar{y}) - \hat{b}(x_i - \bar{x}) \right]^2 \\
> &= \sum_{i=1}^n (y_i - \bar{y})^2 - 2\hat{b} \sum_{i=1}^n (y_i - \bar{y})(x_i - \bar{x}) + \hat{b}^2 \sum_{i=1}^n (x_i - \bar{x})^2
> \end{aligned}
> $$
> Identificando le devianze campionarie $S_{yy} = \sum_{i=1}^n (y_i - \bar{y})^2$, $S_{xy} = \sum_{i=1}^n (x_i - \bar{x})(y_i - \bar{y})$ e $S_{xx} = \sum_{i=1}^n (x_i - \bar{x})^2$, e ricordando che $\hat{b} = \frac{S_{xy}}{S_{xx}}$:
> $$
> \begin{aligned}
> SS_e &= S_{yy} - 2 \hat{b} S_{xy} + \hat{b}^2 S_{xx} \\
> &= S_{yy} - 2 \frac{S_{xy}}{S_{xx}} S_{xy} + \left(\frac{S_{xy}}{S_{xx}}\right)^2 S_{xx} \\
> &= S_{yy} - 2 \frac{S_{xy}^2}{S_{xx}} + \frac{S_{xy}^2}{S_{xx}} \\
> &= S_{yy} - \frac{S_{xy}^2}{S_{xx}}
> \end{aligned}
> $$
> Poiché, come mostrato di seguito, $SS_r = \frac{S_{xy}^2}{S_{xx}}$, si ottiene:
> $$
> \begin{aligned}
> SS_e = S_{yy} - SS_r \iff SS_T = S_{yy} = SS_r + SS_e
> \end{aligned}
> $$
> Il che conclude la dimostrazione. $\blacksquare$

### Coefficiente di Determinazione ($r^2$)

> [!definition] Coefficiente di Determinazione ($r^2$)
> Si definisce coefficiente di determinazione il rapporto tra la devianza spiegata dalla regressione e la devianza totale:
> $$
> \begin{aligned}
> r^2 := \frac{SS_r}{S_{yy}} = 1 - \frac{SS_e}{S_{yy}}
> \end{aligned}
> $$

> [!note] Interpretazione di $r^2$
> Il coefficiente $r^2$ rappresenta la percentuale (o frazione) della varianza totale dei dati grezzi che viene spiegata dalla retta di regressione stessa.
> Per avere una buona approssimazione lineare dei dati sperimentali, deve risultare:
> $$
> \begin{aligned}
> r^2 \approx 1 \quad \text{o di poco inferiore}
> \end{aligned}
> $$
> Si noti inoltre che $r^2 = \frac{S_{xy}^2}{S_{xx} S_{yy}} = \rho_{xy}^2$, ovvero corrisponde al quadrato del coefficiente di correlazione lineare di Pearson.

### Espressione Esplicita di $SS_r$

> [!proposition] Forma Esplicita di $SS_r$ in termini di Devianze Campionarie
> La somma dei quadrati della regressione può essere espressa direttamente come:
> $$
> \begin{aligned}
> SS_r = \frac{S_{xy}^2}{S_{xx}}
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Partendo dalla definizione di $SS_r$:
> $$
> \begin{aligned}
> SS_r = \sum_{i=1}^n (\bar{y} - \hat{b}x_i - \hat{a})^2
> \end{aligned}
> $$
> Poiché $\hat{a} = \bar{y} - \hat{b}\bar{x}$, sostituendo $\hat{a}$ si ottiene:
> $$
> \begin{aligned}
> SS_r &= \sum_{i=1}^n (\bar{y} - \hat{b}x_i - (\bar{y} - \hat{b}\bar{x}))^2 \\
> &= \sum_{i=1}^n (\cancel{\bar{y}} - \hat{b}x_i - \cancel{\bar{y}} + \hat{b}\bar{x})^2 \\
> &= \sum_{i=1}^n \hat{b}^2 (\bar{x} - x_i)^2 \\
> &= \hat{b}^2 \sum_{i=1}^n (x_i - \bar{x})^2 \\
> &= \hat{b}^2 S_{xx}
> \end{aligned}
> $$
> Sostituendo l'espressione dello stimatore della pendenza $\hat{b} = \frac{S_{xy}}{S_{xx}}$:
> $$
> \begin{aligned}
> SS_r &= \left(\frac{S_{xy}}{S_{xx}}\right)^2 S_{xx} \\
> &= \frac{S_{xy}^2}{S_{xx}^2} S_{xx} \\
> &= \frac{S_{xy}^2}{S_{xx}}
> \end{aligned}
> $$
> Il risultato è così provato. $\blacksquare$

## Regressione Lineare Semplice con Variabili Aleatorie

### Modello Probabilistico Normale

> [!definition] Modello di Regressione Lineare Semplice
> Sia $\mathbf{Y} : \Omega \to \mathbb{R}^n$ un vettore aleatorio di osservazioni sperimentali corrispondenti a livelli fissati deterministici $x_1, \dots, x_n$. Si assume il modello:
> $$
> \begin{aligned}
> Y_i = b x_i + a + E_i \quad \forall i = 1, \dots, n
> \end{aligned}
> $$
> dove:
> - $E_i \sim N(0, \sigma^2)$ sono variabili aleatorie di errore indipendenti e identicamente distribuite;
> - $x_1, \dots, x_n$ sono costanti deterministiche note;
> - $a \in \mathbb{R}$ (intercetta), $b \in \mathbb{R}$ (pendenza) e $\sigma^2 > 0$ (varianza del rumore) sono parametri incogniti.
> 
> Sotto tali ipotesi, le risposte $Y_i$ sono mutuamente indipendenti e hanno distribuzione:
> $$
> \begin{aligned}
> Y_i \sim N(b x_i + a, \sigma^2) \quad \forall i = 1, \dots, n
> \end{aligned}
> $$

### Stimatori di Minimi Quadrati come Variabili Aleatorie

> [!definition] Stimatori Puntuali $\hat{A}$ e $\hat{B}$
> La retta dei minimi quadrati calcolata sul campione aleatorio $(x_1, Y_1), \dots, (x_n, Y_n)$ definisce gli stimatori campionari:
> $$
> \begin{aligned}
> \hat{B} := \frac{S_{xy}}{S_{xx}} = \frac{\sum_{i=1}^n (x_i - \bar{x})(Y_i - \bar{Y})}{S_{xx}}, \qquad \hat{A} := \bar{Y}_n - \frac{S_{xy}}{S_{xx}}\bar{x} = \bar{Y}_n - \hat{B}\bar{x}
> \end{aligned}
> $$

> [!theorem] Proprietà Distributive Esatte di $\hat{A}$ e $\hat{B}$
> Gli stimatori $\hat{A}$ e $\hat{B}$, essendo combinazioni lineari delle variabili aleatorie gaussiane indipendenti $Y_i$, sono distribuiti normalmente:
> $$
> \begin{aligned}
> \hat{B} &\sim N\left(b, \frac{\sigma^2}{S_{xx}}\right) \\
> \hat{A} &\sim N\left(a, \sigma^2 \left(\frac{1}{n} + \frac{\bar{x}^2}{S_{xx}}\right)\right)
> \end{aligned}
> $$

> [!note] Non Distorsione di $\hat{A}$ e $\hat{B}$
> Dal teorema segue direttamente che $\hat{A}$ e $\hat{B}$ sono stimatori non distorti dei parametri $a$ e $b$:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{B}] = b, \qquad \mathbb{E}[\hat{A}] = a
> \end{aligned}
> $$

> [!quote]- Dimostrazione della Non Distorsione di $\hat{B}$
> Calcoliamo il valore atteso di $\hat{B}$:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{B}] = \frac{\mathbb{E}[S_{xy}]}{S_{xx}} = \frac{1}{S_{xx}} \sum_{i=1}^n (x_i - \bar{x}) \, \mathbb{E}[Y_i - \bar{Y}]
> \end{aligned}
> $$
> Valutiamo il termine $\mathbb{E}[Y_i - \bar{Y}]$:
> $$
> \begin{aligned}
> \mathbb{E}[Y_i - \bar{Y}] &= \mathbb{E}[Y_i] - \frac{1}{n} \sum_{i=1}^n \mathbb{E}[Y_i] \\
> &= (b x_i + a) - \frac{1}{n} (n b \bar{x} + n a) \\
> &= b x_i + a - (b \bar{x} + a) \\
> &= b(x_i - \bar{x})
> \end{aligned}
> $$
> Sostituendo nella sommatoria per $\mathbb{E}[\hat{B}]$:
> $$
> \begin{aligned}
> \mathbb{E}[\hat{B}] &= \frac{1}{S_{xx}} \sum_{i=1}^n (x_i - \bar{x}) \cdot b(x_i - \bar{x}) \\
> &= \frac{b}{S_{xx}} \sum_{i=1}^n (x_i - \bar{x})^2 \\
> &= b \frac{S_{xx}}{S_{xx}} \\
> &= b
> \end{aligned}
> $$
> Con passaggi del tutto analoghi si prova che $\mathbb{E}[\hat{A}] = a$. $\blacksquare$

### Inferenza con Varianza $\sigma^2$ Incognita: Distribuzioni $t$ di Student

> [!theorem] Statistiche Pivotali con Varianza Incognita
> Quando la varianza degli errori $\sigma^2$ non è nota, la quantità $SS_e$ permette di stimarla. Valgono le seguenti distribuzioni esatte basate sulla $t$ di Student a $n-2$ gradi di libertà:
> $$
> \begin{aligned}
> \sqrt{\frac{(n-2)S_{xx}}{SS_e}} (\hat{B} - b) &\sim t(n-2) \\
> \sqrt{\frac{n(n-2)S_{xx}}{(S_{xx} + n\bar{x}^2)SS_e}} (\hat{A} - a) &\sim t(n-2)
> \end{aligned}
> $$

> [!definition] Stimatore Corretto della Varianza Residua ($\hat{\Sigma}^2$)
> Si definisce stimatore non distorto di $\sigma^2$:
> $$
> \begin{aligned}
> \hat{\Sigma}^2 := \frac{SS_e}{n-2}
> \end{aligned}
> $$
> per il quale vale $\mathbb{E}[\hat{\Sigma}^2] = \sigma^2$.

### Intervalli di Confidenza e Test d'Ipotesi sui Parametri

> [!proposition] Intervallo di Confidenza per la Pendenza $b$
> Fissato un livello di confidenza $1-\alpha$, l'intervallo di confidenza bilatero per $b$ è dato da:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left( \hat{B} - t_{n-2, 1-\frac{\alpha}{2}} \sqrt{\frac{SS_e}{(n-2)S_{xx}}}, \; \hat{B} + t_{n-2, 1-\frac{\alpha}{2}} \sqrt{\frac{SS_e}{(n-2)S_{xx}}} \right)
> \end{aligned}
> $$
> dove $t_{n-2, 1-\frac{\alpha}{2}}$ indica il quantile di ordine $1-\frac{\alpha}{2}$ della variabile aleatoria $T \sim t(n-2)$:
> $$
> \begin{aligned}
> \mathbb{P}\{T < t_{n-2, 1-\frac{\alpha}{2}}\} = 1 - \frac{\alpha}{2}
> \end{aligned}
> $$
> Utilizzando la notazione con l'errore standard stimato $\hat{\Sigma} = \sqrt{\frac{SS_e}{n-2}}$, l'intervallo si riscrive:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left( \hat{B} - t_{n-2, 1-\frac{\alpha}{2}} \frac{\hat{\Sigma}}{\sqrt{S_{xx}}}, \; \hat{B} + t_{n-2, 1-\frac{\alpha}{2}} \frac{\hat{\Sigma}}{\sqrt{S_{xx}}} \right)
> \end{aligned}
> $$

> [!proposition] Test d'Ipotesi per la Pendenza $b$
> Si consideri il problema di verifica d'ipotesi:
> $$
> \begin{aligned}
> H_0: b = b_0 \quad \text{contro} \quad H_1: b \neq b_0
> \end{aligned}
> $$
> La statistica test è:
> $$
> \begin{aligned}
> T_0 = \frac{\hat{B} - b_0}{\frac{\hat{\Sigma}}{\sqrt{S_{xx}}}} \sim t(n-2) \quad \text{sotto } H_0
> \end{aligned}
> $$
> Al livello di significatività $\alpha$, la regione di rifiuto di $H_0$ è data da:
> $$
> \begin{aligned}
> |T_0| = \left| \sqrt{\frac{(n-2)S_{xx}}{SS_e}} (\hat{B} - b_0) \right| > t_{n-2, 1-\frac{\alpha}{2}}
> \end{aligned}
> $$
> Nel caso speciale di test di significatività della regressione lineare ($b_0 = 0$):
> $$
> \begin{aligned}
> H_0: b = 0 \quad \text{contro} \quad H_1: b \neq 0
> \end{aligned}
> $$
> si rifiuta $H_0$ se:
> $$
> \begin{aligned}
> \left| \sqrt{\frac{(n-2)S_{xx}}{SS_e}} \hat{B} \right| > t_{n-2, 1-\frac{\alpha}{2}}
> \end{aligned}
> $$

### Stima e Predizione per una Nuova Osservazione $x^*$

> [!definition] Nuova Risposta $Y^*$
> Si consideri un nuovo valore della variabile regressore $x^* \neq x_i$ ($\forall i = 1, \dots, n$). La variabile aleatoria associata è:
> $$
> \begin{aligned}
> Y^* = a + b x^* + E^*
> \end{aligned}
> $$
> con $E^* \sim N(0, \sigma^2)$ errore indipendente da $E_1, \dots, E_n$.
> La stima puntuale corrispondente per la retta di regressione è data da:
> $$
> \begin{aligned}
> \hat{Y}^* := \hat{A} + \hat{B}x^*
> \end{aligned}
> $$

> [!theorem] Distribuzione Pivotale per la Risposta Media
> Per la combinazione lineare stimata vale la seguente distribuzione pivotale:
> $$
> \begin{aligned}
> \frac{\hat{A} + \hat{B}x^* - (a + b x^*)}{\sqrt{\left( \frac{1}{n} + \frac{(x^* - \bar{x})^2}{S_{xx}} \right) \frac{SS_e}{n-2}}} \sim t(n-2)
> \end{aligned}
> $$

> [!proposition] Intervallo di Confidenza per la Risposta Media $\mathbb{E}[Y^*]$
> Per la media della risposta al punto $x^*$, $\mathbb{E}[Y^*] = a + b x^*$, l'intervallo di confidenza a livello $1-\alpha$ è:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left( \hat{Y}^* - t_{n-2, 1-\frac{\alpha}{2}} \hat{\Sigma} \sqrt{\frac{1}{n} + \frac{(x^* - \bar{x})^2}{S_{xx}}}, \; \hat{Y}^* + t_{n-2, 1-\frac{\alpha}{2}} \hat{\Sigma} \sqrt{\frac{1}{n} + \frac{(x^* - \bar{x})^2}{S_{xx}}} \right)
> \end{aligned}
> $$

> [!proposition] Intervallo di Predizione per la Singola Risposta Futura $Y^*$
> Per una singola osservazione futura $Y^* = a + b x^* + E^*$, l'intervallo di predizione a livello $1-\alpha$ è:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left( \hat{Y}^* - t_{n-2, 1-\frac{\alpha}{2}} \hat{\Sigma} \sqrt{1 + \frac{1}{n} + \frac{(x^* - \bar{x})^2}{S_{xx}}}, \; \hat{Y}^* + t_{n-2, 1-\frac{\alpha}{2}} \hat{\Sigma} \sqrt{1 + \frac{1}{n} + \frac{(x^* - \bar{x})^2}{S_{xx}}} \right)
> \end{aligned}
> $$

> [!note] Confronto tra Confidenza e Predizione
> L'intervallo di predizione per la singola osservazione $Y^*$ è strettamente più ampio dell'intervallo di confidenza per il valore atteso $\mathbb{E}[Y^*]$.
> Ciò è dovuto al fatto che l'intervallo di predizione deve includere non soltanto l'incertezza legata alla stima dei parametri $a$ e $b$ (tramite $\hat{A}$ e $\hat{B}$), ma anche la variabilità intrinseca del nuovo errore casuale $E^* \sim N(0, \sigma^2)$, che contribuisce con il termine $+1$ sotto la radice quadrata.

## Regressione Lineare Multipla

### Formulazione Vettoriale e Matriciale

> [!definition] Modello di Regressione Lineare Multipla
> Sia $\mathbf{Y} \in \mathbb{R}^n$ un vettore aleatorio di dati sperimentali di dimensione $n$. Si suppone una relazione lineare con $k$ regressori:
> $$
> \begin{aligned}
> Y_i = \beta_0 + \beta_1 x_{i,1} + \beta_2 x_{i,2} + \dots + \beta_k x_{i,k} + E_i \quad \forall i = 1, \dots, n
> \end{aligned}
> $$
> con errori casuali $E_1, \dots, E_n \sim N(0, \sigma^2)$ indipendenti e identicamente distribuiti.
> 
> Definendo:
> - la **matrice dei dati osservati** (o matrice del disegno):
>   $$
>   \begin{aligned}
>   X = \begin{bmatrix}
>   1 & x_{11} & x_{12} & \dots & x_{1k} \\
>   \vdots & \vdots & \vdots & \ddots & \vdots \\
>   1 & x_{n1} & x_{n2} & \dots & x_{nk}
>   \end{bmatrix} \in \mathrm{Mat}_{\mathbb{R}}(n, k+1)
>   \end{aligned}
>   $$
> - il **vettore degli errori**:
>   $$
>   \begin{aligned}
>   \mathbf{E} = \begin{bmatrix} E_1 \\ \vdots \\ E_n \end{bmatrix} \in \mathbb{R}^n
>   \end{aligned}
>   $$
> - il **vettore dei coefficienti di regressione**:
>   $$
>   \begin{aligned}
>   \boldsymbol{\beta} = \begin{bmatrix} \beta_0 \\ \beta_1 \\ \vdots \\ \beta_k \end{bmatrix} \in \mathbb{R}^{k+1}
>   \end{aligned}
>   $$
> 
> Il modello si esprime nella **forma vettoriale compatta**:
> $$
> \begin{aligned}
> \mathbf{Y} = X \boldsymbol{\beta} + \mathbf{E}
> \end{aligned}
> $$

### Stimatore dei Minimi Quadrati Ordinari (OLS)

> [!theorem] Vettore degli Stimatori OLS
> Assumendo che la matrice $X$ abbia rango massimo per colonne pari a $k+1$ (ossia che $X^T X$ sia invertibile), il vettore degli stimatori di minimi quadrati dei parametri $(\beta_0, \dots, \beta_k)$ è dato da:
> $$
> \begin{aligned}
> \mathbf{\hat{B}} = (X^T X)^{-1} X^T \mathbf{Y}
> \end{aligned}
> $$

> [!note] Corrispondenza con il Caso Monodimensionale ($k=1$)
> La formulazione matriciale generalizza direttamente il caso della regressione semplice $k=1$:
> - $X^T \mathbf{Y}$ ricopre lo stesso ruolo del termine di covarianza $S_{xy}$;
> - $X^T X$ ricopre lo stesso ruolo della varianza del regressore $S_{xx}$.
> 
> Infatti, per $k=1$, calcolando esplicitamente la matrice $(X^T X)^{-1} X^T \mathbf{Y}$, si ritrova:
> $$
> \begin{aligned}
> (X^T X)^{-1} X^T \mathbf{Y} = \begin{bmatrix} \hat{A} \\ \hat{B} \end{bmatrix} = \begin{bmatrix} \bar{y} - \frac{S_{xy}}{S_{xx}}\bar{x} \\ \frac{S_{xy}}{S_{xx}} \end{bmatrix}
> \end{aligned}
> $$

### Decomposizione della Varianza e Bontà di Adattamento Multipla

> [!definition] Somme dei Quadrati nel Modello Multiplo
> Analogamente al caso semplice, si definiscono:
> - la somma dei quadrati residui:
>   $$
>   \begin{aligned}
>   SS_e := \sum_{i=1}^n (Y_i - \hat{Y}_i)^2 = (\mathbf{Y} - X \mathbf{\hat{B}})^T (\mathbf{Y} - X \mathbf{\hat{B}})
>   \end{aligned}
>   $$
> - la somma dei quadrati della regressione:
>   $$
>   \begin{aligned}
>   SS_r := \sum_{i=1}^n (\bar{Y} - \hat{Y}_i)^2
>   \end{aligned}
>   $$
> - il coefficiente di determinazione multiplo:
>   $$
>   \begin{aligned}
>   r^2 := \frac{SS_r}{SS_e + SS_r}
>   \end{aligned}
>   $$

### Proprietà Statistiche degli Stimatori Multipli

> [!theorem] Proprietà degli Stimatori nel Modello Multiplo
> Sotto le ipotesi gaussiane standard per il modello di regressione multipla:
> 1. $\mathbf{\hat{B}}$ è uno **stimatore non distorto** del vettore dei coefficienti $\boldsymbol{\beta}$:
>    $$
>    \begin{aligned}
>    \mathbb{E}[\hat{B}_j] = \beta_j \quad \forall j = 0, \dots, k \implies \mathbb{E}[\mathbf{\hat{B}}] = \boldsymbol{\beta}
>    \end{aligned}
>    $$
> 2. La **matrice di covarianza** di $\mathbf{\hat{B}}$ è data da:
>    $$
>    \begin{aligned}
>    \mathbb{V}[\mathbf{\hat{B}}] = \sigma^2 (X^T X)^{-1}
>    \end{aligned}
>    $$
> 3. Lo stimatore non distorto della varianza $\sigma^2$ è dato da:
>    $$
>    \begin{aligned}
>    \hat{\Sigma}^2 := \frac{SS_e}{n - k - 1}, \qquad \text{con } \mathbb{E}[\hat{\Sigma}^2] = \sigma^2
>    \end{aligned}
>    $$
> 4. Per ciascun singolo coefficiente $j \in \{0, \dots, k\}$, la statistica standardizzata segue una distribuzione $t$ di Student:
>    $$
>    \begin{aligned}
>    \frac{\hat{B}_j - \beta_j}{\hat{\Sigma} \sqrt{(X^T X)^{-1}_{jj}}} \sim t(n - k - 1)
>    \end{aligned}
>    $$
>    dove $(X^T X)^{-1}_{jj}$ rappresenta il $j$-esimo elemento diagonale della matrice inversa $(X^T X)^{-1}$.

### Errore Standard, Intervalli di Confidenza e $R^2$ Corretto

> [!definition] Errore Standard di $\hat{B}_j$
> L'errore standard stimato del generico stimatore $\hat{B}_j$ è definito da:
> $$
> \begin{aligned}
> \mathrm{se}(\hat{B}_j) := \hat{\Sigma} \sqrt{(X^T X)^{-1}_{jj}}
> \end{aligned}
> $$

> [!proposition] Intervalli di Confidenza per i Singoli Coefficienti $\beta_j$
> Per ogni parametro $\beta_j$ ($j = 0, \dots, k$), l'intervallo di confidenza a livello $1-\alpha$ è:
> $$
> \begin{aligned}
> I_{1-\alpha} = \left( \hat{B}_j - t_{n-k-1, 1-\frac{\alpha}{2}} \, \mathrm{se}(\hat{B}_j), \; \hat{B}_j + t_{n-k-1, 1-\frac{\alpha}{2}} \, \mathrm{se}(\hat{B}_j) \right)
> \end{aligned}
> $$

> [!definition] Coefficiente di Determinazione Corretto ($R_A^2$ / Adjusted $R^2$)
> Un aspetto critico che differenzia la regressione multipla da quella semplice risiede nel comportamento di $r^2$: strutturalmente, aggiungendo ulteriori variabili esplicative al modello, la somma dei quadrati residui $SS_e$ non può aumentare, per cui $r^2$ cresce monotonicamente anche se le nuove variabili aggiunte hanno una correlazione pressoché inesistente con la risposta.
> 
> Per penalizzare l'inclusione di regressori non significativi e correggere per i gradi di libertà del modello, si introduce il coefficiente di determinazione corretto:
> $$
> \begin{aligned}
> R_A^2 := 1 - (1 - r^2) \frac{n - 1}{n - k - 1}
> \end{aligned}
> $$
