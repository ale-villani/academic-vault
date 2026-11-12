---
title: "Funzioni Continue e Teoremi Topologici"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 5)"
tags:
  - math/real-analysis/continuity
  - math/real-analysis/weierstrass
---

# 5. Funzioni Continue e Continuità Globale

## 5.1. Definizione di continuità e algebra delle funzioni continue

> [!definition] Funzione continua in un punto
> Sia $f: X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in X$ un punto di accumulazione per il dominio $X$ (si sottolinea la condizione indispensabile che $x_0 \in X$, ovvero la funzione deve essere necessariamente definita nel punto).
> Si dice che $f$ è **continua in $x_0$** se:
> $$
> \lim_{x \to x_0} f(x) = f(x_0) \qquad (*)
> $$
>
**Formulazioni equivalenti della continuità**

La condizione di continuità $(*)$ può essere formulata equivalentemente in tre linguaggi distinti:

1. **Formulazione analitica $\varepsilon$-$\delta$:**
   $$
   \forall \varepsilon > 0, \; \exists \delta > 0 : \forall x \in X, \; |x - x_0| < \delta \implies |f(x) - f(x_0)| \le \varepsilon
   $$

2. **Formulazione topologica (tramite intorni):**
   $$
   \forall \text{ intorno } V \text{ di } f(x_0), \; \exists \text{ intorno } U \text{ di } x_0 : f(x) \in V, \; \forall x \in U \cap X
   $$

3. **Formulazione sequenziale (tramite successioni):**
   Per ogni successione $\{x_n\}_{n \in \mathbb{N}} \subseteq X$ tale che $\lim_{n \to +\infty} x_n = x_0$, si ha:
   $$
   \lim_{n \to +\infty} f(x_n) = f(x_0)
   $$
   che esprime la proprietà fondamentale di **commutazione del limite con il segno di funzione**:
   $$
   \lim_{n \to +\infty} f(x_n) = f\left(\lim_{n \to +\infty} x_n\right)
   $$

