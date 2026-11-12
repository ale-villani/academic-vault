---
title: "Campi Vettoriali, Forme Differenziali e Teoremi Integrali"
domain: "math/differential-forms"
source_course: "Analisi 2 (Cap. 7, 9)"
tags:
  - math/forms/differential-forms
  - math/vector-calculus/conservative-fields
---

# 7. Integrali di Linea e Campi Vettoriali

## 7.1. Integrali di linea di prima specie (lungo curve)

L'integrazione per funzioni a più variabili estende il concetto fondamentale dell'integrale di Riemann a diverse classi di campi (scalari e vettoriali) e a molteplici varietà geometriche differenziabili immerse in $\mathbb{R}^n$:

1. **Integrali di campi scalari:** $f: \mathbb{R}^n \to \mathbb{R}$ (densità di massa, cariche elettriche, potenziale).
2. **Integrali di campi vettoriali:** $\mathbf{F}: \mathbb{R}^n \to \mathbb{R}^m$ (lavoro di una forza, circolazione, flussi).

Tali integrali si articolano su differenti domini di integrazione:
- **Curve** unidimensionali in $\mathbb{R}^n$ (integrali di linea o curvilinei di I e II specie).
- **Sottoinsiemi compatti** di $\mathbb{R}^n$ (integrali multipli: doppi su domini piani, tripli su volumi solidi).
- **Superfici** bidimensionali orientate in $\mathbb{R}^3$ (integrali di superficie e flussi di campi vettoriali).

Obiettivo primario della teoria è stabilire le profonde **relazioni integrali di dualità** tra le proprietà differenziali locali del campo e i valori al bordo dei domini (Teorema di Green, Teorema della Divergenza o di Gauss, Teorema del Rotore o di Stokes).

### Motivazione fisica: massa di un filo non omogeneo

Si consideri un filo materiale sottile il cui supporto geometrico è descritto da una curva continua $\gamma$ nello spazio tridimensionale, caratterizzato da una densità lineare di massa eterogenea $\rho(s)$ (massa per unità di lunghezza).

Immaginiamo inizialmente che la curva $\gamma$ sia parametrizzata tramite la sua naturale **ascissa curvilinea** (parametro d'arco):
$$
\mathbf{r}(s), \quad s \in [0, L]
$$
dove $L$ è la lunghezza totale della curva.
Un elemento infinitesimo di arco $ds$ apporta un contributo infinitesimo di massa pari a:
$$
dm = \rho(s) \, ds
$$
Integrando lungo l'intera estensione del filo, la massa totale $M$ è data da:
$$
M = \int_0^L \rho(s) \, ds
$$

Cosa accade se la curva $\mathbf{r}$ non è espressa tramite il parametro d'arco naturale $s$, bensì tramite una generica parametrizzazione $t \in [a, b]$?
Dalla definizione di ascissa curvilinea sappiamo che:
$$
s(t) = \int_a^t \|\mathbf{r}'(\tau)\| \, d\tau \implies s'(t) = \frac{ds}{dt} = \|\mathbf{r}'(t)\|
$$
Pertanto l'elemento d'arco infinitesimo si esprime come:
$$
ds = \|\mathbf{r}'(t)\| \, dt
$$
Operando il cambio di variabile nell'integrale, si ottiene:
$$
M = \int_a^b \rho(s(t)) \|\mathbf{r}'(t)\| \, dt
$$
dove $\mathbf{r}: [a, b] \to \mathbb{R}^n$ è la parametrizzazione della curva considerata.

### Definizione rigorosa di integrale di linea di I specie

Generalizzando la motivazione fisica a un campo scalare integrabile qualunque:

> [!definition] Integrale di linea di I specie
> Sia $\mathbf{r}: [a, b] \to \mathbb{R}^n$ una curva regolare (o regolare a tratti) con sostegno $\gamma = \mathbf{r}([a, b])$.
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione scalare continua (o limitata e integrabile), con $\gamma \subseteq A$.
> Si definisce **integrale di linea di I specie** di $f$ lungo la curva $\gamma$ la quantità:
> $$
> \int_\gamma f \, ds := \int_a^b f(\mathbf{r}(t)) \|\mathbf{r}'(t)\| \, dt
> $$
> purché tale integrale esista finito.

> [!note] Invarianza per riparametrizzazione e verso di percorrenza
> L'integrale di linea di I specie è un integrale di tipo geometrico scalare: il suo valore **non dipende dalla parametrizzazione scelta** per rappresentare la curva $\gamma$, né dipende dall'orientazione (verso di percorrenza) assegnata alla curva:
> $$
> \int_{\gamma^-} f \, ds = \int_\gamma f \, ds
> $$
>
### Applicazioni geometriche e meccaniche

> [!example] Esempio 1: Centro di massa di un filo materiale curvilineo
> Sia dato un filo sottile materiale disposto lungo la curva $\gamma$ avente densità lineare di massa $\rho(s)$.
> Le coordinate del **centro di massa** $\mathbf{r}_{\mathrm{CM}} = (x_{\mathrm{CM}}, y_{\mathrm{CM}}, z_{\mathrm{CM}})$ sono definite come le medie ponderate delle coordinate rispetto alla massa totale $M = \int_\gamma \rho(s) \, ds$:
> $$
> x_{\mathrm{CM}} = \frac{1}{M} \int_\gamma x \, \rho(s) \, ds
> y_{\mathrm{CM}} = \frac{1}{M} \int_\gamma y \, \rho(s) \, ds
> z_{\mathrm{CM}} = \frac{1}{M} \int_\gamma z \, \rho(s) \, ds
> $$

> [!example] Esempio 2: Momento d'inerzia rispetto a un asse di rotazione
> Sia $d(x, y, z)$ la distanza geometrica di ciascun punto materiale $(x, y, z) \in \gamma$ da un prefissato asse di rotazione nello spazio. Il **momento d'inerzia** $I$ del filo rispetto a tale asse è dato da:
> $$
> I = \int_\gamma d^2(x, y, z) \, \rho(s) \, ds
> $$
>

### Definizione e forma canonica

> [!definition] Integrale di linea di II specie (Lavoro di un campo vettoriale)
> Sia $\mathbf{F}: D \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un campo vettoriale continuo ($\mathbf{F} \in C^0(D)$) definito su un aperto connesso $D \subseteq \mathbb{R}^3$, e sia $\mathbf{r}: [a, b] \to \mathbb{R}^3$ una curva regolare con sostegno $\gamma \subseteq D$.
>
## 7.2. Integrali di linea di seconda specie (Lavoro di un campo vettoriale e forme differenziali)

### Definizione di integrale di linea

> [!definition] Integrale di linea di seconda specie (Lavoro)
> Sia data una funzione vettoriale (campo vettoriale) $\mathbf{F}: D \subseteq \mathbb{R}^n \to \mathbb{R}^n$, continua sull'aperto connesso $D$ ($\mathbf{F} \in C^0(D)$), e sia $\mathbf{r}: [a,b] \to \mathbb{R}^n$ una curva regolare con sostegno $\gamma \subseteq D$.
> Si definisce **integrale di linea di seconda specie** di $\mathbf{F}$ lungo $\gamma$ (o **lavoro** compiuto da $\mathbf{F}$ lungo $\gamma$):
> $$
> \int_\gamma \mathbf{F} \cdot d\mathbf{r} := \int_a^b \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \, dt
> $$
> a patto che tale integrale esista finito.

> [!note] Osservazioni
> 1. La definizione è identica e valida in qualunque dimensione per campi vettoriali $\mathbf{F}: D \subseteq \mathbb{R}^n \to \mathbb{R}^n$ e curve in $\mathbb{R}^n$.
> 2. Se la curva $\mathbf{r}$ è **chiusa** ($\mathbf{r}(a) = \mathbf{r}(b)$), l'integrale di linea prende il nome specifico di **circuitazione** del campo $\mathbf{F}$ lungo la curva $\gamma$, e viene indicato formalmente con il simbolo:
>    $$
>    \oint_\gamma \mathbf{F} \cdot d\mathbf{r}
>    $$

> [!example] Esempio (Lavoro della forza peso lungo una traiettoria parabolica)
> Consideriamo la forza peso costante diretta lungo la verticale:
> $$
> \mathbf{F} = -mg\,\hat{k} = \begin{pmatrix} 0 \\ 0 \\ -mg \end{pmatrix}
> $$
> e sia percorsa la curva parabolica:
> $$
> \mathbf{r}(t) = \begin{pmatrix} 0 \\ t \\ t^2 \end{pmatrix}, \quad t \in [0, \sqrt{h}]
> $$
> Il vettore tangente alla traiettoria è dato dalla derivata:
> $$
> \mathbf{r}'(t) = \begin{pmatrix} 0 \\ 1 \\ 2t \end{pmatrix}
> $$
> Il lavoro $W$ compiuto dalla forza peso lungo il cammino $\gamma$ risulta:
> $$
> \begin{aligned}
> W = \int_\gamma \mathbf{F} \cdot d\mathbf{r} &= \int_0^{\sqrt{h}} -mg\,\hat{k} \cdot \begin{pmatrix} 0 \\ 1 \\ 2t \end{pmatrix} dt \\
> &= \int_0^{\sqrt{h}} (-mg \cdot 2t) \, dt \\
> &= -mg \left[ t^2 \right]_0^{\sqrt{h}} = -mgh
> \end{aligned}
> $$

> [!note] Differenze strutturali tra integrali di prima e di seconda specie
> - **Integrali di I specie:** L'integrale $\int_\gamma f \, ds$ dipende unicamente dalla geometria del sostegno $\gamma$; è **invariante per cambi di orientazione** (percorrendo la curva in verso opposto il valore rimane inalterato).
> - **Integrali di II specie:** Il lavoro è sensibile al **verso di percorrenza** della traiettoria; invertendo il senso di marcia della curva, l'integrale cambia di segno:
>   $$
>   \int_{-\gamma} \mathbf{F} \cdot d\mathbf{r} = -\int_\gamma \mathbf{F} \cdot d\mathbf{r}
>   $$

> [!example] Esempio (Circuitazione lungo una circonferenza nel piano)
> Sia assegnata la circonferenza di raggio $R$ percorsa in senso antiorario:
> $$
> \mathbf{r}(\theta) = \begin{pmatrix} R \cos\theta \\ R \sin\theta \end{pmatrix}, \quad \theta \in [0, 2\pi]
> $$
> con vettore velocità:
> $$
> \mathbf{r}'(\theta) = \begin{pmatrix} -R \sin\theta \\ R \cos\theta \end{pmatrix}
> $$
> e consideriamo il campo vettoriale (vortice piano con singolarità nell'origine):
> $$
> \mathbf{A}(x,y) = \left( -\frac{y}{x^2+y^2}, \, \frac{x}{x^2+y^2} \right)
> $$
> Calcoliamo la circuitazione del campo $\mathbf{A}$ lungo $\gamma$:
> $$
> \begin{aligned}
> \oint_\gamma \mathbf{A} \cdot d\mathbf{r} &= \int_0^{2\pi} \left( -\frac{R \sin\theta}{R^2 \cos^2\theta + R^2 \sin^2\theta}, \, \frac{R \cos\theta}{R^2 \cos^2\theta + R^2 \sin^2\theta} \right) \cdot \begin{pmatrix} -R \sin\theta \\ R \cos\theta \end{pmatrix} d\theta \\
> &= \int_0^{2\pi} \left( -\frac{R \sin\theta}{R^2}, \, \frac{R \cos\theta}{R^2} \right) \cdot \begin{pmatrix} -R \sin\theta \\ R \cos\theta \end{pmatrix} d\theta \\
> &= \int_0^{2\pi} \left( \sin^2\theta + \cos^2\theta \right) d\theta \\
> &= \int_0^{2\pi} 1 \, d\theta = 2\pi
> \end{aligned}
> $$
> Il valore della circuitazione è rigorosamente $2\pi$, **indipendente dal raggio** $R$ della circonferenza.
>

### Forme differenziali lineari (1-forme)

Sia data una curva regolare in $\mathbb{R}^3$, $\mathbf{r}: [a,b] \to \mathbb{R}^3$, parametrizzata da $\mathbf{r}(t) = \begin{pmatrix} x(t) \\ y(t) \\ z(t) \end{pmatrix}$.
L'integrale di linea di un campo $\mathbf{F} = (F_x, F_y, F_z) = (F_1, F_2, F_3)$ si scrive esplicitamente sviluppando il prodotto scalare:
$$
\begin{aligned}
\int_\gamma \mathbf{F} \cdot d\mathbf{r} &= \int_a^b \mathbf{F}(x,y,z) \cdot \begin{pmatrix} x'(t) \\ y'(t) \\ z'(t) \end{pmatrix} dt \\
&= \int_a^b F_x \, x'(t) \, dt + \int_a^b F_y \, y'(t) \, dt + \int_a^b F_z \, z'(t) \, dt \\
&= \int_{x(a)}^{x(b)} F_x \, dx + \int_{y(a)}^{y(b)} F_y \, dy + \int_{z(a)}^{z(b)} F_z \, dz \\
&= \int_\gamma F_1 \, dx + F_2 \, dy + F_3 \, dz
\end{aligned}
$$
La quantità formale:
$$
\omega := \mathbf{F} \cdot d\mathbf{r} = F_x \, dx + F_y \, dy + F_z \, dz
$$
prende il nome di **forma differenziale lineare** (o $1$-forma differenziale).
In questo formalismo:
$$
\int_\gamma \mathbf{F} \cdot d\mathbf{r} = \int_\gamma \omega
$$
rappresenta il lavoro infinitesimo lungo il cammino orientato.
Anche il differenziale di una funzione scalare $df(\mathbf{x}_0)$ è una forma differenziale. I simboli $dx, dy, dz$ possono essere rigorosamente interpretati come i differenziali delle funzioni proiezione coordinate:
$$
\mathbf{x} = \begin{pmatrix} x \\ 0 \\ 0 \end{pmatrix} \implies dx
$$

> [!proposition] Proprietà algebriche e geometriche delle forme differenziali
> Sia $\omega$ una forma differenziale lineare e siano $\gamma, \gamma_1, \gamma_2$ cammini regolari a tratti:
> 1. **Linearità:** Per ogni $\alpha, \beta \in \mathbb{R}$:
>    $$
>    \int_\gamma (\alpha \omega_1 + \beta \omega_2) = \alpha \int_\gamma \omega_1 + \beta \int_\gamma \omega_2
>    $$
> 2. **Additività rispetto all'unione di cammini:** Se un cammino è ottenuto concatenando due tratti consecutivi $\gamma = \gamma_1 \cup \gamma_2$:
>    $$
>    \int_{\gamma_1 \cup \gamma_2} \omega = \int_{\gamma_1} \omega + \int_{\gamma_2} \omega
>    $$
> 3. **Invarianza per riparametrizzazioni:** L'integrale $\int_\gamma \omega$ è invariante per qualsiasi cambio di parametrizzazione equivalente (avente lo stesso verso), mentre assume valore opposto per parametrizzazioni opposte:
>    $$
>    \int_{-\gamma} \omega = -\int_\gamma \omega
>    $$
>
## 7.3. Campi conservativi, potenziale e forme differenziali esatte

### Definizione di campo conservativo e potenziale

Nel caso della forza peso, il lavoro è indipendente dal cammino percorso proprio perché la forza peso è conservativa. Ci proponiamo di formalizzare e generalizzare rigorosamente questa proprietà.

> [!definition] Campo conservativo, potenziale ed esattezza
> Sia $\mathbf{F}: D \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un campo vettoriale di classe $C^1(D)$ definito su un aperto connesso $D$.
> Il campo $\mathbf{F}$ si dice **conservativo** se esiste una funzione scalare $U: D \to \mathbb{R}$ di classe $C^2(D)$ tale che:
> $$
> \mathbf{F} = \nabla U
> $$
> La funzione scalare $U$ prende il nome di **funzione potenziale** (o potenziale matematico).
> La forma differenziale $\omega$ associata a un campo conservativo è detta **forma differenziale esatta**, ossia:
> $$
> \omega = dU
> $$
> In ambito fisico, l'energia potenziale è definita a meno di un segno convenzionale come $V := -U$, da cui $\mathbf{F} = -\nabla V$.
>
### Teorema fondamentale per gli integrali di linea

> [!theorem] Integrazione di campi conservativi
> Sia $D \subseteq \mathbb{R}^n$ un aperto connesso e sia $\mathbf{F} \in C^1(D)$ un campo vettoriale conservativo con potenziale $U \in C^2(D)$, ovvero $\mathbf{F} = \nabla U$.
> Sia inoltre $\mathbf{r}: [a,b] \to \mathbb{R}^n$ una curva regolare a tratti con sostegno $\gamma \subseteq D$.
> Allora l'integrale di linea di $\mathbf{F}$ lungo $\gamma$ dipende esclusivamente dai punti iniziale e finale della traiettoria:
> $$
> \int_\gamma \mathbf{F} \cdot d\mathbf{r} = U(\mathbf{r}(b)) - U(\mathbf{r}(a))
> $$
> In particolare, per ogni curva chiusa $\gamma$ ($\mathbf{r}(a) = \mathbf{r}(b)$), la circuitazione è identicamente nulla:
> $$
> \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = 0
> $$

> [!quote]- Dimostrazione
> **Passo 1 (Curva regolare):**
> Sia $\mathbf{r}: [a,b] \to \mathbb{R}^n$ una curva regolare di classe $C^1$. Applicando la definizione di integrale di linea e la regola di derivazione per funzioni composte (chain rule):
> $$
> \int_\gamma \mathbf{F} \cdot d\mathbf{r} = \int_a^b \mathbf{F}(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \, dt = \int_a^b \nabla U(\mathbf{r}(t)) \cdot \mathbf{r}'(t) \, dt
> $$
> Riconosciamo nell'integrando la derivata temporale totale della funzione scalare $t \mapsto U(\mathbf{r}(t))$:
> $$
> \frac{d}{dt} \Big( U(\mathbf{r}(t)) \Big) = \nabla U(\mathbf{r}(t)) \cdot \mathbf{r}'(t)
> $$
> Applicando il Primo Teorema Fondamentale del Calcolo Integrale:
> $$
> \int_a^b \frac{d}{dt} \Big( U(\mathbf{r}(t)) \Big) dt = U(\mathbf{r}(b)) - U(\mathbf{r}(a))
> $$
> **Passo 2 (Curva regolare a tratti):**
> Se $\mathbf{r}$ è regolare a tratti, sia $\gamma = \bigcup_{i=1}^N \gamma_i$ una partizione del cammino in archi regolari $\gamma_i = \mathbf{r}([t_{i-1}, t_i])$, con $a = t_0 < t_1 < \dots < t_N = b$.
> Applicando la proprietà di additività dell'integrale e il risultato del Passo 1 a ciascun singolo tratto:
> $$
> \int_\gamma \mathbf{F} \cdot d\mathbf{r} = \sum_{i=1}^N \int_{\gamma_i} \mathbf{F} \cdot d\mathbf{r} = \sum_{i=1}^N \Big( U(\mathbf{r}(t_i)) - U(\mathbf{r}(t_{i-1})) \Big)
> $$
> La sommatoria è una somma telescopica:
> $$
> \sum_{i=1}^N \Big( U(\mathbf{r}(t_i)) - U(\mathbf{r}(t_{i-1})) \Big) = U(\mathbf{r}(t_N)) - U(\mathbf{r}(t_0)) = U(\mathbf{r}(b)) - U(\mathbf{r}(a))
> $$
> Se la curva è chiusa, gli estremi coincidono ($\mathbf{r}(b) = \mathbf{r}(a)$), da cui segue immediatamente:
> $$
> \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = U(\mathbf{r}(b)) - U(\mathbf{r}(b)) = 0
> $$
> Il che conclude la dimostrazione. $\blacksquare$
>
### Caratterizzazione dei campi conservativi

> [!theorem] Teorema di caratterizzazione dei campi conservativi
> Sia $D \subseteq \mathbb{R}^n$ un aperto connesso e sia $\mathbf{F} \in C^1(D)$ un campo vettoriale.
> Le seguenti tre proprietà sono mutualmente **equivalenti**:
> 1. $\mathbf{F}$ è un **campo conservativo**, ossia esiste $U \in C^2(D)$ tale che $\mathbf{F} = \nabla U$.
> 2. Per ogni curva chiusa regolare a tratti $\gamma \subseteq D$, la circuitazione si annulla:
>    $$
>    \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = 0
>    $$
> 3. L'integrale di linea è **indipendente dal cammino**: per ogni coppia di curve regolari a tratti $\gamma_1, \gamma_2 \subseteq D$ aventi gli stessi punti iniziale e finale, si ha:
>    $$
>    \int_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} = \int_{\gamma_2} \mathbf{F} \cdot d\mathbf{r}
>    $$

> [!quote]- Dimostrazione
> **Implicazione $(1 \implies 2)$:**
> È una conseguenza diretta del teorema fondamentale per gli integrali di linea: se $\mathbf{F} = \nabla U$, per ogni curva chiusa $\gamma$ con estremi $\mathbf{r}(a) = \mathbf{r}(b)$:
> $$
> \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = U(\mathbf{r}(b)) - U(\mathbf{r}(a)) = 0
> $$
> 
> **Implicazione $(2 \implies 3)$:**
> Siano $\gamma_1$ e $\gamma_2$ due curve regolari aventi lo stesso punto di partenza $\mathbf{P}_a$ e lo stesso punto di arrivo $\mathbf{P}_b$.
> Costruiamo la curva $\tilde{\gamma}_2 = -\gamma_2$, che possiede il medesimo sostegno geometrico di $\gamma_2$ ma viene percorsa in verso opposto (da $\mathbf{P}_b$ verso $\mathbf{P}_a$).
> La curva unione $\gamma := \gamma_1 \cup \tilde{\gamma}_2$ è una curva chiusa interamente contenuta in $D$.
> Applicando l'ipotesi (2):
> $$
> \oint_{\gamma_1 \cup \tilde{\gamma}_2} \mathbf{F} \cdot d\mathbf{r} = 0 \implies \int_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} + \int_{\tilde{\gamma}_2} \mathbf{F} \cdot d\mathbf{r} = 0
> $$
> Poiché invertendo il verso di percorrenza l'integrale di linea cambia segno, $\int_{\tilde{\gamma}_2} \mathbf{F} \cdot d\mathbf{r} = -\int_{\gamma_2} \mathbf{F} \cdot d\mathbf{r}$, otteniamo:
> $$
> \int_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} - \int_{\gamma_2} \mathbf{F} \cdot d\mathbf{r} = 0 \implies \int_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} = \int_{\gamma_2} \mathbf{F} \cdot d\mathbf{r}
> $$
> 
> **Implicazione $(3 \implies 1)$:**
> Dobbiamo esplicitamente costruire la funzione potenziale $U(\mathbf{x})$.
> Fissiamo un punto arbitrario di riferimento $\mathbf{P}_0 \in D$. Poiché $D$ è aperto e connesso, esso è connesso per archi; perciò per ogni punto $\mathbf{x} \in D$ esiste almeno una curva regolare a tratti $\gamma$ che congiunge $\mathbf{P}_0$ ad $\mathbf{x}$ ($\mathbf{r}(a) = \mathbf{P}_0, \mathbf{r}(b) = \mathbf{x}$).
> Poiché per l'ipotesi (3) l'integrale è indipendente dal particolare cammino scelto che collega $\mathbf{P}_0$ ad $\mathbf{x}$, possiamo definire in modo ben posto la funzione scalare:
> $$
> U(\mathbf{x}) := \int_\gamma \mathbf{F} \cdot d\mathbf{r}
> $$
> Dimostriamo che $U$ è derivabile e che il suo gradiente coincide con $\mathbf{F}$.
> Valutiamo la derivata parziale $\frac{\partial U}{\partial x_i}(\mathbf{x})$ calcolando il limite del rapporto incrementale lungo la direzione dell' $i$-esimo versore canonico $\mathbf{e}_i$:
> Sia $h \in \mathbb{R}$ sufficientemente piccolo affinché il segmento congiungente $\mathbf{x}$ a $\mathbf{x} + h\mathbf{e}_i$ sia interamente contenuto in $D$ (aperto).
> Parametrizziamo tale segmento rettilineo $\gamma_i$ mediante:
> $$
> \mathbf{r}_i(t) = \mathbf{x} + t h \mathbf{e}_i = \begin{pmatrix} x_1 \\ \vdots \\ x_i + th \\ \vdots \\ x_n \end{pmatrix}, \quad t \in [0, 1]
> $$
> Il cui vettore velocità vale:
> $$
> \mathbf{r}_i'(t) = h \mathbf{e}_i = \begin{pmatrix} 0 \\ \vdots \\ h \\ \vdots \\ 0 \end{pmatrix}
> $$
> Per raggiungere $\mathbf{x} + h\mathbf{e}_i$ a partire da $\mathbf{P}_0$, scegliamo il cammino composto $\gamma \cup \gamma_i$. Per l'additività dell'integrale di linea:
> $$
> U(\mathbf{x} + h\mathbf{e}_i) - U(\mathbf{x}) = \int_{\gamma \cup \gamma_i} \mathbf{F} \cdot d\mathbf{r} - \int_\gamma \mathbf{F} \cdot d\mathbf{r} = \int_{\gamma_i} \mathbf{F} \cdot d\mathbf{r}
> $$
> Sviluppando l'integrale lungo il segmento $\gamma_i$:
> $$
> \int_{\gamma_i} \mathbf{F} \cdot d\mathbf{r} = \int_0^1 \mathbf{F}(\mathbf{x} + th\mathbf{e}_i) \cdot (h \mathbf{e}_i) \, dt = \int_0^1 F_i(\mathbf{x} + th\mathbf{e}_i) \, h \, dt
> $$
> Calcolando la derivata parziale mediante il limite per $h \to 0$:
> $$
> \frac{\partial U}{\partial x_i}(\mathbf{x}) = \lim_{h \to 0} \frac{U(\mathbf{x} + h\mathbf{e}_i) - U(\mathbf{x})}{h} = \lim_{h \to 0} \int_0^1 F_i(\mathbf{x} + th\mathbf{e}_i) \, dt
> $$
> Poiché $\mathbf{F} \in C^1(D)$, la componente $F_i$ è continua su $D$ e uniformemente continua sui compatti. Possiamo pertanto passare al limite sotto il segno di integrale:
> $$
> \frac{\partial U}{\partial x_i}(\mathbf{x}) = \int_0^1 \lim_{h \to 0} F_i(\mathbf{x} + th\mathbf{e}_i) \, dt = \int_0^1 F_i(\mathbf{x}) \, dt = F_i(\mathbf{x}) [1 - 0] = F_i(\mathbf{x})
> $$
> Poiché questo vale per ogni indice $i = 1, \dots, n$:
> $$
> \nabla U(\mathbf{x}) = \begin{pmatrix} F_1(\mathbf{x}) \\ \vdots \\ F_n(\mathbf{x}) \end{pmatrix} = \mathbf{F}(\mathbf{x})
> $$
> Essendo $\mathbf{F} \in C^1(D)$, le derivate parziali di $U$ sono continue con le loro derivate prime, dunque $U \in C^2(D)$. $\blacksquare$
>
## 7.4. Rotore e campi irrotazionali (condizione necessaria di conservatività)

