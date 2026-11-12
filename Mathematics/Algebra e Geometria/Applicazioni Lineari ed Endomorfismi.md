---
title: "Applicazioni Lineari ed Endomorfismi"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 3)"
tags:
  - math/linear-algebra/linear-maps
  - math/linear-algebra/kernel-image
---

# 3. Applicazioni Lineari ed Endomorfismi

## 3.1. Definizione e Prime Proprietà

> [!definition] Applicazione Lineare (#3.01)
> Dati due spazi vettoriali $V$ e $W$ su un campo $\mathbb{K}$ (in particolare $\mathbb{R}$), un'**applicazione lineare** (detta anche *funzione lineare*, *mappa lineare* o *trasformazione lineare*) è una funzione:
> $$
> L: V \to W
> $$
> tale che siano soddisfatte le seguenti due condizioni fondamentali:
> 1. **Additività:**
>    $$
>    L(\mathbf{v}_1 + \mathbf{v}_2) = L(\mathbf{v}_1) + L(\mathbf{v}_2), \qquad \forall \mathbf{v}_1, \mathbf{v}_2 \in V
>    $$
> 2. **Omogeneità:**
>    $$
>    L(c\mathbf{v}) = c\, L(\mathbf{v}), \qquad \forall c \in \mathbb{R}, \; \forall \mathbf{v} \in V
>    $$

> [!proposition] Conseguenze Immediate della Linearità
> Sia $L: V \to W$ un'applicazione lineare. Valgono le seguenti proprietà:
> 1. **Conservazione dell'elemento nullo:**
>    Siano $\mathbf{0}_V$ l'elemento nullo di $V$ e $\mathbf{0}_W$ l'elemento nullo di $W$. Allora:
>    $$
>    L(\mathbf{0}_V) = \mathbf{0}_W
>    $$
> 2. **Conservazione delle combinazioni lineari (Principio di Sovrapposizione):**
>    Per ogni insieme di scalari $c_1, \dots, c_n \in \mathbb{R}$ e vettori $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$:
>    $$
>    L\left(\sum_{i=1}^n c_i \mathbf{v}_i\right) = \sum_{i=1}^n c_i L(\mathbf{v}_i)
>    $$

> [!example] Verifica della Linearità di una Funzione
> Si consideri la funzione $L: \mathbb{R}^2 \to \mathbb{R}^2$ definita da:
> $$
> L\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} x_1 + x_2 \\ x_1 - x_2 \end{pmatrix}
> $$
> Si stabilisca se $L$ è un'applicazione lineare:
> 1. **Verifica dell'additività:**
>    $$
>    \begin{aligned}
>    L\left( \begin{pmatrix} x_1 \\ x_2 \end{pmatrix} + \begin{pmatrix} y_1 \\ y_2 \end{pmatrix} \right) &= L\begin{pmatrix} x_1 + y_1 \\ x_2 + y_2 \end{pmatrix} = \begin{pmatrix} (x_1 + y_1) + (x_2 + y_2) \\ (x_1 + y_1) - (x_2 + y_2) \end{pmatrix} \\
>    &= \begin{pmatrix} (x_1 + x_2) + (y_1 + y_2) \\ (x_1 - x_2) + (y_1 - y_2) \end{pmatrix} = \begin{pmatrix} x_1 + x_2 \\ x_1 - x_2 \end{pmatrix} + \begin{pmatrix} y_1 + y_2 \\ y_1 - y_2 \end{pmatrix} \\
>    &= L\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} + L\begin{pmatrix} y_1 \\ y_2 \end{pmatrix} \quad \checkmark
>    \end{aligned}
>    $$
> 2. **Verifica dell'omogeneità:**
>    $$
>    \begin{aligned}
>    L\left( c\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \right) &= L\begin{pmatrix} c x_1 \\ c x_2 \end{pmatrix} = \begin{pmatrix} c x_1 + c x_2 \\ c x_1 - c x_2 \end{pmatrix} \\
>    &= c \begin{pmatrix} x_1 + x_2 \\ x_1 - x_2 \end{pmatrix} = c\, L\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} \quad \checkmark
>    \end{aligned}
>    $$
> Entrambe le proprietà sono verificate, pertanto $L$ è un'applicazione lineare.

> [!example] Esempi di Funzioni Non Lineari
> 1. Si consideri la trasformazione affine $T: \mathbb{R}^2 \to \mathbb{R}^2$:
>    $$
>    T\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} x + 1 \\ x - y \end{pmatrix}
>    $$
>    La funzione $T$ **non è lineare** poiché non mappa il vettore nullo nel vettore nullo:
>    $$
>    T\begin{pmatrix} 0 \\ 0 \end{pmatrix} = \begin{pmatrix} 0 + 1 \\ 0 - 0 \end{pmatrix} = \begin{pmatrix} 1 \\ 0 \end{pmatrix} \neq \begin{pmatrix} 0 \\ 0 \end{pmatrix}
>    $$
> 2. Si consideri la funzione $S: \mathbb{R}^2 \to \mathbb{R}^2$:
>    $$
>    S\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} x^2 \\ x - y \end{pmatrix}
>    $$
>    La funzione $S$ **non è lineare** poiché viola l'omogeneità rispetto alla moltiplicazione per scalare. Ad esempio, per $c = 3$:
>    $$
>    S\begin{pmatrix} 3x \\ 3y \end{pmatrix} = \begin{pmatrix} (3x)^2 \\ 3x - 3y \end{pmatrix} = \begin{pmatrix} 9x^2 \\ 3(x - y) \end{pmatrix} \neq 3 \begin{pmatrix} x^2 \\ x - y \end{pmatrix} = 3 S\begin{pmatrix} x \\ y \end{pmatrix}
>    $$
>
## 3.2. Mappe Lineari tra Spazi Euclidei e Matrice Associata

> [!proposition] Rappresentazione delle Applicazioni Lineari su $\mathbb{R}^n$
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ una matrice reale $m \times n$. Allora la funzione:
> $$
> T_A: \mathbb{R}^n \to \mathbb{R}^m, \qquad T_A(\mathbf{v}) = A\mathbf{v}
> $$
> è un'**applicazione lineare**.
>
> Viceversa, ogni applicazione lineare $L: \mathbb{R}^n \to \mathbb{R}^m$ è della forma:
> $$
> L(\mathbf{v}) = A\mathbf{v}
> $$
> per un'**unica** matrice $A \in \mathrm{Mat}_\mathbb{R}(m, n)$.

> [!quote]- Dimostrazione
> **Parte 1 (Ogni trasformazione matriciale è lineare):**
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ una matrice con coefficienti $a_{i,j}$:
> $$
> A = \begin{pmatrix} a_{1,1} & \dots & a_{1,n} \\ \vdots & \ddots & \vdots \\ a_{m,1} & \dots & a_{m,n} \end{pmatrix}
> $$
> Per ogni $\mathbf{v} = (x_1, \dots, x_n)^T \in \mathbb{R}^n$:
> $$
> T_A(\mathbf{v}) = \begin{pmatrix} a_{1,1} & \dots & a_{1,n} \\ \vdots & \ddots & \vdots \\ a_{m,1} & \dots & a_{m,n} \end{pmatrix} \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix}
> $$
> Verifichiamo i due assiomi di linearità tramite le proprietà del calcolo matriciale:
> - **Additività:** Per ogni $\mathbf{v}_1, \mathbf{v}_2 \in \mathbb{R}^n$:
>   $$
>   T_A(\mathbf{v}_1 + \mathbf{v}_2) = A(\mathbf{v}_1 + \mathbf{v}_2) = A\mathbf{v}_1 + A\mathbf{v}_2 = T_A(\mathbf{v}_1) + T_A(\mathbf{v}_2)
>   $$
> - **Omogeneità:** Per ogni $c \in \mathbb{R}$ e $\mathbf{v} \in \mathbb{R}^n$:
>   $$
>   T_A(c\mathbf{v}) = A(c\mathbf{v}) = A \begin{pmatrix} c x_1 \\ \vdots \\ c x_n \end{pmatrix} = c A \begin{pmatrix} x_1 \\ \vdots \\ x_n \end{pmatrix} = c\, T_A(\mathbf{v})
>   $$
> La prima implicazione è verificata.
>
> **Parte 2 (Costruzione dell'unica matrice associata a un'applicazione lineare):**
> Sia ora $L: \mathbb{R}^n \to \mathbb{R}^m$ un'arbitraria applicazione lineare. Sia $\{\mathbf{e}_1, \mathbf{e}_2, \dots, \mathbf{e}_n\}$ la base canonica di $\mathbb{R}^n$, dove:
> $$
> \mathbf{e}_1 = \begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \quad \mathbf{e}_2 = \begin{pmatrix} 0 \\ 1 \\ \vdots \\ 0 \end{pmatrix}, \quad \dots, \quad \mathbf{e}_n = \begin{pmatrix} 0 \\ \vdots \\ 0 \\ 1 \end{pmatrix}
> $$
> Si definisce la matrice $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ affiancando come colonne le immagini dei vettori della base canonica:
> $$
> A := \Big( L(\mathbf{e}_1) \;|\; L(\mathbf{e}_2) \;|\; \dots \;|\; L(\mathbf{e}_n) \Big) \in \mathrm{Mat}_\mathbb{R}(m, n)
> $$
> Sia ora un generico vettore $\mathbf{v} \in \mathbb{R}^n$:
> $$
> \mathbf{v} = \begin{pmatrix} v_1 \\ \vdots \\ v_n \end{pmatrix} = \sum_{j=1}^n v_j \mathbf{e}_j
> $$
> Calcolando $T_A(\mathbf{v}) = A\mathbf{v}$:
> $$
> \begin{aligned}
> T_A(\mathbf{v}) &= A\mathbf{v} = \Big( L(\mathbf{e}_1) \;|\; \dots \;|\; L(\mathbf{e}_n) \Big) \begin{pmatrix} v_1 \\ \vdots \\ v_n \end{pmatrix} \\
> &= v_1 L(\mathbf{e}_1) + \dots + v_n L(\mathbf{e}_n) \\
> &= L(v_1 \mathbf{e}_1 + \dots + v_n \mathbf{e}_n) \\
> &= L\left( v_1 \begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix} + \dots + v_n \begin{pmatrix} 0 \\ \vdots \\ 0 \\ 1 \end{pmatrix} \right) = L(\mathbf{v}), \qquad \forall \mathbf{v} \in \mathbb{R}^n
> \end{aligned}
> $$
> Tale matrice $A$ è unica poiché la sua $j$-esima colonna è determinata in modo univoco da $A\mathbf{e}_j = L(\mathbf{e}_j)$.
> $$
> L(\mathbf{v}) = A\mathbf{v} \qquad \blacksquare
> $$

