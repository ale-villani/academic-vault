---
title: "Spazi Normati, Misura e Integrazione di Lebesgue"
domain: "math/measure-theory"
source_course: "Analisi 3 (Cap. 2)"
tags:
  - math/measure/lebesgue-measure
  - math/measure/lebesgue-integral
  - math/functional-analysis/lp-spaces
---

# 2. Spazi Normati, Misura e Integrazione di Lebesgue

### Spazi vettoriali e nozioni di base

Si ricorda che uno **spazio vettoriale** su un campo $\mathbb{K}$ (con $\mathbb{K} = \mathbb{R}$ oppure $\mathbb{K} = \mathbb{C}$) è un insieme $V$ su cui sono definite due operazioni:
- **Somma vettoriale** $+: V \times V \to V$, tale che:
  - $u + v = v + u \quad \forall u, v \in V$ (proprietà commutativa)
  - $(u + v) + w = u + (v + w) \quad \forall u, v, w \in V$ (proprietà associativa)
  - $\exists 0 \in V : u + 0 = u \quad \forall u \in V$ (esistenza dell'elemento neutro)
  - $\forall u \in V, \ \exists (-u) \in V : u + (-u) = 0$ (esistenza dell'opposto)
- **Prodotto per scalare** $\cdot: \mathbb{K} \times V \to V$, tale che:
  - $(ts) u = t (su) \quad \forall u \in V, \ \forall t, s \in \mathbb{K}$
  - $t (u + v) = tu + tv \quad \forall u, v \in V, \ \forall t \in \mathbb{K}$
  - $(t + s) u = tu + su \quad \forall u \in V, \ \forall t, s \in \mathbb{K}$
  - $1 \cdot u = u \quad \forall u \in V$

> [!example] Esempi di spazi vettoriali
> - $\mathbb{R}^n, \mathbb{C}^n$
> - $\mathrm{Mat}_{\mathbb{R}}(n, m)$ (matrici di dimensione $n \times m$)
> - $\mathbb{R}[x]$ (polinomi a coefficienti reali)
> - $\mathbb{R}[x]_{\le n}$ (polinomi di grado minore o uguale a $n$)
> - $C^0(\Omega)$ (funzioni continue su $\Omega$)
> - $C^\infty(\Omega)$ (funzioni indefinitamente differenziabili su $\Omega$)
>
> Tra questi:
> - **Spazi a dimensione finita:** $\mathbb{R}^n, \mathbb{C}^n, \mathrm{Mat}_{\mathbb{R}}(n, m), \mathbb{R}[x]_{\le n}$;
> - **Spazi a dimensione infinita:** $\mathbb{R}[x], C^0(\Omega), C^\infty(\Omega)$.
>

### Spazi normati

> [!definition] Spazio normato
> Sia $V$ uno spazio vettoriale sul campo $\mathbb{K}$ ($\mathbb{R}$ o $\mathbb{C}$). Si definisce **norma** una funzione:
> $$
> \|\cdot\|: V \to [0, +\infty)
> $$
> tale che per ogni $v, w \in V$ e per ogni $\lambda \in \mathbb{K}$:
> 1. **Positività e separazione (non degenerazione):**
>    $$
>    \|v\| \ge 0, \quad \|v\| = 0 \iff v = 0
>    $$
> 2. **Omogeneità:**
>    $$
>    \|\lambda v\| = |\lambda| \|v\|
>    $$
> 3. **Disuguaglianza triangolare:**
>    $$
>    \|v + w\| \le \|v\| + \|w\|
>    $$
> La coppia $(V, \|\cdot\|)$ è detta **spazio normato**.

> [!note] Disuguaglianza triangolare inversa
> In ogni spazio normato vale la disuguaglianza triangolare inversa:
> $$
> \big| \|u\| - \|v\| \big| \le \|u - v\| \quad \forall u, v \in V
> $$
>
### Esempi di norme in $\mathbb{R}^n$ e in spazi di funzioni

**1. Norme vettoriali in $\mathbb{R}^n$:**
- **Norma euclidea standard ($p = 2$):**
  $$
  \|\mathbf{x}\|_2 = \sqrt{\sum_{i=1}^n x_i^2}
  $$
- **Norme $p$ ($\ell^p$):** per ogni $p \in [1, +\infty)$:
  $$
  \|\mathbf{x}\|_p = \left( \sum_{i=1}^n |x_i|^p \right)^{1/p}
  $$
  - Solo per $p = 2$ la norma è indotta da un prodotto scalare:
    $$
    \|\mathbf{v}\|_2 = \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle}
    $$
  - Per $p < 1$ la quantità $\|\cdot\|_p$ non soddisfa la disuguaglianza triangolare, pertanto non è una norma.
- **Norma del massimo ($\ell^\infty$):**
  $$
  \|\mathbf{x}\|_\infty = \max_{i=1, \dots, n} |x_i|
  $$
  e vale la convergenza:
  $$
  \lim_{p \to +\infty} \|\mathbf{x}\|_p = \lim_{p \to +\infty} \left( \sum_{i=1}^n |x_i|^p \right)^{1/p} = \|\mathbf{x}\|_\infty
  $$

**2. Norme in spazi di funzioni continue $C^0([a, b])$:**
- **Norma uniforme / del massimo ($L^\infty$):**
  $$
  \|f\|_\infty = \max_{x \in [a, b]} |f(x)|
  $$
  Essa rappresenta l'analogo continuo in dimensione infinita della norma $\|\cdot\|_\infty$ di $\mathbb{R}^n$.
- **Norma $L^1$:**
  $$
  \|f\|_1 = \int_a^b |f(x)|\,dx
  $$

### Spazi metrici e geometria delle palle unitarie

> [!definition] Distanza indotta da una norma e spazio metrico
> In uno spazio vettoriale normato $(V, \|\cdot\|)$ sul campo $\mathbb{K}$, la norma induce naturalmente una funzione **distanza** (o metrica):
> $$
> d(\cdot, \cdot): V \times V \to [0, +\infty)
> $$
> definita ponendo:
> $$
> d(u, v) := \|u - v\| \quad \forall u, v \in V
> $$
> Tale funzione soddisfa le tre proprietà caratteristiche di uno **spazio metrico** $(V, d)$:
> 1. **Positività e separazione:**
>    $$
>    d(u, v) \ge 0 \quad \forall u, v \in V, \quad d(u, v) = 0 \iff u = v
>    $$
> 2. **Simmetria:**
>    $$
>    d(u, v) = d(v, u) \quad \forall u, v \in V
>    $$
> 3. **Disuguaglianza triangolare:**
>    $$
>    d(u, w) \le d(u, v) + d(v, w) \quad \forall u, v, w \in V
>    $$

> [!example] Esempi di metriche in $\mathbb{R}^n$
> - Distanza $\ell^p$:
>   $$
>   d_p(\mathbf{x}, \mathbf{y}) = \|\mathbf{x} - \mathbf{y}\|_p = \left( \sum_{i=1}^n |x_i - y_i|^p \right)^{1/p}
>   $$
> - Distanza $\ell^\infty$:
>   $$
>   d_\infty(\mathbf{x}, \mathbf{y}) = \|\mathbf{x} - \mathbf{y}\|_\infty = \max_{i=1, \dots, n} |x_i - y_i|
>   $$
>
> **Geometria delle palle unitarie in $\mathbb{R}^2$:**
> Le differenti norme inducono geometrie distinte per la palla unitaria centrata nell'origine:
> $$
> B_1(0) = \{ \mathbf{x} \in \mathbb{R}^2 : \|\mathbf{x}\| < 1 \}
> $$
> - Per $\|\cdot\|_1$: la palla unitaria è un quadrato ruotato di $45^\circ$ (un rombo / ottaedro piano) con vertici nei punti $(\pm 1, 0)$ e $(0, \pm 1)$, definito dalla condizione $|x_1| + |x_2| < 1$.
> - Per $\|\cdot\|_2$: la palla unitaria è il classico cerchio euclideo di raggio unitario $x_1^2 + x_2^2 < 1$.
> - Per $\|\cdot\|_p$ con $p > 2$: la palla unitaria è una curva convessa ("superellisse") intermedia tra il cerchio e il quadrato, che si gonfia verso gli spigoli al crescere di $p$.
> - Per $\|\cdot\|_{p'}$ con $p' > p > 2$: la palla si espande ulteriormente verso il bordo del quadrato.
> - Per $\|\cdot\|_\infty$: al limite per $p \to +\infty$, la palla unitaria è il quadrato con lati paralleli agli assi coordinati $[-1, 1] \times [-1, 1]$, definito da $\max(|x_1|, |x_2|) < 1$.
>
> **Geometria delle palle unitarie in $C^0([a, b])$:**
> - **Palla unitaria in $\|\cdot\|_\infty$:**
>   $$
>   B_1(0) = \{ f \in C^0([a, b]) : \|f\|_\infty < 1 \}
>   $$
>   Consiste in tutte le funzioni continue il cui grafico è interamente vincolato all'interno della striscia orizzontale compresa tra le costanti $-1$ e $+1$ (controllo puntuale uniforme).
> - **Palla unitaria in $\|\cdot\|_1$:**
>   $$
>   B_1(0) = \left\{ f \in C^0([a, b]) : \int_a^b |f(x)|\,dx < 1 \right\}
>   $$
>   Consiste in tutte le funzioni continue per cui l'area sottesa dal modulo $|f|$ è minore di 1. In questo caso, le funzioni possono avere picchi arbitrariamente alti su intervalli molto stretti (assenza di controllo puntuale).
>

### Convergenza di successioni in spazi metrici

> [!definition] Convergenza in uno spazio metrico
> Sia $(V, d)$ uno spazio metrico e sia $\{v_n\}_{n \in \mathbb{N}} \subset V$ una successione di elementi in $V$.
> Si dice che la successione $v_n$ **converge** a un limite $v \in V$ per $n \to +\infty$, e si scrive:
> $$
> \lim_{n \to +\infty} v_n = v \quad (\text{oppure } v_n \xrightarrow{d} v)
> $$
> se e solo se la distanza metrica tende a zero:
> $$
> \lim_{n \to +\infty} d(v_n, v) = 0
> $$

> [!example] Esempio
> In $V = C^0([a, b])$ dotato della norma $\|\cdot\|_\infty$, la distanza metrica è data da:
> $$
> d(f_n, f) = \|f_n - f\|_\infty = \max_{x \in [a, b]} |f_n(x) - f(x)|
> $$
> Pertanto, la convergenza nella metrica indotta da $\|\cdot\|_\infty$ coincide esattamente con la **convergenza uniforme** della successione di funzioni:
> $$
> f_n \xrightarrow{\|\cdot\|_\infty} f \iff \lim_{n \to +\infty} \sup_{x \in [a, b]} |f_n(x) - f(x)| = 0
> $$
>
allora:
> $$
> \lim_{n \to +\infty} f_n = f \iff \lim_{n \to +\infty} \|f_n - f\|_\infty = 0
> $$
> (corrisponde alla convergenza uniforme).
>
> Se invece si considera la norma $\|\cdot\|_1$:
> $$
> \|\cdot\|_1 : \quad \lim_{n \to +\infty} f_n = f \iff \lim_{n \to +\infty} \int_a^b |f_n(x) - f(x)|\,dx = 0
> $$
>

## 2.1. Proprietà topologiche negli spazi normati: dimensione finita vs dimensione infinita

> [!note] Discrepanze tra dimensione finita e dimensione infinita
> Alcuni risultati fondamentali validi negli spazi a dimensione finita **NON** sono validi in spazi a dimensione infinita:
> 1. Equivalenza delle norme;
> 2. Chiusura dei sottospazi vettoriali;
> 3. Completezza dello spazio (completezza di Cauchy / spazi di Banach).
>
### Norme equivalenti

> [!definition] Norme equivalenti
> Sia $V$ uno spazio vettoriale su un campo $\mathbb{K}$ ($\mathbb{R}$ o $\mathbb{C}$). Siano $\|\cdot\|_1$ e $\|\cdot\|_2$ due norme su $V$. Le due norme si dicono **equivalenti** se:
> $$
> \exists\, c_1, c_2 \in \mathbb{R}^+ : \quad c_1 \|v\|_1 \le \|v\|_2 \le c_2 \|v\|_1 \quad \forall v \in V
> $$

> [!note] Conservazione del limite e della convergenza
> Se $\|\cdot\|_1$ e $\|\cdot\|_2$ sono norme equivalenti in $V$, allora per ogni successione $\{v_n\}_{n \in \mathbb{N}} \subset V$:
> $$
> v_n \xrightarrow{n \to +\infty} v \text{ secondo } \|\cdot\|_1 \iff v_n \xrightarrow{n \to +\infty} v \text{ secondo } \|\cdot\|_2
> $$
> cioè, equivalentemente, per $n \to +\infty$:
> $$
> \|v_n - v\|_1 \to 0 \iff \|v_n - v\|_2 \to 0
> $$

> [!theorem] Equivalenza di tutte le norme in dimensione finita
> Sia $V$ uno spazio vettoriale con dimensione finita:
> $$
> \dim V < +\infty
> $$
> Allora **tutte** le norme su $V$ sono equivalenti.

> [!warning] Fallimento in dimensione infinita
> Questo teorema è **FALSO** se $\dim V = +\infty$.

> [!example] Non equivalenza tra $\|\cdot\|_1$ e $\|\cdot\|_\infty$ in $C^0([a,b])$
> Sia $V = C^0([a,b])$ e consideriamo le norme $\|\cdot\|_1$ e $\|\cdot\|_\infty$.
> Le due norme **NON** sono equivalenti.
> 
> Vale infatti sempre la disuguaglianza:
> $$
> \|f\|_1 = \int_a^b |f(x)|\,dx \le \max_{x \in [a,b]} |f(x)| \cdot (b - a) = (b - a) \|f\|_\infty
> $$
> tuttavia non esiste alcuna costante $c_2 > 0$ tale che:
> $$
> \|f\|_\infty \le c_2 \|f\|_1 \quad \forall f \in V \qquad (*)
> $$
> **Controesempio:**
> Esiste infatti una successione $\{f_n\}_{n \in \mathbb{N}} \subset C^0([a,b])$ tale che:
> $$
> \frac{\|f_n\|_\infty}{\|f_n\|_1} \xrightarrow{n \to +\infty} +\infty
> $$
> e quindi la maggiorazione $(*)$ non può sussistere.
> 
> Sia $f_n(x)$ la successione di funzioni "a capannina" (impulso triangolare) definita su $[a,b]$:
> si fissa un triangolo con base sull'intervallo $\left[a, a + \frac{1}{n}\right]$, vertice di altezza $n$ (oppure altezza $2n$ in modo che l'area sottesa sia costantemente pari a $1$ per ogni $n \in \mathbb{N}$), e nulla altrove:
> $$
> f_n(x) = \begin{cases}
> 2n^2 (x - a) & x \in \left[a, a + \dfrac{1}{2n}\right] \\[1.5ex]
> 2n - 2n^2 \left(x - a - \dfrac{1}{2n}\right) & x \in \left(a + \dfrac{1}{2n}, a + \dfrac{1}{n}\right] \\[1.5ex]
> 0 & x \in \left(a + \dfrac{1}{n}, b\right]
> \end{cases}
> $$
> Si nota che:
> $$
> \|f_n\|_\infty = \max_{x \in [a,b]} |f_n(x)| = n \xrightarrow{n \to +\infty} +\infty
> $$
> ma l'integrale (l'area sottesa dal triangolo) vale:
> $$
> \|f_n\|_1 = \int_a^b |f_n(x)|\,dx = 1 \quad \forall n \in \mathbb{N}
> $$
> Di conseguenza:
> $$
> \lim_{n \to +\infty} \frac{\|f_n\|_\infty}{\|f_n\|_1} = \lim_{n \to +\infty} n = +\infty \implies \|\cdot\|_\infty \text{ e } \|\cdot\|_1 \text{ NON sono equivalenti}
> $$
>
### Chiusura dei sottospazi vettoriali

> [!theorem] Chiusura dei sottospazi in dimensione finita
> Sia $V$ uno spazio vettoriale normato con $\dim V < +\infty$.
> Allora per ogni sottospazio vettoriale $W \subseteq V$, $W$ è **chiuso**, ovvero:
> $$
> \forall \{w_n\}_{n \in \mathbb{N}} \subseteq W : \quad w_n \xrightarrow{n \to +\infty} v \implies v \in W
> $$

> [!example] Sottospazi in $\mathbb{R}^3$ con norma euclidea $\|\cdot\|_2$
> In $\mathbb{R}^3$, i sottospazi vettoriali sono tutti del tipo:
> $$
> W = \mathrm{Span}\{\mathbf{v}, \mathbf{w}\}, \quad \mathbf{v}, \mathbf{w} \in \mathbb{R}^3
> $$
> - Se $\mathbf{v} = \mathbf{w} = \mathbf{0}$, $W = \{\mathbf{0}\}$ (un punto, chiuso);
> - Se $\mathbf{v}, \mathbf{w}$ sono linearmente dipendenti, $W$ è una retta passante per l'origine (chiusa);
> - Se $\mathbf{v}, \mathbf{w}$ sono linearmente indipendenti, $W$ è un piano passante per l'origine (chiuso).
> In ogni caso, ciascun sottospazio è un insieme chiuso in $\mathbb{R}^3$.

> [!warning] Fallimento in dimensione infinita
> Questo teorema è **FALSO** se $\dim V = +\infty$.
> In dimensione infinita esistono sottospazi vettoriali che non sono chiusi.

> [!example] Il sottospazio $C^1([a,b])$ in $(C^0([a,b]), \|\cdot\|_\infty)$
> Lo spazio $C^1([a,b])$ è un sottospazio vettoriale proprio di $C^0([a,b])$.
> Però esiste una successione $\{f_n\}_{n \in \mathbb{N}} \subset C^1([a,b])$ tale che:
> $$
> f_n \xrightarrow{n \to +\infty} f \quad \text{in } \|\cdot\|_\infty
> $$
> con $f \in C^0([a,b])$, ma $f \notin C^1([a,b])$.
> 
> **Costruzione esplicita:**
> Posto $a < 0$ e $b > 0$, consideriamo la successione:
> $$
> f_n(x) = \sqrt{x^2 + \frac{1}{n}} \in C^1([a,b]), \quad \forall n \in \mathbb{N}
> $$
> e la funzione limite:
> $$
> f(x) = |x| = \sqrt{x^2} \in C^0([a,b])
> $$
> Si nota che lo scarto massimo tra $f_n$ e $f$ si verifica nell'origine $x = 0$:
> $$
> \max_{x \in [a,b]} |f(x) - f_n(x)| = f_n(0) - f(0) = \sqrt{\frac{1}{n}} - 0 = \frac{1}{\sqrt{n}} \xrightarrow{n \to +\infty} 0
> $$
> Dunque la successione converge uniformemente a $f(x) = |x|$ in $[a,b]$.
> Tuttavia la funzione limite $f(x) = |x|$ non è derivabile in $x = 0$, dunque:
> $$
> f \notin C^1([a,b])
> $$
> Di conseguenza, il sottospazio vettoriale $C^1([a,b])$ non è chiuso in $(C^0([a,b]), \|\cdot\|_\infty)$.
>
### Completezza dello spazio e Spazi di Banach

> [!definition] Successione di Cauchy
> Si ricordi che una successione $\{v_n\}_{n \in \mathbb{N}} \subseteq V$ in uno spazio metrico $(V, d)$ si dice **di Cauchy** se:
> $$
> \forall\,\varepsilon > 0, \;\exists\, N \in \mathbb{N} : \quad \forall n, m \ge N \implies d(v_n, v_m) < \varepsilon
> $$
> In uno spazio normato $(V, \|\cdot\|)$, la condizione si esprime come:
> $$
> \|v_n - v_m\| < \varepsilon \quad \forall n, m \ge N
> $$

> [!theorem] Completezza in dimensione finita
> Sia $(V, \|\cdot\|)$ uno spazio normato di dimensione finita:
> $$
> \dim V < +\infty
> $$
> Allora ogni successione di Cauchy $\{v_n\}_{n \in \mathbb{N}} \subseteq V$ ammette limite $v \in V$:
> $$
> v_n \xrightarrow{n \to +\infty} v \in V
> $$
> cioè $V$ è **completo**.

> [!warning] Fallimento della completezza in dimensione infinita
> Ciò è **FALSO** in dimensione infinita: esistono spazi normati di dimensione infinita che non sono completi.

