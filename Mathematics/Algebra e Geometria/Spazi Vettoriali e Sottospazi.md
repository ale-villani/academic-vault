---
title: "Spazi Vettoriali e Sottospazi"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 2)"
tags:
  - math/linear-algebra/vector-spaces
  - math/linear-algebra/dimension
---

# 2. Spazi Vettoriali e Sottospazi

## 2.1. Spazi Vettoriali

### Definizione e Assiomi Fondamentali

> [!definition] Spazio Vettoriale su un Campo $\mathbb{K}$
> Uno **spazio vettoriale** $V$ su un campo $\mathbb{K}$ (in generale un campo qualsiasi, nel nostro corso si assume $\mathbb{K} = \mathbb{R}$) è un insieme non vuoto i cui elementi sono detti **vettori**, dotato di due operazioni binarie:
> 1. **Somma vettoriale:** $+ : V \times V \to V$ che associa a ogni coppia $(\mathbf{v}, \mathbf{w}) \in V \times V$ il vettore $\mathbf{v} + \mathbf{w} \in V$.
> 2. **Prodotto per scalare:** $\cdot : \mathbb{R} \times V \to V$ che associa a ogni coppia $(c, \mathbf{v}) \in \mathbb{R} \times V$ il vettore $c\mathbf{v} \in V$.
>
> Tali operazioni devono soddisfare i seguenti 8 assiomi fondamentali:
>
> **A) Assiomi della Somma:**
> Per ogni $\mathbf{v}, \mathbf{w}, \mathbf{u} \in V$:
> 1. **Proprietà Associativa:**
>    $$
>    (\mathbf{v} + \mathbf{w}) + \mathbf{u} = \mathbf{v} + (\mathbf{w} + \mathbf{u})
>    $$
> 2. **Proprietà Commutativa:**
>    $$
>    \mathbf{v} + \mathbf{w} = \mathbf{w} + \mathbf{v}
>    $$
> 3. **Esistenza dell'Elemento Neutro:**
>    $$
>    \exists\, \mathbf{0} \in V \quad\text{tale che}\quad \mathbf{v} + \mathbf{0} = \mathbf{v}
>    $$
> 4. **Esistenza dell'Elemento Opposto:**
>    $$
>    \exists\, (-\mathbf{v}) \in V \quad\text{tale che}\quad \mathbf{v} + (-\mathbf{v}) = \mathbf{0}
>    $$
>
> *(L'insieme $V$ con l'operazione di somma forma dunque un gruppo abeliano $(V, +)$).*
>
> **B) Assiomi del Prodotto per Scalare:**
> Per ogni $c, d \in \mathbb{R}$ e per ogni $\mathbf{v}, \mathbf{w} \in V$:
> 5. **Proprietà Associativa del Prodotto per Scalari:**
>    $$
>    (cd)\mathbf{v} = c(d\mathbf{v})
>    $$
> 6. **Esistenza dell'Elemento Neutro dello Scalare:**
>    $$
>    1 \cdot \mathbf{v} = \mathbf{v}
>    $$
> 7. **Proprietà Distributive:**
>    - Distributività rispetto alla somma di scalari:
>      $$
>      (c + d)\mathbf{v} = c\mathbf{v} + d\mathbf{v}
>      $$
>    - Distributività rispetto alla somma di vettori:
>      $$
>      c(\mathbf{v} + \mathbf{w}) = c\mathbf{v} + c\mathbf{w}
>      $$

> [!example] Esempi Fondamentali di Spazi Vettoriali
>
> I seguenti insiemi, muniti delle naturali operazioni di addizione e riscalamento, costituiscono spazi vettoriali:
>
> 1. **Spazio Euclideo $\mathbb{R}^n$:**
>    $$
>    V = \mathbb{R}^n = \left\{ \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} : x_1, \dots, x_n \in \mathbb{R} \right\}
>    $$
>    I vettori possono essere indifferentemente scritti per riga o per colonna.
>
> 2. **Spazio delle Matrici $\mathrm{Mat}_{\mathbb{R}}(m, n)$:**
>    $$
>    V = \mathrm{Mat}_{\mathbb{R}}(m, n)
>    $$
>    I cui vettori (elementi dello spazio $V$) sono matrici reali di dimensione $m \times n$. La somma coincide con la somma termine a termine tra matrici e il prodotto per scalare con la moltiplicazione di ogni entrata per lo scalare.
>
> 3. **Spazio dei Polinomi in una Variabile $\mathbb{R}[t]$:**
>    L'insieme di tutti i polinomi a coefficienti reali nella variabile formale $t$, di grado arbitrario:
>    $$
>    V = \mathbb{R}[t] = \left\{ P(t) = a_0 t^0 + a_1 t^1 + \dots + a_n t^n \;\middle|\; n \in \mathbb{N} \;\land\; a_i \in \mathbb{R} \right\}
>    $$
>
> 4. **Spazio dei Polinomi di Grado Minore o Uguale a $n$:**
>    L'insieme dei polinomi di grado al più $n$:
>    $$
>    V = \mathbb{R}[t]_{\le n} = \left\{ P(t) = a_0 t^0 + a_1 t^1 + \dots + a_n t^n \;\middle|\; a_i \in \mathbb{R} \right\}
>    $$
>
>    > [!example] Esempio per $n = 2$
>    > Lo spazio dei polinomi di grado non superiore a 2 è dato da:
>    > $$
>    > \mathbb{R}[x]_{\le 2} = \left\{ a_0 + a_1 t + a_2 t^2 \;\middle|\; a_0, a_1, a_2 \in \mathbb{R} \right\}
>    > $$
>
> 5. **Spazi di Funzioni con Determinate Proprietà:**
>    - L'insieme di tutte le funzioni a valori reali definite su $\mathbb{R}$:
>      $$
>      V = \{ f : \mathbb{R} \to \mathbb{R} \text{ funzione} \}
>      $$
>      costituisce uno spazio vettoriale rispetto alla somma puntuale $(f + g)(x) = f(x) + g(x)$ e al prodotto per scalare $(cf)(x) = c f(x)$.
>    - Al contrario, sottoinsiemi caratterizzati da vincoli non lineari o restrittivi, come ad esempio:
>      $$
>      V = \{ f : \mathbb{R} \to \mathbb{R} \text{ iniettiva} \}
>      $$
>      **non** costituiscono uno spazio vettoriale (la funzione nulla $f(x) = 0$ non è iniettiva, e la somma di due funzioni iniettive può non essere iniettiva).
>
>
### Sottospazi Vettoriali

> [!definition] Sottospazio Vettoriale
> Sia $V$ uno spazio vettoriale su $\mathbb{R}$. Un sottoinsieme non vuoto $W \subseteq V$ si dice **sottospazio vettoriale** di $V$ se $W$ è esso stesso uno spazio vettoriale rispetto alle medesime operazioni di somma e prodotto per scalare definite su $V$.

> [!proposition] Criterio di Caratterizzazione dei Sottospazi Vettoriali
> Un sottoinsieme $W \subseteq V$ è un sottospazio vettoriale se e solo se sono verificate contemporaneamente le seguenti condizioni:
> 1. **Appartenenza dell'elemento neutro:**
>    $$
>    \mathbf{0} \in W
>    $$
> 2. **Chiusura rispetto alle due operazioni:**
>    - **Chiusura rispetto alla somma:**
>      $$
>      \forall \mathbf{v}, \mathbf{w} \in W \implies \mathbf{v} + \mathbf{w} \in W
>      $$
>    - **Chiusura rispetto al prodotto per scalare:**
>      $$
>      \forall c \in \mathbb{R}, \; \forall \mathbf{v} \in W \implies c\mathbf{v} \in W
>      $$

> [!example] Sottospazi Banali
> Dato un qualunque spazio vettoriale $V$, esistono sempre due sottospazi vettoriali detti **sottospazi banali**:
> 1. Lo spazio vettoriale stesso: $W = V$.
> 2. Il sottospazio nullo contenente il solo vettore nullo: $W = \{ \mathbf{0} \}$.
>
### Analisi di Sottospazi in $\mathbb{R}^2$

Si consideri lo spazio ambiente $V = \mathbb{R}^2$ e i seguenti tre sottoinsiemi:
1. $H = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : x_1 + x_2 = 1 \right\}$
2. $K = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : x_1 + x_2 = 0 \right\}$
3. $J = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : x_1 + x_2^2 = 0 \right\}$

**Verifica delle condizioni di sottospazio:**

- **Insieme $H$:**
  L'elemento neutro $\mathbf{0} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}$ non appartiene ad $H$, infatti:
  $$
  0 + 0 = 0 \neq 1 \implies \mathbf{0} \notin H
  $$
  Pertanto $H$ **non è** un sottospazio vettoriale di $\mathbb{R}^2$.

- **Insieme $K$:**
  $K$ soddisfa tutte le condizioni di sottospazio vettoriale:
  1. $\mathbf{0} \in K$, poiché $0 + 0 = 0$.
  2. Dati due vettori $\begin{pmatrix} x_1 \\ x_2 \end{pmatrix}, \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} \in K$, la loro somma appartiene a $K$:
     $$
     \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} = \begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \end{pmatrix}
     $$
     Verificando l'equazione caratteristica:
     $$
     (x_1 + y_1) + (x_2 + y_2) = \underbrace{(x_1 + x_2)}_{= 0} + \underbrace{(y_1 + y_2)}_{= 0} = 0 + 0 = 0
     $$
  3. Dato un vettore $\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in K$ e uno scalare $c \in \mathbb{R}$:
     $$
     c \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} c x_1 \\ c x_2 \end{pmatrix}
     $$
     Verificando l'equazione:
     $$
     c x_1 + c x_2 = c \underbrace{(x_1 + x_2)}_{= 0} = c \cdot 0 = 0
     $$
  Pertanto $K$ **è** un sottospazio vettoriale di $\mathbb{R}^2$.

- **Insieme $J$:**
  Sebbene $\mathbf{0} \in J$ ($0 + 0^2 = 0$), $J$ **non è** chiuso rispetto al prodotto per scalare:
  Sia $\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in J$, ovvero $x_1 + x_2^2 = 0$. Moltiplicando per $c \in \mathbb{R}$:
  $$
  c \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} c x_1 \\ c x_2 \end{pmatrix}
  $$
  Inserendo nell'equazione di $J$:
  $$
  (c x_1) + (c x_2)^2 = c x_1 + c^2 x_2^2 = c(x_1 + c x_2^2) \neq 0 \quad (\text{per } c \neq 0, 1)
  $$
  Poiché in generale $c x_1 + c^2 x_2^2 \neq 0$, si ha $c \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \notin J$. Di conseguenza $J$ **non è** un sottospazio vettoriale.

### Interpretazione Geometrica dei Sottospazi in $\mathbb{R}^2$

Nel piano cartesiano individuato dagli assi $x_2$ (orizzontale) e $x_1$ (verticale):

```
                   x_1 ^
                       |       \ H (retta x_1 + x_2 = 1)
                       |        \
                       |         \
   J (parabola)        |          \
      \                |           \
-+---------------+------------+------> x_2
        \             /|             \
         \           / |              \
          \---__    /  |               \
/---+                \
                  /    |                 \
                 /     |                  \
                /      |                   \
               /       |                    \
            K /        |
```

- **La retta $H$:** ha equazione $x_1 = -x_2 + 1$. È una retta traslata che non passa per l'origine $(0,0)$. Non è un sottospazio vettoriale.
- **La retta $K$:** ha equazione $x_1 = -x_2$. È una retta passante per l'origine $(0,0)$. È un sottospazio vettoriale.
- **La parabola $J$:** ha equazione $x_1 = -x_2^2$. Pur passando per l'origine, non è un oggetto lineare (non è una retta), pertanto non rispetta la chiusura rispetto al prodotto per scalari né rispetto alla somma.

> [!note] Significato Geometrico Fondamentale
> I **sottospazi vettoriali** di $\mathbb{R}^n$ generalizzano geometricamente il concetto di **rette, piani e iperpiani passanti tassativamente per l'origine**. Se una varietà lineare affine non passa per l'origine, non può contenere l'elemento neutro $\mathbf{0}$ e pertanto non è un sottospazio vettoriale.
>
## 2.2. Span e Generatori

### Combinazioni Lineari e Definizione di Span

> [!definition] Combinazione Lineare
> Sia $V$ uno spazio vettoriale su $\mathbb{R}$. Dati $n$ vettori $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n \in V$, una **combinazione lineare** di tali vettori è un vettore ottenuto moltiplicando ciascun vettore per un rispettivo coefficiente scalare e sommandoli tra loro:
> $$
> c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + \dots + c_n \mathbf{v}_n = \sum_{i=1}^n c_i \mathbf{v}_i \in V
> $$
> con scalari $c_1, c_2, \dots, c_n \in \mathbb{R}$.

> [!definition] Span Lineare
> L'insieme di **tutte** le possibili combinazioni lineari dei vettori $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n \in V$ è detto **copertura lineare** o **Span** dei vettori:
> $$
> \mathrm{Span}(\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n) := \left\{ \sum_{i=1}^n c_i \mathbf{v}_i \;\middle|\; c_i \in \mathbb{R} \right\}
> $$

> [!example] Esempio Geometrico in $\mathbb{R}^3$
> Si considerino i vettori in $V = \mathbb{R}^3$:
> $$
> \mathbf{v}_1 = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix}
> $$
> Lo Span generato da questi due vettori è:
> $$
> \mathrm{Span}\left[ \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} \right] = \left\{ t \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix} + s \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} \;\middle|\; t, s \in \mathbb{R} \right\}
> $$
> Geometricamente, questo insieme rappresenta un **piano in forma parametrica passante per l'origine** $O(0, 0, 0)$.
>
### Lo Span come Sottospazio Vettoriale