### Rotore in dimensione 3

Verificare la conservatività integrando su tutti i cammini o calcolando direttamente il potenziale può risultare oneroso. Introduciamo pertanto un operatore differenziale locale che fornisce una condizione necessaria di immediata applicazione.

> [!definition] Operatore Rotore
> Sia $\mathbf{F}: D \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un campo vettoriale di classe $C^1(D)$. Si definisce il **rotore** di $\mathbf{F}$ (notazione: $\mathrm{rot}\mathbf{F}$ oppure $\nabla \times \mathbf{F}$) il campo vettoriale tridimensionale espresso formalmente dal determinante simbolico:
> $$
> \mathrm{rot}\mathbf{F} = \nabla \times \mathbf{F} := \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ \partial_x & \partial_y & \partial_z \\ F_1 & F_2 & F_3 \end{vmatrix} = \begin{pmatrix} \partial_y F_3 - \partial_z F_2 \\ \partial_z F_1 - \partial_x F_3 \\ \partial_x F_2 - \partial_y F_1 \end{pmatrix}
> $$

> [!note] Significato intuitivo del rotore
> Dal punto di vista geometrico e cinematico, il vettore $\nabla \times \mathbf{F}$ quantifica la vorticità infinitesima locale del campo $\mathbf{F}$, ovvero l'intensità e l'orientazione dell'asse di rotazione infinitesima generata dal campo attorno a ciascun punto $\mathbf{x}$.

> [!example] Esempio cinematico (Fluido in rotazione rigida)
> Consideriamo un fluido che ruota rigidamente attorno all'asse $z$ con velocità angolare uniforme $\boldsymbol{\omega} = \omega\,\hat{k}$.
> Il vettore posizione di una particella fluida nel piano $xy$ è $\mathbf{x} = \begin{pmatrix} x \\ y \\ 0 \end{pmatrix}$.
> Il campo di velocità lineare $\mathbf{v}$ è dato dal prodotto vettoriale:
> $$
> \mathbf{v} = \boldsymbol{\omega} \wedge \mathbf{x} = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ 0 & 0 & \omega \\ x & y & 0 \end{vmatrix} = -\omega \begin{vmatrix} \hat{i} & \hat{j} \\ x & y \end{vmatrix} = \begin{pmatrix} -\omega y \\ \omega x \\ 0 \end{pmatrix}
> $$
> Calcoliamo il rotore del campo di velocità lineare $\mathbf{v}$:
> $$
> \begin{aligned}
> \nabla \times \mathbf{v} &= \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ \partial_x & \partial_y & \partial_z \\ -\omega y & \omega x & 0 \end{vmatrix} \\
> &= \hat{i} \big( \partial_y(0) - \partial_z(\omega x) \big) - \hat{j} \big( \partial_x(0) - \partial_z(-\omega y) \big) + \hat{k} \big( \partial_x(\omega x) - \partial_y(-\omega y) \big) \\
> &= \hat{k} (\omega - (-\omega)) = 2\omega\,\hat{k}
> \end{aligned}
> $$
> Il rotore di un moto circolare rigido coincide esattamente con il doppio del vettore velocità angolare: $\mathrm{rot}\mathbf{v} = 2\boldsymbol{\omega}$.
>

### Condizione necessaria di irrotazionalità

> [!definition] Campo irrotazionale
> Sia $\mathbf{F}: D \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un campo di classe $C^1(D)$. Il campo si dice **irrotazionale** se il suo rotore è identicamente nullo in ogni punto di $D$:
> $$
> \nabla \times \mathbf{F} = \mathbf{0} \quad \forall \mathbf{x} \in D
> $$

> [!theorem] Condizione necessaria per la conservatività
> Sia $D \subseteq \mathbb{R}^3$ un aperto connesso e sia $\mathbf{F} \in C^1(D)$.
> Se $\mathbf{F}$ è un campo conservativo, allora $\mathbf{F}$ è necessariamente irrotazionale:
> $$
> \mathbf{F} \text{ conservativo} \implies \nabla \times \mathbf{F} = \mathbf{0}
> $$

> [!quote]- Dimostrazione
> Poiché $\mathbf{F}$ è conservativo, esiste un potenziale scalare $U \in C^2(D)$ tale che $\mathbf{F} = \nabla U$, ovvero:
> $$
> F_1 = \partial_x U, \quad F_2 = \partial_y U, \quad F_3 = \partial_z U
> $$
> Calcolando le componenti del rotore di $\mathbf{F}$:
> $$
> \nabla \times \mathbf{F} = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ \partial_x & \partial_y & \partial_z \\ \partial_x U & \partial_y U & \partial_z U \end{vmatrix} = \begin{pmatrix} \partial_y(\partial_z U) - \partial_z(\partial_y U) \\ \partial_z(\partial_x U) - \partial_x(\partial_z U) \\ \partial_x(\partial_y U) - \partial_y(\partial_x U) \end{pmatrix} = \begin{pmatrix} \partial_{yz}^2 U - \partial_{zy}^2 U \\ \partial_{zx}^2 U - \partial_{xz}^2 U \\ \partial_{xy}^2 U - \partial_{yx}^2 U \end{pmatrix}
> $$
> Essendo $U \in C^2(D)$, per il **Teorema di Schwarz** sull'uguaglianza delle derivate miste:
> $$
> \partial_{yz}^2 U = \partial_{zy}^2 U, \quad \partial_{zx}^2 U = \partial_{xz}^2 U, \quad \partial_{xy}^2 U = \partial_{yx}^2 U
> $$
> Ciascuna componente si annulla identicamente:
> $$
> \nabla \times \mathbf{F} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} = \mathbf{0} \quad \blacksquare
> $$

