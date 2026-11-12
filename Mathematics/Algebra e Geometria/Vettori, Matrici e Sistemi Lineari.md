---
title: "Vettori, Matrici e Sistemi Lineari"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 1)"
tags:
  - math/linear-algebra/vectors
  - math/linear-algebra/matrices
---

# 1. Vettori, Geometria Analitica, Matrici e Sistemi Lineari

## 1.1. Vettori in $\mathbb{R}^2$

### Piano Cartesiano

> [!definition] Piano Cartesiano $\mathbb{R}^2$
> L'insieme delle coppie ordinate di numeri reali costituisce il **piano cartesiano**:
> $$
> \mathbb{R}^2 = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} : x_1, x_2 \in \mathbb{R} \right\}
> $$
>
Un elemento di $\mathbb{R}^2$ ammette tre interpretazioni fondamentali:

1. **Punti del piano:** identificazione biunivoca con un punto $P = (x_1, x_2)$ nel riferimento cartesiano individuato dagli assi ortogonali $x_1$ e $x_2$.
2. **Segmento orientato:** vettore applicato nell'origine $O(0,0)$ e con secondo estremo in $P$, denotato con $\vec{OP}$.
3. **Coppie ordinate di numeri reali:** elemento algebrico $\begin{pmatrix} x_1 \\ x_2 \end{pmatrix}$.

### Vettori e Notazione

Un elemento di $\mathbb{R}^2$ si definisce **vettore** (rappresentabile per colonna o per riga):
$$
\mathbf{v} \in \mathbb{R}^2
$$

> [!note] Convenzione di Notazione
> I vettori sono indicati con lettere corsive minuscole ($u, v, w$) con una sbarretta inferiore (o sottolineatura):
> $$
> \mathbf{u}, \quad \mathbf{v}, \quad \mathbf{w}
> $$
> Le tre notazioni equivalenti per descrivere lo stesso oggetto geometrico sono:
> 1. Vettore colonna: $\mathbf{v} = \begin{pmatrix} x_1 \\ x_2 \end{pmatrix}$
> 2. Coordinate del punto: $\mathbf{v} = P(x_1, x_2)$
> 3. Vettore geometrico applicato nell'origine: $\mathbf{v} = \vec{OP}$
>
### Operazioni tra Vettori in $\mathbb{R}^2$

**1. Somma Vettoriale**

> [!definition] Somma in $\mathbb{R}^2$
> Dati due vettori $\mathbf{x} = \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2$ e $\mathbf{y} = \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} \in \mathbb{R}^2$, la loro somma è definita componente per componente:
> $$
> \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \end{pmatrix} \in \mathbb{R}^2
> $$
>
**Significato geometrico (Regola del Parallelogramma):**
Graficamente, il vettore somma $\mathbf{v} + \mathbf{u}$ corrisponde alla diagonale maggiore del parallelogramma avente come lati adiacenti i vettori addendi $\mathbf{v}$ e $\mathbf{u}$ applicati nell'origine.

> [!example] Esempio di Somma Vettoriale
> Presi i due vettori:
> $$
> \mathbf{v} = \begin{pmatrix} 1 \\ 2 \end{pmatrix}, \qquad \mathbf{u} = \begin{pmatrix} 3 \\ 1 \end{pmatrix}
> $$
> Il vettore risultante è:
> $$
> \mathbf{v} + \mathbf{u} = \begin{pmatrix} 1 + 3 \\ 2 + 1 \end{pmatrix} = \begin{pmatrix} 4 \\ 3 \end{pmatrix}
> $$
>
**2. Prodotto di un Vettore per uno Scalare**

> [!definition] Prodotto per uno Scalare in $\mathbb{R}^2$
> Dato un vettore $\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2$ e uno scalare $c \in \mathbb{R}$, il prodotto è definito moltiplicando ciascuna componente per lo scalare:
> $$
> c \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} := \begin{pmatrix} c x_1 \\ c x_2 \end{pmatrix} \in \mathbb{R}^2
> $$
>
**Significato geometrico:** l'operazione esegue una dilatazione o contrazione (riscalamento) della lunghezza del vettore di un fattore $|c|$, preservandone la direzione (retta di supporto) e invertendone il verso se $c < 0$.

## 1.2. Rette in $\mathbb{R}^2$

### Forma Parametrica della Retta

> [!definition] Retta in Forma Parametrica in $\mathbb{R}^2$
> Dati due vettori $\mathbf{v}, \mathbf{w} \in \mathbb{R}^2$ con $\mathbf{w} \neq \mathbf{0}$, si definisce retta $r$ il sottoinsieme di $\mathbb{R}^2$:
> $$
> r = \{ \mathbf{v} + t \mathbf{w} : t \in \mathbb{R} \} \subseteq \mathbb{R}^2
> $$
> dove $t \in \mathbb{R}$ è detto **parametro** (o variabile libera).

> [!note] Generalizzazione a $\mathbb{R}^n$
> La medesima struttura algebrica $r = \{ \mathbf{v} + t \mathbf{w} : t \in \mathbb{R} \}$ descrive una retta in qualunque spazio affine $\mathbb{R}^n$, $\forall n \in \mathbb{N}$.

> [!example] Descrizione Puntuale al Variare del Parametro
> Data la retta passante per $\mathbf{v} = \begin{pmatrix} 1 \\ 3 \end{pmatrix}$ con direzione $\mathbf{w} = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$:
> - Per $t = 0$: $P_0 = \mathbf{v} = \begin{pmatrix} 1 \\ 3 \end{pmatrix}$
> - Per $t = 1$: $P_1 = \mathbf{v} + \mathbf{w} = \begin{pmatrix} 1 \\ 3 \end{pmatrix} + \begin{pmatrix} 1 \\ -1 \end{pmatrix} = \begin{pmatrix} 2 \\ 2 \end{pmatrix}$
> - Per $t = 2$: $P_2 = \mathbf{v} + 2\mathbf{w} = \begin{pmatrix} 1 \\ 3 \end{pmatrix} + \begin{pmatrix} 2 \\ -2 \end{pmatrix} = \begin{pmatrix} 3 \\ 1 \end{pmatrix}$
>
**Terminologia fondamentale:**
- $t$: **parametro** / variabile libera.
- $\mathbf{w}$: **vettore direzione** (o vettore direttore). Non è univocamente determinato.
- $\mathbf{v}$: **punto base** di ancoraggio della retta ($P \in r$).

> [!note] Non Unicità della Rappresentazione Parametrica
> La forma parametrica di una retta **non è unica**. È possibile variare sia il punto di applicazione base sia il vettore direttore (purché quest'ultimo rimanga proporzionale a quello originario).
> Ad esempio, le seguenti due forme individuano la medesima retta:
> $$
> \left\{ \begin{pmatrix} 1 \\ 3 \end{pmatrix} + t \begin{pmatrix} -1 \\ 1 \end{pmatrix} : t \in \mathbb{R} \right\} = \left\{ \begin{pmatrix} 2 \\ 2 \end{pmatrix} + s \begin{pmatrix} 2 \\ -2 \end{pmatrix} : s \in \mathbb{R} \right\}
> $$
> Si osserva infatti che $\begin{pmatrix} -1 \\ 1 \end{pmatrix}$ e $\begin{pmatrix} 2 \\ -2 \end{pmatrix}$ sono vettori paralleli (multipli secondo lo scalare $-2$), e per $s = 0$ il punto $\begin{pmatrix} 2 \\ 2 \end{pmatrix}$ appartiene alla prima retta per $t = -1$.
>
### Forma Cartesiana della Retta

> [!definition] Retta in Forma Cartesiana in $\mathbb{R}^2$
> Una retta $r \subseteq \mathbb{R}^2$ è descritta in forma implicita o cartesiana come il luogo di zeri di un polinomio di primo grado:
> $$
> r = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : a x_1 + b x_2 + c = 0 \right\} \subseteq \mathbb{R}^2
> $$
> dove $a, b, c \in \mathbb{R}$ con $(a, b) \neq (0, 0)$. I coefficienti $a$ e $b$ sono i coefficienti delle incognite, mentre $c$ è il termine noto.
>
### Conversione tra le Rappresentazioni

**Metodo I: Da Forma Parametrica a Forma Cartesiana**

> [!example] Esempio di Conversione Parametrica $\to$ Cartesiana
> Si determini un'equazione cartesiana per la retta:
> $$
> r = \left\{ \begin{pmatrix} 1 \\ 3 \end{pmatrix} + t \begin{pmatrix} 1 \\ -1 \end{pmatrix} : t \in \mathbb{R} \right\}
> $$
> **Procedimento:**
> Si impone il passaggio per due punti distinti della retta:
> - Ponendo $t = 1$:
>   $$
>   P_1 = \begin{pmatrix} 1 \\ 3 \end{pmatrix} + \begin{pmatrix} 1 \\ -1 \end{pmatrix} = \begin{pmatrix} 2 \\ 2 \end{pmatrix}
>   $$
> - Ponendo $t = -1$:
>   $$
>   P_2 = \begin{pmatrix} 1 \\ 3 \end{pmatrix} - \begin{pmatrix} 1 \\ -1 \end{pmatrix} = \begin{pmatrix} 0 \\ 4 \end{pmatrix}
>   $$
> Imponendo l'appartenenza a $r$ nell'equazione generale $a x_1 + b x_2 + c = 0$:
> $$
> \begin{cases}
> P_1 \in r \implies 2a + 2b + c = 0 \\
> P_2 \in r \implies 0 \cdot a + 4b + c = 0
> \end{cases}
> $$
> Dalla seconda equazione si ricava:
> $$
> 4b = -c \implies 2b = -\frac{c}{2} \implies c = -4b
> $$
> Sostituendo nella prima equazione:
> $$
> 2a + 2b - 4b = 0 \implies 2a - 2b = 0 \implies a = b
> $$
> Il sistema ammette infinite soluzioni proporzionali:
> $$
> \begin{cases}
> a = b \\
> c = -4b
> \end{cases}
> $$
> Poiché si tratta di una retta, deve valere $b \neq 0$. Sostituendo i parametri:
> $$
> b x_1 + b x_2 - 4b = 0
> $$
> Dividendo ambo i membri per $b \neq 0$, si ottiene l'equazione cartesiana in forma canonica:
> $$
> x_1 + x_2 - 4 = 0
> $$

> [!note] Non Unicità dell'Equazione Cartesiana
> L'equazione cartesiana non è unica: se $a x_1 + b x_2 + c = 0$ è soddisfatta, allora per ogni costante $k \in \mathbb{R} \setminus \{0\}$ vale anche l'equazione equivalente:
> $$
> k(a x_1 + b x_2 + c) = 0
> $$
>
**Metodo II: Da Forma Cartesiana a Forma Parametrica**

> [!example] Esempio di Conversione Cartesiana $\to$ Parametrica
> Si determini una rappresentazione parametrica per la retta:
> $$
> r = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : 2x_1 - 3x_2 + 1 = 0 \right\}
> $$
> **Procedimento:**
> Si risolve l'equazione algebrica esplicitando una variabile in funzione dell'altra (ad esempio $x_1$):
> $$
> 2x_1 = 3x_2 - 1 \implies x_1 = \frac{3}{2}x_2 - \frac{1}{2}
> $$
> La variabile $x_2$ assume il ruolo di **variabile libera**, potendo assumere qualunque valore reale. Poniamo:
> $$
> x_2 := t, \quad t \in \mathbb{R}
> $$
> Il vettore delle coordinate generiche si scrive:
> $$
> \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} \frac{3}{2}t - \frac{1}{2} \\ t \end{pmatrix}
> $$
> Per isolare la forma parametrica canonica, si scompone il vettore separando la componente costante dai termini dipendenti dal parametro $t$:
> $$
> \begin{pmatrix} \frac{3}{2}t - \frac{1}{2} \\ t \end{pmatrix} = \begin{pmatrix} -\frac{1}{2} \\ 0 \end{pmatrix} + t \begin{pmatrix} \frac{3}{2} \\ 1 \end{pmatrix}
> $$
> La retta $r$ espressa in forma parametrica è quindi:
> $$
> r = \left\{ \begin{pmatrix} -\frac{1}{2} \\ 0 \end{pmatrix} + t \begin{pmatrix} \frac{3}{2} \\ 1 \end{pmatrix} : t \in \mathbb{R} \right\}
> $$
>
## 1.3. Vettori in $\mathbb{R}^3$

### Spazio Cartesiano

> [!definition] Spazio Cartesiano $\mathbb{R}^3$
> L'insieme delle terne ordinate di numeri reali costituisce lo **spazio cartesiano tridimensionale**:
> $$
> \mathbb{R}^3 = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} : x_1, x_2, x_3 \in \mathbb{R} \right\}
> $$
> Un elemento $\mathbf{v} \in \mathbb{R}^3$ è detto **vettore colonna** di $\mathbb{R}^3$.
>
Esattamente come nel piano, per un vettore di $\mathbb{R}^3$ sussistono tre interpretazioni geometrico-algebriche:
1. **Punto nello spazio:** punto $P(x_1, x_2, x_3)$ individuato dalla terna cartesiana rispetto a tre assi ortogonali mutuamente perpendicolari $x_1, x_2, x_3$.
2. **Segmento orientato:** vettore geometrico applicato $\vec{OP}$ avente origine in $O(0,0,0)$ ed estremo finale in $P$.
3. **Terna ordinata di numeri reali:** elemento vettoriale $\mathbf{v} = \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix}$.

