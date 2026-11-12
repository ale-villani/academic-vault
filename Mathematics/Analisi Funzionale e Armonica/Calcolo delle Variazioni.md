---
title: "Calcolo delle Variazioni"
domain: "math/calculus-of-variations"
source_course: "Analisi 3 (Cap. 5)"
tags:
  - math/variational/euler-lagrange
  - math/variational/action-principle
---

# 5. Calcolo delle Variazioni

## 5.1. Formulazione del Problema di Minimo ad Estremi Fissi

Si desidera risolvere problemi di **ottimizzazione** di funzionali della forma:
$$
J: \mathcal{M} \longrightarrow \mathbb{R}
$$
con $\mathcal{M}$ opportuna classe di funzioni ammissibili.
Ad esempio, un elemento $v \in \mathcal{M}$ risolve il problema di minimo globale se soddisfa la condizione:
$$
\forall u \in \mathcal{M}, \qquad J(v) \le J(u)
$$

Molti problemi del calcolo delle variazioni sono espressi in **forma integrale**. Si consideri ad esempio il problema di minimo in cui, fissata una lagrangiana:
$$
f \in C^1([a,b] \times \mathbb{R} \times \mathbb{R})
$$
si richiede di trovare una funzione $\hat{u} \in \mathcal{M}$ che minimizzi il funzionale continuo:
$$
J(u) := \int_a^b f(x, u(x), u'(x)) \, dx
$$
dove la classe di funzioni ammissibili $\mathcal{M}$ è definita prescrivendo le condizioni al contorno:
$$
\mathcal{M} := \left\{ u \in C^1([a,b]) : u(a) = A, \; u(b) = B \right\}
$$
Tale problema di ottimizzazione vincolata è detto **problema ad estremi fissi** (condizioni al contorno di Dirichlet).

> [!note] Perturbazioni e Spazio delle Variazioni Ammissibili
> Per ogni funzione $u \in \mathcal{M}$, esiste una funzione $h \in C^1([a,b])$ tale che:
> $$
> u(x) = \hat{u}(x) + h(x)
> $$
> ponendo esplicitamente:
> $$
> h := u - \hat{u}
> $$
> Poiché sia $u \in \mathcal{M}$ che $\hat{u} \in \mathcal{M}$ soddisfano le medesime condizioni agli estremi:
> $$
> u(a) = \hat{u}(a) = A \implies h(a) = u(a) - \hat{u}(a) = 0
> u(b) = \hat{u}(b) = B \implies h(b) = u(b) - \hat{u}(b) = 0
> $$
> Pertanto $h$ appartiene allo spazio vettoriale delle direzioni ammissibili:
> $$
> V_0 := \left\{ h \in C^1([a,b]) : h(a) = 0, \; h(b) = 0 \right\}
> $$
> La funzione $h$ si interpreta geometricamente come la **perturbazione** della configurazione ottimale $\hat{u}$, ed è spesso indicata nella letteratura variazionale con il simbolo $\delta \hat{u}$:
> $$
> \delta \hat{u} := u - \hat{u} \qquad (\text{variazione di } \hat{u})
> $$
> Se $\hat{u}$ è un punto di minimo per $J$ su $\mathcal{M}$, allora per definizione deve valere:
> $$
> J(\hat{u}) \le J(\hat{u} + \delta \hat{u})
> $$
> per ogni variazione ammissibile $\delta \hat{u}$.
> 
> Fissata una direzione test $h \in C^1([a,b])$ con $h(a) = h(b) = 0$, consideriamo la famiglia di variazioni dipendenti dal parametro scalare $t \in I \subset \mathbb{R}$ (con $I$ intorno di $t = 0$):
> $$
> \delta \hat{u} = t h, \qquad t \in I \subset \mathbb{R}
> $$
> Sotto tali condizioni, la disuguaglianza di minimo si specializza lungo la retta affine $\hat{u} + th$:
> $$
> J(\hat{u}) \le J(\hat{u} + th) \qquad \forall t \in I
> $$
>
## 5.2. Riduzione ad Ottimo Unidimensionale e Derivazione

> [!note] Riduzione a Funzione Scalare di una Variabile Reale
> Il problema di minimo variazionale infinito-dimensionale si riduce allo studio di una funzione di una sola variabile reale.
> Posto:
> $$
> \phi: I \longrightarrow \mathbb{R}
> $$
> definita da:
> $$
> \phi(t) := J(\hat{u} + th) = \int_a^b f(x, \hat{u}(x) + th(x), \hat{u}'(x) + th'(x)) \, dx
> $$
> la condizione di minimo per $\hat{u}$ implica che:
> $$
> \phi(0) \le \phi(t) \qquad \forall t \in I
> $$
> Dunque $t = 0$ è un punto di minimo locale (e globale su $I$) per la funzione scalare $\phi$.
> 
> Poiché la lagrangiana $f(x, u, p)$ è di classe $C^1$, per il teorema di derivazione sotto il segno di integrale (garantito dal teorema della convergenza dominata sulla compatta $[a,b]$):
> $$
> \phi'(t) = \int_a^b \frac{d}{dt} \left[ f(x, \hat{u}(x) + th(x), \hat{u}'(x) + th'(x)) \right] dx
> $$
> Applicando la regola di derivazione delle funzioni composte (chain rule):
> $$
> \nabla f(x, \hat{u} + th, \hat{u}' + th') \cdot \begin{pmatrix} \frac{\partial x}{\partial t} \\ \frac{\partial (\hat{u} + th)}{\partial t} \\ \frac{\partial (\hat{u}' + th')}{\partial t} \end{pmatrix} = \nabla f(x, \hat{u} + th, \hat{u}' + th') \cdot \begin{pmatrix} 0 \\ h(x) \\ h'(x) \end{pmatrix}
> $$
> da cui:
> $$
> \phi'(t) = \int_a^b \left[ \frac{\partial f}{\partial u}(x, \hat{u} + th, \hat{u}' + th') \, h(x) + \frac{\partial f}{\partial u'}(x, \hat{u} + th, \hat{u}' + th') \, h'(x) \right] dx
> $$
> Valutando la derivata in $t = 0$:
> $$
> \phi'(0) = \int_a^b \left[ \frac{\partial f}{\partial u}(x, \hat{u}, \hat{u}') \, h(x) + \frac{\partial f}{\partial u'}(x, \hat{u}, \hat{u}') \, h'(x) \right] dx
> $$
> Poiché $t = 0$ è un punto di minimo interno ad $I$ per la funzione derivabile $\phi$, dal **Teorema di Fermat** segue necessariamente:
> $$
> \phi'(0) = 0 \qquad \forall h \in C^1([a,b]) \text{ con } h(a) = h(b) = 0
> $$
>
## 5.3. Variazione Prima e Teorema di Stazionarietà