> [!example] Esempi Geometrici nel Piano ($\mathbb{R}^2$)

> [!example] Trasformazioni Lineari Geometriche in $\mathrm{Mat}_\mathbb{R}(2, 2)$
> Si considerino matrici $A \in \mathrm{Mat}_\mathbb{R}(2, 2)$ e le corrispondenti mappe $T_A: \mathbb{R}^2 \to \mathbb{R}^2$:
> 1. **Dilatazione / Omotetia:**
>    $$
>    A = \begin{pmatrix} c & 0 \\ 0 & c \end{pmatrix} \implies A\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} cx \\ cy \end{pmatrix}
>    $$
>    Rappresenta un'omotetia di fattore di scala $c$.
> 2. **Rotazione di $\frac{\pi}{2}$ in senso antiorario:**
>    $$
>    A = \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} \implies A\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} -y \\ x \end{pmatrix}
>    $$
> 3. **Rotazione generica di angolo $\alpha$ in senso antiorario:**
>    $$
>    A = \begin{pmatrix} \cos\alpha & -\sin\alpha \\ \sin\alpha & \cos\alpha \end{pmatrix}
>    $$
>    L'azione sulle coordinate cartesiane è data da:
>    $$
>    T_A\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} \cos\alpha & -\sin\alpha \\ \sin\alpha & \cos\alpha \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} x\cos\alpha - y\sin\alpha \\ x\sin\alpha + y\cos\alpha \end{pmatrix}
>    $$

> [!note] Traslazioni e Non-Linearità
> Una **traslazione** nel piano (o in qualunque spazio vettoriale) definita da:
> $$
> \tau_{\mathbf{b}}(\mathbf{x}) = \mathbf{x} + \mathbf{b}, \qquad \text{con } \mathbf{b} \neq \mathbf{0}
> $$
> **non è un'applicazione lineare**, poiché in generale:
> $$
> \tau_{\mathbf{b}}(\mathbf{0}) = \mathbf{0} + \mathbf{b} = \mathbf{b} \neq \mathbf{0}
> $$

> [!example] Esempi in Altri Spazi Vettoriali

> [!example] Trasposizione di Matrici
> Si consideri l'operatore di trasposizione tra spazi di matrici:
> $$
> L: \mathrm{Mat}_\mathbb{R}(m, n) \to \mathrm{Mat}_\mathbb{R}(n, m), \qquad L(A) = A^T
> $$
> Poiché per ogni coppia di matrici $A, B$ e ogni scalare $c \in \mathbb{R}$:
> $$
> (A + B)^T = A^T + B^T, \qquad (cA)^T = cA^T
> $$
> la trasposizione è un'**applicazione lineare**.

> [!example] Traccia di una Matrice Quadrata
> Si consideri la funzione traccia sullo spazio delle matrici quadrate $\mathrm{Mat}_\mathbb{R}(n, n)$:
> $$
> L: \mathrm{Mat}_\mathbb{R}(n, n) \to \mathbb{R}, \qquad L(A) = \mathrm{tr}(A) := \sum_{i=1}^n a_{ii}
> $$
> La traccia è la somma degli elementi sulla diagonale principale della matrice. Valgono:
> $$
> \mathrm{tr}(A + B) = \mathrm{tr}(A) + \mathrm{tr}(B), \qquad \mathrm{tr}(cA) = c\mathrm{tr}(A)
> $$
> pertanto la traccia è un'applicazione lineare (un funzionale lineare).

> [!example] Valutazione di Polinomi
> Nello spazio vettoriale dei polinomi a coefficienti reali $\mathbb{R}[t]$, si consideri l'operatore di valutazione in un punto fissato (ad es. $t = 1$):
> $$
> L: \mathbb{R}[t] \to \mathbb{R}, \qquad L(P(t)) = P(1)
> $$
> Per ogni coppia di polinomi $P(t), Q(t) \in \mathbb{R}[t]$ e ogni scalare $c \in \mathbb{R}$:
> $$
> (P + Q)(1) = P(1) + Q(1), \qquad (cP)(1) = c P(1)
> $$
> Dunque l'operatore di valutazione è un'applicazione lineare.
>
## 3.3. Sottospazi Immagine e Controimmagine

> [!definition] Immagine e Controimmagine di Sottospazi
> Sia $L: V \to W$ un'applicazione lineare.
> 1. Se $H \subseteq V$ è un sottospazio vettoriale di $V$, la sua **immagine** tramite $L$ è il sottoinsieme di $W$:
>    $$
>    \mathrm{Im}(H) = L(H) := \{ L(\mathbf{v}) \in W : \mathbf{v} \in H \} \subseteq W
>    $$
> 2. Se $J \subseteq W$ è un sottospazio vettoriale di $W$, la sua **controimmagine** (o *preimmagine*) tramite $L$ è il sottoinsieme di $V$:
>    $$
>    L^{-1}(J) := \{ \mathbf{v} \in V : L(\mathbf{v}) \in J \} \subseteq V
>    $$

> [!proposition] Struttura di Sottospazio per Immagine e Controimmagine
> Sia $L: V \to W$ un'applicazione lineare.
> 1. Se $H \le V$ è un sottospazio vettoriale di $V$, allora $L(H)$ è un **sottospazio vettoriale** di $W$.
> 2. Se $J \le W$ è un sottospazio vettoriale di $W$, allora $L^{-1}(J)$ è un **sottospazio vettoriale** di $V$.

> [!quote]- Dimostrazione
> **1. Verifica che $L(H)$ è un sottospazio vettoriale di $W$:**
> - Poiché $H \le V$, si ha $\mathbf{0}_V \in H$. Dunque $L(\mathbf{0}_V) = \mathbf{0}_W \in L(H)$, per cui $L(H) \neq \emptyset$.
> - Chiusura rispetto alla somma: siano $\mathbf{w}_1, \mathbf{w}_2 \in L(H)$. Esistono per definizione $\mathbf{v}_1, \mathbf{v}_2 \in H$ tali che $L(\mathbf{v}_1) = \mathbf{w}_1$ e $L(\mathbf{v}_2) = \mathbf{w}_2$. Essendo $H$ un sottospazio, $\mathbf{v}_1 + \mathbf{v}_2 \in H$. Sfruttando la linearità di $L$:
>   $$
>   \mathbf{w}_1 + \mathbf{w}_2 = L(\mathbf{v}_1) + L(\mathbf{v}_2) = L(\mathbf{v}_1 + \mathbf{v}_2) \in L(H)
>   $$
> - Chiusura rispetto al prodotto scalare: sia $\mathbf{w} \in L(H)$ con $\mathbf{w} = L(\mathbf{v})$ per $\mathbf{v} \in H$, e sia $c \in \mathbb{R}$. Poiché $c\mathbf{v} \in H$:
>   $$
>   c\mathbf{w} = c\, L(\mathbf{v}) = L(c\mathbf{v}) \in L(H)
>   $$
> Pertanto $L(H) \le W$.
>
> **2. Verifica che $L^{-1}(J)$ è un sottospazio vettoriale di $V$:**
> - Contenimento dell'elemento nullo: poiché $J \le W$, $\mathbf{0}_W \in J$. Dato che $L(\mathbf{0}_V) = \mathbf{0}_W \in J$, si ha:
>   $$
>   \mathbf{0}_V \in L^{-1}(J)
>   $$
> - Chiusura rispetto alla somma: siano $\mathbf{v}_1, \mathbf{v}_2 \in L^{-1}(J)$, il che implica $L(\mathbf{v}_1) \in J$ e $L(\mathbf{v}_2) \in J$. Essendo $J$ un sottospazio vettoriale di $W$, la somma appartiene a $J$:
>   $$
>   L(\mathbf{v}_1) + L(\mathbf{v}_2) \in J
>   $$
>   Dalla linearità di $L$, $L(\mathbf{v}_1 + \mathbf{v}_2) = L(\mathbf{v}_1) + L(\mathbf{v}_2) \in J$, da cui:
>   $$
>   \mathbf{v}_1 + \mathbf{v}_2 \in L^{-1}(J)
>   $$
> - Chiusura rispetto al prodotto per scalare: sia $\mathbf{v} \in L^{-1}(J)$, cioè $L(\mathbf{v}) \in J$, e sia $c \in \mathbb{R}$. Poiché $J$ è sottospazio, $c L(\mathbf{v}) \in J$. Dalla linearità di $L$:
>   $$
>   L(c\mathbf{v}) = c\, L(\mathbf{v}) \in J \implies c\mathbf{v} \in L^{-1}(J)
>   $$
> Pertanto $L^{-1}(J) \le V$.
> $$
> L(H) \le W \quad \land \quad L^{-1}(J) \le V \qquad \blacksquare
> $$
>
## 3.4. Nucleo e Immagine di un'Applicazione Lineare