> [!theorem] Teorema (Algebra delle funzioni continue)
> Siano $f, g: X \subseteq \mathbb{R} \to \mathbb{R}$ due funzioni aventi medesimo dominio $X$, e sia $x_0 \in X$ un punto di accumulazione per $X$.
> Si assuma che sia $f$ sia $g$ siano continue nel punto $x_0$. Allora:
> 
> 1. La **funzione somma** $f + g$ è continua in $x_0$:
>    $$
>    \lim_{x \to x_0} (f + g)(x) = (f + g)(x_0) = f(x_0) + g(x_0)
>    $$
> 
> 2. La **funzione differenza** $f - g$ è continua in $x_0$:
>    $$
>    \lim_{x \to x_0} (f - g)(x) = (f - g)(x_0) = f(x_0) - g(x_0)
>    $$
> 
> 3. La **funzione prodotto** $f \cdot g$ è continua in $x_0$:
>    $$
>    \lim_{x \to x_0} (f \cdot g)(x) = (f \cdot g)(x_0) = f(x_0) \cdot g(x_0)
>    $$
> 
> 4. Se $g(x_0) \ne 0$, la **funzione quoziente** $\frac{f}{g}$ (definita su $X' = \{x \in X : g(x) \ne 0\}$) è continua in $x_0$:
>    $$
>    \lim_{x \to x_0} \left(\frac{f}{g}\right)(x) = \left(\frac{f}{g}\right)(x_0) = \frac{f(x_0)}{g(x_0)}
>    $$

> [!quote]- Dimostrazione
> Tutte le proprietà algebriche discendono direttamente dai rispettivi teoremi sull'algebra dei limiti per funzioni reali:
> $$
> \begin{align}
> \lim_{x \to x_0} (f \pm g)(x) &= \lim_{x \to x_0} f(x) \pm \lim_{x \to x_0} g(x) = f(x_0) \pm g(x_0) = (f \pm g)(x_0) \\
> \lim_{x \to x_0} (f \cdot g)(x) &= \left(\lim_{x \to x_0} f(x)\right) \cdot \left(\lim_{x \to x_0} g(x)\right) = f(x_0) \cdot g(x_0) = (f \cdot g)(x_0) \\
> \lim_{x \to x_0} \left(\frac{f}{g}\right)(x) &= \frac{\lim_{x \to x_0} f(x)}{\lim_{x \to x_0} g(x)} = \frac{f(x_0)}{g(x_0)} = \left(\frac{f}{g}\right)(x_0) \quad (\text{se } g(x_0) \ne 0)
> \end{align}
> $$
> dimostrando la continuità di ciascuna combinazione in $x_0$. $\blacksquare$
>
## 5.2. Punti di discontinuità e loro classificazione

Si consideri una funzione $f: X \subseteq \mathbb{R} \to \mathbb{R}$ e un punto $x_0 \in X$ di accumulazione per $X$. Qualora la condizione di continuità non sia verificata, ovvero:
$$
\lim_{x \to x_0} f(x) \ne f(x_0) \quad \lor \quad \nexists \lim_{x \to x_0} f(x)
$$
il punto $x_0$ viene detto **punto di discontinuità** per $f$. I punti di discontinuità si classificano come segue:

### Discontinuità a salto (o di prima specie)

> [!definition] Discontinuità a salto (o di prima specie)
> Il punto $x_0$ è detto di **discontinuità a salto** (o di **I specie**) per $f$ se esistono finiti sia il limite sinistro sia il limite destro di $f(x)$ per $x \to x_0$, ma tali valori limite sono distinti tra loro:
> $$
> \lim_{x \to x_0^-} f(x) = \ell_1 \in \mathbb{R}, \quad \lim_{x \to x_0^+} f(x) = \ell_2 \in \mathbb{R} \quad \text{con } \ell_1 \ne \ell_2
> $$
>
La quantità:
$$
s := |\ell_2 - \ell_1| > 0
$$
prende il nome di **salto** della funzione nel punto $x_0$. Si noti che il valore assunto da $f$ in $x_0$ (qualora esista) non influisce sull'esistenza del salto, ma al più sul fatto che la funzione sia continua a destra o a sinistra.

### Discontinuità eliminabile (o di terza specie)

> [!definition] Discontinuità eliminabile (o di terza specie)
> Il punto $x_0$ è detto di **discontinuità eliminabile** (o di **III specie**) per $f$ se esiste finito il limite della funzione per $x \to x_0$:
> $$
> \lim_{x \to x_0} f(x) = \ell \in \mathbb{R}
> $$
> ma si verifica una delle seguenti due circostanze:
> 1. La funzione non è definita in $x_0$ ($\nexists f(x_0)$, pur essendo $x_0$ punto di accumulazione per $\dom(f)$);
> 2. La funzione è definita in $x_0$, ma il valore assunto differisce dal limite ($f(x_0) \ne \ell$).

> [!example] Prolungamento per continuità
> Si consideri la funzione:
> $$
> f(x) = \frac{\sin x}{x}, \quad x \in \mathbb{R} \setminus \{0\}
> $$
> Poiché $\lim_{x \to 0} \frac{\sin x}{x} = 1$, il punto $x_0 = 0$ è una discontinuità eliminabile. È possibile definire il **prolungamento per continuità** $\widetilde{f}: \mathbb{R} \to \mathbb{R}$:
> $$
> \widetilde{f}(x) := \begin{cases}
> \dfrac{\sin x}{x} & \text{se } x \ne 0 \\
> 1 & \text{se } x = 0
> \end{cases}
> $$
> La funzione $\widetilde{f}$ risulta continua su tutto $\mathbb{R}$.

> [!note] Discontinuità essenziale (o di seconda specie)
> Per completezza, si ricorda che $x_0$ è detto di **seconda specie** (o **essenziale**) qualora almeno uno dei due limiti $\lim_{x \to x_0^-} f(x)$ oppure $\lim_{x \to x_0^+} f(x)$ sia infinito oppure non esista.
>
## 5.3. Discontinuità delle funzioni monotone

> [!definition] Funzione monotona crescente
> Sia $X \subseteq \mathbb{R}$ e sia $f: X \to \mathbb{R}$. La funzione $f$ è detta:
> - **Monotona crescente** (in senso lato o debole) se:
>   $$
>   \forall x_1, x_2 \in X : x_1 < x_2 \implies f(x_1) \le f(x_2)
>   $$
> - **Strettamente monotona crescente** se:
>   $$
>   \forall x_1, x_2 \in X : x_1 < x_2 \implies f(x_1) < f(x_2)
>   $$
>
Per le funzioni monotone sussiste un risultato fondamentale sulla regolarità e sulla struttura dell'insieme delle discontinuità.

> [!theorem] Teorema sulla struttura delle discontinuità delle funzioni monotone
> Sia $f: [a, b] \to \mathbb{R}$ una funzione monotona sull'intervallo chiuso e limitato $[a, b]$.
> Allora:
> 1. In ogni punto interno $x_0 \in (a, b)$ esistono sempre finiti sia il limite sinistro sia il limite destro:
>    $$
>    \lim_{x \to x_0^-} f(x) = \sup_{x < x_0} f(x), \quad \lim_{x \to x_0^+} f(x) = \inf_{x > x_0} f(x)
>    $$
> 2. Di conseguenza, tutti gli eventuali punti di discontinuità di $f$ interni ad $(a, b)$ sono esclusivamente **discontinuità a salto (di I specie)**; agli estremi $x = a$ e $x = b$ possono verificarsi al più discontinuità eliminabili rispetto al limite unilaterale.
> 3. L'insieme $D \subset [a, b]$ dei punti di discontinuità di $f$ è **al più numerabile** (può essere vuoto, finito o numerabile).

> [!quote]- Dimostrazione
> Si assuma, senza perdita di generalità, che $f$ sia monotona crescente.
> Per ogni $x_0 \in (a, b)$, l'insieme $\{f(x) : x < x_0\}$ è non vuoto e superiormente limitato da $f(x_0)$; analogamente $\{f(x) : x > x_0\}$ è inferiormente limitato da $f(x_0)$. Per il teorema sul limite delle funzioni monotone, esistono finiti:
> $$
> f(x_0^-) := \lim_{x \to x_0^-} f(x) \le f(x_0) \le \lim_{x \to x_0^+} f(x) =: f(x_0^+)
> $$
> Pertanto in ogni punto di discontinuità $x_0$ si ha necessariamente un salto $s(x_0) = f(x_0^+) - f(x_0^-) > 0$.
> A ciascun punto di discontinuità $x_0 \in D \cap (a, b)$ è possibile associare un intervallo aperto disgiunto:
> $$
> J_{x_0} := \left(f(x_0^-), f(x_0^+)\right) \subset \mathbb{R}
> $$
> Se $x_1 < x_2$, allora per la monotonia $f(x_1^+) \le f(x_2^-)$, cosicché gli intervalli $J_{x_1}$ e $J_{x_2}$ sono mutuamente disgiunti:
> $$
> x_1 \ne x_2 \implies J_{x_1} \cap J_{x_2} = \emptyset
> $$
> Per la densità di $\mathbb{Q}$ in $\mathbb{R}$, ogni intervallo aperto non vuoto $J_{x_0}$ contiene almeno un numero razionale $q_{x_0} \in \mathbb{Q}$. Poiché gli intervalli sono a due a due disgiunti, l'applicazione:
> $$
> \phi: D \to \mathbb{Q}, \quad x_0 \mapsto q_{x_0} \in J_{x_0} \cap \mathbb{Q}
> $$
> è iniettiva. Essendo $\mathbb{Q}$ un insieme numerabile, anche il dominio $D$ è al più numerabile. $\blacksquare$
>
## 5.4. Teoremi fondamentali: Zeri di Bolzano e Valori Intermedi

Molte proprietà locali delle funzioni continue discendono direttamente dai corrispondenti teoremi sui limiti:
- **Teorema della permanenza del segno:** Sia $f: (a, b) \to \mathbb{R}$ continua in $x_0 \in (a, b)$. Se $f(x_0) > 0$, allora esiste un intorno $U(x_0)$ tale che per ogni $x \in U(x_0)$ si ha $f(x) > 0$.

> [!definition] Continuità globale su un insieme
> Sia $X \subseteq \mathbb{R}$ e sia $f: X \to \mathbb{R}$. Si dice che $f$ è **continua su $X$** (e si scrive $f \in C(X)$) se $f$ è continua in ogni punto $x_0 \in X$. Qualora tutti i punti di $X$ siano punti di accumulazione, ciò equivale a richiedere che per ogni $x_0 \in X$:
> $$
> \lim_{x \to x_0} f(x) = f(x_0)
> $$
>
### Teorema degli zeri

> [!theorem] Teorema degli zeri (di Bolzano)
> Sia $f: [a, b] \to \mathbb{R}$ una funzione continua sull'intervallo chiuso e limitato $[a, b]$.
> Si assuma che la funzione assuma valori discordi agli estremi dell'intervallo:
> $$
> f(a) \cdot f(b) < 0
> $$
> Allora esiste almeno un punto interno $c \in (a, b)$ tale che:
> $$
> f(c) = 0
> $$

> [!warning] Necessità dell'ipotesi di continuità
> L'ipotesi di continuità su tutto $[a, b]$ è essenziale. Se $f$ presenta anche una sola discontinuità all'interno dell'intervallo, la tesi può decadere.
> Ad esempio, si consideri la funzione:
> $$
> f(x) = \begin{cases}
> 1 & \text{se } x \in [0, 1) \\
> -1 & \text{se } x \in [1, 2]
> \end{cases}
> $$
> Si ha $f(0) \cdot f(2) = 1 \cdot (-1) = -1 < 0$, ma $f$ non si annulla mai in $[0, 2]$, a causa della discontinuità a salto presente in $x = 1$. Analogamente, funzioni con asintoti verticali che cambiano segno attraverso una singolarità non ammettono alcuno zero.

> [!quote]- Dimostrazione
> La dimostrazione è costruttiva e si basa sull'**algoritmo di bisezione** (o metodo dicotomico).
> Si pone $a_0 := a$, $b_0 := b$ e si considera il punto medio del segmento:
> $$
> c_0 := \frac{a_0 + b_0}{2}
> $$
> - Se $f(c_0) = 0$, il punto cercato è $c = c_0$ e la dimostrazione si conclude.
> - Se $f(c_0) \ne 0$, poiché $f(a_0)$ e $f(b_0)$ hanno segni opposti, il prodotto $f(c_0) \cdot f(x)$ deve cambiare segno in uno e uno solo dei due sottointervalli $[a_0, c_0]$ oppure $[c_0, b_0]$:
>   - Se $f(a_0) \cdot f(c_0) < 0$, si definisce il nuovo intervallo ponendo $a_1 := a_0$ e $b_1 := c_0$;
>   - Se $f(c_0) \cdot f(b_0) < 0$, si definisce il nuovo intervallo ponendo $a_1 := c_0$ e $b_1 := b_0$.
>
> Si reitera indefinitamente il procedimento. Se ad un passo finito $k$ si incontra $f(c_k) = 0$, lo zero è trovato. Altrimenti, la procedura genera una successione infinita di intervalli chiusi e limitati inscatolati:
> $$
> [a_0, b_0] \supset [a_1, b_1] \supset [a_2, b_2] \supset \dots \supset [a_n, b_n] \supset \dots
> $$
> aventi le seguenti tre proprietà fondamentali:
> 1. **Monotonia degli estremi:** $\{a_n\}_{n \in \mathbb{N}}$ è una successione crescente e $\{b_n\}_{n \in \mathbb{N}}$ è una successione decrescente:
>    $$
>    a = a_0 \le a_1 \le a_2 \le \dots \le a_n \le b_n \le \dots \le b_1 \le b_0 = b
>    $$
> 2. **Ampiezza degli intervalli infinitesima:** Ad ogni iterazione l'ampiezza si dimezza:
>    $$
>    b_n - a_n = \frac{b - a}{2^n}, \quad \forall n \in \mathbb{N}
>    $$
> 3. **Discorsità dei segni:** Per costruzione:
>    $$
>    f(a_n) \cdot f(b_n) < 0, \quad \forall n \in \mathbb{N}
>    $$
>
> Essendo la successione $\{a_n\}$ crescente e superiormente limitata da $b$, ed essendo $\{b_n\}$ decrescente e inferiormente limitata da $a$, per il teorema sulle successioni monotone entrambe convergono a limiti finiti:
> $$
> \exists \ell_1, \ell_2 \in [a, b] : \lim_{n \to +\infty} a_n = \ell_1, \quad \lim_{n \to +\infty} b_n = \ell_2
> $$
> Inoltre, applicando l'algebra dei limiti alla differenza:
> $$
> \ell_2 - \ell_1 = \lim_{n \to +\infty} (b_n - a_n) = \lim_{n \to +\infty} \frac{b - a}{2^n} = 0
> $$
> da cui discende:
> $$
> \ell_1 = \ell_2 =: c \in [a, b]
> $$
> Resta da mostrare che $f(c) = 0$.
> Poiché $f$ è continua su tutto $[a, b]$, essa è continua nel punto $c$. Per il teorema ponte (continuità sequenziale):
> $$
> \lim_{n \to +\infty} f(a_n) = f(c) \quad \text{e} \quad \lim_{n \to +\infty} f(b_n) = f(c)
> $$
> Supponiamo, per fissare le idee, che sia $f(a_n) > 0$ e $f(b_n) < 0$ per ogni $n \in \mathbb{N}$ (il caso opposto è perfettamente simmetrico).
> Applicando il teorema di permanenza del segno per le successioni:
> $$
> \begin{align}
> \forall n \in \mathbb{N}, \; f(a_n) > 0 &\implies f(c) = \lim_{n \to +\infty} f(a_n) \ge 0 \\
> \forall n \in \mathbb{N}, \; f(b_n) < 0 &\implies f(c) = \lim_{n \to +\infty} f(b_n) \le 0
> \end{align}
> $$
> Combinando le due disuguaglianze si ottiene:
> $$
> 0 \le f(c) \le 0 \implies f(c) = 0
> $$
> Essendo infine $f(a) \ne 0$ e $f(b) \ne 0$, il punto $c$ non può coincidere con gli estremi, per cui $c \in (a, b)$. $\blacksquare$
>
### Teorema dei valori intermedi

Il teorema degli zeri si generalizza immediatamente all'assunzione di qualunque valore compreso tra l'estremo inferiore e l'estremo superiore delle immagini.

> [!theorem] Corollario (Teorema dei valori intermedi)
> Sia $I \subseteq \mathbb{R}$ un intervallo qualunque (aperto, chiuso, semiaperto, limitato o illimitato) e sia $f: I \to \mathbb{R}$ una funzione continua su $I$.
> Siano:
> $$
> \lambda := \inf_{x \in I} f(x), \quad \Lambda := \sup_{x \in I} f(x)
> $$
> Se la funzione non è costante (ovvero $\lambda < \Lambda$), allora per ogni valore reale intermedio $t \in (\lambda, \Lambda)$ esiste almeno un punto $c \in I$ tale che:
> $$
> f(c) = t
> $$
> In altri termini, l'immagine di un intervallo tramite una funzione continua è ancora un intervallo: $f(I)$ è un intervallo di estremi $\lambda$ e $\Lambda$.

> [!quote]- Dimostrazione
> Sia fissato arbitrariamente $t \in (\lambda, \Lambda)$.
> Dalla definizione di estremo inferiore e superiore di un insieme:
> - Poiché $\lambda = \inf_{x \in I} f(x)$ e $t > \lambda$, $t$ non è un minorante per l'insieme delle immagini $f(I)$. Pertanto esiste un elemento $x_1 \in I$ tale che:
>   $$
>   f(x_1) < t
>   $$
> - Poiché $\Lambda = \sup_{x \in I} f(x)$ e $t < \Lambda$, $t$ non è un maggiorante per l'insieme delle immagini $f(I)$. Infatti, se per assurdo non esistesse alcun punto con $f(x) > t$, si avrebbe $f(x) \le t$ per ogni $x \in I$, rendendo $t$ un maggiorante strettamente minore del supposto estremo superiore $\Lambda$, il che è assurdo. Dunque esiste un elemento $x_2 \in I$ tale che:
>   $$
>   f(x_2) > t
>   $$
>
> Riassumendo, si individuano due punti $x_1, x_2 \in I$ tali che:
> $$
> \lambda < f(x_1) < t < f(x_2) < \Lambda
> $$
> Si consideri ora la funzione ausiliaria:
> $$
> g(x) := f(x) - t
> $$
> definita sull'intervallo chiuso e limitato avente per estremi $x_1$ e $x_2$ (ovvero $[x_1, x_2]$ se $x_1 < x_2$, oppure $[x_2, x_1]$ se $x_2 < x_1$). Tale intervallo è interamente contenuto in $I$ per la convessità degli intervalli.
> La funzione $g$ gode delle seguenti proprietà:
> 1. $g$ è continua su tale intervallo in quanto differenza di funzioni continue ($f$ continua e la funzione costante $t$);
> 2. Agli estremi assume valori di segno discorde:
>    $$
>    g(x_1) = f(x_1) - t < 0, \quad g(x_2) = f(x_2) - t > 0 \implies g(x_1) \cdot g(x_2) < 0
>    $$
>
> Per il Teorema degli zeri applicato a $g$, esiste almeno un punto $c$ strettamente compreso tra $x_1$ e $x_2$ (quindi $c \in I$) tale che:
> $$
> g(c) = 0 \iff f(c) - t = 0 \iff f(c) = t
> $$
> dimostrando la tesi. $\blacksquare$
>
## 5.5. Continuità della funzione inversa

Un quesito fondamentale dell'analisi reale riguarda la conservazione della continuità nel passaggio alla funzione inversa:
> *Se una funzione $f$ è continua e invertibile (biettiva) sul suo dominio, la sua funzione inversa $f^{-1}$ è necessariamente continua?*

La risposta a questa domanda è in generale **negativa**, a meno che non siano soddisfatte opportune ipotesi topologiche sul dominio (come la connessione o la compattezza).

> [!warning] Controesempio fondamentale: Dominio non connesso
> Si consideri la funzione $f: X \to Y$ definita sul dominio disgiunto $X = [0, 1] \cup (2, 3]$ con codominio $Y = [0, 2]$, definita a tratti da:
> $$
> f(x) := \begin{cases}
> x & \text{se } x \in [0, 1] \\
> x - 1 & \text{se } x \in (2, 3]
> \end{cases}
> $$
> 
> Verifichiamo le proprietà di $f$:
> - **Continuità di $f$:** $f$ è continua in ogni punto di $[0, 1]$ e in ogni punto di $(2, 3]$. Poiché i due insiemi sono separati da una distanza positiva $\text{dist}([0, 1], (2, 3]) = 1 > 0$, la funzione è continua su tutto il suo dominio $X$.
> - **Biettività di $f$:** 
>   - $f([0, 1]) = [0, 1]$;
>   - $f((2, 3]) = (1, 2]$;
>   - L'immagine è $f(X) = [0, 1] \cup (1, 2] = [0, 2]$, dunque $f$ è suriettiva su $[0, 2]$.
>   - Inoltre $f$ è strettamente crescente su ciascun pezzo e le immagini sono disgiunte, quindi $f$ è iniettiva.
> 
> Esiste pertanto la funzione inversa $f^{-1}: [0, 2] \to [0, 1] \cup (2, 3]$, esplicitamente data da:
> $$
> f^{-1}(y) = \begin{cases}
> y & \text{se } y \in [0, 1] \\
> y + 1 & \text{se } y \in (1, 2]
> \end{cases}
> $$
> Valutando i limiti destro e sinistro di $f^{-1}$ nel punto di raccordo $y_0 = 1$:
> $$
> \lim_{y \to 1^-} f^{-1}(y) = 1 = f^{-1}(1), \quad \lim_{y \to 1^+} f^{-1}(y) = \lim_{y \to 1^+} (y + 1) = 2
> $$
> Poiché i due limiti sono finiti ma diversi ($1 \ne 2$), la funzione inversa $f^{-1}$ presenta una **discontinuità a salto (di prima specie)** nel punto $y_0 = 1$.
> Pertanto, $f$ è continua e biettiva ma $f^{-1}$ non è continua.
>
La discontinuità dell'inversa è originata dal fatto che il dominio $X$ presenta una "frattura" (non è un intervallo connesso). Quando il dominio è un intervallo, la situazione cambia radicalmente.

> [!theorem] Teorema di continuità della funzione inversa
> Sia $I \subseteq \mathbb{R}$ un **intervallo** e sia $f: I \to A \subseteq \mathbb{R}$ una funzione continua e invertibile da $I$ sul codominio $A = f(I)$.
> Allora:
> 1. La funzione $f$ è strettamente monotona su $I$ (strettamente crescente oppure strettamente decrescente);
> 2. L'insieme immagine $A = f(I)$ è a sua volta un intervallo;
> 3. La funzione inversa $f^{-1}: A \to I$ è **continua** su tutto $A$.

> [!note] Estensione a insiemi compatti
> L'ipotesi che il dominio sia un intervallo può essere sostituita dall'ipotesi che il dominio sia un insieme **compatto** (chiuso e limitato in $\mathbb{R}$, o più in generale in $\mathbb{R}^k$). Se $K$ è compatto e $f: K \to f(K)$ è continua e biettiva, allora $f^{-1}: f(K) \to K$ è automaticamente continua (omeomorfismo).
>
## 5.6. Teorema di Weierstrass per funzioni continue su insiemi compatti

**Richiami: Convergenza in spazi metrici e in $\mathbb{R}^k$**

Si richiama la nozione generale di limite di successione in uno spazio metrico:
- Sia $(X, d)$ uno spazio metrico. Una successione $\{x_n\}_{n \in \mathbb{N}} \subseteq X$ converge a un limite $x \in X$ se e solo se:
  $$
  \lim_{n \to +\infty} d(x_n, x) = 0
  $$
- Nel caso dello spazio euclideo $X = \mathbb{R}^k$ dotato della norma euclidea $|\cdot|$, una successione di vettori $\{\mathbf{x}_n\}_{n \in \mathbb{N}} \subset \mathbb{R}^k$ converge a $\mathbf{x} \in \mathbb{R}^k$ se e solo se:
  $$
  \lim_{n \to +\infty} |\mathbf{x}_n - \mathbf{x}| = 0
  $$
  ovvero se e solo se converge componente per componente. Lo spazio metrico $\mathbb{R}^k$ è **completo** (ogni successione di Cauchy in $\mathbb{R}^k$ converge a un elemento di $\mathbb{R}^k$).

### Continuità per funzioni a più variabili

> [!definition] Continuità in $\mathbb{R}^k$
> Sia $A \subseteq \mathbb{R}^k$ e sia $f: A \to \mathbb{R}$. Sia $\mathbf{x}_0 \in A$ un punto di accumulazione per $A$.
> La funzione $f$ si dice **continua nel punto $\mathbf{x}_0$** se:
> $$
> \lim_{\mathbf{x} \to \mathbf{x}_0} f(\mathbf{x}) = f(\mathbf{x}_0)
> $$
> Ovvero, in termini analitici $\varepsilon$-$\delta$:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall \mathbf{x} \in A, \; |\mathbf{x} - \mathbf{x}_0| \le \delta \implies |f(\mathbf{x}) - f(\mathbf{x}_0)| < \varepsilon
> $$
> dove:
> - $|\mathbf{x} - \mathbf{x}_0| = \sqrt{\sum_{i=1}^k (x_i - x_{0,i})^2}$ rappresenta la distanza euclidea (modulo del vettore differenza) in $\mathbb{R}^k$;
> - $|f(\mathbf{x}) - f(\mathbf{x}_0)|$ rappresenta il valore assoluto della differenza tra numeri reali in $\mathbb{R}$.
>
### Enunciato generale del Teorema di Weierstrass (Compattezza)

> [!theorem] Teorema della conservazione della compattezza (Weierstrass topologico)
> Sia $H \subset \mathbb{R}^k$ un insieme **compatto** (ovvero chiuso e limitato per il teorema di Heine-Borel), e sia $f: H \to \mathbb{R}$ una funzione continua su tutto $H$.
> Allora l'insieme immagine:
> $$
> f(H) := \{y \in \mathbb{R} : \exists \mathbf{x} \in H \text{ tale che } y = f(\mathbf{x})\}
> $$
> è un insieme **compatto** di $\mathbb{R}$ (quindi chiuso e limitato).
>
Da questo teorema generale discendono come corollari le formulazioni classiche del Teorema di Weierstrass per l'ottimizzazione globale.

> [!theorem] Corollario 1 (Teorema di Weierstrass in $\mathbb{R}^k$)
> Sia $H \subset \mathbb{R}^k$ un sottoinsieme compatto non vuoto, e sia $f: H \to \mathbb{R}$ una funzione continua su $H$.
> Allora $f$ ammette **massimo assoluto** e **minimo assoluto** in $H$, ovvero esistono due punti $\mathbf{x}_1, \mathbf{x}_2 \in H$ tali che:
> $$
> f(\mathbf{x}_1) \le f(\mathbf{x}) \le f(\mathbf{x}_2), \quad \forall \mathbf{x} \in H
> $$
> In particolare:
> $$
> f(\mathbf{x}_1) = \min_{\mathbf{x} \in H} f(\mathbf{x}), \quad f(\mathbf{x}_2) = \max_{\mathbf{x} \in H} f(\mathbf{x})
> $$

> [!theorem] Corollario 2 (Teorema di Weierstrass classico in $\mathbb{R}$)
> Sia $f: [a, b] \to \mathbb{R}$ una funzione continua definita su un intervallo chiuso e limitato $[a, b] \subset \mathbb{R}$.
> Allora $f$ ammette massimo e minimo assoluti su $[a, b]$, ovvero esistono $x_1, x_2 \in [a, b]$ tali che:
> $$
> f(x_1) \le f(x) \le f(x_2), \quad \forall x \in [a, b]
> $$
>
**Controesempi e necessità delle ipotesi in $\mathbb{R}$**

Tutte le ipotesi del Teorema di Weierstrass sono necessarie e non riducibili:

1. **Insieme non chiuso (intervallo aperto $(a, b)$):**
   Sia $f: (a, b) \to \mathbb{R}$ continua. Se ad esempio:
   $$
   \lim_{x \to a^+} f(x) = +\infty \quad \text{e} \quad \lim_{x \to b^-} f(x) = -\infty
   $$
   la funzione è illimitata sia superiormente sia inferiormente, dunque non ammette né massimo né minimo assoluti. Anche per funzioni limitate su aperti, come $f(x) = x$ su $(0, 1)$, si ha $\inf f = 0$ e $\sup f = 1$, ma tali valori non appartengono all'immagine $f((0, 1)) = (0, 1)$, per cui massimo e minimo non esistono.

2. **Insieme non limitato (dominio $\mathbb{R}$):**
   Sia $f: \mathbb{R} \to \mathbb{R}$ con $f(x) = x$. Sebbene $f$ sia continua e il dominio $\mathbb{R}$ sia chiuso, l'illimitatezza del dominio impedisce l'esistenza di massimo e minimo ($\sup f = +\infty$, $\inf f = -\infty$).

3. **Funzione non continua su compatto $[a, b]$:**
   Sia $f: [a, b] \to \mathbb{R}$ definita su un intervallo chiuso e limitato, ma priva di continuità in uno o più punti. Ad esempio:
   $$
   f(x) = \begin{cases}
   x & \text{se } x \in [0, 1) \\
   0 & \text{se } x = 1
   \end{cases}
   $$
   Su $[0, 1]$, l'insieme immagine è $[0, 1)$. Si ha $\sup_{x \in [0, 1]} f(x) = 1$, ma non esiste alcun $x \in [0, 1]$ per cui $f(x) = 1$. Dunque $f$ non ammette massimo assoluto.

**Dimostrazione del Teorema di Weierstrass**

La dimostrazione si articola in due passi fondamentali:
1. Dimostrazione che l'immagine $f(H)$ è compatta per successioni;
2. Dimostrazione del lemma secondo cui ogni sottoinsieme compatto di $\mathbb{R}$ ammette massimo e minimo.

> [!quote]- Dimostrazione
> **Passo 1: Compattezza per successioni di $f(H)$.**
> Si consideri una generica successione di elementi nell'insieme immagine:
> $$
> \{y_n\}_{n \in \mathbb{N}} \subseteq f(H)
> $$
> Per definizione di insieme immagine, per ciascun indice $n \in \mathbb{N}$ esiste almeno una controimmagine $\mathbf{x}_n \in H$ tale che:
> $$
> y_n = f(\mathbf{x}_n)
> $$
> Si ottiene così una successione $\{\mathbf{x}_n\}_{n \in \mathbb{N}} \subseteq H$.
> Poiché $H$ è compatto in $\mathbb{R}^k$, esso è compatto per successioni (per il teorema di Bolzano-Weierstrass in $\mathbb{R}^k$). Esiste quindi una sottosuccessione estratta $\{\mathbf{x}_{n_k}\}_{k \in \mathbb{N}}$ convergente a un elemento $\mathbf{x} \in H$:
> $$
> \lim_{k \to +\infty} \mathbf{x}_{n_k} = \mathbf{x} \in H
> $$
> Per ipotesi, la funzione $f$ è continua su tutto $H$, e quindi in particolare nel punto limite $\mathbf{x}$. Applicando la definizione di continuità sequenziale:
> $$
> \lim_{k \to +\infty} f(\mathbf{x}_{n_k}) = f(\mathbf{x})
> $$
> Ma per definizione $f(\mathbf{x}_{n_k}) = y_{n_k}$, per cui:
> $$
> \lim_{k \to +\infty} y_{n_k} = f(\mathbf{x}) \in f(H)
> $$
> Abbiamo quindi estratto dalla successione $\{y_n\}$ una sottosuccessione $\{y_{n_k}\}$ convergente ad un elemento appartenente a $f(H)$.
> Poiché ciò vale per ogni successione $\{y_n\} \subseteq f(H)$, l'insieme $f(H)$ è **compatto per successioni**, e pertanto è **compatto** in $\mathbb{R}$.
>
> ---
>
> **Passo 2: Lemma sull'esistenza di massimo e minimo per compatti in $\mathbb{R}$.**
>
> > [!proposition] Lemma
> > Sia $B \subset \mathbb{R}$ un sottoinsieme compatto non vuoto. Allora $B$ ammette massimo e minimo assoluti.
>
> *Dimostrazione del Lemma:*
> Essendo $B$ compatto in $\mathbb{R}$, per il teorema di Heine-Borel esso è **chiuso e limitato**.
> Poiché $B$ è non vuoto e superiormente limitato, per l'assioma di completezza di Dedekind ammette estremo superiore finito:
> $$
> y := \sup B \in \mathbb{R}
> $$
> Si considerano due possibilità per il valore $y$:
> - Se $y$ non è un punto di accumulazione per $B$, esso deve necessariamente essere un **punto isolato** di $B$ (se non appartenesse a $B$, ogni suo intorno conterrebbe punti di $B$ per la caratterizzazione dell'estremo superiore, rendendolo punto di accumulazione, contraddicendo l'ipotesi). Pertanto $y \in B$.
> - Se $y$ è un punto di accumulazione per $B$, poiché $B$ è chiuso, esso contiene tutti i propri punti di accumulazione ($D(B) \subseteq B$). Dunque $y \in B$.
>
> In entrambi i casi si conclude che:
> $$
> \sup B \in B \implies \max B = \sup B = y
> $$
> In maniera del tutto speculare, ponendo $z := \inf B \in \mathbb{R}$, la chiusura e la limitatezza inferiore di $B$ garantiscono che $\inf B \in B$, da cui $\min B = \inf B = z$.
> Il Lemma è così dimostrato.
>
> ---
>
> **Conclusione:**
> Applicando il Lemma appena dimostrato all'insieme immagine $B = f(H)$, che è compatto e non vuoto in quanto $H \ne \emptyset$, si ricava che $f(H)$ possiede un elemento minimo $y_1$ e un elemento massimo $y_2$:
> $$
> \begin{align}
> y_1 := \min f(H) \in f(H) &\implies \exists \mathbf{x}_1 \in H : f(\mathbf{x}_1) = y_1 \le f(\mathbf{x}), \quad \forall \mathbf{x} \in H \\
> y_2 := \max f(H) \in f(H) &\implies \exists \mathbf{x}_2 \in H : f(\mathbf{x}_2) = y_2 \ge f(\mathbf{x}), \quad \forall \mathbf{x} \in H
> \end{align}
> $$
> I punti $\mathbf{x}_1$ e $\mathbf{x}_2$ costituiscono rispettivamente i punti di minimo assoluto e massimo assoluto di $f$ su $H$. $\blacksquare$
>
## 5.7. Funzioni uniformemente continue e Teorema di Heine-Cantor

> [!definition] Continuità uniforme su un insieme
> Sia $A \subseteq \mathbb{R}^n$ e sia $f: A \to \mathbb{R}$. La funzione $f$ si dice **uniformemente continua su $A$** se:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall \mathbf{x}, \mathbf{x}_0 \in A, \; |\mathbf{x} - \mathbf{x}_0| \le \delta \implies |f(\mathbf{x}) - f(\mathbf{x}_0)| \le \varepsilon
> $$

> [!note] Differenza concettuale tra continuità puntuale e continuità uniforme
> La differenza fondamentale risiede nell'**ordine dei quantificatori logici**:
> - **Continuità puntuale su $A$:**
>   $$
>   \forall \mathbf{x}_0 \in A, \; \forall \varepsilon > 0, \; \exists \delta = \delta(\varepsilon, \mathbf{x}_0) > 0 : \forall \mathbf{x} \in A, \; |\mathbf{x} - \mathbf{x}_0| \le \delta \implies |f(\mathbf{x}) - f(\mathbf{x}_0)| \le \varepsilon
>   $$
>   Il raggio $\delta$ dipende sia da $\varepsilon$ sia dalla posizione del punto $\mathbf{x}_0$. Muovendosi nell'insieme $A$, il valore di $\delta$ può diventare arbitrariamente piccolo.
> - **Continuità uniforme su $A$:**
>   $$
>   \forall \varepsilon > 0, \; \exists \delta = \delta(\varepsilon) > 0 : \forall \mathbf{x}, \mathbf{x}_0 \in A, \; |\mathbf{x} - \mathbf{x}_0| \le \delta \implies |f(\mathbf{x}) - f(\mathbf{x}_0)| \le \varepsilon
>   $$
>   Il raggio $\delta$ dipende **esclusivamente** da $\varepsilon$ ed è valido uniformemente per qualsiasi coppia di punti $\mathbf{x}, \mathbf{x}_0 \in A$.
>
Sussiste l'implicazione diretta:
$$
f \text{ uniformemente continua in } A \implies f \text{ continua in } A
$$
mentre l'implicazione inversa **non sussiste in generale**.

> [!example] Funzione continua ma non uniformemente continua: $f(x) = \frac{1}{x}$ su $(0, 1]$
> Si ponga $n = 1$ e si consideri la funzione:
> $$
> f(x) = \frac{1}{x}, \quad x \in (0, 1]
> $$
> La funzione $f$ è continua su $(0, 1]$. Verifichiamo la dipendenza di $\delta$ da $x_0$ applicando la definizione di continuità ordinaria:
> Fissato $x_0 \in (0, 1]$ e $\varepsilon > 0$, si ricerca $\delta > 0$ tale che:
> $$
> |x - x_0| \le \delta \implies \left|\frac{1}{x} - \frac{1}{x_0}\right| \le \varepsilon
> $$
> Esplicitando la disuguaglianza:
> $$
> \left|\frac{1}{x} - \frac{1}{x_0}\right| = \frac{|x_0 - x|}{x \cdot x_0} = \frac{|x - x_0|}{x \cdot x_0} \le \varepsilon
> $$
> Quando $x_0 \to 0^+$, la quantità al denominatore $x \cdot x_0$ tende a $0$, costringendo il raggio $\delta$ a tendere a zero per mantenere il rapporto limitato da $\varepsilon$:
> $$
> \delta(\varepsilon, x_0) \approx \varepsilon \cdot x_0^2 \xrightarrow{x_0 \to 0^+} 0
> $$
> Non esiste alcun $\delta > 0$ che possa funzionare simultaneamente per tutti i punti vicini all'origine: per quanto piccolo si scelga $\delta$, avvicinandosi a zero la pendenza della curva esplode e la funzione compie variazioni superiori ad $\varepsilon$ su distanze inferiori a $\delta$.
> Dunque $f(x) = \frac{1}{x}$ è continua in $(0, 1]$, ma **non è uniformemente continua** su $(0, 1]$.

> [!example] Esempio di non uniforme continuità: $f(x) = \frac{1}{x}$ su $(0, 1]$
>
> Si conclude la verifica analitica dell'esempio relativo alla funzione:
> $$
> f(x) = \frac{1}{x}, \quad x \in (0, 1]
> $$
> La funzione è continua in ogni punto $x_0 \in (0, 1]$. Fissato $\varepsilon > 0$ e fissato $x_0 \in (0, 1]$, si ricerca un raggio $\delta > 0$ tale che:
> $$
> |x - x_0| \le \delta \implies \left|\frac{1}{x} - \frac{1}{x_0}\right| \le \varepsilon
> $$
> Sviluppando la disuguaglianza nell'immagine:
> $$
> \left|\frac{1}{x} - \frac{1}{x_0}\right| \le \varepsilon \iff \frac{|x_0 - x|}{x x_0} \le \varepsilon
> $$
> Poiché $x, x_0 \in (0, 1]$, il prodotto a denominatore è strettamente positivo ($x x_0 > 0$), per cui:
> $$
> |x_0 - x| \le \varepsilon x x_0 \iff x_0 - \varepsilon x x_0 \le x \le x_0 + \varepsilon x x_0
> $$
> Risolvendo separatamente le due disequazioni rispetto a $x$:
> $$
> \begin{cases}
> x \ge x_0 - \varepsilon x x_0 \implies x(1 + \varepsilon x_0) \ge x_0 \implies x \ge \frac{x_0}{1 + \varepsilon x_0} \\
> x \le x_0 + \varepsilon x x_0 \implies x(1 - \varepsilon x_0) \le x_0 \implies x \le \frac{x_0}{1 - \varepsilon x_0} \quad \left(\text{valida se } \varepsilon < \frac{1}{x_0}\right)
> \end{cases}
> $$
> La disuguaglianza iniziale è dunque verificata per ogni $x$ appartenente all'intervallo:
> $$
> \frac{x_0}{1 + \varepsilon x_0} \le x \le \frac{x_0}{1 - \varepsilon x_0}
> $$
> Per individuare un intorno sferico centrato in $x_0$ di raggio $\delta$, ovvero $[x_0 - \delta, x_0 + \delta]$, si sceglie come $\delta$ il raggio del semi-intervallo più piccolo (quello sinistro):
> $$
> \delta(\varepsilon, x_0) = x_0 - \frac{x_0}{1 + \varepsilon x_0} = \frac{x_0(1 + \varepsilon x_0) - x_0}{1 + \varepsilon x_0} = \frac{\varepsilon x_0^2}{1 + \varepsilon x_0}
> $$
> Valutando il limite di tale raggio al tendere di $x_0$ all'estremo inferiore $0^+$:
> $$
> \lim_{x_0 \to 0^+} \delta(\varepsilon, x_0) = \lim_{x_0 \to 0^+} \frac{\varepsilon x_0^2}{1 + \varepsilon x_0} = 0^+
> $$

> [!note] Dipendenza del parametro $\delta$ da $x_0$
> Poiché $\lim_{x_0 \to 0^+} \delta(\varepsilon, x_0) = 0^+$, il raggio $\delta$ dipende in modo essenziale non solo da $\varepsilon$, ma dalla posizione di $x_0$: avvicinandosi allo zero, per mantenere la medesima oscillazione verticale $\varepsilon$ è necessario restringere arbitrariamente l'intorno orizzontale $\delta$.
> Non è quindi possibile determinare un $\delta > 0$ che dipenda unicamente da $\varepsilon$ e che sia valido uniformemente su tutto $(0, 1]$.
> 
> Ne segue che la funzione $f(x) = \frac{1}{x}$ **non è uniformemente continua** in $(0, 1]$, pur essendo continua in ciascun punto di tale intervallo.

> [!theorem] Teorema di Heine-Cantor
> Sia $A \subset \mathbb{R}^n$ un insieme compatto (ovvero chiuso e limitato, in virtù del Teorema di Heine-Borel), e sia $f: A \to \mathbb{R}$ una funzione continua in ogni punto di $A$ (assumendo che ogni punto di $A$ sia di accumulazione per $A$).
> Allora la funzione $f$ è **uniformemente continua** in $A$.

> [!proposition] Corollario unidimensionale
> Se $f: [a, b] \to \mathbb{R}$ è una funzione continua definita su un intervallo chiuso e limitato $[a, b] \subset \mathbb{R}$, allora $f$ è uniformemente continua in $[a, b]$ (essendo $[a, b]$ compatto per il teorema di Heine-Borel).

> [!quote]- Dimostrazione
> Si procede per assurdo, negando la tesi di uniforme continuità della funzione $f$ sull'insieme compatto $A$.
> La definizione di uniforme continuità su $A$ richiede che:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall \mathbf{x}, \mathbf{z} \in A, \; \|\mathbf{x} - \mathbf{z}\| \le \delta \implies |f(\mathbf{x}) - f(\mathbf{z})| \le \varepsilon
> $$
> La negazione logica di tale proprietà equivale ad affermare che:
> $$
> \exists \varepsilon_0 > 0 : \forall \delta > 0, \; \exists \mathbf{x}_\delta, \mathbf{z}_\delta \in A : \|\mathbf{x}_\delta - \mathbf{z}_\delta\| \le \delta \quad \text{ma} \quad |f(\mathbf{x}_\delta) - f(\mathbf{z}_\delta)| > \varepsilon_0
> $$
> Poiché la disuguaglianza deve sussistere per ogni scelta di $\delta > 0$, si può scegliere una successione di parametri $\delta$ infinitesima, ponendo:
> $$
> \delta_k := \frac{1}{k}, \quad k \in \mathbb{N}
> $$
> In corrispondenza di ciascun $k \in \mathbb{N}$, esistono dunque due vettori $\mathbf{x}_k, \mathbf{z}_k \in A$ tali che:
> $$
> \|\mathbf{x}_k - \mathbf{z}_k\| \le \frac{1}{k} \quad \text{e} \quad |f(\mathbf{x}_k) - f(\mathbf{z}_k)| > \varepsilon_0
> $$
> Essendo l'insieme $A$ compatto in $\mathbb{R}^n$, esso è sequenzialmente compatto (per il teorema di Bolzano-Weierstrass in $\mathbb{R}^n$). Di conseguenza, dalla successione $\{\mathbf{x}_k\}_{k \in \mathbb{N}} \subseteq A$ è possibile estrarre una sottosuccessione convergente $\{\mathbf{x}_{k_n}\}_{n \in \mathbb{N}}$ il cui limite appartiene ad $A$:
> $$
> \lim_{n \to +\infty} \mathbf{x}_{k_n} = \mathbf{x} \in A
> $$
> Si dimostra che anche la corrispondente sottosuccessione estratta $\{\mathbf{z}_{k_n}\}_{n \in \mathbb{N}}$ converge al medesimo punto limite $\mathbf{x} \in A$.
> Infatti, valutando la distanza euclidea tra $\mathbf{z}_{k_n}$ e $\mathbf{x}$ e applicando la disuguaglianza triangolare:
> $$
> \begin{align}
> \|\mathbf{z}_{k_n} - \mathbf{x}\| &= \|\mathbf{z}_{k_n} - \mathbf{x} + \mathbf{x}_{k_n} - \mathbf{x}_{k_n}\| \\
> &\le \|\mathbf{z}_{k_n} - \mathbf{x}_{k_n}\| + \|\mathbf{x}_{k_n} - \mathbf{x}\| \\
> &\le \frac{1}{k_n} + \|\mathbf{x}_{k_n} - \mathbf{x}\|
> \end{align}
> $$
> Passando al limite per $n \to +\infty$, poiché $k_n \to +\infty$ si ha $\frac{1}{k_n} \to 0$, e per definizione di sottosuccessione convergente $\|\mathbf{x}_{k_n} - \mathbf{x}\| \to 0$. Dunque:
> $$
> \lim_{n \to +\infty} \left( \frac{1}{k_n} + \|\mathbf{x}_{k_n} - \mathbf{x}\| \right) = 0 + 0 = 0
> $$
> Essendo la norma per definizione non negativa ($\|\mathbf{z}_{k_n} - \mathbf{x}\| \ge 0$), per il teorema del confronto si deduce che:
> $$
> \lim_{n \to +\infty} \|\mathbf{z}_{k_n} - \mathbf{x}\| = 0 \implies \lim_{n \to +\infty} \mathbf{z}_{k_n} = \mathbf{x}
> $$
> Si valuta ora la differenza tra le immagini della funzione calcolate sui termini delle due sottosuccessioni. Aggiungendo e sottraendo la quantità $f(\mathbf{x})$ e sfruttando la disuguaglianza triangolare reale:
> $$
> |f(\mathbf{x}_{k_n}) - f(\mathbf{z}_{k_n})| = |f(\mathbf{x}_{k_n}) - f(\mathbf{x}) + f(\mathbf{x}) - f(\mathbf{z}_{k_n})| \le |f(\mathbf{x}_{k_n}) - f(\mathbf{x})| + |f(\mathbf{z}_{k_n}) - f(\mathbf{x})|
> $$
> Poiché $f$ è continua in $A$ e $\mathbf{x} \in A$, applicando la continuità per successioni (teorema ponte) si ottiene:
> $$
> \lim_{n \to +\infty} f(\mathbf{x}_{k_n}) = f(\mathbf{x}) \implies \lim_{n \to +\infty} |f(\mathbf{x}_{k_n}) - f(\mathbf{x})| = 0
> \lim_{n \to +\infty} f(\mathbf{z}_{k_n}) = f(\mathbf{x}) \implies \lim_{n \to +\infty} |f(\mathbf{z}_{k_n}) - f(\mathbf{x})| = 0
> $$
> Di conseguenza, per il teorema del confronto:
> $$
> \lim_{n \to +\infty} |f(\mathbf{x}_{k_n}) - f(\mathbf{z}_{k_n})| = 0
> $$
> Tuttavia, per l'ipotesi per assurdo, ciascun termine della sottosuccessione soddisfaceva la maggiorazione:
> $$
> |f(\mathbf{x}_{k_n}) - f(\mathbf{z}_{k_n})| > \varepsilon_0, \quad \forall n \in \mathbb{N}
> $$
> Passando al limite per $n \to +\infty$, si perverrebbe alla conclusione che:
> $$
> 0 \ge \varepsilon_0 > 0
> $$
> il che è manifestamente **assurdo**.
> L'assurdo deriva dall'aver negato l'uniforme continuità di $f$ sull'insieme compatto $A$.
> Pertanto, la funzione $f$ è **uniformemente continua** in $A$. $\blacksquare$
>