> [!example] Esempio (L'irrotazionalità è condizione solo necessaria e non sufficiente)
> Consideriamo il campo vorticoso piano introdotto in precedenza, esteso a $\mathbb{R}^3$:
> $$
> \mathbf{F}(x,y,z) = \left( -\frac{y}{x^2+y^2}, \, \frac{x}{x^2+y^2}, \, 0 \right)
> $$
> definito su $D = \mathbb{R}^3 \setminus \{(0,0,z) : z \in \mathbb{R}\}$ (lo spazio privato dell'asse $z$).
> Calcoliamo il rotore del campo:
> $$
> \nabla \times \mathbf{F} = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ \partial_x & \partial_y & \partial_z \\ -\frac{y}{x^2+y^2} & \frac{x}{x^2+y^2} & 0 \end{vmatrix}
> $$
> Le derivate rispetto a $z$ sono nulle e la terza componente è zero, per cui le componenti lungo $\hat{i}$ e $\hat{j}$ sono identicamente nulle.
> Calcoliamo la componente lungo $\hat{k}$:
> $$
> \begin{aligned}
> \frac{\partial}{\partial x}\left( \frac{x}{x^2+y^2} \right) - \frac{\partial}{\partial y}\left( -\frac{y}{x^2+y^2} \right) &= \frac{1(x^2+y^2) - x(2x)}{(x^2+y^2)^2} + \frac{1(x^2+y^2) - y(2y)}{(x^2+y^2)^2} \\
> &= \frac{y^2-x^2}{(x^2+y^2)^2} + \frac{x^2-y^2}{(x^2+y^2)^2} = 0
> \end{aligned}
> $$
> Dunque:
> $$
> \nabla \times \mathbf{F} = \mathbf{0} \quad \text{in tutto } D
> $$
> Tuttavia, abbiamo precedentemente verificato che lungo una circonferenza $\gamma$ che circonda l'asse $z$:
> $$
> \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = 2\pi \neq 0
> $$
> Dunque il campo **non è conservativo** su $D$, nonostante sia ovunque irrotazionale.
>
> **Tentativo di calcolo del potenziale:**
> Proviamo ad integrare formalmente le componenti del campo cercando un potenziale scalare $U(x,y)$:
> $$
> U(x,y) = \arctan\left(\frac{y}{x}\right)
> $$
> Derivando:
> $$
> \frac{\partial U}{\partial x} = \frac{1}{1 + \left(\frac{y}{x}\right)^2} \cdot \left( -\frac{y}{x^2} \right) = \frac{x^2}{x^2+y^2} \left( -\frac{y}{x^2} \right) = -\frac{y}{x^2+y^2}
> \frac{\partial U}{\partial y} = \frac{1}{1 + \left(\frac{y}{x}\right)^2} \cdot \left( \frac{1}{x} \right) = \frac{x^2}{x^2+y^2} \left( \frac{1}{x} \right) = \frac{x}{x^2+y^2}
> $$
> Abbiamo apparentemente trovato una funzione potenziale!
> Tuttavia, la funzione $\arctan(y/x)$ è definita unicamente per $x \neq 0$, ovvero sull'aperto sconnesso $\mathbb{R}^2 \setminus \{x = 0\}$. Il campo $\mathbf{F}$ è invece definito sul dominio forato $\mathbb{R}^2 \setminus \{(0,0)\}$.
> Ne consegue che:
> - $\mathbf{F}$ è conservativo su $\mathbb{R}^2 \setminus \{x = 0\}$ (e su ogni semipiano o settore angolare aperto che non compia un giro completo attorno all'origine);
> - $\mathbf{F}$ **non è conservativo** sull'intero aperto forato $\mathbb{R}^2 \setminus \{(0,0)\}$.

> [!important] Dipendenza topologica della conservatività
> La conservatività di un campo irrotazionale **dipende crucialmente dalla topologia del dominio di definizione**! Affinché l'irrotazionalità garantisca la conservatività globale, il dominio non deve presentare "buchi" attorno ai quali il campo possa circuitare.
>
## 7.5. Omotopia, domini semplicemente connessi e Lemma di Poincaré

### Curve omotope e deformazione continua

> [!definition] Curve omotope
> Siano $\mathbf{r}_1, \mathbf{r}_2: [a,b] \to \mathbb{R}^3$ due curve continue aventi i medesimi punti estremi fissati:
> $$
> \mathbf{r}_1(a) = \mathbf{r}_2(a) = \mathbf{P}_a, \quad \mathbf{r}_1(b) = \mathbf{r}_2(b) = \mathbf{P}_b
> $$
> Le due curve si dicono **omotope** in $E \subseteq \mathbb{R}^3$ a estremi fissi se esiste un'applicazione continua:
> $$
> \boldsymbol{\Phi}: [a,b] \times [0,1] \to E
> $$
> tale che:
> 1. $\boldsymbol{\Phi}(a, \lambda) = \mathbf{P}_a, \quad \boldsymbol{\Phi}(b, \lambda) = \mathbf{P}_b \quad \forall \lambda \in [0,1]$;
> 2. $\boldsymbol{\Phi}(t, 0) = \mathbf{r}_1(t), \quad \boldsymbol{\Phi}(t, 1) = \mathbf{r}_2(t) \quad \forall t \in [a,b]$;
> 3. L'immagine della deformazione appartiene interamente a $E$: $\mathrm{Im}\{\boldsymbol{\Phi}\} \subseteq E$.

> [!note] Significato qualitativo
> Due curve sono omotope se l'una può essere trasformata e deformata nell'altra con continuità attraverso una famiglia continua di traiettorie $\boldsymbol{\Phi}(\cdot, \lambda)$ rimanendo sempre all'interno del dominio $E$ e senza mai muovere i punti estremi $A$ e $B$.
>
### Insiemi semplicemente connessi e Teorema di Poincaré

> [!definition] Insieme semplicemente connesso
> Un insieme aperto e connesso $\Omega \subseteq \mathbb{R}^n$ si dice **semplicemente connesso** se verifica una delle seguenti condizioni equivalenti:
> 1. Due curve qualsiasi contenute in $\Omega$ aventi gli stessi punti iniziale e finale sono omotope in $\Omega$.
> 2. Ogni curva chiusa contenuta in $\Omega$ è omotopa a una curva costante (ossia ogni laccio può essere contratto con continuità ad un punto senza mai uscire da $\Omega$).

> [!theorem] Teorema di Poincaré
> Sia $D \subseteq \mathbb{R}^3$ un aperto **semplicemente connesso** e sia $\mathbf{F} \in C^1(D)$ un campo vettoriale.
> Sotto tali ipotesi, $\mathbf{F}$ è conservativo se e solo se è irrotazionale:
> $$
> \nabla \times \mathbf{F} = \mathbf{0} \iff \mathbf{F} \text{ è conservativo}
> $$

> [!note] Osservazioni su intorni e conservatività locale
> 1. **Conservatività locale:** Sia $\mathbf{x}_0 \in A \subseteq \mathbb{R}^n$ con $A$ aperto connesso. Ogni intorno sferico $I = B_r(\mathbf{x}_0) \subseteq A$ è un insieme convesso, quindi banalmente semplicemente connesso. Pertanto, se $\nabla \times \mathbf{F} = \mathbf{0}$ su $I$, il campo $\mathbf{F}$ è **sempre localmente conservativo** su $I$.
> 2. **Conservatività su domini con buchi:** La condizione di semplice connessione è sufficiente, ma non strettamente necessaria affinché un dato campo irrotazionale ammetta potenziale globale: esistono campi che risultano conservativi anche su domini non semplicemente connessi, purché la loro circuitazione lungo qualsiasi curva chiusa che circonda i buchi sia nulla.
>
### Determinazione pratica del potenziale

> [!example] Esempio (Integrazione indefinita a cascata)
> Consideriamo il campo vettoriale piano:
> $$
> \mathbf{F}(x,y) = \begin{pmatrix} 4x + 2y \\ 2x - 6y \end{pmatrix}
> $$
> definito su $D = \mathbb{R}^2$ (aperto semplicemente connesso).
> Verifichiamo l'irrotazionalità:
> $$
> \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} = \frac{\partial}{\partial x}(2x - 6y) - \frac{\partial}{\partial y}(4x + 2y) = 2 - 2 = 0 \implies \nabla \times \mathbf{F} = \mathbf{0}
> $$
> Il campo è conservativo. Cerchiamo una funzione $U(x,y)$ tale che $\nabla U = \mathbf{F}$.
> Integrando rispetto a $x$:
> $$
> \frac{\partial U}{\partial x} = 4x + 2y \implies U(x,y) = \int (4x + 2y) \, dx = 2x^2 + 2xy + g(y)
> $$
> dove $g(y)$ è un'arbitraria funzione differenziabile che dipende unicamente da $y$ ($\frac{\partial}{\partial x} g(y) = 0$).
> Integrando invece rispetto a $y$:
> $$
> \frac{\partial U}{\partial y} = 2x - 6y \implies U(x,y) = \int (2x - 6y) \, dy = 2xy - 3y^2 + h(x)
> $$
> dove $h(x)$ dipende unicamente da $x$.
> Uguagliando le due espressioni ottenute per $U(x,y)$:
> $$
> 2x^2 + 2xy + g(y) = 2xy - 3y^2 + h(x)
> $$
> Semplificando il termine comune $2xy$:
> $$
> 2x^2 + g(y) = -3y^2 + h(x) \implies h(x) = 2x^2, \quad g(y) = -3y^2
> $$
> Otteniamo la famiglia di funzioni potenziale:
> $$
> U(x,y) = 2x^2 + 2xy - 3y^2 + C, \quad C \in \mathbb{R}
> $$
>
> **Metodo alternativo (Calcolo del potenziale mediante integrale di linea):**
> Poiché il campo è conservativo, possiamo integrare $\mathbf{F}$ lungo un cammino a piacere congiungente l'origine $(0,0,0)$ al generico punto $(x,y,z)$.
> Scegliendo una spezzata poligonale con lati paralleli agli assi coordinati:
> $$
> U(x,y,z) = \int_0^x F_x(t, 0, 0) \, dt + \int_0^y F_y(x, t, 0) \, dt + \int_0^z F_z(x, y, t) \, dt
> $$
> oppure scegliendo il segmento radiale parametrizzato da $\mathbf{r}(t) = \begin{pmatrix} tx \\ ty \\ tz \end{pmatrix}$ con $t \in [0,1]$:
> $$
> U(x,y,z) = \int_0^1 \mathbf{F}(tx, ty, tz) \cdot \begin{pmatrix} x \\ y \\ z \end{pmatrix} dt
> $$
>

# 9. Teoremi Integrali dell'Analisi Vettoriale

## 9.1. Formule di Gauss-Green nel piano e calcolo di aree

In dimensione 1, il Teorema Fondamentale del Calcolo Integrale stabilisce una connessione diretta tra l'integrale della derivata di una funzione $F \in C^1([a,b])$ e i valori assunti dalla primitiva sulla frontiera del dominio:
$$
\int_a^b F'(x)\,dx = F(b) - F(a) = [F(x)]_{\partial [a,b]}
$$
Le formule di Gauss-Green costituiscono la naturale estensione al piano bidimensionale di tale principio, collegando l'integrale doppio delle derivate parziali di un campo vettoriale su un dominio $D \subset \mathbb{R}^2$ con l'integrale curvilineo lungo la frontiera orientata $\partial^+ D$.

### Lemma preliminare per domini semplici

> [!lemma] Formule di Gauss-Green per domini normali
> Sia $D \subset \mathbb{R}^2$ un dominio limitato la cui frontiera $\partial D$ sia parametrizzata da una curva di Jordan regolare a tratti orientata positivamente (lasciando il dominio a sinistra durante la percorrenza), denotata con $\partial^+ D$.
> Sia $\mathbf{F} \in C^1(D, \mathbb{R}^2)$ un campo vettoriale piano di componenti:
> $$
> \mathbf{F}(x,y) = \begin{pmatrix} P(x,y) \\ Q(x,y) \end{pmatrix}
> $$
> Valgono le seguenti identità:
> 1. Se $D$ è normale rispetto all'asse $x$ ($x$-semplice):
>    $$
>    \iint_D \frac{\partial P}{\partial y}\,dx\,dy = -\int_{\partial^+ D} P\,dx
>    $$
> 2. Se $D$ è normale rispetto all'asse $y$ ($y$-semplice):
>    $$
>    \iint_D \frac{\partial Q}{\partial x}\,dx\,dy = \int_{\partial^+ D} Q\,dy
>    $$

> [!quote]- Dimostrazione
> **Punto (a) — Dominio normale rispetto all'asse $x$:**
> L'insieme $D$ è descritto nella forma:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : x \in [a,b], \; g_1(x) \le y \le g_2(x) \right\}
> $$
> con $g_1, g_2 \in C^0([a,b])$ derivabili a tratti.
> Applicando la formula di riduzione per linee verticali all'integrale doppio:
> $$
> \iint_D \frac{\partial P}{\partial y}\,dx\,dy = \int_a^b \left[ \int_{g_1(x)}^{g_2(x)} \frac{\partial P}{\partial y}(x,y)\,dy \right] dx
> $$
> Per il Teorema Fondamentale del Calcolo Integrale applicato alla variabile $y$:
> $$
> \int_{g_1(x)}^{g_2(x)} \frac{\partial P}{\partial y}(x,y)\,dy = P(x, g_2(x)) - P(x, g_1(x))
> $$
> Ne segue:
> $$
> \iint_D \frac{\partial P}{\partial y}\,dx\,dy = \int_a^b \left[ P(x, g_2(x)) - P(x, g_1(x)) \right] dx
> $$
> Esaminiamo ora la frontiera orientata $\partial^+ D$. Essa si scompone in quattro curve orientate $\partial^+ D = \gamma_1 \cup \gamma_2 \cup \gamma_3 \cup \gamma_4$:
> - $\gamma_1$: segmento verticale sinistro $x = a$, parametrizzato da $\mathbf{r}_1(t) = \begin{pmatrix} a \\ t \end{pmatrix}$ con $t$ che va da $g_2(a)$ a $g_1(a)$ (orientato verso il basso).
> - $\gamma_2$: bordo inferiore $y = g_1(x)$, parametrizzato da $\mathbf{r}_2(t) = \begin{pmatrix} t \\ g_1(t) \end{pmatrix}$ con $t \in [a,b]$ (orientato da sinistra a destra).
> - $\gamma_3$: segmento verticale destro $x = b$, parametrizzato da $\mathbf{r}_3(t) = \begin{pmatrix} b \\ t \end{pmatrix}$ con $t$ da $g_1(b)$ a $g_2(b)$ (orientato verso l'alto).
> - $\gamma_4$: bordo superiore $y = g_2(x)$, parametrizzato da $\mathbf{r}_4(t) = \begin{pmatrix} t \\ g_2(t) \end{pmatrix}$ con $t$ da $b$ ad $a$ (orientato da destra a sinistra).
> 
> Lungo i segmenti verticali $\gamma_1$ e $\gamma_3$ si ha $x(t) = \text{costante}$, quindi la forma differenziale $P\,dx = P(x(t), y(t))\,x'(t)\,dt = 0$:
> $$
> \int_{\gamma_1} P\,dx = 0, \quad \int_{\gamma_3} P\,dx = 0
> $$
> L'integrale lungo l'intero bordo orientato si riduce quindi ai soli tratti orizzontali:
> $$
> \int_{\partial^+ D} P\,dx = \int_{\gamma_2} P\,dx + \int_{\gamma_4} P\,dx = \int_a^b P(x, g_1(x))\,dx + \int_b^a P(x, g_2(x))\,dx
> $$
> Invertendo gli estremi del secondo integrale:
> $$
> \int_{\partial^+ D} P\,dx = \int_a^b P(x, g_1(x))\,dx - \int_a^b P(x, g_2(x))\,dx = -\int_a^b \left[ P(x, g_2(x)) - P(x, g_1(x)) \right] dx
> $$
> Confrontando con l'espressione dell'integrale doppio precedentemente calcolata:
> $$
> \iint_D \frac{\partial P}{\partial y}\,dx\,dy = -\int_{\partial^+ D} P\,dx
> $$
> 
> **Punto (b) — Dominio normale rispetto all'asse $y$:**
> L'insieme $D$ è descritto nella forma:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : y \in [c,d], \; h_1(y) \le x \le h_2(y) \right\}
> $$
> con $h_1, h_2 \in C^0([c,d])$. Riducendo per linee orizzontali:
> $$
> \iint_D \frac{\partial Q}{\partial x}\,dx\,dy = \int_c^d \left[ \int_{h_1(y)}^{h_2(y)} \frac{\partial Q}{\partial x}(x,y)\,dx \right] dy = \int_c^d \left[ Q(h_2(y), y) - Q(h_1(y), y) \right] dy
> $$
> Decomponendo il bordo orientato $\partial^+ D$ nei quattro archi:
> - Lungo i tratti orizzontali $y = \text{costante}$, $dy = 0$, per cui $\int Q\,dy = 0$.
> - Lungo il tratto destro $x = h_2(y)$, $y$ varia da $c$ a $d$ (verso l'alto).
> - Lungo il tratto sinistro $x = h_1(y)$, $y$ varia da $d$ a $c$ (verso il basso).
> 
> Calcolando la circuitazione della forma $Q\,dy$:
> $$
> \int_{\partial^+ D} Q\,dy = \int_c^d Q(h_2(y), y)\,dy + \int_d^c Q(h_1(y), y)\,dy = \int_c^d \left[ Q(h_2(y), y) - Q(h_1(y), y) \right] dy
> $$
> Ne consegue immediatamente l'identità cercata:
> $$
> \iint_D \frac{\partial Q}{\partial x}\,dx\,dy = \int_{\partial^+ D} Q\,dy \quad \blacksquare
> $$
>
### Teorema di Gauss-Green

Sottraendo membro a membro le due identità del lemma per un dominio semplice sia rispetto a $x$ che rispetto a $y$, si ottiene l'enunciato generale.

> [!theorem] Teorema delle formule di Gauss-Green
> Sia $D \subset \mathbb{R}^2$ un dominio limitato e regolare a tratti, e sia $\mathbf{F} = \begin{pmatrix} P \\ Q \end{pmatrix} \in C^1(D, \mathbb{R}^2)$. Allora:
> $$
> \iint_D \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dx\,dy = \int_{\partial^+ D} P\,dx + Q\,dy
> $$
> dove il bordo $\partial^+ D$ è percorso lasciando sempre $D$ alla propria sinistra.

> [!note] Estensione a domini a connessione multipla e partizioni
> Il teorema si estende a domini decomponibili nell'unione di un numero finito di domini semplici $D = \bigcup_k D_k$:
> - **Domini semplicemente connessi:** Quando si sommano gli integrali sui singoli sottoinsiemi $D_k$, i tratti di frontiera interni comuni vengono percorsi due volte in versi opposti; i rispettivi integrali curvilinei si elidono esattamente, lasciando attiva unicamente la circuitazione sul bordo esterno $\partial D$.
> - **Domini con buchi (a connessione multipla):** La frontiera complessiva $\partial D$ include sia la curva esterna (orientata in senso antiorario), sia le curve chiuse che delimitano ciascun buco interno (orientate in senso orario, in modo da mantenere sempre il dominio alla sinistra del vettore tangente).
>
### Calcolo dell'area tramite integrali di linea

Applicando Gauss-Green a campi vettoriali particolari tali che $\frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} = 1$, l'area di una figura piana si esprime come integrale curvilineo lungo il suo perimetro:
1. Ponendo $P(x,y) = 0$ e $Q(x,y) = x$:
   $$
   |D|_2 = \iint_D 1\,dx\,dy = \int_{\partial^+ D} x\,dy
   $$
2. Ponendo $P(x,y) = -y$ e $Q(x,y) = 0$:
   $$
   |D|_2 = \iint_D 1\,dx\,dy = -\int_{\partial^+ D} y\,dx
   $$
3. Combinando linearmente le due scelte (forma simmetrica):
   $$
   |D|_2 = \frac{1}{2} \int_{\partial^+ D} (x\,dy - y\,dx)
   $$

> [!example] Esempio (Area dell'ellisse)
> Si determini l'area della regione racchiusa dall'ellisse $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$.
> Parametrizzando la frontiera $\partial^+ D$ per $t \in [0, 2\pi]$:
> $$
> \mathbf{r}(t) = \begin{pmatrix} a\cos t \\ b\sin t \end{pmatrix} \implies dx = -a\sin t\,dt, \quad dy = b\cos t\,dt
> $$
> Applicando la prima formula d'area con $x\,dy$:
> $$
> |D|_2 = \int_{\partial^+ D} x\,dy = \int_0^{2\pi} (a\cos t)(b\cos t)\,dt = ab \int_0^{2\pi} \cos^2 t\,dt
> $$
> Utilizzando l'identità trigonometrica $\cos^2 t = \frac{1 + \cos 2t}{2}$:
> $$
> |D|_2 = ab \int_0^{2\pi} \frac{1 + \cos 2t}{2}\,dt = ab \left[ \frac{t}{2} + \frac{\sin 2t}{4} \right]_0^{2\pi} = ab [\pi + 0] = \pi ab
> $$
>

## 9.2. Teorema di Stokes nel piano e significato fisico del rotore

Consideriamo un campo piano esteso a 3 dimensioni aggiungendo una terza componente nulla e dipendenza dalle sole variabili $(x,y)$:
$$
\mathbf{F}(x,y,z) = \begin{pmatrix} P(x,y) \\ Q(x,y) \\ 0 \end{pmatrix}
$$
Il rotore di tale campo è un vettore puramente verticale:
$$
\nabla \times \mathbf{F} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ \partial_x & \partial_y & \partial_z \\ P & Q & 0 \end{vmatrix} = \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \hat{k}
$$
Il prodotto scalare con il versore normale al piano $\hat{k} = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}$ restituisce esattamente l'integrando di Gauss-Green:
$$
(\nabla \times \mathbf{F}) \cdot \hat{k} = \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}
$$

> [!note] Teorema del rotore bidimensionale (Teorema di Stokes nel piano)
> L'identità di Gauss-Green si riscrive in forma vettoriale invariante:
> $$
> \int_{\partial^+ D} \mathbf{F} \cdot d\mathbf{r} = \iint_D (\nabla \times \mathbf{F}) \cdot \hat{k} \, dx\,dy
> $$
> La componente normale del rotore rappresenta quindi la **densità superficiale di circuitazione** del campo vettoriale $\mathbf{F}$.
>
### Limite locale della circuitazione e significato puntuale del rotore

Per comprendere il significato fisico puntuale del rotore in un punto $\mathbf{x}_0 \in D$, si consideri come dominio un disco circolare $B_R(\mathbf{x}_0)$ di raggio $R$ centrato in $\mathbf{x}_0$:
$$
\oint_{\partial^+ B_R(\mathbf{x}_0)} \mathbf{F} \cdot d\mathbf{r} = \iint_{B_R(\mathbf{x}_0)} (\nabla \times \mathbf{F}) \cdot \hat{k} \, dx\,dy
$$
Dividendo ambo i membri per l'area del disco $|B_R(\mathbf{x}_0)| = \pi R^2$:
$$
\frac{1}{\pi R^2} \oint_{\partial^+ B_R(\mathbf{x}_0)} \mathbf{F} \cdot d\mathbf{r} = \frac{1}{|B_R(\mathbf{x}_0)|} \iint_{B_R(\mathbf{x}_0)} (\nabla \times \mathbf{F}) \cdot \hat{k} \, dx\,dy
$$
Passando al limite per $R \to 0^+$, per il teorema della media integrale per funzioni continue si ottiene il valore esatto nel centro:
$$
\lim_{R \to 0^+} \frac{1}{\pi R^2} \iint_{B_R(\mathbf{x}_0)} (\nabla \times \mathbf{F}) \cdot \hat{k} \, dx\,dy = (\nabla \times \mathbf{F}(\mathbf{x}_0)) \cdot \hat{k}
$$
Si ottiene la fondamentale definizione intrinseca del rotore:
$$
(\nabla \times \mathbf{F}(\mathbf{x}_0)) \cdot \hat{k} = \lim_{R \to 0^+} \frac{1}{|B_R(\mathbf{x}_0)|} \oint_{\partial^+ B_R(\mathbf{x}_0)} \mathbf{F} \cdot d\mathbf{r}
$$

### Invarianza omotopica della circuitazione per campi irrotazionali

Sia $\mathbf{F} \in C^1(D)$ un campo irrotazionale, ossia $\nabla \times \mathbf{F} = \mathbf{0}$ su tutto $D$.
Consideriamo un dominio a forma di corona $D$ delimitato da due curve chiuse semplici $\gamma_1$ (bordo esterno, percorso in senso antiorario) e $\gamma_2$ (bordo interno, percorso in senso orario nella frontiera orientata $\partial^+ D$):
$$
\iint_D (\nabla \times \mathbf{F}) \cdot \hat{k} \, dx\,dy = 0
$$
Applicando Gauss-Green:
$$
\int_{\partial^+ D} \mathbf{F} \cdot d\mathbf{r} = \oint_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} - \oint_{\gamma_2} \mathbf{F} \cdot d\mathbf{r} = 0
$$
dove $\oint_{\gamma_2}$ è calcolato con orientazione antioraria standard (il segno meno deriva dall'orientazione negativa di $\gamma_2$ come componente interna di $\partial^+ D$). Ne consegue:
$$
\oint_{\gamma_1} \mathbf{F} \cdot d\mathbf{r} = \oint_{\gamma_2} \mathbf{F} \cdot d\mathbf{r}
$$

> [!note] Invarianza della circuitazione per omotopia
> Per campi irrotazionali, la circuitazione lungo una curva chiusa dipende unicamente dalla classe di omotopia della curva (ossia da quali "buchi" del dominio essa circonda), e non dalla sua specifica geometria.
> Se il dominio $D$ è **semplicemente connesso** (privo di buchi), ogni curva chiusa può essere contratta a un punto senza uscire dal dominio, da cui discende:
> $$
> \oint_\gamma \mathbf{F} \cdot d\mathbf{r} = 0 \quad \forall \gamma \subset D \text{ chiusa}
> $$
> che garantisce la conservatività del campo su tutto $D$.
>
## 9.3. Integrali di superficie di campi scalari e calcolo di aree di superfici

Si estende la teoria dell'integrazione da curve unidimensionali a varietà bidimensionali immerse nello spazio tridimensionale.

### Superfici parametriche regolari e misura d'area

> [!definition] Superficie regolare parametrica
> Si definisce **superficie regolare** un'applicazione $\mathbf{r} : D \subseteq \mathbb{R}^2 \to \mathbb{R}^3$, di classe $C^1(D)$, definita sui parametri $(u,v)$, il cui insieme immagine $\Sigma = \mathbf{r}(D)$ è detto **sostegno** della superficie, tale che:
> 1. Il dominio $D \subset \mathbb{R}^2$ sia limitato e misurabile secondo Peano-Jordan.
> 2. $\mathbf{r}$ sia semplice, ovvero iniettiva sulla parte interna $\mathring{D}$.
> 3. Il prodotto vettoriale fondamentale soddisfi la condizione di non-degenerazione:
>    $$
>    \|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\| \ne 0 \quad \forall (u,v) \in \mathring{D}
>    $$
>    e la quantità $\|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\|$ sia limitata su $D$.
>
I vettori tangenti alle linee coordinate sono:
$$
\partial_u \mathbf{r} = \begin{pmatrix} \frac{\partial x}{\partial u} \\ \frac{\partial y}{\partial u} \\ \frac{\partial z}{\partial u} \end{pmatrix}, \quad \partial_v \mathbf{r} = \begin{pmatrix} \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial v} \\ \frac{\partial z}{\partial v} \end{pmatrix}
$$
Il loro prodotto vettoriale definisce il vettore normale locale:
$$
\partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ \frac{\partial x}{\partial u} & \frac{\partial y}{\partial u} & \frac{\partial z}{\partial u} \\ \frac{\partial x}{\partial v} & \frac{\partial y}{\partial v} & \frac{\partial z}{\partial v} \end{vmatrix}
$$

> [!definition] Area di una superficie regolare
> Si definisce **area** della superficie $\Sigma = \mathbf{r}(D)$ la quantità:
> $$
> a(\Sigma) := \iint_\Sigma d\sigma = \iint_D \|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\| \, du\,dv
> $$

> [!note] Interpretazione geometrica dell'elemento d'area
> L'elemento d'area $d\sigma = \|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\|\,du\,dv$ rappresenta l'area del parallelogramma generato dai vettori differenziali tangenti $\partial_u \mathbf{r}\,du$ e $\partial_v \mathbf{r}\,dv$ nel piano tangente alla superficie. Esso agisce come fattore puntuale di conversione tra l'area euclidea $du\,dv$ nel piano dei parametri e l'area curvata nello spazio $\mathbb{R}^3$, analogamente al determinante jacobiano $|\det D\boldsymbol{\Phi}|$ nei cambi di variabile bidimensionali.
>
### Esempi notevoli di calcolo dell'area

> [!example] Esempio 1: Area della superficie sferica di raggio $R$
> La sfera $S_R(\mathbf{0})$ si parametrizza in coordinate sferiche con raggio fisso $R$:
> $$
> \mathbf{s}(u,v) = \begin{pmatrix} R\sin u \cos v \\ R\sin u \sin v \\ R\cos u \end{pmatrix}, \quad u \in [0,\pi], \; v \in [0, 2\pi]
> $$
> Calcoliamo le derivate parziali rispetto a $u$ (colatitudine) e $v$ (longitudine):
> $$
> \partial_u \mathbf{s} = R \begin{pmatrix} \cos u \cos v \\ \cos u \sin v \\ -\sin u \end{pmatrix}, \quad \partial_v \mathbf{s} = R \begin{pmatrix} -\sin u \sin v \\ \sin u \cos v \\ 0 \end{pmatrix}
> $$
> Eseguiamo il prodotto vettoriale fondamentale:
> $$
> \partial_u \mathbf{s} \times \partial_v \mathbf{s} = R^2 \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ \cos u \cos v & \cos u \sin v & -\sin u \\ -\sin u \sin v & \sin u \cos v & 0 \end{vmatrix}
> $$
> Sviluppando lungo la terza riga/colonna:
> $$
> \partial_u \mathbf{s} \times \partial_v \mathbf{s} = R^2 \Big( \hat{\imath} (\sin^2 u \cos v) + \hat{\jmath} (\sin^2 u \sin v) + \hat{k} (\sin u \cos u \cos^2 v + \sin u \cos u \sin^2 v) \Big)
> = R^2 \begin{pmatrix} \sin^2 u \cos v \\ \sin^2 u \sin v \\ \sin u \cos u \end{pmatrix}
> $$
> Calcoliamo la norma euclidea:
> $$
> \|\partial_u \mathbf{s} \times \partial_v \mathbf{s}\| = R^2 \sqrt{\sin^4 u \cos^2 v + \sin^4 u \sin^2 v + \sin^2 u \cos^2 u} = R^2 \sqrt{\sin^4 u + \sin^2 u \cos^2 u}
> = R^2 \sqrt{\sin^2 u (\sin^2 u + \cos^2 u)} = R^2 \sqrt{\sin^2 u} = R^2 |\sin u|
> $$
> Poiché $u \in [0,\pi]$, si ha $\sin u \ge 0$, dunque $\|\partial_u \mathbf{s} \times \partial_v \mathbf{s}\| = R^2 \sin u$.
> L'area totale vale:
> $$
> a(S_R) = \int_0^\pi \int_0^{2\pi} R^2 \sin u \, dv\,du = R^2 (2\pi) \int_0^\pi \sin u\,du = 2\pi R^2 [-\cos u]_0^\pi = 2\pi R^2 (1 - (-1)) = 4\pi R^2
> $$

> [!example] Esempio 2: Area del toro
> Il toro geometrico ottenuto ruotando una circonferenza di raggio $r$ posta a distanza $R$ ($R > r$) dall'asse $z$ ammette la parametrizzazione:
> $$
> \mathbf{r}(u,v) = \begin{pmatrix} (R + r\cos v)\cos u \\ (R + r\cos v)\sin u \\ r\sin v \end{pmatrix}, \quad u \in [0, 2\pi], \; v \in [0, 2\pi]
> $$
> I vettori tangenti sono:
> $$
> \partial_u \mathbf{r} = \begin{pmatrix} -(R + r\cos v)\sin u \\ (R + r\cos v)\cos u \\ 0 \end{pmatrix}, \quad \partial_v \mathbf{r} = \begin{pmatrix} -r\sin v \cos u \\ -r\sin v \sin u \\ r\cos v \end{pmatrix}
> $$
> Il prodotto vettoriale fondamentale risulta:
> $$
> \partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ -(R+r\cos v)\sin u & (R+r\cos v)\cos u & 0 \\ -r\sin v \cos u & -r\sin v \sin u & r\cos v \end{vmatrix}
> $$
> Calcolando le singole componenti:
> $$
> \partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{pmatrix} r(R+r\cos v)\cos u \cos v \\ r(R+r\cos v)\sin u \cos v \\ r(R+r\cos v)\sin v (\sin^2 u + \cos^2 u) \end{pmatrix} = r(R+r\cos v) \begin{pmatrix} \cos u \cos v \\ \sin u \cos v \\ \sin v \end{pmatrix}
> $$
> La norma del vettore normale è:
> $$
> \|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\| = r(R+r\cos v) \sqrt{\cos^2 v (\cos^2 u + \sin^2 u) + \sin^2 v} = r(R+r\cos v)\sqrt{\cos^2 v + \sin^2 v} = r(R+r\cos v)
> $$
> Integrando sul dominio parametrico $[0,2\pi] \times [0,2\pi]$:
> $$
> a(T) = \int_0^{2\pi} \left[ \int_0^{2\pi} r(R+r\cos v)\,du \right] dv = 2\pi r \int_0^{2\pi} (R+r\cos v)\,dv = 2\pi r [Rv + r\sin v]_0^{2\pi} = 4\pi^2 r R
> $$

> [!example] Esempio 3: Area della superficie laterale del cono
> Si consideri il cono circolare retto $\Gamma = \left\{ (x,y,z) \in \mathbb{R}^3 : z = \sqrt{x^2+y^2}, \; (x,y) \in B_R(\mathbf{0}), \; z \le h \right\}$ (con $h=R$).
> Utilizzando le coordinate polari $(\rho, \theta)$ per il piano $(x,y)$:
> $$
> \mathbf{r}(\rho, \theta) = \begin{pmatrix} \rho\cos\theta \\ \rho\sin\theta \\ \rho \end{pmatrix}, \quad \rho \in [0,R], \; \theta \in [0, 2\pi]
> $$
> Le derivate parziali valgono:
> $$
> \partial_\rho \mathbf{r} = \begin{pmatrix} \cos\theta \\ \sin\theta \\ 1 \end{pmatrix}, \quad \partial_\theta \mathbf{r} = \begin{pmatrix} -\rho\sin\theta \\ \rho\cos\theta \\ 0 \end{pmatrix}
> $$
> Il prodotto vettoriale fondamentale è:
> $$
> \partial_\rho \mathbf{r} \times \partial_\theta \mathbf{r} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ \cos\theta & \sin\theta & 1 \\ -\rho\sin\theta & \rho\cos\theta & 0 \end{vmatrix} = \hat{k}\rho - \left[ \rho\cos\theta\,\hat{\imath} + \rho\sin\theta\,\hat{\jmath} \right] = \begin{pmatrix} -\rho\cos\theta \\ -\rho\sin\theta \\ \rho \end{pmatrix}
> $$
> Il vettore si annulla unicamente nel vertice $\rho = 0$, che appartiene alla frontiera del dominio dei parametri, lasciando intatta la regolarità della superficie su $\mathring{D}$.
> Il modulo dell'elemento d'area è:
> $$
> \|\partial_\rho \mathbf{r} \times \partial_\theta \mathbf{r}\| = \sqrt{(-\rho\cos\theta)^2 + (-\rho\sin\theta)^2 + \rho^2} = \sqrt{\rho^2 + \rho^2} = \sqrt{2}\rho
> $$
> L'area vale pertanto:
> $$
> |\Gamma|_2 = \int_0^{2\pi} \int_0^R \sqrt{2}\rho\,d\rho\,d\theta = \sqrt{2}(2\pi) \left[ \frac{\rho^2}{2} \right]_0^R = \sqrt{2}\pi R^2
> $$
>

### Superfici cartesiane

Nel caso notevole in cui la superficie sia espressa come grafico esplicito di una funzione scalare $z = f(x,y)$ su un dominio piano $D \subseteq \mathbb{R}^2$, la parametrizzazione canonica è:
$$
\mathbf{r}(u,v) = \begin{pmatrix} u \\ v \\ f(u,v) \end{pmatrix}
$$
I vettori tangenti assumono la forma:
$$
\partial_u \mathbf{r} = \begin{pmatrix} 1 \\ 0 \\ \frac{\partial f}{\partial u} \end{pmatrix}, \quad \partial_v \mathbf{r} = \begin{pmatrix} 0 \\ 1 \\ \frac{\partial f}{\partial v} \end{pmatrix}
$$
Il prodotto vettoriale fondamentale vale:
$$
\partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ 1 & 0 & \frac{\partial f}{\partial u} \\ 0 & 1 & \frac{\partial f}{\partial v} \end{vmatrix} = \begin{pmatrix} -\frac{\partial f}{\partial u} \\ -\frac{\partial f}{\partial v} \\ 1 \end{pmatrix}
$$
e la sua norma euclidea è data da:
$$
\|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\| = \sqrt{1 + \left(\frac{\partial f}{\partial u}\right)^2 + \left(\frac{\partial f}{\partial v}\right)^2} = \sqrt{1 + \|\nabla f\|^2}
$$
L'elemento d'area di una superficie cartesiana è quindi:
$$
d\sigma = \sqrt{1 + \|\nabla f(x,y)\|^2} \, dx\,dy
$$

### Integrale di superficie di un campo scalare

> [!definition] Integrale di superficie di un campo scalare
> Sia $\mathbf{r} : D \subseteq \mathbb{R}^2 \to \mathbb{R}^3$ una superficie regolare di sostegno $\Sigma$, con $D$ misurabile e $\|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\|$ limitato. Sia $f : A \subseteq \mathbb{R}^3 \to \mathbb{R}$ una funzione scalare continua definita su un aperto $A \supseteq \Sigma$.
> Si definisce l'**integrale di superficie** di $f$ su $\Sigma$:
> $$
> \iint_\Sigma f\,d\sigma := \iint_D f(\mathbf{r}(u,v)) \, \|\partial_u \mathbf{r} \times \partial_v \mathbf{r}\| \, du\,dv
> $$

> [!example] Esempio (Carica elettrica totale su una calotta emisferica)
> Si calcoli la carica elettrica distribuita su una semisfera di raggio $R$ ($z \ge 0$) con densità superficiale di carica dipendente dalla colatitudine $\varphi \in [0, \pi/2]$:
> $$
> \varepsilon(\varphi, \theta) = k\varphi(\pi - \varphi)
> $$
> Ricordando che l'elemento d'area sulla sfera è $d\sigma = R^2 \sin\varphi\,d\varphi\,d\theta$:
> $$
> Q = \iint_\Sigma \varepsilon\,d\sigma = \int_0^{\pi/2} \left[ \int_0^{2\pi} k\varphi(\pi-\varphi) R^2 \sin\varphi\,d\theta \right] d\varphi = 2k\pi R^2 \int_0^{\pi/2} \varphi(\pi-\varphi)\sin\varphi\,d\varphi
> $$
>

## 9.4. Orientabilità delle superfici e flusso di campi vettoriali

Per poter definire l'integrale di un campo vettoriale attraverso una superficie è necessario poter assegnare in modo coerente e continuo una direzione ortogonale ("sopra/sotto" o "dentro/fuori").

### Orientabilità di una superficie

> [!definition] Superficie orientabile
> Sia $\mathbf{r} : D \subseteq \mathbb{R}^2 \to \mathbb{R}^3$ una superficie regolare con supporto $\Sigma$. La superficie si dice **orientabile** se esiste un campo continuo di versori normali:
> $$
> \boldsymbol{\nu} : \Sigma \to \mathbb{R}^3, \quad \text{con } \|\boldsymbol{\nu}(\mathbf{x})\| = 1 \quad \forall \mathbf{x} \in \Sigma
> $$

> [!example] Esempi e controesempi di orientabilità
> - **Controesempio fondamentale (Nastro di Möbius):** Costituisce l'esempio canonico di superficie non orientabile; percorrendo un giro completo lungo la linea mediana il versore normale continuo si ritrova invertito di segno. Pur possedendo un bordo regolare, non è possibile fissare un'orientazione globale.
> - **Classi notevoli di superfici orientabili:**
>   1. Tutte le superfici regolari sono **localmente orientabili**.
>   2. I grafici cartesiani $z = f(x,y)$ sono globalmente orientabili tramite il versore indotto:
>      $$
>      \boldsymbol{\nu}(x,y) = \frac{\begin{pmatrix} -\partial_x f \\ -\partial_y f \\ 1 \end{pmatrix}}{\sqrt{1 + \|\nabla f\|^2}}
>      $$
>   3. Le superfici chiuse $\Sigma = \partial\Omega$ che racchiudono un volume compatto $\Omega \subset \mathbb{R}^3$ ammettono due orientazioni globali canoniche:
>      - **Normale esterna ($\boldsymbol{\nu}_{\text{ext}}$):** diretta verso l'esterno del solido $\Omega$.
>      - **Normale interna ($\boldsymbol{\nu}_{\text{in}} = -\boldsymbol{\nu}_{\text{ext}}$):** diretta verso l'interno di $\Omega$.
>      Nel caso della sfera centrata nell'origine:
>      $$
>      \boldsymbol{\nu}_{\text{ext}} = \frac{\mathbf{r}}{R}, \quad \boldsymbol{\nu}_{\text{in}} = -\frac{\mathbf{r}}{R}
>      $$
>
### Flusso di un campo vettoriale

> [!definition] Flusso di un campo vettoriale attraverso una superficie
> Sia $\mathbf{r} : D \subseteq \mathbb{R}^2 \to \mathbb{R}^3$ una superficie regolare e orientata di sostegno $\Sigma$, con versore normale $\boldsymbol{\nu}$. Sia $\mathbf{F} : A \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un campo vettoriale continuo definito su un aperto $A \supseteq \Sigma$.
> Si definisce il **flusso** di $\mathbf{F}$ attraverso $\Sigma$ la quantità scalare:
> $$
> \Phi_\Sigma(\mathbf{F}) := \iint_\Sigma \mathbf{F} \cdot \boldsymbol{\nu} \, d\sigma
> $$
> In coordinate parametriche, poiché $\boldsymbol{\nu} \, d\sigma = \pm (\partial_u \mathbf{r} \times \partial_v \mathbf{r}) \, du\,dv$, scegliendo l'orientazione coerente indotta dai parametri:
> $$
> \Phi_\Sigma(\mathbf{F}) = \iint_D \mathbf{F}(\mathbf{r}(u,v)) \cdot (\partial_u \mathbf{r} \times \partial_v \mathbf{r}) \, du\,dv
> $$
>
### Esempi di calcolo del flusso

> [!example] Esempio 1: Campo elettrostatico coulombiano (Teorema di Gauss per carica puntiforme)
> Si calcoli il flusso del campo coulombiano generato da una carica $q$ posta nell'origine:
> $$
> \mathbf{E}(\mathbf{r}) = \frac{q}{4\pi\varepsilon_0} \frac{\mathbf{r}}{\|\mathbf{r}\|^3} = \frac{q}{4\pi\varepsilon_0 r^3}\mathbf{r}
> $$
> attraverso la superficie sferica $\Sigma = S_R(\mathbf{0})$ con normale orientata verso l'esterno:
> $$
> \boldsymbol{\nu}_{\text{ext}} = \frac{\mathbf{r}}{R}
> $$
> Sulla superficie sferica $\|\mathbf{r}\| = R$, quindi:
> $$
> \mathbf{E} \cdot \boldsymbol{\nu} = \left( \frac{q}{4\pi\varepsilon_0 R^3} \mathbf{r} \right) \cdot \left( \frac{\mathbf{r}}{R} \right) = \frac{q}{4\pi\varepsilon_0 R^4} (\mathbf{r} \cdot \mathbf{r}) = \frac{q}{4\pi\varepsilon_0 R^4} R^2 = \frac{q}{4\pi\varepsilon_0 R^2}
> $$
> La quantità è costante su tutta la sfera, per cui:
> $$
> \Phi_\Sigma^{\text{uscente}}(\mathbf{E}) = \iint_\Sigma \frac{q}{4\pi\varepsilon_0 R^2} \, d\sigma = \frac{q}{4\pi\varepsilon_0 R^2} \iint_\Sigma d\sigma = \frac{q}{4\pi\varepsilon_0 R^2} (4\pi R^2) = \frac{q}{\varepsilon_0}
> $$
> Il flusso è indipendente dal raggio $R$ della sfera di integrazione.

> [!example] Esempio 2: Flusso di un campo costante su superficie parametrica
> Si calcoli il flusso del campo vettoriale:
> $$
> \mathbf{F}(x,y,z) = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}
> $$
> attraverso la superficie parametrizzata da:
> $$
> \mathbf{r}(u,v) = \begin{pmatrix} u^2 \\ \sqrt{2}uv \\ v^2 \end{pmatrix}
> $$
> avente per dominio parametrico la regione:
> $$
> D = \left\{ (u,v) \in \mathbb{R}^2 : 1 < u^2+v^2 < 2, \; u < v \right\}
> $$
> con orientazione indotta dalla parametrizzazione.
> Nel piano dei parametri $(u,v)$, passando a coordinate polari $u = \rho\cos\theta, v = \rho\sin\theta$:
> - La condizione radiale impone $1 < \rho^2 < 2 \implies 1 < \rho < \sqrt{2}$.
> - La condizione angolare $u < v \implies \rho\cos\theta < \rho\sin\theta$, che per $\rho > 0$ corrisponde a $\cos\theta < \sin\theta$, ossia:
>   $$
>   \theta \in \left( \frac{\pi}{4}, \frac{5}{4}\pi \right)
>   $$
>
> Calcoliamo il prodotto vettoriale fondamentale:
> $$
> \partial_u \mathbf{r} = \begin{pmatrix} 2u \\ \sqrt{2}v \\ 0 \end{pmatrix}, \quad \partial_v \mathbf{r} = \begin{pmatrix} 0 \\ \sqrt{2}u \\ 2v \end{pmatrix}
> \partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{vmatrix} \hat{\imath} & \hat{\jmath} & \hat{k} \\ 2u & \sqrt{2}v & 0 \\ 0 & \sqrt{2}u & 2v \end{vmatrix} = \hat{\imath}(2\sqrt{2}v^2) - \hat{\jmath}(4uv) + \hat{k}(2\sqrt{2}u^2) = \begin{pmatrix} 2\sqrt{2}v^2 \\ -4uv \\ 2\sqrt{2}u^2 \end{pmatrix}
> $$
> Il vettore normale si annulla solo per $(u,v) = \mathbf{0}$, punto non appartenente al dominio $D$, garantendo la regolarità della superficie.
>
> Eseguiamo il prodotto scalare tra il campo $\mathbf{F}$ e il vettore normale:
> $$
> \mathbf{F}(\mathbf{r}(u,v)) \cdot (\partial_u \mathbf{r} \times \partial_v \mathbf{r}) = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix} \cdot \begin{pmatrix} 2\sqrt{2}v^2 \\ -4uv \\ 2\sqrt{2}u^2 \end{pmatrix} = 2\sqrt{2}v^2 + 2\sqrt{2}u^2 = 2\sqrt{2}(u^2 + v^2)
> $$
> Sostituendo le coordinate polari nel piano $(u,v)$, dove $u^2+v^2 = \rho^2$ e il fattore di scala è $\rho$:
> $$
> \Phi_\Sigma(\mathbf{F}) = \iint_D 2\sqrt{2}(u^2+v^2)\,du\,dv = \int_{\pi/4}^{5\pi/4} \left[ \int_1^{\sqrt{2}} 2\sqrt{2}\rho^2 \, \rho\,d\rho \right] d\theta
> $$
> L'integrale angolare fornisce:
> $$
> \int_{\pi/4}^{5\pi/4} d\theta = \frac{5}{4}\pi - \frac{\pi}{4} = \pi
> $$
> L'integrale radiale vale:
> $$
> \int_1^{\sqrt{2}} 2\sqrt{2}\rho^3\,d\rho = 2\sqrt{2} \left[ \frac{\rho^4}{4} \right]_1^{\sqrt{2}} = 2\sqrt{2} \left[ \frac{(\sqrt{2})^4}{4} - \frac{1^4}{4} \right] = 2\sqrt{2} \left[ \frac{4}{4} - \frac{1}{4} \right] = 2\sqrt{2} \cdot \frac{3}{4} = \frac{3}{2}\sqrt{2}
> $$
> Moltiplicando i due contributi si ottiene il flusso totale:
> $$
> \Phi_\Sigma(\mathbf{F}) = \frac{3}{2}\sqrt{2}\pi
> $$
>
>
## 9.5. Superfici con bordo e orientamento indotto