### Operazioni con Vettori in $\mathbb{R}^3$

**1. Somma Vettoriale**

> [!definition] Somma in $\mathbb{R}^3$
> Dati $\mathbf{x} = \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3$ e $\mathbf{y} = \begin{pmatrix} y_1 \\ y_2 \\ y_3 \end{pmatrix} \in \mathbb{R}^3$, la somma componente per componente è definita da:
> $$
> \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \\ y_3 \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \\ x_3 + y_3 \end{pmatrix} \in \mathbb{R}^3
> $$
>
**2. Prodotto per uno Scalare**

> [!definition] Prodotto per uno Scalare in $\mathbb{R}^3$
> Dato $\mathbf{x} = \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3$ e uno scalare $c \in \mathbb{R}$:
> $$
> c \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} := \begin{pmatrix} c x_1 \\ c x_2 \\ c x_3 \end{pmatrix} \in \mathbb{R}^3
> $$
>
## 1.4. Rette e Piani in $\mathbb{R}^3$

### Retta in Forma Parametrica in $\mathbb{R}^3$

> [!definition] Retta Parametrica in $\mathbb{R}^3$
> Dati il punto base $\mathbf{v} \in \mathbb{R}^3$ e la direzione $\mathbf{w} \in \mathbb{R}^3 \setminus \{\mathbf{0}\}$, l'equazione della retta $r$ nello spazio cartesiano è:
> $$
> r = \{ \mathbf{v} + t \mathbf{w} : t \in \mathbb{R} \} \subseteq \mathbb{R}^3
> $$
>
### Forma Cartesiana in $\mathbb{R}^3$: Piani vs Rette

> [!note] Equazione Lineare Singola in $\mathbb{R}^3$
> L'equazione scalare:
> $$
> a x_1 + b x_2 + c x_3 + d = 0
> $$
> **NON descrive una retta, bensì un PIANO!**

> [!example] Determinazione della Forma Parametrica di un Piano
> Si determini la forma parametrica dell'insieme:
> $$
> \pi = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3 : 2x_1 - x_2 + x_3 = 0 \right\}
> $$
> **Procedimento:**
> Esplicitiamo l'equazione rispetto alla variabile $x_2$:
> $$
> x_2 = 2x_1 + x_3
> $$
> Qui si hanno due gradi di libertà, ossia due variabili libere $x_1$ e $x_3$. Poniamo:
> $$
> x_1 := t, \qquad x_3 := s, \quad t, s \in \mathbb{R}
> $$
> Il sistema delle equazioni parametriche scalari è:
> $$
> \begin{cases}
> x_1 = t \\
> x_2 = 2t + s \\
> x_3 = s
> \end{cases}
> $$
> Esprimendo in forma vettoriale:
> $$
> \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} t \\ 2t + s \\ s \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} + t \begin{pmatrix} 1 \\ 2 \\ 0 \end{pmatrix} + s \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix}
> $$
> Il piano $\pi$ in forma parametrica è dunque:
> $$
> \pi = \left\{ t \begin{pmatrix} 1 \\ 2 \\ 0 \end{pmatrix} + s \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} : t, s \in \mathbb{R} \right\}
> $$
> **Interpretazione geometrica:**
> Lo spazio generato è il piano passante per l'origine generato linearmente dai vettori direttori $\begin{pmatrix} 1 \\ 2 \\ 0 \end{pmatrix}$ (raggiunto ponendo $t = 1, s = 0$) e $\begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix}$ (raggiunto ponendo $t = 0, s = 1$).
>
### Retta in Forma Cartesiana in $\mathbb{R}^3$

Nello spazio tridimensionale, per determinare una retta in forma cartesiana sono necessarie **due equazioni indipendenti**, corrispondenti all'**intersezione di due piani distinti non paralleli**:

> [!definition] Retta in Forma Cartesiana in $\mathbb{R}^3$
> $$
> r = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3 : \begin{cases} a_1 x_1 + b_1 x_2 + c_1 x_3 + d_1 = 0 \\ a_2 x_1 + b_2 x_2 + c_2 x_3 + d_2 = 0 \end{cases} \right\}
> $$
> con $a_i, b_i, c_i, d_i \in \mathbb{R}$ per $i \in \{1, 2\}$.
>
### Piano in $\mathbb{R}^3$

**1. Forma Parametrica**

> [!definition] Piano in Forma Parametrica in $\mathbb{R}^3$
> Dati un punto base $\mathbf{v} \in \mathbb{R}^3$ e due vettori di giacitura linearmente indipendenti $\mathbf{u}, \mathbf{w} \in \mathbb{R}^3$, il piano $\pi$ è definito da:
> $$
> \pi = \{ \mathbf{v} + t \mathbf{u} + s \mathbf{w} : t, s \in \mathbb{R} \} \subseteq \mathbb{R}^3
> $$
>
**2. Forma Cartesiana**

> [!definition] Piano in Forma Cartesiana in $\mathbb{R}^3$
> $$
> \pi = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3 : a x_1 + b x_2 + c x_3 + d = 0 \right\} \subseteq \mathbb{R}^3
> $$
> con coefficienti $a, b, c, d \in \mathbb{R}$ non contemporaneamente nulli per la terna $(a, b, c)$.
>
## 1.5. Vettori in $\mathbb{R}^n$

### Spazio Vettoriale Numerico $\mathbb{R}^n$

> [!definition] Spazio Euclideo Numerico $\mathbb{R}^n$
> Fissato $n \in \mathbb{N}$, lo spazio numerico $\mathbb{R}^n$ è l'insieme delle $n$-uple ordinate di numeri reali rappresentate come vettori colonna:
> $$
> \mathbb{R}^n = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} : x_1, x_2, \dots, x_n \in \mathbb{R} \right\}
> $$
> Un elemento $\mathbf{v} \in \mathbb{R}^n$ è detto **vettore colonna** di dimensione $n$.
>
### Operazioni Canoniche in $\mathbb{R}^n$

1. **Somma vettoriale:**
   $$
   \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} + \begin{pmatrix} y_1 \\ \vdots \\ y_n \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ \vdots \\ x_n + y_n \end{pmatrix} \in \mathbb{R}^n
   $$
2. **Prodotto per uno scalare:**
   $$
   c \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} := \begin{pmatrix} c x_1 \\ \vdots \\ c x_n \end{pmatrix} \in \mathbb{R}^n, \quad \forall c \in \mathbb{R}
   $$

### Proprietà Algebriche delle Operazioni (Assiomi di Spazio Vettoriale)

Siano $\mathbf{u}, \mathbf{v}, \mathbf{w} \in \mathbb{R}^n$ e $a, b, c, d \in \mathbb{R}$. Le operazioni sopra definite soddisfano le seguenti 8 proprietà fondamentali:

1. **Proprietà associativa della somma:**
   $$
   (\mathbf{v} + \mathbf{w}) + \mathbf{u} = \mathbf{v} + (\mathbf{w} + \mathbf{u})
   $$
2. **Proprietà commutativa della somma:**
   $$
   \mathbf{v} + \mathbf{u} = \mathbf{u} + \mathbf{v}
   $$
3. **Esistenza dell'elemento neutro della somma (Vettore nullo):**
   $$
   \exists\, \mathbf{0} = \begin{pmatrix} 0 \\ \vdots \\ 0 \end{pmatrix} \in \mathbb{R}^n \quad \text{tale che} \quad \mathbf{v} + \mathbf{0} = \mathbf{v}, \quad \forall \mathbf{v} \in \mathbb{R}^n
   $$
4. **Esistenza dell'elemento opposto per la somma:**
   $$
   \forall \mathbf{v} \in \mathbb{R}^n, \; \exists\, \mathbf{w} = -\mathbf{v} \in \mathbb{R}^n \quad \text{tale che} \quad \mathbf{v} + \mathbf{w} = \mathbf{0}
   $$
5. **Proprietà associativa del prodotto per scalari:**
   $$
   (ab)\mathbf{v} = a(b\mathbf{v}), \quad \forall a, b \in \mathbb{R}
   $$
6. **Esistenza dell'elemento neutro del prodotto scalare:**
   $$
   1 \cdot \mathbf{v} = \mathbf{v}, \quad \forall \mathbf{v} \in \mathbb{R}^n
   $$
7. **Proprietà distributiva rispetto alla somma di vettori:**
   $$
   c(\mathbf{v} + \mathbf{w}) = c\mathbf{v} + c\mathbf{w}, \quad \forall c \in \mathbb{R}
   $$
8. **Proprietà distributiva rispetto alla somma di scalari:**
   $$
   (c + d)\mathbf{v} = c\mathbf{v} + d\mathbf{v}, \quad \forall c, d \in \mathbb{R}
   $$

## 1.6. Schede di Riepilogo Formule

### Formulario Vettori (F1.1)

**1. In $\mathbb{R}^2$**
- **Insieme:** $\mathbb{R}^2 = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} : x_1, x_2 \in \mathbb{R} \right\}$
- **Somma:**
  $$
  \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \end{pmatrix} \in \mathbb{R}^2
  $$
- **Prodotto per scalare:**
  $$
  c \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} := \begin{pmatrix} c x_1 \\ c x_2 \end{pmatrix} \in \mathbb{R}^2
  $$

**2. In $\mathbb{R}^3$**
- **Insieme:** $\mathbb{R}^3 = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} : x_1, x_2, x_3 \in \mathbb{R} \right\}$
- **Somma:**
  $$
  \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \\ y_3 \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \\ x_3 + y_3 \end{pmatrix} \in \mathbb{R}^3
  $$
- **Prodotto per scalare:**
  $$
  c \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} := \begin{pmatrix} c x_1 \\ c x_2 \\ c x_3 \end{pmatrix} \in \mathbb{R}^3
  $$

**3. In $\mathbb{R}^n$**
- **Insieme:** $\mathbb{R}^n = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} : x_1, x_2, \dots, x_n \in \mathbb{R} \right\}$
- **Somma:**
  $$
  \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} + \begin{pmatrix} y_1 \\ \vdots \\ y_n \end{pmatrix} := \begin{pmatrix} x_1 + y_1 \\ \vdots \\ x_n + y_n \end{pmatrix} \in \mathbb{R}^n
  $$
- **Prodotto per scalare:**
  $$
  c \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} := \begin{pmatrix} c x_1 \\ \vdots \\ c x_n \end{pmatrix} \in \mathbb{R}^n
  $$

### Formulario Rette e Piani (F1.2)

| Oggetto Geometrico | Forma Parametrica | Forma Cartesiana |
| :--- | :--- | :--- |
| **Retta in $\mathbb{R}^2$** | $r = \{ \mathbf{v} + t \mathbf{w} : t \in \mathbb{R} \}$<br>con $\mathbf{v}, \mathbf{w} \in \mathbb{R}^2$ | $r = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : a x_1 + b x_2 + c = 0 \right\}$ |
| **Retta in $\mathbb{R}^3$** | $r = \{ \mathbf{v} + t \mathbf{w} : t \in \mathbb{R} \}$<br>con $\mathbf{v}, \mathbf{w} \in \mathbb{R}^3$ | $r = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3 : \begin{cases} a_1 x_1 + b_1 x_2 + c_1 x_3 + d_1 = 0 \\ a_2 x_1 + b_2 x_2 + c_2 x_3 + d_2 = 0 \end{cases} \right\}$ |
| **Piano in $\mathbb{R}^3$** | $\pi = \{ \mathbf{v} + t \mathbf{u} + s \mathbf{w} : t, s \in \mathbb{R} \}$<br>con $\mathbf{v}, \mathbf{u}, \mathbf{w} \in \mathbb{R}^3$ | $\pi = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} \in \mathbb{R}^3 : a x_1 + b x_2 + c x_3 + d = 0 \right\}$ |

## 1.7. Sistemi Lineari e Matrici

### Equazioni Lineari

> [!definition] Equazione Lineare in $n$ Incognite
> Un'equazione lineare nelle variabili reali $x_1, x_2, x_3, \dots, x_n$ è un'equazione algebrica di primo grado del tipo:
> $$
> a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b
> $$
> dove:
> - $a_1, a_2, \dots, a_n \in \mathbb{R}$ sono detti **coefficienti**;
> - $b \in \mathbb{R}$ è detto **termine noto**;
> - $x_1, \dots, x_n$ sono le **incognite** (o variabili).
>
### Insieme delle Soluzioni

> [!definition] Insieme delle Soluzioni
> L'insieme delle soluzioni $S$ dell'equazione lineare è il sottoinsieme dei vettori di $\mathbb{R}^n$ che soddisfano l'identità algebrica:
> $$
> S = \left\{ \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix} \in \mathbb{R}^n : a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b \right\} \subseteq \mathbb{R}^n
> $$
>
### Risoluzione delle Equazioni Lineari: Casi Notevoli

