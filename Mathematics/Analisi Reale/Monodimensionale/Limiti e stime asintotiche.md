---
title: "Limiti di Funzioni Reali e Stime Asintotiche"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 3)"
tags:
  - math/real-analysis/limits
  - math/real-analysis/asymptotics
---

# 3. Limiti di Funzioni Reali e Stime Asintotiche

## 3.1. Proprietà definitiva e intorni

Si formalizza il concetto di proprietà soddisfatta definitivamente nel contesto del passaggio al limite.

> [!definition] Proprietà soddisfatta definitivamente
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0$ un punto di accumulazione per $X$. Sia $P$ una proprietà che può essere verificata o meno da $f(x)$.
> Si dice che $f$ soddisfa la proprietà $P$ **definitivamente per $x \to x_0$** se esiste un intorno $U$ di $x_0$ tale che la proprietà $P$ è verificata per tutti i punti $x \in X \cap U$ distinti da $x_0$:
> $$
> \exists U \in \mathcal{U}(x_0) : \forall x \in (X \cap U) \setminus \{x_0\}, \quad P(f(x)) \text{ è vera}
> $$

> [!example] Funzione definitivamente positiva in $x = 0$
> Si consideri la funzione:
> $$
> f(x) = \frac{\sin x}{x}, \quad x \ne 0
> $$
> Poiché $\lim_{x \to 0} \frac{\sin x}{x} = 1 > 0$, la funzione risulta essere definitivamente positiva per $x \to 0$. In particolare, per ogni intorno $U = (-\delta, \delta)$ con $0 < \delta < \pi$, si ha $f(x) > 0$ per ogni $x \in U \setminus \{0\}$, pur non essendo la funzione definita in $x = 0$ ($\nexists f(0)$).
>
### Intorni di $\pm\infty$ e punti di accumulazione

> [!definition] Intorni di $+\infty$ e $-\infty$
> Sia $a \in \mathbb{R}$. Si definiscono:
> - **Intorno di $+\infty$**: un intervallo del tipo $(a, +\infty)$ oppure $[a, +\infty)$;
> - **Intorno di $-\infty$**: un intervallo del tipo $(-\infty, a)$ oppure $(-\infty, a]$.

> [!definition] Punto di accumulazione a $+\infty$ e $-\infty$
> Si dice che $+\infty$ (rispettivamente $-\infty$) è **punto di accumulazione** per l'insieme di definizione $X = \mathrm{dom}(f)$ se:
> $$
> \forall M > 0, \; \exists x \in X : x > M \quad \big(\text{risp. } x < -M\big)
> $$

> [!note] Estensione a $\mathbb{R}^n$ e intorni di infinito
> 1. La definizione di proprietà verificata definitivamente in $\mathbb{R}^n$ per $\mathbf{x} \to \mathbf{x}_0$ è formalmente identica, considerando intorni sferici aperti $B_r(\mathbf{x}_0) \subset \mathbb{R}^n$.
> 2. In $\mathbb{R}^n$, un intorno del punto all'infinito $\infty$ è definito mediante il complementare di una palla chiusa di raggio $R$ centrata in $\mathbf{x}_0$:
> $$
> B_R(\mathbf{x}_0)^c := \left\{ \mathbf{x} \in \mathbb{R}^n : \|\mathbf{x} - \mathbf{x}_0\| > R \right\}, \quad R > 0
> $$
>
## 3.2. Definizione generale di limite e formulazione $\varepsilon$-$\delta$

> [!definition] Definizione topologica generale di limite
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$, sia $x_0 \in \mathbb{R} \cup \{\pm\infty\}$ un punto di accumulazione per $X$, e sia $l \in \mathbb{R} \cup \{\pm\infty\}$.
> Si dice che il **limite** di $f(x)$ per $x$ che tende a $x_0$ è uguale a $l$, e si scrive:
> $$
> \lim_{x \to x_0} f(x) = l \quad \iff \quad f(x) \xrightarrow[x \to x_0]{} l
> $$
> se e solo se per ogni intorno $V$ di $l$ esiste un intorno $U$ di $x_0$ tale che, per ogni $x \in (U \cap X) \setminus \{x_0\}$, l'immagine $f(x)$ appartiene a $V$:
> $$
> \forall V \in \mathcal{U}(l), \; \exists U \in \mathcal{U}(x_0) : \forall x \in (U \cap X) \setminus \{x_0\} \implies f(x) \in V
> $$
>
### Le definizioni metriche $\varepsilon$-$\delta$