> [!definition] Immagine e Nucleo ($\mathrm{Im}$ e $\mathrm{Ker}$)
> Sia $L: V \to W$ un'applicazione lineare.
> 1. L'**immagine** di $L$, denotata con $\mathrm{Im}(L)$, è l'immagine dell'intero spazio di partenza $V$:
>    $$
>    \mathrm{Im}(L) := L(V) = \{ L(\mathbf{v}) \in W : \mathbf{v} \in V \} \le W
>    $$
> 2. Il **nucleo** (o *kernel*) di $L$, denotato con $\mathrm{Ker}(L)$, è la controimmagine del sottospazio banale $\{\mathbf{0}_W\}$:
>    $$
>    \mathrm{Ker}(L) := L^{-1}(\{\mathbf{0}_W\}) = \{ \mathbf{v} \in V : L(\mathbf{v}) = \mathbf{0}_W \} \le V
>    $$

> [!note] Calcolo dell'Immagine di un Sottospazio Generato
> Sia $H \subseteq V$ un sottospazio vettoriale definito mediante un insieme di generatori:
> $$
> H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} = \left\{ \sum_{i=1}^n c_i \mathbf{v}_i : c_i \in \mathbb{R} \right\} \subseteq V
> $$
> Applicando l'applicazione lineare $L$ a ciascun vettore di $H$:
> $$
> \begin{aligned}
> L(H) &= \left\{ L\left( \sum_{i=1}^n c_i \mathbf{v}_i \right) : c_i \in \mathbb{R} \right\} \\
> &= \left\{ \sum_{i=1}^n c_i L(\mathbf{v}_i) : c_i \in \mathbb{R} \right\} = \mathrm{Span}\big( \{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\} \big)
> \end{aligned}
> $$
> **Regola fondamentale:** Se $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ sono generatori di $H$, le loro immagini $\{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\}$ sono generatori di $\mathrm{Im}(H) = L(H)$:
> $$
> H = \mathrm{Span}\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \implies L(H) = \mathrm{Span}\{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\}
> $$

> [!example] Nucleo e Immagine dell'Applicazione Matriciale $T_A$
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ e si consideri la mappa lineare $T_A: \mathbb{R}^n \to \mathbb{R}^m$, $T_A(\mathbf{v}) = A\mathbf{v}$.
> - **Nucleo:**
>   $$
>   \mathrm{Ker}(T_A) = \{ \mathbf{v} \in \mathbb{R}^n : T_A(\mathbf{v}) = \mathbf{0} \} = \{ \mathbf{v} \in \mathbb{R}^n : A\mathbf{v} = \mathbf{0} \} = \mathrm{Ker}(A)
>   $$
>   Il nucleo di $T_A$ coincide esattamente con il nucleo della matrice $A$ (lo spazio delle soluzioni del sistema lineare omogeneo $A\mathbf{x} = \mathbf{0}$).
> - **Immagine:**
>   Poiché $\mathbb{R}^n = \mathrm{Span}\{\mathbf{e}_1, \dots, \mathbf{e}_n\}$:
>   $$
>   \begin{aligned}
>   \mathrm{Im}(T_A) &= T_A(\mathbb{R}^n) = T_A\big(\mathrm{Span}\{\mathbf{e}_1, \dots, \mathbf{e}_n\}\big) \\
>   &= \mathrm{Span}\{T_A(\mathbf{e}_1), \dots, T_A(\mathbf{e}_n)\} = \mathrm{Span}\{A\mathbf{e}_1, \dots, A\mathbf{e}_n\} \\
>   &= \mathrm{Span}\left\{ A\begin{pmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{pmatrix}, \dots, A\begin{pmatrix} 0 \\ \vdots \\ 0 \\ 1 \end{pmatrix} \right\} = \mathrm{col}(A)
>   \end{aligned}
>   $$
>   L'immagine di $T_A$ coincide con lo spazio generato dalle colonne di $A$ ($\mathrm{col} A$).
>
> In sintesi:
> $$
> \mathrm{Ker}(T_A) = \mathrm{Ker}(A), \qquad \mathrm{Im}(T_A) = \mathrm{col}(A)
> $$
>
## 3.5. Applicazioni Lineari Iniettive, Suriettive e Isomorfismi

### Iniettività

> [!definition] Applicazione Lineare Iniettiva
> Sia $L: V \to W$ un'applicazione lineare. $L$ è detta **iniettiva** se a vettori distinti corrispondono immagini distinte:
> $$
> L(\mathbf{v}_1) = L(\mathbf{v}_2) \implies \mathbf{v}_1 = \mathbf{v}_2, \qquad \forall \mathbf{v}_1, \mathbf{v}_2 \in V
> $$

> [!example] Esempi di Controllo dell'Iniettività
> 1. Si consideri la matrice $A = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \in \mathrm{Mat}_\mathbb{R}(2, 2)$ e la mappa $T_A: \mathbb{R}^2 \to \mathbb{R}^2$.
>    Prendendo i vettori distinti:
>    $$
>    \mathbf{v}_1 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} -1 \\ 2 \end{pmatrix}
>    $$
>    Calcolando le rispettive immagini:
>    $$
>    T_A\begin{pmatrix} 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 3 \\ 6 \end{pmatrix}
>    T_A\begin{pmatrix} -1 \\ 2 \end{pmatrix} = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} -1 \\ 2 \end{pmatrix} = \begin{pmatrix} 3 \\ 6 \end{pmatrix}
>    $$
>    Poiché $T_A(\mathbf{v}_1) = T_A(\mathbf{v}_2)$ con $\mathbf{v}_1 \neq \mathbf{v}_2$, la mappa $T_A$ **non è iniettiva**.
> 2. Si consideri la mappa $L: V \to V$ data da $L(\mathbf{v}) = 4\mathbf{v}$.
>    $$
>    L(\mathbf{v}_1) = L(\mathbf{v}_2) \implies 4\mathbf{v}_1 = 4\mathbf{v}_2 \implies \mathbf{v}_1 = \mathbf{v}_2
>    $$
>    Dunque $L$ **è iniettiva**.

> [!proposition] Caratterizzazione dell'Iniettività tramite il Nucleo
> Sia $L: V \to W$ un'applicazione lineare. Allora:
> $$
> L \text{ è iniettiva} \iff \mathrm{Ker}(L) = \{\mathbf{0}_V\}
> $$

> [!quote]- Dimostrazione
> **Implicazione diretta ($\implies$):**
> Sia $L$ iniettiva e sia $\mathbf{v} \in \mathrm{Ker}(L)$.
> Per definizione di nucleo, $L(\mathbf{v}) = \mathbf{0}_W$.
> Poiché per linearità $L(\mathbf{0}_V) = \mathbf{0}_W$, si ha:
> $$
> L(\mathbf{v}) = L(\mathbf{0}_V)
> $$
> Essendo $L$ iniettiva:
> $$
> \mathbf{v} = \mathbf{0}_V
> $$
> Pertanto $\mathrm{Ker}(L) = \{\mathbf{0}_V\}$.
>
> **Implicazione inversa ($\impliedby$):**
> Supponiamo che $\mathrm{Ker}(L) = \{\mathbf{0}_V\}$.
> Siano $\mathbf{v}_1, \mathbf{v}_2 \in V$ tali che $L(\mathbf{v}_1) = L(\mathbf{v}_2)$.
> Sottraendo i due membri e sfruttando la linearità:
> $$
> L(\mathbf{v}_1) - L(\mathbf{v}_2) = \mathbf{0}_W \implies L(\mathbf{v}_1 - \mathbf{v}_2) = \mathbf{0}_W
> $$
> Ne segue che la differenza appartiene al nucleo:
> $$
> \mathbf{v}_1 - \mathbf{v}_2 \in \mathrm{Ker}(L) = \{\mathbf{0}_V\} \implies \mathbf{v}_1 - \mathbf{v}_2 = \mathbf{0}_V \implies \mathbf{v}_1 = \mathbf{v}_2
> $$
> Dunque $L$ è iniettiva.
> $$
> L \text{ è iniettiva} \iff \mathrm{Ker}(L) = \{\mathbf{0}_V\} \qquad \blacksquare
> $$