**(Continuazione calcolo del flusso - conclusione esercizio):**
$$
\begin{aligned}
\Phi_\Sigma(\mathbf{F}) &= \pi \int_1^{\sqrt{2}} 2\sqrt{2}\rho^3 \, d\rho = 2\sqrt{2}\pi \left[ \frac{\rho^4}{4} \right]_1^{\sqrt{2}} \\
&= 2\sqrt{2}\pi \left[ 1 - \frac{1}{4} \right] = \frac{3}{2}\sqrt{2}\pi
\end{aligned}
$$

### Teorema di separazione di Jordan per superfici

> [!theorem] Teorema (Generalizzazione del teorema delle curve di Jordan in $\mathbb{R}^3$)
> Sia $\mathbf{r}$ una superficie chiusa, connessa e orientabile di supporto $\Sigma \subset \mathbb{R}^3$.
> Allora l'insieme complemento $\mathbb{R}^3 \setminus \Sigma$ è costituito da esattamente due componenti connesse aperte disgiunte:
> 1. Una componente limitata, detta **interno** della superficie;
> 2. Una componente illimitata, detta **esterno** della superficie.
>
Si cerca ora una generalizzazione rigorosa del concetto di bordo orientato e di circuitazione lungo curve di Jordan applicato al contesto delle superfici nello spazio tridimensionale.