> [!proposition] Struttura di Sottospazio dello Span
> Siano $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$. Allora $\mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)$ è un **sottospazio vettoriale** di $V$.

> [!quote]- Dimostrazione
> Si verificano le tre proprietà che caratterizzano i sottospazi vettoriali:
>
> 1. **Presenza del vettore nullo $\mathbf{0}$:**
>    Ponendo tutti i coefficienti scalari nulli $c_1 = c_2 = \dots = c_n = 0$, si ottiene:
>    $$
>    0\mathbf{v}_1 + 0\mathbf{v}_2 + \dots + 0\mathbf{v}_n = \mathbf{0} \in \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)
>    $$
>
> 2. **Chiusura rispetto alla somma vettoriale:**
>    Siano $\mathbf{u}, \mathbf{w} \in \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)$. Per definizione di Span, esistono coefficienti $c_1, \dots, c_n \in \mathbb{R}$ e $d_1, \dots, d_n \in \mathbb{R}$ tali che:
>    $$
>    \mathbf{u} = \sum_{i=1}^n c_i \mathbf{v}_i, \qquad \mathbf{w} = \sum_{i=1}^n d_i \mathbf{v}_i
>    $$
>    Sommando membro a membro e raccogliendo i vettori $\mathbf{v}_i$ tramite le proprietà distributive:
>    $$
>    \mathbf{u} + \mathbf{w} = \sum_{i=1}^n c_i \mathbf{v}_i + \sum_{i=1}^n d_i \mathbf{v}_i = \sum_{i=1}^n (c_i + d_i) \mathbf{v}_i
>    $$
>    Poiché $(c_i + d_i) \in \mathbb{R}$ per ogni $i$, il vettore risultante è ancora una combinazione lineare degli elementi $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$:
>    $$
>    \mathbf{u} + \mathbf{w} \in \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)
>    $$
>
> 3. **Chiusura rispetto al prodotto per scalare:**
>    Sia $\mathbf{x} \in \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)$ e sia $c \in \mathbb{R}$. Il vettore $\mathbf{x}$ si esprime come $\mathbf{x} = \sum_{i=1}^n f_i \mathbf{v}_i$ per opportuni scalari $f_i \in \mathbb{R}$. Moltiplicando per $c$:
>    $$
>    c\mathbf{x} = c \sum_{i=1}^n f_i \mathbf{v}_i = \sum_{i=1}^n (c f_i) \mathbf{v}_i
>    $$
>    Essendo $c f_i \in \mathbb{R}$ per ogni $i$, segue che:
>    $$
>    c\mathbf{x} \in \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n) \qquad \blacksquare
>    $$
>
### Insiemi di Generatori

> [!definition] Generatori di un Sottospazio
> Sia $H \subseteq V$ un sottospazio vettoriale. Se esiste un insieme di vettori $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$ tale che:
> $$
> H = \mathrm{Span}(\mathbf{v}_1, \dots, \mathbf{v}_n)
> $$
> allora si dice che:
> - $H$ è **generato** da $\mathbf{v}_1, \dots, \mathbf{v}_n$.
> - I vettori $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono detti **generatori** di $H$.

> [!note] Significato Operativo dei Generatori
> Conoscere un insieme di generatori $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ permette di determinare e parametrizzare l'**interezza** degli elementi del sottospazio $H$, esprimendo ogni vettore di $H$ come combinazione lineare a coefficienti reali di questi elementi finiti.
>
### Determinazione dei Generatori: Dalla Forma Cartesiana alla Forma Parametrica

Quando un sottospazio vettoriale è assegnato mediante una o più equazioni cartesiane omogenee, i suoi generatori si deducono esplicitando le variabili dipendenti in funzione dei parametri liberi (passaggio dalla forma cartesiana alla forma parametrica).

> [!example] Calcolo dei Generatori di un Piano in $\mathbb{R}^3$
> Si consideri il sottospazio di $\mathbb{R}^3$ definito dall'equazione cartesiana:
> $$
> S = \left\{ \mathbf{x} \in \mathbb{R}^3 : x_1 - x_2 + 2x_3 = 0 \right\} \subseteq \mathbb{R}^3
> $$
> Questo insieme rappresenta un piano passante per l'origine espresso in forma cartesiana. Per trovarne i generatori si passa alla forma parametrica:
> $$
> x_1 - x_2 + 2x_3 = 0 \implies x_1 = x_2 - 2x_3
> $$
> Si introducono due parametri liberi reali ponendo $x_2 := t$ e $x_3 := s$ (con $t, s \in \mathbb{R}$):
> $$
> \begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} t - 2s \\ t \\ s \end{pmatrix} = \begin{pmatrix} t \\ t \\ 0 \end{pmatrix} + \begin{pmatrix} -2s \\ 0 \\ s \end{pmatrix} = t \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + s \begin{pmatrix} -2 \\ 0 \\ 1 \end{pmatrix}
> $$
> Ne consegue che ogni elemento di $S$ è combinazione lineare dei due vettori trovati:
> $$
> S = \mathrm{Span}\left[ \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} -2 \\ 0 \\ 1 \end{pmatrix} \right] = \left\{ t \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + s \begin{pmatrix} -2 \\ 0 \\ 1 \end{pmatrix} \;\middle|\; t, s \in \mathbb{R} \right\} \subseteq \mathbb{R}^3
> $$
> I vettori $\begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}$ e $\begin{pmatrix} -2 \\ 0 \\ 1 \end{pmatrix}$ sono i **generatori** del sottospazio piano $S$.
>
### Generatori dello Spazio $\mathbb{R}^3$ e Non Unicità dei Generatori

> [!example] Generatori Standard di $\mathbb{R}^3$
> Si consideri lo spazio intero $V = \mathbb{R}^3$. Tre generatori naturali sono i versori fondamentali (spesso denotati in fisica con $\mathbf{i}, \mathbf{j}, \mathbf{k}$):
> $$
> \mathbf{e}_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \qquad \mathbf{e}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \qquad \mathbf{e}_3 = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}
> $$
> Infatti, qualsiasi generico vettore $\begin{pmatrix} a \\ b \\ c \end{pmatrix} \in \mathbb{R}^3$ può essere scritto come:
> $$
> \mathrm{Span}(\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3) = \left\{ a\mathbf{e}_1 + b\mathbf{e}_2 + c\mathbf{e}_3 \;\middle|\; a, b, c \in \mathbb{R} \right\} = \left\{ \begin{pmatrix} a \\ b \\ c \end{pmatrix} \;\middle|\; a, b, c \in \mathbb{R} \right\} = \mathbb{R}^3
> $$

> [!note] Non Unicità dell'Insieme di Generatori
> Un sottospazio vettoriale ammette **infiniti insiemi diversi di generatori**.
> 
> Ad esempio, si consideri la terna di vettori:
> $$
> \mathbf{v}_1 = \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_3 = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}
> $$
> Per verificare se generano l'intero spazio $\mathbb{R}^3$, si imposta l'equazione vettoriale per un vettore arbitrario $\mathbf{b} = \begin{pmatrix} x \\ y \\ z \end{pmatrix}$:
> $$
> c_1 \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} + c_2 \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix} + c_3 \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix} \implies \begin{pmatrix} 1 & 1 & 0 \\ 1 & 0 & 1 \\ 0 & 1 & 0 \end{pmatrix} \begin{pmatrix} c_1 \\ c_2 \\ c_3 \end{pmatrix} = \begin{pmatrix} x \\ y \\ z \end{pmatrix}
> $$
> Poiché il determinante della matrice dei coefficienti è $\det = 1(0 - 1) - 1(0 - 0) = -1 \neq 0$, la matrice ha rango 3 massimo e il sistema ammette soluzione per ogni $\mathbf{b} \in \mathbb{R}^3$. Di conseguenza, anche $\{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3\}$ è un insieme di generatori per $\mathbb{R}^3$.
>
### Sottospazi Fondamentali Associati a una Matrice

Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ una matrice reale di dimensioni $m \times n$. È possibile partizionare la matrice per righe o per colonne:

$$
A = \begin{pmatrix} R_1 \\ \vdots \\ R_m \end{pmatrix} = \begin{pmatrix} C_1 & \dots & C_n \end{pmatrix}
$$

dove:
- $R_i \in \mathrm{Mat}_{\mathbb{R}}(1, n)$ denota la $i$-esima riga di $A$ (vettore riga con $n$ componenti, identificabile con un vettore di $\mathbb{R}^n$).
- $C_j \in \mathrm{Mat}_{\mathbb{R}}(m, 1)$ denota la $j$-esima colonna di $A$ (vettore colonna con $m$ componenti, identificabile con un vettore di $\mathbb{R}^m$).

> [!example] Partizione di una Matrice $2 \times 3$
> Data la matrice $A = \begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 3)$:
> - I vettori riga sono:
>   $$
>   R_1 = \begin{pmatrix} 1 & 2 & 3 \end{pmatrix}, \qquad R_2 = \begin{pmatrix} 4 & 5 & 6 \end{pmatrix}
>   $$
> - I vettori colonna sono:
>   $$
>   C_1 = \begin{pmatrix} 1 \\ 4 \end{pmatrix}, \qquad C_2 = \begin{pmatrix} 2 \\ 5 \end{pmatrix}, \qquad C_3 = \begin{pmatrix} 3 \\ 6 \end{pmatrix}
>   $$

> [!definition] Spazio delle Righe e Spazio delle Colonne
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$. Si definiscono:
> 1. **Spazio delle Righe di $A$:** è il sottospazio di $\mathbb{R}^n$ generato dai vettori riga di $A$:
>    $$
>    \mathrm{row}(A) := \mathrm{Span}(R_1, \dots, R_m) \subseteq \mathrm{Mat}_{\mathbb{R}}(1, n) \cong \mathbb{R}^n
>    $$
> 2. **Spazio delle Colonne di $A$:** è il sottospazio di $\mathbb{R}^m$ generato dai vettori colonna di $A$:
>    $$
>    \mathrm{col}(A) := \mathrm{Span}(C_1, \dots, C_n) \subseteq \mathrm{Mat}_{\mathbb{R}}(m, 1) \cong \mathbb{R}^m
>    $$

> [!example] Spazio delle Righe e Colonne per Matrice $2 \times 3$
> Per la matrice $A = \begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \end{pmatrix}$:
> $$
> \mathrm{row}(A) = \mathrm{Span}\left[ \begin{pmatrix} 1 & 2 & 3 \end{pmatrix}, \begin{pmatrix} 4 & 5 & 6 \end{pmatrix} \right] \subseteq \mathbb{R}^3
> \mathrm{col}(A) = \mathrm{Span}\left[ \begin{pmatrix} 1 \\ 4 \end{pmatrix}, \begin{pmatrix} 2 \\ 5 \end{pmatrix}, \begin{pmatrix} 3 \\ 6 \end{pmatrix} \right] \subseteq \mathbb{R}^2
> $$
>
### Insieme delle Soluzioni di Sistemi Lineari e Nucleo (Ker)

Si consideri un sistema lineare arbitrario di $m$ equazioni in $n$ incognite scritto in forma matriciale $A\mathbf{x} = \mathbf{b}$, con $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ e vettore dei termini noti $\mathbf{b} \in \mathbb{R}^m$.

L'insieme delle soluzioni del sistema è definito dal sottoinsieme:
$$
S = \left\{ \mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{b} \right\} \subseteq \mathbb{R}^n
$$

> [!theorem] Struttura dell'Insieme delle Soluzioni
> L'insieme delle soluzioni $S$ è un **sottospazio vettoriale** di $\mathbb{R}^n$ se e solo se il sistema è **omogeneo**, ovvero se e solo se $\mathbf{b} = \mathbf{0}$.
> 
> In tal caso, il sottospazio prende il nome di **Nucleo** (o **Kernel**) della matrice $A$:
> $$
> S = \mathrm{Ker}(A) = \left\{ \mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0} \right\}
> $$

> [!quote]- Dimostrazione
> **Necessità ($\implies$):**
> Si supponga che $S$ sia un sottospazio vettoriale di $\mathbb{R}^n$.
> Allora, per il criterio dei sottospazi, il vettore nullo deve necessariamente appartenere a $S$:
> $$
> \mathbf{0} \in S \implies A\mathbf{0} = \mathbf{b}
> $$
> Poiché per le proprietà del prodotto matrice-vettore si ha $A\mathbf{0} = \mathbf{0}$, ne consegue immediatamente che:
> $$
> \mathbf{0} = \mathbf{b}
> $$
> Quindi il sistema deve essere omogeneo.
>
> **Sufficienza ($\impliedby$):**
> Si supponga che $\mathbf{b} = \mathbf{0}$, ovvero che $S = \mathrm{Ker}(A) = \{ \mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0} \}$. Si verificano le proprietà di sottospazio:
> 
> (I) **Presenza dell'elemento neutro:**
> $$
> A\mathbf{0} = \mathbf{0} \implies \mathbf{0} \in S = \mathrm{Ker}(A)
> $$
> 
> (II) **Chiusura rispetto alla somma:**
> Siano $\mathbf{v}_1, \mathbf{v}_2 \in S = \mathrm{Ker}(A)$. Per ipotesi si ha $A\mathbf{v}_1 = \mathbf{0}$ e $A\mathbf{v}_2 = \mathbf{0}$. Sfruttando la linearità del prodotto matrice-vettore:
> $$
> A(\mathbf{v}_1 + \mathbf{v}_2) = \underbrace{A\mathbf{v}_1}_{\in \mathrm{Ker}(A) \implies = \mathbf{0}} + \underbrace{A\mathbf{v}_2}_{\in \mathrm{Ker}(A) \implies = \mathbf{0}} = \mathbf{0} + \mathbf{0} = \mathbf{0}
> $$
> Dunque:
> $$
> \mathbf{v}_1 + \mathbf{v}_2 \in S
> $$
> 
> (III) **Chiusura rispetto al prodotto per scalare:**
> Sia $c \in \mathbb{R}$ e sia $\mathbf{v} \in S = \mathrm{Ker}(A)$ (dunque $A\mathbf{v} = \mathbf{0}$). Allora:
> $$
> A(c\mathbf{v}) = c \underbrace{(A\mathbf{v})}_{\in \mathrm{Ker}(A) \implies = \mathbf{0}} = c \cdot \mathbf{0} = \mathbf{0}
> $$
> Dunque:
> $$
> c\mathbf{v} \in S = \mathrm{Ker}(A) \qquad \blacksquare
> $$
>
## 2.3. Basi e Dimensione