> [!corollary] Iniettività delle Mappe Matriciali $T_A$ e Rango
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ e si consideri $T_A: \mathbb{R}^n \to \mathbb{R}^m$. Allora:
> $$
> T_A(\mathbf{v}) \text{ è iniettiva} \iff \mathrm{Ker}(T_A) = \{\mathbf{0}\} \iff \mathrm{Ker}(A) = \{\mathbf{0}\} \iff \dim(\mathrm{Ker} A) = 0
> $$
> Dal **Teorema di Nullità + Rango**:
> $$
> n = \mathrm{rk}(A) + \underbrace{\dim(\mathrm{Ker} A)}_{= 0} \implies \mathrm{rk}(A) = n
> $$
> Di conseguenza:
> $$
> \mathrm{rk}(A) < n \iff T_A \text{ non è iniettiva}
> $$

> [!example] Rango e Mancata Iniettività
> Si consideri la matrice $A = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix}$.
> Eseguendo l'operazione elementare per righe:
> $$
> R_2 - 2R_1 = (2, 4) - 2(1, 2) = (0, 0)
> $$
> Si ha $\mathrm{rk}(A) = 1 < n = 2$, dunque $T_A$ **non è iniettiva**.
>
> Presi due vettori linearmente indipendenti $\mathbf{v}_1, \mathbf{v}_2 \in \mathbb{R}^2$, le rispettive immagini $T(\mathbf{v}_1)$ e $T(\mathbf{v}_2)$ non sono linearmente indipendenti.
>
### Conservazione dell'Indipendenza Lineare

> [!proposition] Conservazione dell'Indipendenza Lineare per Mappe Iniettive
> Sia $L: V \to W$ un'applicazione lineare **iniettiva**.
> Allora un insieme di vettori $\{\mathbf{v}_1, \dots, \mathbf{v}_n\} \subseteq V$ è linearmente indipendente se e solo se l'insieme delle immagini $\{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\} \subseteq W$ è linearmente indipendente:
> $$
> \mathbf{v}_1, \dots, \mathbf{v}_n \in V \text{ L.I.} \iff L(\mathbf{v}_1), \dots, L(\mathbf{v}_n) \in W \text{ L.I.}
> $$

> [!quote]- Dimostrazione
> Si consideri una combinazione lineare nulla delle immagini:
> $$
> c_1 L(\mathbf{v}_1) + \dots + c_n L(\mathbf{v}_n) = \mathbf{0}_W
> $$
> Per la linearità di $L$:
> $$
> L(c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n) = \mathbf{0}_W
> $$
> Poiché $L$ è iniettiva, $\mathrm{Ker}(L) = \{\mathbf{0}_V\}$, da cui:
> $$
> c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n \in \mathrm{Ker}(L) = \{\mathbf{0}_V\} \implies c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}_V
> $$
> Di conseguenza:
> - Se $\{\mathbf{v}_1, \dots, \mathbf{v}_n\}$ sono L.I., l'unica combinazione lineare nulla impone $c_1 = \dots = c_n = 0$, rendendo $\{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\}$ L.I.
> - Viceversa, se $\{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\}$ sono L.I., l'uguaglianza $c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}_V$ implica, applicando $L$, che $c_1 L(\mathbf{v}_1) + \dots + c_n L(\mathbf{v}_n) = \mathbf{0}_W$, da cui $c_1 = \dots = c_n = 0$.
> $$
> \mathbf{v}_1, \dots, \mathbf{v}_n \text{ L.I.} \iff L(\mathbf{v}_1), \dots, L(\mathbf{v}_n) \text{ L.I.} \qquad \blacksquare
> $$

> [!corollary] Mappatura delle Basi e Invarianza Dimensionale
> Sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base di un sottospazio vettoriale $H \subseteq V$.
> Se $L: V \to W$ è un'applicazione lineare **iniettiva**, allora:
> 1. L'insieme delle immagini dei vettori di base:
>    $$
>    \{L(\mathbf{b}_1), \dots, L(\mathbf{b}_n)\} \text{ è una base di } L(H)
>    $$
> 2. Le dimensioni coincidono:
>    $$
>    \dim H = \dim(L(H))
>    $$
>
### Suriettività

> [!definition] Applicazione Lineare Suriettiva
> Sia $L: V \to W$ un'applicazione lineare. $L$ è detta **suriettiva** se la sua immagine coincide con l'intero codominio $W$:
> $$
> L \text{ è suriettiva} \iff \mathrm{Im}(L) = W \iff \forall \mathbf{w} \in W, \; \exists \mathbf{v} \in V : L(\mathbf{v}) = \mathbf{w}
> $$

> [!corollary] Criterio di Suriettività per Mappe Matriciali
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ e si consideri la corrispondente applicazione lineare $T_A: \mathbb{R}^n \to \mathbb{R}^m$.
> $T_A$ è suriettiva se e solo se la dimensione dello spazio delle colonne di $A$ coincide con la dimensione del codominio:
> $$
> T_A \text{ è suriettiva} \iff \dim(\mathrm{col} A) = \dim(\mathbb{R}^m) = m \iff \mathrm{rk}(A) = m
> $$

> [!example] Condizione di Non-Suriettività per $T_A$
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ e sia $T_A: \mathbb{R}^n \to \mathbb{R}^m$:
> $$
> T_A \text{ è suriettiva} \iff \mathrm{Im}(T_A) = \mathbb{R}^m \iff \mathrm{col}(A) = \mathbb{R}^m \iff \dim(\mathrm{col} A) = m \iff \mathrm{rk}(A) = m
> $$
> Pertanto:
> $$
> \mathrm{rk}(A) < m \iff T_A \text{ non è suriettiva}
> $$
>
### Isomorfismi

> [!definition] Isomorfismo
> Sia $L: V \to W$ un'applicazione lineare.
> $L$ è detta un **isomorfismo** se è sia **iniettiva** sia **suriettiva** (ossia **biettiva** / **biunivoca**):
> $$
> L \text{ è un isomorfismo} \iff L \text{ è iniettiva} \; \land \; L \text{ è suriettiva}
> $$
> Due spazi vettoriali per cui esiste un isomorfismo si dicono **isomorfi**, e si indica con $V \cong W$.

> [!example] Isomorfismi di Trasformazioni Matriciali
> Sia $A \in \mathrm{Mat}_\mathbb{R}(m, n)$.
> L'applicazione lineare associata $T_A: \mathbb{R}^n \to \mathbb{R}^m$ è un **isomorfismo** se e solo se:
> $$
> \mathrm{rk}(A) = m = n
> $$
> ovvero quando:
> - La matrice $A$ è **quadrata** ($m = n$).
> - La matrice $A$ ha **rango massimo** ($\mathrm{rk}(A) = n$, cioè $\det(A) \neq 0$, ovvero $A$ è invertibile).

> [!proposition] Proprietà Fondamentali degli Isomorfismi
> Sia $L: V \to W$ un isomorfismo tra spazi vettoriali. Allora:
> 1. $L$ è iniettiva e suriettiva.
> 2. I due spazi hanno la medesima dimensione:
>    $$
>    \dim V = \dim W
>    $$
> 3. $L$ mappa basi in basi:
>    $$
>    \{\mathbf{v}_1, \dots, \mathbf{v}_n\} \text{ è una base di } V \iff \{L(\mathbf{v}_1), \dots, L(\mathbf{v}_n)\} \text{ è una base di } W
>    $$
> 4. Per ogni sottospazio vettoriale $H \subseteq V$:
>    $$
>    \dim H = \dim(L(H))
>    $$
> 5. Per ogni coppia di sottospazi vettoriali $H, K \subseteq V$, $L$ preserva l'intersezione e la somma:
>    $$
>    L(H \cap K) = L(H) \cap L(K)
>    L(H + K) = L(H) + L(K)
>    $$

> [!example] Isomorfismo tra Matrici Riga e Matrici Colonna
> Si consideri l'applicazione lineare di trasposizione:
> $$
> L: \mathrm{Mat}_\mathbb{R}(m, 1) \to \mathrm{Mat}_\mathbb{R}(1, m), \qquad L(\mathbf{v}) = \mathbf{v}^T
> $$
> $L$ è lineare ed è biettiva, dunque è un **isomorfismo**.
>
> **Conseguenza:** Gli spazi vettoriali $\mathrm{Mat}_\mathbb{R}(m, 1)$ e $\mathrm{Mat}_\mathbb{R}(1, m)$ sono isomorfi ("praticamente lo stesso spazio vettoriale"), il che formalizza l'interscambiabilità algebrica tra vettori riga e vettori colonna a meno dell'operazione di trasposizione.
>
## 3.6. Composizione di Applicazioni Lineari