**Caso base: $n = 1$ (Equazione in una variabile)**
L'equazione si riduce alla forma scalare elementare:
$$
a_1 x_1 = b
$$
L'insieme delle soluzioni è:
$$
S = \{ x_1 \in \mathbb{R} : a_1 x_1 = b \} \subseteq \mathbb{R}
$$

Si distinguono i seguenti tre regimi algebrici:
1. **Se $a_1 \neq 0$:** l'equazione è determinata e ammette un'unica soluzione:
   $$
   x_1 = \frac{b}{a_1} \implies S = \left\{ \frac{b}{a_1} \right\}
   $$
2. **Se $a_1 = 0$ e $b \neq 0$:** l'equazione $0 \cdot x_1 = b$ è impossibile:
   $$
   S = \emptyset
   $$
3. **Se $a_1 = 0$ e $b = 0$:** l'equazione $0 \cdot x_1 = 0$ è un'identità verificata per ogni $x_1 \in \mathbb{R}$ (indeterminata):
   $$
   S = \mathbb{R}
   $$

In conclusione, per un'equazione lineare si presentano esattamente tre possibilità per la cardinalità dell'insieme delle soluzioni:
$$
\hookrightarrow \text{abbiamo } 1 \text{ soluzione}, \; 0 \text{ soluzioni}, \; \text{oppure } \infty \text{ soluzioni.}
$$

### Caso $n = 2$ (Equazione in due variabili)

Consideriamo l'equazione lineare in due incognite:
$$
a_1 x_1 + a_2 x_2 = b
$$
L'insieme delle soluzioni in $\mathbb{R}^2$ è dato da:
$$
S = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 \;\middle|\; a_1 x_1 + a_2 x_2 = b \right\} \subseteq \mathbb{R}^2
$$

Si analizzano i diversi casi sui coefficienti:

- **Se $a_1 \neq 0$:**
  Possiamo esplicitare la variabile $x_1$ in funzione di $x_2$:
  $$
  x_1 = -\frac{a_2}{a_1} x_2 + \frac{b}{a_1}
  $$
  Assegnando alla variabile $x_2$ il ruolo di variabile libera (parametro reale), poniamo:
  $$
  x_2 := t \quad (\text{variabile libera / parametro})
  $$
  L'insieme delle soluzioni diventa:
  $$
  S = \left\{ \begin{pmatrix} -\frac{a_2}{a_1} t + \frac{b}{a_1} \\ t \end{pmatrix} \in \mathbb{R}^2 \;\middle|\; t \in \mathbb{R} \right\} \subseteq \mathbb{R}^2
  $$
  Geometricamente, $S$ descrive una **retta** nel piano cartesiano ($\infty$ soluzioni dipendenti da un parametro reale).

- **Se $a_1 = 0$ e $a_2 \neq 0$:**
  Ci si riconduce al caso ad $1$ variabile per $x_2$:
  $$
  x_2 = \frac{b}{a_2}
  $$
  mentre la variabile $x_1$ risulta completamente libera. Ponendo $x_1 := t$, si ha:
  $$
  S = \left\{ \begin{pmatrix} t \\ \frac{b}{a_2} \end{pmatrix} \in \mathbb{R}^2 \;\middle|\; t \in \mathbb{R} \right\} \subseteq \mathbb{R}^2
  $$
  che rappresenta una retta orizzontale in $\mathbb{R}^2$.

- **Se $a_1 = 0, a_2 = 0$ e $b \neq 0$:**
  L'equazione $0 \cdot x_1 + 0 \cdot x_2 = b$ non è mai soddisfatta:
  $$
  S = \emptyset
  $$

- **Se $a_1 = 0, a_2 = 0$ e $b = 0$:**
  L'equazione $0 \cdot x_1 + 0 \cdot x_2 = 0$ è un'identità banale soddisfatta da qualsiasi coppia di reali:
  $$
  S = \mathbb{R}^2 \quad (\infty^2 \text{ soluzioni})
  $$

### Caso Generale $n \ge 2$ ($n$ variabili)

Data una singola equazione lineare a coefficienti reali:
$$
a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b
$$

- **Se esiste almeno un coefficiente non nullo**, ovvero esiste un indice $i \in \{1, \dots, n\}$ tale che $a_i \neq 0$:
  Si isola la variabile $x_i$:
  $$
  x_i = \frac{b}{a_i} - \sum_{j \neq i} \frac{a_j}{a_i} x_j
  $$
  Le restanti $n - 1$ variabili vengono assunte come variabili libere (parametri indipendenti). In questo modo si determina univocamente lo spazio delle soluzioni $S$, che geometricamente costituisce un **iperpiano affine** di dimensione $n - 1$ immerso in $\mathbb{R}^n$ (ammette $\infty^{n-1}$ soluzioni).
- **Se tutti i coefficienti sono nulli e il termine noto è non nullo:**
  $$
  a_1 = a_2 = \dots = a_n = 0 \quad \land \quad b \neq 0 \implies S = \emptyset
  $$
- **Se tutti i coefficienti e il termine noto sono nulli:**
  $$
  a_1 = a_2 = \dots = a_n = b = 0 \implies S = \mathbb{R}^n
  $$

## 1.8. Sistemi Lineari

> [!definition] Sistema Lineare in Forma Standard
> Un **sistema lineare** di $m$ equazioni in $n$ incognite a coefficienti reali è un insieme di relazioni algebriche lineari simultanee espresse nella **forma standard**:
> $$
> \begin{cases}
> a_{1,1} x_1 + a_{1,2} x_2 + \dots + a_{1,n} x_n = b_1 \\
> a_{2,1} x_1 + a_{2,2} x_2 + \dots + a_{2,n} x_n = b_2 \\
> \quad \vdots \\
> a_{m-1,1} x_1 + a_{m-1,2} x_2 + \dots + a_{m-1,n} x_n = b_{m-1} \\
> a_{m,1} x_1 + a_{m,2} x_2 + \dots + a_{m,n} x_n = b_m
> \end{cases}
> \tag{$\star$}
> $$
> dove:
> - $m$ indica il numero di equazioni (righe);
> - $n$ indica il numero di variabili / incognite (colonne);
> - $a_{i,j} \in \mathbb{R}$ è il **coefficiente** della variabile $x_j$ nell'equazione $i$-esima ($i$ individua l'indice di riga, $j$ l'indice di colonna);
> - $b_i \in \mathbb{R}$ è il **termine noto** dell'equazione $i$-esima ($i$ individua l'indice di riga).

> [!definition] Spazio delle Soluzioni di un Sistema Lineare
> L'**insieme (o spazio) delle soluzioni** del sistema lineare $(\star)$ è il sottoinsieme dei vettori colonna $\mathbf{x} \in \mathbb{R}^n$ che soddisfano simultaneamente tutte le $m$ equazioni:
> $$
> S = \left\{ \mathbf{x} = \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} \in \mathbb{R}^n : \text{vale } (\star) \right\} \subseteq \mathbb{R}^n
> $$

> [!example] Sistema Lineare $2 \times 3$
> Si consideri il seguente sistema di $m = 2$ equazioni in $n = 3$ incognite:
> $$
> \begin{cases}
> x_1 + x_2 - x_3 = 1 \\
> 2x_1 + x_2 + x_3 = 0
> \end{cases}
> $$
>
### Metodi di Risoluzione

Come si risolve un sistema lineare?

**Metodo 1: Risoluzione per Sostituzione**
Il metodo classico procede secondo i seguenti passi algebrici:
1. Si risolve un'equazione rispetto a una variabile specifica.
2. Si sostituisce l'espressione trovata nelle restanti equazioni.
3. Si ripete iterativamente la procedura fino ad esaurire le equazioni.
4. Si determinano le variabili rimanenti sostituendo a ritroso.

Applicando il metodo all'esempio precedente:
$$
\begin{cases}
x_1 + x_2 - x_3 = 1 \implies x_1 = -x_2 + x_3 + 1 \\
2x_1 + x_2 + x_3 = 0
\end{cases}
$$
Sostituendo l'espressione di $x_1$ nella seconda equazione:
$$
2(-x_2 + x_3 + 1) + x_2 + x_3 = 0
-2x_2 + 2x_3 + 2 + x_2 + x_3 = 0
-x_2 + 3x_3 + 2 = 0 \implies x_2 = 3x_3 + 2
$$
Sostituendo ora a ritroso l'espressione di $x_2$ in $x_1$:
$$
x_1 = -(3x_3 + 2) + x_3 + 1 = -3x_3 - 2 + x_3 + 1 = -2x_3 - 1
$$
Il sistema risolto assume la forma:
$$
\begin{cases}
x_1 = -2x_3 - 1 \\
x_2 = 3x_3 + 2
\end{cases}
$$
La variabile $x_3$ non è vincolata da alcun pivot: essa agisce come **variabile libera**. Poniamo pertanto il parametro:
$$
x_3 := t, \quad t \in \mathbb{R}
$$
da cui:
$$
\begin{cases}
x_1 = -2t - 1 \\
x_2 = 3t + 2 \\
x_3 = t
\end{cases}
$$
Esprimendo la soluzione in forma vettoriale ed effettuando la scomposizione delle componenti (separazione delle matrici):
$$
\begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} -2t - 1 \\ 3t + 2 \\ t \end{pmatrix} = \begin{pmatrix} -1 \\ 2 \\ 0 \end{pmatrix} + t \begin{pmatrix} -2 \\ 3 \\ 1 \end{pmatrix}
$$
Lo spazio delle soluzioni è dunque una **retta** affine in $\mathbb{R}^3$:
$$
S = \left\{ \begin{pmatrix} -1 \\ 2 \\ 0 \end{pmatrix} + t \begin{pmatrix} -2 \\ 3 \\ 1 \end{pmatrix} \;\middle|\; t \in \mathbb{R} \right\} \subseteq \mathbb{R}^3
$$

**Metodo 2: Algoritmo di Gauss**
Per sistemi con molte variabili ed equazioni, il metodo di sostituzione diretta diviene presto intrattabile. Si ricorre quindi all'**Algoritmo di Gauss**, operando sistematicamente per mezzo delle **matrici**.

## 1.9. Matrici

> [!definition] Matrice di tipo $m \times n$
> Dati due interi $m, n \in \mathbb{N}$, una **matrice** di tipo $m \times n$ a coefficienti reali è una tabella rettangolare di numeri ordinati su $m$ righe ed $n$ colonne:
> $$
> A = \begin{pmatrix}
> a_{1,1} & a_{1,2} & \dots & a_{1,n} \\
> a_{2,1} & a_{2,2} & \dots & a_{2,n} \\
> \vdots & \vdots & \ddots & \vdots \\
> a_{m,1} & a_{m,2} & \dots & a_{m,n}
> \end{pmatrix}
> $$
> Convenzione grafica sui delimitatori: si utilizzano parentesi tonde oppure quadre, **mai parentesi graffe**.

> [!example] Matrice $3 \times 4$
> $$
> \begin{pmatrix}
> 1 & 0 & 2 & \sqrt{3} \\
> \pi & -1 & 0 & 1 \\
> 4 & 3 & 2\sqrt{7} & 8
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(3, 4)
> $$
>
**Casi particolari:**
- **Vettori colonna:** matrici con una sola colonna ($m \times 1$):
  $$
  \mathbf{x} = \begin{pmatrix} x_1 \\ \vdots \\ x_m \end{pmatrix}
  $$
- **Vettori riga:** matrici con una sola riga ($1 \times n$):
  $$
  \mathbf{x} = \begin{pmatrix} x_1 & \dots & x_n \end{pmatrix}
  $$

## 1.10. Sistemi e Matrici

> [!definition] Matrice Completa del Sistema
> Dato un sistema lineare di $m$ equazioni in $n$ incognite in forma standard:
> $$
> \begin{cases}
> a_{1,1} x_1 + a_{1,2} x_2 + \dots + a_{1,n} x_n = b_1 \\
> a_{2,1} x_1 + a_{2,2} x_2 + \dots + a_{2,n} x_n = b_2 \\
> \quad \vdots \\
> a_{m,1} x_1 + a_{m,2} x_2 + \dots + a_{m,n} x_n = b_m
> \end{cases}
> $$
> si definisce **matrice completa** del sistema (indicata con $(A \mid \mathbf{b})$) la matrice di tipo $m \times (n+1)$ contenente sia i coefficienti sia i termini noti:
> $$
> (A \mid \mathbf{b}) = \begin{pmatrix}
> a_{1,1} & a_{1,2} & \dots & a_{1,n} & b_1 \\
> a_{2,1} & a_{2,2} & \dots & a_{2,n} & b_2 \\
> \vdots & \vdots & \ddots & \vdots & \vdots \\
> a_{m,1} & a_{m,2} & \dots & a_{m,n} & b_m
> \end{pmatrix}
> $$