> [!example] Incompletezza di $C^0([a,b])$ rispetto alla norma $\|\cdot\|_1$
> Consideriamo lo spazio $V = C^0([-1, 1])$ dotato della norma integrale:
> $$
> \|f\|_1 = \int_{-1}^1 |f(x)|\,dx
> $$
> Esiste una successione di Cauchy che non converge con $\|\cdot\|_1$ in $C^0([-1, 1])$.
> 
> **Costruzione:**
> Consideriamo la successione di funzioni continue $\{f_n\}_{n \in \mathbb{N}}$ definita su $[-1, 1]$ da:
> $$
> f_n(x) = \begin{cases}
> -1 & x \in \left[-1, -\dfrac{1}{n}\right] \\[1.5ex]
> nx & x \in \left(-\dfrac{1}{n}, \dfrac{1}{n}\right) \\[1.5ex]
> 1 & x \in \left[\dfrac{1}{n}, 1\right]
> \end{cases}
> $$
> Fissati $n, m \in \mathbb{N}$ con $m > n$, la differenza $|f_n(x) - f_m(x)|$ è non nulla unicamente sull'intervallo $\left[-\frac{1}{n}, \frac{1}{n}\right]$, delimitando due triangoli simmetrici ciascuno di area $\mathcal{A}$:
> $$
> \|f_n - f_m\|_1 = 2 \mathcal{A} = 2 \cdot \frac{1 \cdot \left| \dfrac{1}{m} - \dfrac{1}{n} \right|}{2} = \frac{1}{n} - \frac{1}{m}
> $$
> Poiché per $n, m \to +\infty$ tale termine tende a 0:
> $$
> \forall\,\varepsilon > 0, \;\exists\, N \in \mathbb{N} : \quad \forall n, m \ge N \implies \|f_n - f_m\|_1 < \frac{1}{N} < \varepsilon
> $$
> Quindi $\{f_n\}_{n \in \mathbb{N}}$ è una successione di Cauchy rispetto alla norma $\|\cdot\|_1$.
> 
> Se esistesse un limite $f \in C^0([-1, 1])$ in norma $\|\cdot\|_1$, esso dovrebbe coincidere quasi ovunque con il limite puntuale della successione:
> $$
> f(x) = \lim_{n \to +\infty} f_n(x) = \begin{cases}
> -1 & x \in [-1, 0) \\[1ex]
> 0 & x = 0 \\[1ex]
> 1 & x \in (0, 1]
> \end{cases}
> \quad \text{oppure} \quad
> f(x) = \begin{cases}
> -1 & x \in [-1, 0] \\[1ex]
> 1 & x \in (0, 1]
> \end{cases}
> $$
> che presenta una discontinuità di salto nell'origine $x = 0$.
> Dunque la funzione limite non è continua: non esiste alcuna funzione $g \in C^0([-1, 1])$ tale che $\|f_n - g\|_1 \to 0$.
> Ne consegue che:
> $$
> (C^0([-1, 1]), \|\cdot\|_1) \quad \text{NON è COMPLETO}
> $$
> Al contrario, lo spazio $(C^0([a,b]), \|\cdot\|_\infty)$ dotato della norma del sup **è completo** (dimostrato in Analisi 1: il limite uniforme di funzioni continue è continuo).
>
### Spazi di Banach

> [!definition] Spazio di Banach
> Si ricorda che uno spazio normato $(V, \|\cdot\|)$ che risulti **completo** rispetto alla metrica indotta dalla norma è detto **spazio di Banach**.

> [!example] Esempi notevoli e generalizzazioni di spazi di Banach
> - Lo spazio $(C^0([a,b]), \|\cdot\|_\infty)$ è uno spazio di Banach.
> - **Generalizzazioni:**
>   - Lo spazio $C^k([a,b])$ delle funzioni $k$ volte derivabili con continuità è uno spazio di Banach rispetto alla norma:
>     $$
>     \|f\|_{C^k} := \sum_{i=0}^k \|f^{(i)}\|_\infty
>     $$
>   - Sia $\Omega \subseteq \mathbb{R}^n$ un aperto limitato. Lo spazio $C^k(\overline{\Omega})$ è uno spazio di Banach nella norma:
>     $$
>     \|f\|_{C^k(\overline{\Omega})} = \sum_{|\alpha| \le k} \|D^\alpha f\|_\infty
>     $$
>     usando la notazione a **multi-indice**:
>     - $\alpha = (\alpha_1, \alpha_2, \dots, \alpha_n) \in \mathbb{N}_0^n$;
>     - $|\alpha| := \alpha_1 + \alpha_2 + \dots + \alpha_n$;
>     - e l'operatore di derivazione parziale:
>       $$
>       D^\alpha f := \frac{\partial^{|\alpha|} f}{\partial x_1^{\alpha_1} \partial x_2^{\alpha_2} \dots \partial x_n^{\alpha_n}}
>       $$
>
## 2.2. Teoria della Misura e Misura di Lebesgue