### Vettori Linearmente Indipendenti e Dipendenti

> [!definition] Vettori Linearmente Indipendenti
> Sia $V$ uno spazio vettoriale su $\mathbb{R}$. Un insieme finito di vettori $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$ si dicono **linearmente indipendenti** (L.I.) se l'unica loro combinazione lineare che produce il vettore nullo è quella con tutti i coefficienti scalari nulli:
> $$
> c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0} \iff c_1 = c_2 = \dots = c_n = 0
> $$

> [!definition] Vettori Linearmente Dipendenti
> I vettori $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$ si dicono **linearmente dipendenti** (L.D.) se non sono linearmente indipendenti, ovvero se esiste una loro combinazione lineare a coefficienti **non tutti nulli** che dà come risultato il vettore nullo:
> $$
> \exists\, c_1, \dots, c_n \in \mathbb{R} \quad\text{con}\quad \exists\, i \in \{1, \dots, n\} \text{ tale che } c_i \neq 0 \quad\text{e}\quad c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}
> $$

> [!example] Esempi ed Esercizi sull'Indipendenza Lineare

> [!example] Esercizio 1: Dipendenza Lineare in $\mathbb{R}^3$
> Si consideri lo spazio vettoriale $V = \mathbb{R}^3$ e la terna di vettori:
> $$
> \mathbf{v}_1 = \begin{pmatrix} 1 \\ 2 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} -1 \\ 0 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_3 = \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix}
> $$
> Per stabilire se sono linearmente indipendenti o dipendenti, si impone la combinazione lineare nulla:
> $$
> c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + c_3 \mathbf{v}_3 = \mathbf{0} \implies c_1 \begin{pmatrix} 1 \\ 2 \\ 1 \end{pmatrix} + c_2 \begin{pmatrix} -1 \\ 0 \\ 1 \end{pmatrix} + c_3 \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}
> $$
> Il vettore risultante conduce al sistema lineare omogeneo nelle incognite $c_1, c_2, c_3$:
> $$
> \begin{cases}
> c_1 - c_2 = 0 \\
> 2c_1 + c_3 = 0 \\
> c_1 + c_2 + c_3 = 0
> \end{cases}
> $$
> Dalla prima equazione si ha $c_1 = c_2$. Sostituendo nelle rimanenti due equazioni:
> $$
> \begin{cases}
> c_1 = c_2 \\
> 2c_2 + c_3 = 0 \\
> c_2 + c_2 + c_3 = 0 \implies 2c_2 + c_3 = 0
> \end{cases}
> $$
> Le ultime due equazioni sono identiche. Il sistema ammette dunque $\infty^1$ soluzioni non banali dipendenti da un parametro libero.
> Scegliendo ad esempio come soluzione particolare $c_1 = 1$, si ricava:
> $$
> \begin{cases}
> c_1 = 1 \\
> c_2 = 1 \\
> c_3 = -2c_2 = -2
> \end{cases}
> $$
> Poiché esistono coefficienti non tutti nulli $(c_1, c_2, c_3) = (1, 1, -2)$ che annullano la combinazione lineare:
> $$
> 1\mathbf{v}_1 + 1\mathbf{v}_2 - 2\mathbf{v}_3 = \mathbf{0}
> $$
> i tre vettori $\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3$ sono **linearmente dipendenti** (L.D.).
>
> In particolare, uno di essi può essere espresso come combinazione lineare degli altri:
> $$
> \mathbf{v}_3 = \frac{1}{2}\mathbf{v}_1 + \frac{1}{2}\mathbf{v}_2
> $$

> [!example] Esercizio 2: Indipendenza Lineare in $\mathbb{R}^4$
> Si consideri lo spazio vettoriale $V = \mathbb{R}^4$ e la terna di vettori:
> $$
> \mathbf{w}_1 = \begin{pmatrix} 1 \\ 0 \\ 0 \\ 2 \end{pmatrix}, \qquad \mathbf{w}_2 = \begin{pmatrix} 0 \\ 2 \\ 1 \\ 1 \end{pmatrix}, \qquad \mathbf{w}_3 = \begin{pmatrix} 0 \\ 0 \\ 3 \\ 0 \end{pmatrix}
> $$
> Si verifichi se $\{\mathbf{w}_1, \mathbf{w}_2, \mathbf{w}_3\}$ sono linearmente indipendenti (L.I.) o linearmente dipendenti (L.D.).
>
> Si impone la combinazione lineare nulla:
> $$
> c_1 \mathbf{w}_1 + c_2 \mathbf{w}_2 + c_3 \mathbf{w}_3 = \mathbf{0} \implies c_1 \begin{pmatrix} 1 \\ 0 \\ 0 \\ 2 \end{pmatrix} + c_2 \begin{pmatrix} 0 \\ 2 \\ 1 \\ 1 \end{pmatrix} + c_3 \begin{pmatrix} 0 \\ 0 \\ 3 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}
> $$
> Uguagliando componente per componente, si ottiene il sistema lineare omogeneo di 4 equazioni in 3 incognite:
> $$
> \begin{cases}
> c_1 = 0 \\
> 2c_2 = 0 \\
> c_2 + 3c_3 = 0 \\
> 2c_1 + c_2 = 0
> \end{cases}
> $$
> Risolvendo a cascata:
> 1. Dalla prima equazione: $c_1 = 0$.
> 2. Dalla seconda equazione: $2c_2 = 0 \implies c_2 = 0$.
> 3. Sostituendo $c_2 = 0$ nella terza equazione: $0 + 3c_3 = 0 \implies c_3 = 0$.
> 4. La quarta equazione $2(0) + 0 = 0$ è identicamente soddisfatta.
>
> L'unica soluzione del sistema è la soluzione nulla:
> $$
> c_1 = c_2 = c_3 = 0
> $$
> Pertanto i vettori $\mathbf{w}_1, \mathbf{w}_2, \mathbf{w}_3$ sono **linearmente indipendenti** (L.I.).
>
## 2.4. Basi, Dimensione e Spazi Vettoriali Associati a Matrici

## 2.5. Basi e Dimensione degli Spazi Vettoriali

### Ridondanza nei Vettori Linearmente Dipendenti

> [!proposition] Ridondanza dei Vettori Linearmente Dipendenti
> Siano dati i vettori $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$.
> I vettori $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono **linearmente dipendenti** (L.D.) se e soltanto se uno di essi è combinazione lineare degli altri:
> $$
> \mathbf{v}_1, \dots, \mathbf{v}_n \text{ sono L.D.} \iff \exists j \in \{1, \dots, n\} : \mathbf{v}_j \in \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{j-1}, \mathbf{v}_{j+1}, \dots, \mathbf{v}_n\}
> $$
>
### Il Lemma di Scarto

> [!lemma] Lemma di Scarto
> Siano $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$ un insieme di vettori **linearmente dipendenti** e **generatori** di uno spazio vettoriale $V$:
> $$
> V = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}
> $$
> Allora uno di essi può essere "scartato" senza modificare lo spazio generato ($\mathrm{Span}$).
> In particolare, se (a meno di riordinare gli indici) il vettore $\mathbf{v}_n$ è combinazione lineare dei precedenti:
> $$
> \mathbf{v}_n = c_1 \mathbf{v}_1 + \dots + c_{n-1} \mathbf{v}_{n-1}
> $$
> allora:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}
> $$
> Di conseguenza, i rimanenti vettori $\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}$ continuano a essere generatori di $V$.

> [!quote]- Dimostrazione
> Supponiamo, senza perdita di generalità, che $\mathbf{v}_n$ sia combinazione lineare degli altri vettori $\mathbf{v}_1, \dots, \mathbf{v}_{n-1}$:
> $$
> \mathbf{v}_n = c_1 \mathbf{v}_1 + \dots + c_{n-1} \mathbf{v}_{n-1}, \qquad c_i \in \mathbb{R}
> $$
> Dobbiamo dimostrare la doppia inclusione insiemistica tra $\mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ e $\mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}$.
>
> **1. Prima inclusione: $\mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \subseteq \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}$**
> Sia $\mathbf{w} \in \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$. Per definizione di $\mathrm{Span}$, esistono coefficienti $a_1, \dots, a_n \in \mathbb{R}$ tali che:
> $$
> \mathbf{w} = a_1 \mathbf{v}_1 + \dots + a_{n-1} \mathbf{v}_{n-1} + a_n \mathbf{v}_n
> $$
> Sostituendo in questa combinazione lineare l'espressione di $\mathbf{v}_n$ in termini dei primi $n-1$ vettori:
> $$
> \begin{aligned}
> \mathbf{w} &= a_1 \mathbf{v}_1 + \dots + a_{n-1} \mathbf{v}_{n-1} + a_n \left( c_1 \mathbf{v}_1 + \dots + c_{n-1} \mathbf{v}_{n-1} \right) \\
> &= (a_1 + a_n c_1) \mathbf{v}_1 + \dots + (a_{n-1} + a_n c_{n-1}) \mathbf{v}_{n-1}
> \end{aligned}
> $$
> Poiché i coefficienti $(a_i + a_n c_i)$ sono ancora scalari reali, il vettore $\mathbf{w}$ è espresso come combinazione lineare di $\mathbf{v}_1, \dots, \mathbf{v}_{n-1}$, il che significa:
> $$
> \mathbf{w} \in \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}
> $$
> Risulta quindi provata l'inclusione:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \subseteq \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\}
> $$
>
> **2. Seconda inclusione: $\mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\} \subseteq \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$**
> L'inclusione opposta è immediata. Infatti ogni combinazione lineare di $\mathbf{v}_1, \dots, \mathbf{v}_{n-1}$ può essere riscritta aggiungendo il termine con coefficiente nullo $0 \cdot \mathbf{v}_n$:
> $$
> c_1 \mathbf{v}_1 + \dots + c_{n-1} \mathbf{v}_{n-1} = c_1 \mathbf{v}_1 + \dots + c_{n-1} \mathbf{v}_{n-1} + 0 \cdot \mathbf{v}_n
> $$
> Da cui segue direttamente:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\} \subseteq \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}
> $$
>
> Concludendo, per la doppia inclusione si ha l'uguaglianza degli spazi generati:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_{n-1}\} \qquad \blacksquare
> $$
>
### Il Lemma di Aggiunta

> [!lemma] Lemma di Aggiunta (Estensione di un Insieme L.I.)
> Siano dati i vettori $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_n \in V$ **linearmente indipendenti** (L.I.), ma **non generatori** di $V$.
> Allora esiste un vettore $\mathbf{v}_{n+1} \in V$ tale che l'insieme allargato:
> $$
> \{\mathbf{v}_1, \dots, \mathbf{v}_n, \mathbf{v}_{n+1}\}
> $$
> sia ancora formato da vettori **linearmente indipendenti**.

> [!quote]- Dimostrazione
> Poiché per ipotesi i vettori $\mathbf{v}_1, \dots, \mathbf{v}_n$ non sono generatori di $V$, il loro span è un sottospazio proprio di $V$:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \subset V \quad (\text{inclusione stretta})
> $$
> Ne consegue che esiste almeno un vettore $\mathbf{v}_{n+1} \in V$ che non appartiene a tale sottospazio:
> $$
> \exists \, \mathbf{v}_{n+1} \in V \quad \text{tale che} \quad \mathbf{v}_{n+1} \notin \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \qquad (*)
> $$
> Dimostriamo che la famiglia $\{\mathbf{v}_1, \dots, \mathbf{v}_n, \mathbf{v}_{n+1}\}$ è linearmente indipendente.
>
> Consideriamo una generica combinazione lineare nulla di questi $n+1$ vettori:
> $$
> c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n + c_{n+1} \mathbf{v}_{n+1} = \mathbf{0}
> $$
> per opportuni scalari $c_1, \dots, c_n, c_{n+1} \in \mathbb{R}$.
> Isoliamo il termine dipendente da $\mathbf{v}_{n+1}$:
> $$
> -c_{n+1} \mathbf{v}_{n+1} = c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n
> $$
> Dimostriamo che necessariamente $c_{n+1} = 0$.
> Se infatti supponessimo per assurdo $c_{n+1} \ne 0$, potremmo dividere ambo i membri dell'equazione per il termine non nullo $-c_{n+1}$, ricavando:
> $$
> \mathbf{v}_{n+1} = -\frac{c_1}{c_{n+1}} \mathbf{v}_1 - \dots - \frac{c_n}{c_{n+1}} \mathbf{v}_n
> $$
> Tale relazione esprimerebbe $\mathbf{v}_{n+1}$ come combinazione lineare di $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$, implicando che:
> $$
> \mathbf{v}_{n+1} \in \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}
> $$
> Questo contraddice formalmente la condizione $(*)$ di scelta del vettore $\mathbf{v}_{n+1}$.
> Essendo giunti a un **ASSURDO**, l'ipotesi $c_{n+1} \ne 0$ è falsa, e deve quindi valere:
> $$
> c_{n+1} = 0
> $$
> Sostituendo $c_{n+1} = 0$ nella combinazione lineare iniziale, essa si riduce a:
> $$
> c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}
> $$
> Poiché per ipotesi iniziale i vettori $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono linearmente indipendenti, l'unica loro combinazione lineare che fornisce il vettore nullo è quella a coefficienti tutti nulli:
> $$
> c_1 = \dots = c_n = 0
> $$
> Abbiamo pertanto dimostrato che:
> $$
> c_1 = \dots = c_n = c_{n+1} = 0
> $$
> Di conseguenza, i vettori $\mathbf{v}_1, \dots, \mathbf{v}_n, \mathbf{v}_{n+1}$ sono **linearmente indipendenti**.
> $$
> \blacksquare
> $$