> [!example] Esempi di Matrice Completa
> 1. Dato il sistema già in forma standard:
>    $$
>    \begin{cases}
>    2x_1 - x_2 + x_3 = 4 \\
>    x_1 + x_2 - x_3 = 0
>    \end{cases}
>    \longrightarrow
>    \begin{pmatrix}
>    2 & -1 & 1 & 4 \\
>    1 & 1 & -1 & 0
>    \end{pmatrix}
>    $$
> 2. Dato un sistema non in forma standard:
>    $$
>    \begin{cases}
>    x + y = z \\
>    z - x + 2 = 0
>    \end{cases}
>    $$
>    Riordinando opportunamente le incognite a sinistra e portando i termini noti a destra:
>    $$
>    \begin{cases}
>    x + y - z = 0 \\
>    -x + 0y + z = -2
>    \end{cases}
>    \longrightarrow
>    \begin{pmatrix}
>    1 & 1 & -1 & 0 \\
>    -1 & 0 & 1 & -2
>    \end{pmatrix}
>    $$
>
## 1.11. Algoritmo di Eliminazione di Gauss

> [!definition] Sistemi Lineari Equivalenti
> Due sistemi lineari si dicono **equivalenti** se e solo se hanno esattamente lo stesso insieme delle soluzioni.

> [!example] Sistemi Equivalenti
> L'equazione $2x_1 + 3x_2 = 1$ è equivalente all'equazione $8x_1 + 12x_2 = 4$ (ottenuta moltiplicando ambo i membri per la costante $4 \neq 0$).
>
**Idea di base dell'Algoritmo di Gauss:**
Si parte da un sistema lineare qualunque e si applica una successione finita di operazioni elementari che **semplificano** il sistema preservandone rigorosamente l'insieme delle soluzioni.

### Operazioni Elementari sulle Righe (Mosse di Gauss)

Le mosse di Gauss sono trasformazioni applicate alle equazioni del sistema (ovvero alle righe della sua matrice completa) che generano un sistema equivalente:

1. **Scambiare due equazioni (righe):**
   $$
   \text{eq. } i \longleftrightarrow \text{eq. } j \iff R_i \longleftrightarrow R_j
   $$
2. **Moltiplicare un'equazione per una costante non nulla $c \neq 0$:**
   $$
   c \cdot (\text{eq. } i) \iff c R_i \quad (c \neq 0)
   $$
3. **Sommare a un'equazione il multiplo di un'altra equazione:**
   $$
   \text{eq. } i + c \cdot (\text{eq. } j) \iff R_i + c R_j \quad (i \neq j)
   $$

### Matrici a Scala

> [!definition] Matrice a Scala (Row-Echelon Form - REF)
> Una matrice si dice **a scala** se soddisfa simultaneamente le due seguenti proprietà:
> 1. **Ogni riga non nulla inizia con strettamente più zeri della riga precedente.**
> 2. **Le eventuali righe interamente nulle si trovano tutte al di sotto delle righe non nulle.**

> [!example] Esempi e Controesempi di Matrici a Scala
> - **Esempio valido di matrice a scala:**
>   $$
>   \begin{pmatrix}
>   1 & 2 & 3 \\
>   0 & 1 & 2 \\
>   0 & 0 & 1 \\
>   0 & 0 & 0
>   \end{pmatrix}
>   $$
>   Il profilo dei gradini mostra che ogni riga non nulla ha un numero strettamente crescente di zeri iniziali e la riga nulla è posta sul fondo.
> - **Controesempio (NON a scala):**
>   $$
>   \begin{pmatrix}
>   2 & 2 & 3 \\
>   1 & 0 & 0 \\
>   0 & 0 & 0
>   \end{pmatrix}
>   $$
>   La seconda riga inizia con zero zeri, esattamente come la prima riga: la condizione sul numero crescente di zeri non è verificata.
> - **Altri esempi di matrici a scala:**
>   $$
>   \begin{pmatrix} 1 & 2 & 3 \end{pmatrix} \quad (\text{a scala per convenzione})
>   \begin{pmatrix}
>   1 & 2 & 3 \\
>   0 & 4 & 0
>   \end{pmatrix} \quad (\text{a scala})
>   $$

> [!theorem] Teorema di Riduzione a Scala
> Applicando una successione finita di mosse elementari di Gauss ①, ②, ③, è sempre possibile ridurre **qualsiasi matrice** a una **matrice a scala**.

> [!example] Esempio di Riduzione di Gauss
>
> Si consideri la matrice:
> $$
> \begin{pmatrix}
> 0 & 2 & 3 & 8 \\
> 2 & 3 & 1 & 5 \\
> 1 & -1 & -2 & -5
> \end{pmatrix}
> $$
> La matrice non è a scala poiché la prima riga inizia con uno zero mentre la seconda e la terza non presentano zeri iniziali.
>
> **Passo 1: Scambio di righe per portare un elemento non nullo in posizione $(1,1)$**
> Scambiamo la prima riga con la terza ($R_1 \longleftrightarrow R_3$):
> $$
> \begin{pmatrix}
> 0 & 2 & 3 & 8 \\
> 2 & 3 & 1 & 5 \\
> 1 & -1 & -2 & -5
> \end{pmatrix}
> \xrightarrow{R_1 \longleftrightarrow R_3}
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 2 & 3 & 1 & 5 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> $$
>
> **Passo 2: Eliminazione sotto il primo elemento guida**
> Sostituiamo la seconda riga con $R_2 - 2R_1$:
> $$
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 2 & 3 & 1 & 5 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> \xrightarrow{R_2 - 2R_1}
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 0 & 5 & 5 & 15 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> $$
>
> **Passo 3: Semplificazione della seconda riga**
> Dividiamo la seconda riga per $5$ ($\frac{R_2}{5}$):
> $$
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 0 & 5 & 5 & 15 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> \xrightarrow{\frac{1}{5}R_2}
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 0 & 1 & 1 & 3 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> $$
>
> **Passo 4: Eliminazione sotto il secondo elemento guida**
> Sostituiamo la terza riga con $R_3 - 2R_2$:
> $$
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 0 & 1 & 1 & 3 \\
> 0 & 2 & 3 & 8
> \end{pmatrix}
> \xrightarrow{R_3 - 2R_2}
> \begin{pmatrix}
> 1 & -1 & -2 & -5 \\
> 0 & 1 & 1 & 3 \\
> 0 & 0 & 1 & 2
> \end{pmatrix}
> $$
> La matrice ottenuta è ora **a scala**.
>
>
### Risoluzione del Sistema Tramite la Forma a Scala

Cosa accade interpretando la matrice come matrice completa di un sistema lineare?
Il sistema originale:
$$
\begin{pmatrix}
0 & 2 & 3 & 8 \\
2 & 3 & 1 & 5 \\
1 & -1 & -2 & -5
\end{pmatrix}
\iff
\begin{cases}
2x_2 + 3x_3 = 8 \\
2x_1 + 3x_2 + x_3 = 5 \\
x_1 - x_2 - 2x_3 = -5
\end{cases}
$$
è equivalente al sistema associato alla matrice ridotta a scala:
$$
\begin{pmatrix}
1 & -1 & -2 & -5 \\
0 & 1 & 1 & 3 \\
0 & 0 & 1 & 2
\end{pmatrix}
\iff
\begin{cases}
x_1 - x_2 - 2x_3 = -5 \\
x_2 + x_3 = 3 \\
x_3 = 2
\end{cases}
$$
Questo sistema si risolve a ritroso in modo immediato (**sostituzione all'indietro**):
1. Dalla terza equazione:
   $$
   x_3 = 2
   $$
2. Sostituendo $x_3$ nella seconda equazione:
   $$
   x_2 + 2 = 3 \implies x_2 = 1
   $$
3. Sostituendo $x_2$ e $x_3$ nella prima equazione:
   $$
   x_1 - 1 - 2(2) = -5 \implies x_1 - 5 = -5 \implies x_1 = 0
   $$

Il sistema ha dunque un'unica soluzione:
$$
\begin{cases}
x_1 = 0 \\
x_2 = 1 \\
x_3 = 2
\end{cases}
\implies
S = \left\{ \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix} \right\}
$$

### Definizione e Schema Generale dell'Algoritmo di Gauss

> [!definition] Sistema Lineare a Scala
> Un sistema lineare si dice **a scala** se la sua matrice completa è una matrice a scala.

> [!note] Schema Operativo: Algoritmo di Gauss per Sistemi Lineari
> Per risolvere un sistema lineare arbitrario:
> 1. **Fase di Eliminazione (in avanti):** Si utilizzano le mosse di Gauss per ridurre la matrice completa del sistema a forma a scala.
> 2. **Fase di Risoluzione (all'indietro):** Si determinano le soluzioni del sistema triangolarizzato mediante sostituzione a ritroso.

> [!example] Esempio: Sistema Lineare Impossibile
>
> Si consideri il sistema lineare:
> $$
> \begin{cases}
> x_1 + x_2 + x_3 = 3 \\
> -x_1 + x_2 = 0 \\
> 2x_2 + x_3 = 0
> \end{cases}
> $$
> Scriviamo la matrice completa e applichiamo l'eliminazione gaussiana:
> $$
> \begin{pmatrix}
> 1 & 1 & 1 & 3 \\
> -1 & 1 & 0 & 0 \\
> 0 & 2 & 1 & 0
> \end{pmatrix}
> \xrightarrow{R_2 + R_1}
> \begin{pmatrix}
> 1 & 1 & 1 & 3 \\
> 0 & 2 & 1 & 3 \\
> 0 & 2 & 1 & 0
> \end{pmatrix}
> \xrightarrow{R_3 - R_2}
> \begin{pmatrix}
> 1 & 1 & 1 & 3 \\
> 0 & 2 & 1 & 3 \\
> 0 & 0 & 0 & -3
> \end{pmatrix}
> $$
> Riscrivendo il sistema associato alla matrice ridotta a scala:
> $$
> \begin{cases}
> x_1 + x_2 + x_3 = 3 \\
> 2x_2 + x_3 = 3 \\
> 0 \cdot x_1 + 0 \cdot x_2 + 0 \cdot x_3 = -3
> \end{cases}
> $$
> La terza equazione assume la forma $0 = -3$, la quale è palesemente **impossibile**.
> Di conseguenza, il sistema non ammette alcuna soluzione:
> $$
> S = \emptyset
> $$
>
>
### Definizione di Pivot

> [!definition] Pivot
> In una matrice a scala, il **primo elemento non nullo** di ciascuna riga non nulla è detto **pivot** (o elemento guida).

> [!example] Individuazione dei Pivot
> Si consideri la seguente matrice a scala:
> $$
> \begin{pmatrix}
> 0 & \mathbf{2} & 0 & 3 & -1 \\
> 0 & 0 & 0 & \mathbf{4} & 5 \\
> 0 & 0 & 0 & 0 & 0
> \end{pmatrix}
> $$
> - Nella prima riga il primo elemento non nullo è $2$ (colonna 2);
> - Nella seconda riga il primo elemento non nullo è $4$ (colonna 4);
> - La terza riga è interamente nulla e pertanto priva di pivot.
> 
> I pivot della matrice sono quindi $\mathbf{2}$ e $\mathbf{4}$.
>
## 1.12. Algoritmo di Gauss-Jordan

> [!definition] Matrice a Scala Ridotta per Righe (RREF)
> Data una qualunque matrice $A$, è sempre possibile applicare le mosse di Gauss in modo da ottenere una matrice $A'$ che soddisfa le seguenti tre proprietà:
> 1. $A'$ è **a scala**;
> 2. **Tutti i pivot sono uguali a $1$**;
> 3. **Ogni pivot è l'unico elemento non nullo nella propria colonna** (tutti gli elementi sopra e sotto il pivot sono azzerati).
> 
> Tale forma canonica prende il nome di **forma a scala ridotta per righe** (Reduced Row-Echelon Form - RREF).

> [!example] Risoluzione Tramite Gauss-Jordan
> Si consideri il sistema lineare nelle variabili $x_1, x_2, x_3, x_4$:
> $$
> \begin{cases}
> 2x_1 - 6x_2 + 2x_3 - 4x_4 = 2 \\
> -3x_1 + 9x_2 + 3x_3 = -9
> \end{cases}
> $$
> La matrice completa del sistema è:
> $$
> A = \begin{pmatrix}
> 2 & -6 & 2 & -4 & 2 \\
> -3 & 9 & 3 & 0 & -9
> \end{pmatrix}
> $$
> 
> **Passo 1: Normalizzazione delle righe per scalari**
> Dividiamo la prima riga per $2$ ($\frac{1}{2} R_1$) e la seconda per $3$ ($\frac{1}{3} R_2$):
> $$
> \begin{pmatrix}
> 2 & -6 & 2 & -4 & 2 \\
> -3 & 9 & 3 & 0 & -9
> \end{pmatrix}
> \xrightarrow{\frac{1}{2}R_1, \; \frac{1}{3}R_2}
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> -1 & 3 & 1 & 0 & -3
> \end{pmatrix}
> $$
> 
> **Passo 2: Eliminazione sotto il primo pivot**
> Sommiamo la prima riga alla seconda ($R_2 \leftarrow R_2 + R_1$):
> $$
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> -1 & 3 & 1 & 0 & -3
> \end{pmatrix}
> \xrightarrow{R_2 + R_1}
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> 0 & 0 & 2 & -2 & -2
> \end{pmatrix}
> $$
> 
> **Passo 3: Normalizzazione del secondo pivot**
> Dividiamo la seconda riga per $2$ ($\frac{1}{2} R_2$):
> $$
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> 0 & 0 & 2 & -2 & -2
> \end{pmatrix}
> \xrightarrow{\frac{1}{2}R_2}
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> 0 & 0 & 1 & -1 & -1
> \end{pmatrix}
> $$
> 
> **Passo 4: Eliminazione sopra il secondo pivot (fase di Jordan)**
> Sottraiamo la seconda riga dalla prima ($R_1 \leftarrow R_1 - R_2$):
> $$
> \begin{pmatrix}
> 1 & -3 & 1 & -2 & 1 \\
> 0 & 0 & 1 & -1 & -1
> \end{pmatrix}
> \xrightarrow{R_1 - R_2}
> \begin{pmatrix}
> 1 & -3 & 0 & -1 & 2 \\
> 0 & 0 & 1 & -1 & -1
> \end{pmatrix}
> $$
> La matrice è ora nella forma canonica di **Gauss-Jordan** (RREF).
>
### Ricavo delle Soluzioni dalla Forma Ridotta

Dalla matrice ridotta:
$$
\begin{pmatrix}
1 & -3 & 0 & -1 & 2 \\
0 & 0 & 1 & -1 & -1
\end{pmatrix}
$$
I pivot si trovano nella colonna 1 e nella colonna 3.
Le **variabili associate ai pivot** sono dunque $x_1$ e $x_3$.
Le restanti variabili, $x_2$ e $x_4$, sono **variabili libere**.

Trascrivendo il sistema associato:
$$
\begin{cases}
x_1 - 3x_2 - x_4 = 2 \\
x_3 - x_4 = -1
\end{cases}
\implies
\begin{cases}
x_1 = 2 + 3x_2 + x_4 \\
x_3 = x_4 - 1
\end{cases}
$$
Poniamo i parametri reali per le variabili libere:
$$
\begin{cases}
x_2 := t \\
x_4 := s
\end{cases}
\quad (t, s \in \mathbb{R})
$$
Sostituendo nelle espressioni delle variabili pivot:
$$
\begin{cases}
x_1 = 2 + 3t + s \\
x_2 = t \\
x_3 = s - 1 \\
x_4 = s
\end{cases}
$$
Scrivendo la soluzione in forma vettoriale ed esplicitando la combinazione lineare dei parametri:
$$
\begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix}
=
\begin{pmatrix} 2 + 3t + s \\ t \\ s - 1 \\ s \end{pmatrix}
=
\begin{pmatrix} 2 \\ 0 \\ -1 \\ 0 \end{pmatrix}
+ t \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix}
+ s \begin{pmatrix} 1 \\ 0 \\ 1 \\ 1 \end{pmatrix}
$$
Lo spazio delle soluzioni è:
$$
S = \left\{ \begin{pmatrix} 2 \\ 0 \\ -1 \\ 0 \end{pmatrix} + t \begin{pmatrix} 3 \\ 1 \\ 0 \\ 0 \end{pmatrix} + s \begin{pmatrix} 1 \\ 0 \\ 1 \\ 1 \end{pmatrix} \;\middle|\; t, s \in \mathbb{R} \right\} \subseteq \mathbb{R}^4
$$
Geometricamente, $S$ rappresenta un **piano affine** bidimensionale immerso in $\mathbb{R}^4$.