> [!definition] Composizione di Applicazioni Lineari
> Siano $U, V, W$ tre spazi vettoriali su uno stesso campo $\mathbb{K}$, e siano:
> $$
> L: U \to V \qquad \text{e} \qquad M: V \to W
> $$
> due applicazioni lineari.
>
> La **composizione** di $L$ ed $M$ è l'applicazione:
> $$
> M \circ L: U \to W
> $$
> definita ponendo per ogni $\mathbf{v} \in U$:
> $$
> (M \circ L)(\mathbf{v}) := M(L(\mathbf{v}))
> $$

> [!note] Linearità della Composizione
> La composizione di due applicazioni lineari è ancora un'applicazione lineare. Infatti, per ogni $\mathbf{u}_1, \mathbf{u}_2 \in U$ e scalari $a, b \in \mathbb{R}$:
> $$
> \begin{aligned}
> (M \circ L)(a\mathbf{u}_1 + b\mathbf{u}_2) &= M(L(a\mathbf{u}_1 + b\mathbf{u}_2)) \\
> &= M(a L(\mathbf{u}_1) + b L(\mathbf{u}_2)) \\
> &= a M(L(\mathbf{u}_1)) + b M(L(\mathbf{u}_2)) \\
> &= a\, (M \circ L)(\mathbf{u}_1) + b\, (M \circ L)(\mathbf{u}_2)
> \end{aligned}
> $$

> [!example] Composizione di Mappe Matriciali e Prodotto tra Matrici
> Siano $A \in \mathrm{Mat}_\mathbb{R}(m, n)$ e $B \in \mathrm{Mat}_\mathbb{R}(p, m)$, a cui corrispondono le trasformazioni lineari:
> $$
> T_A: \mathbb{R}^n \to \mathbb{R}^m, \qquad T_B: \mathbb{R}^m \to \mathbb{R}^p
> $$
> La composizione $T_B \circ T_A: \mathbb{R}^n \to \mathbb{R}^p$ applicata a un generico vettore $\mathbf{v} \in \mathbb{R}^n$ vale:
> $$
> (T_B \circ T_A)(\mathbf{v}) = T_B(T_A(\mathbf{v})) = T_B(A\mathbf{v}) = B(A\mathbf{v}) = (BA)\mathbf{v}
> $$
> dove $BA \in \mathrm{Mat}_\mathbb{R}(p, n)$ è la matrice prodotto righe per colonne.
> Dunque la composizione tra applicazioni lineari corrisponde algebricamente alla moltiplicazione tra le matrici associate:
> $$
> T_B \circ T_A = T_{BA}
> $$

> [!definition] Applicazione Identità
> Sia $V$ uno spazio vettoriale. L'**applicazione identità** su $V$, denotata con $\mathrm{id}_V$, è l'applicazione lineare:
> $$
> \mathrm{id}_V: V \to V
> $$
> definita ponendo:
> $$
> \mathrm{id}_V(\mathbf{v}) = \mathbf{v}, \qquad \forall \mathbf{v} \in V
> $$
>
## 3.7. Isomorfismi e Invertibilità delle Applicazioni Lineari

### Proprietà dell'Applicazione Identità e Invertibilità

> [!note] Identità come Isomorfismo e Matrice Identità
> L'applicazione identità è banalmente biiettiva e lineare, dunque è un isomorfismo. Nel caso dello spazio euclideo standard $\mathbb{R}^n$, l'applicazione lineare indotta dalla matrice identità $I_n \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ coincide esattamente con l'identità di $\mathbb{R}^n$:
> $$
> T_{I_n} = \mathrm{id}_{\mathbb{R}^n}
> $$

> [!definition] Applicazione Lineare Invertibile
> Sia $L: V \to W$ un'applicazione lineare tra due spazi vettoriali. $L$ si dice **invertibile** se esiste un'applicazione (lineare) $L^{-1}: W \to V$ tale che:
> $$
> L \circ L^{-1} = \mathrm{id}_W \qquad \text{e} \qquad L^{-1} \circ L = \mathrm{id}_V
> $$
> L'applicazione $L^{-1}$ è univocamente determinata ed è detta **inversa** di $L$.

> [!note] Invertibilità della Matrice e dell'Applicazione Associata
> Data una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, essa è invertibile se e solo se l'applicazione lineare $T_A: \mathbb{R}^n \to \mathbb{R}^n$ ad essa associata è invertibile. In tal caso, l'inversa dell'applicazione lineare associata coincide con l'applicazione indotta dalla matrice inversa:
> $$
> A \in \mathrm{Mat}_{\mathbb{R}}(n, n) \text{ è invertibile} \iff T_A \text{ è invertibile}, \qquad T_A^{-1} = T_{A^{-1}}
> $$

> [!note] Equivalenza tra Isomorfismo e Invertibilità
> Per ogni applicazione lineare $L: V \to W$, l'invertibilità è equivalente alla biiettività (e quindi alla nozione di isomorfismo):
> $$
> L \text{ è un isomorfismo} \iff L \text{ è invertibile}
> $$
>
## 3.8. Matrice Rappresentativa di un'Applicazione Lineare

### Coordinate di un Vettore rispetto a una Base

> [!proposition] Esistenza e Unicità delle Coordinate
> Sia $V$ uno spazio vettoriale reale e sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base di $V$. Fissata la base $\mathcal{B}$ e dato un qualsiasi vettore $\mathbf{v} \in V$, esiste un'**unica** scelta di scalari $c_1, \dots, c_n \in \mathbb{R}$ tali che:
> $$
> \mathbf{v} = c_1 \mathbf{b}_1 + \dots + c_n \mathbf{b}_n = \sum_{i=1}^n c_i \mathbf{b}_i
> $$

> [!quote]- Dimostrazione
> La dimostrazione si articola in due punti distinti: l'esistenza e l'unicità della $n$-upla di coefficienti scalari.
> 
> **1. Esistenza dei coefficienti $c_1, \dots, c_n$:**
> Poiché $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è per ipotesi una base di $V$, i vettori $\mathbf{b}_1, \dots, \mathbf{b}_n$ costituiscono in particolare un insieme di generatori per lo spazio vettoriale $V$. Di conseguenza:
> $$
> V = \mathrm{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_n\} \implies \forall \mathbf{v} \in V, \;\; \mathbf{v} \in \mathrm{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_n\}
> $$
> Dalla definizione di sottospazio generato, esistono degli scalari $c_1, \dots, c_n \in \mathbb{R}$ tali che $\mathbf{v} = \sum_{i=1}^n c_i \mathbf{b}_i$.
> 
> **2. Unicità dei coefficienti $c_1, \dots, c_n$:**
> Supponiamo per assurdo o per confronto che esistano altri scalari $c_1', \dots, c_n' \in \mathbb{R}$ tali da rappresentare il medesimo vettore $\mathbf{v}$:
> $$
> \mathbf{v} = c_1' \mathbf{b}_1 + \dots + c_n' \mathbf{b}_n = \sum_{i=1}^n c_i' \mathbf{b}_i
> $$
> Uguagliando le due combinazioni lineari:
> $$
> \sum_{i=1}^n c_i \mathbf{b}_i = \sum_{i=1}^n c_i' \mathbf{b}_i \iff \sum_{i=1}^n (c_i - c_i') \mathbf{b}_i = \mathbf{0}
> $$
> Siccome $\mathcal{B}$ è una base, i vettori $\mathbf{b}_1, \dots, \mathbf{b}_n$ sono linearmente indipendenti. Pertanto, l'unica combinazione lineare dei vettori di $\mathcal{B}$ che produce il vettore nullo $\mathbf{0}$ è quella banale in cui tutti i coefficienti sono nulli:
> $$
> c_i - c_i' = 0 \quad \forall i = 1, \dots, n \implies c_i = c_i' \quad \forall i = 1, \dots, n
> $$
> Ne consegue che i coefficienti $c_1, \dots, c_n$ sono determinati in modo unico:
> $$
> c_i = c_i' \quad \forall i = 1, \dots, n \implies c_1, \dots, c_n \text{ sono unici.} \qquad \blacksquare
> $$

> [!definition] Vettore delle Coordinate
> Sia $V$ uno spazio vettoriale reale e sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una sua base ordinata. Si definisce **vettore delle coordinate** di un elemento $\mathbf{v} \in V$ rispetto alla base $\mathcal{B}$ il vettore colonna $[\mathbf{v}]_{\mathcal{B}} \in \mathbb{R}^n$ formato dagli unici scalari $c_1, \dots, c_n$ tali che $\mathbf{v} = \sum_{i=1}^n c_i \mathbf{b}_i$:
> $$
> [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix} \in \mathbb{R}^n
> $$