> [!example] Esempio di Applicazione del Lemma di Aggiunta in $\mathbb{R}^3$
> Si consideri lo spazio vettoriale $V = \mathbb{R}^3$ e la coppia di vettori:
> $$
> \mathbf{v}_1 = \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix}
> $$
> 1. I vettori $\mathbf{v}_1, \mathbf{v}_2$ sono linearmente indipendenti poiché non sono proporzionali tra loro.
> 2. Tuttavia, essi non generano $\mathbb{R}^3$ (due soli vettori possono al massimo generare un piano in $\mathbb{R}^3$).
>
> Per il Lemma di Aggiunta, esiste un vettore $\mathbf{v}_3 \in \mathbb{R}^3$ tale che $\{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3\}$ risultino linearmente indipendenti.
>
> Per determinare $\mathbf{v}_3$, è sufficiente scegliere un vettore che non appartenga a $\mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\}$.
> Calcoliamo esplicitamente l'equazione cartesiana di $\mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\}$:
> $$
> \begin{pmatrix} x \\ y \\ z \end{pmatrix} \in \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix} \right\} \iff \begin{pmatrix} x \\ y \\ z \end{pmatrix} = a \begin{pmatrix} 1 \\ 0 \\ 1 \end{pmatrix} + b \begin{pmatrix} 0 \\ 1 \\ 2 \end{pmatrix} = \begin{pmatrix} a \\ b \\ a + 2b \end{pmatrix}
> $$
> Esplicitando per componenti:
> $$
> \begin{cases}
> x = a \\
> y = b \\
> z = a + 2b
> \end{cases}
> \implies z = x + 2y
> $$
> Dunque un vettore appartiene allo span se e solo se soddisfa la relazione lineare $z = x + 2y$.
> Se scegliamo un vettore per cui $z \ne x + 2y$, esso non apparterrà allo span:
> $$
> z \ne x + 2y \implies \mathbf{v} \notin \mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\}
> $$
> Scegliendo ad esempio:
> $$
> \mathbf{v}_3 = \begin{pmatrix} 0 \\ 0 \\ 1 \end{pmatrix}
> $$
> si ha $z = 1$, mentre $x + 2y = 0 + 2(0) = 0 \ne 1$.
> Pertanto $\mathbf{v}_3 \notin \mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\}$, e la terna $\{\mathbf{v}_1, \mathbf{v}_2, \mathbf{v}_3\}$ è linearmente indipendente in $\mathbb{R}^3$.
>
### Basi di uno Spazio Vettoriale

> [!definition] Definizione: Base di uno Spazio Vettoriale
> Dato uno spazio vettoriale $V$, una **base** di $V$ è un insieme ordinato di vettori $\mathcal{B} = \{\mathbf{v}_1, \dots, \mathbf{v}_n\} \subseteq V$ tale che:
> 1. $\mathbf{v}_1, \dots, \mathbf{v}_n$ **generano** $V$, ovvero:
>    $$
>    \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} = V
>    $$
> 2. $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono **linearmente indipendenti** (L.I.).

> [!example] Esempio: Base Canonica di $\mathbb{R}^2$
> L'insieme costituito dai vettori:
> $$
> \mathcal{E} = \left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \end{pmatrix} \right\} = \{\mathbf{e}_1, \mathbf{e}_2\}
> $$
> (dove la notazione con pedice $\mathbf{e}_i$ indica che l'elemento $1$ si trova nella riga $i$-esima e tutti gli altri elementi sono nulli) è una base di $\mathbb{R}^2$, detta **base canonica** di $\mathbb{R}^2$.

> [!example] Esempio: Base Canonica di $\mathbb{R}^n$
> Nello spazio vettoriale $\mathbb{R}^n$, l'insieme:
> $$
> \mathcal{E} = \{\mathbf{e}_1, \mathbf{e}_2, \dots, \mathbf{e}_n\} = \left\{ \begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ \vdots \\ 0 \end{pmatrix}, \dots, \begin{pmatrix} 0 \\ 0 \\ \vdots \\ 1 \end{pmatrix} \right\}
> $$
> è una base di $\mathbb{R}^n$, denominata **base canonica** di $\mathbb{R}^n$.

> [!example] Esempi di Insiemi di Vettori in $\mathbb{R}^2$

> [!example] Analisi di Configurazioni in $\mathbb{R}^2$
> 1. **Insiemi che costituiscono basi di $\mathbb{R}^2$:**
>    Ciascuno dei seguenti insiemi è formato da due vettori linearmente indipendenti (non paralleli), che generano interamente $\mathbb{R}^2$:
>    $$
>    \left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \end{pmatrix} \right\}, \qquad \left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} -1 \\ 1 \end{pmatrix} \right\}, \qquad \left\{ \begin{pmatrix} 2 \\ 3 \end{pmatrix}, \begin{pmatrix} 4 \\ 3 \end{pmatrix} \right\}
>    $$
>
> 2. **Insieme con un solo vettore:**
>    L'insieme $\left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix} \right\}$ **non è una base** di $\mathbb{R}^2$.
>    Sebbene il singolo vettore non nullo sia linearmente indipendente, esso non genera tutto lo spazio $\mathbb{R}^2$, bensì soltanto la retta corrispondente all'asse delle ascisse ($y = 0$).
>
> 3. **Insieme con tre vettori:**
>    L'insieme $\left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 1 \end{pmatrix} \right\}$ **non è una base** di $\mathbb{R}^2$.
>    Infatti i vettori non sono linearmente indipendenti:
>    $$
>    \begin{pmatrix} 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} + \begin{pmatrix} 0 \\ 1 \end{pmatrix}
>    $$
>    Essendo linearmente dipendenti, violano la seconda condizione per essere una base.
>
> 4. **Insieme di vettori proporzionali:**
>    L'insieme $\left\{ \begin{pmatrix} 1 \\ -1 \end{pmatrix}, \begin{pmatrix} -2 \\ 2 \end{pmatrix} \right\}$ **non è una base** di $\mathbb{R}^2$ poiché:
>    - $\mathbf{v}_2 = -2 \mathbf{v}_1$, dunque i vettori sono linearmente dipendenti;
>    - Non sono generatori di $\mathbb{R}^2$, ma generano unicamente la retta vettoriale passante per l'origine descritta dall'equazione $x + y = 0$.
>
### Esistenza di una Base

> [!proposition] Esistenza di una Base
> Sia $V$ uno spazio vettoriale finitamente generato da un insieme di vettori $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$:
> $$
> V = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\}
> $$
> Allora esiste un sottoinsieme $U \subseteq \{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ che costituisce una **base** di $V$.
>
> *(Dimostrazione costruttiva per applicazione iterata del Lemma di Scarto: se l'insieme $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ è L.I., esso è già una base; se è L.D., per il Lemma di Scarto è possibile rimuovere un vettore mantenendo invariato lo $\mathrm{Span}$. Ripetendo la procedura un numero finito di volte, si giunge a un insieme massimale di vettori L.I. che generano ancora $V$, ossia a una base).*
>
### Il Lemma di Steinitz (Lemma di Scambio)

> [!lemma] Lemma di Steinitz
> Sia $V = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_m\}$ uno spazio vettoriale avente come base l'insieme $\{\mathbf{v}_1, \dots, \mathbf{v}_m\}$.
> Siano $\mathbf{w}_1, \dots, \mathbf{w}_n \in V$ un insieme di vettori arbitrari in $V$.
> Se:
> $$
> n > m
> $$
> allora i vettori $\mathbf{w}_1, \dots, \mathbf{w}_n$ sono **linearmente dipendenti** (L.D.).

> [!quote]- Dimostrazione
> Poiché $\{\mathbf{v}_1, \dots, \mathbf{v}_m\}$ è una base di $V$, ogni vettore $\mathbf{w}_j$ (per $j = 1, \dots, n$) appartiene a $\mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_m\}$ e può essere espresso in modo unico come combinazione lineare dei vettori di base:
> $$
> \mathbf{w}_j = \sum_{i=1}^m a_{ij} \mathbf{v}_i, \qquad a_{ij} \in \mathbb{R}, \quad \forall j \in \{1, \dots, n\}
> $$
>
> Si consideri la matrice $A \in \mathrm{Mat}(m, n)$ avente per colonne i coefficienti delle combinazioni lineari dei vettori $\mathbf{w}_j$ rispetto alla base $\{\mathbf{v}_1, \dots, \mathbf{v}_m\}$:
> $$
> A = (a_{ij}) = \begin{pmatrix} 
> a_{11} & a_{12} & \dots & a_{1n} \\ 
> a_{21} & a_{22} & \dots & a_{2n} \\ 
> \vdots & \vdots & \ddots & \vdots \\ 
> a_{m1} & a_{m2} & \dots & a_{mn} 
> \end{pmatrix} \in \mathrm{Mat}(m, n)
> $$
> Per le proprietà del rango di una matrice, il rango di $A$ è limitato superiormente dal minimo tra il numero di righe e il numero di colonne:
> $$
> 0 \le \mathrm{rk}(A) \le \min(m, n)
> $$
> Essendo per ipotesi $n > m$, si ha $\min(m, n) = m$, da cui:
> $$
> \mathrm{rk}(A) \le m < n \implies \mathrm{rk}(A) < n
> $$
> Consideriamo ora il sistema lineare omogeneo associato alla matrice $A$:
> $$
> A \mathbf{x} = \mathbf{0}
> $$
> dove $\mathbf{x} \in \mathbb{R}^n$.
> Per il **Teorema di Rouché-Capelli**, un sistema lineare omogeneo con matrice dei coefficienti $A \in \mathrm{Mat}(m, n)$ avente $\mathrm{rk}(A) < n$ ammette:
> $$
> \infty^{n - \mathrm{rk}(A)} \text{ soluzioni}
> $$
> Poiché $n - \mathrm{rk}(A) \ge n - m > 0$, esistono soluzioni non banali del sistema omogeneo.
> Esiste pertanto un vettore di coefficienti $\mathbf{c} \in \mathbb{R}^n$ **non nullo**:
> $$
> \exists \, \mathbf{c} = \begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix} \ne \begin{pmatrix} 0 \\ \vdots \\ 0 \end{pmatrix} \quad \text{tale che} \quad A \mathbf{c} = \mathbf{0}
> $$
> Esplicitando il prodotto matrice-vettore:
> $$
> A \mathbf{c} = \begin{pmatrix} 
> a_{11} & \dots & a_{1n} \\ 
> \vdots & \ddots & \vdots \\ 
> a_{m1} & \dots & a_{mn} 
> \end{pmatrix} \begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix} = \begin{pmatrix} 
> a_{11}c_1 + \dots + a_{1n}c_n \\ 
> \vdots \\ 
> a_{m1}c_1 + \dots + a_{mn}c_n 
> \end{pmatrix} = \begin{pmatrix} 0 \\ \vdots \\ 0 \end{pmatrix}
> $$
> L'uguaglianza vettoriale equivale al soddisfacimento delle $m$ equazioni scalari:
> $$
> \sum_{j=1}^n a_{ij} c_j = 0, \qquad \forall i \in \{1, \dots, m\}
> $$
>
> Consideriamo ora la combinazione lineare dei vettori $\mathbf{w}_1, \dots, \mathbf{w}_n$ avente come pesi le componenti del vettore non nullo $\mathbf{c}$:
> $$
> \sum_{j=1}^n c_j \mathbf{w}_j = c_1 \mathbf{w}_1 + \dots + c_n \mathbf{w}_n
> $$
> Sostituendo in essa l'espressione di ciascun $\mathbf{w}_j = \sum_{i=1}^m a_{ij} \mathbf{v}_i$:
> $$
> \sum_{j=1}^n c_j \mathbf{w}_j = \sum_{j=1}^n c_j \left( \sum_{i=1}^m a_{ij} \mathbf{v}_i \right)
> $$
> Per la proprietà distributiva e la linearità delle sommatorie finite, possiamo scambiare l'ordine delle somme:
> $$
> \begin{aligned}
> \sum_{j=1}^n c_j \mathbf{w}_j &= \sum_{j=1}^n \sum_{i=1}^m c_j a_{ij} \mathbf{v}_i \\
> &= \sum_{i=1}^m \sum_{j=1}^n a_{ij} c_j \mathbf{v}_i \\
> &= \sum_{i=1}^m \left( \sum_{j=1}^n a_{ij} c_j \right) \mathbf{v}_i
> \end{aligned}
> $$
> Poiché per costruzione $\mathbf{c}$ è soluzione del sistema omogeneo, la quantità tra parentesi è identicamente nulla per ogni $i$:
> $$
> \sum_{j=1}^n a_{ij} c_j = 0, \quad \forall i \in \{1, \dots, m\}
> $$
> Si ottiene dunque:
> $$
> \sum_{j=1}^n c_j \mathbf{w}_j = \sum_{i=1}^m 0 \cdot \mathbf{v}_i = \mathbf{0}
> $$
> Poiché abbiamo trovato una combinazione lineare nulla dei vettori $\mathbf{w}_1, \dots, \mathbf{w}_n$ con scalari $c_1, \dots, c_n$ non tutti nulli ($\mathbf{c} \ne \mathbf{0}$), i vettori $\mathbf{w}_1, \dots, \mathbf{w}_n$ sono **linearmente dipendenti**.
> $$
> \blacksquare
> $$