### Bordo di una superficie parametrica

> [!definition] Bordo di una superficie
> Sia $D \subset \mathbb{R}^2$ un sottoinsieme compatto e connesso, e sia $\mathbf{r}: D \to \Sigma \subseteq \mathbb{R}^3$ una parametrizzazione biunivoca di classe $C^1(D)$.
> Si definisce **bordo** della superficie $\Sigma$ l'immagine tramite $\mathbf{r}$ della frontiera topologica di $D$:
> $$
> \partial \Sigma := \mathbf{r}(\partial D)
> $$
> Se $\Sigma$ è una superficie orientata (dotata di un campo continuo di versori normali $\boldsymbol{\nu}$), si dice che il bordo $\partial \Sigma$ è **orientato positivamente** (denotato con $\partial^+ \Sigma$) se, percorrendolo coerentemente con la direzione del versore normale $\boldsymbol{\nu}$ secondo la regola della mano destra, la superficie $\Sigma$ viene lasciata localmente alla propria sinistra.

> [!note] Osservazione sulla topologia del bordo
> 1. Esistono superfici orientabili chiuse che sono prive di bordo ($\partial \Sigma = \emptyset$), come ad esempio la sfera bidimensionale $S^2 = \{ \mathbf{x} \in \mathbb{R}^3 : \|\mathbf{x}\| = R \}$.
> 2. Esistono superfici non orientabili e prive di bordo, quale la bottiglia di Klein immersa in $\mathbb{R}^4$.
> 3. Se tuttavia la parametrizzazione $\mathbf{r}(u,v)$ è globalmente iniettiva sul compatto $D$, la superficie non può richiudersi su se stessa privandosi di bordo: la superficie $\Sigma = \mathbf{r}(D)$ ammette necessariamente un bordo non vuoto $\partial \Sigma = \mathbf{r}(\partial D)$.
>
### Superfici regolari a pezzi

> [!definition] Superficie regolare a pezzi e relativo bordo
> Sia $\mathbf{r}: D \subset \mathbb{R}^2 \to \mathbb{R}^3$ una superficie con sostegno geometrico $\Sigma$. Diciamo che $\Sigma$ è una **superficie regolare a pezzi** se è scomponibile come:
> $$
> \Sigma = \bigcup_{i=1}^n \Sigma_i \cup \bigcup_{i=1}^n \gamma_i
> $$
> dove ciascun $\Sigma_i$ è il supporto di una superficie regolare, e ciascun $\gamma_i$ è il sostegno di una curva regolare a tratti, per ogni $i = 1, \dots, n \in \mathbb{N}$, con le parti interne $\mathring{\Sigma}_i$ disgiunte a due a due.
> 
> Si definisce **bordo** della superficie regolare a pezzi l'insieme:
> $$
> \partial \Sigma := \bigcup_{i=1}^n \partial \Sigma_i \setminus \bigcup_{\substack{i,j=1 \\ i \neq j}}^n (\partial \Sigma_i \cap \partial \Sigma_j)
> $$
> ovvero l'unione dei bordi delle singole facce ad esclusione dei segmenti o curve di bordo condivisi in comune (incollamenti interni).

> [!note] Estensione degli integrali di superficie e dei flussi
> Grazie a questa decomposizione è possibile estendere in modo naturale gli integrali di superficie di prima specie e i flussi di campi vettoriali a superfici regolari a pezzi, previa scelta di un'orientazione reciprocamente coerente (ad esempio normale uscente comune):
> $$
> \iint_\Sigma f \, dS = \sum_{i=1}^n \iint_{\Sigma_i} f \, dS
> \Phi_\Sigma(\mathbf{F}) = \iint_\Sigma \mathbf{F} \cdot \boldsymbol{\nu} \, dS = \sum_{i=1}^n \Phi_{\Sigma_i}(\mathbf{F}) = \sum_{i=1}^n \iint_{\Sigma_i} \mathbf{F} \cdot \boldsymbol{\nu}_i \, dS
> $$
> **Esempio (Superficie di un cubo):** Per la superficie totale di un poliedro compatto come il cubo, si sceglie come orientazione coerente su ciascuna delle sei facce la normale esterna (uscente) $\boldsymbol{\nu}_e$.
>
## 9.6. Teorema della Divergenza in $\mathbb{R}^3$ (Teorema di Gauss-Ostrogradskij)

### Divergenza di un campo vettoriale

> [!definition] Divergenza
> Sia $\Omega \subseteq \mathbb{R}^3$ un aperto e sia $\mathbf{F}: \Omega \to \mathbb{R}^3$ un campo vettoriale di classe $C^1(\Omega)$, con componenti $\mathbf{F} = (F_1, F_2, F_3)^T$.
> Si definisce **divergenza** di $\mathbf{F}$ la funzione scalare ottenuta dal prodotto scalare formale dell'operatore nabla $\nabla$ con il campo $\mathbf{F}$:
> $$
> \nabla \cdot \mathbf{F} := \mathrm{div}(\mathbf{F}) = \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y} + \frac{\partial F_3}{\partial z}
> $$
>
### Formule di Gauss-Green nello spazio