A seconda della natura finita o infinita di $x_0$ e $l$, si distinguono 4 casi fondamentali:
1. $x_0 \in \mathbb{R}, \; l \in \mathbb{R}$ (limite finito al finito);
2. $x_0 \in \mathbb{R}, \; l = \pm\infty$ (limite infinito al finito);
3. $x_0 = \pm\infty, \; l \in \mathbb{R}$ (limite finito all'infinito);
4. $x_0 = \pm\infty, \; l = \pm\infty$ (limite infinito all'infinito).

**Caso 1: $x_0, l \in \mathbb{R}$ (Limite finito per $x \to x_0$ finito)**

Un intorno sferico $V$ di $l \in \mathbb{R}$ contiene per definizione un intervallo simmetrico del tipo:
$$
B_\varepsilon(l) = (l - \varepsilon, l + \varepsilon), \quad \varepsilon > 0
$$
Analogamente, un intorno sferico $U$ di $x_0 \in \mathbb{R}$ contiene per definizione un intervallo del tipo:
$$
B_\delta(x_0) = (x_0 - \delta, x_0 + \delta), \quad \delta > 0
$$
La condizione di appartenenza $f(x) \in V$ si traduce algebricamente in:
$$
f(x) \in (l - \varepsilon, l + \varepsilon) \iff l - \varepsilon < f(x) < l + \varepsilon \iff |f(x) - l| < \varepsilon
$$
mentre la condizione di appartenenza per $x \in (U \cap X) \setminus \{x_0\}$ corrisponde a:
$$
x \in (x_0 - \delta, x_0 + \delta) \setminus \{x_0\} \iff 0 < |x - x_0| < \delta \iff |x - x_0| < \delta \land x \ne x_0
$$

Si ottiene così la caratterizzazione metrica formale di limite finito al finito:

> [!definition] Definizione metrica ($\varepsilon$-$\delta$) di limite finito per $x \to x_0$ finito
> Siano $x_0, l \in \mathbb{R}$, con $x_0$ punto di accumulazione per $\mathrm{dom}(f)$. Si ha:
> $$
> \lim_{x \to x_0} f(x) = l \iff \forall \varepsilon > 0, \; \exists \delta > 0 : \forall x \in \mathrm{dom}(f), \; 0 < |x - x_0| < \delta \implies |f(x) - l| < \varepsilon
> $$

> [!note] Disuguaglianze deboli e strette
> Nella formulazione quantificata precedente (e nelle successive formulazioni di limite), la disuguaglianza stretta $<$ è intercambiabile con la disuguaglianza debole $\leq$. Poiché $\varepsilon > 0$ è arbitrariamente piccolo, richiedere $|f(x) - l| < \varepsilon$ o $|f(x) - l| \leq \varepsilon$ genera formulazioni del tutto equivalenti.

> [!example] Esempio applicativo: verifica del limite con la definizione $\varepsilon$-$\delta$

> [!example] Verifica analitica: $\lim_{x \to 3} x^2 = 9$
> Si vuole verificare tramite la definizione che $\lim_{x \to 3} x^2 = 9$.
> 
> In base alla definizione, per ogni $\varepsilon > 0$ fissato arbitrariamente, si deve determinare un raggio $\delta > 0$ (funzione di $\varepsilon$) tale che:
> $$
> 0 < |x - 3| < \delta \implies |x^2 - 9| < \varepsilon
> $$
> Si esplicita la disequazione sul valore assoluto:
> $$
> |x^2 - 9| < \varepsilon \iff -\varepsilon < x^2 - 9 < \varepsilon \iff 9 - \varepsilon < x^2 < 9 + \varepsilon
> $$
> Poiché si è interessati al comportamento locale in prossimità di $x = 3$, si può assumere senza perdita di generalità che $\varepsilon < 9$ (essendo $\varepsilon$ arbitrariamente piccolo). Estraendo la radice quadrata positiva (poiché ci si avvicina a $x = 3 > 0$, escludendo il ramo negativo $x < -\sqrt{9-\varepsilon}$ che non è pertinente per $x \to 3$):
> $$
> \begin{cases}
> x^2 > 9 - \varepsilon \implies x > \sqrt{9 - \varepsilon} \\
> x^2 < 9 + \varepsilon \implies -\sqrt{9 + \varepsilon} < x < \sqrt{9 + \varepsilon}
> \end{cases}
> $$
> Intersecando le due condizioni attorno al punto $x_0 = 3$:
> $$
> \sqrt{9 - \varepsilon} < x < \sqrt{9 + \varepsilon}
> $$
> Si esprime tale intervallo in funzione della distanza $|x - 3|$:
> $$
> \sqrt{9 - \varepsilon} - 3 < x - 3 < \sqrt{9 + \varepsilon} - 3
> $$
> Ponendo $\delta := \min \left\{ 3 - \sqrt{9 - \varepsilon}, \; \sqrt{9 + \varepsilon} - 3 \right\} > 0$, l'intervallo $(3 - \delta, 3 + \delta)$ è interamente contenuto nell'intervallo delle soluzioni $(\sqrt{9 - \varepsilon}, \sqrt{9 + \varepsilon})$.
> Resta così verificato che per ogni $x$ tale che $0 < |x - 3| < \delta$ si ha $|x^2 - 9| < \varepsilon$, confermando che $\lim_{x \to 3} x^2 = 9$.

> [!note] Determinazione esplicita di $\delta(\varepsilon)$ per l'esempio $\lim_{x \to 3} x^2 = 9$
> Dal confronto tra le distanze dagli estremi dell'intervallo delle soluzioni:
> $$
> \delta(\varepsilon) = \min\left\{ 3 - \sqrt{9 - \varepsilon}, \; \sqrt{9 + \varepsilon} - 3 \right\} = \sqrt{9 + \varepsilon} - 3
> $$
> (la curva $y = x^2$ è più ripida a destra di $x = 3$, quindi l'ampiezza a destra è minore di quella a sinistra). Si osserva che se $\varepsilon \to 0$, allora $\delta(\varepsilon) \to 0$, come richiesto dalla definizione metrica.
>
**Caso 2: $x_0 \in \mathbb{R}, \; l = \pm\infty$ (Limite infinito per $x \to x_0$ finito — Asintoto verticale)**

Si considera una funzione che diverge positivamente o negativamente nell'intorno di un punto finito $x_0$. Geometricamente, la retta verticale di equazione $x = x_0$ costituisce un **asintoto verticale** per il grafico della funzione.

> [!definition] Definizione metrica: $\lim_{x \to x_0} f(x) = +\infty$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in \mathbb{R}$ un punto di accumulazione per $X$. Si dice che $f(x)$ tende a $+\infty$ per $x \to x_0$, e si scrive $\lim_{x \to x_0} f(x) = +\infty$, se:
> $$
> \forall M > 0, \; \exists \delta > 0 : \forall x \in X, \; 0 < |x - x_0| < \delta \implies f(x) > M
> $$
>
Analogamente, per la divergenza negativa:

> [!definition] Definizione metrica: $\lim_{x \to x_0} f(x) = -\infty$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in \mathbb{R}$ un punto di accumulazione per $X$. Si dice che $f(x)$ tende a $-\infty$ per $x \to x_0$, e si scrive $\lim_{x \to x_0} f(x) = -\infty$, se:
> $$
> \forall M > 0, \; \exists \delta > 0 : \forall x \in X, \; 0 < |x - x_0| < \delta \implies f(x) < -M
> $$
>
**Caso 3: $x_0 = \pm\infty, \; l \in \mathbb{R}$ (Limite finito all'infinito — Asintoto orizzontale)**

Si analizza il comportamento asintotico di $f(x)$ quando la variabile indipendente cresce o decresce indefinitamente. Geometricamente, se il limite $l$ esiste finito, la retta orizzontale di equazione $y = l$ costituisce un **asintoto orizzontale** per il grafico della funzione (rispettivamente per $x \to +\infty$ o per $x \to -\infty$).

> [!definition] Definizione metrica: $\lim_{x \to +\infty} f(x) = l$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$, con $+\infty$ punto di accumulazione per $X$ (ovvero $X$ superiormente illimitato), e sia $l \in \mathbb{R}$. Si scrive $\lim_{x \to +\infty} f(x) = l$ se:
> $$
> \forall \varepsilon > 0, \; \exists K > 0 : \forall x \in X, \; x > K \implies |f(x) - l| < \varepsilon
> $$
>
Specularmente, per $x \to -\infty$:

> [!definition] Definizione metrica: $\lim_{x \to -\infty} f(x) = l$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$, con $-\infty$ punto di accumulazione per $X$ (ovvero $X$ inferiormente illimitato), e sia $l \in \mathbb{R}$. Si scrive $\lim_{x \to -\infty} f(x) = l$ se:
> $$
> \forall \varepsilon > 0, \; \exists K > 0 : \forall x \in X, \; x < -K \implies |f(x) - l| < \varepsilon
> $$
>
**Caso 4: $x_0 = \pm\infty, \; l = \pm\infty$ (Limite infinito all'infinito)**

Questo caso descrive una divergenza globale sia della variabile che del valore assunto dalla funzione.

> [!definition] Definizione metrica: $\lim_{x \to +\infty} f(x) = +\infty$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ definita su un insieme $X$ superiormente illimitato. Si scrive $\lim_{x \to +\infty} f(x) = +\infty$ se:
> $$
> \forall M > 0, \; \exists K > 0 : \forall x \in X, \; x > K \implies f(x) > M
> $$
>
In modo del tutto analogo si formalizza il caso di divergenza a $-\infty$ per $x \to -\infty$:

> [!definition] Definizione metrica: $\lim_{x \to -\infty} f(x) = -\infty$
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ definita su un insieme $X$ inferiormente illimitato. Si scrive $\lim_{x \to -\infty} f(x) = -\infty$ se:
> $$
> \forall M > 0, \; \exists K > 0 : \forall x \in X, \; x < -K \implies f(x) < -M
> $$
>
**Quadro sinottico: schema unificato delle definizioni di limite**

Tutte le varianti metriche possono essere ricondotte a una matrice combinatoria generata dall'accoppiamento tra il tipo di intorno di $x_0$ e il tipo di intorno di $l$:

| Tipo di tendenza ($x \to ?$) | Traduzione metrica dell'intorno $U(x_0)$ |
| :--- | :--- |
| **$x \to +\infty$** | $\exists K > 0 : x > K$ |
| **$x \to -\infty$** | $\exists K > 0 : x < -K$ |
| **$x \to x_0 \in \mathbb{R}$** | $\exists \delta > 0 : 0 < \|x - x_0\| < \delta \quad (x \ne x_0, \; x_0 \text{ punto di accumulazione})$ |

| Valore del limite ($l \in ?$) | Traduzione metrica dell'intorno $V(l)$ |
| :--- | :--- |
| **$l = +\infty$** | $\forall M > 0 : \dots \implies f(x) > M$ |
| **$l = -\infty$** | $\forall M > 0 : \dots \implies f(x) < -M$ |
| **$l \in \mathbb{R}$** | $\forall \varepsilon > 0 : \dots \implies \|f(x) - l\| < \varepsilon$ |

> [!note] Regole operative per la corretta scrittura dei limiti
> 1. **Ordine dei quantificatori:** Il quantificatore universale ($\forall \varepsilon > 0$ oppure $\forall M > 0$) si applica sempre e per primo al raggio dell'intorno del valore limite $l$ sull'asse delle ordinate; il quantificatore esistenziale ($\exists \delta > 0$ oppure $\exists K > 0$) individua la dimensione dell'intorno del punto di accumulazione $x_0$ sull'asse delle ascisse in funzione del vincolo prescelto.
> 2. **Esclusione del punto centrale:** Quando $x_0 \in \mathbb{R}$, si impone sempre la condizione $x \ne x_0$ (ossia $0 < |x - x_0| < \delta$). Il comportamento di $f$ in $x_0$ non ha alcuna rilevanza ai fini dell'esistenza o del valore del limite.
>
## 3.3. Teoremi fondamentali sui limiti

### Teorema di permanenza del segno

Il teorema stabilisce il legame fondamentale tra il segno del limite e il segno assunto dai valori della funzione in un opportuno intorno del punto di accumulazione.

> [!theorem] Teorema di permanenza del segno
> Sia $f : X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0$ un punto di accumulazione per $X$.
> 1. **(Dal limite alla funzione):** Se esiste finito o infinito il limite:
>    $$
>    \lim_{x \to x_0} f(x) = l > 0
>    $$
>    allora la funzione $f(x)$ è strettamente positiva definitivamente per $x \to x_0$:
>    $$
>    \exists \delta > 0 : \forall x \in X, \; 0 < |x - x_0| < \delta \implies f(x) > 0
>    $$
> 2. **(Dalla funzione al limite):** Se $f(x) \geq 0$ definitivamente per $x \to x_0$, e se esiste il limite $\lim_{x \to x_0} f(x) = l$, allora:
>    $$
>    l \geq 0
>    $$
> 
> Risultati del tutto analoghi valgono invertendo il verso delle disuguaglianze ($l < 0 \implies f(x) < 0$ definitivamente; $f(x) \leq 0 \text{ def.} \implies l \leq 0$).

> [!warning] Conservazione delle disuguaglianze e caso nullo
> - **Se $l = 0$ nel punto (1):** Non è possibile dedurre alcuna informazione sul segno di $f(x)$. La funzione può oscillare indefinitamente assumendo sia valori positivi che negativi pur tendendo a zero (si pensi a $f(x) = x \sin(1/x)$ per $x \to 0$).
> - **Nel punto (2), le disuguaglianze strette diventano deboli al limite:** Anche se una funzione è *strettamente* positiva per ogni $x$ ($f(x) > 0$), il suo limite può essere nullo. Ad esempio, $f(x) = e^x > 0$ per ogni $x \in \mathbb{R}$, ma:
>   $$
>   \lim_{x \to -\infty} e^x = 0
>   $$
>   Pertanto, il passaggio al limite trasforma disuguaglianze strette in disuguaglianze larghe ($l \geq 0$).

> [!quote]- Dimostrazione
> Si dimostra l'affermazione (1) nel caso in cui $l \in \mathbb{R}$ con $l > 0$ e $x_0 \in \mathbb{R}$.
> Dalla definizione metrica di limite, per ogni $\varepsilon > 0$ esiste un raggio $\delta > 0$ tale che:
> $$
> \forall x \in X, \; 0 < |x - x_0| < \delta \implies |f(x) - l| < \varepsilon
> $$
> La condizione $|f(x) - l| < \varepsilon$ equivale alla doppia disuguaglianza:
> $$
> l - \varepsilon < f(x) < l + \varepsilon
> $$
> Essendo $l > 0$, è lecito scegliere come raggio prefissato la quantità positiva:
> $$
> \varepsilon := \frac{l}{2} > 0
> $$
> In corrispondenza di questo specifico $\varepsilon$, esiste un raggio $\delta > 0$ tale che, per ogni $x \in X$ con $0 < |x - x_0| < \delta$, si ha:
> $$
> l - \frac{l}{2} < f(x) < l + \frac{l}{2} \iff \frac{l}{2} < f(x) < \frac{3}{2}l
> $$
> Poiché $l > 0$, risulta in particolare:
> $$
> f(x) > \frac{l}{2} > 0
> $$
> Resta quindi provato che $f(x) > 0$ per tutti gli $x \in X \cap (x_0 - \delta, x_0 + \delta) \setminus \{x_0\}$, ossia che $f$ è strettamente positiva definitivamente per $x \to x_0$. $\blacksquare$
>
### Teorema del confronto (Teorema dei due carabinieri)

> [!theorem] Teorema del confronto
> Siano $f, g, h : X \subseteq \mathbb{R} \to \mathbb{R}$ tre funzioni e sia $x_0$ un punto di accumulazione per $X$. Supponiamo che:
> 1. Esistano e siano finiti e coincidenti i limiti di $f$ e $g$:
>    $$
>    \lim_{x \to x_0} f(x) = \lim_{x \to x_0} g(x) = l \in \mathbb{R}
>    $$
> 2. La funzione $h(x)$ sia compresa tra $f(x)$ e $g(x)$ definitivamente per $x \to x_0$:
>    $$
>    f(x) \leq h(x) \leq g(x) \quad \text{definitivamente per } x \to x_0
>    $$
> 
> Allora anche la funzione $h(x)$ ammette limite per $x \to x_0$, e tale limite coincide con $l$:
> $$
> \lim_{x \to x_0} h(x) = l
> $$

> [!note] Teorema del confronto a infinito (un solo carabiniere)
> Se il limite tende a $+\infty$, è sufficiente una sola disuguaglianza unilaterale. Se:
> $$
> \lim_{x \to x_0} f(x) = +\infty \quad \text{e} \quad h(x) \geq f(x) \quad \text{definitivamente per } x \to x_0
> $$
> allora necessariamente:
> $$
> \lim_{x \to x_0} h(x) = +\infty
> $$
> Analogamente, se $\lim_{x \to x_0} g(x) = -\infty$ e $h(x) \leq g(x)$ definitivamente per $x \to x_0$, allora $\lim_{x \to x_0} h(x) = -\infty$.

> [!example] Esempi notevoli: dimostrazione geometrica dei limiti trigonometrici fondamentali
>
> **Limite notevole di $\frac{\sin x}{x}$**

> [!proposition] Limite notevole fondamentale della funzione seno
> $$
> \lim_{x \to 0} \frac{\sin x}{x} = 1
> $$

> [!quote]- Dimostrazione
> Si consideri la circonferenza goniometrica di raggio unitario nel piano cartesiano, con centro nell'origine $O(0,0)$ e punto di riferimento $A(1,0)$.
> Sia $x \in \left(0, \frac{\pi}{2}\right)$ l'ampiezza in radianti dell'angolo al centro orientato $A\widehat{O}P$, dove $P(\cos x, \sin x)$ è il punto sulla circonferenza. Sia $H(\cos x, 0)$ la proiezione ortogonale di $P$ sull'asse delle ascisse, tale che $|PH| = \sin x$.
> Si prolunghi il raggio $OP$ fino a intersecare in $Q(1, \tan x)$ la retta tangente alla circonferenza passante per $A$, di modo che $|AQ| = \tan x$.
>
> Si considerino le tre figure geometriche nidificate:
> 1. Il triangolo rettangolo interno $O\overset{\Delta}{A}P$, di base $|OA| = 1$ e altezza $|PH| = \sin x$:
>    $$
>    \mathcal{A}(O\overset{\Delta}{A}P) = \frac{|OA| \cdot |PH|}{2} = \frac{\sin x}{2}
>    $$
> 2. Il settore circolare $OAP$, delimitato dall'arco $AP$ di ampiezza $x$:
>    L'area del settore circolare $a(x)$ è una funzione lineare dell'ampiezza dell'angolo: soddisfa $a(0) = 0$, $a(2\pi) = \pi \cdot 1^2 = \pi$, e la proprietà di omogeneità $a(\lambda x) = \lambda a(x)$ per $\lambda > 0$. Pertanto $a(x) = \alpha x$; imponendo la condizione di chiusura all'angolo giro $a(2\pi) = 2\pi \alpha = \pi$, si deduce $\alpha = \frac{1}{2}$. L'area del settore è dunque:
>    $$
>    \mathcal{A}(\text{settore } OAP) = \frac{x}{2}
>    $$
> 3. Il triangolo rettangolo esterno $O\overset{\Delta}{Q}A$, di base $|OA| = 1$ e altezza $|AQ| = \tan x$:
>    $$
>    \mathcal{A}(O\overset{\Delta}{Q}A) = \frac{|OA| \cdot |AQ|}{2} = \frac{\tan x}{2}
>    $$
>
> Dalle evidenti inclusioni geometriche fra le superfici consegue la catena di disuguaglianze strette fra le rispettive aree:
> $$
> \mathcal{A}(O\overset{\Delta}{A}P) < \mathcal{A}(\text{settore } OAP) < \mathcal{A}(O\overset{\Delta}{Q}A) \iff \frac{\sin x}{2} < \frac{x}{2} < \frac{\tan x}{2}
> $$
> Essendo $x \in \left(0, \frac{\pi}{2}\right)$, si ha $\sin x > 0$. Moltiplicando l'intera catena di disuguaglianze per la quantità positiva $\frac{2}{\sin x}$, si ottiene:
> $$
> 1 < \frac{x}{\sin x} < \frac{1}{\cos x}
> $$
> Prendendo i reciproci di tutti i membri (operazione che inverte l'ordine delle disuguaglianze tra quantità strettamente positive):
> $$
> \cos x < \frac{\sin x}{x} < 1 \quad \forall x \in \left(0, \frac{\pi}{2}\right)
> $$
> Si consideri ora il passaggio al limite per $x \to 0^+$. È noto che la funzione coseno è continua nell'origine, con:
> $$
> \lim_{x \to 0^+} \cos x = 1 \quad \text{e} \quad \lim_{x \to 0^+} 1 = 1
> $$
> Per il teorema del confronto, la funzione $\frac{\sin x}{x}$, strettamente compresa tra $\cos x$ e $1$, è forzata ad avere lo stesso limite:
> $$
> \lim_{x \to 0^+} \frac{\sin x}{x} = 1
> $$
> Si valuta infine il limite sinistro per $x \to 0^-$. Poiché la funzione seno è dispari e la funzione identità è dispari, il loro rapporto è una funzione **pari**:
> $$
> \frac{\sin(-x)}{-x} = \frac{-\sin x}{-x} = \frac{\sin x}{x}
> $$
> Pertanto, operando la sostituzione $t = -x$:
> $$
> \lim_{x \to 0^-} \frac{\sin x}{x} = \lim_{t \to 0^+} \frac{\sin(-t)}{-t} = \lim_{t \to 0^+} \frac{\sin t}{t} = 1
> $$
> Poiché il limite destro e il limite sinistro esistono finiti e coincidono entrambi con $1$, si conclude in modo inequivocabile che:
> $$
> \lim_{x \to 0} \frac{\sin x}{x} = 1
> $$
> $\blacksquare$
>
**Limite notevole di $\frac{1 - \cos x}{x^2}$**

> [!proposition] Limite notevole della deviazione del coseno
> $$
> \lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}
> $$

> [!quote]- Dimostrazione
> Si moltiplica e divide l'espressione per il fattore coniugato $(1 + \cos x)$:
> $$
> \begin{align}
> \frac{1 - \cos x}{x^2} &= \frac{(1 - \cos x)(1 + \cos x)}{x^2 (1 + \cos x)} \\
> &= \frac{1 - \cos^2 x}{x^2 (1 + \cos x)} \\
> &= \frac{\sin^2 x}{x^2 (1 + \cos x)} \\
> &= \left(\frac{\sin x}{x}\right)^2 \cdot \frac{1}{1 + \cos x}
> \end{align}
> $$
> Applicando il teorema del limite del prodotto di funzioni convergenti e sfruttando il limite notevole del seno precedentemente dimostrato:
> $$
> \lim_{x \to 0} \left(\frac{\sin x}{x}\right)^2 = \left(\lim_{x \to 0} \frac{\sin x}{x}\right)^2 = 1^2 = 1
> $$
> Inoltre, per la continuità di $\cos x$ in $x = 0$:
> $$
> \lim_{x \to 0} \frac{1}{1 + \cos x} = \frac{1}{1 + 1} = \frac{1}{2}
> $$
> Combinando i due fattori:
> $$
> \lim_{x \to 0} \frac{1 - \cos x}{x^2} = 1 \cdot \frac{1}{2} = \frac{1}{2}
> $$
> $\blacksquare$
>
## 3.4. Algebra dei limiti e forme indeterminate

### Teorema di algebra dei limiti per limiti finiti

> [!theorem] Algebra dei limiti finiti
> Siano $f, g : X \subseteq \mathbb{R} \to \mathbb{R}$, con $x_0$ punto di accumulazione per $X$. Supponiamo che entrambi i limiti esistano finiti:
> $$
> \lim_{x \to x_0} f(x) = l \in \mathbb{R}, \quad \lim_{x \to x_0} g(x) = m \in \mathbb{R}
> $$
> Allora valgono le seguenti proprietà:
> 1. **Linearità (somma e combinazione lineare):** Per ogni coppia di scalari $\lambda, \mu \in \mathbb{R}$,
>    $$
>    \lim_{x \to x_0} [\lambda f(x) + \mu g(x)] = \lambda l + \mu m
>    $$
> 2. **Prodotto:**
>    $$
>    \lim_{x \to x_0} [f(x) \cdot g(x)] = l \cdot m
>    $$
> 3. **Quoziente:** Se $m \ne 0$ e $g(x) \ne 0$ definitivamente per $x \to x_0$,
>    $$
>    \lim_{x \to x_0} \frac{f(x)}{g(x)} = \frac{l}{m}
>    $$
>
### Estensioni dell'algebra all'infinito e casi determinati

Le regole algebriche possono essere estese alla retta reale estesa $\overline{\mathbb{R}} = \mathbb{R} \cup \{\pm\infty\}$ in determinati casi in cui non sussiste ambiguità sul segno o sulla dominanza:

- **Somma con divergenza:**
  $$
  \lim_{x \to x_0} f(x) = l \in \mathbb{R}, \quad \lim_{x \to x_0} g(x) = +\infty \implies \lim_{x \to x_0} [f(x) + g(x)] = +\infty
  $$
- **Prodotto con divergenza:** Se $\lim_{x \to x_0} g(x) = +\infty$:
  $$
  \lim_{x \to x_0} [f(x) \cdot g(x)] = \begin{cases} +\infty & \text{se } l > 0 \\ -\infty & \text{se } l < 0 \end{cases}
  $$

### Forme di indecisione (Forme indeterminate)

In diversi casi limite, le proprietà algebriche ordinarie non permettono di stabilire a priori il comportamento asintotico globale. Tali configurazioni dipendono strettamente dalla velocità relativa con cui i singoli termini convergono o divergono.

> [!warning] Le forme indeterminate canoniche
> Si distinguono 4 **forme di indecisione algebriche**:
> $$
> \left[+\infty - \infty\right], \quad \left[\frac{\infty}{\infty}\right], \quad \left[\frac{0}{0}\right], \quad \left[0 \cdot \infty\right]
> $$
> e 3 **forme di indecisione esponenziali** (riconducibili alla forma $[0 \cdot \infty]$ mediante l'identità fondamentale $f(x)^{g(x)} = e^{g(x) \ln f(x)}$):
> $$
> \left[1^\infty\right], \quad \left[0^0\right], \quad \left[\infty^0\right]
> $$
> La comparsa di una forma di indecisione non indica la non esistenza del limite, bensì l'inadeguatezza dell'algebra elementare: la determinazione del risultato richiede tecniche dedicate (raccoglimenti a fattor comune, limiti notevoli, stime asintotiche con simboli di Landau, formula di Taylor o teorema di De L'Hôpital).
>
## 3.5. Limiti di funzioni composte

Siano date due funzioni $g : B \subseteq \mathbb{R} \to \mathbb{R}$ e $f : A \subseteq \mathbb{R} \to \mathbb{R}$. La funzione composta $(f \circ g)(x) = f(g(x))$ è ben definita sull'insieme $\{x \in B : g(x) \in A\}$, richiedendo che l'immagine di $g$ sia compatibile con il dominio di definizione di $f$.

> [!example] Condizione di componibilità
> Siano $g(x) = -x^2$ definita su $\mathbb{R}$ e $f(y) = \ln y$ definita su $(0, +\infty)$.
> Poiché $\mathrm{Im}(g) = (-\infty, 0]$, non esiste alcun valore reale $x$ tale che $g(x) > 0$. Ne segue che l'espressione $f(g(x)) = \ln(-x^2)$ non è definita per alcun $x \in \mathbb{R}$ (campo di esistenza vuoto).
>
**La fallacia intuitiva della sostituzione diretta**

Si potrebbe ingenuamente congetturare che, dati:
$$
\lim_{x \to x_0} g(x) = l \quad \text{e} \quad \lim_{y \to l} f(y) = m
$$
debba sempre seguire che:
$$
\lim_{x \to x_0} f(g(x)) = m
$$
**Tale affermazione è, in generale, FALSA.**

> [!example] Controesempio alla composizione acritica dei limiti
> Si consideri la funzione $f : \mathbb{R} \to \mathbb{R}$ definita da:
> $$
> f(y) = \begin{cases} m & \text{se } y \ne l \\ k & \text{se } y = l \end{cases} \quad \text{con } k \ne m
> $$
> Per tale funzione, il limite per $y \to l$ esiste e vale $m$:
> $$
> \lim_{y \to l} f(y) = m
> $$
> Si scelga ora come funzione interna la funzione costante $g(x) = l$ per ogni $x \in \mathbb{R}$. Evidentemente:
> $$
> \lim_{x \to x_0} g(x) = l
> $$
> Tuttavia, valutando direttamente la funzione composta per ogni $x \in \mathbb{R}$:
> $$
> (f \circ g)(x) = f(g(x)) = f(l) = k
> $$
> Essendo la funzione composta costantemente uguale a $k$, il suo limite è:
> $$
> \lim_{x \to x_0} f(g(x)) = k \ne m
> $$
> Si perviene a una contraddizione rispetto alla congettura intuitiva.

> [!note] Origine topologica del fallimento
> Nella definizione di limite per la funzione esterna $\lim_{y \to l} f(y) = m$, si richiede che $f(y)$ sia arbitrariamente vicina a $m$ a patto che $y \ne l$ (l'intorno di $l$ è privato del punto $l$ stesso). Se la funzione interna $g(x)$ collassa costantemente sul valore limite $l$ in un intorno di $x_0$, la funzione esterna viene valutata esattamente in $l$, ossia $f(l)$, che può essere del tutto slegata da $m$.
>
### Teorema del limite di funzioni composte

Per ripristinare la validità della regola di cambio di variabile è indispensabile garantire che la funzione interna $g(x)$ non assuma definitivamente il valore limite $l$, oppure che la funzione esterna $f$ sia **continua** in $l$.

> [!theorem] Teorema del limite di funzioni composte
> Siano $g : B \subseteq \mathbb{R} \to \mathbb{R}$ e $f : A \subseteq \mathbb{R} \to \mathbb{R}$, con $\mathrm{Im}(g) \subseteq A$ tale che $f \circ g$ sia ben definita su $B$.
> Sia $x_0$ punto di accumulazione per $B$. Supponiamo che:
> 1. Esista il limite della funzione interna:
>    $$
>    \lim_{x \to x_0} g(x) = l \in \mathbb{R} \cup \{\pm\infty\}
>    $$
>    con $l$ punto di accumulazione per $A$;
> 2. **Ipotesi di non stazionarietà:** $g(x) \ne l$ definitivamente per $x \to x_0$ (ossia $\exists \delta > 0 : \forall x \in B, \; 0 < |x - x_0| < \delta \implies g(x) \ne l$);
> 3. Esista il limite della funzione esterna:
>    $$
>    \lim_{y \to l} f(y) = m \in \mathbb{R} \cup \{\pm\infty\}
>    $$
> 
> Allora esiste il limite della funzione composta per $x \to x_0$ e si ha:
> $$
> \lim_{x \to x_0} (f \circ g)(x) = m
> $$

> [!note] Semplificazione per funzioni continue
> Se la funzione esterna $f$ è **continua** nel punto $l$, la condizione di non stazionarietà $g(x) \ne l$ non è più necessaria. In tal caso vale semplicemente:
> $$
> \lim_{x \to x_0} f(g(x)) = f\left(\lim_{x \to x_0} g(x)\right) = f(l)
> $$
>
## 3.6. Simboli di Landau ($o$-piccolo) e stime asintotiche locali ($\sim$)

Nello studio locale del comportamento delle funzioni in prossimità di un punto di accumulazione $x_0$, l'analisi qualitativa viene formalizzata attraverso la teoria dei **simboli di Landau**, che consentono di classificare e confrontare gli ordini di infinitesimo o di infinito.

### Equivalenza asintotica

> [!definition] Funzioni asintoticamente equivalenti
> Siano $f, g : (a, b) \to \mathbb{R}$ e sia $x_0 \in [a, b]$ un punto di accumulazione. Si dice che $f$ è **asintoticamente equivalente** (o semplicemente **asintotica**) a $g$ per $x \to x_0$, e si scrive:
> $$
> f(x) \underset{x \to x_0}{\sim} g(x)
> $$
> se e solo se il limite del loro rapporto esiste ed è pari a $1$:
> $$
> \lim_{x \to x_0} \frac{f(x)}{g(x)} = 1
> $$
>
Dalle dimostrazioni sui limiti notevoli discendono direttamente le seguenti equivalenze asintotiche fondamentali per $x \to 0$:
$$
\begin{align}
\sin x &\underset{x \to 0}{\sim} x \\
1 - \cos x &\underset{x \to 0}{\sim} \frac{x^2}{2} \iff \cos x \underset{x \to 0}{\sim} 1 - \frac{x^2}{2}
\end{align}
$$

### Divieto di cancellazione: la non compatibilità dell'asintotico con la somma

> [!warning] Divieto di addizione/sottrazione con l'equivalenza asintotica
> La relazione di equivalenza asintotica $\sim$ è compatibile con i prodotti e i quozienti, ma **NON È COMPATIBILE CON LA SOMMA ALGEBRICA**.
> $$
> f \underset{x \to x_0}{\sim} g \quad \land \quad h \underset{x \to x_0}{\sim} l \quad \centernot\implies \quad f + h \underset{x \to x_0}{\sim} g + l
> $$
> Non si può fare algebra additiva con il simbolo $\sim$.

> [!example] Controesempio classico di cancellazione catastrofica
> Consideriamo le stime asintotiche per $x \to 0$:
> $$
> \sin x \underset{x \to 0}{\sim} x \quad \text{e} \quad -x \underset{x \to 0}{\sim} -x
> $$
> Sommando membro a membro si otterrebbe l'espressione errata $\sin x - x \sim 0$, priva di senso matematico poiché il denominatore non può essere identicamente nullo nel rapporto asintotico.
> L'informazione al primo ordine fornita da $\sin x \sim x$ cattura solo la componente lineare: la differenza $(\sin x - x)$ è un infinitesimo di ordine superiore, la cui parte principale è data da:
> $$
> \sin x - x \underset{x \to 0}{\sim} -\frac{x^3}{6}
> $$
>
### Significato geometrico e prospettiva verso la formula di Taylor

L'equivalenza asintotica per $x \to 0$ fornisce la migliore approssimazione polinomiale locale:
- $\sin x \underset{x \to 0}{\sim} x$: la retta $y = x$ rappresenta la retta tangente nell'origine, ovvero la migliore approssimazione lineare di $\sin x$ per $x \to 0$.
- $\cos x \underset{x \to 0}{\sim} 1 - \frac{x^2}{2}$: la parabola $y = 1 - \frac{x^2}{2}$ rappresenta la parabola osculatrice nell'origine, ovvero la migliore approssimazione quadratica di $\cos x$ per $x \to 0$.

Questo principio di approssimazione locale può essere spinto ad ordini polinomiali arbitrariamente elevati mediante la **formula di Taylor**:
$$
\begin{align}
\sin x &\underset{x \to 0}{\sim} x - \frac{x^3}{6} + \frac{x^5}{120} - \frac{x^7}{7!} + \dots \\
\cos x &\underset{x \to 0}{\sim} 1 - \frac{x^2}{2} + \frac{x^4}{24} - \frac{x^6}{720} + \dots
\end{align}
$$

### Definizione di $o$-piccolo

Per trattare gli errori di approssimazione e operare con rigore algebrico anche in presenza di somme e differenze, si introduce la notazione di "o-piccolo" di Landau.

> [!definition] Notazione $o$-piccolo di Landau
> Siano $f, g : (a, b) \to \mathbb{R}$ e sia $x_0 \in [a, b]$ un punto di accumulazione.
> Si dice che $f$ è un **$o$-piccolo** di $g$ per $x \to x_0$, e si scrive:
> $$
> f(x) = o(g(x)) \quad \text{per } x \to x_0
> $$
> se e solo se la funzione $f$ è trascurabile rispetto a $g$ per $x \to x_0$, ossia se il limite del loro rapporto è nullo:
> $$
> \lim_{x \to x_0} \frac{f(x)}{g(x)} = 0
> $$

> [!example] Gerarchia delle potenze all'infinito
> Si considerino le funzioni monomie $f(x) = x^a$ e $g(x) = x^b$, con parametri reali soddisfacenti la disuguaglianza $a > b > 0$.
> Valutando il limite del rapporto per $x \to +\infty$:
> $$
> \lim_{x \to +\infty} \frac{x^b}{x^a} = \lim_{x \to +\infty} x^{b - a} = 0
> $$
> poiché l'esponente soddisfa $b - a < 0$. Di conseguenza:
> $$
> x^b = o(x^a) \quad \text{per } x \to +\infty \quad (\forall a > b > 0)
> $$
> La potenza di grado inferiore $x^b$ è un $o$-piccolo della potenza di grado superiore $x^a$ quando la variabile tende a più infinito.
>
## 3.7. Proprietà dell'asintotico e principio di sostituzione

Nel confronto locale tra funzioni mediante i simboli di Landau, si consideri dapprima il comportamento delle potenze $x^a$ e $x^b$ con $a > b > 0$. Si è visto che per $x \to +\infty$ vale $x^b = o(x^a)$. Al contrario, per $x \to 0$:
$$
x^a = o(x^b) \quad \text{per } x \to 0
$$
Infatti, valutando il limite del rapporto per $x \to 0^+$:
$$
\lim_{x \to 0^+} \frac{x^a}{x^b} = \lim_{x \to 0^+} x^{a-b} = 0 \quad (\text{essendo } a - b > 0)
$$

Si enunciano e si dimostrano le proprietà algebriche fondamentali della relazione di equivalenza asintotica $\sim$ e del simbolo $o$-piccolo per $x \to x_0$.

> [!proposition] Caratterizzazione di $o(1)$
> Una funzione $f(x)$ è un $o(1)$ per $x \to x_0$ se e solo se è infinitesima:
> $$
> f(x) = o(1) \text{ per } x \to x_0 \iff \lim_{x \to x_0} f(x) = 0
> $$

> [!proposition] Legame fondamentale tra equivalenza asintotica e $o$-piccolo
> Siano $f, g$ due funzioni definite in un intorno di $x_0$. Allora:
> $$
> f(x) \underset{x \to x_0}{\sim} g(x) \iff f(x) = g(x) + o(g(x)) \quad \text{per } x \to x_0
> $$

> [!quote]- Dimostrazione
> Per definizione di equivalenza asintotica:
> $$
> \lim_{x \to x_0} \frac{f(x)}{g(x)} = 1 \iff \frac{f(x)}{g(x)} = 1 + \varepsilon(x) \quad \text{con } \lim_{x \to x_0} \varepsilon(x) = 0
> $$
> avendo posto esplicitamente $\varepsilon(x) := \frac{f(x)}{g(x)} - 1$.
> Moltiplicando ambo i membri per $g(x)$, si ottiene:
> $$
> f(x) = g(x) + \varepsilon(x)g(x)
> $$
> Poiché
> $$
> \lim_{x \to x_0} \frac{\varepsilon(x)g(x)}{g(x)} = \lim_{x \to x_0} \varepsilon(x) = 0
> $$
> si ha per definizione di $o$-piccolo che $\varepsilon(x)g(x) = o(g(x))$ per $x \to x_0$.
> Ne consegue:
> $$
> f(x) = g(x) + o(g(x)) \quad \text{per } x \to x_0
> $$
> $\blacksquare$

> [!proposition] Prodotto per un $o$-piccolo
> Per $x \to x_0$ vale l'identità:
> $$
> f(x) \cdot o(g(x)) = o(f(x)g(x))
> $$

> [!quote]- Dimostrazione
> Valutando il limite del rapporto:
> $$
> \lim_{x \to x_0} \frac{f(x) \cdot o(g(x))}{f(x)g(x)} = \lim_{x \to x_0} \frac{o(g(x))}{g(x)} = 0
> $$
> Il che dimostra che il numeratore è un $o$-piccolo del denominatore. $\blacksquare$
>
**Proprietà algebriche derivate**

Dalle proprietà elementari discendono immediatamente le seguenti regole di calcolo:
1. **Prodotto di $o$-piccoli:**
   $$
   o(f(x)) \cdot o(g(x)) = o(f(x)g(x))
   $$
2. **Prodotto di asintotici:**
   Se $f(x) \underset{x \to x_0}{\sim} g(x)$ e $h(x) \underset{x \to x_0}{\sim} l(x)$, allora:
   $$
   f(x)h(x) \underset{x \to x_0}{\sim} g(x)l(x)
   $$

> [!warning] Falsità della somma di asintotici
> È fondamentale prestare attenzione alle operazioni **non lecite** con gli asintotici.
> In generale, date le relazioni:
> $$
> f(x) \underset{x \to x_0}{\sim} g(x) \quad \text{e} \quad h(x) \underset{x \to x_0}{\sim} l(x)
> $$
> è in generale **FALSO** che:
> $$
> f(x) + h(x) \underset{x \to x_0}{\sim} g(x) + l(x)
> $$
> 
> **Controesempio:**
> Per $x \to 0$ si considerino le stime asintotiche:
> $$
> \sin x \underset{x \to 0}{\sim} x \quad \text{e} \quad -x \underset{x \to 0}{\sim} -x
> $$
> Se si sommassero ingenuamente membro a membro, si otterrebbe l'affermazione assurda:
> $$
> \sin x - x \underset{x \to 0}{\sim} 0 \quad \text{(FALSO!)}
> $$
> (la relazione asintotica con la funzione identicamente nulla $0$ è priva di senso matematico, in quanto comporta una divisione per zero nel limite del rapporto, e cancella l'ordine infinitesimo effettivo di $\sin x - x$, che è del terzo ordine).
>
Si formalizzano i concetti di confronto d'ordine tra funzioni divergenti (infiniti) e funzioni convergenti a zero (infinitesimi).

> [!definition] Ordine di infinito
> Siano $f(x), g(x) \underset{x \to x_0}{\longrightarrow} +\infty$. Se:
> $$
> f(x) = o(g(x)) \quad \text{per } x \to x_0
> $$
> si dice che $f(x)$ è un **infinito di ordine inferiore** rispetto a $g(x)$ per $x \to x_0$ (equivalentemente, $g(x)$ è un infinito di ordine superiore rispetto a $f(x)$).

> [!definition] Ordine di infinitesimo
> Siano $f(x), g(x) \underset{x \to x_0}{\longrightarrow} 0$. Se:
> $$
> f(x) = o(g(x)) \quad \text{per } x \to x_0
> $$
> si dice che $f(x)$ è un **infinitesimo di ordine superiore** rispetto a $g(x)$ per $x \to x_0$ (equivalentemente, $g(x)$ è un infinitesimo di ordine inferiore rispetto a $f(x)$).

> [!example] Confronto tra potenze
> Si considerino $x^a$ e $x^b$ con costanti reali $a > b > 0$:
> - **Per $x \to +\infty$:**
>   $$
>   x^b = o(x^a) \implies x^a \text{ è un infinito di ordine SUPERIORE rispetto a } x^b
>   $$
> - **Per $x \to 0$:**
>   $$
>   x^a = o(x^b) \implies x^a \text{ è un infinitesimo di ordine SUPERIORE rispetto a } x^b
>   $$
>
Gli sviluppi asintotici di ordine superiore risultano indispensabili per la risoluzione di limiti complessi o forme indeterminate in cui l'approssimazione al primo ordine asintotico produce cancellazioni sistematiche.

Dal limite notevole del seno:
$$
\lim_{x \to 0} \frac{\sin x}{x} = 1 \iff x \underset{x \to 0}{\sim} \sin x \implies \sin x = x + o(x) \quad \text{per } x \to 0
$$
La scrittura $\sin x = x + o(x)$ esprime che $\sin x$ è approssimato localmente dalla retta $y = x$, con un errore infinitesimo di ordine superiore ad $x$, ovvero trascurabile rispetto a $x$.

Ci si domanda:
$$
\exists P \in \mathbb{R}[x] \text{ di grado superiore a } 1 \text{ che approssimi meglio } \sin x \text{ per } x \to 0?
$$

Le potenze $x^a$ con $a > 1$ sono per $x \to 0$ infinitesimi di ordine superiore a $x$ (ossia trascurabili nel confronto con $x$). Inoltre, poiché $\sin x$ è una funzione dispari ($\sin(-x) = -\sin x$), i polinomi approssimanti devono contenere unicamente potenze dispari.

La risposta è affermativa. Vale infatti:
$$
\begin{align}
\sin x &= x - \frac{x^3}{6} + o(x^3) \quad (\text{vale anche con resto } o(x^4)) \\
\sin x &= x - \frac{x^3}{6} + \frac{x^5}{120} + o(x^5) \quad (\text{vale anche con resto } o(x^6))
\end{align}
$$

Più in generale, per ogni ordine $n$, si perviene alla formulazione sistematica degli sviluppi di Maclaurin delle funzioni trascendenti fondamentali.

> [!proposition] Sviluppi notevoli di Maclaurin (per $x \to 0$)
> Per ogni $n \in \mathbb{N} \cup \{0\}$, per $x \to 0$ sussistono le seguenti formule:
> 
> 1. **Seno:**
> $$
> \sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots + (-1)^n \frac{x^{2n+1}}{(2n+1)!} + o(x^{2n+2})
> $$
> 
> 2. **Coseno:**
> $$
> \cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots + (-1)^n \frac{x^{2n}}{(2n)!} + o(x^{2n+1})
> $$
> 
> 3. **Esponenziale:**
> $$
> e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots + \frac{x^n}{n!} + o(x^n)
> $$
> 
> 4. **Logaritmo naturale ($n \geq 1$):**
> $$
> \log(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \dots + (-1)^{n+1} \frac{x^n}{n} + o(x^n)
> $$

> [!note] Tabelle degli sviluppi
> La raccolta organica e completa di tutti gli sviluppi notevoli di Taylor/Maclaurin (incluse le funzioni tangente, arcotangente, arcoseno, coseno iperbolico, seno iperbolico e lo sviluppo binomiale $(1+x)^\alpha$) è consultabile online sui materiali didattici del corso (WeBeep).

> [!example] Esempio pratico: calcolo di limiti mediante sviluppi

> [!example] Esercizio svolto con sviluppi di Taylor
> Calcolare il seguente limite:
> $$
> \lim_{x \to 0} \frac{e^{\sin x^2} - \sin x^2 - 1}{x^4}
> $$
> 
> **Risoluzione:**
> Il denominatore è un infinitesimo di ordine 4 ($x^4$). Pertanto è necessario sviluppare il numeratore arrestandosi all'ordine 4.
> 
> Sviluppo di $\sin(x^2)$ per $x \to 0$:
> $$
> \sin(x^2) = x^2 - \frac{(x^2)^3}{6} + o((x^2)^3) = x^2 - \frac{x^6}{6} + o(x^6)
> $$
> Sostituzione nell'esponenziale:
> $$
> e^{\sin x^2} = e^{x^2 - \frac{x^6}{6} + o(x^6)}
> $$
> Applicando lo sviluppo notevole $e^t = 1 + t + \frac{t^2}{2} + o(t^2)$ con argomento $t = x^2 - \frac{x^6}{6} + o(x^6)$:
> $$
> \begin{align}
> e^{\sin x^2} &= 1 + \left(x^2 - \frac{x^6}{6} + o(x^6)\right) + \frac{\left(x^2 - \frac{x^6}{6} + o(x^6)\right)^2}{2} + o(x^4) \\
> &= 1 + x^2 - \frac{x^6}{6} + \frac{x^4}{2} + o(x^4) \\
> &= 1 + x^2 + \frac{1}{2}x^4 + o(x^4)
> \end{align}
> $$
> in cui il termine $o(x^4)$ assorbe tutti i contributi di grado superiore (inclusi $-\frac{x^6}{6}$ e $o(x^6)$).
> 
> Sostituendo ora le espressioni ottenute nel numeratore originario:
> $$
> \begin{align}
> e^{\sin x^2} - \sin x^2 - 1 &= \left( 1 + x^2 + \frac{1}{2}x^4 + o(x^4) \right) - \left( x^2 - \frac{x^6}{6} + o(x^6) \right) - 1 \\
> &= \frac{1}{2}x^4 + o(x^4)
> \end{align}
> $$
> (il termine $-\frac{x^6}{6} + o(x^6)$ viene anch'esso compreso all'interno di $o(x^4)$).
> 
> Il limite diviene quindi immediato:
> $$
> \lim_{x \to 0} \frac{\frac{1}{2}x^4 + o(x^4)}{x^4} = \lim_{x \to 0} \left( \frac{1}{2} + \frac{o(x^4)}{x^4} \right) = \frac{1}{2} + \lim_{x \to 0} o(1) = \frac{1}{2}
> $$

> [!note] Criterio di arresto negli sviluppi
> È fondamentale acquisire sensibilità operativa per stabilire fino a quale ordine arrestare ciascuno sviluppo: l'ordine della potenza dominante a denominatore (in questo caso $x^4$) fissa la soglia di precisione richiesta a numeratore per evitare la scomparsa di termini significativi.
>