> [!example] Esempi di Applicazione del Lemma di Steinitz

> [!example] Esempio 1: Vettori in $\mathbb{R}^3$
> Si consideri lo spazio $V = \mathbb{R}^3$ con la base canonica $\{\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3\}$, la cui cardinalità è $m = 3$.
> Siano dati i 4 vettori:
> $$
> \mathbf{w}_1 = \begin{pmatrix} 1 \\ 2 \\ 3 \end{pmatrix}, \quad \mathbf{w}_2 = \begin{pmatrix} -1 \\ 1 \\ 2 \end{pmatrix}, \quad \mathbf{w}_3 = \begin{pmatrix} 1 \\ -2 \\ 4 \end{pmatrix}, \quad \mathbf{w}_4 = \begin{pmatrix} 2 \\ 2 \\ -2 \end{pmatrix}
> $$
> Poiché il numero di vettori considerati è $n = 4$ e la base canonica ha $m = 3$ vettori, essendo $n > m$ ($4 > 3$), per il Lemma di Steinitz i 4 vettori sono **linearmente dipendenti** senza necessità di calcolare alcun determinante o impostare sistemi.

> [!example] Esempio 2: Spazio dei Polinomi $\mathbb{R}[t]_{\le 1}$
> Si consideri lo spazio dei polinomi di grado al più 1 a coefficienti reali:
> $$
> V = \mathbb{R}[t]_{\le 1} = \{at + b : a, b \in \mathbb{R}\} = \mathrm{Span}\{t, 1\}
> $$
> Una base di $V$ è data dall'insieme $\{t, 1\}$, che contiene $m = 2$ elementi.
> Si considerino i 3 polinomi ($n = 3$):
> $$
> p_1(t) = t - 2, \qquad p_2(t) = \frac{1}{2}t + 1, \qquad p_3(t) = \frac{2}{3}t - 2
> $$
> Essendo $n = 3 > 2 = m$, per il Lemma di Steinitz i 3 polinomi sono **linearmente dipendenti**.
>
### Conseguenze di Steinitz e Invarianza della Dimensione

> [!theorem] Corollario: Proprietà Cardinali delle Basi
> Sia $V$ uno spazio vettoriale avente una base $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ formata da $n$ elementi, e siano $\mathbf{u}_1, \dots, \mathbf{u}_m \in V$ vettori arbitrari in $V$.
>
> 1. Se $\mathbf{u}_1, \dots, \mathbf{u}_m$ sono **linearmente indipendenti** (L.I.), allora:
>    $$
>    m \le n
>    $$
> 2. Se $\mathbf{u}_1, \dots, \mathbf{u}_m$ sono **generatori** di $V$, allora:
>    $$
>    m \ge n
>    $$
> 3. Se $\mathbf{u}_1, \dots, \mathbf{u}_m$ formano una **base** di $V$, allora:
>    $$
>    m = n
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione del punto 1:**
> Poiché $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è una base di $V$, si ha $V = \mathrm{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_n\}$.
> Se per assurdo fosse $m > n$, applicando direttamente il Lemma di Steinitz ai vettori $\mathbf{u}_1, \dots, \mathbf{u}_m$ nello spazio generato dagli $n$ vettori di base, risulterebbe che $\mathbf{u}_1, \dots, \mathbf{u}_m$ sono linearmente dipendenti.
> Questo contraddice l'ipotesi di lineare indipendenza di $\{\mathbf{u}_1, \dots, \mathbf{u}_m\}$.
> Essendo giunti a un **ASSURDO**, deve valere:
> $$
> m \le n
> $$
>
> **Dimostrazione del punto 2:**
> Supponiamo che $\{\mathbf{u}_1, \dots, \mathbf{u}_m\}$ sia un insieme di generatori di $V$, ovvero:
> $$
> V = \mathrm{Span}\{\mathbf{u}_1, \dots, \mathbf{u}_m\}
> $$
> Per la proposizione sull'esistenza di una base, è possibile estrarre da $\{\mathbf{u}_1, \dots, \mathbf{u}_m\}$ una base $\mathcal{B}' \subseteq \{\mathbf{u}_1, \dots, \mathbf{u}_m\}$ formata da $k$ elementi, con $k \le m$.
> D'altra parte, l'insieme $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è formato da vettori linearmente indipendenti in $V = \mathrm{Span}(\mathcal{B}')$.
> Applicando il punto 1 con la base $\mathcal{B}'$ (avente $k$ elementi) e i vettori linearmente indipendenti $\mathbf{b}_1, \dots, \mathbf{b}_n$, si ottiene:
> $$
> n \le k \le m \implies m \ge n
> $$
>
> **Dimostrazione del punto 3:**
> Se $\mathbf{u}_1, \dots, \mathbf{u}_m$ costituiscono una base di $V$, per definizione essi sono contemporaneamente:
> - Linearmente indipendenti, da cui per il punto (1) segue $m \le n$;
> - Generatori di $V$, da cui per il punto (2) segue $m \ge n$.
>
> Dalla congiunzione delle due disuguaglianze segue univocamente:
> $$
> (m \le n) \land (m \ge n) \implies m = n \qquad \blacksquare
> $$
>
### La Dimensione di uno Spazio Vettoriale

> [!definition] Definizione: Dimensione di uno Spazio Vettoriale
> Dal punto (3) del teorema precedente discende che **tutte le basi** di uno spazio vettoriale finitamente generato $V$ possiedono esattamente lo **stesso numero di elementi**.
> Questo invariante numerico fondamentale è definito come la **dimensione** dello spazio vettoriale $V$, e si indica con la notazione:
> $$
> \dim(V)
> $$
>
> In virtù dei punti (1) e (2) del teorema:
> - $\dim(V)$ coincide con il numero **massimo** di vettori linearmente indipendenti che è possibile trovare in $V$;
> - $\dim(V)$ coincide con il numero **minimo** di generatori necessari per generare l'intero spazio $V$.

> [!example] Esempi Notevoli di Dimensione

> [!example] Dimensioni degli Spazi Standard
> 1. **Spazio numerico $\mathbb{R}^n$:**
>    $$
>    \dim(\mathbb{R}^n) = n
>    $$
>    La dimensione è $n$ in quanto la base canonica $\{\mathbf{e}_1, \dots, \mathbf{e}_n\}$ conta esattamente $n$ vettori.
>
> 2. **Spazio delle matrici $\mathrm{Mat}(m, n)$:**
>    $$
>    \dim(\mathrm{Mat}(m, n)) = m \cdot n
>    $$
>    Esiste infatti una base standard di $\mathrm{Mat}(m, n)$ formata da $m \cdot n$ elementi:
>    $$
>    \mathcal{B} = \{E_{11}, E_{12}, \dots, E_{1n}, E_{21}, \dots, E_{mn}\}
>    $$
>    dove ogni matrice elementare $E_{ij} \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ è definita componente per componente da:
>    $$
>    (E_{ij})_{a, b} = \begin{cases} 
>    1 & \text{se } a = i \land b = j \\ 
>    0 & \text{altrimenti} 
>    \end{cases}
>    $$
>    Ad esempio, in $\mathrm{Mat}(m, n)$, la matrice elementare $E_{21}$ ha la forma:
>    $$
>    E_{21} = \begin{pmatrix} 
>    0 & 0 & \dots & 0 \\ 
>    1 & 0 & \dots & 0 \\ 
>    \vdots & \vdots & \ddots & \vdots \\ 
>    0 & 0 & \dots & 0 
>    \end{pmatrix}
>    $$
>
> 3. **Spazio dei polinomi di grado limitato $\mathbb{R}[t]_{\le n}$:**
>    $$
>    \dim(\mathbb{R}[t]_{\le n}) = n + 1
>    $$
>    Infatti una base è fornita dalla famiglia di monomi:
>    $$
>    \mathcal{B} = \{1, t, t^2, \dots, t^n\}
>    $$
>    detta **base canonica** di $\mathbb{R}[t]_{\le n}$, che contiene esattamente $n + 1$ elementi.
>
> 4. **Spazio di tutti i polinomi $\mathbb{R}[t]$:**
>    $$
>    \dim(\mathbb{R}[t]) = \infty
>    $$
>    Lo spazio dei polinomi di grado arbitrario non è finitamente generato: per ogni intero $k \in \mathbb{N}$, l'insieme dei monomi $\{1, t, t^2, \dots, t^k\}$ è linearmente indipendente, pertanto non può esistere una base finita.

> [!note] Convenzione sugli Spazi a Dimensione Finita
> Nel seguito del corso, salvo esplicita menzione contraria, considereremo esclusivamente spazi vettoriali a dimensione finita:
> $$
> \dim(V) < \infty
> $$
>
### Proprietà della Dimensione dei Sottospazi

> [!proposition] Dimensione dei Sottospazi Vettoriali
> Sia $V$ uno spazio vettoriale di dimensione finita e sia $H \subseteq V$ un suo sottospazio vettoriale.
> Allora valgono le seguenti proprietà:
> 1. La dimensione del sottospazio è limitata dalla dimensione dello spazio ambiente:
>    $$
>    \dim(H) \le \dim(V)
>    $$
> 2. Se le due dimensioni coincidono, il sottospazio coincide necessariamente con l'intero spazio:
>    $$
>    \dim(H) = \dim(V) \iff H = V
>    $$
>
## 2.6. Spazi Vettoriali Associati a una Matrice

*(Riferimento Lezione: `#2.04`)*

### Ripasso: Spazio delle Righe

Dato una matrice $A \in \mathrm{Mat}(m, n)$, siano $R_1, \dots, R_m \in \mathbb{R}^n$ i suoi vettori riga.
Lo **spazio delle righe** di $A$, indicato con $\mathrm{row}(A)$, è il sottospazio vettoriale di $\mathbb{R}^n$ generato da tutte le sue righe:
$$
\mathrm{row}(A) = \mathrm{Span}\{R_1, \dots, R_m\} \subseteq \mathbb{R}^n
$$

### Invarianza per Mosse di Gauss

> [!proposition] Invarianza dello Spazio delle Righe per Mosse di Gauss
> Le operazioni elementari di riga dell'algoritmo di eliminazione di Gauss (scambio di righe, moltiplicazione di una riga per uno scalare non nullo, somma a una riga di un multiplo di un'altra riga) **preservano lo spazio delle righe**:
> $$
> A \xrightarrow{\text{Gauss}} A' \implies \mathrm{row}(A) = \mathrm{row}(A')
> $$

> [!example] Esempio di Riduzione a Scala e Calcolo di $\mathrm{row}(A)$
> Si consideri la matrice $A \in \mathrm{Mat}(3, 3)$:
> $$
> A = \begin{pmatrix} 1 & 2 & 3 \\ 4 & 5 & 6 \\ 7 & 8 & 9 \end{pmatrix}
> $$
> Eseguiamo le mosse elementari di Gauss per ridurre $A$ a gradini.
>
> **Passo 1:** Eliminiamo i termini sotto il primo pivot nella prima colonna mediante le operazioni:
> - $R_2 \leftarrow R_2 - 4R_1$
> - $R_3 \leftarrow R_3 - 7R_1$
>
> I calcoli sulle singole righe sono:
> $$
> R_2 - 4R_1 = (4, 5, 6) - 4(1, 2, 3) = (4 - 4, \, 5 - 8, \, 6 - 12) = (0, -3, -6)
> R_3 - 7R_1 = (7, 8, 9) - 7(1, 2, 3) = (7 - 7, \, 8 - 14, \, 9 - 21) = (0, -6, -12)
> $$
> La matrice trasformata diventa:
> $$
> \begin{pmatrix} 1 & 2 & 3 \\ 0 & -3 & -6 \\ 0 & -6 & -12 \end{pmatrix}
> $$
>
> **Passo 2:** Eliminiamo l'elemento sotto il secondo pivot mediante l'operazione:
> - $R_3 \leftarrow R_3 - 2R_2$
>
> Il calcolo della terza riga è:
> $$
> R_3 - 2R_2 = (0, -6, -12) - 2(0, -3, -6) = (0, \, -6 + 6, \, -12 + 12) = (0, 0, 0)
> $$
> Si ottiene la matrice a scala:
> $$
> A' = \begin{pmatrix} 1 & 2 & 3 \\ 0 & -3 & -6 \\ 0 & 0 & 0 \end{pmatrix}
> $$
>
> In virtù della proposizione precedente:
> $$
> \mathrm{row}(A) = \mathrm{row}(A') = \mathrm{Span}\{(1, 2, 3), (0, -3, -6), (0, 0, 0)\}
> $$
> Eliminando il vettore nullo $(0, 0, 0)$, che non contribuisce allo span:
> $$
> \mathrm{row}(A) = \mathrm{Span}\{(1, 2, 3), (0, -3, -6)\}
> $$
> I due vettori riga $(1, 2, 3)$ e $(0, -3, -6)$ sono linearmente indipendenti (grazie alla struttura a scala con pivot non nulli in colonne distinte).
> Di conseguenza:
> $$
> \{(1, 2, 3), (0, -3, -6)\} \quad \text{è una base di } \mathrm{row}(A)
> $$
> In particolare si ha $\dim(\mathrm{row}(A)) = 2$.
>
### Determinazione di una Base dello Spazio delle Righe

> [!proposition] Base dello Spazio delle Righe da Matrice a Scala
> Sia $A'$ una matrice a scala per righe ottenuta da una matrice $A$ mediante operazioni elementari di Gauss.
> Allora le **righe non nulle** di $A'$ formano una **base** dello spazio delle righe $\mathrm{row}(A)$.
> In particolare, la dimensione dello spazio delle righe coincide con il numero di pivot non nulli, ossia con il rango per righe di $A$:
> $$
> \dim(\mathrm{row}(A)) = \mathrm{rk}(A)
> $$
>
### Metodologia: Studio di un Sottospazio Vettoriale

> [!note] Come Studiare un Sottospazio Vettoriale Generato da Vettori
> Per studiare un generico sottospazio $H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_m\} \subseteq \mathbb{R}^n$, descritto tramite i suoi generatori $\mathbf{v}_1, \dots, \mathbf{v}_m \in \mathbb{R}^n$:
>
> 1. **Costruzione della matrice dei vettori riga:**
>    Si costruisce una matrice $A \in \mathrm{Mat}(m, n)$ disponendo i vettori generatori $\mathbf{v}_1, \dots, \mathbf{v}_m$ come **righe** di $A$:
>    $$
>    A = \begin{pmatrix} 
>    \text{---} & \mathbf{v}_1 & \text{---} \\ 
>    \text{---} & \mathbf{v}_2 & \text{---} \\ 
>    & \vdots & \\ 
>    \text{---} & \mathbf{v}_m & \text{---} 
>    \end{pmatrix} \in \mathrm{Mat}(m, n)
>    $$
>    In questo modo, il sottospazio $H$ coincide per definizione con lo spazio delle righe di $A$:
>    $$
>    H = \mathrm{row}(A)
>    $$
>
> 2. **Riduzione a scala con l'algoritmo di Gauss:**
>    Si applica l'algoritmo di eliminazione di Gauss sulle righe di $A$ fino a ottenere una matrice ridotta a gradini $A'$.
>
> 3. **Estrazione della base e calcolo della dimensione:**
>    - Le righe non nulle di $A'$ costituiscono una **base** del sottospazio $H$.
>    - Il numero di tali righe non nulle (numero di pivot) fornisce immediatamente la **dimensione** $\dim(H) = \mathrm{rk}(A)$.
>
   In particolare, i vettori originari $\mathbf{v}_1, \dots, \mathbf{v}_m$ sono linearmente indipendenti (L.I.) se e solo se il rango è massimo sulle righe:
   $$
   \mathbf{v}_1, \dots, \mathbf{v}_m \text{ sono L.I.} \iff \mathrm{rk}(A) = m
   $$