> [!definition] Variazione Prima di un Funzionale
> Si definisce **variazione prima** (o differenziale di Gâteaux) del funzionale integrale $J$, calcolata in $u$ lungo la direzione $h$, il funzionale lineare $\delta J(u): C^1_0([a,b]) \to \mathbb{R}$ dato da:
> $$
> \delta J(u) := \int_a^b \left[ \frac{\partial f}{\partial u}(x, u, u') \, h(x) + \frac{\partial f}{\partial u'}(x, u, u') \, h'(x) \right] dx
> $$
> (omettendo per brevità la dipendenza esplicita dalla direzione $h$).

> [!theorem] Condizione Necessaria di Ottimalità (Stazionarietà Variazionale)
> Siano $f \in C^1([a,b] \times \mathbb{R} \times \mathbb{R})$ e:
> $$
> \mathcal{M} := \left\{ u \in C^1([a,b]) : u(a) = A, \; u(b) = B \right\}
> $$
> Sia $J: \mathcal{M} \to \mathbb{R}$ il funzionale:
> $$
> J(u) := \int_a^b f(x, u(x), u'(x)) \, dx
> $$
> Se esiste una funzione $\hat{u} \in \mathcal{M}$ tale che:
> $$
> \forall u \in \mathcal{M}, \qquad J(\hat{u}) \le J(u)
> $$
> allora la variazione prima si annulla identicamente su ogni perturbazione ammissibile:
> $$
> \delta J(\hat{u}) = 0 \qquad \forall h \in C^1([a,b]) \text{ con } h(a) = h(b) = 0
> $$
> ovvero $\hat{u}$ è un **punto stazionario** per il funzionale $J$.

> [!note] Estensione ai Minimi Locali in Norma $C^1$
> Il teorema di stazionarietà sopra enunciato per minimi globali ricalca esattamente la struttura del Teorema di Fermat in $\mathbb{R}^n$ ed è valido anche per **minimi locali**.
> Introducendo la norma canonica dello spazio di Banach $C^1([a,b])$:
> $$
> \|u\|_{C^1} := \max_{x \in [a,b]} |u(x)| + \max_{x \in [a,b]} |u'(x)|
> $$
> se esiste un raggio $R > 0$ tale che:
> $$
> \forall u \in B_R(\hat{u}) \cap \mathcal{M}, \qquad J(\hat{u}) \le J(u)
> $$
> (minimo locale in norma $C^1$), allora vale comunque:
> $$
> \delta J(\hat{u}) = 0
> $$
> Ne consegue che i minimi liberi di funzionali integrali possono essere individuati con metodologie analoghe alla ricerca dei punti critici in $\mathbb{R}^n$.
>
## 5.4. Variazione Seconda e Condizioni di Convessità

> [!definition] Variazione Seconda di un Funzionale Integrale
> Si definisce **variazione seconda** del funzionale integrale $J$, calcolata come $\delta^2 J(u) := \phi''(0)$, la forma quadratica:
> $$
> \delta^2 J(u) := \int_a^b \left[ \frac{\partial^2 f}{\partial u^2}(x, u, u') \, h^2 + 2 \, \frac{\partial^2 f}{\partial u \, \partial u'}(x, u, u') \, h \, h' + \frac{\partial^2 f}{\partial (u')^2}(x, u, u') \, (h')^2 \right] dx
> $$

> [!proposition] Condizione Sufficiente di Minimo tramite Convessità
> Sia $f \in C^2([a,b] \times \mathbb{R}^2)$ e sia $\hat{u} \in \mathcal{M}$ un punto stazionario per il funzionale $J$, ovvero:
> $$
> \delta J(\hat{u}) = 0 \qquad \forall h \in C^1([a,b]) \text{ con } h(a) = h(b) = 0
> $$
> 1. Se la funzione lagrangiana $(u, p) \mapsto f(x, u, p)$ è **convessa** rispetto alle variabili $(u, u')$ per ogni $x \in [a,b]$, allora $\hat{u}$ è un punto di **minimo globale** per $J$ su $\mathcal{M}$.
> 2. Se inoltre $(u, p) \mapsto f(x, u, p)$ è **strettamente convessa** rispetto a $(u, u')$ per ogni $x \in [a,b]$, allora $\hat{u}$ è l'**unico punto di minimo globale** per $J$ in $\mathcal{M}$.
>
## 5.5. Equazione di Eulero-Lagrange

La condizione variazionale di annullamento della variazione prima $\delta J(\hat{u}) = 0$ è equivalente a un'equazione differenziale ordinaria del secondo ordine per la funzione estremale $\hat{u}$.

> [!theorem] Equazione Differenziale di Eulero-Lagrange
> Siano $f$ e $J$ definiti come nel teorema di stazionarietà. Allora $\hat{u} \in \mathcal{M}$ è un punto stazionario se e solo se soddisfa l'**equazione di Eulero-Lagrange**:
> $$
> \delta J(\hat{u}) = 0 \iff \frac{d}{dx} \left[ \frac{\partial f}{\partial u'}(x, \hat{u}(x), \hat{u}'(x)) \right] - \frac{\partial f}{\partial u}(x, \hat{u}(x), \hat{u}'(x)) = 0 \quad \forall x \in (a, b)
> $$
>
Per dimostrare rigorosamente questo risultato senza assumere a priori la regolarità $C^2$ di $\hat{u}$, si impiega il seguente lemma fondamentale (nella formulazione integrale di du Bois-Reymond).

> [!lemma] Lemma Fondamentale del Calcolo delle Variazioni (du Bois-Reymond)
> Sia $g \in C^1((a,b))$. Se:
> $$
> \int_a^b g(x) \, h'(x) \, dx = 0 \qquad \forall h \in C^1((a,b)) \text{ tale che } h(a) = h(b) = 0
> $$
> allora $g$ è costante sull'intervallo $(a,b)$:
> $$
> g(x) \equiv c \qquad \forall x \in (a,b)
> $$

> [!quote]- Dimostrazione del Teorema di Eulero-Lagrange
> Sia $\hat{u} \in \mathcal{M}$ un punto stazionario per $J$. Definiamo le seguenti due funzioni ausiliarie:
> $$
> \alpha(x) := \int_a^x \frac{\partial f}{\partial u}(t, \hat{u}(t), \hat{u}'(t)) \, dt
> \beta(x) := \frac{\partial f}{\partial u'}(x, \hat{u}(x), \hat{u}'(x))
> $$
> Per il Teorema Fondamentale del Calcolo Integrale, $\alpha$ è una funzione derivabile con:
> $$
> \alpha'(x) = \frac{\partial f}{\partial u}(x, \hat{u}(x), \hat{u}'(x))
> $$
> La variazione prima di $J$ assume la forma:
> $$
> \delta J(\hat{u}) = \int_a^b \left[ \frac{\partial f}{\partial u}(x, \hat{u}, \hat{u}') \, h(x) + \frac{\partial f}{\partial u'}(x, \hat{u}, \hat{u}') \, h'(x) \right] dx = \int_a^b \alpha'(x) \, h(x) \, dx + \int_a^b \beta(x) \, h'(x) \, dx
> $$
> Integrando per parti il primo termine:
> $$
> \int_a^b \alpha'(x) \, h(x) \, dx = \Big[ \alpha(x) \, h(x) \Big]_a^b - \int_a^b \alpha(x) \, h'(x) \, dx
> $$
> Poiché la perturbazione ammissibile soddisfa $h(a) = h(b) = 0$, il termine di bordo svanisce:
> $$
> \Big[ \alpha(x) \, h(x) \Big]_a^b = \alpha(b) \, h(b) - \alpha(a) \, h(a) = 0 - 0 = 0
> $$
> Sostituendo nell'espressione della variazione prima:
> $$
> \delta J(\hat{u}) = \int_a^b \Big( \beta(x) - \alpha(x) \Big) \, h'(x) \, dx
> $$
> Essendo $\hat{u}$ stazionario, si ha $\delta J(\hat{u}) = 0$ per ogni $h \in C^1([a,b])$ con $h(a) = h(b) = 0$. Applicando il Lemma di du Bois-Reymond alla funzione continua $g(x) := \beta(x) - \alpha(x)$, deduciamo che $g$ deve essere costante su tutto $[a,b]$:
> $$
> \beta(x) - \alpha(x) = c \qquad \forall x \in [a,b]
> $$
> Esplicitando le definizioni di $\alpha(x)$ e $\beta(x)$:
> $$
> \frac{\partial f}{\partial u'}(x, \hat{u}(x), \hat{u}'(x)) - \int_a^x \frac{\partial f}{\partial u}(t, \hat{u}(t), \hat{u}'(t)) \, dt = c
> $$
> Poiché il termine integrale è differenziabile rispetto a $x$, ne consegue che anche il termine $\frac{\partial f}{\partial u'}(x, \hat{u}, \hat{u}')$ è differenziabile rispetto a $x$. Derivando ambo i membri rispetto a $x$:
> $$
> \frac{d}{dx} \left[ \frac{\partial f}{\partial u'}(x, \hat{u}(x), \hat{u}'(x)) \right] - \frac{\partial f}{\partial u}(x, \hat{u}(x), \hat{u}'(x)) = 0 \qquad \blacksquare
> $$
>
## 5.6. Generalizzazione a Funzionali di Più Funzioni

> [!note] Sistemi di Equazioni di Eulero-Lagrange per Funzioni Vettoriali
> La formulazione variazionale si estende in modo del tutto naturale a funzionali agenti su una n-upla di funzioni incognite, ovvero su una funzione vettoriale $\mathbf{u} = (u_1, \dots, u_n): [a, b] \to \mathbb{R}^n$:
> $$
> J(\mathbf{u}) = \int_a^b f(x, \mathbf{u}(x), \mathbf{u}'(x)) \, dx
> $$
> definita sullo spazio ammissibile vincolato agli estremi:
> $$
> \mathcal{M} = \left\{ \mathbf{u} \in C^1([a,b]; \mathbb{R}^n) : \mathbf{u}(a) = \mathbf{A}, \; \mathbf{u}(b) = \mathbf{B} \right\}
> $$
> dove $\mathbf{A}, \mathbf{B} \in \mathbb{R}^n$ sono vettori assegnati.
> 
> La variazione prima di $J$ lungo una perturbazione vettoriale ammissibile $\mathbf{h} \in C^1([a,b]; \mathbb{R}^n)$ con $\mathbf{h}(a) = \mathbf{h}(b) = \mathbf{0}$ è data da:
> $$
> \delta J(\mathbf{u}) := \int_a^b \sum_{j=1}^n \left[ \frac{\partial f}{\partial u_j}(x, \mathbf{u}, \mathbf{u}') \, h_j(x) + \frac{\partial f}{\partial u_j'}(x, \mathbf{u}, \mathbf{u}') \, h_j'(x) \right] dx
> $$
> La condizione di stazionarietà $\delta J(\mathbf{\hat{u}}) = 0$ per ogni direzione ammissibile $\mathbf{h}$ equivale al soddisfacimento simultaneo del **sistema di $n$ equazioni di Eulero-Lagrange**:
> $$
> \frac{d}{dx} \left[ \frac{\partial f}{\partial u_j'}(x, \mathbf{u}, \mathbf{u}') \right] - \frac{\partial f}{\partial u_j}(x, \mathbf{u}, \mathbf{u}') = 0 \qquad \forall j = 1, \dots, n
> $$
>