> [!example] Calcolo delle Coordinate nello Spazio dei Polinomi $\mathbb{R}[t]_{\le 2}$
> Si consideri lo spazio vettoriale dei polinomi di grado al più due $V = \mathbb{R}[t]_{\le 2}$ e la base:
> $$
> \mathcal{B} = \{t^2, \; t^2 + t, \; t^2 + t + 1\}
> $$
> Sia dato il polinomio $p(t) = t - 1 \in V$. Si determinino le sue coordinate $[p(t)]_{\mathcal{B}}$ rispetto a $\mathcal{B}$.
> Si scrive la combinazione lineare con coefficienti incogniti $c_1, c_2, c_3 \in \mathbb{R}$:
> $$
> t - 1 = c_1 t^2 + c_2 (t^2 + t) + c_3 (t^2 + t + 1)
> $$
> Riordinando e raccogliendo rispetto alle potenze decrescenti di $t$:
> $$
> t - 1 = (c_1 + c_2 + c_3) t^2 + (c_2 + c_3) t + c_3
> $$
> Uguagliando i coefficienti dei termini di pari grado:
> $$
> \begin{cases}
> c_1 + c_2 + c_3 = 0 \\
> c_2 + c_3 = 1 \\
> c_3 = -1
> \end{cases}
> \implies
> \begin{cases}
> c_3 = -1 \\
> c_2 = 1 - c_3 = 1 - (-1) = 2 \\
> c_1 = -c_2 - c_3 = -2 - (-1) = -1
> \end{cases}
> $$
> Si ottiene quindi:
> $$
> [p(t)]_{\mathcal{B}} = \begin{pmatrix} -1 \\ 2 \\ -1 \end{pmatrix} \in \mathbb{R}^3
> $$

> [!example] Coordinate Rispetto alla Base Canonica in $\mathbb{R}^2$
> Sia $V = \mathbb{R}^2$ e sia $\mathcal{E} = \{\mathbf{e}_1, \mathbf{e}_2\}$ la base canonica.
> Dato il vettore $\mathbf{v} = \begin{pmatrix} 4 \\ 2 \end{pmatrix}$, si ha immediatamente:
> $$
> \mathbf{v} = 4 \mathbf{e}_1 + 2 \mathbf{e}_2 \implies [\mathbf{v}]_{\mathcal{E}} = \begin{pmatrix} 4 \\ 2 \end{pmatrix}
> $$
> In generale, se la base scelta è la base canonica, il vettore delle coordinate coincide esattamente con il vettore originario:
> $$
> \mathbf{v} = [\mathbf{v}]_{\mathcal{E}}
> $$
>
### Isomorfismo delle Coordinate e di Parametrizzazione

> [!definition] Mappa delle Coordinate $Q_{\mathcal{B}}$
> Sia $V$ uno spazio vettoriale reale di dimensione finita $n$ e sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una sua base ordinata. Si definisce l'applicazione **mappa delle coordinate**:
> $$
> Q_{\mathcal{B}}: V \to \mathbb{R}^n, \qquad Q_{\mathcal{B}}(\mathbf{v}) = [\mathbf{v}]_{\mathcal{B}}
> $$

> [!proposition] Isomorfismo delle Coordinate
> L'applicazione $Q_{\mathcal{B}}: V \to \mathbb{R}^n$ è un isomorfismo lineare, detto **isomorfismo delle coordinate**.

> [!note] Traduzione di Problemi Astratti in $\mathbb{R}^n$
> Poiché ogni spazio vettoriale $V$ di dimensione $n$ su $\mathbb{R}$ è isomorfo a $\mathbb{R}^n$ ($V \cong \mathbb{R}^n$), una volta fissata una base $\mathcal{B}$ di $V$ è possibile impiegare l'isomorfismo $Q_{\mathcal{B}}$ per "tradurre" qualsiasi quesito o operazione su vettori di $V$ in un corrispondente problema algebrico su vettori colonna di $\mathbb{R}^n$.

> [!example] Intersezione di Sottospazi tramite l'Isomorfismo delle Coordinate
> Sia $V = \mathbb{R}[t]_{\le 3}$ lo spazio dei polinomi di grado al più tre e siano dati i sottospazi:
> $$
> H = \mathrm{Span}\{t + t^2, \; t - 1\}
> K = \mathrm{Span}\{3t^3 - t + 1, \; t^2 - t + 1\}
> $$
> Si determini il sottospazio intersezione $H \cap K$.
> Si fissa la base canonica ordinata $\mathcal{B} = \{t^3, t^2, t, 1\}$ di $V$. Le coordinate dei generatori rispetto a $\mathcal{B}$ sono:
> $$
> Q_{\mathcal{B}}(t + t^2) = \begin{pmatrix} 0 \\ 1 \\ 1 \\ 0 \end{pmatrix}, \qquad Q_{\mathcal{B}}(t - 1) = \begin{pmatrix} 0 \\ 0 \\ 1 \\ -1 \end{pmatrix}
> Q_{\mathcal{B}}(3t^3 - t + 1) = \begin{pmatrix} 3 \\ 0 \\ -1 \\ 1 \end{pmatrix}, \qquad Q_{\mathcal{B}}(t^2 - t + 1) = \begin{pmatrix} 0 \\ 1 \\ -1 \\ 1 \end{pmatrix}
> $$
> Essendo $Q_{\mathcal{B}}$ un isomorfismo, esso commuta con l'intersezione:
> $$
> Q_{\mathcal{B}}(H \cap K) = Q_{\mathcal{B}}(H) \cap Q_{\mathcal{B}}(K) = \mathrm{Span}\left\{ \begin{pmatrix} 0 \\ 1 \\ 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 0 \\ 1 \\ -1 \end{pmatrix} \right\} \cap \mathrm{Span}\left\{ \begin{pmatrix} 3 \\ 0 \\ -1 \\ 1 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \\ -1 \\ 1 \end{pmatrix} \right\}
> $$
> Ricaviamo le equazioni cartesiane per $Q_{\mathcal{B}}(H)$ e $Q_{\mathcal{B}}(K)$ in $\mathbb{R}^4$:
> - **Per $Q_{\mathcal{B}}(H)$:**
>   $$
>   \begin{pmatrix} x \\ y \\ z \\ w \end{pmatrix} = a \begin{pmatrix} 0 \\ 1 \\ 1 \\ 0 \end{pmatrix} + b \begin{pmatrix} 0 \\ 0 \\ 1 \\ -1 \end{pmatrix} \implies
>   \begin{cases}
>   x = 0 \\
>   y = a \\
>   z = a + b \\
>   w = -b
>   \end{cases}
>   \implies
>   \begin{cases}
>   x = 0 \\
>   z = y - w
>   \end{cases}
>   $$
>   ovvero:
>   $$
>   Q_{\mathcal{B}}(H) = \left\{ \mathbf{x} \in \mathbb{R}^4 : \begin{cases} x = 0 \\ y - z - w = 0 \end{cases} \right\}
>   $$
> - **Per $Q_{\mathcal{B}}(K)$:**
>   $$
>   \begin{pmatrix} x \\ y \\ z \\ w \end{pmatrix} = a \begin{pmatrix} 3 \\ 0 \\ -1 \\ 1 \end{pmatrix} + b \begin{pmatrix} 0 \\ 1 \\ -1 \\ 1 \end{pmatrix} \implies
>   \begin{cases}
>   x = 3a \implies a = \frac{x}{3} \\
>   y = b \\
>   z = -a - b = -\frac{x}{3} - y \\
>   w = a + b = \frac{x}{3} + y
>   \end{cases}
>   \implies
>   \begin{cases}
>   x + 3y + 3z = 0 \\
>   z + w = 0
>   \end{cases}
>   $$
> L'intersezione $Q_{\mathcal{B}}(H \cap K)$ è descritta dal sistema congiunto delle quattro equazioni:
> $$
> \begin{cases}
> x = 0 \\
> y - z - w = 0 \\
> x + 3y + 3z = 0 \\
> z + w = 0
> \end{cases}
> \implies
> \begin{cases}
> x = 0 \\
> w = -z \\
> y - z - (-z) = 0 \implies y = 0 \\
> 0 + 3(0) + 3z = 0 \implies z = 0 \\
> w = -0 = 0
> \end{cases}
> \implies
> \begin{pmatrix} x \\ y \\ z \\ w \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \\ 0 \\ 0 \end{pmatrix}
> $$
> Risulta quindi $Q_{\mathcal{B}}(H \cap K) = \{\mathbf{0}\}$. Applicando l'isomorfismo inverso, concludiamo che:
> $$
> H \cap K = \{\mathbf{0}\}
> $$

> [!definition] Mappa di Parametrizzazione $P_{\mathcal{B}}$
> Sia $V$ uno spazio vettoriale reale e sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una sua base ordinata. Si definisce l'applicazione **mappa di parametrizzazione**:
> $$
> P_{\mathcal{B}}: \mathbb{R}^n \to V, \qquad P_{\mathcal{B}}\begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix} = c_1 \mathbf{b}_1 + \dots + c_n \mathbf{b}_n \in V
> $$

> [!proposition] Isomorfismo di Parametrizzazione
> L'applicazione $P_{\mathcal{B}}: \mathbb{R}^n \to V$ è un isomorfismo lineare, detto **isomorfismo di parametrizzazione**.