### Spazio delle Colonne di una Matrice

> [!definition] Spazio delle Colonne
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ una matrice a elementi reali con colonne denotate da $\mathbf{c}_1, \mathbf{c}_2, \dots, \mathbf{c}_n \in \mathbb{R}^m$, tale che:
> $$
> A = \begin{pmatrix} \mathbf{c}_1 & \mathbf{c}_2 & \dots & \mathbf{c}_n \end{pmatrix}
> $$
> Si definisce **spazio delle colonne** di $A$, denotato con $\mathrm{col}(A)$, il sottospazio vettoriale di $\mathbb{R}^m$ generato da tutte le colonne di $A$:
> $$
> \mathrm{col}(A) := \mathrm{Span}\{\mathbf{c}_1, \mathbf{c}_2, \dots, \mathbf{c}_n\} \subseteq \mathbb{R}^m
> $$

> [!note] Non Preservazione dello Spazio delle Colonne tramite Gauss
> A differenza dello spazio delle righe, le operazioni elementari di riga (eliminazione di Gauss) **NON** preservano lo spazio delle colonne di una matrice. Ovvero, se $A \xrightarrow{\text{Gauss}} A'$, in generale:
> $$
> \mathrm{col}(A) \neq \mathrm{col}(A')
> $$
> Tuttavia, le operazioni elementari di riga preservano le relazioni di dipendenza e indipendenza lineare tra le colonne; pertanto, le colonne di $A$ corrispondenti alle posizioni dei pivot nella matrice a scala $A'$ formano una base per lo spazio delle colonne originario $\mathrm{col}(A)$.

> [!theorem] Dimensione dello Spazio delle Colonne
> Per ogni matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$, la dimensione dello spazio delle colonne coincide con il rango della matrice:
> $$
> \dim(\mathrm{col}(A)) = \mathrm{rk}(A)
> $$

> [!proposition] Uguaglianza tra Rango per Righe e Rango per Colonne
> Dal momento che $\dim(\mathrm{row}(A)) = \mathrm{rk}(A)$ e $\dim(\mathrm{col}(A)) = \mathrm{rk}(A)$, e ricordando che lo spazio delle colonne di $A$ corrisponde allo spazio delle righe della matrice trasposta $A^T$, vale l'identità fondamentale:
> $$
> \mathrm{rk}(A^T) = \mathrm{rk}(A)
> $$
>
### Il Teorema di Nullità + Rango (Teorema della Dimensione per Matrici)

> [!theorem] Teorema di Nullità + Rango
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ una matrice a $m$ righe e $n$ colonne. Vale la relazione fondamentale tra la dimensione del nucleo (nullità) e la dimensione dell'immagine/spazio delle colonne (rango):
> $$
> \dim(\mathrm{Ker} A) + \mathrm{rk}(A) = n
> $$

> [!quote]- Dimostrazione
> Si consideri il sistema lineare omogeneo associato alla matrice $A$:
> $$
> A\mathbf{x} = \mathbf{0}
> $$
> Per il Teorema di Rouché-Capelli, il sistema omogeneo è sempre compatibile e lo spazio delle sue soluzioni dipende da un numero di parametri liberi pari a:
> $$
> s = n - \mathrm{rk}(A)
> $$
> L'insieme $S$ delle soluzioni di un generico sistema lineare compatibile $A\mathbf{x} = \mathbf{b}$ si esprime in forma parametrica mediante una soluzione particolare $\mathbf{v}_0$ e $s$ vettori direttori $\mathbf{v}_1, \dots, \mathbf{v}_s$:
> $$
> S = \{\mathbf{v}_0 + t_1 \mathbf{v}_1 + \dots + t_s \mathbf{v}_s : t_1, \dots, t_s \in \mathbb{R}\}
> $$
> I vettori $\mathbf{v}_1, \dots, \mathbf{v}_s$ sono necessariamente linearmente indipendenti: se infatti uno di essi fosse combinazione lineare dei rimanenti, il numero effettivo di parametri indipendenti si ridurrebbe a $s-1$, entrando in palese contraddizione con il Teorema di Rouché-Capelli.
>
> D'altra parte, per il Teorema di Struttura delle soluzioni dei sistemi lineari, essendo $\mathbf{v}_0$ una soluzione fissata del sistema, l'insieme $S$ coincide con la traslazione del nucleo di $A$:
> $$
> S = \{\mathbf{v}_0 + \mathbf{w} : \mathbf{w} \in \mathrm{Ker} A\}
> $$
> Confrontando le due espressioni:
> $$
> \{\mathbf{v}_0 + t_1 \mathbf{v}_1 + \dots + t_s \mathbf{v}_s : t_i \in \mathbb{R}\} = \{\mathbf{v}_0 + \mathbf{w} : \mathbf{w} \in \mathrm{Ker} A\}
> $$
> da cui segue immediatamente che:
> $$
> \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_s\} = \mathrm{Ker} A
> $$
> Essendo $\{\mathbf{v}_1, \dots, \mathbf{v}_s\}$ linearmente indipendenti e generatori di $\mathrm{Ker} A$, essi costituiscono una base per $\mathrm{Ker} A$. Di conseguenza, la dimensione del nucleo è esattamente uguale al numero di parametri liberi $s$:
> $$
> \dim(\mathrm{Ker} A) = s
> $$
> Sostituendo la relazione fornita da Rouché-Capelli $s = n - \mathrm{rk}(A)$, si ottiene:
> $$
> \dim(\mathrm{Ker} A) = n - \mathrm{rk}(A) \implies \dim(\mathrm{Ker} A) + \mathrm{rk}(A) = n \qquad \blacksquare
> $$

> [!example] Calcolo della Dimensione del Nucleo da Matrice a Scala
> Si consideri la matrice $A \in \mathrm{Mat}_{\mathbb{R}}(3, 5)$ già ridotta in forma a scala:
> $$
> A = \begin{pmatrix}
> \boxed{1} & 0 & 1 & 0 & -2 \\
> 0 & \boxed{1} & -1 & 0 & 3 \\
> 0 & 0 & 0 & \boxed{1} & 4
> \end{pmatrix}
> $$
> - Il numero totale di colonne (variabili del sistema) è $n = 5$.
> - I pivot non nulli si trovano sulla prima, seconda e quarta colonna; pertanto il rango è $\mathrm{rk}(A) = 3$.
> - Per il Teorema di Nullità + Rango, la dimensione del nucleo è data da:
>   $$
>   \dim(\mathrm{Ker} A) = n - \mathrm{rk}(A) = 5 - 3 = 2
>   $$
> Ne consegue che il nucleo di $A$ è generato da una base di due vettori linearmente indipendenti:
> $$
> \mathrm{Ker}(A) = \mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\}
> $$
> Per determinare esplicitamente i vettori $\mathbf{v}_1$ e $\mathbf{v}_2$, è sufficiente risolvere il sistema lineare omogeneo associato $A\mathbf{x} = \mathbf{0}$, esplicitando le variabili legate (pivot) in funzione delle variabili libere $x_3$ e $x_5$.
>
## 2.7. Rappresentazione di Sottospazi Vettoriali: Forma Parametrica e Cartesiana

### Definizioni e Struttura delle Due Forme

Dato uno spazio euclideo $\mathbb{R}^n$, un sottospazio vettoriale $H \subseteq \mathbb{R}^n$ può essere descritto e manipolato attraverso due rappresentazioni duali:

1. **Forma Cartesiana (Implicita):**
   Il sottospazio $H$ è definito come il luogo degli zeri di un sistema di equazioni lineari omogenee, ovvero come il nucleo di un'opportuna matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$:
   $$
   H = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0}\} = \mathrm{Ker}(A)
   $$

2. **Forma Parametrica (Esplicita):**
   Il sottospazio $H$ è espresso come l'insieme di tutte le combinazioni lineari di un insieme finito di vettori generatori $\{\mathbf{v}_1, \dots, \mathbf{v}_m\} \subseteq \mathbb{R}^n$:
   $$
   H = \{t_1 \mathbf{v}_1 + \dots + t_m \mathbf{v}_m : t_i \in \mathbb{R}\} = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_m\}
   $$

### Algoritmi di Conversione tra Forma Cartesiana e Forma Parametrica

> [!proposition] Algoritmo di Conversione: Da Cartesiana a Parametrica
> Assegnato il sottospazio $H$ in forma cartesiana $H = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{0}\}$:
> 1. Si riduce a gradini la matrice $A$ mediante eliminazione di Gauss.
> 2. Si identificano le variabili libere (corrispondenti alle colonne senza pivot).
> 3. Si risolve il sistema lineare a ritroso esprimendo le variabili pivot in funzione dei parametri liberi.
> 4. Si decompone la soluzione generale come combinazione lineare dei parametri liberi: i vettori moltiplicati dai parametri costituiscono una base di $H$, fornendone la forma parametrica:
>    $$
>    H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_s\}
>    $$

> [!proposition] Algoritmo di Conversione: Da Parametrica a Cartesiana
> Sia assegnato il sottospazio $H$ in forma parametrica tramite un insieme di generatori:
> $$
> H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_p\} \subseteq \mathbb{R}^n
> $$
> Si cerca una matrice $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ tale che $\mathrm{Ker}(A) = H$.
> 
> Esprimendo la matrice $A$ riga per riga:
> $$
> A = \begin{pmatrix} R_1 \\ R_2 \\ \vdots \\ R_m \end{pmatrix}, \qquad R_i = i\text{-esima riga di } A
> $$
> La condizione di appartenenza di ciascun generatore al nucleo, $\mathbf{v}_j \in \mathrm{Ker} A$ per ogni $j = 1, \dots, p$, equivale all'annullamento del prodotto matrice-vettore:
> $$
> A \mathbf{v}_j = \mathbf{0} \implies \begin{pmatrix} R_1 \\ R_2 \\ \vdots \\ R_m \end{pmatrix} \mathbf{v}_j = \begin{pmatrix} 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix} \iff \begin{cases} R_1 \mathbf{v}_j = 0 \\ R_2 \mathbf{v}_j = 0 \\ \vdots \\ R_m \mathbf{v}_j = 0 \end{cases} \iff R_i \mathbf{v}_j = 0 \quad \forall i, j
> $$
> Di conseguenza, il problema si riconduce a cercare i vettori riga generici $\mathbf{R} = (a_1, a_2, \dots, a_n)$ ortogonali a ciascun vettore generatore:
> $$
> \mathbf{R} \, \mathbf{v}_j = 0 \qquad \forall j = 1, \dots, p
> $$
> Risolvendo il sistema lineare omogeneo associato nelle incognite $a_1, \dots, a_n$, una base dello spazio delle soluzioni fornirà le righe $R_1, \dots, R_m$ della matrice cartesiana $A$.
>
### Esercizio Svolto: Conversione da Parametrica a Cartesiana in $\mathbb{R}^5$