> [!lemma] Lemma (Formule di Gauss-Green in $\mathbb{R}^3$)
> 1. Sia $\Omega \subset \mathbb{R}^3$ un dominio $z$-semplice (normale rispetto all'asse $z$):
>    $$
>    \Omega = \left\{ (x,y,z) \in \mathbb{R}^3 : (x,y) \in D, \, \varphi_1(x,y) \le z \le \varphi_2(x,y) \right\}
>    $$
>    con $D \subset \mathbb{R}^2$ dominio limitato, regolare e semplicemente connesso, e $\varphi_1, \varphi_2 \in C^1(D)$. Posto $\mathbf{F}: \Omega \to \mathbb{R}^3$ di classe $C^1(\Omega)$, vale:
>    $$
>    \iiint_\Omega \frac{\partial F_3}{\partial z} \, dxdydz = \iint_{\partial \Omega} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_e \, dS
>    $$
> 2. Analogamente, se $\Omega$ è un dominio $x$-semplice:
>    $$
>    \iiint_\Omega \frac{\partial F_1}{\partial x} \, dxdydz = \iint_{\partial \Omega} F_1 \, \hat{i} \cdot \boldsymbol{\nu}_e \, dS
>    $$
> 3. Analogamente, se $\Omega$ è un dominio $y$-semplice:
>    $$
>    \iiint_\Omega \frac{\partial F_2}{\partial y} \, dxdydz = \iint_{\partial \Omega} F_2 \, \hat{j} \cdot \boldsymbol{\nu}_e \, dS
>    $$
> dove $\boldsymbol{\nu}_e$ denota il versore normale esterno alla frontiera $\partial \Omega$.

> [!quote]- Dimostrazione
> Dimostriamo dettagliatamente l'identità (1) per un dominio $z$-semplice.
> 
> La frontiera $\partial \Omega$ è una superficie regolare a pezzi decomponibile nell'unione di tre superfici disgiunte a meno dei bordi:
> $$
> \partial \Omega = \Sigma_s \cup \Sigma_l \cup \Sigma_i
> $$
> dove:
> - $\Sigma_s = \{ (x,y,z) : (x,y) \in D, z = \varphi_2(x,y) \}$ è la superficie superiore (tetto);
> - $\Sigma_i = \{ (x,y,z) : (x,y) \in D, z = \varphi_1(x,y) \}$ è la superficie inferiore (base);
> - $\Sigma_l = \{ (x,y,z) : (x,y) \in \partial D, \varphi_1(x,y) \le z \le \varphi_2(x,y) \}$ è la superficie laterale cilindrica.
> 
> Il flusso lungo l'intero bordo è pertanto:
> $$
> \iint_{\partial \Omega} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_e \, dS = \iint_{\Sigma_s} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_s \, dS + \iint_{\Sigma_l} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_l \, dS + \iint_{\Sigma_i} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_i \, dS
> $$
> 
> Analizziamo i tre singoli contributi:
> 
> **1. Superficie laterale $\Sigma_l$:**
> Per ogni punto su $\Sigma_l$, il versore normale uscente $\boldsymbol{\nu}_l$ giace nel piano orizzontale $xy$, essendo ortogonale alle generatrici verticali parallele all'asse $z$. Dunque $\boldsymbol{\nu}_l \perp \hat{k}$, ossia:
> $$
> \hat{k} \cdot \boldsymbol{\nu}_l = 0 \quad \forall \mathbf{x} \in \Sigma_l \implies \iint_{\Sigma_l} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_l \, dS = 0
> $$
> 
> **2. Superficie inferiore $\Sigma_i$:**
> La superficie $\Sigma_i$ è il grafico di $z = \varphi_1(x,y)$. Il vettore normale naturale indotto dalla parametrizzazione cartesiana orientato verso l'alto sarebbe $(-\varphi_{1x}, -\varphi_{1y}, 1)^T$. Poiché cerchiamo la normale esterna (uscente) da $\Omega$, dobbiamo scegliere il versore rivolto verso il basso:
> $$
> \boldsymbol{\nu}_i \, dS = \begin{pmatrix} +\varphi_{1x} \\ +\varphi_{1y} \\ -1 \end{pmatrix} dxdy
> $$
> Ne segue che:
> $$
> \iint_{\Sigma_i} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_i \, dS = \iint_D F_3(x, y, \varphi_1(x,y)) \, \hat{k} \cdot \begin{pmatrix} +\varphi_{1x} \\ +\varphi_{1y} \\ -1 \end{pmatrix} dxdy = \iint_D -F_3(x, y, \varphi_1(x,y)) \, dxdy
> $$
> 
> **3. Superficie superiore $\Sigma_s$:**
> La superficie $\Sigma_s$ è il grafico di $z = \varphi_2(x,y)$. La normale esterna rivolta verso l'alto corrisponde alla parametrizzazione cartesiana standard:
> $$
> \boldsymbol{\nu}_s \, dS = \begin{pmatrix} -\varphi_{2x} \\ -\varphi_{2y} \\ 1 \end{pmatrix} dxdy
> $$
> Pertanto:
> $$
> \iint_{\Sigma_s} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_s \, dS = \iint_D F_3(x, y, \varphi_2(x,y)) \, \hat{k} \cdot \begin{pmatrix} -\varphi_{2x} \\ -\varphi_{2y} \\ 1 \end{pmatrix} dxdy = \iint_D F_3(x, y, \varphi_2(x,y)) \, dxdy
> $$
> 
> Sommando i tre contributi:
> $$
> \iint_{\partial \Omega} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_e \, dS = \iint_D \left[ F_3(x, y, \varphi_2(x,y)) - F_3(x, y, \varphi_1(x,y)) \right] dxdy
> $$
> Per il secondo teorema fondamentale del calcolo integrale, la differenza nella parentesi quadra si riscrive come integrale della derivata parziale rispetto a $z$:
> $$
> F_3(x, y, \varphi_2(x,y)) - F_3(x, y, \varphi_1(x,y)) = \int_{\varphi_1(x,y)}^{\varphi_2(x,y)} \frac{\partial F_3}{\partial z}(x,y,z) \, dz
> $$
> Sostituendo:
> $$
> \iint_{\partial \Omega} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_e \, dS = \iint_D \left[ \int_{\varphi_1(x,y)}^{\varphi_2(x,y)} \frac{\partial F_3}{\partial z} \, dz \right] dxdy
> $$
> Riconoscendo la formula di riduzione "per fili" dell'integrale triplo su domini semplici:
> $$
> \iint_D \left[ \int_{\varphi_1(x,y)}^{\varphi_2(x,y)} \frac{\partial F_3}{\partial z} \, dz \right] dxdy = \iiint_\Omega \frac{\partial F_3}{\partial z} \, dxdydz
> $$
> Il che conclude la dimostrazione del punto (1).
> 
> I punti (2) e (3) si deducono in modo del tutto analogo permutando ciclicamente i ruoli delle variabili spaziali $x, y, z$. $\blacksquare$
>
### Enunciato e dimostrazione del teorema della divergenza

> [!theorem] Teorema della divergenza (o di Gauss)
> Sia $\Omega \subset \mathbb{R}^3$ un dominio limitato, simultaneamente semplice rispetto ai tre assi cartesiani ($x, y, z$-semplice). Si supponga che la frontiera $\partial \Omega$ sia una superficie regolare a pezzi orientata con versore normale uscente $\boldsymbol{\nu}_e$.
> Sia $\mathbf{F}: \Omega \to \mathbb{R}^3$ un campo vettoriale di classe $C^1(\Omega)$.
> Allora:
> $$
> \iiint_\Omega \nabla \cdot \mathbf{F} \, dxdydz = \iint_{\partial \Omega} \mathbf{F} \cdot \boldsymbol{\nu}_e \, dS
> $$
> ossia l'integrale triplo della divergenza esteso a $\Omega$ coincide con il flusso uscente del campo $\mathbf{F}$ attraverso la frontiera $\partial \Omega$.

> [!quote]- Dimostrazione
> Essendo $\Omega$ contemporaneamente semplice rispetto a $x$, $y$ e $z$, risultano applicabili tutte e tre le formule di Gauss-Green in $\mathbb{R}^3$:
> $$
> \begin{aligned}
> \iiint_\Omega \frac{\partial F_1}{\partial x} \, dxdydz &= \iint_{\partial \Omega} F_1 \, \hat{i} \cdot \boldsymbol{\nu}_e \, dS \\
> \iiint_\Omega \frac{\partial F_2}{\partial y} \, dxdydz &= \iint_{\partial \Omega} F_2 \, \hat{j} \cdot \boldsymbol{\nu}_e \, dS \\
> \iiint_\Omega \frac{\partial F_3}{\partial z} \, dxdydz &= \iint_{\partial \Omega} F_3 \, \hat{k} \cdot \boldsymbol{\nu}_e \, dS
> \end{aligned}
> $$
> Sommando membro a membro le tre eguaglianze e sfruttando la linearità dell'integrale triplo e dell'integrale di superficie:
> $$
> \begin{aligned}
> \iiint_\Omega \nabla \cdot \mathbf{F} \, dxdydz &= \iiint_\Omega \left( \frac{\partial F_1}{\partial x} + \frac{\partial F_2}{\partial y} + \frac{\partial F_3}{\partial z} \right) dxdydz \\
> &= \iint_{\partial \Omega} \left( F_1 \hat{i} + F_2 \hat{j} + F_3 \hat{k} \right) \cdot \boldsymbol{\nu}_e \, dS \\
> &= \iint_{\partial \Omega} \mathbf{F} \cdot \boldsymbol{\nu}_e \, dS
> \end{aligned}
> $$
> Il teorema è così pienamente dimostrato. $\blacksquare$
>
### Calcolo di volumi e interpretazione fisica della divergenza

> [!note] Formula per il calcolo di volumi tridimensionali
> Il teorema della divergenza fornisce una potente formula di riduzione per calcolare la misura (volume) di un solido $V \subset \mathbb{R}^3$ mediante un integrale di flusso lungo la sola superficie di contorno $\partial V$.
> È sufficiente scegliere un campo vettoriale $\mathbf{F}$ tale che $\nabla \cdot \mathbf{F} \equiv 1$.
> 
> Una scelta naturale ed altamente simmetrica è data da:
> $$
> \mathbf{F}(x,y,z) = \frac{1}{3} \begin{pmatrix} x \\ y \\ z \end{pmatrix} \implies \nabla \cdot \mathbf{F} = \frac{1}{3}(1 + 1 + 1) = 1
> $$
> Sostituendo nel teorema della divergenza:
> $$
> \mathrm{Vol}(V) = \iiint_V 1 \, dxdydz = \frac{1}{3} \iiint_V \nabla \cdot \begin{pmatrix} x \\ y \\ z \end{pmatrix} dxdydz = \frac{1}{3} \iint_{\partial V} \begin{pmatrix} x \\ y \\ z \end{pmatrix} \cdot \boldsymbol{\nu}_e \, dS
> $$

> [!note] Significato fisico della divergenza come densità di flusso
> Similmente a quanto accade per il rotore, l'operatore divergenza ammette un'interpretazione geometrico-fisica fondamentale priva di coordinate.
> Fissato un punto $\mathbf{x}_0 \in \mathbb{R}^3$, si consideri la sfera solida $B_R(\mathbf{x}_0)$ di raggio $R$ centrata in $\mathbf{x}_0$. Applicando il teorema della divergenza:
> $$
> \iiint_{B_R(\mathbf{x}_0)} \nabla \cdot \mathbf{F} \, dxdydz = \iint_{\partial B_R(\mathbf{x}_0)} \mathbf{F} \cdot \boldsymbol{\nu}_e \, dS
> $$
> Dividendo per il volume $|B_R(\mathbf{x}_0)| = \frac{4}{3}\pi R^3$ ed eseguendo il limite per $R \to 0^+$:
> $$
> \lim_{R \to 0^+} \frac{1}{|B_R(\mathbf{x}_0)|} \iiint_{B_R(\mathbf{x}_0)} \nabla \cdot \mathbf{F} \, dxdydz = \lim_{R \to 0^+} \frac{1}{|B_R(\mathbf{x}_0)|} \iint_{\partial B_R(\mathbf{x}_0)} \mathbf{F} \cdot \boldsymbol{\nu}_e \, dS
> $$
> Per il teorema della media integrale per funzioni continue:
> $$
> \nabla \cdot \mathbf{F}(\mathbf{x}_0) = \lim_{R \to 0^+} \frac{1}{|B_R(\mathbf{x}_0)|} \iint_{\partial B_R(\mathbf{x}_0)} \mathbf{F} \cdot \boldsymbol{\nu}_e \, dS
> $$
> La divergenza in un punto $\mathbf{x}_0$ esprime quindi la **densità volumica di flusso uscente** del campo vettoriale generata in un intorno infinitesimo del punto (sorgente positiva se $\nabla \cdot \mathbf{F} > 0$, pozzo o assorbimento se $\nabla \cdot \mathbf{F} < 0$).

> [!note] Generalizzazione geometrica del dominio
> Il teorema della divergenza si estende a domini $\Omega \subset \mathbb{R}^3$ limitati molto più generali di quelli semplici, a patto che $\Omega$ sia partizionabile in un numero finito di domini semplici disgiunti:
> $$
> \Omega = \bigcup_{i=1}^n \Omega_i, \quad \text{con } \mathring{\Omega}_i \cap \mathring{\Omega}_j = \emptyset \quad \forall i \neq j
> $$
> dove ciascun $\Omega_i$ è semplice rispetto ai 3 assi, e $\partial \Omega$ è una superficie regolare a pezzi orientabile. Negli incollamenti interni le normali opposte si elidono esattamente, lasciando unicamente il flusso lungo $\partial \Omega$.
>
## 9.7. Applicazioni fisiche del Teorema della Divergenza (Legge di Gauss, equazione di continuità)

### Flusso del campo elettrostatico coulombiano

Consideriamo il campo elettrostatico generato da una carica puntiforme $q$ posta nell'origine:
$$
\mathbf{E}(\mathbf{x}) = \frac{q}{4\pi\varepsilon_0} \frac{\mathbf{r}}{r^3} = \frac{q}{4\pi\varepsilon_0 \left( x^2 + y^2 + z^2 \right)^{3/2}} \begin{pmatrix} x \\ y \\ z \end{pmatrix}, \quad \mathbf{x} \in \mathbb{R}^3 \setminus \{\mathbf{0}\}
$$
Calcoliamo la divergenza componente per componente per $\mathbf{x} \neq \mathbf{0}$:
$$
\nabla \cdot \mathbf{E} = \frac{\partial E_1}{\partial x} + \frac{\partial E_2}{\partial y} + \frac{\partial E_3}{\partial z}
$$
La derivata parziale rispetto a $x$ della prima componente vale:
$$
\begin{aligned}
\frac{\partial E_1}{\partial x} &= \frac{q}{4\pi\varepsilon_0} \left[ \frac{1}{\left( x^2 + y^2 + z^2 \right)^{3/2}} - \frac{3}{2} x \frac{2x}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right] \\
&= \frac{q}{4\pi\varepsilon_0} \left[ \frac{x^2 + y^2 + z^2 - 3x^2}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right] \\
&= \frac{q}{4\pi\varepsilon_0} \left[ \frac{-2x^2 + y^2 + z^2}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right]
\end{aligned}
$$
Per simmetria sferica:
$$
\frac{\partial E_2}{\partial y} = \frac{q}{4\pi\varepsilon_0} \left[ \frac{x^2 - 2y^2 + z^2}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right], \quad \frac{\partial E_3}{\partial z} = \frac{q}{4\pi\varepsilon_0} \left[ \frac{x^2 + y^2 - 2z^2}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right]
$$
Sommando le tre derivate parziali:
$$
\begin{aligned}
\nabla \cdot \mathbf{E} &= \frac{q}{4\pi\varepsilon_0} \left[ \frac{(-2x^2 + y^2 + z^2) + (x^2 - 2y^2 + z^2) + (x^2 + y^2 - 2z^2)}{\left( x^2 + y^2 + z^2 \right)^{5/2}} \right] \\
&= \frac{q}{4\pi\varepsilon_0} \cdot 0 = 0 \quad \forall \mathbf{x} \in \mathbb{R}^3 \setminus \{\mathbf{0}\}
\end{aligned}
$$

Tuttavia, la carica $q$ è collocata proprio nella singolarità $\mathbf{x} = \mathbf{0}$, punto in cui il campo non è di classe $C^1$.
Sappiamo per calcolo diretto su una sfera $S_R(\mathbf{0})$ di raggio $R$ centrata nell'origine che:
$$
\Phi_{S_R(\mathbf{0})}(\mathbf{E}) = \frac{q}{\varepsilon_0}
$$
Sia ora $\Gamma \subset \mathbb{R}^3$ un compatto regolare contenente l'origine nel suo interno. Non possiamo applicare direttamente il teorema della divergenza a $\Gamma$ a causa della singolarità. Consideriamo invece la regione forata:
$$
\Omega = \Gamma \setminus B_R(\mathbf{0})
$$
dove $R > 0$ è sufficientemente piccolo affinché la palla chiusa $B_R(\mathbf{0}) \subset \mathring{\Gamma}$.
In $\Omega$, il campo $\mathbf{E}$ è di classe $C^1$, dunque vale il teorema della divergenza:
$$
\iiint_\Omega \nabla \cdot \mathbf{E} \, dxdydz = 0 = \iint_{\partial \Omega} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS
$$
La frontiera esterna di $\Omega$ è $\partial \Omega = \partial \Gamma \cup S_R(\mathbf{0})$.
Sul bordo esterno $\partial \Gamma$, $\boldsymbol{\nu}_e$ è la normale esterna standard.
Sulla sfera interna $S_R(\mathbf{0})$, il versore normale esterno al dominio $\Omega$ punta verso il centro dell'origine, ossia:
$$
\boldsymbol{\nu}_e = -\frac{\mathbf{r}}{r}
$$
Pertanto:
$$
\iint_{\partial \Omega} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS = \iint_{\partial \Gamma} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS + \iint_{S_R(\mathbf{0})} \mathbf{E} \cdot \left( -\frac{\mathbf{r}}{r} \right) dS = 0
\implies \iint_{\partial \Gamma} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS - \Phi_{S_R(\mathbf{0})}(\mathbf{E}) = 0
\implies \Phi_{\partial \Gamma}(\mathbf{E}) = \iint_{\partial \Gamma} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS = \frac{q}{\varepsilon_0}
$$
per ogni superficie chiusa $\partial \Gamma$ che racchiuda la carica $q$.

### Equazione di Poisson per il potenziale elettrostatico

Consideriamo una distribuzione continua di carica elettrica nello spazio descritta da una funzione densità volumica di carica $\rho(x,y,z)$.
Dato un volume compatto arbitrario $\Omega \subseteq \mathbb{R}^3$, la carica totale contenuta è:
$$
q_{\text{tot}} = \iiint_\Omega \rho(x,y,z) \, dxdydz
$$
Assumendo che $\Omega$ soddisfi le ipotesi del teorema della divergenza e che $\mathbf{E} \in C^1(\Omega)$, la legge di Gauss in forma integrale stabilisce:
$$
\Phi_{\partial \Omega}(\mathbf{E}) = \iint_{\partial \Omega} \mathbf{E} \cdot \boldsymbol{\nu}_e \, dS = \frac{1}{\varepsilon_0} \iiint_\Omega \rho \, dxdydz
$$
Applicando il teorema della divergenza al primo membro:
$$
\iiint_\Omega \nabla \cdot \mathbf{E} \, dxdydz = \iiint_\Omega \frac{\rho}{\varepsilon_0} \, dxdydz
$$

> [!warning] Rigore matematico nelle deduzioni fisiche
> È imperativo verificare la regolarità delle grandezze: l'annullamento dell'integrale non implica puntualmente l'annullamento della funzione integranda se essa non è continua. Altrimenti la deduzione è un mero passaggio formale.
>
Raggruppando sotto un unico segno di integrale:
$$
\iiint_\Omega \left( \nabla \cdot \mathbf{E} - \frac{\rho}{\varepsilon_0} \right) dxdydz = 0
$$
Poiché tale relazione deve valere per qualsiasi dominio compatto $\Omega$, e supponendo la funzione integranda continua, per l'arbitrarietà del dominio segue la forma differenziale (locale):
$$
\nabla \cdot \mathbf{E} = \frac{\rho}{\varepsilon_0} \quad \text{(Prima equazione di Maxwell per cariche continue)}
$$

In condizioni elettrostatiche, il campo $\mathbf{E}$ è conservativo, per cui ammette un potenziale scalare $U$ tale che $\mathbf{E} = \nabla U$ (oppure $\mathbf{E} = -\nabla V$ secondo la convenzione fisica usuale):
$$
\nabla \cdot (\nabla U) = \frac{\partial^2 U}{\partial x^2} + \frac{\partial^2 U}{\partial y^2} + \frac{\partial^2 U}{\partial z^2} = \frac{\rho}{\varepsilon_0}
$$

> [!definition] Operatore Laplaciano
> Sia $\Omega \subseteq \mathbb{R}^3$ e sia $f \in C^2(\Omega)$.
> Si definisce **laplaciano** di $f$ l'operatore differenziale lineare del secondo ordine:
> $$
> \nabla^2 f := \Delta f := \frac{\partial^2 f}{\partial x^2} + \frac{\partial^2 f}{\partial y^2} + \frac{\partial^2 f}{\partial z^2}
> $$
>
L'equazione per il potenziale diventa l'**Equazione di Poisson**:
$$
\nabla^2 U = \frac{\rho}{\varepsilon_0}
$$
che costituisce la versione locale differenziale della legge di Gauss.

### Equazione di continuità e conservazione della massa

L'equazione di continuità formalizza il principio fondamentale di conservazione locale di una grandezza scalare (massa di un fluido, carica elettrica).
Sia $\mathbf{v}(x,y,z,t): \mathbb{R}^4 \to \mathbb{R}^3$ il campo delle velocità di un fluido in moto e sia $\rho(x,y,z,t)$ la densità di massa locale all'istante $t$.

Si consideri una superficie regolare a pezzi orientata $\Sigma \subseteq \mathbb{R}^3$. La componente normale $\mathbf{v} \cdot \mathbf{n}$ misura la velocità di avanzamento del fluido attraverso $\Sigma$.
Il flusso volumetrico infinitesimo è:
$$
\frac{dV}{dt} = \mathbf{v} \cdot \mathbf{n} \, dS
$$
Moltiplicando per la densità di massa $\rho$:
$$
\frac{dm}{dt} = \rho (\mathbf{v} \cdot \mathbf{n}) \, dS \quad (\text{variazione infinitesima di massa})
$$
Integrando sulla superficie $\Sigma$, la portata massica complessiva uscente è:
$$
\frac{dM}{dt} = \iint_\Sigma \rho \mathbf{v} \cdot \mathbf{n} \, dS
$$

Consideriamo ora un volume di controllo fisso $\Omega \subset \mathbb{R}^3$ con bordo $\partial \Omega$ orientato con la normale esterna $\mathbf{n}_e$.
La massa complessiva contenuta all'interno di $\Omega$ all'istante $t$ è:
$$
M(t) = \iiint_\Omega \rho(x,y,z,t) \, dxdydz
$$
In assenza di sorgenti o pozzi interni di massa, la velocità di variazione della massa interna deve eguagliare il flusso netto di massa entrante, ovvero l'opposto del flusso uscente attraverso $\partial \Omega$:
$$
\iint_{\partial \Omega} \rho \mathbf{v} \cdot \mathbf{n}_e \, dS = - \frac{dM}{dt}
$$
Derivando sotto il segno di integrale rispetto al parametro temporale $t$ (passaggio formale legittimato se $\rho \in C^1$ e $\Omega$ compatto):
$$
\frac{dM}{dt} = \frac{d}{dt} \iiint_\Omega \rho \, dxdydz = \iiint_\Omega \frac{\partial \rho}{\partial t} \, dxdydz
$$
Sostituendo:
$$
- \iint_{\partial \Omega} \rho \mathbf{v} \cdot \mathbf{n}_e \, dS = \iiint_\Omega \frac{\partial \rho}{\partial t} \, dxdydz
$$
Applicando il teorema della divergenza al flusso al primo membro:
$$
\iint_{\partial \Omega} (\rho \mathbf{v}) \cdot \mathbf{n}_e \, dS = \iiint_\Omega \nabla \cdot (\rho \mathbf{v}) \, dxdydz
$$
Pertanto:
$$
\iiint_\Omega \left[ \frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) \right] dxdydz = 0
$$
Per l'arbitrarietà del dominio di integrazione $\Omega$, si ottiene l'**equazione di continuità** in forma locale:
$$
\frac{\partial \rho}{\partial t} + \nabla \cdot (\rho \mathbf{v}) = 0
$$
Espandendo la divergenza del prodotto scalare-vettore tramite l'identità $\nabla \cdot (\rho \mathbf{v}) = \nabla \rho \cdot \mathbf{v} + \rho \nabla \cdot \mathbf{v}$, si riscrive in forma convettiva:
$$
\frac{\partial \rho}{\partial t} + \nabla \rho \cdot \mathbf{v} + \rho \nabla \cdot \mathbf{v} = 0
$$