L'idea cardine dell'integrazione secondo Lebesgue è quella di **partizionare il codominio** di una funzione piuttosto che il suo dominio (come avveniva nell'integrale di Riemann) per la costruzione delle somme di approssimazione.
Per comprendere la potenza dell'integrale di Lebesgue, è necessario introdurre un nuovo modo di **misurare** i sottoinsiemi di $\mathbb{R}^n$.

### $\sigma$-algebre e spazi misurabili

> [!definition] $\sigma$-algebra
> Sia $\Omega$ un insieme non vuoto e sia $\mathcal{F} \subseteq \mathcal{P}(\Omega)$ una famiglia di sottoinsiemi di $\Omega$. Si dice che $\mathcal{F}$ è una **$\sigma$-algebra** se soddisfa i seguenti tre assiomi:
> 1. $\varnothing \in \mathcal{F}$;
> 2. Chiusura per complementazione:
>    $$
>    A \in \mathcal{F} \implies \Omega \setminus A = A^c \in \mathcal{F}
>    $$
> 3. Chiusura per unione numerabile:
>    $$
>    \{A_n\}_{n \in \mathbb{N}} \subset \mathcal{F} \implies \bigcup_{n \in \mathbb{N}} A_n \in \mathcal{F}
>    $$

> [!definition] Spazio misurabile
> Sia $\Omega$ un insieme e $\mathcal{F} \subseteq \mathcal{P}(\Omega)$ una $\sigma$-algebra. La coppia:
> $$
> (\Omega, \mathcal{F})
> $$
> è detta **spazio misurabile**, e gli insiemi $A \in \mathcal{F}$ sono detti **insiemi misurabili**.

> [!note] $\sigma$-algebre di cardinalità estrema
> In qualunque insieme $\Omega$:
> - $\mathcal{F}_1 = \mathcal{P}(\Omega)$ è la $\sigma$-algebra di cardinalità massima;
> - $\mathcal{F}_2 = \{\varnothing, \Omega\}$ è la $\sigma$-algebra banale di cardinalità minima.

> [!definition] $\sigma$-algebra di Borel e insiemi borelliani
> Sia $\Omega$ uno spazio topologico (ad esempio $\mathbb{R}^n$ dotato della topologia euclidea standard).
> Si definisce **$\sigma$-algebra di Borel** (indicata con $\mathcal{B}(\Omega)$ o $\mathcal{F}$) la più piccola $\sigma$-algebra su $\Omega$ che contiene tutti gli insiemi aperti di $\Omega$:
> $$
> \mathcal{B}(\Omega) := \sigma(\{A \subseteq \Omega : A \text{ è aperto}\})
> $$
> Ogni elemento $A \in \mathcal{B}(\Omega)$ è detto **insieme borelliano** (o *borelliano*).
> Poiché $A \in \mathcal{F} \implies A^c \in \mathcal{F}$, ne consegue che anche **tutti gli insiemi chiusi** di $\Omega$ sono borelliani.
>
### Misura positiva e spazi di misura

> [!definition] Misura positiva e Spazio di misura
> Sia $(\Omega, \mathcal{F})$ uno spazio misurabile.
> Si definisce **misura positiva** su $(\Omega, \mathcal{F})$ una funzione:
> $$
> \mu: \mathcal{F} \longrightarrow [0, +\infty]
> $$
> tale che:
> 1. **Positività:**
>    $$
>    \mu(A) \ge 0 \quad \forall A \in \mathcal{F}
>    $$
> 2. **$\sigma$-additività (additività numerabile):**
>    Sia $\{A_n\}_{n \in I} \subseteq \mathcal{F}$ una famiglia al più numerabile di insiemi a due a due disgiunti ($A_i \cap A_j = \varnothing$ per ogni $i \neq j$). Allora:
>    $$
>    \mu\left(\bigcup_{n \in I} A_n\right) = \sum_{n \in I} \mu(A_n)
>    $$
> 
> In tal caso, la terna:
> $$
> (\Omega, \mathcal{F}, \mu)
> $$
> si dice **spazio di misura**.

> [!example] Esempi elementari di misura positiva
> 1. **Misura di conteggio (cardinalità):**
>    Sullo spazio misurabile $(\Omega, \mathcal{P}(\Omega))$, la cardinalità di un insieme è una misura positiva:
>    $$
>    \mu(A) = \#(A) = \mathrm{card}(A)
>    $$
> 2. **Misura di Dirac:**
>    Fissato un punto $x_0 \in \Omega$, la funzione:
>    $$
>    \mu_{x_0}(A) = \mathbb{1}_A(x_0) = \begin{cases}
>    1 & x_0 \in A \\
>    0 & x_0 \notin A
>    \end{cases}
>    $$
>    è una misura positiva su $(\Omega, \mathcal{P}(\Omega))$.
>
### Proprietà fondamentali delle misure positive

> [!proposition] Proprietà della misura positiva
> Sia $(\Omega, \mathcal{F}, \mu)$ uno spazio di misura. Valgono le seguenti proprietà:
> 1. **Differenza:** Se $A, B \in \mathcal{F}$ con $A \subseteq B$, allora:
>    $$
>    \mu(B \setminus A) = \mu(B) - \mu(A) \quad (\text{se } \mu(A) < +\infty)
>    $$
> 2. **Misura dell'insieme vuoto:**
>    $$
>    \mu(\varnothing) = 0
>    $$
> 3. **Continuità dal basso (successioni crescenti):**
>    Se $\{A_n\}_{n \in \mathbb{N}} \subset \mathcal{F}$ è una successione crescente ($A_1 \subseteq A_2 \subseteq \dots \subseteq A_n \subseteq \dots$), allora:
>    $$
>    \mu\left(\bigcup_{n=1}^{+\infty} A_n\right) = \lim_{n \to +\infty} \mu(A_n)
>    $$
> 4. **Continuità dall'alto (successioni decrescenti):**
>    Se $\{A_n\}_{n \in \mathbb{N}} \subset \mathcal{F}$ è una successione decrescente ($A_1 \supseteq A_2 \supseteq \dots \supseteq A_n \supseteq \dots$) e $\mu(A_1) < +\infty$, allora:
>    $$
>    \mu\left(\bigcap_{n=1}^{+\infty} A_n\right) = \lim_{n \to +\infty} \mu(A_n)
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione della proprietà 1 (Differenza):**
> Gli insiemi $B \setminus A$ e $A$ sono disgiunti $((B \setminus A) \cap A = \varnothing)$ e la loro unione restituisce $B$:
> $$
> (B \setminus A) \cup A = B
> $$
> Per la proprietà di additività:
> $$
> \mu(B) = \mu((B \setminus A) \cup A) = \mu(B \setminus A) + \mu(A)
> $$
> da cui, se $\mu(A) < +\infty$:
> $$
> \mu(B \setminus A) = \mu(B) - \mu(A)
> $$
> 
> **Dimostrazione della proprietà 2 ($\mu(\varnothing) = 0$):**
> Poiché $\varnothing \cup \varnothing = \varnothing$ con $\varnothing \cap \varnothing = \varnothing$, per additività:
> $$
> \mu(\varnothing) + \mu(\varnothing) = \mu(\varnothing)
> $$
> Ne segue che per ogni $n \in \mathbb{N}$:
> $$
> n \mu(\varnothing) = \mu(\varnothing) \implies \mu(\varnothing) = 0
> $$
> oppure $\mu(\varnothing) = +\infty$. Tuttavia, se fosse $\mu(\varnothing) = +\infty$, allora per monotonia ogni insieme $A \in \mathcal{F}$ avrebbe misura $\mu(A) = +\infty$, rendendo la misura priva di interesse applicativo. Dunque $\mu(\varnothing) = 0$.
> 
> **Dimostrazione della proprietà 3 (Continuità dal basso):**
> Possiamo decomporre l'unione numerabile in un'unione di insiemi a due a due disgiunti ponendo $A_0 = \varnothing$:
> $$
> \bigcup_{n=1}^{+\infty} A_n = A_1 \cup (A_2 \setminus A_1) \cup (A_3 \setminus A_2) \cup \dots \cup (A_n \setminus A_{n-1}) \cup \dots
> $$
> Essendo tali insiemi disgiunti, per $\sigma$-additività:
> $$
> \mu\left(\bigcup_{n=1}^{+\infty} A_n\right) = \sum_{i=1}^{+\infty} \mu(A_i \setminus A_{i-1})
> $$
> Applicando la formula della differenza:
> $$
> \mu\left(\bigcup_{n=1}^{+\infty} A_n\right) = \sum_{i=1}^{+\infty} [\mu(A_i) - \mu(A_{i-1})]
> $$
> La serie ottenuta è una **serie telescopica**:
> $$
> \sum_{i=1}^{+\infty} [\mu(A_i) - \mu(A_{i-1})] = \lim_{n \to +\infty} \sum_{i=1}^n [\mu(A_i) - \mu(A_{i-1})] = \lim_{n \to +\infty} [\mu(A_n) - \mu(A_0)]
> $$
> Poiché $\mu(A_0) = \mu(\varnothing) = 0$, concludiamo:
> $$
> \mu\left(\bigcup_{n=1}^{+\infty} A_n\right) = \lim_{n \to +\infty} \mu(A_n)
> $$
> 
> **Dimostrazione della proprietà 4 (Continuità dall'alto):**
> Posto:
> $$
> B_n := A_1 \setminus A_n, \quad \forall n \in \mathbb{N}
> $$
> si ha:
> $$
> \mu(B_n) = \mu(A_1) - \mu(A_n)
> $$
> Inoltre, per le leggi di De Morgan:
> $$
> A_1 \setminus \bigcap_{n=1}^{+\infty} A_n = \bigcup_{n=1}^{+\infty} (A_1 \setminus A_n) = \bigcup_{n=1}^{+\infty} B_n
> $$
> Ne consegue che:
> $$
> \mu\left(A_1 \setminus \bigcap_{n=1}^{+\infty} A_n\right) = \mu(A_1) - \mu\left(\bigcap_{n=1}^{+\infty} A_n\right)
> $$
> D'altra parte, poiché $A_n$ è decrescente, la successione $\{B_n\}_{n \in \mathbb{N}}$ è monotona crescente ($B_1 \subseteq B_2 \subseteq \dots \subseteq B_n \subseteq \dots$). Applicando la continuità dal basso provata al punto 3:
> $$
> \mu\left(\bigcup_{n=1}^{+\infty} B_n\right) = \lim_{n \to +\infty} \mu(B_n) = \lim_{n \to +\infty} [\mu(A_1) - \mu(A_n)] = \mu(A_1) - \lim_{n \to +\infty} \mu(A_n)
> $$
> Uguagliando le due espressioni:
> $$
> \mu(A_1) - \mu\left(\bigcap_{n=1}^{+\infty} A_n\right) = \mu(A_1) - \lim_{n \to +\infty} \mu(A_n)
> $$
> Poiché $\mu(A_1) < +\infty$, sottraendo $\mu(A_1)$ da entrambi i membri e cambiando segno si ottiene:
> $$
> \mu\left(\bigcap_{n=1}^{+\infty} A_n\right) = \lim_{n \to +\infty} \mu(A_n) \qquad \blacksquare
> $$
>
### La Misura di Lebesgue in $\mathbb{R}^n$

> [!theorem] Teorema di esistenza e unicità della misura di Lebesgue
> Esistono in $\Omega = \mathbb{R}^n$ una $\sigma$-algebra $\mathcal{M}$ (detta **$\sigma$-algebra degli insiemi Lebesgue-misurabili**) e **UNA SOLA** misura positiva $m$ su $(\mathbb{R}^n, \mathcal{M})$, detta **MISURA DI LEBESGUE**, tale che:
> 
> 1. **Inclusione dei borelliani:** Tutti gli insiemi aperti e tutti gli insiemi chiusi di $\mathbb{R}^n$ appartengono a $\mathcal{M}$:
>    $$
>    \forall A \subseteq \mathbb{R}^n \text{ aperto}, \; \forall B \subseteq \mathbb{R}^n \text{ chiuso} \implies A, B \in \mathcal{M}
>    $$
>    (cioè $\mathcal{M}$ contiene la $\sigma$-algebra di Borel $\mathcal{B}(\mathbb{R}^n)$).
> 
> 2. **Completezza:** Se $A \in \mathcal{M}$ ha misura nulla $m(A) = 0$, allora ogni suo sottoinsieme è Lebesgue-misurabile e ha misura nulla:
>    $$
>    \forall B \subseteq A \implies B \in \mathcal{M} \quad \text{e} \quad m(B) = 0
>    $$
> 
> 3. **Normalizzazione:** Se $A$ è un intervallo compatto $n$-dimensionale (plurirettangolo):
>    $$
>    A := \{\mathbf{x} \in \mathbb{R}^n : a_i \le x_i \le b_i \;\; \forall i = 1, \dots, n\} = \prod_{i=1}^n [a_i, b_i] = [a_1, b_1] \times \dots \times [a_n, b_n]
>    $$
>    allora $A \in \mathcal{M}$ e la sua misura coincide con il volume euclideo standard:
>    $$
>    m(A) = \prod_{i=1}^n (b_i - a_i)
>    $$
> 
> 4. **Invarianza per traslazioni:** La misura $m$ è invariante per qualunque traslazione rigida:
>    $$
>    A \in \mathcal{M}, \;\mathbf{x}_0 \in \mathbb{R}^n \implies A + \mathbf{x}_0 := \{\mathbf{x} \in \mathbb{R}^n : \mathbf{x} = \mathbf{x}_0 + \mathbf{y}, \;\mathbf{y} \in A\} \in \mathcal{M}
>    $$
>    e:
>    $$
>    m(A + \mathbf{x}_0) = m(A)
>    $$

> [!warning] Esistenza di insiemi non misurabili
> Esistono sottoinsiemi di $\mathbb{R}^n$ che **NON** sono misurabili secondo Lebesgue (come dimostrato dall'insieme di Vitali).
>
### Insiemi a misura nulla

> [!note] Insiemi a misura nulla in $\mathbb{R}$ ($n=1$)
> - **Punti singoli:**
>   Sia $x_0 \in \mathbb{R}$. In $\mathbb{R}$ si ha $m(\{x_0\}) = 0$. Infatti:
>   $$
>   \{x_0\} = \bigcap_{n \in \mathbb{N}} \left[x_0 - \frac{1}{n}, x_0 + \frac{1}{n}\right]
>   $$
>   dove gli intervalli sono compatti e inscatolati. Per continuità dall'alto della misura:
>   $$
>   m(\{x_0\}) = \lim_{n \to +\infty} m\left(\left[x_0 - \frac{1}{n}, x_0 + \frac{1}{n}\right]\right) = \lim_{n \to +\infty} \left( x_0 + \frac{1}{n} - \left(x_0 - \frac{1}{n}\right) \right) = \lim_{n \to +\infty} \frac{2}{n} = 0
>   $$
> 
> - **Insiemi numerabili:**
>   Sia $A = \{x_n\}_{n \in \mathbb{N}}$ un insieme numerabile $\implies m(A) = 0$.
>   Infatti $A = \bigcup_{n=1}^{+\infty} \{x_n\}$ (unione numerabile di singoletti disgiunti), e per $\sigma$-additività:
>   $$
>   m(A) = \sum_{n=1}^{+\infty} m(\{x_n\}) = \sum_{n=1}^{+\infty} 0 = 0
>   $$
>   Di conseguenza:
>   $$
>   m(\mathbb{N}) = m(\mathbb{Z}) = m(\mathbb{Q}) = 0
>   $$
>   Questo fondamentale risultato **NON** è possibile con la teoria di Peano-Jordan (dove l'insieme $\mathbb{Q} \cap [0, 1]$ non è misurabile).
> 
> - **Misura dei numeri irrazionali in $[0, 1]$:**
>   Poiché $[0, 1] \cap \mathbb{Q} \subset \mathbb{Q}$, per la proprietà di completezza si ha:
>   $$
>   m([0, 1] \cap \mathbb{Q}) = 0
>   $$
>   Pertanto:
>   $$
>   m([0, 1] \setminus \mathbb{Q}) = m([0, 1]) - m([0, 1] \cap \mathbb{Q}) = 1 - 0 = 1
>   $$

> [!note] Insiemi a misura nulla in $\mathbb{R}^2$ e $\mathbb{R}^3$
> - **In $\mathbb{R}^2$ ($n=2$):**
>   - Segmento $A \subseteq \mathbb{R}^2 \implies m(A) = 0$
>     *(si racchiude il segmento in un rettangolo $\Pi$ di altezza $h_n \xrightarrow{n \to +\infty} 0$ e se ne calcola l'area con $A \subset \Pi, \forall n \in \mathbb{N}$)*;
>   - Retta $A \subseteq \mathbb{R}^2 \implies m(A) = 0$;
>   - Curva regolare a tratti $\gamma \subseteq \mathbb{R}^2 \implies m(\gamma) = 0$
>     *(non facile da dimostrare)*.
> - **In $\mathbb{R}^3$ ($n=3$):**
>   - Superficie regolare a pezzi $\Sigma \subseteq \mathbb{R}^3 \implies m(\Sigma) = 0$.

> [!warning] Insiemi non numerabili di misura nulla
> Esistono insiemi **NON NUMERABILI** che hanno misura di Lebesgue nulla! Il prototipo fondamentale è l'insieme ternario di Cantor.
>
### L'Insieme ternario di Cantor

> [!example] Insieme di Cantor
> Sia $C_0 = [0, 1]$. Divido l'intervallo in 3 sotto-intervalli di uguale misura $\frac{|C_0|}{3} = \frac{1}{3}$, e in particolare sia l'intervallo di mezzo aperto:
> $$
> C_0 = \left[0, \frac{1}{3}\right] \cup \left(\frac{1}{3}, \frac{2}{3}\right) \cup \left[\frac{2}{3}, 1\right]
> $$
> Allora pongo:
> $$
> C_1 = \left[0, \frac{1}{3}\right] \cup \left[\frac{2}{3}, 1\right]
> $$
> Itero il procedimento per ogni componente connessa del generico $C_n$: ad ogni passo $n$, rimuovo il terzo medio aperto da ciascuno dei $2^n$ intervalli chiusi.
> 
> Definisco l'**insieme di Cantor** come:
> $$
> C := \bigcap_{n=1}^{+\infty} C_n
> $$
> 
> **Cardinalità (non numerabilità):**
> A ogni punto di $C$ corrisponde univocamente una successione infinita di scelte binarie tra i rami sinistro e destro:
> $$
> \exists\, f: C \longrightarrow \{0, 1\}^\mathbb{N}
> f(x) = \{w_1, \dots, w_n, \dots\} \quad \text{con } w_i \in \{0, 1\} \;\; \forall i \in \mathbb{N}
> $$
> Pertanto $C$ è equipotente all'insieme delle successioni binarie $\{0, 1\}^\mathbb{N}$.
> Poiché per ogni successione $a_n \in \{0, 1\}^\mathbb{N}$, la serie:
> $$
> 0.a_1 a_2 \dots a_n \dots = \sum_{n=1}^{+\infty} \frac{a_n}{2^n}
> $$
> è l'espressione binaria di un numero reale in $[0, 1]$, ne consegue che:
> $$
> \mathrm{card}(C) = \mathrm{card}([0, 1]) = \mathrm{card}(\mathbb{R}) = \mathfrak{c}
> $$
> 
> **Misura di Lebesgue:**
> Poiché $C_0 \supseteq C_1 \supseteq C_2 \supseteq \dots$ è una successione decrescente di compatti ed essendo $\bigcap_{n=0}^{+\infty} C_n = C$, vale per le proprietà della misura:
> $$
> m(C) = \lim_{n \to +\infty} m(C_n)
> $$
> Poiché $C_n$ è formato da $2^n$ intervalli disgiunti ciascuno di misura $3^{-n}$:
> $$
> m(C_n) = 2^n \cdot 3^{-n} = \left(\frac{2}{3}\right)^n
> $$
> Passando al limite:
> $$
> m(C) = \lim_{n \to +\infty} m(C_n) = \lim_{n \to +\infty} \left(\frac{2}{3}\right)^n = 0
> $$
> **Conclusione:** $C$ è **equipotente a $\mathbb{R}$**, ma ha **misura di Lebesgue nulla**:
> $$
> \mathrm{card}(C) = \mathrm{card}(\mathbb{R}), \qquad m(C) = 0
> $$
>
### Insieme di Vitali: non misurabilità secondo Lebesgue

> [!example] Insieme di Vitali
> È un esempio fondamentale di insieme **non misurabile** secondo Lebesgue.
> 
> Definisco la seguente relazione di equivalenza per $x, y \in [0, 1]$:
> $$
> x \sim y \iff x - y \in \mathbb{Q}
> $$
> Consideriamo l'insieme quoziente:
> $$
> \mathcal{A} := [0, 1] / \sim
> $$
> Per ogni classe di equivalenza $[x] \in \mathcal{A}$, scelgo **ESATTAMENTE UN RAPPRESENTANTE** tramite l'Assioma della Scelta:
> $$
> \alpha \in [0, 1] : \quad \alpha \in [x] \quad \text{(classe di equivalenza di } x\text{)}
> $$
> Sia $E \subset [0, 1]$ l'insieme di tali rappresentanti.
> Quindi per ogni $x \in [0, 1]$ esiste un unico $\alpha \in E$ distante un razionale da $x$:
> $$
> \forall x \in [0, 1], \quad \exists!\, \alpha \in E : \quad (x - \alpha) \in \mathbb{Q}
> $$
> 
> Mostriamo che $E$ **non è misurabile** procedendo per assurdo: supponiamo che $E \in \mathcal{M}$ sia misurabile secondo Lebesgue.
> 
> Per ogni razionale $r \in \mathbb{Q} \cap [0, 1]$, partizioniamo $E$ ponendo:
> $$
> F_r := E \cap [r, 1], \qquad G_r := E \cap [0, r)
> $$
> di modo che:
> $$
> E = F_r \cup G_r \quad \forall r \in \mathbb{Q} \cap [0, 1]
> $$
> Definiamo ora i traslati:
> $$
> \Gamma_r := \{r + g_{1-r} : g_{1-r} \in G_{1-r}\} \subset [r, 1]
> $$
> e:
> $$
> \Phi_r := \{r - 1 + f_{1-r} : f_{1-r} \in F_{1-r}\} \subset [0, r)
> $$
> Posto:
> $$
> H_r := \Gamma_r \cup \Phi_r \subset [0, 1]
> $$
> valgono le seguenti proprietà:
> 
> 1. $m(H_r) = m(E)$, perché:
>    - $E$ è supposto misurabile;
>    - $m(\Gamma_r) = m(G_{1-r})$ perché $m$ è invariante alle traslazioni;
>    - $m(\Phi_r) = m(F_{1-r})$ (idem per invarianza traslatoria);
>    $$
>    \implies m(H_r) = m(G_{1-r}) + m(F_{1-r}) = m(G_{1-r} \cup F_{1-r}) = m(E)
>    $$
> 
> 2. $\forall r, s \in \mathbb{Q} \cap [0, 1]$, $H_r \cap H_s = \varnothing$ se $r \neq s$ perché
> se per assurdo $x \in H_r \cap H_s$, allora $x \in E$, ed esisterebbero due elementi distinti di $E$ (uno per $H_r$ e uno per $H_s$) traslazione di $x$ per un numero razionale. Ciò contraddice l'unicità dei membri scelti per ciascuna classe di equivalenza di $A$.
> 
> 3. **Ricoprimento dell'intervallo unitario:** Risulta
>    $$
>    \bigcup_{r \in \mathbb{Q} \cap [0, 1]} H_r = [0, 1]
>    $$
>    poiché ogni elemento $x \in [0, 1]$ differisce di un numero razionale da un elemento di $E$.
> 
> Applicando l'additività numerabile della misura di Lebesgue $m$:
> $$
> m\left( \bigcup_{r \in \mathbb{Q} \cap [0, 1]} H_r \right) = \sum_{r \in \mathbb{Q} \cap [0, 1]} m(H_r) = m([0, 1]) = 1
> $$
> Essendo $m(H_r) = m(E)$ per ogni $r \in \mathbb{Q} \cap [0, 1]$, si ottiene:
> $$
> \sum_{r \in \mathbb{Q} \cap [0, 1]} m(E) = 1 \quad \text{\Large\lightning}
> $$
> Tale uguaglianza conduce a un'assurdità, poiché:
> - Se $m(E) = 0$, allora
>   $$
>   \sum_{r \in \mathbb{Q} \cap [0, 1]} m(E) = 0 \neq 1
>   $$
> - Se $m(E) \neq 0$ (ossia $m(E) > 0$), allora
>   $$
>   \sum_{r \in \mathbb{Q} \cap [0, 1]} m(E) = +\infty \neq 1
>   $$
> 
> Pertanto, $E$ non è misurabile. $\blacksquare$
> 
>
## 2.3. Funzioni misurabili secondo Lebesgue

> [!definition] Funzione misurabile secondo Lebesgue su $\mathbb{R}^n$
> Sia $f: \mathbb{R}^n \to \mathbb{R}$. Si dice che $f$ è **misurabile secondo Lebesgue** se per ogni insieme aperto $A \subseteq \mathbb{R}$, la controimmagine $f^{-1}(A)$ è un insieme misurabile secondo Lebesgue in $\mathbb{R}^n$:
> $$
> \forall A \subseteq \mathbb{R} \text{ aperto} \implies f^{-1}(A) \text{ è misurabile secondo Lebesgue in } \mathbb{R}^n
> $$

> [!definition] Funzione misurabile su un dominio generico
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$. Si dice che $f$ è **misurabile** se il dominio $E$ è misurabile e per ogni insieme aperto $A \subseteq \mathbb{R}$ la controimmagine in $E$ è misurabile:
> $$
> E \text{ è misurabile} \quad \land \quad \forall A \subseteq \mathbb{R} \text{ aperto}, \; f^{-1}(A) \subseteq E \text{ è misurabile}
> $$
> Tale formulazione estende la definizione a un dominio generico $E$.

> [!note] Equivalenza tramite insiemi chiusi
> Le definizioni sopra date sono del tutto equivalenti richiedendo che la controimmagine $f^{-1}(C)$ sia misurabile per ogni insieme chiuso $C \subseteq \mathbb{R}$, poiché il complementare di un aperto è chiuso e la classe degli insiemi misurabili è chiusa per passaggio al complementare.
>
### Continuità e misurabilità

> [!proposition] Continuità implica misurabilità
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$, con $E$ misurabile. Allora:
> $$
> f \text{ continua} \implies f \text{ misurabile}
> $$

> [!quote]- Dimostrazione
> Se $f$ è continua, per ogni insieme aperto $A \subseteq \mathbb{R}$, la controimmagine $f^{-1}(A)$ è un aperto nella topologia relativa di $E$, ossia:
> $$
> f^{-1}(A) = E \cap U
> $$
> con $U \subseteq \mathbb{R}^n$ aperto. Poiché ogni aperto di $\mathbb{R}^n$ è misurabile secondo Lebesgue e l'intersezione di due insiemi misurabili ($E$ ed $U$) è misurabile, $f^{-1}(A)$ risulta misurabile. $\blacksquare$

> [!note] Misurabilità delle controimmagini di punti
> Poiché per ogni $\alpha \in \mathbb{R}$ il singoletto $\{\alpha\}$ è un insieme chiuso in $\mathbb{R}$, per ogni funzione misurabile $f$ si ha:
> $$
> \forall \alpha \in \mathbb{R}, \; \{\alpha\} \text{ è chiuso} \implies f^{-1}(\{\alpha\}) \text{ è misurabile}
> $$
>
### Operazioni su funzioni misurabili

> [!proposition] Stabilità algebrica e reticolare delle funzioni misurabili
> Siano $f, g: E \subseteq \mathbb{R}^n \to \mathbb{R}$ funzioni misurabili. Allora sono misurabili:
> $$
> \min\{f, g\}, \quad \max\{f, g\}, \quad f + g, \quad fg
> $$
> Inoltre, se $g \in C^0(E)$, allora la composizione $f \circ g$ è misurabile.

> [!proposition] Estremi e limiti di successioni di funzioni misurabili
> Siano $f_n: E \subseteq \mathbb{R}^n \to \mathbb{R}$ funzioni misurabili per ogni $n \in \mathbb{N}$. Allora sono misurabili:
> $$
> \sup_{n \in \mathbb{N}} \{f_n\}, \quad \inf_{n \in \mathbb{N}} \{f_n\}, \quad \limsup_{n \to +\infty} \{f_n\}, \quad \liminf_{n \to +\infty} \{f_n\}
> $$

> [!note] Chiusura rispetto al limite puntuale
> Dalle proprietà precedenti consegue immediatamente che se $\{f_n\}_{n \in \mathbb{N}}$ è una successione di funzioni misurabili ed esiste il limite puntuale:
> $$
> f(x) = \lim_{n \to +\infty} f_n(x) \quad \forall x \in E
> $$
> allora tale funzione limite $f$ è misurabile, essendo $f = \limsup_{n \to +\infty} f_n = \liminf_{n \to +\infty} f_n$.
>
## 2.4. Teoria dell'integrazione secondo Lebesgue

### Funzioni semplici e funzioni caratteristiche

> [!definition] Funzione semplice
> Sia $s: E \subseteq \mathbb{R}^n \to \mathbb{R}$, con $E \subseteq \mathbb{R}^n$ insieme misurabile. La funzione $s$ si dice **semplice** se assume un numero finito di valori, ovvero:
> $$
> s(E) = \{\alpha_1, \dots, \alpha_n\} \quad \text{per un certo } n \in \mathbb{N}
> $$
> In altri termini:
> $$
> s(x) = \begin{cases}
> \alpha_1 & x \in E_1 \\
> \vdots & \vdots \\
> \alpha_n & x \in E_n
> \end{cases}
> $$
> con $\alpha_1, \dots, \alpha_n \in \mathbb{R}$, ed $E_1, \dots, E_n$ insiemi misurabili, a due a due disgiunti ($E_i \cap E_j = \emptyset$ per $i \neq j$), tali che:
> $$
> \bigcup_{i=1}^n E_i = E
> $$

> [!note] Misurabilità delle funzioni semplici
> Le funzioni semplici sono sempre misurabili, poiché per ogni aperto $A \subseteq \mathbb{R}$ la controimmagine $s^{-1}(A)$ è data dall'unione finita degli insiemi misurabili $E_i$ per i quali $\alpha_i \in A$.

> [!definition] Funzione caratteristica (indicatrice)
> Sia $A \subseteq \mathbb{R}^n$. Si definisce **funzione caratteristica** di $A$ la funzione $\chi_A: \mathbb{R}^n \to \{0, 1\}$ definita da:
> $$
> \chi_A(\mathbf{x}) = \begin{cases}
> 1 & \mathbf{x} \in A \\
> 0 & \mathbf{x} \notin A
> \end{cases}
> $$

> [!note] Forma canonica di una funzione semplice
> Ogni funzione semplice $s: E \subseteq \mathbb{R}^n \to \mathbb{R}$ si può scrivere come combinazione lineare finita di funzioni caratteristiche:
> $$
> s(\mathbf{x}) = \sum_{i=1}^n \alpha_i \chi_{E_i}(\mathbf{x})
> $$
> con $E_1, \dots, E_n$ insiemi misurabili e a due a due disgiunti.
>
### Integrale di Lebesgue per funzioni semplici positive

> [!definition] Integrale di Lebesgue di una funzione semplice positiva
> Sia $s: E \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione semplice e non negativa:
> $$
> s(\mathbf{x}) = \sum_{i=1}^n \alpha_i \chi_{E_i}(\mathbf{x}) \quad \text{con } \alpha_i \ge 0, \; \alpha_i \neq \alpha_j \text{ per } i \neq j
> $$
> Si definisce **integrale di Lebesgue** di $s$ su $E$:
> $$
> \int_E s(\mathbf{x}) \, d\mathbf{x} := \sum_{i=1}^n \alpha_i m(E_i)
> $$
> dove tale valore appartiene a $[0, +\infty]$. Si adotta la convenzione standard:
> $$
> \text{se } \alpha_j = 0 \text{ e } m(E_j) = +\infty, \quad \text{allora } \alpha_j m(E_j) = 0 \cdot (+\infty) = 0
> $$
>
Geometricamente, l'integrale di una funzione semplice non negativa rappresenta la somma dei volumi degli iper-prismi aventi per base l'insieme misurabile $E_i$ (di misura $m(E_i)$) e per altezza il valore costante $\alpha_i$.

### Approssimazione tramite funzioni semplici e integrale per funzioni positive

> [!theorem] Approssimazione con funzioni semplici
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$ misurabile. Allora esiste una successione di funzioni semplici $\{s_n\}_{n \in \mathbb{N}}$, con $s_n: E \to \mathbb{R}$, tale che:
> $$
> s_n(x) \xrightarrow{n \to +\infty} f(x) \quad \forall x \in E
> $$
> Se inoltre $f \ge 0$, la successione $\{s_n\}_{n \in \mathbb{N}}$ può essere scelta monotona crescente:
> $$
> 0 \le s_n(x) \le s_{n+1}(x) \le f(x) \quad \forall x \in E, \; \forall n \in \mathbb{N}
> $$

> [!definition] Integrale di Lebesgue per funzioni misurabili positive
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione misurabile e non negativa ($f \ge 0$). Si definisce **integrale di Lebesgue** di $f$ su $E$:
> $$
> \int_E f \, d\mathbf{x} := \sup \left\{ \int_E s \, d\mathbf{x} : s: E \to \mathbb{R} \text{ semplice}, \; 0 \le s \le f \right\}
> $$
>
### Parte positiva, parte negativa ed estensione a segno variabile

> [!definition] Parte positiva e parte negativa
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione misurabile. Si definiscono la **parte positiva** $f^+$ e la **parte negativa** $f^-$ di $f$:
> $$
> f^+ := \max\{f, 0\}, \qquad f^- := -\min\{f, 0\}
> $$
> Le funzioni $f^+$ e $f^-$ sono misurabili e soddisfano le identità fondamentali:
> $$
> f^+ \ge 0, \quad f^- \ge 0, \qquad f = f^+ - f^-, \qquad |f| = f^+ + f^-
> $$

> [!definition] Integrale di Lebesgue di una funzione a segno variabile
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$ misurabile. Si definisce l'**integrale di Lebesgue** di $f$ su $E$:
> $$
> \int_E f \, d\mathbf{x} := \int_E f^+ \, d\mathbf{x} - \int_E f^- \, d\mathbf{x}
> $$
> purché **almeno uno** dei due integrali $\int_E f^+ \, d\mathbf{x}$ oppure $\int_E f^- \, d\mathbf{x}$ sia finito (in modo da evitare la forma indeterminata $+\infty - \infty$).

> [!definition] Integrabilità secondo Lebesgue ($\mathcal{L}^1$)
> Una funzione misurabile $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$ si dice **integrabile secondo Lebesgue** su $E$ se il suo integrale di Lebesgue esiste ed è finito:
> $$
> \int_E f \, d\mathbf{x} \in \mathbb{R} \quad (\text{esiste finito})
> $$
> In tal caso si scrive:
> $$
> f \in \mathcal{L}^1(E)
> $$

> [!note] Criterio di integrabilità assoluta (Differenza cruciale con Riemann)
> Per l'integrale di Lebesgue vale l'equivalenza fondamentale:
> $$
> f \in \mathcal{L}^1(E) \iff f^+ \in \mathcal{L}^1(E) \quad \land \quad f^- \in \mathcal{L}^1(E) \iff |f| \in \mathcal{L}^1(E)
> $$
> Una funzione è integrabile secondo Lebesgue se e solo se è assolutamente integrabile. Questa condizione è radicalmente differente da quanto accade per l'integrale di Riemann (in particolare per gli integrali impropri).
>
## 2.5. Proprietà dell'integrale di Lebesgue

> [!theorem] Proprietà fondamentali dell'integrale di Lebesgue
> Siano date funzioni integrabili su un insieme misurabile $E \subseteq \mathbb{R}^n$:
> 
> 1. **Linearità:**
>    Per ogni $f, g \in \mathcal{L}^1(E)$ e per ogni $\alpha, \beta \in \mathbb{R}$:
>    $$
>    \alpha f + \beta g \in \mathcal{L}^1(E) \quad \land \quad \int_E (\alpha f + \beta g) \, d\mathbf{x} = \alpha \int_E f \, d\mathbf{x} + \beta \int_E g \, d\mathbf{x}
>    $$
> 
> 2. **Monotonia e disuguaglianza triangolare:**
>    Se $f, g \in \mathcal{L}^1(E)$ con $f \le g$ in $E$, allora:
>    $$
>    \int_E f \, d\mathbf{x} \le \int_E g \, d\mathbf{x}
>    $$
>    Inoltre vale la disuguaglianza triangolare per l'integrale:
>    $$
>    \left| \int_E f \, d\mathbf{x} \right| \le \int_E |f| \, d\mathbf{x}
>    $$
> 
> 3. **Additività rispetto al dominio:**
>    Sia $F \subseteq E$ un sottoinsieme misurabile e $f \in \mathcal{L}^1(E)$. Allora:
>    $$
>    \int_E f \, d\mathbf{x} = \int_F f \, d\mathbf{x} + \int_{E \setminus F} f \, d\mathbf{x}
>    $$
> 
> 4. **Insiemi di misura nulla e invarianza:**
>    Se $F \subseteq E$ con $|F| = m(F) = 0$ e $f \in \mathcal{L}^1(E)$, allora:
>    $$
>    \int_F f \, d\mathbf{x} = 0
>    $$
>    Inoltre, se $g \in \mathcal{L}^1(E)$ e $f(\mathbf{x}) = g(\mathbf{x})$ per ogni $\mathbf{x} \in E \setminus F$, allora:
>    $$
>    \int_E f \, d\mathbf{x} = \int_E g \, d\mathbf{x}
>    $$

> [!quote]- Dimostrazione della proprietà 4 (Insiemi di misura nulla)
> Sia $F \subseteq E$ un insieme di misura nulla ($m(F) = |F| = 0$).
> 
> **Passo 1: Annullamento dell'integrale su $F$.**
> Per ogni partizione misurabile finita $A_1, \dots, A_n \subseteq F$, essendo $A_i \subseteq F$, per monotonia della misura esterna risulta:
> $$
> |A_i| = m(A_i) = 0 \quad \forall i = 1, \dots, n
> $$
> Pertanto, per ogni generica funzione semplice $s: F \to \mathbb{R}$ non negativa, $s(x) = \sum_{i=1}^n \alpha_i \chi_{A_i}(x)$, si ha:
> $$
> \int_F s \, d\mathbf{x} = \sum_{i=1}^n \alpha_i |A_i| = \sum_{i=1}^n \alpha_i \cdot 0 = 0
> $$
> Di conseguenza, passando all'estremo superiore su tutte le funzioni semplici $0 \le s \le f$:
> $$
> \int_F f \, d\mathbf{x} = \sup \{0\} = 0
> $$
> 
> **Passo 2: Invarianza dell'integrale per funzioni coincidenti quasi ovunque.**
> Siano $f, g \in \mathcal{L}^1(E)$ tali che $f(\mathbf{x}) = g(\mathbf{x})$ per ogni $\mathbf{x} \in E \setminus F$, con $|F| = 0$. Applicando l'additività del dominio:
> $$
> \int_E f \, d\mathbf{x} = \int_{E \setminus F} f \, d\mathbf{x} + \cancel{\int_F f \, d\mathbf{x}} = \int_{E \setminus F} f \, d\mathbf{x}
> $$
> Essendo $f = g$ su $E \setminus F$:
> $$
> \int_{E \setminus F} f \, d\mathbf{x} = \int_{E \setminus F} g \, d\mathbf{x} = \int_{E \setminus F} g \, d\mathbf{x} + \cancel{\int_F g \, d\mathbf{x}} = \int_E g \, d\mathbf{x}
> $$
> Si conclude pertanto che:
> $$
> \int_E f \, d\mathbf{x} = \int_E g \, d\mathbf{x}
> $$
> $\blacksquare$
>
### Proprietà quasi ovunque (q.o.)

> [!definition] Proprietà verificata quasi ovunque
> Sia $E \subseteq \mathbb{R}^n$ un insieme misurabile e sia $P$ una proprietà definita sugli elementi di $E$. Si dice che $P$ vale **quasi ovunque** in $E$ (abbreviato in **q.o.**, oppure in inglese **a.e.** per *almost everywhere*) se esiste un sottoinsieme $F \subseteq E$ di misura di Lebesgue nulla ($|F| = m(F) = 0$) tale che $P(\mathbf{x})$ è vera per ogni $\mathbf{x} \in E \setminus F$:
> $$
> \exists F \subseteq E, \; |F| = 0 \quad : \quad P(\mathbf{x}) \text{ è vera } \forall \mathbf{x} \in E \setminus F
> $$
>
## 2.6. Confronto tra integrale di Riemann e integrale di Lebesgue

### Criterio di Vitali-Lebesgue

> [!theorem] Criterio di Lebesgue per l'integrabilità secondo Riemann
> Sia $f: E \subseteq \mathbb{R}^n \to \mathbb{R}$, dove $E$ è un $n$-intervallo compatto (plurirettangolo):
> $$
> E = \bigtimes_{i=1}^n [a_i, b_i]
> $$
> Allora:
> $$
> f \in \mathcal{R}(E) \iff f \text{ è limitata su } E \text{ e l'insieme } A \text{ dei suoi punti di discontinuità ha misura di Lebesgue nulla } (|A| = 0)
> $$
> In tal caso, la funzione è anche integrabile secondo Lebesgue ($f \in \mathcal{L}^1(E)$) e i due integrali coincidono:
> $$
> \int_E^{(\mathcal{R})} f(\mathbf{x}) \, d\mathbf{x} = \int_E f(\mathbf{x}) \, d\mathbf{x}
> $$

> [!note] Estensione stretta dell'integrale di Riemann
> L'integrale di Lebesgue estende strettamente quello di Riemann: ogni funzione integrabile secondo Riemann è integrabile secondo Lebesgue, ma esistono funzioni integrabili secondo Lebesgue che non sono integrabili secondo Riemann:
> $$
> \exists f \in \mathcal{L}^1(E) \quad \text{tale che} \quad f \notin \mathcal{R}(E)
> $$

> [!example] Funzione di Dirichlet
> Si consideri la funzione caratteristica dei numeri razionali ristretta all'intervallo $[0, 1]$:
> $$
> f: [0, 1] \to \mathbb{R}, \qquad f(x) = \chi_{\mathbb{Q}}(x) = \begin{cases}
> 1 & x \in \mathbb{Q} \cap [0, 1] \\
> 0 & x \in (\mathbb{R} \setminus \mathbb{Q}) \cap [0, 1]
> \end{cases}
> $$
> - **Integrazione secondo Riemann:** Per qualunque suddivisione di $[0, 1]$, in ogni intervallino cadono sia punti razionali sia punti irrazionali. Le somme integrali superiori valgono costantemente $1$, mentre le somme integrali inferiori valgono costantemente $0$. Non tendendo allo stesso limite:
>   $$
>   f \notin \mathcal{R}([0, 1])
>   $$
> - **Integrazione secondo Lebesgue:** L'insieme $\mathbb{Q} \cap [0, 1]$ è numerabile, pertanto ha misura di Lebesgue nulla: $|\mathbb{Q}| = 0$. Ne segue che $f(x) = 0$ quasi ovunque in $[0, 1]$. Di conseguenza:
>   $$
>   \int_{[0, 1]} f \, dx = 0
>   $$
>   dunque $f \in \mathcal{L}^1([0, 1])$.
> 
> Si noti che l'insieme delle discontinuità di $f$ è l'intero intervallo $[0, 1]$, il quale ha misura $|[0, 1]| = 1 \neq 0$, confermando coerentemente tramite il criterio di Lebesgue che $f \notin \mathcal{R}([0, 1])$.
>
### Integrali impropri di Riemann vs Integrale di Lebesgue

> [!note] Differenze sostanziali con l'integrale improprio di Riemann
> Nel caso di domini illimitati o funzioni non limitate con singolarità, sussistono differenze sostanziali tra l'integrale improprio di Riemann e l'integrale di Lebesgue:
> 
> $$
> \begin{array}{ccc}
> |f| \in \mathcal{L}^1(E) & \iff & f \in \mathcal{L}^1(E) \\
> \Uparrow & & \text{\Large\color{red}\xcancel{\phantom{X}}}\kern-1.2em\Uparrow \\
> |f| \text{ è } \mathcal{R}\text{-integrabile in senso improprio in } E & \implies & f \text{ è } \mathcal{R}\text{-integrabile in senso improprio}
> \end{array}
> $$
> 
> Se $|f|$ è integrabile in senso improprio secondo Riemann, allora $f \in \mathcal{L}^1(E)$. Tuttavia, la sola integrabilità in senso improprio di $f$ (convergenza semplice dovuta a oscillazioni e cancellazioni di segno) **non implica** l'integrabilità secondo Lebesgue.
> Esistono funzioni integrabili in senso improprio secondo Riemann che non appartengono a $\mathcal{L}^1(E)$.

> [!example] La funzione sinc su $[0, +\infty)$
> Si consideri l'intervallo $E = [0, +\infty)$ e la funzione:
> $$
> f(x) = \frac{\sin x}{x}
> $$
> - **Integrale improprio di Riemann:** L'integrale converge condizionatamente:
>   $$
>   \int_0^{+\infty} \frac{\sin x}{x} \, dx = \frac{\pi}{2}
>   $$
> - **Integrale di Lebesgue:** Si valuta l'integrale del valore assoluto:
>   $$
>   \int_0^{+\infty} \left| \frac{\sin x}{x} \right| \, dx = +\infty
>   $$
>   (divergente sia in senso improprio di Riemann che secondo Lebesgue).
> 
> Poiché $|f| \notin \mathcal{L}^1([0, +\infty))$, per il criterio di integrabilità assoluta si ha:
> $$
> \frac{\sin x}{x} \notin \mathcal{L}^1([0, +\infty))
> $$
>
## 2.7. Gli spazi funzionali $\mathcal{L}^1$ ed $L^1$

### La struttura vettoriale e la pseudo-norma

> [!note] $\mathcal{L}^1(E)$ come spazio vettoriale
> L'insieme $\mathcal{L}^1(E)$ delle funzioni integrabili secondo Lebesgue su $E \subseteq \mathbb{R}^n$ è uno **spazio vettoriale** reale: per ogni $\alpha, \beta \in \mathbb{R}$ e per ogni $f, g \in \mathcal{L}^1(E)$, si ha $\alpha f + \beta g \in \mathcal{L}^1(E)$, e l'operatore di integrazione è lineare:
> $$
> \int_E (\alpha f + \beta g) \, d\mathbf{x} = \alpha \int_E f \, d\mathbf{x} + \beta \int_E g \, d\mathbf{x}
> $$

> [!definition] Pseudo-norma in $\mathcal{L}^1(E)$
> Data una funzione $f \in \mathcal{L}^1(E)$, con $E \subseteq \mathbb{R}^n$, si definisce:
> $$
> \|f\|_1 := \int_E |f| \, d\mathbf{x}
> $$
> Tale quantità verifica gran parte degli assiomi di norma:
> 1. **Omogeneità:**
>    $$
>    \forall \lambda \in \mathbb{R}, \quad \|\lambda f\|_1 = \int_E |\lambda f| \, d\mathbf{x} = |\lambda| \int_E |f| \, d\mathbf{x} = |\lambda| \|f\|_1
>    $$
> 2. **Disuguaglianza triangolare:**
>    $$
>    \|f + g\|_1 = \int_E |f + g| \, d\mathbf{x} \le \int_E (|f| + |g|) \, d\mathbf{x} = \int_E |f| \, d\mathbf{x} + \int_E |g| \, d\mathbf{x} = \|f\|_1 + \|g\|_1
>    $$
> 3. **Non-negatività:**
>    $$
>    \|f\|_1 = \int_E |f| \, d\mathbf{x} \ge 0
>    $$

> [!warning] Mancanza di positività stretta su $\mathcal{L}^1$
> La quantità $\|\cdot\|_1$ non è una norma in senso stretto su $\mathcal{L}^1(E)$ poiché l'annullamento dell'integrale **non implica** che la funzione sia identicamente nulla:
> $$
> \|f\|_1 = 0 \centernot\implies f \equiv 0 \text{ in } E
> $$
> Ad esempio, per la funzione caratteristica dei razionali su $[0, 1]$:
> $$
> \int_{[0, 1]} \chi_{\mathbb{Q} \cap [0, 1]}(\mathbf{x}) \, d\mathbf{x} = 0 \quad \text{ma} \quad \chi_{\mathbb{Q} \cap [0, 1]} \not\equiv 0
> $$
> La proprietà di annullamento garantisce unicamente la nullità quasi ovunque:
> $$
> \|f\|_1 = 0 \iff f = 0 \text{ q.o. in } E
> $$
>
### Relazione di equivalenza e spazio quoziente $L^1$

> [!definition] Relazione di equivalenza quasi ovunque
> Siano $f, g \in \mathcal{L}^1(E)$, con $E \subseteq \mathbb{R}^n$. Si introduce la relazione $\sim$:
> $$
> f \sim g \iff f = g \text{ q.o. in } E \iff \int_E |f - g| \, d\mathbf{x} = 0 \iff \|f - g\|_1 = 0
> $$

> [!note] Verifica della relazione di equivalenza
> La relazione $\sim$ definita sopra è un'autentica relazione di equivalenza:
> - **Riflessiva:** Per ogni $f \in \mathcal{L}^1(E)$, $f = f$ ovunque in $E$, dunque $f \sim f$.
> - **Simmetrica:** $f \sim g \iff f = g$ q.o. $\iff g = f$ q.o. $\iff g \sim f$.
> - **Transitiva:** Se $f \sim g$ e $g \sim h$, allora:
>   $$
>   f = g \text{ in } E \setminus A_1, \; A_1 \subseteq E, \; |A_1| = 0
>   g = h \text{ in } E \setminus A_2, \; A_2 \subseteq E, \; |A_2| = 0
>   $$
>   Posto $A = A_1 \cup A_2$, per subadditività numerabile si ha $|A| \le |A_1| + |A_2| = 0$, dunque $|A| = 0$. In $E \setminus A$ risulta $f = g = h$, ovvero:
>   $$
>   f = h \text{ in } E \setminus (A_1 \cup A_2) \implies f \sim h
>   $$

> [!definition] Spazio quoziente di Lebesgue $L^1(E)$
> Sia $E \subseteq \mathbb{R}^n$ misurabile. Si definisce lo spazio di Lebesgue $L^1(E)$ come l'insieme quoziente di $\mathcal{L}^1(E)$ rispetto alla relazione di equivalenza $\sim$:
> $$
> L^1(E) := \mathcal{L}^1(E)/\sim \; = \big\{ [f] : f \in \mathcal{L}^1(E) \big\}
> $$
> dove $[f] = \{g \in \mathcal{L}^1(E) : g = f \text{ q.o. in } E\}$ denota la classe di equivalenza di $f$.

> [!note] Struttura normata di $L^1(E)$
> Lo spazio quoziente $L^1(E)$ è uno spazio vettoriale normato dotato della norma:
> $$
> \|[f]\|_1 := \|f\|_1 = \int_E |f| \, d\mathbf{x}
> $$
> La norma è ben definita (indipendente dalla scelta del rappresentante della classe) e soddisfa la positività stretta: $\|[f]\|_1 = 0 \iff [f] = [0]$.

> [!theorem] Completezza di $L^1$ (Teorema di Riesz-Fischer)
> Sia $E \subseteq \mathbb{R}^n$ misurabile. Allora lo spazio normato $(L^1(E), \|\cdot\|_1)$ è uno **spazio di Banach** (ovvero uno spazio vettoriale normato completo: ogni successione di Cauchy in $L^1(E)$ converge a un elemento di $L^1(E)$).

> [!note] Convenzione di abuso di notazione
> Sebbene rigorosamente gli elementi di $L^1(E)$ siano classi di equivalenza di funzioni coincidenti quasi ovunque, nella prassi dell'analisi matematica essi vengono trattati (con sistematico abuso di notazione) direttamente come ordinarie funzioni definite a meno di insiemi di misura nulla.
> In particolare:
> $$
> f \in L^1(E) \iff \int_E |f| \, d\mathbf{x} < +\infty
> $$
>
## 2.8. Convergenza in $L^1$ e convergenza quasi ovunque

### Convergenza forte in $L^1$ e problema dello scambio dei limiti

> [!definition] Convergenza in $L^1$
> Siano $\{f_n\}_{n \in \mathbb{N}} \subset L^1(E)$ e $f \in L^1(E)$. Si dice che la successione $f_n$ converge a $f$ in $L^1(E)$ (o converge in norma $L^1$) se:
> $$
> f_n \xrightarrow{n \to +\infty} f \text{ in } L^1(E) \iff \|f_n - f\|_1 \xrightarrow{n \to +\infty} 0 \iff \int_E |f_n - f| \, d\mathbf{x} \xrightarrow{n \to +\infty} 0
> $$

> [!note] Mancata scambiabilità limite-integrale in generale
> In generale, per successioni di funzioni integrabili **non è lecito** scambiare l'operatore di limite con l'operatore di integrale:
> $$
> \lim_{n \to +\infty} \int_E f_n \, d\mathbf{x} \;\; \underset{}{\not=} \;\; \int_E \left( \lim_{n \to +\infty} f_n \right) d\mathbf{x}
> $$
> Inoltre, la convergenza quasi ovunque e la convergenza in norma $L^1$ sono concetti indipendenti:
> $$
> f_n \to f \text{ q.o. in } E \;\; \underset{\text{\tiny 1, 2}}{\centernot\iff} \;\; f_n \to f \text{ in } L^1(E)
> $$
>
### Controesempi: indipendenza tra convergenza q.o. e convergenza in $L^1$

> [!example] Controesempio 1: Convergenza q.o. che non implica convergenza in $L^1$ (Fuga all'infinito)
> Si consideri in $\mathbb{R}$ la successione di funzioni:
> $$
> f_n(x) = \chi_{[n, n+1]}(x) = \begin{cases}
> 1 & x \in [n, n+1] \\
> 0 & x \notin [n, n+1]
> \end{cases}
> $$
> - **Convergenza puntuale (e quindi q.o.):** Per ogni punto fissato $x_0 \in \mathbb{R}$, non appena $n > x_0$ l'intervallo $[n, n+1]$ non contiene più $x_0$. Dunque definitivamente per $n \to +\infty$:
>   $$
>   \chi_{[n, n+1]}(x_0) = 0 \implies f_n(x) \xrightarrow{n \to +\infty} f(x) \equiv 0 \quad \forall x \in \mathbb{R}
>   $$
> - **Norma $L^1$:** Calcolando l'integrale per ogni $n \in \mathbb{N}$:
>   $$
>   \|f_n - 0\|_1 = \int_{\mathbb{R}} |f_n(x)| \, dx = m([n, n+1]) = 1 \xrightarrow{n \to +\infty} 0
>   $$
> 
> La successione converge a $0$ puntualmente ovunque su $\mathbb{R}$, ma non converge a $0$ in $L^1(\mathbb{R})$, poiché la massa unitaria scappa all'infinito.

> [!example] Controesempio 2: Convergenza in $L^1$ che non implica convergenza q.o. (La macchina da scrivere / sliding bump)
> Esiste una successione $\{f_n\}_{n \in \mathbb{N}} \subset L^1([0, 1])$ tale che:
> $$
> \|f_n\|_1 \xrightarrow{n \to +\infty} 0 \quad \text{ma} \quad f_n \xrightarrow{n \to +\infty} 0 \text{ quasi ovunque in } [0, 1]
> $$
> 
> Si definisce la successione dividendo ripetutamente l'intervallo $[0, 1]$ in sottointervalli di lunghezza dimezzata ad ogni giro completo:
> - **Passo 0 ($m = 0$):**
>   $$
>   f_1(x) = \chi_{[0, 1]}(x)
>   $$
> - **Passo 1 ($m = 1$):**
>   $$
>   f_2(x) = \chi_{[0, 1/2]}(x), \qquad f_3(x) = \chi_{[1/2, 1]}(x)
>   $$
> - **Passo 2 ($m = 2$):**
>   $$
>   f_4(x) = \chi_{[0, 1/4]}(x), \qquad f_5(x) = \chi_{[1/4, 1/2]}(x), \qquad f_6(x) = \chi_{[1/2, 3/4]}(x), \qquad f_7(x) = \chi_{[3/4, 1]}(x)
>   $$
> In generale, al passo generico $m \in \mathbb{N}$, per $k = 0, 1, \dots, 2^m - 1$, la successione indicizzata da $n = 2^m + k$ è data da:
> $$
> f_n(x) = \chi_{I_{m, k}}(x) = \chi_{\left[ \frac{k}{2^m}, \frac{k+1}{2^m} \right]}(x)
> $$
> 
> **Calcolo della norma $L^1$:**
> L'integrale di ciascuna funzione corrisponde alla misura del rispettivo intervallino:
> $$
> \int_0^1 f_1(x) \, dx = 1
> \int_0^1 f_2(x) \, dx = \int_0^1 f_3(x) \, dx = \frac{1}{2}
> \int_0^1 f_k(x) \, dx = \frac{1}{4} \quad \forall k \in \{4, 5, 6, 7\}
> $$
> In generale, per la generica funzione del blocco $m$-esimo:
> $$
> \int_0^1 \chi_{\left[ \frac{k}{2^m}, \frac{k+1}{2^m} \right]}(x) \, dx = \frac{1}{2^m}
> $$
> Poiché per $n \to +\infty$ anche $m \to +\infty$, si ha:
> $$
> \lim_{n \to +\infty} \|f_n\|_1 = \lim_{m \to +\infty} \frac{1}{2^m} = 0
> $$
> Dunque $f_n \to 0$ in $L^1([0, 1])$.
> 
> **Mancata convergenza puntuale quasi ovunque:**
> Si fissi un qualunque punto $x_0 \in [0, 1]$. Ad ogni ciclo $m$-esimo, il punto $x_0$ appartiene ad almeno un intervallino $\left[ \frac{k}{2^m}, \frac{k+1}{2^m} \right]$ (in cui $f_n(x_0) = 1$) ed è esterno a tutti gli altri intervallini dello stesso ciclo (in cui $f_n(x_0) = 0$).
> Di conseguenza, per ogni $x_0 \in [0, 1]$ la successione numerica $\{f_n(x_0)\}_{n \in \mathbb{N}}$ continua indefinitamente a oscillare tra $0$ e $1$:
> $$
> \liminf_{n \to +\infty} f_n(x_0) = 0, \qquad \limsup_{n \to +\infty} f_n(x_0) = 1
> $$
> Ne consegue che non esiste $N > 0$ tale che $|f_n(x_0)| < \varepsilon$ per ogni $n \ge N$ con $\varepsilon < 1$. Pertanto:
> $$
> \nexists \lim_{n \to +\infty} f_n(x_0) \quad \forall x_0 \in [0, 1]
> $$
> La successione $f_n$ **non converge in alcun punto** di $[0, 1]$ (e a maggior ragione non converge quasi ovunque).
>
### Estrazione di sottosuccessioni convergenti quasi ovunque

> [!proposition] Convergenza quasi ovunque di una sottosuccessione estratta
> Siano $\{f_n\}_{n \in \mathbb{N}} \subset L^1(E)$ e $f \in \mathcal{L}^1(E)$ tali che:
> $$
> \|f_n - f\|_1 \xrightarrow{n \to +\infty} 0
> $$
> Allora esiste una sottosuccessione estratta $\{f_{n_k}\}_{k \in \mathbb{N}}$ tale che:
> $$
> f_{n_k} \xrightarrow{k \to +\infty} f \quad \text{q.o. in } E
> $$

> [!note] Unicità del candidato limite per la convergenza in $L^1$
> Una conseguenza fondamentale della proposizione precedente è che se una successione converge quasi ovunque a una funzione $f$, allora $f$ è **l'unico candidato limite** per la convergenza in norma $L^1$ (sebbene non sia garantito a priori che la convergenza in $L^1$ sussista effettivamente).
> In altri termini:
> $$
> \left( f_n \xrightarrow{n \to +\infty} f \text{ q.o. in } E \quad \land \quad \|f_n - g\|_1 \xrightarrow{n \to +\infty} 0 \right) \implies f = g \text{ q.o. in } E
> $$

> [!quote]- Dimostrazione
> Se $\|f_n - g\|_1 \to 0$ per $n \to +\infty$, per la proposizione precedente esiste una sottosuccessione $\{f_{n_k}\}_{k \in \mathbb{N}}$ tale che:
> $$
> f_{n_k} \xrightarrow{k \to +\infty} g \quad \text{q.o. in } E
> $$
> D'altra parte, per ipotesi l'intera successione $\{f_n\}_{n \in \mathbb{N}}$ converge quasi ovunque a $f$:
> $$
> f_n \xrightarrow{n \to +\infty} f \quad \text{q.o. in } E \implies f_{n_k} \xrightarrow{k \to +\infty} f \quad \text{q.o. in } E
> $$
> Per l'unicità del limite puntuale quasi ovunque delle successioni numeriche, si conclude necessariamente che:
> $$
> f = g \quad \text{q.o. in } E
> $$
> $\blacksquare$
>
### Studio della convergenza su successioni notevoli

> [!example] Successione di potenze $x^n$ su $[0, 1]$
> Si consideri la successione di funzioni:
> $$
> f_n(x) = x^n \quad \text{in } [0, 1]
> $$
> 
> - **Limite puntuale e quasi ovunque:**
>   Calcolando il limite puntuale per ogni $x \in [0, 1]$:
>   $$
>   f_n(x) \xrightarrow{n \to +\infty} f(x) = \begin{cases}
>   0 & x \in [0, 1) \\
>   1 & x = 1
>   \end{cases}
>   $$
>   Il limite puntuale esiste in ogni punto di $[0, 1]$. Poiché il singoletto $\{1\}$ ha misura nulla ($m(\{1\}) = 0$), la funzione limite coincide con la funzione identicamente nulla quasi ovunque:
>   $$
>   f(x) = 0 \quad \text{q.o. in } [0, 1]
>   $$
> 
> - **Convergenza uniforme:**
>   La funzione limite puntuale $f$ è discontinua in $x = 1$, mentre ciascuna $f_n$ è continua su $[0, 1]$. Pertanto:
>   $$
>   f_n \xrightarrow{n \to +\infty} f \quad \text{uniformemente in } [0, 1]
>   $$
> 
> - **Convergenza in $L^1([0, 1])$:**
>   Ci si domanda se $f_n \to 0$ in $L^1([0, 1])$:
>   $$
>   f_n \xrightarrow{?} 0 \quad \text{in } L^1([0, 1])
>   $$
>   Calcolando esplicitamente l'integrale in norma $L^1$:
>   $$
>   \int_0^1 |x^n|\,dx = \left[ \frac{x^{n+1}}{n+1} \right]_0^1 = \frac{1}{n+1} \xrightarrow{n \to +\infty} 0
>   $$
>   Segue che:
>   $$
>   \lim_{n \to +\infty} \|f_n - 0\|_1 = 0 \implies f_n \xrightarrow{n \to +\infty} 0 \quad \text{in } L^1([0, 1])
>   $$
>   Pertanto la successione $f_n$ converge a $0$ in $L^1([0, 1])$, sebbene non vi sia convergenza uniforme.
>
Si ricorda che nella teoria dell'integrazione secondo Riemann il passaggio al limite sotto il segno di integrale:
$$
\lim_{n \to +\infty} \int_a^b f_n(x)\,dx = \int_a^b \lim_{n \to +\infty} f_n(x)\,dx
$$
è garantito solo se le funzioni $\{f_n\}_{n \in \mathbb{N}}$ sono Riemann-integrabili e la successione converge ad $f$ **uniformemente**. Nella teoria dell'integrazione di Lebesgue, al contrario, teoremi molto più generali ed efficaci (Lebesgue, Beppo Levi, Fatou) garantiscono la validità del passaggio al limite sotto ipotesi notevolmente più deboli.

## 2.9. Teoremi di convergenza sotto il segno di integrale

### Teorema di convergenza dominata di Lebesgue

> [!theorem] Teorema di convergenza dominata (Lebesgue)
> Sia $E \subseteq \mathbb{R}^n$ un insieme misurabile, e per ogni $n \in \mathbb{N}$ sia $f_n: E \to \mathbb{R}$ una funzione misurabile tale che:
> $$
> f_n(\mathbf{x}) \xrightarrow{n \to +\infty} f(\mathbf{x}) \quad \text{q.o. in } E
> $$
> Supponiamo che esista una funzione $g \in L^1(E)$ (indipendente da $n$), detta **maggiorante integrabile** delle $f_n$, tale che:
> $$
> |f_n(\mathbf{x})| \le g(\mathbf{x}) \quad \text{q.o. in } E, \quad \forall n \in \mathbb{N}
> $$
> Allora $f_n, f \in L^1(E)$ e la successione converge ad $f$ in norma $L^1(E)$:
> $$
> f_n \xrightarrow{n \to +\infty} f \quad \text{in } L^1(E)
> $$
> ovvero vale lo scambio tra limite e integrale:
> $$
> \lim_{n \to +\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x} = \int_E \lim_{n \to +\infty} f_n(\mathbf{x})\,d\mathbf{x} = \int_E f(\mathbf{x})\,d\mathbf{x}
> $$

> [!example] Applicazione alla successione $x^n$ su $[0, 1]$
> Si consideri nuovamente $f_n(x) = x^n$ su $E = [0, 1]$.
> Poiché $0 \le x \le 1$, per ogni $n \in \mathbb{N}$ si ha:
> $$
> |f_n(x)| = x^n \le 1 =: g(x) \quad \forall x \in [0, 1]
> $$
> La funzione costante $g(x) = 1$ è integrabile sull'intervallo limitato $[0, 1]$:
> $$
> \int_0^1 g(x)\,dx = \int_0^1 1\,dx = 1 < +\infty \implies g \in L^1([0, 1])
> $$
> Dunque $g(x) = 1$ è un maggiorante integrabile per le $f_n$. Essendo $f_n(x) \xrightarrow{n \to +\infty} 0$ quasi ovunque in $[0, 1]$, per il Teorema di convergenza dominata si deduce immediatamente:
> $$
> f_n \xrightarrow{n \to +\infty} 0 \quad \text{in } L^1([0, 1])
> $$
> e quindi:
> $$
> \lim_{n \to +\infty} \int_0^1 x^n\,dx = \int_0^1 0\,dx = 0
> $$

> [!example] Controesempio alla convergenza dominata su domini di misura infinita
> Si consideri la successione di funzioni caratteristiche su $\mathbb{R}$:
> $$
> f_n(x) = \chi_{[n, n+1)}(x) = \begin{cases} 1 & x \in [n, n+1) \\ 0 & \text{altrove} \end{cases}
> $$
> - **Limite puntuale:** Fissato $x \in \mathbb{R}$, per ogni $n > x$ si ha $f_n(x) = 0$, da cui:
>   $$
>   f_n(x) \xrightarrow{n \to +\infty} 0 \quad \text{puntualmente ovunque in } \mathbb{R} \implies f_n \xrightarrow{n \to +\infty} 0 \quad \text{q.o. in } \mathbb{R}
>   $$
> - **Assenza di maggiorante integrabile:** Qualunque maggiorante $g$ tale che $|f_n(x)| \le g(x)$ per ogni $n \in \mathbb{N}$ deve necessariamente soddisfare $g(x) \ge 1$ su tutta la retta reale $\mathbb{R}$. Poiché ogni costante non nulla non è integrabile su un insieme di misura infinita ($|\mathbb{R}| = +\infty$):
>   $$
>   \int_\mathbb{R} g(x)\,dx \ge \int_\mathbb{R} 1\,dx = +\infty
>   $$
>   non esiste alcun maggiorante integrabile $g \in L^1(\mathbb{R})$.
> - **Verifica del fallimento del passaggio al limite:**
>   Calcolando la norma $L^1$ di $f_n$:
>   $$
>   \|f_n\|_1 = \int_\mathbb{R} \chi_{[n, n+1)}(x)\,dx = 1 \xrightarrow{n \to +\infty} 1
>   $$
>   mentre la norma del limite puntuale vale:
>   $$
>   \left\| \lim_{n \to +\infty} f_n \right\|_1 = \|0\|_1 = 0
>   $$
>   Ne segue che $\|f_n - 0\|_1 = 1 \not\to 0$, ossia $f_n$ non converge a $0$ in $L^1(\mathbb{R})$, e il limite non scambia con l'integrale:
>   $$
>   \lim_{n \to +\infty} \int_\mathbb{R} f_n(x)\,dx = 1 \ne 0 = \int_\mathbb{R} \lim_{n \to +\infty} f_n(x)\,dx
>   $$
>
### Teorema di Beppo Levi (convergenza monotona)

> [!theorem] Teorema di Beppo Levi di convergenza monotona
> Siano $\{f_n\}_{n \in \mathbb{N}}$ funzioni misurabili, $f_n: E \subseteq \mathbb{R}^n \to \mathbb{R}$.
> Supponiamo che:
> 1. $f_n(\mathbf{x}) \ge 0 \quad \text{q.o. in } E, \quad \forall n \in \mathbb{N}$ (non negatività);
> 2. $f_{n+1}(\mathbf{x}) \ge f_n(\mathbf{x}) \quad \text{q.o. in } E, \quad \forall n \in \mathbb{N}$ (monotonia crescente).
> 
> Allora:
> $$
> \lim_{n \to +\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x} = \int_E \lim_{n \to +\infty} f_n(\mathbf{x})\,d\mathbf{x}
> $$

> [!note] Osservazioni sulla convergenza monotona
> - La successione degli integrali:
>   $$
>   \int_E f_n(\mathbf{x})\,d\mathbf{x}
>   $$
>   è una successione monotona crescente di numeri reali (o estesi a $+\infty$) per le ipotesi di positività e monotonia delle $f_n$. Pertanto ammette sempre limite:
>   $$
>   \exists \lim_{n \to +\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x} \in [0, +\infty]
>   $$
> - Per quasi ogni $\mathbf{x} \in E$, la successione numerica $\{f_n(\mathbf{x})\}_{n \in \mathbb{N}}$ è anch'essa monotona crescente in $\mathbb{R}$, e dunque ammette sempre limite puntuale:
>   $$
>   \exists \lim_{n \to +\infty} f_n(\mathbf{x}) = f(\mathbf{x}) \quad \forall \mathbf{x} \in E \text{ q.o.}
>   $$

> [!corollary] Scambio di serie e integrale per funzioni non negative
> Siano $\{f_n\}_{n \in \mathbb{N}} \subset L^1(E)$ (o più in generale funzioni misurabili) con $f_n(\mathbf{x}) \ge 0$ q.o. in $E \subseteq \mathbb{R}^n$ misurabile.
> Allora vale l'uguaglianza:
> $$
> \int_E \sum_{n=0}^{+\infty} f_n(\mathbf{x})\,d\mathbf{x} = \sum_{n=0}^{+\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x}
> $$

 > [!quote]- Dimostrazione
 > Si consideri la successione delle somme parziali:
 > $$
> > S_n(\mathbf{x}) := \sum_{k=0}^n f_k(\mathbf{x})
> > $$
 > Poiché $f_k(\mathbf{x}) \ge 0$ q.o. per ogni $k \in \mathbb{N}$, la successione $S_n(\mathbf{x})$ è monotona crescente:
>  $$
> > S_{n+1}(\mathbf{x}) = S_n(\mathbf{x}) + f_{n+1}(\mathbf{x}) \ge S_n(\mathbf{x}) \quad \text{q.o. in } E
> > $$
 > ed è composta da funzioni misurabili e non negative. Applicando il teorema di Beppo Levi di convergenza monotona alla successione $\{S_n\}_{n \in \mathbb{N}}$:
> $$
> \begin{align}
> > \int_E \sum_{n=0}^{+\infty} f_n(\mathbf{x})\,d\mathbf{x} &= \int_E \lim_{n \to +\infty} S_n(\mathbf{x})\,d\mathbf{x} = \lim_{n \to +\infty} \int_E S_n(\mathbf{x})\,d\mathbf{x} \\
> > &= \lim_{n \to +\infty} \int_E \left( \sum_{k=0}^n f_k(\mathbf{x}) \right) d\mathbf{x} = \lim_{n \to +\infty} \sum_{k=0}^n \int_E f_k(\mathbf{x})\,d\mathbf{x} \\
> > &= \sum_{n=0}^{+\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x}
> > \end{align}
> > $$
 > $\blacksquare$

> [!example] Approssimazione di $1/\sqrt{x}$ mediante funzioni limitate
> Si consideri la successione su $[0, 1]$:
> $$
> f_n(x) = \min\left\{ n, \, \frac{1}{\sqrt{x}} \right\}, \quad x \in [0, 1]
> $$
> - $f_n(x) \ge 0$ per ogni $x \in [0, 1]$.
> - $f_{n+1}(x) \ge f_n(x)$ per ogni $n \in \mathbb{N}$.
> - $f_n(x) \xrightarrow{n \to +\infty} f(x) = \frac{1}{\sqrt{x}}$ puntualmente in $(0, 1]$ (e q.o. in $[0, 1]$).
> 
> Per il teorema di convergenza monotona di Beppo Levi:
> $$
> \int_0^1 f_n(x)\,dx \xrightarrow{n \to +\infty} \int_0^1 \frac{1}{\sqrt{x}}\,dx = \left[ 2\sqrt{x} \right]_0^1 = 2
> $$
> *Nota:* Essendo $f(x) = \frac{1}{\sqrt{x}} \in L^1([0, 1])$ e $|f_n(x)| \le \frac{1}{\sqrt{x}}$, il risultato segue anche direttamente dal Teorema di convergenza dominata assumendo $g(x) = \frac{1}{\sqrt{x}}$ come maggiorante integrabile.
>
### Lemma di Fatou

> [!lemma] Lemma di Fatou
> Sia $E \subseteq \mathbb{R}^n$ misurabile, e siano $f_n: E \to \mathbb{R}$ funzioni misurabili tali che $f_n(\mathbf{x}) \ge 0$ q.o. in $E$ per ogni $n \in \mathbb{N}$. Allora:
> $$
> \int_E \liminf_{n \to +\infty} f_n(\mathbf{x})\,d\mathbf{x} \le \liminf_{n \to +\infty} \int_E f_n(\mathbf{x})\,d\mathbf{x}
> $$

> [!note] Integrabilità non richiesta per Fatou
> Nel Lemma di Fatou non è richiesto che le funzioni $f_n$ siano integrabili, poiché la disuguaglianza sussiste nella retta estesa $[0, +\infty]$ e copre anche il caso $+\infty \le +\infty$.
>
## 2.10. Teoremi di Fubini e Tonelli

### Teorema di Fubini

> [!theorem] Teorema di Fubini
> Siano $I_1 \subseteq \mathbb{R}^m$, $I_2 \subseteq \mathbb{R}^n$ e sia $f \in L^1(I_1 \times I_2)$. Allora:
> 1. Per quasi ogni $\mathbf{x}_1 \in I_1$, la funzione parziale $\mathbf{x}_2 \longmapsto f(\mathbf{x}_1, \mathbf{x}_2)$ è Lebesgue-integrabile in $I_2$.
> 2. La funzione parzialmente integrata $\mathbf{x}_1 \longmapsto \int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2$ è Lebesgue-integrabile in $I_1$.
> 3. L'integrale multiplo coincide con l'integrale iterato:
>    $$
>    \int_{I_1 \times I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_1 d\mathbf{x}_2 = \int_{I_1} \left[ \int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2 \right] d\mathbf{x}_1
>    $$

> [!note] Inversione dell'ordine di integrazione
> Per simmetria, scambiando i ruoli di $I_1$ e $I_2$, vale chiaramente:
> $$
> \iint_{I_1 \times I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_1 d\mathbf{x}_2 = \int_{I_2} \left[ \int_{I_1} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_1 \right] d\mathbf{x}_2
> $$
>
### Teorema di Tonelli

> [!theorem] Teorema di Tonelli
> Siano $I_1 \subseteq \mathbb{R}^m$, $I_2 \subseteq \mathbb{R}^n$ insiemi misurabili e sia $f: I_1 \times I_2 \subseteq \mathbb{R}^{m+n} \to \mathbb{R}$ misurabile con $f(\mathbf{x}_1, \mathbf{x}_2) \ge 0$ q.o. in $I_1 \times I_2$. Allora:
> 1. Per quasi ogni $\mathbf{x}_1 \in I_1$, la funzione $\mathbf{x}_2 \longmapsto f(\mathbf{x}_1, \mathbf{x}_2)$ è misurabile e non negativa in $I_2$.
> 2. Per quasi ogni $\mathbf{x}_2 \in I_2$, la funzione $\mathbf{x}_1 \longmapsto \int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2$ è misurabile e non negativa in $I_1$ (l'integrale è ben definito, eventualmente $+\infty$).
> 3. Vale l'uguaglianza tra integrale multiplo e integrali iterati:
>    $$
>    \int_{I_1 \times I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x} = \int_{I_1} \left[ \int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2 \right] d\mathbf{x}_1 = \int_{I_2} \left[ \int_{I_1} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_1 \right] d\mathbf{x}_2
>    $$

> [!note] Esistenza finita dell'integrale multiplo
> Nelle ipotesi del teorema di Tonelli, se per quasi ogni $\mathbf{x}_1 \in I_1$ l'integrale $\int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2$ esiste finito, ed esiste finito l'integrale iterato:
> $$
> \int_{I_1} \left[ \int_{I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_2 \right] d\mathbf{x}_1 < +\infty
> $$
> allora l'integrale multiplo $\iint_{I_1 \times I_2} f(\mathbf{x}_1, \mathbf{x}_2)\,d\mathbf{x}_1 d\mathbf{x}_2$ esiste finito, e dunque $f \in L^1(I_1 \times I_2)$.

> [!note] Metodo operativo combinato Tonelli-Fubini
> Se $f: I_1 \times I_2 \subseteq \mathbb{R}^{m+n} \to \mathbb{R}$ è misurabile con $I_1, I_2$ misurabili e $f$ cambia segno:
> 1. Con il teorema di Tonelli si calcola $\iint_{I_1 \times I_2} |f|\,d\mathbf{x}_1 d\mathbf{x}_2$ tramite integrali iterati (essendo $|f| \ge 0$).
> 2. Se tale integrale è finito, allora $f \in L^1(I_1 \times I_2)$, e quindi con il teorema di Fubini si calcola l'integrale originario $\iint_{I_1 \times I_2} f\,d\mathbf{x}_1 d\mathbf{x}_2$ tramite integrali iterati.
>
## 2.11. Gli spazi $L^p$

### Spazi $\mathcal{L}^p(E)$ e quoziente $L^p(E)$

> [!definition] Spazio $\mathcal{L}^p(E)$
> Sia $p \in [1, +\infty)$, $E \subseteq \mathbb{R}^n$ misurabile. Si definisce lo spazio delle funzioni $p$-sommabili:
> $$
> \mathcal{L}^p(E) := \left\{ f: E \to \mathbb{R} \text{ misurabile} : \int_E |f(\mathbf{x})|^p \,d\mathbf{x} < +\infty \right\}
> $$

> [!definition] Spazio di Lebesgue $L^p(E)$
> Tramite la relazione di equivalenza del quasi ovunque:
> $$
> f \sim g \iff f(\mathbf{x}) = g(\mathbf{x}) \quad \text{q.o. in } E
> $$
> si definisce lo spazio $L^p(E)$ come lo spazio quoziente:
> $$
> L^p(E) := \mathcal{L}^p(E) / \sim
> $$
>
### Norma $L^p$ e completezza

> [!definition] Norma $p$ di una funzione $f \in L^p(E)$
> Siano $E \subseteq \mathbb{R}^n$ misurabile e $p \in [1, +\infty)$. Si definisce:
> $$
> \|f\|_p := \left( \int_E |f(\mathbf{x})|^p \,d\mathbf{x} \right)^{\frac{1}{p}}
> $$

> [!theorem] Teorema di Riesz-Fischer (Completezza di $L^p$)
> Sia $E \subseteq \mathbb{R}^n$ misurabile. Allora:
> $$
> (L^p(E), \, \|\cdot\|_p)
> $$
> è uno spazio di Banach per ogni $p \in [1, +\infty)$ (ossia è uno spazio vettoriale normato **completo**).

^559b85

> [!definition] Convergenza in $L^p$
> Date $\{f_n\}_{n \in \mathbb{N}} \subset L^p(E)$ e $f \in L^p(E)$, la convergenza in norma $L^p$ è definita da:
> $$
> f_n \xrightarrow{n \to +\infty} f \quad \text{in } L^p(E) \iff \|f_n - f\|_p \xrightarrow{n \to +\infty} 0 \iff \left[ \int_E |f_n - f|^p \,d\mathbf{x} \right]^{\frac{1}{p}} \xrightarrow{n \to +\infty} 0 \iff \int_E |f_n - f|^p \,d\mathbf{x} \xrightarrow{n \to +\infty} 0
> $$

> [!proposition] Estrazione di sottosuccessione convergente quasi ovunque
> Se $f_n \to f$ in $L^p(E)$, allora esiste una sottosuccessione estratta $\{f_{n_k}\}_{k \in \mathbb{N}} \subseteq \{f_n\}_{n \in \mathbb{N}}$ tale che:
> $$
> f_{n_k}(\mathbf{x}) \xrightarrow{k \to +\infty} f(\mathbf{x}) \quad \text{q.o. in } E
> $$
> In particolare, se $f_n \to f$ in $L^p(E)$ e $f_n \to g$ q.o. in $E$, allora per unicità del limite puntuale quasi ovunque:
> $$
> f(\mathbf{x}) = g(\mathbf{x}) \quad \text{q.o. in } E
> $$
>
### Lo spazio $L^\infty(E)$ ed estremo superiore essenziale

> [!definition] Norma dell'estremo superiore essenziale
> Sia $E \subseteq \mathbb{R}^n$ misurabile, $f: E \to \mathbb{R}$ misurabile. Si definisce la norma $L^\infty$:
> $$
> \|f\|_\infty := \mathrm{ess\,sup}_{\mathbf{x} \in E} |f(\mathbf{x})| := \min \left\{ M > 0 : |f(\mathbf{x})| \le M \quad \text{q.o. in } E \right\}
> $$
> Si definisce quindi:
> $$
> \mathcal{L}^\infty(E) := \left\{ f: E \to \mathbb{R} \text{ misurabile} : \|f\|_\infty < +\infty \right\}
> $$
> e lo spazio quoziente:
> $$
> L^\infty(E) := \mathcal{L}^\infty(E) / \sim
> $$

> [!example] Funzioni continue
> Se $f$ è continua su $E$, l'estremo superiore essenziale coincide con l'estremo superiore ordinario:
> $$
> \mathrm{ess\,sup} |f| = \sup |f|
> $$

> [!example] Funzione su $\mathbb{R}$ con discrepanza tra sup ed ess sup
> Si consideri la funzione $f: \mathbb{R} \to \mathbb{R}$ definita da:
> $$
> f(x) = \begin{cases} 0 & x \notin \mathbb{N} \\ x & x \in \mathbb{N} \end{cases}
> $$
> Poiché $\mathbb{N}$ ha misura di Lebesgue nulla ($|\mathbb{N}| = 0$), $f$ è identicamente nulla quasi ovunque. Pertanto:
> $$
> \mathrm{ess\,sup}_{x \in \mathbb{R}} f(x) = 0, \qquad \sup_{x \in \mathbb{R}} f(x) = +\infty
> $$

> [!theorem] Completezza di $L^\infty$
> Sia $E \subseteq \mathbb{R}^n$ misurabile. Allora $(L^\infty(E), \|\cdot\|_\infty)$ è uno spazio di Banach.

> [!definition] Convergenza in $L^\infty(E)$
> Siano $\{f_n\}_{n \in \mathbb{N}} \subset L^\infty(E)$, $f \in L^\infty(E)$. La convergenza in $L^\infty$ è:
> $$
> f_n \xrightarrow{n \to +\infty} f \quad \text{in } L^\infty(E) \iff \|f_n - f\|_\infty \xrightarrow{n \to +\infty} 0 \iff \mathrm{ess\,sup}_{\mathbf{x} \in E} |f_n(\mathbf{x}) - f(\mathbf{x})| \xrightarrow{n \to +\infty} 0
> $$
>
## 2.12. Confronto tra spazi $L^p$

> [!note] Assenza generale di inclusioni
> In generale, per $1 < p < q$ ed $E \subseteq \mathbb{R}^n$ insieme misurabile qualsiasi, **non** è vero che uno spazio è contenuto nell'altro:
> $$
> L^p(E) \not\subseteq L^q(E), \qquad L^p(E) \not\supseteq L^q(E)
> $$

> [!example] Controesempi su $E = [0, +\infty)$ per $L^1, L^2, L^\infty$
> Si considerino gli spazi $L^1([0, +\infty))$, $L^2([0, +\infty))$ e $L^\infty([0, +\infty))$:
> 
> 1. **Funzione costante:**
>    $$
>    f(x) = 1 \implies f \in L^\infty([0, +\infty)) \quad \text{ma} \quad f \notin L^1([0, +\infty)), \quad f \notin L^2([0, +\infty))
>    $$
> 
> 2. **Funzione con singolarità in $0$:**
>    $$
>    f(x) = \begin{cases} \dfrac{1}{\sqrt{x}} & x \in (0, 1] \\[1.5ex] 0 & x \in (1, +\infty) \end{cases}
>    $$
>    Si ha:
>    $$
>    \int_0^{+\infty} |f(x)|\,dx = \int_0^1 \frac{1}{\sqrt{x}}\,dx = 2 < +\infty \implies f \in L^1([0, +\infty))
>    $$
>    ma:
>    $$
>    \int_0^{+\infty} |f(x)|^2\,dx = \int_0^1 \frac{1}{x}\,dx = +\infty \implies f \notin L^2([0, +\infty))
>    $$
>    e poiché $\lim_{x \to 0^+} f(x) = +\infty$, si ha $f \notin L^\infty([0, +\infty))$.
> 
> 3. **Funzione a potenza frazionaria e decadimento all'infinito:**
>    $$
>    f(x) = \begin{cases} \dfrac{1}{\sqrt[4]{x}} & x \in (0, 1) \\[1.5ex] \dfrac{1}{x} & x \in [1, +\infty) \end{cases}
>    $$
>    Si calcolano gli integrali:
>    - In $L^2$:
>      $$
>      \int_0^{+\infty} |f(x)|^2\,dx = \int_0^1 \frac{1}{\sqrt{x}}\,dx + \int_1^{+\infty} \frac{1}{x^2}\,dx = 2 + 1 = 3 < +\infty \implies f \in L^2([0, +\infty))
>      $$
>    - In $L^1$:
>      $$
>      \int_0^{+\infty} |f(x)|\,dx = \int_0^1 \frac{1}{x^{1/4}}\,dx + \int_1^{+\infty} \frac{1}{x}\,dx = \frac{4}{3} + [\ln x]_1^{+\infty} = +\infty \implies f \notin L^1([0, +\infty))
>      $$
>    - In $L^\infty$:
>      $$
>      \lim_{x \to 0^+} f(x) = +\infty \implies f \notin L^\infty([0, +\infty))
>      $$
>
## 2.13. Disuguaglianze e inclusioni

### Disuguaglianza di Hölder

> [!theorem] Teorema (Disuguaglianza di Hölder)
> Sia $f \in L^p(E)$ e $g \in L^{p'}(E)$ con esponente coniugato $p' = \frac{p}{p-1}$, per $E \subseteq \mathbb{R}^n$ misurabile e $p \in [1, +\infty]$.
> Allora $fg \in L^1(E)$ e:
> $$
> \|fg\|_1 \le \|f\|_p \|g\|_{p'}
> $$
> L'esponente $p'$ è detto **esponente coniugato** di $p$, con la convenzione che $1$ e $\infty$ siano tra loro coniugati.

> [!note] Caratterizzazione dell'esponente coniugato
> - L'esponente $p'$ è caratterizzato dalla relazione:
>   $$
>   \frac{1}{p} + \frac{1}{p'} = 1
>   $$
>   La relazione è simmetrica: $(p')' = p$.
> - Per $p = 2 \implies p' = 2$ (Disuguaglianza di Cauchy-Schwarz).
> - Per $p \ge 2 \implies 1 \le p' \le 2$.
> - Se $p \in (1, +\infty)$, la disuguaglianza equivale a:
>   $$
>   \int_E |fg|\,d\mathbf{x} \le \left[ \int_E |f|^p \,d\mathbf{x} \right]^{\frac{1}{p}} \left[ \int_E |g|^{p'} \,d\mathbf{x} \right]^{\frac{1}{p'}}
>   $$
> - Se $p = 1$, $p' = \infty$, la disuguaglianza è immediata:
>   $$
>   \|fg\|_1 \le \|f\|_1 \|g\|_\infty = \left( \mathrm{ess\,sup}_{\mathbf{x} \in E} |g(\mathbf{x})| \right) \int_E |f(\mathbf{x})|\,d\mathbf{x} \implies \int_E |fg|\,d\mathbf{x} \le \int_E |f(\mathbf{x})| \cdot \mathrm{ess\,sup}_{\mathbf{y} \in E} |g(\mathbf{y})|\,d\mathbf{x}
>   $$
>
### Inclusioni su insiemi di misura finita

> [!theorem] Teorema di inclusione di spazi $L^p$
> Sia $E \subseteq \mathbb{R}^n$ misurabile con misura finita:
> $$
> |E| < +\infty
> $$
> Allora, se $1 \le p \le q \le \infty$, si ha:
> $$
> L^q(E) \subseteq L^p(E)
> $$
> e vale la stima di continuità:
> $$
> \|f\|_p \le |E|^{\frac{q-p}{qp}} \|f\|_q \quad \forall f \in L^q(E)
> $$

> [!quote]- Dimostrazione
> Sia $f \in L^q(E)$, con $q \in [1, +\infty]$. Se $1 \le p \le q < +\infty$, allora:
> $$
> \int_E |f|^p \,d\mathbf{x} = \int_E |f|^p \cdot 1 \,d\mathbf{x}
> $$
> Applichiamo la disuguaglianza di Hölder con esponenti:
> $$
> \frac{q}{p} \ge 1 \quad \text{e} \quad \left( \frac{q}{p} \right)' = \frac{\frac{q}{p}}{\frac{q}{p} - 1} = \frac{q}{q-p}
> $$
> Vale che $f \in L^q(E) \implies |f|^p \in L^{q/p}(E)$.
> Inoltre la funzione costante $1 \in L^{\frac{q}{q-p}}(E)$ poiché $|E| < +\infty$ e:
> $$
> \int_E 1 \,d\mathbf{x} = |E| < +\infty
> $$
> Applicando Hölder:
> $$
> \begin{align}
> \int_E |f|^p \,d\mathbf{x} &\le \left\| |f|^p \right\|_{\frac{q}{p}} \|1\|_{\frac{q}{q-p}} \\
> &= \left[ \int_E |f|^{p \cdot \frac{q}{p}} \,d\mathbf{x} \right]^{\frac{p}{q}} \left[ \int_E 1 \,d\mathbf{x} \right]^{\frac{q-p}{q}} \\
> &= \left[ \int_E |f|^q \,d\mathbf{x} \right]^{\frac{p}{q}} |E|^{\frac{q-p}{q}}
> \end{align}
> $$
> Elevando tutto alla potenza $\frac{1}{p}$:
> $$
> \|f\|_p \le \|f\|_q |E|^{\frac{q-p}{qp}}
> $$
> $\blacksquare$
>
### Teorema di interpolazione

> [!theorem] Teorema di interpolazione
> Sia $E \subseteq \mathbb{R}^n$ misurabile e sia $1 \le p \le q \le \infty$.
> Se $f \in L^p(E) \cap L^q(E)$, allora:
> $$
> f \in L^r(E) \quad \forall r \in [p, q]
> $$
> e vale:
> $$
> \|f\|_r \le \|f\|_p^\alpha \|f\|_q^{1-\alpha}
> $$
> con:
> $$
> \frac{1}{r} = \frac{\alpha}{p} + \frac{1-\alpha}{q} \iff \alpha = \frac{q-r}{r} \cdot \frac{p}{q-p}
> $$
>
## 2.14. Approssimazione mediante funzioni lisce

### Spazio $C_0^\infty(\Omega)$

> [!definition] Spazio $C_0^\infty(\Omega)$ a supporto compatto
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto. Si definisce:
> $$
> C_0^\infty(\Omega) := \left\{ \varphi: \Omega \to \mathbb{R} : \varphi \in C^\infty(\Omega) \text{ ed } \exists K \subset \Omega \text{ compatto tale che } \varphi(\mathbf{x}) = 0 \quad \forall \mathbf{x} \in \Omega \setminus K \right\}
> $$
> detto spazio delle funzioni $C^\infty$ a **supporto compatto** di $\Omega$.
> 
> Equivalentemente, data $\varphi: \Omega \to \mathbb{R}$, si definisce il **supporto**:
> $$
> \mathrm{supp} \varphi := \overline{\{ \mathbf{x} \in \Omega : \varphi(\mathbf{x}) \ne 0 \}} \quad (\text{chiusura in } \Omega)
> $$
> e:
> $$
> C_0^\infty(\Omega) := \left\{ \varphi: \Omega \to \mathbb{R} : \varphi \in C^\infty(\Omega) \text{ e } \mathrm{supp}\varphi \subset \Omega \text{ è compatto} \right\}
> $$
>
### Teorema di densità

> [!theorem] Densità di $C_0^\infty(\Omega)$ in $L^p(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto e $p \in [1, +\infty)$.
> Allora $C_0^\infty(\Omega)$ è denso in $L^p(\Omega)$, cioè:
> $$
> \overline{C_0^\infty(\Omega)}^{\|\cdot\|_p} = L^p(\Omega)
> $$

> [!note] Significato operativo della densità
> 1. $\forall f \in L^p(\Omega)$, $\forall \varepsilon > 0$, esiste $\varphi \in C_0^\infty(\Omega)$ tale che:
>    $$
>    \|f - \varphi\|_p = \left[ \int_\Omega |f - \varphi|^p \,d\mathbf{x} \right]^{\frac{1}{p}} < \varepsilon
>    $$
> 2. Esistono funzioni in $C_0^\infty(\Omega)$ arbitrariamente vicine ad $f$ rispetto alla norma $\|\cdot\|_p$. Equivalentemente:
>    $$
>    \forall f \in L^p(\Omega), \quad \exists \{\varphi_n\}_{n \in \mathbb{N}} \subset C_0^\infty(\Omega) : \|f - \varphi_n\|_p \xrightarrow{n \to +\infty} 0
>    $$
> 3. $C_0^\infty(\Omega)$ è denso in $L^p(\Omega)$ nello stesso senso in cui $\mathbb{Q}$ è denso in $\mathbb{R}$, cioè ogni elemento di $L^p(\Omega)$ è di accumulazione per $C_0^\infty(\Omega)$.

> [!note] Inclusione di $C_0^\infty(\Omega)$ in $L^p(\Omega)$
> Se $\varphi \in C_0^\infty(\Omega) \implies \varphi \in L^p(\Omega) \quad \forall p \in [1, +\infty]$.
> Infatti $\varphi \in C^0(\Omega)$ con supporto compatto, dunque per $L^\infty$:
> $$
> \|\varphi\|_\infty = \max_{\mathbf{x} \in \mathrm{supp}\varphi} |\varphi(\mathbf{x})| < +\infty
> $$
> e per ogni $p \in [1, +\infty)$, essendo il supporto di misura finita:
> $$
> \int_\Omega |\varphi|^p \,d\mathbf{x} \le \|\varphi\|_\infty^p |\mathrm{supp}\varphi| < +\infty \implies \varphi \in L^p(\Omega)
> $$

> [!warning] Mancanza di densità per $L^\infty$
> Il teorema di densità **NON** vale per $L^\infty$.
> Ad esempio, si consideri la funzione costante $f = 1$ in $\Omega$, con $f \in L^\infty(\Omega)$.
> Per ogni $\varphi \in C_0^\infty(\Omega)$, $\mathrm{supp}\varphi \subset \Omega$ è compatto. L'insieme complementare $\Omega \setminus \mathrm{supp}\varphi$ è aperto (aperto $\setminus$ chiuso $\rightsquigarrow$ aperto) e $|\Omega \setminus \mathrm{supp}\varphi| > 0$.
> Per ogni $\mathbf{x} \in \Omega \setminus \mathrm{supp}\varphi$ si ha $\varphi(\mathbf{x}) = 0$ e $f(\mathbf{x}) = 1$.
> Ne segue che:
> $$
> \|f - \varphi\|_\infty = 1 \quad \text{in } \Omega \setminus \mathrm{supp}\varphi
> $$
> e quindi:
> $$
> \|f - \varphi\|_\infty \ge 1
> $$
> perché $\Omega$ è più grande di $\Omega \setminus \mathrm{supp}\varphi$.
> Di conseguenza, non esistono funzioni $\varphi \in C_0^\infty(\Omega)$ arbitrariamente vicine ad $f$ (la distanza minima è $1$).
>
## 2.15. Prodotto di convoluzione

> [!note] Non integrabilità del prodotto ordinario in $L^1$
> Siano $f, g \in L^1(E)$. Non è vero in generale che $fg \in L^1(E)$ per $E \subseteq \mathbb{R}^n$ misurabile.
> Un controesempio è dato da:
> $$
> f(x) = g(x) = \frac{1}{\sqrt{x}} \quad \text{in } (0, 1) \implies fg(x) = \frac{1}{x} \notin L^1((0, 1))
> $$
> È quindi necessaria una nuova definizione di "prodotto di funzioni" che mantenga l'integrabilità.
>

> [!definition] Prodotto di convoluzione
> Siano $f, g \in L^1(\mathbb{R}^n)$. Si definisce:
> $$
> (f * g)(\mathbf{x}) := \int_{\mathbb{R}^n} f(\mathbf{x} - \mathbf{y}) g(\mathbf{y}) \,d\mathbf{y}
> $$
> detto **prodotto di convoluzione** di $f$ e $g$.
> Esso rappresenta una sorta di "media pesata" dei valori di $f$ pesati da $g$.
>

> [!proposition] Proprietà della convoluzione in $L^1$
> Siano $f, g \in L^1(\mathbb{R}^n)$. Allora:
> 1. $(f * g)(\mathbf{x})$ esiste per quasi ogni $\mathbf{x} \in \mathbb{R}^n$.
> 2. $f * g \in L^1(\mathbb{R}^n)$.
> 3. Vale la stima:
>    $$
>    \|f * g\|_1 \le \|f\|_1 \|g\|_1
>    $$
> 4. Commutatività:
>    $$
>    f * g = g * f
>    $$
> 5. Se $\mathrm{supp} f$ e $\mathrm{supp} g$ sono compatti, allora $\mathrm{supp}(f * g)$ è un compatto.

> [!quote]- Dimostrazione (per $n = 1$)
> Si consideri la funzione ausiliaria:
> $$
> h(x, y) := f(x - y) g(y)
> $$
> Non sappiamo a priori se $h \in L^1(\mathbb{R}^2)$.
> Utilizziamo il teorema di Tonelli considerando:
> $$
> |h(x, y)| = |f(x - y)| |g(y)|
> $$
> Essendo $h$ positiva e misurabile:
> $$
> \int_\mathbb{R} |f(x - y)| |g(y)| \, dx = |g(y)| \int_\mathbb{R} |f(x - y)| \, dx
> $$
> Effettuando il cambio di variabile $t := x - y$ (per cui $dt = dx$):
> $$
> = |g(y)| \int_\mathbb{R} |f(t)| \, dt = \|f\|_1 |g(y)| < +\infty \quad \text{per q.o. } y \in \mathbb{R}
> $$
> Integrando ora rispetto alla variabile $y \in \mathbb{R}$:
> $$
> \int_\mathbb{R} \|f\|_1 |g(y)| \, dy = \|f\|_1 \int_\mathbb{R} |g(y)| \, dy = \|f\|_1 \|g\|_1 < +\infty
> $$
> Per il teorema di Tonelli, la funzione $h(x, y) = f(x - y) g(y)$ è sommabile su $\mathbb{R}^2$:
> $$
> \iint_{\mathbb{R}^2} |h(x, y)| \, dx \, dy = \|f\|_1 \|g\|_1 < +\infty \tag{$*$}
> $$
> Dunque $h \in L^1(\mathbb{R}^2)$. Possiamo allora applicare il teorema di Fubini: la funzione
> $$
> x \mapsto \int_\mathbb{R} f(x - y) g(y) \, dy
> $$
> esiste ed è finita per quasi ogni $x \in \mathbb{R}$, ed è misurabile con $(f * g) \in L^1(\mathbb{R})$.
> Pertanto le proprietà **(1)** e **(2)** sono verificate.
> 
> Inoltre, dalla relazione ($*$) si ha:
> $$
> \|h\|_{L^1(\mathbb{R}^2)} = \|f\|_{L^1(\mathbb{R})} \|g\|_{L^1(\mathbb{R})}
> $$
> da cui, applicando la disuguaglianza triangolare sotto il segno di integrale:
> $$
> \begin{align*}
> \|f * g\|_{L^1(\mathbb{R})} &= \int_\mathbb{R} |(f * g)(x)| \, dx \\
> &= \int_\mathbb{R} \left| \int_\mathbb{R} h(x, y) \, dy \right| dx \\
> &\le \int_\mathbb{R} \left( \int_\mathbb{R} |h(x, y)| \, dy \right) dx \\
> &= \iint_{\mathbb{R}^2} |h(x, y)| \, dy \, dx \\
> &= \|h\|_{L^1(\mathbb{R}^2)} \\
> &= \|f\|_{L^1(\mathbb{R})} \|g\|_{L^1(\mathbb{R})}
> \end{align*}
> $$
> Ne consegue la stima:
> $$
> \|f * g\|_1 \le \|f\|_1 \|g\|_1 \tag{3}
> $$
> Infine, la proprietà **(4)** (commutatività $f * g = g * f$) segue da una banale sostituzione di variabile $t := x - y$. $\blacksquare$
>


> [!theorem] Disuguaglianza di Young per la convoluzione
> Siano $f \in L^p(\mathbb{R}^n)$ e $g \in L^1(\mathbb{R}^n)$, con $1 \le p \le +\infty$. Allora:
> $$
> f * g \in L^p(\mathbb{R}^n) \quad \text{e} \quad \|f * g\|_p \le \|f\|_p \|g\|_1
> $$
>

> [!proposition] Regolarità della convoluzione
> Siano $f, g \in L^1(\mathbb{R}^n)$, con $f \in C^k(\mathbb{R}^n)$ e le cui derivate parziali fino all'ordine $k$ soddisfano $f^{(i)} \in L^1(\mathbb{R}^n)$ per ogni $i = 1, \dots, k$, dove $k \in \mathbb{N} \cup \{+\infty\}$. Allora:
> 1. $f * g \in C^k(\mathbb{R}^n)$
> 2. Per ogni multi-indice $\boldsymbol{\alpha}$ di lunghezza $|\alpha| \le k$ vale:
>    $$
>    D^{\boldsymbol{\alpha}}(f * g) = (D^{\boldsymbol{\alpha}} f) * g
>    $$
>

> [!quote]- Dimostrazione (Teorema di densità di $C_0^\infty(\mathbb{R})$ in $L^1(\mathbb{R})$)
> Si consideri il caso $\Omega = \mathbb{R}$ e $p = 1$.
> Vogliamo mostrare che, fissata $f \in L^1(\mathbb{R})$ e dato $\varepsilon > 0$, esiste $\varphi \in C_0^\infty(\mathbb{R})$ tale che:
> $$
> \|f - \varphi\|_1 < \varepsilon
> $$
> **Passo 1: Approssimazione con funzioni a supporto compatto.**
> Come si trova $\varphi$? Si osservi che per ogni $k \in \mathbb{N}$ possiamo definire la funzione troncata:
> $$
> f_k(x) := f(x) \chi_{[-k, k]}(x) \in L^1(\mathbb{R})
> $$
> Essa appartiene ad $L^1(\mathbb{R})$ poiché:
> $$
> \|f_k\|_1 = \int_{[-k, k]} |f(x)| \, dx \le \int_\mathbb{R} |f(x)| \, dx = \|f\|_1 < +\infty
> $$
> Inoltre $\mathrm{supp} f_k \subseteq [-k, k]$, che è un insieme compatto (essendo il supporto chiuso per definizione).
> Si ha inoltre la maggiorazione uniforme:
> $$
> |f_k(x)| \le |f(x)| \quad \text{per q.o. } x \in \mathbb{R}
> $$
> e la convergenza puntuale quasi ovunque:
> $$
> \lim_{k \to +\infty} f_k(x) = f(x) \quad \text{per q.o. } x \in \mathbb{R}
> $$
> Valgono pertanto tutte le ipotesi del teorema di convergenza dominata di Lebesgue. Ne segue che $f_k \to f$ in $L^1(\mathbb{R})$, ossia:
> $$
> \|f_k - f\|_1 \xrightarrow{k \to +\infty} 0
> $$
> Per la definizione di limite, in corrispondenza di $\frac{\varepsilon}{2} > 0$ esiste un indice $K > 0$ tale che:
> $$
> \|f_K - f\|_1 < \frac{\varepsilon}{2}
> $$
> Fissiamo d'ora in avanti tale $K \in \mathbb{N}$.
> 
> **Passo 2: Regolarizzazione mediante mollificatori (nucleo di convoluzione).**
> La funzione $f_K \in L^1(\mathbb{R})$ è a supporto compatto. Consideriamo ora la successione:
> $$
> \varphi_n(x) := (f_K * \rho_n)(x) = \int_\mathbb{R} \rho_n(x - y) f_K(y) \, dy
> $$
> dove $\{\rho_n\}_{n \in \mathbb{N}}$ è una successione di **mollificatori**, definiti da:
> $$
> \rho_n(x) := n \rho(nx)
> $$
> a partire da una funzione $\rho \in C_0^\infty(\mathbb{R})$, detta **nucleo di convoluzione**, avente le seguenti proprietà:
> $$
> \rho \ge 0, \quad \mathrm{supp}\rho \subseteq [-1, 1], \quad \int_\mathbb{R} \rho(x) \, dx = 1
> $$
> Dalle proprietà di $\rho$ discende che per ogni $n \in \mathbb{N}$:
> - $\rho_n \in C_0^\infty(\mathbb{R})$;
> - $\rho_n \ge 0$;
> - $\mathrm{supp}\rho_n \subseteq \left[ -\frac{1}{n}, \frac{1}{n} \right]$;
> - $\int_\mathbb{R} \rho_n(x) \, dx = 1$.
> 
> *(Al divergere di $n \to +\infty$, le funzioni $\rho_n$ si concentrano progressivamente attorno all'origine, comportandosi al limite come la delta di Dirac $\delta$).*
> 
> Dalle proprietà generali del prodotto di convoluzione segue che:
> - $f_K * \rho_n \in C^\infty(\mathbb{R})$;
> - $\mathrm{supp}(f_K * \rho_n) \subseteq \mathrm{supp} f_K + \mathrm{supp}\rho_n$ è compatto (somma di due compatti).
> 
> Dunque $f_K * \rho_n \in C_0^\infty(\mathbb{R})$.
> 
> **Passo 3: Convergenza in norma $L^1$ e conclusione.**
> Si dimostra inoltre che:
> $$
> f_K * \rho_n \xrightarrow{n \to +\infty} f_K \quad \text{in } L^1(\mathbb{R})
> $$
> (la dimostrazione richiede alcuni passaggi integrali sfruttando la continuità in media delle traslazioni in $L^1$).
> Quindi:
> $$
> f_K * \rho_n \in C_0^\infty(\mathbb{R}) \quad \text{e} \quad \|f_K * \rho_n - f_K\|_1 \xrightarrow{n \to +\infty} 0
> $$
> Per la definizione di limite, in corrispondenza di $\frac{\varepsilon}{2} > 0$ esiste un indice $N > 0$ tale che:
> $$
> \|f_K * \rho_N - f_K\|_1 < \frac{\varepsilon}{2}
> $$
> Poniamo allora:
> $$
> \varphi := f_K * \rho_N \in C_0^\infty(\mathbb{R})
> $$
> Applicando la disuguaglianza triangolare della norma $L^1$:
> $$
> \|f - \varphi\|_1 \le \|f - f_K\|_1 + \|f_K - \varphi\|_1 < \frac{\varepsilon}{2} + \frac{\varepsilon}{2} = \varepsilon
> $$
> Abbiamo così trovato una funzione test liscia a supporto compatto $\varphi \in C_0^\infty(\mathbb{R})$ arbitrariamente vicina ad $f$ in norma $L^1$. $\blacksquare$
>
## 2.16. Funzioni assolutamente continue

### Teorema di differenziazione nell'integrale di Lebesgue

> [!theorem] Teorema di differenziazione nell'integrale di Lebesgue
> Sia $f \in L^1([a, b])$. Allora la funzione integrale $F : [a, b] \to \mathbb{R}$ definita da:
> $$
> F(x) := \int_a^x f(t) \, dt
> $$
> soddisfa le seguenti proprietà:
> 1. $F$ è **continua** in $[a, b]$;
> 2. $F$ è **derivabile quasi ovunque** in $(a, b)$;
> 3. La derivata coincide puntualmente quasi ovunque con l'integranda:
>    $$
>    F'(x) = f(x) \quad \text{per q.o. } x \in [a, b]
>    $$

> [!example] Esempio
> Sia $[a, b] = [-1, 1]$ e consideriamo la funzione segno:
> $$
> f(x) = \mathrm{sgn}(x) = \begin{cases} 
> 1 & \text{se } x > 0 \\ 
> 0 & \text{se } x = 0 \\ 
> -1 & \text{se } x < 0 
> \end{cases}
> $$
> Chiaramente $f \in L^1([-1, 1])$. La sua funzione integrale con punto iniziale $0$ è data da:
> $$
> F(x) = \int_0^x \mathrm{sgn}(t) \, dt = |x| \in C^0([-1, 1])
> $$
> La funzione valore assoluto è continua su tutto $[-1, 1]$, è derivabile per ogni $x \ne 0$ e soddisfa:
> $$
> F'(x) = \mathrm{sgn}(x) \quad \text{per q.o. } x \in [-1, 1] \quad (x \ne 0)
> $$
>
### Definizione di funzione assolutamente continua

> [!definition] Funzione assolutamente continua ($AC$)
> Si dice che una funzione $F : [a, b] \to \mathbb{R}$ è **assolutamente continua** in $[a, b]$ se esiste una funzione sommabile $f \in L^1([a, b])$ tale che:
> $$
> F(x) = \int_a^x f(t) \, dt + c, \quad c \in \mathbb{R}
> $$
> per ogni $x \in [a, b]$. Inoltre si ha $F'(x) = f(x)$ per quasi ogni $x \in [a, b]$.
> Lo spazio delle funzioni assolutamente continue su $[a, b]$ viene indicato con $AC([a, b])$.

> [!note] Proprietà fondamentali di $AC([a, b])$
> - $AC([a, b])$ è uno **spazio vettoriale** reale (per la linearità dell'operatore di derivazione e dell'integrale).
> - Se $F \in AC([a, b])$, allora vale il **teorema di valutazione** (formula fondamentale del calcolo integrale):
>   $$
>   F(b) - F(a) = \int_a^b f(t) \, dt = \int_a^b F'(t) \, dt
>   $$
> - Se $F \in AC([a, b])$ e $F'(x) = 0$ per quasi ogni $x \in [a, b]$, allora $F$ è **costante** in $[a, b]$.
> - L'assoluta continuità è una proprietà strettamente più forte della continuità semplice:
>   $$
>   F \in AC([a, b]) \implies F \in C^0([a, b])
>   $$
>   Il viceversa non sussiste: esistono funzioni continue con derivata nulla quasi ovunque che non sono costanti.

> [!example] Esempio (La "scala del diavolo" / Funzione di Cantor)
> È possibile costruire una funzione $f \in C^0([0, 1])$ che sia derivabile quasi ovunque in $(0, 1)$ con $f'(x) = 0$, ma che risulti monotòna strettamente crescente su $[0, 1]$, con $f(0) = 0$ ed $f(1) = 1$.
> Una tale funzione **non** appartiene ad $AC([0, 1])$ (se vi appartenesse, avendo derivata nulla quasi ovunque, dovrebbe essere costante per il teorema di valutazione, contraddicendo $f(1) - f(0) = 1$).
>
> **Costruzione di $f$:**
> Sia $f_0(x) = x$ per $x \in [0, 1]$. Si costruisce per ricorrenza una successione di funzioni continue $\{f_n\}_{n \in \mathbb{N}}$ imponendo che $f_{n+1}(x) = f_n(x)$ negli intervalli in cui $f_n$ è già costante. Negli intervalli $[a, b]$ in cui $f_n$ non è costante, si definisce $f_{n+1}$ nel terzo centrale ponendo:
> $$
> f_{n+1}(x) = \frac{f_n(a) + f_n(b)}{2} \quad \forall x \in \left[ a + \frac{b - a}{3}, \; b - \frac{b - a}{3} \right]
> $$
> e raccordando linearmente gli estremi rimanenti.
> Si dimostra che la successione $\{f_n\}_{n \in \mathbb{N}}$ è una successione di Cauchy rispetto alla norma del sup $\|\cdot\|_\infty$. Poiché $f_n \in C^0([0, 1])$ per ogni $n$ e lo spazio $(C^0([0, 1]), \|\cdot\|_\infty)$ è uno spazio di Banach completo, esiste una funzione limite $f \in C^0([0, 1])$ tale che:
> $$
> \|f_n - f\|_\infty \xrightarrow{n \to +\infty} 0
> $$
> Si nota che $f$ è costante su $[0, 1] \setminus \mathcal{C}$, dove $\mathcal{C}$ è l'insieme ternario di Cantor, ottenuto rimuovendo iterativamente i terzi medi. Poiché la misura di Lebesgue dell'insieme di Cantor è nulla ($|\mathcal{C}| = 0$), ne discende che:
> $$
> f'(x) = 0 \quad \text{per q.o. } x \in [0, 1]
> $$
> ma la funzione $f$ è monotòna crescente da $0$ a $1$.
>
### Caratterizzazione $\varepsilon$-$\delta$ delle funzioni assolutamente continue

> [!proposition] Caratterizzazione metrica di $AC([a, b])$
> Una funzione $F : [a, b] \to \mathbb{R}$ è assolutamente continua ($F \in AC([a, b])$) se e solo se:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \; \forall J \subseteq \mathbb{N}, \; \forall \{I_n\}_{n \in J} \text{ famiglia di intervalli disgiunti } I_n := [x_n, y_n] \subset [a, b] \text{ con } I_n \cap I_m = \varnothing \; (\forall n \ne m),
> $$
> vale l'implicazione:
> $$
> \sum_{n \in J} |y_n - x_n| < \delta \implies \sum_{n \in J} |F(y_n) - F(x_n)| < \varepsilon
> $$

> [!note] Osservazioni e conseguenze
> - **Caso di un singolo intervallo ($|J| = 1$):**
>   Se si considera la condizione per un solo intervallo ($n = 1$), si ha:
>   $$
>   \forall \varepsilon > 0, \; \exists \delta > 0 : |y_1 - x_1| < \delta \implies |F(y_1) - F(x_1)| < \varepsilon
>   $$
>   cioè $F$ è uniformemente continua in $[a, b]$. Si ottiene dunque la catena fondamentale di implicazioni:
>   $$
>   \text{Assolutamente continua} \implies \text{Uniformemente continua} \implies \text{Continua}
>   $$
> - **Chiusura rispetto al prodotto:**
>   Se $F, G \in AC([a, b])$, allora anche il loro prodotto appartiene ad $AC$:
>   $$
>   F, G \in AC([a, b]) \implies FG \in AC([a, b])
>   $$
>
### Teorema di integrazione per parti

> [!theorem] Integrazione per parti in $AC([a, b])$
> Siano $F, G \in AC([a, b])$. Allora:
> $$
> \int_a^b F'(x) G(x) \, dx = [F(x) G(x)]_a^b - \int_a^b F(x) G'(x) \, dx
> $$

> [!quote]- Dimostrazione
> Poiché $F, G \in AC([a, b])$, per la proprietà precedente il loro prodotto $FG \in AC([a, b])$.
> Inoltre, per definizione di assoluta continuità:
> $$
> \exists A_1, A_2 \subseteq [a, b] \text{ con } |A_1| = |A_2| = 0
> $$
> tali che:
> - esiste $F'(x)$ finito per ogni $x \in [a, b] \setminus A_1$;
> - esiste $G'(x)$ finito per ogni $x \in [a, b] \setminus A_2$;
> con $F', G' \in L^1([a, b])$.
> Ponendo $A := A_1 \cup A_2$, si ha $|A| \le |A_1| + |A_2| = 0 \implies |A| = 0$.
> Allora per ogni $x \in [a, b] \setminus A$, applicando la regola classica di derivazione del prodotto:
> $$
> (FG)'(x) = F'(x) G(x) + G'(x) F(x)
> $$
> Verifichiamo che $(FG)' \in L^1([a, b])$. Infatti, poiché $F', G' \in L^1([a, b])$ e $F, G \in C^0([a, b]) \subset L^\infty([a, b])$, per la disuguaglianza di Hölder:
> $$
> F' G \in L^1([a, b]) \quad \text{e} \quad G' F \in L^1([a, b])
> $$
> Dunque $(FG)'$ è sommabile su $[a, b]$.
> Infine, poiché $FG \in AC([a, b])$, possiamo applicare il teorema di valutazione:
> $$
> FG(x) = \int_a^x (FG)'(t) \, dt + c
> $$
> da cui segue:
> $$
> [FG]_a^b = \int_a^b (FG)'(t) \, dt = \int_a^b \Big( F'(t) G(t) + G'(t) F(t) \Big) \, dt = \int_a^b F'(t) G(t) \, dt + \int_a^b G'(t) F(t) \, dt
> $$
> Sottraendo $\int_a^b F G' \, dt$ da ambo i membri, si ottiene:
> $$
> \int_a^b F'(t) G(t) \, dt = [FG]_a^b - \int_a^b F(t) G'(t) \, dt
> $$
> che conclude la dimostrazione. $\blacksquare$

> [!note] Regolarità minima per il calcolo differenziale
> L'assoluta continuità rappresenta la **regolarità minima** da richiedere affinché valgano il teorema di valutazione (formula fondamentale del calcolo) e la formula di integrazione per parti in forma classica con derivate puntuali quasi ovunque.

> [!note] Gerarchia degli spazi di funzioni su $[a, b]$ compatto
> Vale la seguente scala gerarchica di inclusioni su $[a, b]$:
> $$
> C^1([a, b]) \implies \mathrm{Lip}([a, b]) \implies AC([a, b]) \implies C_u([a, b]) \iff C^0([a, b])
> $$
>
## 2.17. Integrali dipendenti da un parametro

Sia $u : I \to \mathbb{R}$ definita da:
$$
u(x) := \int_\Omega K(x, \mathbf{y}) \, d\mathbf{y}
$$
dove $x \in I \subseteq \mathbb{R}$ è un intervallo, $\mathbf{y} \in \Omega \subseteq \mathbb{R}^n$ è un insieme misurabile, e $K : I \times \Omega \to \mathbb{R}$ è una funzione misurabile.
Grazie al teorema di convergenza dominata di Lebesgue si dimostrano i seguenti teoremi di regolarità:

> [!proposition] Continuità sotto il segno di integrale
> Nelle ipotesi precedenti, fissato un punto interno $x_0 \in \mathring{I}$, si assuma che:
> 1. La funzione parziale $x \mapsto K(x, \mathbf{y})$ sia **continua** in $x_0$ per quasi ogni $\mathbf{y} \in \Omega$;
> 2. Esista una funzione dominante $g \in L^1(\Omega)$ tale che:
>    $$
>    |K(x, \mathbf{y})| \le g(\mathbf{y}) \quad \text{per q.o. } \mathbf{y} \in \Omega, \; \forall x \in I
>    $$
> Allora la funzione $u$ è **continua** in $x_0$.

> [!proposition] Derivazione sotto il segno di integrale (Regola di Leibniz)
> Nelle ipotesi precedenti, sia $x_0 \in \mathring{I}$. Si assuma che:
> 1. Per quasi ogni $\mathbf{y} \in \Omega$, la funzione $x \mapsto K(x, \mathbf{y})$ ammetta derivata parziale $\frac{\partial K}{\partial x}(x, \mathbf{y})$ per ogni $x \in (x_0 - \delta, x_0 + \delta) \subseteq I$, per qualche raggio $\delta > 0$;
> 2. Esista una funzione dominante $g \in L^1(\Omega)$ tale che:
>    $$
>    \left| \frac{\partial K}{\partial x}(x, \mathbf{y}) \right| \le g(\mathbf{y}) \quad \text{per q.o. } \mathbf{y} \in \Omega, \; \forall x \in (x_0 - \delta, x_0 + \delta)
>    $$
> Allora la funzione integrale $u$ è **derivabile** in $x_0$, ed è lecito scambiare la derivata con l'integrale:
> $$
> u'(x_0) = \int_\Omega \frac{\partial K}{\partial x}(x_0, \mathbf{y}) \, d\mathbf{y}
> $$
>
## 2.18. Operatori lineari tra spazi normati

### Definizione di operatore lineare

> [!definition] Operatore lineare
> Siano $V, W$ due spazi vettoriali sul campo reale $\mathbb{R}$.
> Un **operatore lineare** è un'applicazione $L : V \to W$ che preserva le operazioni di spazio vettoriale:
> $$
> L(\alpha \mathbf{v} + \beta \mathbf{w}) = \alpha L(\mathbf{v}) + \beta L(\mathbf{w}) \quad \forall \alpha, \beta \in \mathbb{R}, \; \forall \mathbf{v}, \mathbf{w} \in V
> $$

> [!example] Esempi
> - **Operatore matriciale in dimensione finita:**
>   Siano $V = \mathbb{R}^n$, $W = \mathbb{R}^m$, e sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$. L'applicazione:
>   $$
>   L(\mathbf{x}) := A\mathbf{x}
>   $$
>   è un operatore lineare tra spazi euclidei.
> - **Funzionale di valutazione puntuale:**
>   Siano $V = C^0([a, b])$, $W = \mathbb{R}$, e sia $x_0 \in [a, b]$ un punto fissato. L'applicazione:
>   $$
>   L(f) := f(x_0)
>   $$
>   è un operatore lineare (funzionale), poiché:
>   $$
>   L(\alpha f + \beta g) = (\alpha f + \beta g)(x_0) = \alpha f(x_0) + \beta g(x_0)
>   $$
>   *Attenzione:* Tale applicazione **non** è un operatore lineare ben definito su $V = L^p([a, b])$, poiché gli elementi di $L^p$ non sono funzioni puntuali ma classi di equivalenza identificate quasi ovunque, e il punto singolo $\{x_0\}$ ha misura di Lebesgue nulla.
> - **Funzionale integrale:**
>   Siano $V = L^1([a, b])$ e $W = \mathbb{R}$. L'applicazione:
>   $$
>   L(f) := \int_a^b f(x) \, dx
>   $$
>   è lineare per la linearità dell'integrale di Lebesgue.
> - **Operatore differenziale:**
>   Siano $V = C^1([a, b])$ e $W = C^0([a, b])$. L'applicazione:
>   $$
>   L(f) := f'
>   $$
>   è lineare per la linearità dell'operazione di derivazione.

> [!note] Proprietà elementari
> Come noto dall'algebra lineare, per ogni operatore lineare vale:
> $$
> L(\mathbf{0}_V) = \mathbf{0}_W
> $$
>
### Continuità di operatori lineari

> [!definition] Operatore lineare continuo
> Siano $(V, \|\cdot\|_V)$ e $(W, \|\cdot\|_W)$ due spazi vettoriali normati.
> Un operatore lineare $L : V \to W$ si dice **continuo** se è continuo in ogni punto $\mathbf{v} \in V$, ossia se per ogni successione $\{\mathbf{v}_n\}_{n \in \mathbb{N}} \subset V$ si ha:
> $$
> \lim_{n \to +\infty} \mathbf{v}_n = \mathbf{v} \in V \implies \lim_{n \to +\infty} L(\mathbf{v}_n) = L(\mathbf{v}) \in W
> $$
> *Notazione:* Scriveremo spesso $L : (V, \|\cdot\|_V) \to (W, \|\cdot\|_W)$ per indicare esplicitamente le norme scelte sui due spazi.

> [!theorem] Caratterizzazione della continuità nell'origine
> Siano $(V, \|\cdot\|_V)$ e $(W, \|\cdot\|_W)$ spazi normati e sia $L : V \to W$ un operatore lineare. Allora:
> $$
> L \text{ è continuo in tutto } V \iff L \text{ è continuo in } \mathbf{0}_V
> $$

> [!quote]- Dimostrazione
> $(\implies)$ L'implicazione è ovvia: se $L$ è continuo in ogni punto di $V$, è in particolare continuo in $\mathbf{0}_V$.
> 
> $(\impliedby)$ Supponiamo che $L$ sia continuo in $\mathbf{0}_V$. Sia $\mathbf{v} \in V$ e sia $\{\mathbf{v}_n\}_{n \in \mathbb{N}} \subset V$ una generica successione tale che:
> $$
> \mathbf{v}_n \xrightarrow{n \to +\infty} \mathbf{v} \quad \text{in } V
> $$
> Vogliamo mostrare che $L(\mathbf{v}_n) \to L(\mathbf{v})$ in $W$.
> Poiché $\mathbf{v}_n \to \mathbf{v}$, si ha che $\mathbf{v}_n - \mathbf{v} \xrightarrow{n \to +\infty} \mathbf{0}_V$. Essendo $L$ continuo in $\mathbf{0}_V$:
> $$
> L(\mathbf{v}_n - \mathbf{v}) \xrightarrow{n \to +\infty} L(\mathbf{0}_V)
> $$
> Sfruttando la linearità di $L$ e la proprietà $L(\mathbf{0}_V) = \mathbf{0}_W$:
> $$
> L(\mathbf{v}_n - \mathbf{v}) = L(\mathbf{v}_n) - L(\mathbf{v}) \xrightarrow{n \to +\infty} \mathbf{0}_W
> $$
> Ne consegue che:
> $$
> \lim_{n \to +\infty} L(\mathbf{v}_n) = L(\mathbf{v})
> $$
> il che prova la continuità di $L$ in ogni punto $\mathbf{v} \in V$. $\blacksquare$
>
### Operatori limitati e norma operatoriale

> [!definition] Operatore lineare limitato
> Sia $L : (V, \|\cdot\|_V) \to (W, \|\cdot\|_W)$ un operatore lineare. Diciamo che $L$ è **limitato** se verifica una delle seguenti tre condizioni equivalenti:
> 1. Esiste una costante $M \ge 0$ tale che:
>    $$
>    \|L(\mathbf{v})\|_W \le M \|\mathbf{v}\|_V \quad \forall \mathbf{v} \in V
>    $$
> 2. Esiste una costante $M \ge 0$ tale che:
>    $$
>    \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} \le M \quad \forall \mathbf{v} \in V \setminus \{\mathbf{0}_V\}
>    $$
> 3. L'estremo superiore del rapporto è finito:
>    $$
>    \sup_{\mathbf{v} \in V \setminus \{\mathbf{0}_V\}} \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} < +\infty
>    $$

> [!note] Restrizione alla sfera unitaria
> Per ogni $\mathbf{v} \in V \setminus \{\mathbf{0}_V\}$, per l'omogeneità della norma e la linearità di $L$ si ha:
> $$
> \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} = \left\| \frac{1}{\|\mathbf{v}\|_V} L(\mathbf{v}) \right\|_W = \left\| L\left( \frac{\mathbf{v}}{\|\mathbf{v}\|_V} \right) \right\|_W
> $$
> Poiché il vettore $\frac{\mathbf{v}}{\|\mathbf{v}\|_V}$ appartiene alla sfera unitaria di $V$ ($\|\frac{\mathbf{v}}{\|\mathbf{v}\|_V}\|_V = 1$), ne segue che:
> $$
> \sup_{\mathbf{v} \in V \setminus \{\mathbf{0}_V\}} \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} = \sup_{\substack{\mathbf{v} \in V \setminus \{\mathbf{0}_V\} \\ \|\mathbf{v}\|_V = 1}} \|L(\mathbf{v})\|_W
> $$

> [!definition] Spazio $\mathcal{L}(V, W)$ e norma operatoriale
> Sia $L : (V, \|\cdot\|_V) \to (W, \|\cdot\|_W)$ un operatore lineare limitato. Definiamo lo spazio vettoriale:
> $$
> \mathcal{L}(V, W) := \left\{ L : (V, \|\cdot\|_V) \to (W, \|\cdot\|_W) : L \text{ è un operatore lineare limitato} \right\}
> $$
> e definiamo la **norma operatoriale** di $L$ come:
> $$
> \|L\|_{\mathcal{L}(V, W)} := \sup_{\mathbf{v} \in V \setminus \{\mathbf{0}_V\}} \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} = \sup_{\substack{\mathbf{v} \in V \setminus \{\mathbf{0}_V\} \\ \|\mathbf{v}\|_V = 1}} \|L(\mathbf{v})\|_W
> $$

> [!note] Proprietà della norma operatoriale
> - La norma $\|L\|_{\mathcal{L}(V, W)}$ è il **più piccolo numero reale** tale che:
>   $$
>   \|L(\mathbf{v})\|_W \le \|L\|_{\mathcal{L}(V, W)} \|\mathbf{v}\|_V \quad \forall \mathbf{v} \in V
>   $$
> - La quantità $\|\cdot\|_{\mathcal{L}(V, W)}$ è effettivamente una norma sullo spazio $\mathcal{L}(V, W)$.
> - **Stima dall'alto:** Se $L : V \to W$ è lineare ed esiste $M > 0$ tale che:
>   $$
>   \|L(\mathbf{v})\|_W \le M \|\mathbf{v}\|_V \quad \forall \mathbf{v} \in V
>   $$
>   allora, per definizione di estremo superiore:
>   $$
>   \|L\|_{\mathcal{L}(V, W)} \le M
>   $$
> - **Stima dal basso:** Se per un operatore lineare $L : V \to W$ esiste un vettore specifico $\mathbf{v} \in V$ non nullo tale che:
>   $$
>   \|L(\mathbf{v})\|_W \ge K \|\mathbf{v}\|_V \quad (K > 0)
>   $$
>   allora:
>   $$
>   \|L\|_{\mathcal{L}(V, W)} \ge K
>   $$
>
### Lo spazio duale topologico

> [!definition] Spazio duale $V^*$
> Se $(V, \|\cdot\|_V)$ è uno spazio normato e lo spazio di arrivo è il campo scalare $(W, \|\cdot\|_W) = (\mathbb{R}, |\cdot|)$, lo spazio degli operatori lineari limitati (chiamati **funzionali lineari continui**) prende il nome di **spazio duale** di $V$, ed è denotato con:
> $$
> V^* := \mathcal{L}(V, \mathbb{R})
> $$
> dotato della norma duale:
> $$
> \|L\|_{V^*} := \sup_{\substack{\mathbf{v} \in V \\ \|\mathbf{v}\|_V = 1}} |L(\mathbf{v})|
> $$
>
### Esempi ed applicazioni

> [!example] Esempio 1: Funzionale lineare su $\mathbb{R}^n$ con norma euclidea
> Si consideri lo spazio euclideo $(\mathbb{R}^n, \|\cdot\|_2)$ e l'operatore $L : (\mathbb{R}^n, \|\cdot\|_2) \to (\mathbb{R}, |\cdot|)$ definito fissando un vettore $\mathbf{v}_0 \in \mathbb{R}^n$:
> $$
> L(\mathbf{v}) := \mathbf{v} \cdot \mathbf{v}_0
> $$
> $L$ è lineare e limitato. Infatti, applicando la disuguaglianza di Cauchy-Schwarz:
> $$
> |L(\mathbf{v})| = |\mathbf{v} \cdot \mathbf{v}_0| \le \|\mathbf{v}\|_2 \|\mathbf{v}_0\|_2 \quad \forall \mathbf{v} \in \mathbb{R}^n
> $$
> da cui segue la maggiorazione:
> $$
> \|L\|_{\mathcal{L}(\mathbb{R}^n, \mathbb{R})} \le \|\mathbf{v}_0\|_2
> $$
> dove $\mathcal{L}(\mathbb{R}^n, \mathbb{R}) = (\mathbb{R}^n)^*$.
> Vale anche la disuguaglianza inversa? Se valutiamo l'operatore sul vettore unitario orientato lungo $\mathbf{v}_0$, ponendo $\mathbf{v} = \frac{\mathbf{v}_0}{\|\mathbf{v}_0\|_2}$ (supponendo $\mathbf{v}_0 \ne \mathbf{0}$):
> $$
> L\left( \frac{\mathbf{v}_0}{\|\mathbf{v}_0\|_2} \right) = \frac{\mathbf{v}_0 \cdot \mathbf{v}_0}{\|\mathbf{v}_0\|_2} = \frac{\|\mathbf{v}_0\|_2^2}{\|\mathbf{v}_0\|_2} = \|\mathbf{v}_0\|_2
> $$
> Poiché $\left\| \frac{\mathbf{v}_0}{\|\mathbf{v}_0\|_2} \right\|_2 = 1$, si ottiene:
> $$
> \|L\|_{(\mathbb{R}^n)^*} = \sup_{\|\mathbf{v}\|_2 = 1} |L(\mathbf{v})| \ge L\left( \frac{\mathbf{v}_0}{\|\mathbf{v}_0\|_2} \right) = \|\mathbf{v}_0\|_2
> $$
> Combinando le due disuguaglianze:
> $$
> \|L\|_{(\mathbb{R}^n)^*} \ge \|\mathbf{v}_0\|_2 \implies \|L\|_{(\mathbb{R}^n)^*} = \|\mathbf{v}_0\|_2
> $$
> ossia la norma duale del funzionale associato a $\mathbf{v}_0$ coincide con la norma euclidea di $\mathbf{v}_0$:
> $$
> \|\mathbf{v} \cdot \mathbf{v}_0\|_{(\mathbb{R}^n)^*} = \|\mathbf{v}_0\|_2
> $$

> [!example] Esempio 2: Operatore di derivazione (limitato vs non limitato)
> Si consideri l'operatore di derivazione:
> $$
> \frac{d}{dx} : (C^1([a, b]), \|\cdot\|_\infty^1) \to (C^0([a, b]), \|\cdot\|_\infty^0)
> $$
> dove la norma naturale su $C^1([a, b])$ è data da:
> $$
> \|f\|_\infty^1 := \|f\|_\infty^0 + \sup_{x \in (a, b)} |f'(x)| = \|f\|_\infty + \|f'\|_\infty
> $$
> Con tale norma, $\frac{d}{dx}$ è banalmente limitato in quanto $\|f'\|_\infty \le \|f\|_\infty^1$.
>
> Cosa accade invece se consideriamo l'operatore di derivazione dotando lo spazio di partenza della sola norma del sup di $C^0$?
> Sia ad esempio $f(x) = x^{2/3}$ su $(0, 1)$. Si ha $x^{2/3} \in C^0([-1, 1])$ e la sua derivata prima vale:
> $$
> f'(x) = \frac{2}{3} x^{-1/3} \in C^0((0, 1))
> $$
> Tuttavia:
> $$
> \sup_{x \in (0, 1)} \left| \frac{2}{3} x^{-1/3} \right| = +\infty \quad \text{mentre} \quad \sup_{x \in (0, 1)} \left| x^{2/3} \right| = 1
> $$
> Ne consegue che:
> $$
> \sup_{f \in C^1((0, 1)) \setminus \{0\}} \frac{\left\| \frac{d}{dx}(f) \right\|_\infty}{\|f\|_\infty} = +\infty
> $$
> Dunque l'operatore di derivata **non è limitato** rispetto alla norma uniforme $\|\cdot\|_\infty$.

> [!example] Esempio 3: Operatore matriciale in dimensione finita
> Sia $L : \mathbb{R}^n \to \mathbb{R}^m$ definito da $L(\mathbf{v}) = A\mathbf{v}$, con $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ avente elementi $a_{j, k}$.
> Tale operatore è sempre limitato. Infatti, esprimendo le componenti del vettore trasformato:
> $$
> A\mathbf{v} = \left( \sum_{k=1}^n a_{1, k} v_k, \; \dots, \; \sum_{k=1}^n a_{m, k} v_k \right)
> $$
> Calcolando la norma euclidea al quadrato:
> $$
> \|A\mathbf{v}\|^2 = \sum_{j=1}^m \left[ \sum_{k=1}^n a_{j, k} v_k \right]^2 \le \sum_{j=1}^m \left[ \sum_{k=1}^n |a_{j, k}| |v_k| \right]^2
> $$
> Riconoscendo il prodotto scalare tra il vettore riga $(a_{j, 1}, \dots, a_{j, n})$ e il vettore $\mathbf{v} = (v_1, \dots, v_n)$:
> $$
> = \sum_{j=1}^m \langle (a_{j, 1}, \dots, a_{j, n}), (v_1, \dots, v_n) \rangle^2
> $$
> Applicando la disuguaglianza di Cauchy-Schwarz a ciascun termine:
> $$
> \le \sum_{j=1}^m \|(a_{j, 1}, \dots, a_{j, n})\|^2 \|\mathbf{v}\|^2 = \|\mathbf{v}\|^2 \sum_{j=1}^m \|(a_{j, 1}, \dots, a_{j, n})\|^2
> $$
> Ponendo la costante:
> $$
> M^2 := \sum_{j=1}^m \|(a_{j, 1}, \dots, a_{j, n})\|^2 = \sum_{j=1}^m \sum_{k=1}^n a_{j, k}^2
> $$
> estraendo la radice quadrata si ottiene:
> $$
> \|A\mathbf{v}\| \le M \|\mathbf{v}\| \quad \forall \mathbf{v} \in \mathbb{R}^n
> $$
> dunque $L$ è limitato.
>
> Inoltre, se $n = m$ ed $A$ è una matrice diagonalizzabile (ad esempio simmetrica reale), allora la sua norma operatoriale indotta coincide con il raggio spettrale:
> $$
> \|A\| = \max_{i=1, \dots, n} |\lambda_i|
> $$
> dove $\lambda_1, \dots, \lambda_n$ sono gli autovalori di $A$.

> [!example] Esempio 4: Funzionale integrale su $L^2(\Omega)$
> Sia $L : L^2(\Omega) \to \mathbb{R}$ definito da:
> $$
> L(f) := \int_\Omega f(\mathbf{x}) f_0(\mathbf{x}) \, d\mathbf{x}
> $$
> per una funzione $f_0 \in L^2(\Omega)$ fissata.
> L'applicazione è chiaramente lineare. Per la limitatezza:
> $$
> |L(f)| \le \int_\Omega |f| \cdot |f_0| \, d\mathbf{x}
> $$
> Applicando la disuguaglianza di Hölder con $p = q = 2$ (disuguaglianza di Cauchy-Schwarz per integrali):
> $$
> |L(f)| \le \|f\|_{L^2(\Omega)} \|f_0\|_{L^2(\Omega)}
> $$
> Ponendo la costante $M := \|f_0\|_{L^2(\Omega)}$, si ha:
> $$
> |L(f)| \le M \|f\|_{L^2(\Omega)} \quad \forall f \in L^2(\Omega)
> $$
> Dunque $L$ è un funzionale lineare limitato su $L^2(\Omega)$ (ossia $L \in (L^2(\Omega))^*$).
>

## 2.19. Operatori lineari continui e limitati

### Teorema di equivalenza tra continuità e limitatezza

> [!theorem] Teorema di equivalenza tra continuità e limitatezza per operatori lineari
> Sia $L: (V, \|\cdot\|_V) \to (W, \|\cdot\|_W)$ un operatore lineare tra due spazi vettoriali normati. Allora:
> $$
> L \text{ è continuo} \iff L \text{ è limitato}
> $$

> [!quote]- Dimostrazione
> **Dimostrazione dell'implicazione $(\Leftarrow)$:**
> Supponiamo che l'operatore $L$ sia limitato. Per definizione di norma operatoriale si ha $\|L\| < +\infty$ e:
> $$
> \|L(\mathbf{v})\|_W \le \|L\| \|\mathbf{v}\|_V \quad \forall \mathbf{v} \in V
> $$
> Sia $\{\mathbf{v}_n\}_{n \in \mathbb{N}} \subset V$ una successione tale che $\mathbf{v}_n \xrightarrow{n \to +\infty} \mathbf{0}$, ovvero:
> $$
> \|\mathbf{v}_n - \mathbf{0}\|_V \xrightarrow{n \to +\infty} 0
> $$
> Applicando la stima di limitatezza alla successione:
> $$
> \|L(\mathbf{v}_n)\|_W \le \|L\| \|\mathbf{v}_n\|_V \xrightarrow{n \to +\infty} 0
> $$
> cioè:
> $$
> \|L(\mathbf{v}_n)\|_W \xrightarrow{n \to +\infty} 0 \implies L \text{ è continuo in } \mathbf{0} \implies L \text{ è continuo su tutto } V
> $$
> 
> **Dimostrazione dell'implicazione $(\Rightarrow)$:**
> Supponiamo per ipotesi che $L$ sia continuo. Procediamo per assurdo supponendo che $L$ non sia limitato.
> Allora il sup del rapporto incrementale non è finito:
> $$
> \sup_{\mathbf{v} \in V \setminus \{\mathbf{0}\}} \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} = +\infty \qquad (*)
> $$
> Per la proprietà caratteristica dell'estremo superiore, esiste una successione di vettori non nulli $\{\mathbf{v}_n\}_{n \in \mathbb{N}} \subset V \setminus \{\mathbf{0}\}$ tale che:
> $$
> \lim_{n \to +\infty} \frac{\|L(\mathbf{v}_n)\|_W}{\|\mathbf{v}_n\|_V} = +\infty
> $$
> Osserviamo che definitivamente si ha:
> $$
> \frac{\|L(\mathbf{v}_n)\|_W}{\|\mathbf{v}_n\|_V} > 1 \implies \|L(\mathbf{v}_n)\|_W > 0 \quad \text{definitivamente}
> $$
> Possiamo pertanto definire per $n > N \in \mathbb{N}$ la successione normalizzata:
> $$
> \mathbf{u}_n := \frac{\mathbf{v}_n}{\|L(\mathbf{v}_n)\|_W}
> $$
> Calcolandone la norma nello spazio di partenza $V$:
> $$
> \|\mathbf{u}_n\|_V = \frac{\|\mathbf{v}_n\|_V}{\|L(\mathbf{v}_n)\|_W} = \frac{1}{\frac{\|L(\mathbf{v}_n)\|_W}{\|\mathbf{v}_n\|_V}} \xrightarrow{n \to +\infty} 0 \quad \text{per la } (*)
> $$
> da cui segue:
> $$
> \lim_{n \to +\infty} \mathbf{u}_n = \mathbf{0} \quad \text{in } V
> $$
> Essendo $L$ continuo per ipotesi su tutto lo spazio, esso preserva il limite in $\mathbf{0}$:
> $$
> L(\mathbf{u}_n) \xrightarrow{n \to +\infty} \mathbf{0} \implies \|L(\mathbf{u}_n)\|_W \xrightarrow{n \to +\infty} 0
> $$
> D'altra parte, calcolando direttamente la norma dell'immagine di $\mathbf{u}_n$ sfruttando l'omogeneità di $L$:
> $$
> \left\| L\left( \frac{\mathbf{v}_n}{\|L(\mathbf{v}_n)\|_W} \right) \right\|_W \underset{\text{lin.}}{=} \frac{\|L(\mathbf{v}_n)\|_W}{\|L(\mathbf{v}_n)\|_W} = 1 \quad \forall n \in \mathbb{N}
> $$
> Si ottiene la contraddizione:
> $$
> 1 \xrightarrow{n \to +\infty} 0
> $$
> che è assurdo.
> Segue che l'operatore $L$ deve essere necessariamente limitato, completando la dimostrazione dell'equivalenza:
> $$
> L \text{ continuo} \iff L \text{ limitato}
> $$ $\blacksquare$

> [!note] Esistenza della norma operatoriale per operatori continui
> Da questo teorema discende che la norma operatoriale:
> $$
> \|L\|_{\mathcal{L}(V, W)} := \sup_{\mathbf{v} \in V \setminus \{\mathbf{0}\}} \frac{\|L(\mathbf{v})\|_W}{\|\mathbf{v}\|_V} < +\infty
> $$
> esiste ed è finita per ogni operatore lineare continuo tra spazi normati.
>