## 1.13. Teoria della Risolubilità dei Sistemi Lineari

> [!definition] Variabili Pivot e Variabili Libere
> Dato un sistema lineare a scala (ovvero un sistema la cui matrice completa è ridotta a scala), si definiscono:
> - **Variabili pivot (o dipendenti / vincolate):** le incognite corrispondenti alle colonne della matrice dei coefficienti che contengono un pivot;
> - **Variabili libere (o indipendenti / parametri):** tutte le altre incognite, corrispondenti alle colonne prive di pivot.

> [!example] Classificazione delle Variabili
> Nel sistema lineare risolto precedentemente:
> - Le colonne con pivot sono la $1^{\text{a}}$ e la $3^{\text{a}} \implies$ **Variabili pivot:** $x_1, x_3$.
> - Le colonne senza pivot sono la $2^{\text{a}}$ e la $4^{\text{a}} \implies$ **Variabili libere:** $x_2, x_4$.
>
### Equazioni Lineari Degeneri

> [!definition] Equazione Lineare Degenere
> Un'equazione lineare si dice **degenere** se tutti i suoi coefficienti sono identicamente nulli:
> $$
> 0 \cdot x_1 + 0 \cdot x_2 + \dots + 0 \cdot x_n = b
> $$
> Per tale equazione si distinguono due comportamenti:
> - **Se $b \neq 0$:** l'equazione $0 = b$ è palesemente falsa $\implies$ equazione **impossibile**, con insieme delle soluzioni:
>   $$
>   S = \emptyset
>   $$
> - **Se $b = 0$:** l'equazione $0 = 0$ è un'identità sempre verificata $\implies$ equazione **indeterminata**, con insieme delle soluzioni:
>   $$
>   S = \mathbb{R}^n
>   $$

> [!note] Principio Fondamentale di Gauss-Jordan
> L'algoritmo di Gauss-Jordan opera esprimendo in modo diretto e disaccoppiato ciascuna **variabile pivot in funzione esclusiva delle variabili libere (parametri)**.
>
### Teorema sui Sistemi a Scala (Rouché-Capelli)

> [!theorem] Teorema di Risolubilità dei Sistemi a Scala
> Sia dato un sistema lineare ridotto a scala di $m$ equazioni in $n$ incognite. Siano:
> - $n$ il numero di variabili (incognite);
> - $r$ il numero di pivot della matrice dei coefficienti ($r = \mathrm{rk}(A)$).
> 
> Allora:
> 1. **Condizione di compatibilità:** Il sistema ammette almeno una soluzione se e solo se non compaiono equazioni degeneri impossibili del tipo $0 = 1$ (ovvero $0 = b$ con $b \neq 0$).
>    $$
>    \text{Il sistema è compatibile} \iff \textbf{non ci sono pivot nella colonna dei termini noti.}
>    $$
> 2. **Gradi di libertà:** Se il sistema è compatibile, l'insieme delle soluzioni ammette esattamente:
>    $$
>    n - r \quad \textbf{variabili libere (gradi di libertà)}
>    $$
>    Lo spazio delle soluzioni ammette pertanto $\infty^{n-r}$ soluzioni.
> 3. **Unicità della soluzione:** In particolare, se $n = r$ (e il sistema è compatibile), non vi sono variabili libere ($n - r = 0$) e il sistema ammette un'**unica soluzione determinata**.
>
## 1.14. Operazioni tra Matrici

## 1.15. Insieme delle Matrici $\mathrm{Mat}_{\mathbb{R}}(m,n)$

> [!definition] Insieme $\mathrm{Mat}_{\mathbb{R}}(m,n)$
> Si denota con $\mathrm{Mat}_{\mathbb{R}}(m, n)$ (o $\mathcal{M}_{m \times n}(\mathbb{R})$) l'insieme di tutte le matrici a coefficienti reali aventi $m$ righe ed $n$ colonne.
>
**Casi notevoli:**
- $\mathrm{Mat}(m, 1)$: spazio dei **vettori colonna** di dimensione $m$;
- $\mathrm{Mat}(1, n)$: spazio dei **vettori riga** di dimensione $n$;
- $\mathrm{Mat}(n, n)$: spazio delle **matrici quadrate** di ordine $n$.

### Notazione Matriciale
Una generica matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ è scritta esplicitamente come:
$$
A = \begin{pmatrix}
a_{1,1} & a_{1,2} & \dots & a_{1,n} \\
\vdots & \vdots & \ddots & \vdots \\
a_{m,1} & a_{m,2} & \dots & a_{m,n}
\end{pmatrix}
$$
oppure in forma sintetica:
$$
A = (a_{i,j})
$$
L'elemento situato all'incrocio tra la riga $i$ e la colonna $j$ si denota indifferentemente con:
$$
(A)_{i,j} = a_{i,j}
$$

> [!example] Notazione per Elementi
> Sia:
> $$
> A = \begin{pmatrix}
> 0 & \sqrt{2} & \pi \\
> 1 & -1 & 3
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 3)
> $$
> I singoli ingressi sono ad esempio:
> $$
> (A)_{1,3} = \pi, \qquad (A)_{2,2} = a_{2,2} = -1
> $$
>
## 1.16. Somma tra Matrici