> [!example] Ricostruzione di un Polinomio da Coordinate
> Sia $V = \mathbb{R}[t]_{\le 2}$ e sia $\mathcal{B} = \{t^2 - 1, \; 2t - 1, \; t^2 + 1\}$ una base di $V$.
> L'isomorfismo di parametrizzazione è $P_{\mathcal{B}}: \mathbb{R}^3 \to \mathbb{R}[t]_{\le 2}$.
> Calcolando l'immagine del vettore colonna $\begin{pmatrix} 1 \\ 2 \\ 3 \end{pmatrix}$:
> $$
> P_{\mathcal{B}}\begin{pmatrix} 1 \\ 2 \\ 3 \end{pmatrix} = 1 \cdot (t^2 - 1) + 2 \cdot (2t - 1) + 3 \cdot (t^2 + 1) = t^2 - 1 + 4t - 2 + 3t^2 + 3 = 4t^2 + 4t \in \mathbb{R}[t]_{\le 2}
> $$

> [!note] Invertibilità Mutua di Coordinate e Parametrizzazione
> Sia $V$ uno spazio vettoriale di dimensione finita e sia $\mathcal{B}$ una sua base. Le mappe $Q_{\mathcal{B}}: V \to \mathbb{R}^n$ e $P_{\mathcal{B}}: \mathbb{R}^n \to V$ sono l'una l'inversa dell'altra:
> $$
> P_{\mathcal{B}} = Q_{\mathcal{B}}^{-1} \qquad \text{e} \qquad Q_{\mathcal{B}} = P_{\mathcal{B}}^{-1}
> $$
> Ne segue che:
> $$
> Q_{\mathcal{B}} \circ P_{\mathcal{B}} = \mathrm{id}_{\mathbb{R}^n} \qquad \text{e} \qquad P_{\mathcal{B}} \circ Q_{\mathcal{B}} = \mathrm{id}_V
> $$
>
## 3.9. Matrice Rappresentativa di un'Applicazione Lineare Generica

### Definizione ed Esempi

> [!definition] Matrice Rappresentativa $M_L^{\mathcal{B},\mathcal{C}}$
> Sia $L: V \to W$ un'applicazione lineare tra due spazi vettoriali reali.
> Siano $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base di $V$ ($\dim V = n$) e $\mathcal{C} = \{\mathbf{c}_1, \dots, \mathbf{c}_m\}$ una base di $W$ ($\dim W = m$).
> La **matrice rappresentativa** di $L$ rispetto alle basi $\mathcal{B}$ e $\mathcal{C}$ è la matrice $M_L^{\mathcal{B},\mathcal{C}} \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ avente come colonne i vettori delle coordinate delle immagini dei vettori della base del dominio $\mathcal{B}$ rispetto alla base del codominio $\mathcal{C}$:
> $$
> M_L^{\mathcal{B},\mathcal{C}} = \begin{pmatrix} [L(\mathbf{b}_1)]_{\mathcal{C}} & [L(\mathbf{b}_2)]_{\mathcal{C}} & \dots & [L(\mathbf{b}_n)]_{\mathcal{C}} \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(m, n)
> $$

> [!example] Calcolo della Matrice Rappresentativa tra Polinomi e $\mathbb{R}^2$
> Si consideri l'applicazione lineare di valutazione $L: \mathbb{R}[t]_{\le 2} \to \mathbb{R}^2$ definita da:
> $$
> L(p(t)) = \begin{pmatrix} p(1) \\ p(-1) \end{pmatrix}
> $$
> Siano fissate la base $\mathcal{B} = \{2t^2 + 1, \; t - 1, \; t\}$ di $\mathbb{R}[t]_{\le 2}$ e la base $\mathcal{C} = \left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \end{pmatrix} \right\}$ di $\mathbb{R}^2$.
> Si determini $M_L^{\mathcal{B},\mathcal{C}}$.
> 
> Si calcolano le immagini dei singoli elementi della base $\mathcal{B}$ tramite $L$:
> 1. Per il primo vettore $\mathbf{b}_1 = 2t^2 + 1$:
>    $$
>    L(2t^2 + 1) = \begin{pmatrix} 2(1)^2 + 1 \\ 2(-1)^2 + 1 \end{pmatrix} = \begin{pmatrix} 3 \\ 3 \end{pmatrix} = 3 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 0 \begin{pmatrix} 1 \\ 0 \end{pmatrix} \implies [L(2t^2 + 1)]_{\mathcal{C}} = \begin{pmatrix} 3 \\ 0 \end{pmatrix}
>    $$
> 2. Per il secondo vettore $\mathbf{b}_2 = t - 1$:
>    $$
>    L(t - 1) = \begin{pmatrix} 1 - 1 \\ -1 - 1 \end{pmatrix} = \begin{pmatrix} 0 \\ -2 \end{pmatrix} = -2 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 2 \begin{pmatrix} 1 \\ 0 \end{pmatrix} \implies [L(t - 1)]_{\mathcal{C}} = \begin{pmatrix} -2 \\ 2 \end{pmatrix}
>    $$
> 3. Per il terzo vettore $\mathbf{b}_3 = t$:
>    $$
>    L(t) = \begin{pmatrix} 1 \\ -1 \end{pmatrix} = -1 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 2 \begin{pmatrix} 1 \\ 0 \end{pmatrix} \implies [L(t)]_{\mathcal{C}} = \begin{pmatrix} -1 \\ 2 \end{pmatrix}
>    $$
> Accostando le colonne così ottenute, la matrice rappresentativa cercata è:
> $$
> M_L^{\mathcal{B},\mathcal{C}} = \begin{pmatrix} 3 & -2 & -1 \\ 0 & 2 & 2 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 3)
> $$

> [!note] Caso Canonico delle Trasformazioni Matriciali
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ e sia $T_A: \mathbb{R}^n \to \mathbb{R}^m$ l'applicazione lineare indotta da $A$ ($T_A(\mathbf{x}) = A\mathbf{x}$).
> La matrice rappresentativa di $T_A$ rispetto alle basi canoniche $\mathcal{E}^n$ di $\mathbb{R}^n$ ed $\mathcal{E}^m$ di $\mathbb{R}^m$ coincide con la matrice $A$ stessa:
> $$
> M_{T_A}^{\mathcal{E}^n, \mathcal{E}^m} = A
> $$

> [!example] Matrice Rispetto alle Basi Canoniche
> Data l'applicazione lineare $L: \mathbb{R}^2 \to \mathbb{R}^3$ definita da:
> $$
> L\begin{pmatrix} x_1 \\ x_2 \end{pmatrix} = \begin{pmatrix} 3x_1 - 2x_2 \\ x_1 + x_2 \\ -2x_1 \end{pmatrix}
> $$
> La matrice rappresentativa rispetto alle rispettive basi canoniche $\mathcal{E}^2$ ed $\mathcal{E}^3$ è formata direttamente dai coefficienti delle componenti:
> $$
> M_L^{\mathcal{E}^2, \mathcal{E}^3} = \begin{pmatrix} 3 & -2 \\ 1 & 1 \\ -2 & 0 \end{pmatrix}
> $$
>
### Teorema di Rappresentazione delle Applicazioni Lineari

> [!theorem] Teorema di Rappresentazione
> Sia $L: V \to W$ un'applicazione lineare, sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base di $V$, sia $\mathcal{C} = \{\mathbf{c}_1, \dots, \mathbf{c}_m\}$ una base di $W$ e sia $A = M_L^{\mathcal{B},\mathcal{C}} \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ la matrice rappresentativa di $L$ rispetto a tali basi.
> Allora vale la relazione:
> $$
> Q_{\mathcal{C}} \circ L = T_A \circ Q_{\mathcal{B}}
> $$
> ovvero il seguente diagramma è commutativo:
> $$
> \begin{array}{ccc}
> V & \xrightarrow{\quad L \quad} & W \\
> \scriptsize{Q_{\mathcal{B}}}\Big\downarrow & & \Big\downarrow\scriptsize{Q_{\mathcal{C}}} \\
> \mathbb{R}^n & \xrightarrow{\quad T_A \quad} & \mathbb{R}^m
> \end{array}
> $$
> Tutti i percorsi da $V$ a $\mathbb{R}^m$ conducono al medesimo risultato.