## 9.8. Teorema di Stokes in $\mathbb{R}^3$ (Teorema del Rotore / Kelvin-Stokes)

### Enunciato e proprietà fondamentali

> [!theorem] Teorema di Stokes in $\mathbb{R}^3$
> Sia $\Sigma \subset \mathbb{R}^3$ una superficie regolare orientata con versore normale $\boldsymbol{\nu}$, avente bordo $\partial^+ \Sigma$ orientato positivamente e regolare a tratti.
> Sia $\Omega \subseteq \mathbb{R}^3$ un aperto con $\Sigma \subset \Omega$, e sia $\mathbf{F}: \Omega \to \mathbb{R}^3$ un campo vettoriale di classe $C^1(\Omega)$.
> Allora:
> $$
> \iint_\Sigma (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} \, dS = \oint_{\partial^+ \Sigma} \mathbf{F} \cdot d\mathbf{r}
> $$
> ovvero il flusso del rotore di $\mathbf{F}$ attraverso $\Sigma$ è uguale alla circuitazione di $\mathbf{F}$ lungo il bordo orientato $\partial^+ \Sigma$.

> [!note] Casi particolari e connessioni teoriche
> 1. **Superfici chiuse:** Se $\Sigma$ è una superficie chiusa senza bordo ($\partial^+ \Sigma = \emptyset$), allora per qualsiasi campo $\mathbf{F} \in C^1$:
>    $$
>    \iint_\Sigma (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} \, dS = 0
>    $$
>    (Risultato deducibile anche dal teorema della divergenza, notando che $\nabla \cdot (\nabla \times \mathbf{F}) \equiv 0$).
> 2. **Superfici piane nel piano $xy$:** Se $\Sigma \subset \{ (x,y,z) \in \mathbb{R}^3 : z = 0 \}$ orientata con $\boldsymbol{\nu} = \hat{k}$ e $\mathbf{F} = (P(x,y), Q(x,y), 0)^T$, il rotore vale:
>    $$
>    \nabla \times \mathbf{F} = \hat{k} \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right)
>    $$
>    e il teorema di Stokes si riduce esattamente alla formula di Gauss-Green nel piano:
>    $$
>    \iint_\Sigma \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dxdy = \oint_{\partial^+ \Sigma} (P dx + Q dy)
>    $$

> [!note] Interpretazione fisica del rotore in $\mathbb{R}^3$
> Come si interpreta fisicamente il vettore rotore nello spazio tridimensionale?
> Fissato un punto e scelto un generico versore $\boldsymbol{\nu}$, si consideri un dischetto piatto $\Sigma_{\boldsymbol{\nu}}$ di raggio $R$ centrato nel punto ed ortogonale a $\boldsymbol{\nu}$.
> Per il teorema di Stokes:
> $$
> \frac{1}{\pi R^2} \iint_{\Sigma_{\boldsymbol{\nu}}} (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} \, dS = \frac{1}{\pi R^2} \oint_{\partial^+ \Sigma_{\boldsymbol{\nu}}} \mathbf{F} \cdot d\mathbf{r}
> $$
> Eseguendo il limite per $R \to 0^+$:
> $$
> (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} = \lim_{R \to 0^+} \frac{1}{\pi R^2} \oint_{\partial^+ \Sigma_{\boldsymbol{\nu}}} \mathbf{F} \cdot d\mathbf{r}
> $$
> La proiezione scalare $(\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu}$ rappresenta la **densità superficiale di circuitazione** attorno alla direzione individuata dal versore $\boldsymbol{\nu}$.
> La direzione di $\nabla \times \mathbf{F}$ individua l'asse attorno al quale la circuitazione per unità di superficie è massima, e il suo modulo ne esprime tale valore massimo.
>
### Esempio applicativo del teorema di Stokes

> [!example] Calcolo del flusso del rotore tramite il bordo
> Calcolare il flusso del rotore:
> $$
> \iint_\Sigma (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} \, dS
> $$
> con $\boldsymbol{\nu}$ versore normale indotto dalla parametrizzazione, dove:
> $$
> \mathbf{F}(x,y,z) = \begin{pmatrix} x^2 z \\ y \\ yz \end{pmatrix}, \quad \mathbf{r}(u,v) = \begin{pmatrix} v \\ u \\ u^2 + v^2 \end{pmatrix}, \quad (u,v) \in D = \left\{ (u,v) \in \mathbb{R}^2 : u^2 + v^2 \le 1 \right\}
> $$
>
**Determinazione della normale e orientazione del bordo:**
Calcoliamo il prodotto vettoriale fondamentale:
$$
\partial_u \mathbf{r} = \begin{pmatrix} 0 \\ 1 \\ 2u \end{pmatrix}, \quad \partial_v \mathbf{r} = \begin{pmatrix} 1 \\ 0 \\ 2v \end{pmatrix}
\partial_u \mathbf{r} \times \partial_v \mathbf{r} = \begin{vmatrix} \hat{i} & \hat{j} & \hat{k} \\ 0 & 1 & 2u \\ 1 & 0 & 2v \end{vmatrix} = 2u \hat{j} - \hat{k} - 2v \hat{i} = \begin{pmatrix} -2v \\ 2u \\ -1 \end{pmatrix}
$$
Il versore normale indotto è:
$$
\boldsymbol{\nu} = \frac{1}{\sqrt{4v^2 + 4u^2 + 1}} \begin{pmatrix} -2v \\ 2u \\ -1 \end{pmatrix}
$$
Poiché la componente lungo $z$ è negativa ($-1$), la normale punta verso il basso rispetto alla concavità del paraboloide. Nel piano dei parametri $(u,v)$, l'orientazione compatibile per il bordo $\partial D$ (avendo invertito il ruolo standard delle variabili con $(v,u)$ al posto di $(u,v)$ e $\hat{k}$ negativo) risulta percorsa in senso orario rispetto a $(u,v)$:
$$
u(t) = \sin(-t) = -\sin t, \quad v(t) = \cos(-t) = \cos t, \quad t \in [0, 2\pi]
$$
Nello spazio $(x,y,z)$, poiché $x = v$, $y = u$, $z = u^2 + v^2 = 1$, la curva di bordo $\partial^+ \Sigma$ è parametrizzata da:
$$
\mathbf{s}(t) = \begin{pmatrix} \cos t \\ -\sin t \\ 1 \end{pmatrix}, \quad t \in [0, 2\pi]
$$
con derivata:
$$
\mathbf{s}'(t) = \begin{pmatrix} -\sin t \\ -\cos t \\ 0 \end{pmatrix}
$$

**Calcolo della circuitazione per il teorema di Stokes:**
Valutando il campo $\mathbf{F}$ sulla curva $\mathbf{s}(t)$:
$$
\mathbf{F}(\mathbf{s}(t)) = \begin{pmatrix} x^2 z \\ y \\ yz \end{pmatrix} = \begin{pmatrix} \cos^2 t \cdot 1 \\ -\sin t \\ -\sin t \cdot 1 \end{pmatrix} = \begin{pmatrix} \cos^2 t \\ -\sin t \\ -\sin t \end{pmatrix}
$$
Applicando il teorema di Stokes:
$$
\begin{aligned}
\iint_\Sigma (\nabla \times \mathbf{F}) \cdot \boldsymbol{\nu} \, dS &= \oint_{\partial^+ \Sigma} \mathbf{F} \cdot d\mathbf{r} = \int_0^{2\pi} \mathbf{F}(\mathbf{s}(t)) \cdot \mathbf{s}'(t) \, dt \\
&= \int_0^{2\pi} \begin{pmatrix} \cos^2 t \\ -\sin t \\ -\sin t \end{pmatrix} \cdot \begin{pmatrix} -\sin t \\ -\cos t \\ 0 \end{pmatrix} dt \\
&= \int_0^{2\pi} \left( -\cos^2 t \sin t + \sin t \cos t \right) dt \\
&= \left[ \frac{\cos^3 t}{3} - \frac{1}{4} \cos(2t) \right]_0^{2\pi} \\
&= \left( \frac{1}{3} - \frac{1}{4} \right) - \left( \frac{1}{3} - \frac{1}{4} \right) = 0
\end{aligned}
$$

### Applicazione: Legge di Ampère in forma differenziale

Sia $\mathbf{H}$ il campo magnetico, $\gamma$ una curva chiusa regolare a tratti e $\mathbf{J}$ la densità di corrente elettrica stazionaria. La **legge di Ampère** in forma integrale stabilisce:
$$
\oint_\gamma \mathbf{H} \cdot d\mathbf{r} = \iint_\Sigma \mathbf{J} \cdot \boldsymbol{\nu} \, dS \quad \text{per ogni } \Sigma \text{ tale che } \partial \Sigma = \gamma
$$
Applicando formalmente il teorema di Stokes alla circuitazione al primo membro:
$$
\iint_\Sigma (\nabla \times \mathbf{H}) \cdot \boldsymbol{\nu} \, dS = \iint_\Sigma \mathbf{J} \cdot \boldsymbol{\nu} \, dS
$$
Poiché tale identità deve valere per qualsiasi superficie aperta orientabile $\Sigma$ avente $\gamma$ come contorno, si conclude:
$$
\nabla \times \mathbf{H} = \mathbf{J} \quad \text{(Legge di Ampère in condizioni stazionarie)}
$$

## 9.9. Campi solenoidali e potenziale vettore in $\mathbb{R}^3$

### Definizione e proprietà differenziali

> [!note] Definizione di potenziale vettore
> Sia dato un campo vettoriale $\mathbf{F} \in C^1(D)$ definito su un dominio $D \subseteq \mathbb{R}^3$.
> Se esiste un campo vettoriale $\mathbf{A} \in C^2(D)$ tale che:
> $$
> \mathbf{F} = \nabla \times \mathbf{A}
> $$
> allora $\mathbf{A}$ viene detto **potenziale vettore** per $\mathbf{F}$.
> In tal caso, poiché la divergenza di un rotore è identicamente nulla:
> $$
> \nabla \cdot \mathbf{F} = \nabla \cdot (\nabla \times \mathbf{A}) \equiv 0
> $$
> Un campo la cui divergenza è ovunque nulla viene detto **campo solenoidale**.
>
Ci poniamo la questione fondamentale: **vale il viceversa?** Ovvero, ogni campo a divergenza nulla ($\nabla \cdot \mathbf{F} = 0$) ammette un potenziale vettore $\mathbf{A}$ tale che $\mathbf{F} = \nabla \times \mathbf{A}$?
**In generale, la risposta è NO**, e la validità dipende dalla topologia del dominio di definizione.

### Controesempio: campo centrale coulombiano a divergenza nulla

> [!example] Esistenza di campi solenoidali privi di potenziale vettore globale
> Si consideri il dominio bucato $D = \mathbb{R}^3 \setminus \{\mathbf{0}\}$ e il campo radiale:
> $$
> \mathbf{F}(\mathbf{x}) = \frac{\mathbf{x}}{\|\mathbf{x}\|^3}
> $$
> Come verificato precedentemente per il campo elettrico di una carica puntiforme, vale:
> $$
> \nabla \cdot \mathbf{F} = 0 \quad \forall \mathbf{x} \in \mathbb{R}^3 \setminus \{\mathbf{0}\}
> $$
> Dimostriamo che $\mathbf{F}$ **non ammette alcun potenziale vettore** $\mathbf{A}$ di classe $C^2$ sull'intero dominio $D$.