> [!definition] Addizione tra Matrici
> Siano $A = (a_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ e $B = (b_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ due matrici aventi la stessa taglia dimensionale.
> Si definisce la loro **somma** $A + B \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ come la matrice i cui elementi sono la somma termine a termine degli elementi corrispondenti:
> $$
> A + B = (a_{i,j} + b_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)
> $$

> [!example] Somma di Matrici
> $$
> \begin{pmatrix}
> 0 & 1 & 2 \\
> 3 & 0 & 5
> \end{pmatrix}
> +
> \begin{pmatrix}
> -1 & -2 & 0 \\
> 0 & 1 & 1
> \end{pmatrix}
> =
> \begin{pmatrix}
> 0 + (-1) & 1 + (-2) & 2 + 0 \\
> 3 + 0 & 0 + 1 & 5 + 1
> \end{pmatrix}
> =
> \begin{pmatrix}
> -1 & -1 & 2 \\
> 3 & 1 & 6
> \end{pmatrix}
> $$
>
## 1.17. Prodotto di una Matrice per uno Scalare

> [!definition] Moltiplicazione per uno Scalare
> Sia $A = (a_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ una matrice e sia $c \in \mathbb{R}$ uno scalare.
> Si definisce il **prodotto per scalare** $cA \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ moltiplicando ogni singolo elemento di $A$ per $c$:
> $$
> cA = (c \cdot a_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)
> $$

> [!example] Prodotto per uno Scalare
> $$
> -3 \begin{pmatrix}
> 1 & 2 & 3 \\
> 4 & 0 & 0
> \end{pmatrix}
> =
> \begin{pmatrix}
> -3 \cdot 1 & -3 \cdot 2 & -3 \cdot 3 \\
> -3 \cdot 4 & -3 \cdot 0 & -3 \cdot 0
> \end{pmatrix}
> =
> \begin{pmatrix}
> -3 & -6 & -9 \\
> -12 & 0 & 0
> \end{pmatrix}
> $$

> [!note] Struttura di Spazio Vettoriale
> Le proprietà algebriche della somma tra matrici e del prodotto di una matrice per uno scalare sono esattamente le medesime proprietà valide nello spazio vettoriale euclideo $\mathbb{R}^n$.
>
### Elemento Neutro della Somma
Esiste un'unica matrice $\mathbb{O} \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ (la **matrice nulla**) tale che:
$$
\mathbb{O} + A = A, \quad \forall A \in \mathrm{Mat}_{\mathbb{R}}(m, n)
$$
Essa coincide con la matrice i cui elementi sono tutti nulli:
$$
\mathbb{O} = (0 \cdot a_{i,j}) = (0)_{i,j} \quad \forall i, j
$$

## 1.18. Trasposta di una Matrice

> [!definition] Matrice Trasposta
> Sia $A = (a_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(m, n)$.
> Si definisce **matrice trasposta** di $A$, indicata con $A^T$, la matrice di tipo $n \times m$ ottenuta scambiando ordinatamente le righe con le colonne di $A$:
> $$
> A^T = (a_{j,i}) \in \mathrm{Mat}_{\mathbb{R}}(n, m)
> $$
> ovvero l'elemento di riga $i$ e colonna $j$ di $A^T$ è l'elemento di riga $j$ e colonna $i$ di $A$:
> $$
> (A^T)_{i,j} = (A)_{j,i}
> $$

> [!example] Trasposizione di una Matrice $2 \times 3$
> $$
> \begin{pmatrix}
> 1 & 2 & 3 \\
> 0 & 2 & 0
> \end{pmatrix}^T
> =
> \begin{pmatrix}
> 1 & 0 \\
> 2 & 2 \\
> 3 & 0
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(3, 2)
> $$
>
## 1.19. Prodotto tra Matrici (Righe per Colonne)

### Caso Preliminare: Prodotto Vettore Riga per Vettore Colonna
Si consideri il prodotto fondamentale tra un vettore riga $\mathbf{a} \in \mathrm{Mat}_{\mathbb{R}}(1, n)$ e un vettore colonna $\mathbf{b} \in \mathrm{Mat}_{\mathbb{R}}(n, 1)$:
$$
\mathbf{a} = \begin{pmatrix} a_1 & a_2 & \dots & a_n \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(1, n)
\mathbf{b} = \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_n \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(n, 1)
$$
Il loro prodotto $\mathbf{a} \, \mathbf{b}$ è uno **scalare** reale ($1 \times 1$ identificato con $\mathbb{R}$):
$$
\mathbf{a} \, \mathbf{b} = \begin{pmatrix} a_1 & a_2 & \dots & a_n \end{pmatrix} \begin{pmatrix} b_1 \\ b_2 \\ \vdots \\ b_n \end{pmatrix} = a_1 b_1 + a_2 b_2 + \dots + a_n b_n \in \mathbb{R}
$$
In forma compatta di sommatoria:
$$
\mathbf{a} \, \mathbf{b} = \sum_{i=1}^n a_i b_i
$$

> [!example] Prodotto Riga per Colonna
> Siano:
> $$
> \mathbf{a} = \begin{pmatrix} 1 & 2 & 3 \end{pmatrix}, \qquad \mathbf{b} = \begin{pmatrix} -1 \\ 2 \\ 3 \end{pmatrix}
> $$
> Allora:
> $$
> \mathbf{a} \, \mathbf{b} = (1)(-1) + (2)(2) + (3)(3) = -1 + 4 + 9 = 12
> $$
>
### Caso Generale: Prodotto Matrice per Matrice

> [!definition] Prodotto Righe per Colonne
> Siano $A \in \mathrm{Mat}_{\mathbb{R}}(m, p)$ e $B \in \mathrm{Mat}_{\mathbb{R}}(p, n)$.
> Affinché il prodotto $AB$ sia ben definito, **il numero di colonne della prima matrice deve essere uguale al numero di righe della seconda matrice** ($p$).
> 
> La matrice prodotto $C = AB$ è una matrice di taglia $m \times n$:
> $$
> AB \in \mathrm{Mat}_{\mathbb{R}}(m, n)
> $$
> il cui generico elemento $(AB)_{i,j}$ all'incrocio tra la riga $i$ e la colonna $j$ è dato dal prodotto scalare della $i$-esima riga di $A$ per la $j$-esima colonna di $B$:
> $$
> (AB)_{i,j} = \sum_{k=1}^p a_{i,k} b_{k,j} = a_{i,1} b_{1,j} + a_{i,2} b_{2,j} + \dots + a_{i,p} b_{p,j}
> $$

> [!example] Esempio: Calcolo del Prodotto e Non Commutatività
> Siano date le matrici quadrate $A, B \in \mathrm{Mat}_{\mathbb{R}}(2, 2)$:
> $$
> A = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix}_{2 \times \mathbf{2}}, \qquad B = \begin{pmatrix} 5 & 3 \\ 2 & 1 \end{pmatrix}_{\mathbf{2} \times 2}
> $$
> 
> Calcoliamo il prodotto $A B$:
> $$
> A B = \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} \begin{pmatrix} 5 & 3 \\ 2 & 1 \end{pmatrix} = \begin{pmatrix} 1 \cdot 5 + 2 \cdot 2 & 1 \cdot 3 + 2 \cdot 1 \\ 3 \cdot 5 + 4 \cdot 2 & 3 \cdot 3 + 4 \cdot 1 \end{pmatrix} = \begin{pmatrix} 9 & 5 \\ 23 & 13 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
> $$
> 
> Calcoliamo ora il prodotto invertendo l'ordine, $B A$:
> $$
> B A = \begin{pmatrix} 5 & 3 \\ 2 & 1 \end{pmatrix} \begin{pmatrix} 1 & 2 \\ 3 & 4 \end{pmatrix} = \begin{pmatrix} 5 \cdot 1 + 3 \cdot 3 & 5 \cdot 2 + 3 \cdot 4 \\ 2 \cdot 1 + 1 \cdot 3 & 2 \cdot 2 + 1 \cdot 4 \end{pmatrix} = \begin{pmatrix} 14 & 22 \\ 5 & 8 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
> $$
> 
> Si osserva immediatamente che:
> $$
> B A \neq A B \; !!!
> $$

> [!example] Esempio: Prodotto tra Matrici Rettangolari Componibili
> Consideriamo il prodotto tra una matrice $3 \times 2$ ed una matrice $2 \times 4$:
> $$
> \begin{pmatrix} 0 & 1 \\ 1 & 0 \\ 1 & 2 \end{pmatrix} \begin{pmatrix} 0 & 1 & 2 & 3 \\ 1 & 0 & -1 & 4 \end{pmatrix} = \begin{pmatrix} 1 & 0 & -1 & 4 \\ 0 & 1 & 2 & 3 \\ 2 & 1 & 0 & 11 \end{pmatrix}
> $$
> 
> I singoli elementi sono calcolati riga per colonna:
> - Riga 1:
>   - $(0, 1) \cdot (0, 1) = 0 \cdot 0 + 1 \cdot 1 = 1$
>   - $(0, 1) \cdot (1, 0) = 0 \cdot 1 + 1 \cdot 0 = 0$
>   - $(0, 1) \cdot (2, -1) = 0 \cdot 2 + 1 \cdot (-1) = -1$
>   - $(0, 1) \cdot (3, 4) = 0 \cdot 3 + 1 \cdot 4 = 4$
> - Riga 2:
>   - $(1, 0) \cdot (0, 1) = 1 \cdot 0 + 0 \cdot 1 = 0$
>   - $(1, 0) \cdot (1, 0) = 1 \cdot 1 + 0 \cdot 0 = 1$
>   - $(1, 0) \cdot (2, -1) = 1 \cdot 2 + 0 \cdot (-1) = 2$
>   - $(1, 0) \cdot (3, 4) = 1 \cdot 3 + 0 \cdot 4 = 3$
> - Riga 3:
>   - $(1, 2) \cdot (0, 1) = 1 \cdot 0 + 2 \cdot 1 = 2$
>   - $(1, 2) \cdot (1, 0) = 1 \cdot 1 + 2 \cdot 0 = 1$
>   - $(1, 2) \cdot (2, -1) = 1 \cdot 2 + 2 \cdot (-1) = 0$
>   - $(1, 2) \cdot (3, 4) = 1 \cdot 3 + 2 \cdot 4 = 11$

> [!example] Esempio: Incompatibilità Dimensionale nel Prodotto
> Se proviamo ad eseguire la moltiplicazione invertendo l'ordine dei fattori:
> $$
> \begin{pmatrix} 0 & 1 & 2 & 3 \\ 1 & 0 & -1 & 4 \end{pmatrix}_{2 \times \mathbf{4}} \begin{pmatrix} 0 & 1 \\ 1 & 0 \\ 1 & 2 \end{pmatrix}_{\mathbf{3} \times 2} \quad \text{NON È DEFINITO!}
> $$
> Il prodotto non esiste poiché il numero di colonne della prima matrice ($4$) è diverso dal numero di righe della seconda matrice ($3$), ossia $4 \neq 3$.

> [!note] Osservazione: Non Commutatività
> Il prodotto tra matrici **NON È COMMUTATIVO**! In generale $A B \neq B A$. Inoltre, può accadere che $A B$ sia ben definito mentre $B A$ non sia nemmeno calcolabile.
>
### Proprietà Fondamentali del Prodotto tra Matrici

1. **Proprietà Associativa:**
   $$
   (A B) C = A (B C)
   $$
   Verifica delle dimensioni:
   $$
   \begin{matrix}
   ( & A & B & ) & C & = & A & ( & B & C & ) \\
   & \uparrow & \uparrow & & \uparrow & & \uparrow & & \uparrow & \uparrow & \\
   & m \times p & p \times q & & q \times n & & m \times p & & p \times q & q \times n & \\
   & \multicolumn{2}{c}{\underbrace{\hspace{4.5em}}_{m \times q}} & & \downarrow & & \downarrow & & \multicolumn{2}{c}{\underbrace{\hspace{4.5em}}_{p \times n}} & \\
   & \multicolumn{4}{c}{\underbrace{\hspace{9.5em}}_{m \times n}} & = & \multicolumn{4}{c}{\underbrace{\hspace{9.5em}}_{m \times n}} &
   \end{matrix}
   $$

2. **Compatibilità con il Prodotto per Scalare:**
   $$
   \alpha (A B) = (\alpha A) B = A (\alpha B), \qquad \forall \alpha \in \mathbb{R}
   $$

3. **Proprietà Distributiva (a sinistra e a destra):**
   $$
   \begin{aligned}
   A (B + C) &= A B + A C \\
   (A + B) C &= A C + B C
   \end{aligned}
   $$

4. **Esistenza dell'Elemento Neutro:**

> [!definition] Matrice Identità
> Esiste una matrice quadrata $I_n \in \mathrm{Mat}_{\mathbb{R}}(n \times n)$, detta **matrice identità**, definita da:
> $$
> I_n = \begin{pmatrix} 1 & 0 & \dots & 0 \\ 0 & 1 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & 1 \end{pmatrix}
> $$
> ovvero, componente per componente mediante il delta di Kronecker:
> $$
> (I_n)_{i, j} = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \neq j \end{cases}
> $$

> [!proposition] Neutralità della Matrice Identità
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$. Allora la moltiplicazione per la matrice identità della dimensione opportuna lascia la matrice invariata:
> $$
> I_m A = A I_n = A
> $$
> dimensionalmente:
> $$
> \begin{matrix}
> I_m & A & = & A & I_n & = & A \\
> \downarrow & \downarrow & & \downarrow & \downarrow & & \downarrow \\
> m \times \mathbf{m} & \mathbf{m} \times n & & m \times \mathbf{n} & \mathbf{n} \times n & & m \times n
> \end{matrix}
> $$

> [!quote]- Dimostrazione
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m \times n)$ con generico elemento $a_{i, j}$:
> $$
> A = \begin{pmatrix} a_{1, 1} & \dots & a_{1, n} \\ \vdots & \ddots & \vdots \\ a_{m, 1} & \dots & a_{m, n} \end{pmatrix}
> $$
> 
> **Passo 1: Prima uguaglianza ($I_m A = A$)**
> Si ha $I_m A \in \mathrm{Mat}_{\mathbb{R}}(m \times n)$. Calcoliamo l'elemento generico di posto $(i, j)$:
> $$
> (I_m A)_{i, j} = \sum_{k=1}^m (I_m)_{i, k} \, a_{k, j}
> $$
> Poiché $(I_m)_{i, k} = 0$ per tutti i valori di $k \neq i$ e $(I_m)_{i, i} = 1$, possiamo spezzare la sommatoria isolando l'indice $k = i$:
> $$
> (I_m A)_{i, j} = \sum_{k=1}^{i-1} \underbrace{(I_m)_{i, k}}_{= 0} a_{k, j} + \underbrace{(I_m)_{i, i}}_{= 1} a_{i, j} + \sum_{k=i+1}^m \underbrace{(I_m)_{i, k}}_{= 0} a_{k, j} = a_{i, j}
> $$
> Di conseguenza, $(I_m A)_{i, j} = a_{i, j}$ per ogni $i, j$, da cui segue $I_m A = A$.
> 
> **Passo 2: Seconda uguaglianza ($A I_n = A$)**
> Calcoliamo l'elemento generico di posto $(i, j)$ del prodotto $A I_n \in \mathrm{Mat}_{\mathbb{R}}(m \times n)$:
> $$
> (A I_n)_{i, j} = \sum_{k=1}^n a_{i, k} (I_n)_{k, j}
> $$
> Isolando il termine in cui $k = j$:
> $$
> (A I_n)_{i, j} = \sum_{k=1}^{j-1} a_{i, k} \underbrace{(I_n)_{k, j}}_{= 0} + a_{i, j} \underbrace{(I_n)_{j, j}}_{= 1} + \sum_{k=j+1}^n a_{i, k} \underbrace{(I_n)_{k, j}}_{= 0} = a_{i, j}
> $$
> Essendo verificata per ogni $i \le m$ e $j \le n$, si conclude:
> $$
> (A I_n)_{i, j} = a_{i, j} \iff A I_n = A \qquad \blacksquare
> $$

> [!note] Osservazione: Divisori dello Zero
> Nel prodotto matriciale **non vale la legge di annullamento del prodotto**: si può avere $A B = 0$ con $A \neq 0$ e $B \neq 0$.
> Ad esempio:
> $$
> \begin{pmatrix} 1 & -2 \\ -1 & 2 \end{pmatrix} \begin{pmatrix} 2 & 4 \\ 1 & 2 \end{pmatrix} = \begin{pmatrix} 1 \cdot 2 + (-2) \cdot 1 & 1 \cdot 4 + (-2) \cdot 2 \\ -1 \cdot 2 + 2 \cdot 1 & -1 \cdot 4 + 2 \cdot 2 \end{pmatrix} = \begin{pmatrix} 0 & 0 \\ 0 & 0 \end{pmatrix}
> $$
>
### Prodotto e Trasposizione

> [!proposition] Trasposta del Prodotto
> Siano $A$ e $B$ matrici componibili rispetto al prodotto matriciale. Allora la trasposta del loro prodotto è data dal prodotto delle trasposte in ordine invertito:
> $$
> (A B)^T = B^T A^T
> $$

> [!quote]- Dimostrazione
> Siano $A \in \mathrm{Mat}_{\mathbb{R}}(m, p)$ e $B \in \mathrm{Mat}_{\mathbb{R}}(p, n)$.
> Per definizione di prodotto matriciale:
> $$
> (A B)_{i, j} = \sum_{k=1}^p a_{i, k} b_{k, j}
> $$
> L'elemento di posto $(i, j)$ della matrice trasposta $(A B)^T$ corrisponde all'elemento di posto $(j, i)$ di $A B$:
> $$
> \left((A B)^T\right)_{i, j} = (A B)_{j, i} = \sum_{k=1}^p a_{j, k} b_{k, i}
> $$
> 
> Consideriamo ora $B^T A^T$:
> Si ha $B^T \in \mathrm{Mat}_{\mathbb{R}}(n, p)$ e $A^T \in \mathrm{Mat}_{\mathbb{R}}(p, m)$. Poiché il numero di colonne di $B^T$ è pari al numero di righe di $A^T$ ($p = p$), il prodotto $B^T A^T$ esiste ed appartiene a $\mathrm{Mat}_{\mathbb{R}}(n, m)$.
> 
> Per comodità di notazione, poniamo:
> $$
> \begin{cases}
> (B^T)_{i, j} = b_{j, i} := d_{i, j} \\
> (A^T)_{i, j} = a_{j, i} := c_{i, j}
> \end{cases}
> $$
> Calcolando l'elemento $(i, j)$ del prodotto $B^T A^T$:
> $$
> (B^T A^T)_{i, j} = \sum_{k=1}^p d_{i, k} c_{k, j} = \sum_{k=1}^p b_{k, i} a_{j, k} = \sum_{k=1}^p a_{j, k} b_{k, i}
> $$
> Confrontando i due risultati:
> $$
> (B^T A^T)_{i, j} = \left((A B)^T\right)_{i, j}, \qquad \forall i, j
> $$
> da cui si ottiene l'uguaglianza matriciale:
> $$
> (A B)^T = B^T A^T \qquad \blacksquare
> $$
>
## 1.20. Forma Matriciale dei Sistemi Lineari

## 1.21. Definizione del Sistema in Forma Matriciale

Dato un sistema lineare in forma standard di $m$ equazioni in $n$ variabili:
$$
\begin{cases}
a_{1, 1} x_1 + \dots + a_{1, n} x_n = b_1 \\
\vdots \\
a_{m, 1} x_1 + \dots + a_{m, n} x_n = b_m
\end{cases}
$$

Si definiscono le seguenti entità:
1. **Matrice dei coefficienti:**
   $$
   A = \begin{pmatrix} a_{1, 1} & \dots & a_{1, n} \\ \vdots & \ddots & \vdots \\ a_{m, 1} & \dots & a_{m, n} \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(m, n)
   $$
2. **Vettore (colonna) dei termini noti:**
   $$
   \mathbf{b} = \begin{pmatrix} b_1 \\ \vdots \\ b_m \end{pmatrix} \in \mathbb{R}^m
   $$
3. **Vettore delle variabili (o incognite):**
   $$
   \mathbf{x} = \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} \in \mathbb{R}^n
   $$