> [!quote]- Dimostrazione
> Sia $\mathbf{v} \in V$ un vettore generico. Poiché $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è una base di $V$, esistono unici coefficienti $k_1, \dots, k_n \in \mathbb{R}$ tali che:
> $$
> \mathbf{v} = \sum_{i=1}^n k_i \mathbf{b}_i \implies [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} k_1 \\ \vdots \\ k_n \end{pmatrix} = Q_{\mathcal{B}}(\mathbf{v})
> $$
> Applicando l'applicazione lineare $L$ a $\mathbf{v}$:
> $$
> L(\mathbf{v}) = L\left( \sum_{i=1}^n k_i \mathbf{b}_i \right) = \sum_{i=1}^n k_i L(\mathbf{b}_i)
> $$
> Applichiamo ora a entrambi i membri l'isomorfismo delle coordinate $Q_{\mathcal{C}}$:
> $$
> Q_{\mathcal{C}}(L(\mathbf{v})) = Q_{\mathcal{C}}\left( \sum_{i=1}^n k_i L(\mathbf{b}_i) \right)
> $$
> Per la linearità di $Q_{\mathcal{C}}$:
> $$
> = \sum_{i=1}^n k_i Q_{\mathcal{C}}(L(\mathbf{b}_i))
> $$
> Per definizione della mappa $Q_{\mathcal{C}}$, si ha $Q_{\mathcal{C}}(L(\mathbf{b}_i)) = [L(\mathbf{b}_i)]_{\mathcal{C}}$, per cui:
> $$
> = \sum_{i=1}^n k_i [L(\mathbf{b}_i)]_{\mathcal{C}}
> $$
> Tale combinazione lineare di vettori colonna coincide con il prodotto tra la matrice rappresentativa $A$ e il vettore delle coordinate:
> $$
> = \begin{pmatrix} [L(\mathbf{b}_1)]_{\mathcal{C}} & [L(\mathbf{b}_2)]_{\mathcal{C}} & \dots & [L(\mathbf{b}_n)]_{\mathcal{C}} \end{pmatrix} \begin{pmatrix} k_1 \\ \vdots \\ k_n \end{pmatrix} = A \cdot \begin{pmatrix} k_1 \\ \vdots \\ k_n \end{pmatrix}
> $$
> Riconoscendo l'operatore associato $T_A$ e sostituendo il vettore delle coordinate con $Q_{\mathcal{B}}(\mathbf{v})$:
> $$
> = T_A\begin{pmatrix} k_1 \\ \vdots \\ k_n \end{pmatrix} = T_A(Q_{\mathcal{B}}(\mathbf{v}))
> $$
> Essendo verificata l'uguaglianza per ogni $\mathbf{v} \in V$:
> $$
> (Q_{\mathcal{C}} \circ L)(\mathbf{v}) = (T_A \circ Q_{\mathcal{B}})(\mathbf{v}) \implies Q_{\mathcal{C}} \circ L = T_A \circ Q_{\mathcal{B}} \qquad \blacksquare
> $$
>
### Proprietà Strutturali, Nucleo, Immagine e Criteri di Rango

> [!corollary] Fattorizzazione di $L$ mediante Isomorfismi
> Poiché $P_{\mathcal{C}} = Q_{\mathcal{C}}^{-1}$, componendo a sinistra per $P_{\mathcal{C}}$ l'identità fondamentale $Q_{\mathcal{C}} \circ L = T_A \circ Q_{\mathcal{B}}$, si ottiene la fattorizzazione esplicita:
> $$
> L = P_{\mathcal{C}} \circ T_A \circ Q_{\mathcal{B}} : V \to W
> $$
> Anche il diagramma completo con le parametrizzazioni è commutativo:
> $$
> \begin{array}{ccc}
> V & \xrightarrow{\quad L \quad} & W \\
> \scriptsize{Q_{\mathcal{B}}}\Big\downarrow \Big\uparrow\scriptsize{P_{\mathcal{B}}} & & \scriptsize{P_{\mathcal{C}}}\Big\uparrow \Big\downarrow\scriptsize{Q_{\mathcal{C}}} \\
> \mathbb{R}^n & \xrightarrow{\quad T_A \quad} & \mathbb{R}^m
> \end{array}
> $$

> [!note] Traduzione Globale di Applicazioni Lineari
> Ogni applicazione lineare astratta $L: V \to W$ tra spazi a dimensione finita può essere ricondotta fedelmente allo studio dell'applicazione matriciale standard $T_A: \mathbb{R}^n \to \mathbb{R}^m$, dove $A = M_L^{\mathcal{B},\mathcal{C}}$.

> [!corollary] Relazioni tra Nucleo, Immagine e Rango
> Sotto le notazioni precedenti ($A = M_L^{\mathcal{B},\mathcal{C}}$), valgono le seguenti proprietà:
> 1. Il nucleo di $L$ è la parametrizzazione del nucleo della matrice $A$:
>    $$
>    \mathrm{Ker}(L) = P_{\mathcal{B}}(\mathrm{Ker} A)
>    $$
> 2. L'immagine di $L$ è la parametrizzazione dello spazio delle colonne della matrice $A$:
>    $$
>    \mathrm{Im}(L) = P_{\mathcal{C}}(\mathrm{col} A)
>    $$
> 3. La dimensione del nucleo di $L$ è pari alla nullità di $A$:
>    $$
>    \dim(\mathrm{Ker} L) = \dim(\mathrm{Ker} A) = n - \mathrm{rk}(A)
>    $$
> 4. La dimensione dell'immagine di $L$ è pari al rango di $A$:
>    $$
>    \dim(\mathrm{Im} L) = \dim(\mathrm{col} A) = \mathrm{rk}(A)
>    $$
> Dalla somma delle due dimensioni discende il **Teorema di nullità + rango** per le applicazioni lineari:
> $$
> \dim(\mathrm{Ker} L) + \dim(\mathrm{Im} L) = n = \dim V
> $$
> 5. **Iniettività:**
>    $$
>    L \text{ è iniettiva} \iff \mathrm{rk}(A) = n = \dim V
>    $$
> 6. **Suriettività:**
>    $$
>    L \text{ è suriettiva} \iff \mathrm{rk}(A) = m = \dim W
>    $$
> 7. **Isomorfismo:**
>    $$
>    L \text{ è un isomorfismo} \iff \mathrm{rk}(A) = \dim V = \dim W
>    $$

> [!note] Invertibilità di $L$ e Inversione della Matrice Rappresentativa
> Un'applicazione lineare $L: V \to W$ tra spazi della medesima dimensione finita è un isomorfismo se e solo se la sua matrice rappresentativa è invertibile:
> $$
> L \text{ è un isomorfismo} \iff \mathrm{rk}(M_L^{\mathcal{B},\mathcal{C}}) = \dim V = \dim W \iff M_L^{\mathcal{B},\mathcal{C}} \text{ è invertibile} \iff T_{M_L^{\mathcal{B},\mathcal{C}}} \text{ è invertibile} \iff L \text{ è invertibile}
> $$
> In tal caso, l'applicazione lineare inversa $L^{-1}: W \to V$ ammette l'espressione:
> $$
> L^{-1} = P_{\mathcal{B}} \circ \left( T_{M_L^{\mathcal{B},\mathcal{C}}} \right)^{-1} \circ Q_{\mathcal{C}} = P_{\mathcal{B}} \circ T_{(M_L^{\mathcal{B},\mathcal{C}})^{-1}} \circ Q_{\mathcal{C}}
> $$
>
## 3.10. Rappresentazione della Composizione di Applicazioni Lineari

> [!proposition] Matrice della Composizione di Applicazioni Lineari
> Siano $U, V, W$ spazi vettoriali reali di dimensione finita dotati rispettivamente delle basi $\mathcal{B}, \mathcal{C}, \mathcal{D}$ (con $\dim U = n$, $\dim V = m$, $\dim W = p$).
> Siano $L: U \to V$ ed $M: V \to W$ due applicazioni lineari aventi matrici rappresentative:
> $$
> M_L^{\mathcal{B},\mathcal{C}} \in \mathrm{Mat}_{\mathbb{R}}(m, n) \qquad \text{e} \qquad M_M^{\mathcal{C},\mathcal{D}} \in \mathrm{Mat}_{\mathbb{R}}(p, m)
> $$
> Allora l'applicazione composta $M \circ L: U \to W$ è lineare e la sua matrice rappresentativa rispetto alle basi $\mathcal{B}$ e $\mathcal{D}$ è data dal prodotto riga per colonna delle singole matrici rappresentative:
> $$
> M_{M \circ L}^{\mathcal{B},\mathcal{D}} = M_M^{\mathcal{C},\mathcal{D}} \cdot M_L^{\mathcal{B},\mathcal{C}} \in \mathrm{Mat}_{\mathbb{R}}(p, n)
> $$
>
Il diagramma di composizione commuta interamente:
$$
\begin{array}{ccccc}
U & \xrightarrow{\quad L \quad} & V & \xrightarrow{\quad M \quad} & W \\
\scriptsize{Q_{\mathcal{B}}}\Big\downarrow \Big\uparrow\scriptsize{P_{\mathcal{B}}} & & \scriptsize{Q_{\mathcal{C}}}\Big\downarrow \Big\uparrow\scriptsize{P_{\mathcal{C}}} & & \scriptsize{Q_{\mathcal{D}}}\Big\downarrow \Big\uparrow\scriptsize{P_{\mathcal{D}}} \\
\mathbb{R}^n & \xrightarrow{\quad T_{M_L^{\mathcal{B},\mathcal{C}}} \quad} & \mathbb{R}^m & \xrightarrow{\quad T_{M_M^{\mathcal{C},\mathcal{D}}} \quad} & \mathbb{R}^p \\
& \searrow & & \nearrow & \\
& & T_{M_{M \circ L}^{\mathcal{B},\mathcal{D}}} & &
\end{array}
$$
Pertanto, la composizione delle applicazioni si esprime a livello globale come:
$$
M \circ L = P_{\mathcal{D}} \circ T_{M_{M \circ L}^{\mathcal{B},\mathcal{D}}} \circ Q_{\mathcal{B}} = P_{\mathcal{D}} \circ T_{M_M^{\mathcal{C},\mathcal{D}}} \circ T_{M_L^{\mathcal{B},\mathcal{C}}} \circ Q_{\mathcal{B}}
$$