> [!quote]- Dimostrazione
> Ragioniamo per assurdo. Supponiamo che esista un potenziale vettore $\mathbf{A} \in C^2(D)$ tale che $\nabla \times \mathbf{A} = \mathbf{F}$.
> Allora, per ogni superficie regolare orientata $\Sigma \subset D$ ammissibile per il teorema di Stokes, dovrebbe valere:
> $$
> \iint_\Sigma \mathbf{F} \cdot \boldsymbol{\nu} \, dS = \oint_{\partial^+ \Sigma} \mathbf{A} \cdot d\mathbf{r}
> $$
> 
> Fissiamo come superficie la sfera unitaria privata di una calotta polare sferica:
> $$
> \Sigma_r = S_1(\mathbf{0}) \setminus \Sigma_r^*
> $$
> dove $S_1(\mathbf{0}) = \{ \mathbf{x} \in \mathbb{R}^3 : \|\mathbf{x}\| = 1 \}$ e $\Sigma_r^*$ è una calottina sferica di raggio geodetico $r > 0$ centrata sul polo nord $(0,0,1)$.
> 
> Sulla superficie $\Sigma_r$, il versore normale uscente coincide con il vettore posizione stesso:
> $$
> \boldsymbol{\nu}(\mathbf{x}) = \mathbf{x}
> $$
> Poiché $\|\mathbf{x}\| = 1$ su $\Sigma_r$, il prodotto scalare dell'integranda vale:
> $$
> \mathbf{F}(\mathbf{x}) \cdot \boldsymbol{\nu} = \frac{\mathbf{x}}{\|\mathbf{x}\|^3} \cdot \mathbf{x} = \frac{\|\mathbf{x}\|^2}{\|\mathbf{x}\|^3} = \frac{1}{\|\mathbf{x}\|} = 1
> $$
> Pertanto l'integrale di flusso coincide semplicemente con l'area della superficie $\Sigma_r$:
> $$
> \iint_{\Sigma_r} \mathbf{F} \cdot \boldsymbol{\nu} \, dS = \iint_{\Sigma_r} 1 \, dS = \mathrm{Area}(\Sigma_r)
> $$
> D'altra parte, applicando l'ipotesi per assurdo del teorema di Stokes:
> $$
> \mathrm{Area}(\Sigma_r) = \oint_{\partial^+ \Sigma_r} \mathbf{A} \cdot d\mathbf{r}
> $$
> Quando il raggio della calotta tende a zero ($r \to 0^+$), la superficie $\Sigma_r$ invade l'intera sfera $S_1(\mathbf{0})$, la cui area vale:
> $$
> \lim_{r \to 0^+} \mathrm{Area}(\Sigma_r) = \mathrm{Area}(S_1(\mathbf{0})) = 4\pi
> $$
> 
> D'altro canto, il bordo $\partial \Sigma_r$ è una circonferenza di raggio $R(r) \le r$ avente lunghezza $L(\partial \Sigma_r) \le 2\pi r$.
> Essendo $\mathbf{A}$ continuo sul compatto $S_1(\mathbf{0})$, il suo modulo è limitato da una costante finita $M = \max_{\mathbf{x} \in \partial \Sigma_r} \|\mathbf{A}(\mathbf{x})\| < +\infty$.
> Possiamo quindi stimare la circuitazione:
> $$
> \left| \oint_{\partial^+ \Sigma_r} \mathbf{A} \cdot d\mathbf{r} \right| \le \oint_{\partial^+ \Sigma_r} \|\mathbf{A}\| \, ds \le M \cdot 2\pi r \xrightarrow{r \to 0^+} 0
> $$
> Passando al limite per $r \to 0^+$ nell'eguaglianza di Stokes:
> $$
> 4\pi = \lim_{r \to 0^+} \mathrm{Area}(\Sigma_r) = \lim_{r \to 0^+} \oint_{\partial^+ \Sigma_r} \mathbf{A} \cdot d\mathbf{r} = 0
> $$
> Il che genera una palese contraddizione ($4\pi = 0$). $\blacksquare$
> 
> L'assurdo dimostra inconfutabilmente che **non esiste alcun potenziale vettore $\mathbf{A}$** per il campo centrale $\mathbf{F}$ sull'aperto $\mathbb{R}^3 \setminus \{\mathbf{0}\}$.
>
### Condizioni topologiche: domini fortemente connessi

Per garantire l'esistenza globale di un potenziale vettore a partire dalla sola condizione differenziale $\nabla \cdot \mathbf{F} = 0$, è necessario imporre condizioni vincolanti sulla topologia del dominio di definizione (assenza di "cavità" o "buchi tridimensionali").

> [!definition] Dominio fortemente connesso
> Un dominio aperto e connesso $\Omega \subset \mathbb{R}^3$ si dice **fortemente connesso** se è connesso e se per ogni superficie chiusa regolare $\Sigma \subset \Omega$, detta $\Sigma = \partial D$ con $D \subset \mathbb{R}^3$ dominio limitato (l'interno della superficie chiusa secondo il teorema di Jordan), si ha che:
> $$
> D \subset \Omega
> $$
> ovvero ogni superficie chiusa contenuta in $\Omega$ racchiude un volume che appartiene interamente ad $\Omega$ (il dominio non presenta "buchi" o vuoti interni tridimensionali, come accade invece per $\mathbb{R}^3 \setminus \{\mathbf{0}\}$).
>
## 9.10. Operatori differenziali in coordinate curvilinee ortogonali

### Domini fortemente connessi e potenziali vettori

> [!definition] Dominio fortemente connesso in $\mathbb{R}^3$
> Un insieme aperto connesso $\Omega \subseteq \mathbb{R}^3$ si dice **fortemente connesso** (o a connessione superficiale semplice) se per ogni superficie chiusa regolare $\Sigma \subset \Omega$ tale che $\Sigma = \partial D$ con $D \subset \mathbb{R}^3$ compatto/limitato, risulta interamente:
> $$
> D \subset \Omega
> $$
> In termini geometrici ed intuitivi, un dominio è fortemente connesso se è privo di "buchi tridimensionali" (cavità interne chiuse, come lo spazio compreso tra due sfere concentriche o l'origine in $\mathbb{R}^3 \setminus \{\mathbf{0}\}$).

> [!proposition] Esistenza del potenziale vettore su domini fortemente connessi
> Sia $D \subseteq \mathbb{R}^3$ un dominio fortemente connesso e sia $\mathbf{F} \in C^1(D)$ un campo vettoriale solenoidale, ovvero a divergenza identicamente nulla:
> $$
> \nabla \cdot \mathbf{F} = 0 \quad \text{in } D
> $$
> Allora esiste un campo vettoriale $\mathbf{A} \in C^2(D)$, detto **potenziale vettore** per $\mathbf{F}$, tale che:
> $$
> \mathbf{F} = \nabla \times \mathbf{A}
> $$
> Inoltre, ogni altro potenziale vettore $\mathbf{A}'$ per $\mathbf{F}$ differisce da $\mathbf{A}$ per il gradiente di un campo scalare (invarianza di gauge):
> $$
> \mathbf{A}' = \mathbf{A} + \nabla \varphi
> $$
> con $\varphi \in C^2(D)$ arbitraria funzione scalare.
>
### Complementi di calcolo vettoriale: identità differenziali notevoli

> [!proposition] Identità differenziali per operatori vettoriali
> Siano $\mathbf{u}, \mathbf{v}: \Omega \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ campi vettoriali di classe $C^1(\Omega)$ e sia $f \in C^1(\Omega)$ un campo scalare. Valgono le seguenti identità differenziali:
> 
> 1. **Divergenza del prodotto scalare per vettore:**
>    $$
>    \nabla \cdot (f \mathbf{v}) = f (\nabla \cdot \mathbf{v}) + \nabla f \cdot \mathbf{v}
>    $$
> 
> 2. **Rotore del prodotto scalare per vettore:**
>    $$
>    \nabla \times (f \mathbf{v}) = f (\nabla \times \mathbf{v}) + \nabla f \times \mathbf{v}
>    $$
> 
> 3. **Gradiente del prodotto scalare di due campi vettoriali:**
>    $$
>    \nabla (\mathbf{u} \cdot \mathbf{v}) = \mathbf{u} \times (\nabla \times \mathbf{v}) + \mathbf{v} \times (\nabla \times \mathbf{u}) + (\mathbf{u} \cdot \nabla)\mathbf{v} + (\mathbf{v} \cdot \nabla)\mathbf{u}
>    $$
> 
> 4. **Divergenza del prodotto vettoriale:**
>    $$
>    \nabla \cdot (\mathbf{u} \times \mathbf{v}) = (\nabla \times \mathbf{u}) \cdot \mathbf{v} - \mathbf{u} \cdot (\nabla \times \mathbf{v})
>    $$
> 
> 5. **Rotore del prodotto vettoriale:**
>    $$
>    \nabla \times (\mathbf{u} \times \mathbf{v}) = (\mathbf{v} \cdot \nabla)\mathbf{u} - (\mathbf{u} \cdot \nabla)\mathbf{v} + \mathbf{u} (\nabla \cdot \mathbf{v}) - \mathbf{v} (\nabla \cdot \mathbf{u})
>    $$
> 
> dove per ogni coppia di campi $\boldsymbol{\alpha}, \boldsymbol{\beta}: \Omega \to \mathbb{R}^3$ di classe $C^1$, l'operatore di convezione/derivazione direzionale $(\boldsymbol{\alpha} \cdot \nabla)\boldsymbol{\beta}$ è formalmente definito componente per componente da:
> $$
> (\boldsymbol{\alpha} \cdot \nabla)\boldsymbol{\beta} := \alpha_x \frac{\partial \boldsymbol{\beta}}{\partial x} + \alpha_y \frac{\partial \boldsymbol{\beta}}{\partial y} + \alpha_z \frac{\partial \boldsymbol{\beta}}{\partial z} = \begin{bmatrix} \alpha_x \frac{\partial \beta_x}{\partial x} + \alpha_y \frac{\partial \beta_x}{\partial y} + \alpha_z \frac{\partial \beta_x}{\partial z} \\ \alpha_x \frac{\partial \beta_y}{\partial x} + \alpha_y \frac{\partial \beta_y}{\partial y} + \alpha_z \frac{\partial \beta_y}{\partial z} \\ \alpha_x \frac{\partial \beta_z}{\partial x} + \alpha_y \frac{\partial \beta_z}{\partial y} + \alpha_z \frac{\partial \beta_z}{\partial z} \end{bmatrix}
> $$
>
### Cambi di coordinate curvilinee in $\mathbb{R}^3$

Sia $\boldsymbol{\Phi}: \Omega \subseteq \mathbb{R}^3 \to \mathbb{R}^3$ un diffeomorfismo locale di classe $C^1$ nel dominio $\Omega$, ovvero tale che il determinante della matrice Jacobiana sia non nullo ovunque:
$$
\det J_{\boldsymbol{\Phi}} \neq 0 \quad \forall \mathbf{x} \in \Omega
$$
Indichiamo le coordinate curvilinee nello spazio dei parametri con $(u,v,w) \in \Omega$ e le corrispondenti coordinate cartesiane con:
$$
\boldsymbol{\Phi}(u,v,w) = (x(u,v,w), \, y(u,v,w), \, z(u,v,w)) = (x,y,z)
$$
Il differenziale totale della trasformazione $\boldsymbol{\Phi}$ applicato allo spostamento vettoriale infinitesimo $d\mathbf{r} = (du, dv, dw)^T$ è dato da:
$$
d\boldsymbol{\Phi} = J_{\boldsymbol{\Phi}} \, d\mathbf{r} = (\boldsymbol{\Phi}_u, \boldsymbol{\Phi}_v, \boldsymbol{\Phi}_w) \begin{bmatrix} du \\ dv \\ dw \end{bmatrix} = \boldsymbol{\Phi}_u \, du + \boldsymbol{\Phi}_v \, dv + \boldsymbol{\Phi}_w \, dw
$$
dove i vettori tangenti alle linee coordinate sono definiti dalle derivate parziali:
$$
\boldsymbol{\Phi}_u := \frac{\partial \boldsymbol{\Phi}}{\partial u} = \begin{bmatrix} \frac{\partial x}{\partial u} \\ \frac{\partial y}{\partial u} \\ \frac{\partial z}{\partial u} \end{bmatrix}, \quad \boldsymbol{\Phi}_v := \frac{\partial \boldsymbol{\Phi}}{\partial v} = \begin{bmatrix} \frac{\partial x}{\partial v} \\ \frac{\partial y}{\partial v} \\ \frac{\partial z}{\partial v} \end{bmatrix}, \quad \boldsymbol{\Phi}_w := \frac{\partial \boldsymbol{\Phi}}{\partial w} = \begin{bmatrix} \frac{\partial x}{\partial w} \\ \frac{\partial y}{\partial w} \\ \frac{\partial z}{\partial w} \end{bmatrix}
$$

Si introducono quindi i **fattori di scala metrici** (coefficienti di Lamé) e i corrispondenti **versori unitari** tangenti:
$$
\begin{cases}
f(u,v,w) := \|\boldsymbol{\Phi}_u\| \\
g(u,v,w) := \|\boldsymbol{\Phi}_v\| \\
h(u,v,w) := \|\boldsymbol{\Phi}_w\|
\end{cases}
\qquad \text{e} \qquad
\begin{cases}
\hat{u} := \frac{1}{f} \boldsymbol{\Phi}_u \\
\hat{v} := \frac{1}{g} \boldsymbol{\Phi}_v \\
\hat{w} := \frac{1}{h} \boldsymbol{\Phi}_w
\end{cases}
$$
Pertanto, omettendo la dipendenza esplicita dalle variabili $(u,v,w)$, l'elemento di spostamento infinitesimo si esprime come:
$$
d\boldsymbol{\Phi} = f \, du \, \hat{u} + g \, dv \, \hat{v} + h \, dw \, \hat{w}
$$

### Operatori differenziali in coordinate curvilinee ortogonali

Si supponga d'ora in avanti che la terna di versori $\{\hat{u}, \hat{v}, \hat{w}\}$ formi una **base ortonormale** locale di $\mathbb{R}^3$ orientata positivamente (terna destrorsa).

**Gradiente in coordinate curvilinee ortogonali:**

Sia $t: \Gamma \subseteq \mathbb{R}^3 \to \mathbb{R}$ un campo scalare di classe $C^1(\Gamma)$ espresso in coordinate cartesiane. Si definisca la funzione composta espressa nelle coordinate curvilinee:
$$
\tilde{t}: \Omega \subseteq \mathbb{R}^3 \to \mathbb{R}, \qquad \tilde{t}(u,v,w) := t(\boldsymbol{\Phi}(u,v,w))
$$
Applicando la regola della catena (teorema del differenziale totale), si ha:
$$
\frac{\partial \tilde{t}}{\partial u} = \frac{\partial}{\partial u} \left[ t(\boldsymbol{\Phi}(u,v,w)) \right] = \nabla t(\boldsymbol{\Phi}(u,v,w)) \cdot \boldsymbol{\Phi}_u = \nabla t \cdot (f \hat{u}) = f (\nabla t \cdot \hat{u})
$$
e analogamente lungo le altre due direzioni coordinate:
$$
\frac{\partial \tilde{t}}{\partial v} = g (\nabla t \cdot \hat{v}), \qquad \frac{\partial \tilde{t}}{\partial w} = h (\nabla t \cdot \hat{w})
$$
Poiché $\{\hat{u}, \hat{v}, \hat{w}\}$ costituisce una base ortonormale, ogni vettore coincide con la combinazione lineare dei suoi prodotti scalari con i versori della base: $\nabla t = (\nabla t \cdot \hat{u}) \hat{u} + (\nabla t \cdot \hat{v}) \hat{v} + (\nabla t \cdot \hat{w}) \hat{w}$. Si ottiene dunque:

> [!proposition] Gradiente in coordinate curvilinee ortogonali
> Sia $\tilde{t}(u,v,w)$ l'espressione del campo scalare $t(x,y,z)$ nelle coordinate curvilinee $(u,v,w)$ con fattori di scala $f, g, h$. Il gradiente di $t$ è dato da:
> $$
> \nabla t = \frac{1}{f} \frac{\partial \tilde{t}}{\partial u} \hat{u} + \frac{1}{g} \frac{\partial \tilde{t}}{\partial v} \hat{v} + \frac{1}{h} \frac{\partial \tilde{t}}{\partial w} \hat{w}
> $$

> [!example] Esempio (Coordinate sferiche)
> Si consideri il campo scalare $t(x,y,z) = x^2 + y^2 + z^2$.
> - In coordinate cartesiane:
>   $$
>   \nabla t = \begin{bmatrix} 2x \\ 2y \\ 2z \end{bmatrix}
>   $$
> - In coordinate sferiche $(\rho, \theta, \varphi)$ con $x = \rho \sin\varphi \cos\theta$, $y = \rho \sin\varphi \sin\theta$, $z = \rho \cos\varphi$:
>   $$
>   \tilde{t}(\rho, \theta, \varphi) = \rho^2
>   $$
>   I fattori di scala associati sono:
>   $$
>   f = \|\boldsymbol{\Phi}_\rho\| = 1, \qquad g = \|\boldsymbol{\Phi}_\theta\| = \rho \sin\varphi, \qquad h = \|\boldsymbol{\Phi}_\varphi\| = \rho
>   $$
>   Applicando la formula del gradiente curvilineo con $\hat{u} = \mathbf{u}_\rho$, $\hat{v} = \mathbf{u}_\theta$, $\hat{w} = \mathbf{u}_\varphi$:
>   $$
>   \nabla t = \frac{1}{1} \frac{\partial (\rho^2)}{\partial \rho} \mathbf{u}_\rho + \frac{1}{\rho \sin\varphi} \frac{\partial (\rho^2)}{\partial \theta} \mathbf{u}_\theta + \frac{1}{\rho} \frac{\partial (\rho^2)}{\partial \varphi} \mathbf{u}_\varphi = 2\rho \, \mathbf{u}_\rho
>   $$
>   coerente con il fatto che $2\rho \, \mathbf{u}_\rho = 2 (x,y,z)^T$.
>
**Divergenza ed elementi metrici di volume e superficie:**
>
> Il determinante della matrice Jacobiana della trasformazione $\boldsymbol{\Phi}$ si calcola attraverso il prodotto misto delle colonne:
> $$
> \det J_{\boldsymbol{\Phi}} = \det [\boldsymbol{\Phi}_u, \boldsymbol{\Phi}_v, \boldsymbol{\Phi}_w] = \det [f \hat{u}, \, g \hat{v}, \, h \hat{w}] = f \hat{u} \cdot (g \hat{v} \times h \hat{w})
> $$
> Essendo $\{\hat{u}, \hat{v}, \hat{w}\}$ una terna ortonormale destrorsa, si ha $\hat{u} \cdot (\hat{v} \times \hat{w}) = 1$, per cui:
> $$
> \det J_{\boldsymbol{\Phi}} = f g h
> $$
> Di conseguenza, l'**elemento di volume** tridimensionale infinitesimo si trasforma secondo:
> $$
> dx dy dz = f g h \, du dv dw
> $$
> In modo analogo, gli **elementi di area superficiale infinitesimi** sulle superfici coordinate $u = \text{cost}$, $v = \text{cost}$, $w = \text{cost}$ valgono:
> $$
> \begin{align}
> d\sigma_u &= \|\boldsymbol{\Phi}_v \times \boldsymbol{\Phi}_w\| \, dv dw = g h \, dv dw \\
> d\sigma_v &= \|\boldsymbol{\Phi}_u \times \boldsymbol{\Phi}_w\| \, du dw = f h \, du dw \\
> d\sigma_w &= \|\boldsymbol{\Phi}_u \times \boldsymbol{\Phi}_v\| \, du dv = f g \, du dv
> \end{align}
> $$
> Considerando un volume infinitesimo $d\Omega$ delimitato da facce ortogonali a $\hat{u}, \hat{v}, \hat{w}$, per ogni campo vettoriale $\mathbf{A}: \Gamma \to \mathbb{R}^3$ e la sua composizione curvilinea $\mathbf{\tilde{A}}: \Omega \to \mathbb{R}^3$, la divergenza può essere ottenuta calcolando il flusso netto infinitesimo uscente attraverso le sei facce del parallelepipedo curvilineo.
>