> [!example] Determinazione della Forma Cartesiana di uno Span in $\mathbb{R}^5$
> Si consideri il sottospazio $H \subseteq \mathbb{R}^5$ dato in forma parametrica dai seguenti tre vettori generatori:
> $$
> H = \mathrm{Span}\left\{
> \mathbf{v}_1 = \begin{pmatrix} 1 \\ 1 \\ 0 \\ 0 \\ 0 \end{pmatrix}, \quad
> \mathbf{v}_2 = \begin{pmatrix} 0 \\ 1 \\ 0 \\ 1 \\ 0 \end{pmatrix}, \quad
> \mathbf{v}_3 = \begin{pmatrix} 0 \\ 0 \\ 1 \\ 2 \\ 0 \end{pmatrix}
> \right\} \subseteq \mathbb{R}^5
> $$
> Si intende determinare una rappresentazione cartesiana di $H$.
>
> **Passo 1: Definizione del vettore riga generico e imposizione dei vincoli.**
> Sia $\mathbf{R} = (a_1, a_2, a_3, a_4, a_5)$ un generico vettore riga di $\mathbb{R}^5$. Imponiamo l'annullamento del prodotto scalare con ciascuno dei tre generatori:
> $$
> \mathbf{R} \, \mathbf{v}_j = 0 \qquad \forall j \in \{1, 2, 3\}
> $$
> Esplicitando i calcoli:
> $$
> \begin{aligned}
> \mathbf{R} \, \mathbf{v}_1 &= (a_1, a_2, a_3, a_4, a_5) \begin{pmatrix} 1 \\ 1 \\ 0 \\ 0 \\ 0 \end{pmatrix} = a_1 + a_2 = 0 \\
> \mathbf{R} \, \mathbf{v}_2 &= (a_1, a_2, a_3, a_4, a_5) \begin{pmatrix} 0 \\ 1 \\ 0 \\ 1 \\ 0 \end{pmatrix} = a_2 + a_4 = 0 \\
> \mathbf{R} \, \mathbf{v}_3 &= (a_1, a_2, a_3, a_4, a_5) \begin{pmatrix} 0 \\ 0 \\ 1 \\ 2 \\ 0 \end{pmatrix} = a_3 + 2a_4 = 0
> \end{aligned}
> $$
>
> **Passo 2: Risoluzione del sistema nei coefficienti della riga.**
> Si ottiene il sistema lineare omogeneo nelle cinque incognite $(a_1, a_2, a_3, a_4, a_5)$:
> $$
> \begin{cases}
> a_1 + a_2 = 0 \\
> a_2 + a_4 = 0 \\
> a_3 + 2a_4 = 0
> \end{cases}
> \implies
> \begin{cases}
> a_2 = -a_1 \\
> a_4 = -a_2 = a_1 \\
> a_3 = -2a_4 = -2a_1
> \end{cases}
> $$
> L'incognita $a_5$ non compare nelle equazioni ed è pertanto una variabile del tutto libera, così come $a_1$.
>
> Ponendo $a_1 := t$ e $a_5 := s$, con parametri liberi $t, s \in \mathbb{R}$, il vettore riga generico assume la forma:
> $$
> \mathbf{R} = (t, -t, -2t, t, s)
> $$
> Scomponendo rispetto ai parametri:
> $$
> \mathbf{R} = t(1, -1, -2, 1, 0) + s(0, 0, 0, 0, 1)
> $$
>
> **Passo 3: Costruzione del sistema cartesiano.**
> Scegliendo come base per lo spazio delle righe le soluzioni fondamentali ottenute per $(t=1, s=0)$ e $(t=0, s=1)$, si individuano le due righe linearmente indipendenti:
> $$
> R_1 = (1, -1, -2, 1, 0), \qquad R_2 = (0, 0, 0, 0, 1)
> $$
> Le equazioni del sistema cartesiano cercato corrispondono all'annullamento del prodotto di queste righe con il vettore colonna delle coordinate $\mathbf{x} = (x_1, x_2, x_3, x_4, x_5)^T$:
> $$
> \begin{cases}
> x_1 - x_2 - 2x_3 + x_4 = 0 \\
> x_5 = 0
> \end{cases}
> $$
> Pertanto, la forma cartesiana definitiva del sottospazio $H$ è:
> $$
> H = \left\{ \mathbf{x} \in \mathbb{R}^5 : \begin{cases} x_1 - x_2 - 2x_3 + x_4 = 0 \\ x_5 = 0 \end{cases} \right\}
> $$
>
## 2.8. Operazioni tra Sottospazi: Intersezione, Somma e Formula di Grassmann

### Intersezione di Sottospazi Vettoriali

> [!proposition] Intersezione di Sottospazi
> Siano $H_1, H_2$ sottospazi vettoriali di uno spazio vettoriale $V$. Allora l'intersezione insiemistica:
> $$
> H_1 \cap H_2 \subseteq V
> $$
> è anch'essa un sottospazio vettoriale di $V$.

> [!quote]- Dimostrazione
> Per dimostrare che $H_1 \cap H_2$ è un sottospazio vettoriale di $V$, si verificano i tre assiomi fondamentali:
> 
> 1. **Presenza del vettore nullo:**
>    Poiché $H_1$ e $H_2$ sono entrambi sottospazi vettoriali di $V$, ciascuno di essi contiene l'elemento neutro della somma:
>    $$
>    \mathbf{0} \in H_1 \quad \land \quad \mathbf{0} \in H_2 \iff \mathbf{0} \in H_1 \cap H_2
>    $$
>    L'intersezione non è quindi vuota e contiene il vettore nullo.
> 
> 2. **Chiusura rispetto alla somma vettoriale:**
>    Siano $\mathbf{v}_1, \mathbf{v}_2 \in H_1 \cap H_2$. Dalla definizione di intersezione:
>    $$
>    \mathbf{v}_1, \mathbf{v}_2 \in H_1 \quad \land \quad \mathbf{v}_1, \mathbf{v}_2 \in H_2
>    $$
>    Essendo $H_1$ e $H_2$ sottospazi vettoriali, essi sono chiusi rispetto alla somma:
>    $$
>    \mathbf{v}_1 + \mathbf{v}_2 \in H_1 \quad \land \quad \mathbf{v}_1 + \mathbf{v}_2 \in H_2
>    $$
>    Di conseguenza:
>    $$
>    \mathbf{v}_1 + \mathbf{v}_2 \in H_1 \cap H_2
>    $$
> 
> 3. **Chiusura rispetto al prodotto per scalare:**
>    Siano $\mathbf{v}_1 \in H_1 \cap H_2$ e $c \in \mathbb{R}$. Per appartenenza all'intersezione:
>    $$
>    \mathbf{v}_1 \in H_1 \quad \land \quad \mathbf{v}_1 \in H_2
>    $$
>    Essendo $H_1$ e $H_2$ sottospazi vettoriali, ciascuno di essi è chiuso rispetto al prodotto per scalare:
>    $$
>    c\mathbf{v}_1 \in H_1 \quad \land \quad c\mathbf{v}_1 \in H_2 \implies c\mathbf{v}_1 \in H_1 \cap H_2
>    $$
> Avendo verificato tutte e tre le proprietà, $H_1 \cap H_2$ è un sottospazio vettoriale di $V$. $\blacksquare$
>
### Non Sottospazialità dell'Unione

> [!proposition] L'Unione di Sottospazi Non è un Sottospazio
> Dati due sottospazi vettoriali $H_1, H_2 \subseteq V$, la loro unione insiemistica $H_1 \cup H_2$ **NON** è, in generale, un sottospazio vettoriale di $V$.

> [!example] Controesempio dell'Unione di Due Rette in $\mathbb{R}^2$
> Si consideri lo spazio vettoriale $V = \mathbb{R}^2$ e i due sottospazi unidimensionali (rette passanti per l'origine):
> $$
> H_1 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix} \right\} = \left\{ t \begin{pmatrix} 1 \\ 1 \end{pmatrix} : t \in \mathbb{R} \right\}
> H_2 = \mathrm{Ker}\begin{pmatrix} 1 & 2 \end{pmatrix} = \left\{ \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \in \mathbb{R}^2 : x_1 + 2x_2 = 0 \right\} = \mathrm{Span}\left\{ \begin{pmatrix} -2 \\ 1 \end{pmatrix} \right\} = \left\{ t \begin{pmatrix} -2 \\ 1 \end{pmatrix} : t \in \mathbb{R} \right\}
> $$
> 
> L'unione insiemistica $H_1 \cup H_2$ rappresenta graficamente l'insieme dei punti appartenenti all'una o all'altra retta.
> 
> Si scelgano due vettori appartenenti ai rispettivi rami:
> $$
> \mathbf{u} = \begin{pmatrix} 2 \\ 2 \end{pmatrix} = 2 \begin{pmatrix} 1 \\ 1 \end{pmatrix} \in H_1 \subseteq H_1 \cup H_2
> \mathbf{v} = \begin{pmatrix} -2 \\ 1 \end{pmatrix} \in H_2 \subseteq H_1 \cup H_2
> $$
> 
> Si calcoli la loro somma:
> $$
> \mathbf{u} + \mathbf{v} = \begin{pmatrix} 2 \\ 2 \end{pmatrix} + \begin{pmatrix} -2 \\ 1 \end{pmatrix} = \begin{pmatrix} 0 \\ 3 \end{pmatrix}
> $$
> Si verifica facilmente che:
> - $\begin{pmatrix} 0 \\ 3 \end{pmatrix} \notin H_1$, in quanto la prima componente non è uguale alla seconda ($0 \neq 3$).
> - $\begin{pmatrix} 0 \\ 3 \end{pmatrix} \notin H_2$, in quanto non soddisfa l'equazione cartesiana: $0 + 2(3) = 6 \neq 0$.
> 
> Ne consegue che:
> $$
> \mathbf{u} + \mathbf{v} \notin H_1 \cup H_2
> $$
> L'insieme $H_1 \cup H_2$ non è chiuso rispetto alla somma e pertanto **non costituisce un sottospazio vettoriale**.
>
### Somma di Sottospazi Vettoriali

> [!definition] Somma di Sottospazi
> Siano $H_1, H_2 \subseteq V$ due sottospazi vettoriali di $V$. Si definisce **somma** di $H_1$ e $H_2$ l'insieme:
> $$
> H_1 + H_2 := \{c_1 \mathbf{v} + c_2 \mathbf{w} : c_1, c_2 \in \mathbb{R} \land \mathbf{v} \in H_1, \mathbf{w} \in H_2\} = \{\mathbf{v} + \mathbf{w} : \mathbf{v} \in H_1, \mathbf{w} \in H_2\}
> $$

> [!proposition] Sottospazialità della Somma
> La somma $H_1 + H_2$ è sempre un sottospazio vettoriale di $V$.
> 
> In particolare, con riferimento all'esempio precedente in $\mathbb{R}^2$, la somma delle due rette distinte genera l'intero piano:
> $$
> H_1 + H_2 = \mathbb{R}^2
> $$

> [!note] Relazioni di Inclusione e Proprietà Estremali
> Per qualunque coppia di sottospazi vettoriali $H_1, H_2 \subseteq V$, valgono le inclusioni canoniche:
> $$
> \begin{cases}
> H_1 \cap H_2 \subseteq H_1 \subseteq H_1 + H_2 \\
> H_1 \cap H_2 \subseteq H_2 \subseteq H_1 + H_2
> \end{cases}
> $$
> Dal punto di vista reticolare:
> - $H_1 \cap H_2$ è il **più grande** sottospazio vettoriale contenuto contemporaneamente sia in $H_1$ sia in $H_2$.
> - $H_1 + H_2$ è il **più piccolo** sottospazio vettoriale che contiene contemporaneamente sia $H_1$ sia $H_2$ (coincide infatti con il sottospazio generato dall'unione $\mathrm{Span}(H_1 \cup H_2)$).
>
### Calcolo Operativo della Somma di Sottospazi (Forma Parametrica)

Per determinare una base e la dimensione della somma $H_1 + H_2$, conviene esprimere entrambi i sottospazi in **forma parametrica** mediante generatori:
$$
H_1 = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_p\} \subseteq V, \qquad H_2 = \mathrm{Span}\{\mathbf{w}_1, \dots, \mathbf{w}_q\} \subseteq V
$$
La somma è generata dall'unione di tutti i vettori generatori:
$$
H_1 + H_2 = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_p, \mathbf{w}_1, \dots, \mathbf{w}_q\}
$$
Si estraggono poi i generatori linearmente indipendenti riducendo a scala per righe la matrice che li contiene.

> [!example] Esempio di Calcolo della Somma in $\mathbb{R}^3$
> Si considerino i sottospazi $H_1, H_2 \subseteq \mathbb{R}^3$ definiti da:
> $$
> H_1 = \mathrm{Span}\left\{ \mathbf{v}_1 = \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \quad \mathbf{v}_2 = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} \right\}
> H_2 = \mathrm{Span}\left\{ \mathbf{w}_1 = \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \quad \mathbf{w}_2 = \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} \right\}
> $$
> 
> La somma è generata dall'accostamento dei quattro vettori:
> $$
> H_1 + H_2 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} \right\}
> $$
> Si osserva immediatamente la relazione di dipendenza lineare:
> $$
> \mathbf{v}_1 = \mathbf{v}_2 + \mathbf{w}_1 \implies \begin{pmatrix} 1 \\ 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} + \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}
> $$
> Pertanto il vettore $\mathbf{v}_1$ è ridondante e può essere rimosso:
> $$
> H_1 + H_2 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ 1 \end{pmatrix} \right\}
> $$
> I tre vettori rimanenti sono linearmente indipendenti e formano una base di $H_1 + H_2$, che ha dunque dimensione 3 e coincide con $\mathbb{R}^3$.
>
### Calcolo Operativo dell'Intersezione di Sottospazi (Forma Cartesiana)

Per determinare l'intersezione $H_1 \cap H_2$, conviene esprimere entrambi i sottospazi in **forma cartesiana**:
$$
H_1 = \mathrm{Ker}(A), \qquad H_2 = \mathrm{Ker}(B)
$$
Un vettore $\mathbf{x}$ appartiene a $H_1 \cap H_2$ se e solo se soddisfa contemporaneamente le equazioni di $A$ e quelle di $B$:
$$
\begin{cases} A\mathbf{x} = \mathbf{0} \\ B\mathbf{x} = \mathbf{0} \end{cases} \iff \begin{pmatrix} A \\ B \end{pmatrix} \mathbf{x} = \mathbf{0}
$$
Di conseguenza, l'intersezione coincide con il nucleo della matrice a blocchi ottenuta impilando le matrici dei vincoli:
$$
H_1 \cap H_2 = \mathrm{Ker}\begin{pmatrix} A \\ B \end{pmatrix}
$$