4. **Matrice completa del sistema:**
   $$
   (A \mid \mathbf{b}) \in \mathrm{Mat}_{\mathbb{R}}(m, n+1)
   $$

Il sistema si esprime in forma matriciale compatta come:
$$
\begin{matrix}
A & \mathbf{x} & = & \mathbf{b} \\
\downarrow & \downarrow & & \downarrow \\
m \times n & n \times 1 & & m \times 1
\end{matrix}
$$
ovvero:
$$
\begin{pmatrix} a_{1, 1} & \dots & a_{1, n} \\ \vdots & \ddots & \vdots \\ a_{m, 1} & \dots & a_{m, n} \end{pmatrix} \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} = \begin{pmatrix} b_1 \\ \vdots \\ b_m \end{pmatrix} \iff \begin{pmatrix} a_{1, 1} x_1 + \dots + a_{1, n} x_n \\ \vdots \\ a_{m, 1} x_1 + \dots + a_{m, n} x_n \end{pmatrix} = \begin{pmatrix} b_1 \\ \vdots \\ b_m \end{pmatrix}
$$

## 1.22. Rango di una Matrice e Proprietà

> [!definition] Rango di una Matrice
> Il **rango** di una matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$, denotato con $\mathrm{rk}(A)$, corrisponde al **numero di pivot** presenti in una riduzione a scala della matrice $A$.