> [!example] Esempio di Calcolo dell'Intersezione in $\mathbb{R}^3$
> Si considerino i sottospazi $H_1, H_2 \subseteq \mathbb{R}^3$ assegnati in forma cartesiana:
> $$
> H_1 = \mathrm{Ker}\begin{pmatrix} 1 & -2 & 1 \end{pmatrix} = \left\{ \begin{pmatrix} x \\ y \\ z \end{pmatrix} \in \mathbb{R}^3 : x - 2y + z = 0 \right\}
> H_2 = \mathrm{Ker}\begin{pmatrix} 1 & 0 & -1 \\ 0 & 1 & 1 \end{pmatrix} = \left\{ \begin{pmatrix} x \\ y \\ z \end{pmatrix} \in \mathbb{R}^3 : \begin{cases} x - z = 0 \\ y + z = 0 \end{cases} \right\}
> $$
> 
> L'intersezione si ottiene unificando le equazioni cartesiane in un unico sistema lineare omogeneo:
> $$
> H_1 \cap H_2 = \mathrm{Ker}\begin{pmatrix} 1 & -2 & 1 \\ 1 & 0 & -1 \\ 0 & 1 & 1 \end{pmatrix} = \left\{ \begin{pmatrix} x \\ y \\ z \end{pmatrix} \in \mathbb{R}^3 : \begin{cases} x - 2y + z = 0 \\ x - z = 0 \\ y + z = 0 \end{cases} \right\} \subseteq \mathbb{R}^3
> $$
>
### La Formula di Grassmann

> [!theorem] Formula di Grassmann
> Siano $H_1, H_2$ due sottospazi vettoriali di dimensione finita di uno spazio vettoriale $V$. Vale la seguente relazione dimensionale fondamentale:
> $$
> \dim(H_1 + H_2) = \dim(H_1) + \dim(H_2) - \dim(H_1 \cap H_2)
> $$
>
## 2.9. Sottospazi Affini

### Definizione e Concetto Geometrico di Traslazione

> [!definition] Sottospazio Affine
> Sia $V$ uno spazio vettoriale. Un sottoinsieme non vuoto $S \subseteq V$ è detto **sottospazio affine** se esistono un sottospazio vettoriale $H \subseteq V$ e un vettore $\mathbf{x}_0 \in V$ tali che $S$ coincida con la traslazione di $H$ mediante $\mathbf{x}_0$:
> $$
> S = \mathbf{x}_0 + H := \{\mathbf{x}_0 + \mathbf{w} : \mathbf{w} \in H\}
> $$

> [!example] Esempio di Sottospazio Affine in $\mathbb{R}^2$
> In $\mathbb{R}^2$, si consideri il sottoinsieme:
> $$
> S = \begin{pmatrix} 0 \\ 1 \end{pmatrix} + \mathrm{Span}\left\{ \begin{pmatrix} 2 \\ 1 \end{pmatrix} \right\} = \left\{ \begin{pmatrix} 0 \\ 1 \end{pmatrix} + t \begin{pmatrix} 2 \\ 1 \end{pmatrix} : t \in \mathbb{R} \right\} \subseteq \mathbb{R}^2
> $$
> Geometricamente, $S$ rappresenta la retta affine passante per il punto $(0, 1)^T$ avente direzione parallela al vettore $(2, 1)^T$. Poiché non passa per l'origine $(0, 0)^T$, essa non è un sottospazio vettoriale, ma un sottospazio affine ottenuto traslando il sottospazio vettoriale $H = \mathrm{Span}\{(2, 1)^T\}$.
>
### La Giacitura di un Sottospazio Affine

> [!proposition] Unicità della Giacitura
> Sia $S \subseteq V$ un sottospazio affine. Se $S$ è rappresentabile mediante due traslazioni:
> $$
> S = \mathbf{x}_1 + H_1 = \mathbf{x}_2 + H_2
> $$
> per opportuni vettori $\mathbf{x}_1, \mathbf{x}_2 \in V$ e sottospazi vettoriali $H_1, H_2 \subseteq V$, allora:
> $$
> H_1 = H_2
> $$
> Di conseguenza, il sottospazio vettoriale $H := H_1 = H_2$ non dipende dal vettore di traslazione scelto: esso è **univocamente determinato** da $S$ e viene denominato **giacitura** (o spazio direttore) del sottospazio affine $S$.

> [!note] Significato Geometrico della Giacitura
> Se $S$ è una retta o un piano affine non passante per l'origine, la sua giacitura $H$ è la retta o il piano parallelo passante per l'origine. Qualsiasi punto $\mathbf{x}_0 \in S$ può essere scelto come punto base della traslazione, ma la direzione intrinseca (la giacitura $H$) rimane immutata:
> $$
> S = \mathbf{x}_0 + H \iff H = \{\mathbf{y} - \mathbf{x}_0 : \mathbf{y} \in S\}
> $$
>
### Dimensione, Rette e Piani Affini

> [!definition] Dimensione di un Sottospazio Affine
> Si definisce **dimensione** di un sottospazio affine $S = \mathbf{x}_0 + H \subseteq V$ la dimensione della sua giacitura $H$:
> $$
> \dim(S) := \dim(H)
> $$

> [!definition] Retta e Piano Affine
> Sulla base della dimensione si classificano i principali oggetti geometrici affini:
> - Una **retta affine** è un sottospazio affine di dimensione 1:
>   $$
>   \dim(S) = 1 \implies S = \mathbf{x}_0 + \mathrm{Span}\{\mathbf{v}\} \quad (\mathbf{v} \neq \mathbf{0})
>   $$
> - Un **piano affine** è un sottospazio affine di dimensione 2:
>   $$
>   \dim(S) = 2 \implies S = \mathbf{x}_0 + \mathrm{Span}\{\mathbf{v}_1, \mathbf{v}_2\} \quad (\mathbf{v}_1, \mathbf{v}_2 \text{ linearmente indipendenti})
>   $$
>
### Sistemi Lineari e Sottospazi Affini

> [!proposition] L'Insieme delle Soluzioni di un Sistema Lineare è un Sottospazio Affine
> Siano assegnati una matrice dei coefficienti $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ e un vettore dei termini noti $\mathbf{b} \in \mathbb{R}^m$. Se il sistema lineare $A\mathbf{x} = \mathbf{b}$ è compatibile, allora l'insieme di tutte le sue soluzioni:
> $$
> S = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{b}\} \subseteq \mathbb{R}^n
> $$
> è un **sottospazio affine** di $\mathbb{R}^n$.

> [!quote]- Dimostrazione
> Poiché il sistema $A\mathbf{x} = \mathbf{b}$ è compatibile, esiste almeno una soluzione particolare $\mathbf{x}_0 \in \mathbb{R}^n$ tale che:
> $$
> A\mathbf{x}_0 = \mathbf{b}
> $$
> Sia $\mathbf{x} \in \mathbb{R}^n$ una generica soluzione del sistema ($A\mathbf{x} = \mathbf{b}$). Sfruttando la linearità del prodotto matrice-vettore:
> $$
> A(\mathbf{x} - \mathbf{x}_0) = A\mathbf{x} - A\mathbf{x}_0 = \mathbf{b} - \mathbf{b} = \mathbf{0}
> $$
> Ciò implica che la differenza $\mathbf{w} := \mathbf{x} - \mathbf{x}_0$ appartiene al nucleo della matrice $A$:
> $$
> \mathbf{w} \in \mathrm{Ker}(A) \implies \mathbf{x} = \mathbf{x}_0 + \mathbf{w} \quad \text{con } \mathbf{w} \in \mathrm{Ker}(A)
> $$
> Viceversa, per ogni vettore $\mathbf{w} \in \mathrm{Ker}(A)$, il vettore $\mathbf{x} = \mathbf{x}_0 + \mathbf{w}$ è soluzione del sistema:
> $$
> A(\mathbf{x}_0 + \mathbf{w}) = A\mathbf{x}_0 + A\mathbf{w} = \mathbf{b} + \mathbf{0} = \mathbf{b}
> $$
> Ne consegue che l'insieme delle soluzioni si esprime come:
> $$
> S = \mathbf{x}_0 + \mathrm{Ker}(A)
> $$
> Essendo $\mathrm{Ker}(A)$ un sottospazio vettoriale di $\mathbb{R}^n$, $S$ è per definizione un sottospazio affine avente come giacitura proprio il nucleo della matrice:
> $$
> H = \mathrm{Ker}(A) \qquad \blacksquare
> $$
>
### Rappresentazione Cartesiana e Parametrica di Sottospazi Affini

Come per i sottospazi vettoriali, anche per i sottospazi affini sussistono due descrizioni canoniche:

1. **Forma Parametrica:**
   Assegnato un punto base $\mathbf{x}_0 \in \mathbb{R}^n$ e una base $\{\mathbf{v}_1, \dots, \mathbf{v}_k\}$ della giacitura:
   $$
   S = \mathbf{x}_0 + \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_k\} = \{\mathbf{x}_0 + t_1 \mathbf{v}_1 + \dots + t_k \mathbf{v}_k : t_i \in \mathbb{R}\}
   $$

2. **Forma Cartesiana:**
   Descritto come l'insieme delle soluzioni di un sistema lineare non omogeneo:
   $$
   S = \{\mathbf{x} \in \mathbb{R}^n : A\mathbf{x} = \mathbf{b}\}
   $$

**Conversione da Cartesiana a Parametrica:**
Si risolve il sistema lineare non omogeneo $A\mathbf{x} = \mathbf{b}$ mediante eliminazione di Gauss-Jordan: la scomposizione della soluzione generale fornisce automaticamente una soluzione particolare $\mathbf{x}_0$ e i vettori di base della giacitura $\mathrm{Ker}(A)$.

**Conversione da Parametrica a Cartesiana:**
Sia dato $S = \mathbf{x}_0 + \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_k\}$:
1. **Determinazione della giacitura cartesiana:** Si applica l'algoritmo di conversione parametrica $\to$ cartesiana al sottospazio vettoriale $H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_k\}$, determinando una matrice $A$ tale che:
   $$
   H = \mathrm{Ker}(A)
   $$
2. **Determinazione del termine noto:** Si calcola il vettore $\mathbf{b} \in \mathbb{R}^m$ imponendo che il punto $\mathbf{x}_0$ appartenga a $S$, ovvero moltiplicando la matrice $A$ per il punto base:
   $$
   \mathbf{b} = A\mathbf{x}_0
   $$
Il sistema lineare $A\mathbf{x} = \mathbf{b}$ così ottenuto costituisce la forma cartesiana cercata del sottospazio affine $S$.

## 2.10. Geometria Affine e Applicazioni Lineari

## 2.11. Posizione Reciproca tra Sottospazi Affini

> [!definition] Posizione Reciproca tra Sottospazi Affini
> Siano dati due sottospazi affini di uno spazio vettoriale $V$:
> $$
> S_1 = \mathbf{x}_1 + H_1, \qquad S_2 = \mathbf{x}_2 + H_2
> $$
> con vettori di traslazione $\mathbf{x}_1, \mathbf{x}_2 \in V$ e giaciture (sottospazi vettoriali) $H_1, H_2 \le V$.
>
> I due sottospazi affini $S_1$ ed $S_2$ sono detti:
>
> | Posizione Reciproca | Condizione sull'Intersezione $S_1 \cap S_2$ | Condizione sulle Giaciture $H_1, H_2$ |
> | :--- | :---: | :--- |
> | **Paralleli** | $S_1 \cap S_2 = \emptyset$ | $H_1 \subseteq H_2 \; \lor \; H_2 \subseteq H_1$ |
> | **Coincidenti** | $S_1 \cap S_2 \neq \emptyset$ | $H_1 = H_2$ |
> | **Inclusione** | $S_1 \cap S_2 \neq \emptyset$ | $H_1 \subseteq H_2 \; \lor \; H_2 \subseteq H_1$ |
> | **Incidenti** | $S_1 \cap S_2 \neq \emptyset$ | $H_1 \not\subseteq H_2 \; \land \; H_2 \not\subseteq H_1$ |
> | **Sghembi** | $S_1 \cap S_2 = \emptyset$ | $H_1 \not\subseteq H_2 \; \land \; H_2 \not\subseteq H_1$ |

> [!example] Calcolo dell'Intersezione tra Sottospazi Affini in $\mathbb{R}^4$
> Si considerino in $\mathbb{R}^4$ i due sottospazi affini $S_1$ ed $S_2$ definiti tramite equazioni cartesiane in forma matriciale:
> $$
> S_1 : \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 0 & 1 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 2 \\ 3 \end{pmatrix}
> S_2 : \begin{pmatrix} 0 & 0 & 1 & 1 \\ 1 & 1 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 0 \\ -1 \end{pmatrix}
> $$
> L'intersezione $S_1 \cap S_2$ è determinata mettendo a sistema le equazioni cartesiane di entrambi i sottospazi:
> $$
> S_1 \cap S_2 : \begin{pmatrix} 1 & 0 & 1 & 0 \\ 0 & 1 & 0 & 1 \\ 0 & 0 & 1 & 1 \\ 1 & 1 & 0 & 0 \end{pmatrix} \begin{pmatrix} x_1 \\ x_2 \\ x_3 \\ x_4 \end{pmatrix} = \begin{pmatrix} 2 \\ 3 \\ 0 \\ -1 \end{pmatrix}
> $$
>