> [!example] Esempio: Calcolo del Rango mediante Riduzione a Scala
> Sia data la matrice:
> $$
> A = \begin{pmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \\ 3 & 6 & 9 \end{pmatrix}
> $$
> Eseguiamo le operazioni elementari sulle righe:
> $$
> \begin{pmatrix} 1 & 2 & 3 \\ 2 & 4 & 6 \\ 3 & 6 & 9 \end{pmatrix} \xrightarrow{R_2 - 2R_1} \begin{pmatrix} 1 & 2 & 3 \\ 0 & 0 & 0 \\ 3 & 6 & 9 \end{pmatrix} \xrightarrow{R_3 - 3R_1} \begin{pmatrix} \boxed{1} & 2 & 3 \\ 0 & 0 & 0 \\ 0 & 0 & 0 \end{pmatrix}
> $$
> La forma a scala presenta un solo pivot non nullo (nella posizione $(1, 1)$), pertanto:
> $$
> \mathrm{rk}(A) = 1
> $$

> [!note] Osservazioni sul Rango
> 1. $\mathrm{rk}(0) = 0$ per la matrice nulla di qualsiasi dimensione, mentre $\mathrm{rk}(I_n) = n$ per la matrice identità $n \times n$.
> 2. Esistono diverse possibili riduzioni a scala per una stessa matrice, ma si dimostra che, tra tutte le riduzioni possibili, il **rango rimane invariato**.
> 3. Le mosse di Gauss preservano il rango.
> 4. Se $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$, vale la limitazione fondamentale:
>    $$
>    0 \le \mathrm{rk}(A) \le \min(m, n)
>    $$
>    *Motivazione geometrico-algebrica:* In una forma a scala non può mai esistere più di un pivot all'interno della stessa riga o della stessa colonna.
>
## 1.23. Teorema di Rouché-Capelli

> [!theorem] Teorema di Rouché-Capelli
> Sia $A \mathbf{x} = \mathbf{b}$ un sistema lineare con $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ e $\mathbf{b} \in \mathbb{R}^m$, dove:
> - $m = \# \text{ equazioni}$
> - $n = \# \text{ incognite (variabili)}$
> 
> Valgono le seguenti affermazioni:
> 1. **Condizione di compatibilità (Esistenza delle soluzioni):**
>    Il sistema ammette soluzioni se e solo se il rango della matrice dei coefficienti coincide con il rango della matrice completa:
>    $$
>    S \neq \emptyset \iff \mathrm{rk}(A) = \mathrm{rk}(A \mid \mathbf{b})
>    $$
> 2. **Struttura delle soluzioni (Gradi di libertà):**
>    Se il sistema è compatibile, l'insieme delle soluzioni possiede una dimensionalità parametrica (indicata simbolicamente con "$\infty^s$ soluzioni"), ed esistono dei vettori $\mathbf{w}, \mathbf{v}_1, \dots, \mathbf{v}_s \in \mathbb{R}^n$, con $s = n - \mathrm{rk}(A)$, tali che lo spazio delle soluzioni è:
>    $$
>    S = \left\{ \mathbf{w} + t_1 \mathbf{v}_1 + \dots + t_s \mathbf{v}_s, \; t_i \in \mathbb{R} \right\} \subseteq \mathbb{R}^n
>    $$
> 3. **Unicità della soluzione:**
>    Il sistema ammette un'**unica soluzione** se e solo se:
>    $$
>    \mathrm{rk}(A) = \mathrm{rk}(A \mid \mathbf{b}) = n
>    $$

> [!quote]- Dimostrazione
> Si applica l'algoritmo di Gauss-Jordan al sistema $A \mathbf{x} = \mathbf{b}$. Si ottiene così un sistema equivalente ridotto a scala:
> $$
> A' \mathbf{x} = \mathbf{b}'
> $$
> La matrice $(A' \mid \mathbf{b}')$ è una riduzione a scala della matrice completa originale $(A \mid \mathbf{b})$.
> Per definizione di rango:
> $$
> \mathrm{rk}(A' \mid \mathbf{b}') = \mathrm{rk}(A \mid \mathbf{b}) \qquad \text{e} \qquad \mathrm{rk}(A') = \mathrm{rk}(A)
> $$
> 
> Dimostriamo i tre punti:
> 
> **Punto 1:**
> $$
> A \mathbf{x} = \mathbf{b} \text{ ha soluzioni} \iff A' \mathbf{x} = \mathbf{b}' \text{ ha soluzioni (le medesime)}
> $$
> Un sistema a scala ammette soluzioni se e solo se non compaiono righe con pivot nella colonna dei termini noti $\mathbf{b}'$ (che produrrebbero un'equazione contraddittoria del tipo $0 = b'_k \neq 0$).
> Quindi non ci sono pivot in $\mathbf{b}'$, il che significa che **tutti i pivot** di $(A' \mid \mathbf{b}')$ appartengono alla sottomatrice $A'$.
> Ne consegue:
> $$
> \mathrm{rk}(A' \mid \mathbf{b}') = \mathrm{rk}(A') \iff \mathrm{rk}(A \mid \mathbf{b}) = \mathrm{rk}(A)
> $$
> 
> **Punto 2:**
> Il sistema ridotto a scala $A' \mathbf{x} = \mathbf{b}'$ permette di esprimere le $\mathrm{rk}(A)$ variabili pivot in funzione delle rimanenti $[n - \mathrm{rk}(A)]$ variabili libere.
> Il numero di parametri liberi indipendenti è dunque:
> $$
> s = n - \mathrm{rk}(A)
> $$
> Assegnando alle variabili libere i parametri $t_1, \dots, t_s \in \mathbb{R}$, ogni soluzione $\mathbf{x}$ si decompone nella somma di un vettore costante $\mathbf{w}$ e di una combinazione lineare di $s$ vettori linearmente indipendenti $\mathbf{v}_1, \dots, \mathbf{v}_s$.
> 
> **Punto 3:**
> Se $\mathrm{rk}(A) = \mathrm{rk}(A \mid \mathbf{b}) = n$, il numero di parametri liberi è:
> $$
> s = n - n = 0
> $$
> In assenza di variabili libere, ogni variabile pivot è determinata in modo univoco all'indietro per sostituzione:
> $$
> \Downarrow
> $$
> la soluzione del sistema $A \mathbf{x} = \mathbf{b}$ è unica. $\qquad \blacksquare$

> [!example] Esempi di Applicazione del Teorema di Rouché-Capelli

> [!example] Esempio: Sistema Impossibile
> Consideriamo il sistema:
> $$
> \begin{cases}
> x_1 + x_2 = 1 \\
> 2x_1 + 2x_2 = 3
> \end{cases}
> $$
> Formato matriciale:
> $$
> A = \begin{pmatrix} 1 & 1 \\ 2 & 2 \end{pmatrix}, \qquad \mathbf{b} = \begin{pmatrix} 1 \\ 3 \end{pmatrix}, \qquad \mathbf{x} = \begin{pmatrix} x_1 \\ x_2 \end{pmatrix}
> $$
> Riduciamo a scala la matrice completa $(A \mid \mathbf{b})$:
> $$
> (A \mid \mathbf{b}) = \begin{pmatrix} 1 & 1 & 1 \\ 2 & 2 & 3 \end{pmatrix} \xrightarrow{R_2 - 2R_1} \begin{pmatrix} \boxed{1} & 1 & 1 \\ 0 & 0 & \boxed{1} \end{pmatrix}
> $$
> Si determinano i ranghi:
> $$
> \mathrm{rk}(A) = 1, \qquad \mathrm{rk}(A \mid \mathbf{b}) = 2
> $$
> Poiché $\mathrm{rk}(A) \neq \mathrm{rk}(A \mid \mathbf{b})$, per il Teorema di Rouché-Capelli il sistema è **impossibile**:
> $$
> S = \emptyset
> $$

> [!example] Esempio: Sistema Indeterminato con Parametri
> Risolvere il sistema lineare:
> $$
> \begin{cases}
> -2x_1 + 2x_2 + x_3 + 3x_4 = -3 \\
> 3x_1 - 3x_2 + 6x_3 = 0
> \end{cases}
> $$
> Costruiamo la matrice completa e riduciamo a scala:
> $$
> (A \mid \mathbf{b}) = \begin{pmatrix} -2 & 2 & 1 & 3 & -3 \\ 3 & -3 & 6 & 0 & 0 \end{pmatrix}
> \xrightarrow{R_2 / 3}
> \begin{pmatrix} -2 & 2 & 1 & 3 & -3 \\ 1 & -1 & 2 & 0 & 0 \end{pmatrix}
> \xrightarrow{R_1 \leftrightarrow R_2}
> \begin{pmatrix} 1 & -1 & 2 & 0 & 0 \\ -2 & 2 & 1 & 3 & -3 \end{pmatrix}
> $$
> Eliminando sotto il primo pivot con l'operazione $R_2 \to R_2 + 2R_1$:
> $$
> \begin{pmatrix} 1 & -1 & 2 & 0 & 0 \\ 0 & 0 & 5 & 3 & -3 \end{pmatrix}
> $$
> I ranghi sono:
> $$
> \mathrm{rk}(A) = \mathrm{rk}(A \mid \mathbf{b}) = 2
> $$
> Poiché $n = 4$ variabili, il numero di parametri liberi è:
> $$
> s = n - \mathrm{rk}(A) = 4 - 2 = 2 \quad (\infty^2 \text{ soluzioni})
> $$
> Normalizziamo la seconda riga dividendo per $5$ ($R_2 \to R_2 / 5$):
> $$
> \begin{pmatrix} \boxed{1} & -1 & 2 & 0 & 0 \\ 0 & 0 & \boxed{1} & \frac{3}{5} & -\frac{3}{5} \end{pmatrix}
> $$
> Identificazione delle variabili:
> - **Variabili pivot:** $x_1, x_3$
> - **Variabili libere:** $x_2, x_4$, poste rispettivamente pari a $x_2 := t$, $x_4 := s$.
> 
> Esplicitiamo il sistema a gradini:
> $$
> \begin{cases}
> x_1 - t + 2x_3 = 0 \\
> x_3 + \frac{3}{5} s = -\frac{3}{5} \implies x_3 = -\frac{3}{5}(s + 1)
> \end{cases}
> $$
> Sostituendo $x_3$ nella prima equazione:
> $$
> x_1 = t - 2x_3 = t - 2\left(-\frac{3}{5}(s + 1)\right) = t + \frac{6}{5}(s + 1)
> $$
>
## 1.24. Sistemi Lineari Omogenei

## 1.25. Definizione e Nucleo di una Matrice

> [!definition] Sistema Lineare Omogeneo e Nucleo
> Sia data una matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$. Il sistema lineare avente vettore dei termini noti nullo:
> $$
> A \mathbf{x} = \mathbf{0}
> $$
> è detto **sistema lineare omogeneo**.
> L'insieme di tutte le soluzioni del sistema omogeneo è detto **nucleo** (o **kernel**) di $A$:
> $$
> \mathrm{Ker}(A) = \left\{ \mathbf{x} \in \mathbb{R}^n \mid A \mathbf{x} = \mathbf{0} \right\} \subseteq \mathbb{R}^n
> $$

> [!note] Osservazione: Compatibilità Incondizionata
> Un sistema omogeneo **NON PUÒ MAI ESSERE IMPOSSIBILE**, in quanto:
> $$
> \mathbf{0} \in \mathrm{Ker}(A) \quad \text{poiché } A \mathbf{0} = \mathbf{0}
> $$
> Il vettore nullo $\mathbf{x} = \mathbf{0}$ costituisce sempre la **soluzione banale** del sistema.

> [!example] Esempio: Calcolo del Nucleo
> Determinare il nucleo della matrice:
> $$
> \mathrm{Ker} \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 2 \end{pmatrix} = ?
> $$
> Il sistema omogeneo associato $A \mathbf{x} = \mathbf{0}$ è già in forma a gradini:
> $$
> \begin{cases}
> x_1 + 2x_2 + 3x_3 = 0 \\
> x_2 + 2x_3 = 0
> \end{cases}
> $$
> Risolvendo dal basso:
> $$
> x_2 = -2x_3
> $$
> Sostituendo nella prima riga:
> $$
> x_1 = -2x_2 - 3x_3 = -2(-2x_3) - 3x_3 = 4x_3 - 3x_3 = x_3
> $$
> Ponendo la variabile libera $x_3 := t \in \mathbb{R}$:
> $$
> \begin{cases} x_1 = t \\ x_2 = -2t \\ x_3 = t \end{cases} \implies \mathbf{x} = \begin{pmatrix} t \\ -2t \\ t \end{pmatrix}
> $$
> Lo spazio delle soluzioni si scrive dunque come:
> $$
> \mathrm{Ker} \begin{pmatrix} 1 & 2 & 3 \\ 0 & 1 & 2 \end{pmatrix} = \left\{ \mathbf{0} + t \begin{pmatrix} 1 \\ -2 \\ 1 \end{pmatrix}, \; t \in \mathbb{R} \right\}
> $$
>
## 1.26. Teorema di Struttura delle Soluzioni di un Sistema Lineare

> [!theorem] Teorema di Struttura delle Soluzioni
> Sia $A \mathbf{x} = \mathbf{b}$ un sistema lineare. Si supponga che il sistema sia compatibile ($S \neq \emptyset$), e sia $\mathbf{v} \in S$ una **soluzione particolare** fissata del sistema (ovvero $A \mathbf{v} = \mathbf{b}$).
> 
> Allora, l'intero insieme delle soluzioni $S$ di $A \mathbf{x} = \mathbf{b}$ è ottenuto traslando il nucleo $\mathrm{Ker}(A)$ mediante la soluzione particolare $\mathbf{v}$:
> $$
> S = \left\{ \mathbf{v} + \mathbf{w}, \; \forall \mathbf{w} \in \mathrm{Ker}(A) \right\}
> $$

> [!quote]- Dimostrazione
> Dimostriamo la doppia implicazione:
> $$
> \mathbf{u} \in S \subseteq \mathbb{R}^n \iff \mathbf{u} \in \left\{ \mathbf{v} + \mathbf{w}, \; \forall \mathbf{w} \in \mathrm{Ker}(A) \right\}
> $$
> 
> Poiché $\mathbf{v}$ è una soluzione particolare fissata, si ha:
> $$
> \mathbf{v} \in S \iff A \mathbf{v} = \mathbf{b}
> $$
> Un generico vettore $\mathbf{u} \in \mathbb{R}^n$ è soluzione del sistema se e solo se $A \mathbf{u} = \mathbf{b}$. Possiamo dunque scrivere:
> $$
> A \mathbf{v} = \mathbf{b} = A \mathbf{u}
> $$
> Sfruttando la linearità del prodotto matrice-vettore:
> $$
> A \mathbf{u} - A \mathbf{v} = \mathbf{0} \iff A (\mathbf{u} - \mathbf{v}) = \mathbf{0}
> $$
> Dunque, la differenza $\mathbf{u} - \mathbf{v}$ è soluzione del sistema omogeneo associato:
> $$
> \mathbf{u} - \mathbf{v} \in \mathrm{Ker}(A)
> $$
> Ponendo $\mathbf{w} := \mathbf{u} - \mathbf{v} \in \mathrm{Ker}(A)$, abbiamo:
> $$
> \mathbf{u} = \mathbf{v} + (\mathbf{u} - \mathbf{v}) = \mathbf{v} + \mathbf{w}
> $$
> Pertanto, ogni soluzione $\mathbf{u}$ si scrive come $\mathbf{v} + \mathbf{w}$ con $\mathbf{w} \in \mathrm{Ker}(A)$, e viceversa:
> $$
> \mathbf{u} = \mathbf{v} + \mathbf{w}, \quad \mathbf{w} \in \mathrm{Ker}(A) \qquad \blacksquare
> $$
>
## 1.27. Matrice Inversa

## 1.28. Condizioni di Invertibilità per Matrici Quadrate

> [!theorem] Teorema di Invertibilità
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ una matrice quadrata. Le seguenti condizioni sono reciprocamente equivalenti:
> 1. Il rango di $A$ è massimo:
>    $$
>    \mathrm{rk}(A) = n
>    $$
> 2. Esiste un'inversa sinistra $S \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ tale che:
>    $$
>    S A = I_n
>    $$
> 3. Esiste un'inversa destra $D \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ tale che:
>    $$
>    A D = I_n
>    $$
> 4. Il sistema lineare $A \mathbf{x} = \mathbf{b}$ ammette un'unica soluzione per ogni scelta del vettore dei termini noti $\mathbf{b} \in \mathbb{R}^n$.

> [!example] Esempio: Impossibilità di Inversione per Rango Non Massimo
> Consideriamo la matrice $2 \times 2$:
> $$
> A = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}
> $$
> e cerchiamo una matrice $B = \begin{pmatrix} a & b \\ c & d \end{pmatrix}$ tale che $A B = I_2$:
> $$
> A B = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} a & b \\ c & d \end{pmatrix} = \begin{pmatrix} a + c & b + d \\ a + c & b + d \end{pmatrix} \stackrel{?}{=} \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}
> $$
> Uguagliando gli elementi colonna per colonna, si ottengono i sistemi:
> $$
> \begin{cases} a + c = 1 \\ a + c = 0 \end{cases} \implies 1 = 0 \qquad \text{e} \qquad \begin{cases} b + d = 0 \\ b + d = 1 \end{cases} \implies 0 = 1
> $$
> Si giunge ad una palese **contraddizione** ($1 = 0$). Non esiste alcuna matrice inversa poiché:
> $$
> \mathrm{rk}(A) = 1 \neq 2
> $$

> [!note] Osservazione: Coincidenza dell'Inversa Destra e Sinistra
> Nelle matrici rettangolari generiche, l'inversa sinistra $S$ e l'inversa destra $D$ (quando esistono) non coincidono e possono non essere uniche.
> Tuttavia, per **matrici quadrate**, se esistono $S$ e $D$ tali che $S A = I_n$ e $A D = I_n$, allora necessariamente:
> $$
> S = D
> $$
> 
> *Verifica:*
> Sfruttando la proprietà associativa e la neutralità di $I_n$:
> $$
> S = S I_n = S (A D) = (S A) D = I_n D = D
> $$
> Di conseguenza, la matrice $A$ è invertibile, la sua inversa è unica e denotata con $A^{-1}$:
> $$
> S = D = A^{-1} \implies A A^{-1} = A^{-1} A = I_n
> $$
>
## 1.29. Calcolo della Matrice Inversa tramite Algoritmo di Gauss-Jordan

Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ con $\mathrm{rk}(A) = n$. Per determinare la matrice inversa $A^{-1}$, si accosta alla matrice $A$ la matrice identità $I_n$, formando la matrice a blocchi:
$$
(A \mid I_n) \in \mathrm{Mat}_{\mathbb{R}}(n, 2n)
$$
Applicando l'algoritmo di Gauss-Jordan per trasformare il blocco di sinistra nella matrice identità $I_n$, il blocco di destra si trasforma automaticamente nella matrice inversa $A^{-1}$:
$$
(A \mid I_n) \xrightarrow{\text{Gauss-Jordan}} (I_n \mid A^{-1})
$$

> [!example] Esempio di Inversione di Matrice $2 \times 2$
> Si consideri la matrice:
> $$
> A = \begin{pmatrix} 1 & 0 \\ 2 & 2 \end{pmatrix}
> $$
> Poiché $\mathrm{rk}(A) = 2 = n$, la matrice $A$ è invertibile. Si affianca la matrice identità $I_2$:
> $$
> (A \mid I_2) = \begin{pmatrix} 1 & 0 & 1 & 0 \\ 2 & 2 & 0 & 1 \end{pmatrix}
> $$
> Si applica l'operazione elementare sulla seconda riga $R_2 \to R_2 - 2R_1$:
> $$
> \xrightarrow{R_2 - 2R_1} \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 2 & -2 & 1 \end{pmatrix}
> $$
> Si normalizza la seconda riga dividendo per 2 ($R_2 \to R_2 / 2$):
> $$
> \xrightarrow{R_2 : 2} \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & -1 & \frac{1}{2} \end{pmatrix}
> $$
> Il blocco sinistro coincide ora con la matrice identità $I_2$:
> $$
> \underbrace{\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}}_{I_2}
> $$
> Pertanto, il blocco destro fornisce la matrice inversa cercata:
> $$
> A^{-1} = \begin{pmatrix} 1 & 0 \\ -1 & \frac{1}{2} \end{pmatrix}
> $$
>
### Proprietà Fondamentali delle Matrici Invertibili

> [!proposition] Proprietà del Prodotto e della Trasposta di Matrici Invertibili
> Siano $A, B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ matrici invertibili. Allora:
> 1. Il prodotto $AB$ è invertibile e la sua inversa è data dall'inversione invertita dei singoli fattori:
>    $$
>    (AB)^{-1} = B^{-1} A^{-1}
>    $$
> 2. La matrice trasposta $A^T$ è invertibile e l'operazione di trasposizione commuta con quella di inversione:
>    $$
>    (A^T)^{-1} = (A^{-1})^T
>    $$

> [!note] Verifica Diretta delle Proprietà
> - Per la proprietà (1), moltiplicando $AB$ a destra per $B^{-1}A^{-1}$ si ottiene:
>   $$
>   (AB)(B^{-1}A^{-1}) = A(B B^{-1})A^{-1} = A I_n A^{-1} = A A^{-1} = I_n
>   $$
>   Analogamente moltiplicando a sinistra: $(B^{-1}A^{-1})(AB) = I_n$.
> - Per la proprietà (2), sfruttando la proprietà della trasposta del prodotto $(XY)^T = Y^T X^T$:
>   $$
>   A^T (A^{-1})^T = (A^{-1} A)^T = (I_n)^T = I_n
>   $$
>
