---
title: "Sistemi Differenziali Lineari e Stabilità di Lyapunov"
domain: "math/dynamical-systems"
source_course: "Analisi 2 (Cap. 6)"
tags:
  - math/ode/linear-systems
  - math/ode/matrix-exponential
  - math/dynamical-systems/lyapunov
---

# 6. Sistemi di Equazioni Differenziali Ordinarie e Teoria della Stabilità

## 6.1. Sistemi di ODE del primo ordine e riduzione dell'ordine

### Formulazione generale e problema di Cauchy vettoriale

> [!definition] Sistema di equazioni differenziali ordinarie del I ordine
> Un sistema di $n$ equazioni differenziali ordinarie del primo ordine in forma normale è descritto da un'equazione per una funzione vettoriale incognita:
> $$
> \mathbf{\dot{y}}(t) = \mathbf{f}(t, \mathbf{y})
> $$
> dove:
> - $\mathbf{y}: I \subseteq \mathbb{R} \to \mathbb{R}^n$, con $\mathbf{y}(t) = \begin{pmatrix} y_1(t) \\ \vdots \\ y_n(t) \end{pmatrix}$;
> - $\mathbf{f}: D \subseteq \mathbb{R}^{n+1} \to \mathbb{R}^n$, con $\mathbf{f}(t, \mathbf{y}) = \begin{pmatrix} f_1(t, y_1, \dots, y_n) \\ \vdots \\ f_n(t, y_1, \dots, y_n) \end{pmatrix}$, con $D$ aperto in $\mathbb{R} \times \mathbb{R}^n$.
>
Una **soluzione locale** del sistema è una funzione $\mathbf{y} \in C^1(I_\delta; \mathbb{R}^n)$, definita su un intorno aperto $I_\delta = (t_0 - \delta, t_0 + \delta)$, tale che: $$ (t, \mathbf{y}(t)) \in D, \quad \mathbf{\dot{y}}(t) = \mathbf{f}(t, \mathbf{y}(t)), \quad \forall t \in I_{\delta} $$ associata alla condizione iniziale di Cauchy $\mathbf{y}(t_0) = \mathbf{y}_0$.

> [!note] Valore unificante dei sistemi
> Tutte le equazioni differenziali ordinarie di ordine superiore ad uno si riconducono a casi particolari di sistemi di ODE del primo ordine.
>
### Teoremi di esistenza e unicità per sistemi di ODE

> [!theorem] Teorema di esistenza di Peano
> Sia $D \subseteq \mathbb{R}^{n+1} = \mathbb{R} \times \mathbb{R}^n$ un insieme aperto, e sia $\mathbf{f}: D \to \mathbb{R}^n$ una funzione **continua** su $D$ ($\mathbf{f} \in C^0(D)$).
> Allora, per ogni punto iniziale $(t_0, \mathbf{y}_0) \in D$, **esiste almeno una soluzione** locale $\mathbf{y}(t)$ di:
> $$
> \begin{cases}
> \mathbf{\dot{y}} = \mathbf{f}(t, \mathbf{y}) \\
> \mathbf{y}(t_0) = \mathbf{y}_0
> \end{cases}
> $$

> [!theorem] Teorema di esistenza e unicità locale (Cauchy-Lipschitz / Picard-Lindelöf)
> Sia $D \subseteq \mathbb{R}^{n+1}$ un aperto, e sia $\mathbf{f}: D \to \mathbb{R}^n$. Se:
> 1. $\mathbf{f} \in C^0(D)$;
> 2. $\mathbf{f}$ è **localmente lipschitziana** in $D$ rispetto alla variabile $\mathbf{y}$, uniformemente rispetto a $t$: ovvero, per ogni compatto $K \subset D$, esiste $L > 0$ tale che:
>    $$
>    \|\mathbf{f}(t, \mathbf{y}_1) - \mathbf{f}(t, \mathbf{y}_2)\| \le L \|\mathbf{y}_1 - \mathbf{y}_2\|, \quad \forall (t, \mathbf{y}_1), (t, \mathbf{y}_2) \in K
>    $$
> Allora per ogni $(t_0, \mathbf{y}_0) \in D$ **esiste un'unica soluzione locale** $\mathbf{y}(t)$ del problema di Cauchy:
> $$
> \begin{cases}
> \mathbf{\dot{y}} = \mathbf{f}(t, \mathbf{y}) \\
> \mathbf{y}(t_0) = \mathbf{y}_0
> \end{cases}
> $$

> [!proposition] Regolarità delle soluzioni
> Se $\mathbf{f} \in C^k(D)$ con $k \in \mathbb{N}$, allora ogni soluzione locale $\mathbf{y}(t)$ del sistema differenziale $\mathbf{\dot{y}} = \mathbf{f}(t, \mathbf{y})$ appartiene a $C^{k+1}(I)$.
> Se $\mathbf{f}$ è analitica su $D$, anche la soluzione $\mathbf{y}(t)$ è analitica.

> [!theorem] Teorema di esistenza e unicità globale
> Consideriamo la striscia $S = (a, b) \times \mathbb{R}^n \subseteq \mathbb{R}^{n+1}$ (con $-\infty \le a < b \le +\infty$), e sia $\mathbf{f}: \overline{S} \to \mathbb{R}^n$ continua e soddisfacente le ipotesi del teorema di Cauchy-Lipschitz locale in $S$.
> Se inoltre vale l'**ipotesi di sublinearità** in $\mathbf{y}$ (crescita al più lineare), ovvero esistono $h, K \ge 0$ tali che:
> $$
> \|\mathbf{f}(t, \mathbf{y})\| \le h + K \|\mathbf{y}\|, \quad \forall (t, \mathbf{y}) \in \overline{S}
> $$
> allora, per ogni $(t_0, \mathbf{y}_0) \in S$, l'unica soluzione $\mathbf{y}(t)$ del problema di Cauchy è **globalmente definita su tutto l'intervallo $(a, b)$** (nessuna esplosione in tempo finito).

> [!note] Criteri sufficienti per la sublinearità
> L'ipotesi di sublinearità in $\mathbf{y}$ uniformemente rispetto a $t$ è garantita se:
> - $\mathbf{f}$ è limitata su $\overline{S}$;
> - $\mathbf{f}(t, \mathbf{0})$ è limitata su $(a, b)$ e $\mathbf{f}$ è lipschitziana globalmente su $\overline{S}$ rispetto a $\mathbf{y}$ uniformemente rispetto a $t$;
> - $\mathbf{f} \in C^1(\overline{S})$ con gradiente/jacobiano rispetto a $\mathbf{y}$ limitato su $\overline{S}$.
>
### Classificazione dei sistemi di ODE: autonomi e lineari

> [!definition] Sistemi autonomi e sistemi lineari
> - Un sistema di ODE si dice **autonomo** se la funzione $\mathbf{f}$ non dipende esplicitamente dalla variabile temporale $t$:
>   $$
>   \mathbf{\dot{y}} = \mathbf{f}(\mathbf{y})
>   $$
> - Un sistema di ODE si dice **lineare** se si presenta nella forma:
>   $$
>   \mathbf{\dot{y}}(t) = A(t) \mathbf{y}(t) + \mathbf{b}(t)
>   $$
>   dove $A(t) \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ è la matrice dei coefficienti e $\mathbf{b}(t) \in \mathbb{R}^n$ è il vettore dei termini noti.
> - I sistemi che sono contemporaneamente **autonomi e lineari** sono a **coefficienti costanti** ($A(t) \equiv A \in \operatorname{Mat}_\mathbb{R}(n, n)$ e $\mathbf{b}(t) \equiv \mathbf{b} \in \mathbb{R}^n$).
>
### Riduzione di equazioni e sistemi di ordine superiore a sistemi lineari del I ordine

> [!note] Riduzione all'ordine 1
> Sistemi lineari e singole equazioni differenziali di **qualunque ordine** si riducono sempre a sistemi lineari del primo ordine.
>
Consideriamo un sistema differenziale lineare di ordine $m$ per una funzione vettoriale $\mathbf{y}: I \to \mathbb{R}^n$:
$$
\mathbf{y}^{(m)}(t) = A_1(t) \mathbf{y}^{(m-1)}(t) + A_2(t) \mathbf{y}^{(m-2)}(t) + \dots + A_m(t) \mathbf{y}(t) + \mathbf{b}(t)
$$
Possiamo definire il macro-vettore $\mathbf{w}(t) \in \mathbb{R}^{mn}$:
$$
\mathbf{w}(t) = \begin{pmatrix} \mathbf{y}(t) \\ \mathbf{y}'(t) \\ \vdots \\ \mathbf{y}^{(m-1)}(t) \end{pmatrix}
$$
dove ogni $\mathbf{y}^{(i)}$ è inteso come vettore colonna in $\mathbb{R}^n$.

Vogliamo rappresentare $\mathbf{w}'(t)$ come prodotto matrice per $\mathbf{w}(t)$:
$$
\mathbf{w}'(t) = \begin{pmatrix} \mathbf{y}'(t) \\ \mathbf{y}''(t) \\ \vdots \\ \mathbf{y}^{(m)}(t) \end{pmatrix}
=
\begin{bmatrix}
0 & I_n & 0 & \dots & 0 \\
0 & 0 & I_n & \dots & 0 \\
\vdots & \vdots & \ddots & \ddots & \vdots \\
0 & 0 & \dots & 0 & I_n \\
A_m & A_{m-1} & \dots & A_2 & A_1
\end{bmatrix}
\begin{pmatrix} \mathbf{y} \\ \mathbf{y}' \\ \vdots \\ \mathbf{y}^{(m-2)} \\ \mathbf{y}^{(m-1)} \end{pmatrix}
+
\begin{pmatrix} \mathbf{0} \\ \mathbf{0} \\ \vdots \\ \mathbf{0} \\ \mathbf{b}(t) \end{pmatrix}
$$
Posta la matrice a blocchi $A^* \in \operatorname{Mat}_{\mathbb{R}}(mn, mn)$ e il vettore forzante esteso $\mathbf{b}^* \in \mathbb{R}^{mn}$:
$$
\mathbf{w}'(t) = A^*(t) \mathbf{w}(t) + \mathbf{b}^*(t)
$$
che è un sistema lineare di primo ordine in dimensione $mn$.

**Caso particolare: Singola ODE scalare di ordine $n$:**
Consideriamo la singola equazione differenziale scalare di ordine $n$:
$$
y^{(n)}(t) = a_{n-1}(t) y^{(n-1)}(t) + \dots + a_1(t) y'(t) + a_0(t) y(t) + b(t)
$$
Definendo il vettore di stato $\mathbf{w} \in \mathbb{R}^n$:
$$
\mathbf{w}(t) = \begin{pmatrix} y \\ y' \\ \vdots \\ y^{(n-1)} \end{pmatrix}
$$
la dinamica vettoriale diventa:
$$
\mathbf{w}'(t) = \begin{pmatrix} y' \\ y'' \\ \vdots \\ y^{(n)} \end{pmatrix}
=
\begin{bmatrix}
0 & 1 & 0 & \dots & 0 \\
0 & 0 & 1 & \dots & 0 \\
\vdots & \vdots & \ddots & \ddots & \vdots \\
0 & 0 & \dots & 0 & 1 \\
a_0(t) & a_1(t) & a_2(t) & \dots & a_{n-1}(t)
\end{bmatrix}
\begin{pmatrix} y \\ y' \\ \vdots \\ y^{(n-2)} \\ y^{(n-1)} \end{pmatrix}
+
\begin{pmatrix} 0 \\ 0 \\ \vdots \\ 0 \\ b(t) \end{pmatrix}
$$
dove la matrice quadrata $n \times n$ prende il nome di **matrice compagna** (o *companion matrix*) $A^*$, e si ottiene il sistema standard:
$$
\mathbf{w}'(t) = A^*(t) \mathbf{w}(t) + \mathbf{b}^*(t)
$$

### Struttura dello spazio delle soluzioni per sistemi lineari del I ordine

> [!theorem] Teorema - Principio di sovrapposizione e struttura delle soluzioni
> Consideriamo il sistema lineare completo di dimensione $n$:
> $$
> \mathbf{\dot{y}} = A(t) \mathbf{y} + \mathbf{b}(t) \tag{a}
> $$
> e il corrispondente sistema lineare omogeneo associato:
> $$
> \mathbf{\dot{z}} = A(t) \mathbf{z} \tag{b}
> $$
> con $A \in C^0(I; \operatorname{Mat}_{\mathbb{R}}(n, n))$ e $\mathbf{b} \in C^0(I; \mathbb{R}^n)$.
> 
> Allora:
> 1. **Struttura affine dell'integrale generale:**
>    Se $\mathbf{y}_0(t)$ è una fissata soluzione particolare del sistema completo (a), allora ogni altra soluzione $\mathbf{y}(t)$ di tale equazione ha la forma:
>    $$
>    \mathbf{y}(t) = \mathbf{y}_0(t) + \mathbf{z}(t)
>    $$
>    dove $\mathbf{z}(t)$ risolve il sistema omogeneo associato (b).
> 
> 2. **Dimensione dello spazio delle soluzioni omogenee:**
>    Lo spazio delle soluzioni del sistema omogeneo (b):
>    $$
>    \mathcal{Z} := \big\{ \mathbf{z} \in C^1(I; \mathbb{R}^n) : \mathbf{\dot{z}}(t) = A(t) \mathbf{z}(t), \; \forall t \in I \big\}
>    $$
>    è uno **spazio vettoriale lineare reale di dimensione $n$**:
>    $$
>    \dim(\mathcal{Z}) = n
>    $$
>    Ovvero, il sistema omogeneo (b) ammette esattamente $n$ soluzioni linearmente indipendenti $\mathbf{z}_1(t), \dots, \mathbf{z}_n(t)$, e la soluzione generale dell'omogenea è data dalla loro combinazione lineare:
>    $$
>    \mathbf{z}(t) = \sum_{i=1}^n c_i \mathbf{z}_i(t), \quad c_i \in \mathbb{R}
>    $$
>
## 6.2. Complementi di algebra lineare ed esponenziale di matrice $e^{At}$

Per fornire una solida struttura analitica e algebrica allo spazio delle soluzioni dei sistemi di equazioni differenziali ordinarie lineari, è necessario richiamare ed estendere alcuni strumenti fondamentali di algebra lineare e analisi matriciale.

Sia $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$ una matrice quadrata a coefficienti complessi (o reali). La matrice $A$ ammette in generale $n$ autovalori complessi $\lambda_1, \dots, \lambda_n \in \mathbb{C}$ (contati con la loro molteplicità algebrica). 

Se la matrice $A$ è reale ($A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$), i suoi autovalori e i relativi autovettori si presentano sotto forma di autovettori reali oppure di coppie di autovettori complessi coniugati:
se $\lambda_1 = \overline{\lambda}_2$, allora il corrispondente autovettore soddisfa $\mathbf{b}_1 = \overline{\mathbf{b}_2}$.

Inoltre, per qualsiasi matrice $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$, il determinante e la traccia sono legati allo spettro degli autovalori dalle relazioni fondamentali:
$$
\det A = \prod_{i=1}^n \lambda_i, \qquad \operatorname{tr} A = \sum_{i=1}^n \lambda_i
$$

### Norma matriciale e convergenza

Nello spazio vettoriale delle matrici quadrate $\mathrm{Mat}_{\mathbb{C}}(n, n)$ è possibile introdurre una norma naturale:

> [!definition] Norma matriciale
> Sia $A = (a_{ij}) \in \mathrm{Mat}_{\mathbb{C}}(n, n)$. Si definisce **norma matriciale** di $A$ la quantità:
> $$
> \|A\| := \sum_{i,j=1}^n |a_{ij}|
> $$
> Tale norma rende $\mathrm{Mat}_{\mathbb{C}}(n, n)$ uno spazio vettoriale normato e completo (spazio di Banach).
>
Dalla definizione di norma discende naturalmente la nozione di convergenza per successioni di matrici:
$$
A_n \xrightarrow{n \to +\infty} A \iff \|A_n - A\| \xrightarrow{n \to +\infty} 0
$$
ovvero la convergenza in norma equivale alla convergenza termine a termine di ciascuna componente della matrice.

> [!definition] Somma di una serie matriciale
> Siano $\{A_n\}_{n \in \mathbb{N}} \subset \mathrm{Mat}_{\mathbb{C}}(n, n)$ una successione di matrici e $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$. Si dice che la serie matriciale converge ad $A$ se la successione delle ridotte parziali converge ad $A$ in norma:
> $$
> \sum_{n=0}^{+\infty} A_n = A \iff \lim_{N \to +\infty} \sum_{n=0}^N A_n = A
> $$

> [!note] Criterio di convergenza assoluta per serie di matrici
> In perfetta analogia con le serie numeriche ordinarie, la convergenza della serie delle norme garantisce la convergenza della serie matriciale:
> $$
> \sum_{n=0}^{+\infty} \|A_n\| < +\infty \implies \sum_{n=0}^{+\infty} A_n \text{ converge in } \mathrm{Mat}_{\mathbb{C}}(n, n)
> $$
>
### La matrice esponenziale

Consideriamo la serie delle potenze di una matrice $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$:
$$
\sum_{n=0}^{+\infty} \frac{A^n}{n!}
$$
Poiché $\|A^n\| \le \|A\|^n$, la serie delle norme è maggiorata dalla serie esponenziale reale:
$$
\sum_{n=0}^{+\infty} \left\| \frac{A^n}{n!} \right\| \le \sum_{n=0}^{+\infty} \frac{\|A\|^n}{n!} = e^{\|A\|} < +\infty
$$
Pertanto la serie converge assolutamente per qualsiasi matrice quadrata $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$.

> [!definition] Matrice esponenziale
> Data una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$, si definisce la **matrice esponenziale** $e^A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$ come la somma della serie:
> $$
> e^A := \sum_{n=0}^{+\infty} \frac{A^n}{n!} = I + A + \frac{A^2}{2!} + \frac{A^3}{3!} + \dots
> $$

> [!note] Formula limite di Eulero per matrici
> In modo del tutto equivalente alla definizione per serie, la matrice esponenziale può essere espressa come limite di potenze:
> $$
> e^A = \lim_{n \to +\infty} \left( I + \frac{A}{n} \right)^n
> $$

> [!lemma] Esponenziale di una matrice diagonalizzabile
> Sia $A \in \mathrm{Mat}_{\mathbb{C}}(n, n)$ una matrice diagonalizzabile, ossia esista una matrice invertibile $S \in \mathrm{Mat}_{\mathbb{C}}(n, n)$ formata dagli autovettori di $A$ tale che:
> $$
> S^{-1} A S = D = \begin{pmatrix} \lambda_1 & 0 & \dots & 0 \\ 0 & \lambda_2 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & \lambda_n \end{pmatrix}
> $$
> Allora l'esponenziale di $A$ è dato esplicitamente da:
> $$
> e^A = S e^D S^{-1} = S \begin{pmatrix} e^{\lambda_1} & 0 & \dots & 0 \\ 0 & e^{\lambda_2} & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & e^{\lambda_n} \end{pmatrix} S^{-1}
> $$

> [!quote]- Dimostrazione
> Poiché $A = S D S^{-1}$, per ogni potenza intera $k \ge 0$ si ha:
> $$
> A^k = (S D S^{-1})^k = S D^k S^{-1}
> $$
> Sostituendo nella definizione in serie di matrice esponenziale:
> $$
> e^A = \sum_{k=0}^{+\infty} \frac{A^k}{k!} = \sum_{k=0}^{+\infty} \frac{S D^k S^{-1}}{k!} = S \left( \sum_{k=0}^{+\infty} \frac{D^k}{k!} \right) S^{-1}
> $$
> Poiché $D$ è diagonale, le sue potenze sono le potenze dei singoli elementi diagonali:
> $$
> D^k = \operatorname{diag}(\lambda_1^k, \lambda_2^k, \dots, \lambda_n^k) \implies \sum_{k=0}^{+\infty} \frac{D^k}{k!} = \operatorname{diag}\left( \sum_{k=0}^{+\infty} \frac{\lambda_1^k}{k!}, \dots, \sum_{k=0}^{+\infty} \frac{\lambda_n^k}{k!} \right) = \operatorname{diag}(e^{\lambda_1}, \dots, e^{\lambda_n})
> $$
> Ne segue immediatamente la formula enunciata. $\blacksquare$
>
## 6.3. Wronskiano e indipendenza lineare per sistemi differenziali

Consideriamo un sistema di equazioni differenziali ordinarie lineari omogeneo del primo ordine di dimensione $n$:
$$
\mathbf{\dot{z}}(t) = A(t) \mathbf{z}(t)
$$
dove $A: I \to \mathrm{Mat}(n, n)$ è una matrice continua su un intervallo $I \subseteq \mathbb{R}$.
Sia dato un insieme di $n$ soluzioni vettoriali:
$$
\mathcal{B} = \big\{ \mathbf{z}_1(t), \mathbf{z}_2(t), \dots, \mathbf{z}_n(t) \big\}
$$
Poiché lo spazio delle soluzioni dell'equazione omogenea, denotato con $\mathcal{Z}$, è uno spazio vettoriale di dimensione $n$, se le soluzioni appartenenti a $\mathcal{B}$ sono linearmente indipendenti, allora $\mathcal{B}$ costituisce una base di $\mathcal{Z}$ (detta **sistema fondamentale di soluzioni**), e si ha:
$$
\mathcal{Z} = \operatorname{Span}\mathcal{B}
$$

> [!definition] Matrice Wronskiana e Wronskiano
> Si definisce **matrice Wronskiana** (o matrice fondamentale) associata all'insieme di soluzioni $\{\mathbf{z}_1(t), \dots, \mathbf{z}_n(t)\}$ la matrice quadrata di dimensione $n \times n$ le cui colonne sono costituite dalle soluzioni stesse:
> $$
> W(t) := \begin{pmatrix} \mathbf{z}_1(t) & \mathbf{z}_2(t) & \dots & \mathbf{z}_n(t) \end{pmatrix}
> $$
> Il determinante della matrice fondamentale:
> $$
> w(t) := \det W(t)
> $$
> è denominato **Wronskiano** del sistema di soluzioni.

> [!proposition] Criterio del Wronskiano per l'indipendenza lineare
> Siano $\mathbf{z}_1(t), \dots, \mathbf{z}_n(t)$ soluzioni del sistema omogeneo $\mathbf{\dot{z}} = A(t)\mathbf{z}$ su un intervallo $I$.
> Allora le soluzioni sono linearmente indipendenti su $I$ se e solo se il Wronskiano non si annulla in alcun punto dell'intervallo:
> $$
> \det W(t) \ne 0, \quad \forall t \in I
> $$

> [!note] Rappresentazione compatta dell'integrale generale
> Se $\det W(t) \ne 0$, l'integrale generale del sistema omogeneo può essere espresso in forma compatta tramite il prodotto matrice-vettore:
> $$
> \mathbf{z}(t) = W(t) \mathbf{c}, \quad \mathbf{c} = \begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix} \in \mathbb{R}^n
> $$
>
## 6.4. Risoluzione di sistemi lineari a coefficienti costanti e autovettori generalizzati

Nel caso in cui la matrice $A(t) \equiv A$ sia costante nel tempo, il sistema differenziale:
$$
\mathbf{\dot{z}}(t) = A \mathbf{z}(t)
$$
assume una forma analitica particolarmente elegante.
In virtù dei teoremi di esistenza, unicità e prolungabilità globale enunciati in precedenza:
- Ogni soluzione $\mathbf{z}(t)$ del sistema è definita su tutto l'asse reale $\mathbb{R}$.
- La soluzione è unica per ogni dato iniziale assegnato ed è una funzione analitica ($C^\infty(\mathbb{R})$).

> [!theorem] Rappresentazione canonica tramite matrice esponenziale
> Per il sistema lineare a coefficienti costanti $\mathbf{\dot{z}} = A\mathbf{z}$ valgono le seguenti proprietà:
> 1. Per ogni vettore arbitrario $\boldsymbol{\xi} \in \mathbb{R}^n$, la funzione:
>    $$
>    \mathbf{z}(t) = e^{tA} \boldsymbol{\xi}
>    $$
>    è soluzione del sistema.
> 2. Le $n$ colonne della matrice esponenziale $e^{tA}$ formano un sistema fondamentale di soluzioni (una base dello spazio delle soluzioni $\mathcal{Z}$).
> 3. L'unica soluzione del problema di Cauchy con dato iniziale $\mathbf{z}(t_0) = \mathbf{z}_0$ è data da:
>    $$
>    \mathbf{z}(t) = e^{(t - t_0)A} \mathbf{z}_0
>    $$

> [!quote]- Dimostrazione
> 1. Derivando termine a termine la serie della matrice esponenziale rispetto a $t$:
>    $$
>    \frac{d}{dt}\left( e^{tA} \right) = \frac{d}{dt} \sum_{k=0}^{+\infty} \frac{t^k A^k}{k!} = \sum_{k=1}^{+\infty} \frac{k t^{k-1} A^k}{k!} = A \sum_{k=1}^{+\infty} \frac{t^{k-1} A^{k-1}}{(k-1)!} = A e^{tA}
>    $$
>    Di conseguenza, per qualunque vettore costante $\boldsymbol{\xi} \in \mathbb{R}^n$:
>    $$
>    \mathbf{\dot{z}}(t) = \frac{d}{dt}\left( e^{tA} \boldsymbol{\xi} \right) = A e^{tA} \boldsymbol{\xi} = A \mathbf{z}(t)
>    $$
>    quindi $\mathbf{z}(t)$ risolve l'equazione differenziale.
> 2. La matrice $W(t) = e^{tA}$ è una matrice le cui colonne sono soluzioni. Valutandola in $t = 0$:
>    $$
>    W(0) = e^{0 \cdot A} = I \implies \det W(0) = \det(I) = 1 \ne 0
>    $$
>    Per il criterio del Wronskiano, $\det W(t) \ne 0$ per ogni $t \in \mathbb{R}$, pertanto le colonne di $e^{tA}$ sono linearmente indipendenti e formano una base di soluzioni.
> 3. La funzione $\mathbf{z}(t) = e^{(t-t_0)A} \mathbf{z}_0$ risolve l'equazione differenziale e per $t = t_0$ soddisfa:
>    $$
>    \mathbf{z}(t_0) = e^0 \mathbf{z}_0 = I \mathbf{z}_0 = \mathbf{z}_0
>    $$
>    Per il teorema di esistenza e unicità di Picard-Lindelöf, essa è l'unica soluzione del problema di Cauchy. $\blacksquare$
>
### Calcolo esplicito dell'integrale generale

Distinguiamo i due casi fondamentali relativi alla struttura spettrale di $A$:

**Caso 1: La matrice $A$ è diagonalizzabile**

Se $A$ ammette una base di autovettori $S = \begin{pmatrix} \mathbf{b}_1 & \mathbf{b}_2 & \dots & \mathbf{b}_n \end{pmatrix}$ corrispondenti agli autovalori $\lambda_1, \dots, \lambda_n$:
$$
e^{tA} = S \underbrace{\begin{pmatrix} e^{\lambda_1 t} & 0 & \dots & 0 \\ 0 & e^{\lambda_2 t} & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & e^{\lambda_n t} \end{pmatrix}}_{:= e^{t\widetilde{A}}} S^{-1}
$$
La generica soluzione è:
$$
\mathbf{z}(t) = S e^{t\widetilde{A}} S^{-1} \boldsymbol{\xi}
$$
Poiché il vettore $\boldsymbol{\xi} \in \mathbb{R}^n$ è arbitrario, possiamo porre $S^{-1}\boldsymbol{\xi} = \mathbf{e}_i$ (i vettori della base canonica). Le $n$ soluzioni fondamentali si ottengono moltiplicando la matrice degli autovettori per le colonne della matrice diagonale:
$$
\mathbf{z}_i(t) = \begin{pmatrix} \mathbf{b}_1 & \dots & \mathbf{b}_n \end{pmatrix} \begin{pmatrix} 0 \\ \vdots \\ e^{\lambda_i t} \\ \vdots \\ 0 \end{pmatrix} = \mathbf{b}_i e^{\lambda_i t}
$$
L'insieme $\{\mathbf{z}_i(t)\}_{i=1,\dots,n}$ costituisce un sistema fondamentale di soluzioni, in quanto il Wronskiano vale:
$$
|W(t)| = \det\big( S e^{t\widetilde{A}} \big) = \det(S) \cdot \det\big( e^{t\widetilde{A}} \big) = \det(S) e^{t \sum_{i=1}^n \lambda_i} \ne 0
$$
poiché $\operatorname{rk}(S) = n \implies \det(S) \ne 0$.

L'**integrale generale** è dato da tutte le combinazioni lineari:
$$
\mathbf{z}(t) = c_1 \mathbf{b}_1 e^{\lambda_1 t} + c_2 \mathbf{b}_2 e^{\lambda_2 t} + \dots + c_n \mathbf{b}_n e^{\lambda_n t}, \quad c_1, \dots, c_n \in \mathbb{C}
$$

**Caso 2: La matrice $A$ non è diagonalizzabile (Autovettori generalizzati)**

Se la matrice non è diagonalizzabile, ossia per qualche autovalore la molteplicità geometrica è strettamente inferiore alla molteplicità algebrica ($m_g(\lambda) < m_a(\lambda)$), non esiste una base di autovettori ordinari.
Si ricorre quindi alla **forma canonica di Jordan** e alla nozione di **autovettori generalizzati**.

Sia $\{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base di Jordan per la matrice $A$ sul campo complesso $\mathbb{C}$. Ciascun vettore genera una soluzione del sistema della forma:
$$
\mathbf{z}_i(t) = e^{tA} \mathbf{b}_i
$$
e il calcolo del Wronskiano conferma che tali soluzioni sono linearmente indipendenti.

Sfruttando la proprietà dell'esponenziale di matrice per decomporre $A = \lambda_0 I + (A - \lambda_0 I)$:
$$
e^{tA} = e^{\lambda_0 t I + t(A - \lambda_0 I)} = e^{\lambda_0 t} e^{t(A - \lambda_0 I)} = e^{\lambda_0 t} \sum_{k=0}^{+\infty} \frac{t^k}{k!} (A - \lambda_0 I)^k
$$
Se i vettori $\mathbf{b}_i, \mathbf{b}_{i+1}, \dots, \mathbf{b}_{i+m}$ appartengono alla medesima **catena di Jordan** associata all'autovalore $\lambda_0$, definita dalle relazioni ricorsive:
$$
(A - \lambda_0 I)\mathbf{b}_i = \mathbf{0}, \qquad (A - \lambda_0 I)\mathbf{b}_{i+1} = \mathbf{b}_i, \quad \dots \quad (A - \lambda_0 I)\mathbf{b}_{i+m} = \mathbf{b}_{i+m-1}
$$
l'azione dell'esponenziale di matrice tronca la serie a un numero finito di termini:
$$
\begin{aligned}
e^{tA} \mathbf{b}_i &= e^{\lambda_0 t} \mathbf{b}_i \\
e^{tA} \mathbf{b}_{i+1} &= (\mathbf{b}_{i+1} + t \mathbf{b}_i) e^{\lambda_0 t} \\
&\;\;\vdots \\
e^{tA} \mathbf{b}_{i+m} &= \left( \mathbf{b}_{i+m} + t \mathbf{b}_{i+m-1} + \frac{t^2}{2!} \mathbf{b}_{i+m-2} + \dots + \frac{t^m}{m!} \mathbf{b}_i \right) e^{\lambda_0 t}
\end{aligned}
$$

> [!note] Regola pratica per la molteplicità algebrica
> Per ottenere soluzioni linearmente indipendenti associate a un autovalore con molteplicità algebrica maggiore della molteplicità geometrica ($m_a > m_g$), è sufficiente moltiplicare le combinazioni lineari per **potenze crescenti del tempo** $t$: $e^{\lambda t}, t e^{\lambda t}, t^2 e^{\lambda t}, \dots, t^{m-1} e^{\lambda t}$.

> [!example] Esempio (Risoluzione tramite autovettori impropri)
> Si consideri il sistema differenziale $\mathbf{\dot{z}} = A\mathbf{z}$ con matrice:
> $$
> A = \begin{pmatrix} 1 & 1 & 0 \\ 0 & 0 & 1 \\ -1 & -1 & 3 \end{pmatrix}
> $$
> Calcoliamo il polinomio caratteristico:
> $$
> \chi(\lambda) = \det(A - \lambda I) = \det \begin{pmatrix} 1-\lambda & 1 & 0 \\ 0 & -\lambda & 1 \\ -1 & -1 & 3-\lambda \end{pmatrix} = -\lambda^3 + 4\lambda^2 - 4\lambda = -\lambda(\lambda - 2)^2 = 0
> $$
> Gli autovalori sono:
> - $\lambda_1 = 0$ con molteplicità algebrica $m_a(0) = 1$.
> - $\lambda_2 = 2$ con molteplicità algebrica $m_a(2) = 2$.
>
> Verifichiamo la molteplicità geometrica di $\lambda_2 = 2$:
> $$
> A - 2I = \begin{pmatrix} -1 & 1 & 0 \\ 0 & -2 & 1 \\ -1 & -1 & 1 \end{pmatrix}
> $$
> Le prime due righe sono linearmente indipendenti e la terza è la somma delle prime due:
> $$
> \operatorname{rk}(A - 2I) = 2 \implies \dim\ker(A - 2I) = 3 - 2 = 1 \implies m_g(2) = 1 < m_a(2) = 2
> $$
> La matrice non è diagonalizzabile. L'integrale generale ha dunque la forma:
> $$
> \mathbf{z}(t) = \mathbf{c}_1 + \mathbf{c}_2 e^{2t} + \mathbf{c}_3 t e^{2t}
> $$
> per opportuni vettori costanti $\mathbf{c}_1, \mathbf{c}_2, \mathbf{c}_3 \in \mathbb{R}^3$.
> Per determinarli, sostituiamo $\mathbf{z}(t)$ direttamente nell'equazione differenziale $\mathbf{\dot{z}} = A\mathbf{z}$:
> $$
> \mathbf{\dot{z}}(t) = 2\mathbf{c}_2 e^{2t} + \mathbf{c}_3 e^{2t} + 2\mathbf{c}_3 t e^{2t} = (2\mathbf{c}_2 + \mathbf{c}_3) e^{2t} + 2\mathbf{c}_3 t e^{2t}
> A\mathbf{z}(t) = A\mathbf{c}_1 + A\mathbf{c}_2 e^{2t} + A\mathbf{c}_3 t e^{2t}
> $$
> Uguagliando i coefficienti dei termini linearmente indipendenti $1, e^{2t}, t e^{2t}$:
> $$
> \begin{cases}
> A\mathbf{c}_1 = \mathbf{0} & \longrightarrow \text{autovettore ordinario relativo a } \lambda_1 = 0 \\
> A\mathbf{c}_2 = 2\mathbf{c}_2 + \mathbf{c}_3 \iff (A - 2I)\mathbf{c}_2 = \mathbf{c}_3 & \longrightarrow \text{autovettore improprio (generalizzato)} \\
> A\mathbf{c}_3 = 2\mathbf{c}_3 \iff (A - 2I)\mathbf{c}_3 = \mathbf{0} & \longrightarrow \text{autovettore ordinario relativo a } \lambda_2 = 2
> \end{cases}
> $$
>

## 6.5. Ritratti di fase, orbite e integrali primi nei sistemi autonomi

Si consideri un sistema di equazioni differenziali ordinarie **autonomo**:
$$
\mathbf{\dot{y}}(t) = \mathbf{f}(\mathbf{y}(t))
$$
in cui il campo vettoriale $\mathbf{f}: D \subseteq \mathbb{R}^n \to \mathbb{R}^n$ soddisfa le ipotesi del Teorema di Cauchy in un aperto $D$.

> [!definition] Orbita (traiettoria di fase)
> Si definisce **orbita** (o traiettoria nello spazio delle fasi) associata a una soluzione $\mathbf{y}(t)$ del sistema l'insieme immagine:
> $$
> \operatorname{Im}\mathbf{y} = \big\{ \mathbf{y}(t) \in \mathbb{R}^n : t \in I \big\} \subset D
> $$

> [!note] Invarianza temporale e principio di non intersezione
> Poiché il sistema è autonomo (la funzione $\mathbf{f}$ non dipende esplicitamente dal tempo $t$), se $\mathbf{y}(t)$ è soluzione, allora ogni sua traslata temporale $\overline{\mathbf{y}}(t) = \mathbf{y}(t + c)$ è ancora soluzione:
> $$
> \dot{\overline{\mathbf{y}}}(t) = \mathbf{\dot{y}}(t + c) = \mathbf{f}(\mathbf{y}(t + c)) = \mathbf{f}(\overline{\mathbf{y}}(t))
> $$
> Di conseguenza, le orbite rappresentano intere famiglie di soluzioni che differiscono unicamente per un'origine dei tempi.
> Inoltre, per il **teorema di esistenza e unicità di Cauchy**, nello spazio delle fasi **due orbite distinte non possono mai intersecarsi**: se due traiettorie condividessero anche un solo punto allo stesso o a diversi istanti temporali, coinciderebbero identicamente a meno di una traslazione temporale.

> [!definition] Punto di equilibrio (o punto critico)
> Un punto $\mathbf{y}_0 \in D$ si dice **punto di equilibrio** (o punto critico, o punto stazionario) se:
> $$
> \mathbf{f}(\mathbf{y}_0) = \mathbf{0}
> $$
> Se $\mathbf{y}(0) = \mathbf{y}_0$, la soluzione massimale del sistema è costante: $\mathbf{y}(t) \equiv \mathbf{y}_0$ per ogni $t \in \mathbb{R}$. L'orbita corrispondente è degenere ed è formata dal solo punto $\{\mathbf{y}_0\}$.

> [!definition] Soluzione periodica
> Una soluzione non costante $\mathbf{y}(t)$ si dice **periodica** di periodo $T > 0$ se:
> $$
> \mathbf{y}(t + T) = \mathbf{y}(t), \quad \forall t \in \mathbb{R}
> $$
> e $T$ è il minimo periodo positivo, ovvero:
> $$
> \nexists s \in (0, T) : \mathbf{y}(t + s) = \mathbf{y}(t), \quad \forall t \in \mathbb{R}
> $$
> L'orbita corrispondente nello spazio delle fasi è una curva chiusa semplice (ciclo).
>
### Integrali primi e costanti del moto

Un concetto cardine nello studio geometrico e qualitativo dei sistemi dinamici è quello di **integrale primo** (o costante del moto).

> [!definition] Derivata lungo le traiettorie e integrale primo
> Sia $E: D \subseteq \mathbb{R}^n \to \mathbb{R}$ una funzione scalare di classe $C^1(D)$.
> Si definisce **derivata di $E$ lungo le traiettorie del sistema** (o derivata di Lie) la funzione scalare:
> $$
> \dot{E}(\mathbf{y}) := \frac{d}{dt} E(\mathbf{y}(t)) = \nabla E(\mathbf{y}) \cdot \mathbf{\dot{y}} = \nabla E(\mathbf{y}) \cdot \mathbf{f}(\mathbf{y}), \quad \forall \mathbf{y} \in D
> $$
> La funzione $E$ si dice **integrale primo del moto** (o costante del moto) se:
> $$
> \dot{E}(\mathbf{y}) = 0, \quad \forall \mathbf{y} \in D
> $$

> [!proposition] Conservazione dell'integrale primo lungo le soluzioni
> Una funzione scalare $E \in C^1(D)$ è un integrale primo per il sistema $\mathbf{\dot{y}} = \mathbf{f}(\mathbf{y})$ se e solo se per ogni soluzione $\mathbf{y}(t)$ il valore di $E$ rimane rigorosamente costante al variare del tempo:
> $$
> E(\mathbf{y}(t)) = E(\mathbf{y}(0)) = \text{costante}, \quad \forall t \in I
> $$
> Geometricamente, le orbite del sistema sono interamente vincolate a giacere sulle superfici di livello dell'integrale primo:
> $$
> \operatorname{Im}\mathbf{y} \subseteq \big\{ \mathbf{x} \in D : E(\mathbf{x}) = c \big\}
> $$

> [!example] Esempio (Equazioni canoniche di Hamilton e conservazione dell'Hamiltoniana)
> Consideriamo le equazioni della meccanica hamiltoniana per un sistema a $n$ gradi di libertà:
> $$
> \begin{cases}
> \dot{p}_i = -\dfrac{\partial H}{\partial q_i} \\
> \dot{q}_i = \dfrac{\partial H}{\partial p_i}
> \end{cases}
> \qquad i = 1, \dots, n
> $$
> dove $\mathbf{q} = (q_1, \dots, q_n)$ sono le coordinate lagrangiane, $\mathbf{p} = (p_1, \dots, p_n)$ i momenti coniugati, e l'Hamiltoniana $H(\mathbf{q}, \mathbf{p}) \in C^2(\mathbb{R}^{2n})$ rappresenta l'energia totale del sistema.
> Il sistema è autonomo e consta di $2n$ equazioni differenziali del primo ordine:
> $$
> \mathbf{\dot{y}} = \mathbf{f}(\mathbf{y}), \quad \text{con } \mathbf{y} = \begin{pmatrix} \mathbf{q} \\ \mathbf{p} \end{pmatrix}
> $$
> Verifichiamo che la funzione energia $H$ è un integrale primo del moto:
> $$
> \dot{H} = \nabla H \cdot \mathbf{f}(\mathbf{q}, \mathbf{p}) = \begin{bmatrix} \dfrac{\partial H}{\partial q_1} \\ \vdots \\ \dfrac{\partial H}{\partial q_n} \\ \dfrac{\partial H}{\partial p_1} \\ \vdots \\ \dfrac{\partial H}{\partial p_n} \end{bmatrix} \cdot \overbrace{\begin{bmatrix} \dot{q}_1 \\ \vdots \\ \dot{q}_n \\ \dot{p}_1 \\ \vdots \\ \dot{p}_n \end{bmatrix}}^{\mathbf{f}} = \begin{bmatrix} \dfrac{\partial H}{\partial q_1} \\ \vdots \\ \dfrac{\partial H}{\partial q_n} \\ \dfrac{\partial H}{\partial p_1} \\ \vdots \\ \dfrac{\partial H}{\partial p_n} \end{bmatrix} \cdot \begin{bmatrix} \dfrac{\partial H}{\partial p_1} \\ \vdots \\ \dfrac{\partial H}{\partial p_n} \\ -\dfrac{\partial H}{\partial q_1} \\ \vdots \\ -\dfrac{\partial H}{\partial q_n} \end{bmatrix}
> $$
> Svolgendo il prodotto scalare:
> $$
> \dot{H} = \sum_{i=1}^n \left( \frac{\partial H}{\partial q_i} \frac{\partial H}{\partial p_i} - \frac{\partial H}{\partial p_i} \frac{\partial H}{\partial q_i} \right) \equiv 0
> $$
> Dunque l'Hamiltoniana $H$ è un integrale primo del sistema: le traiettorie di fase sono vincolate sulle ipersuperfici di energia costante $H(\mathbf{q}, \mathbf{p}) = E_0$.

> [!note] Autonomizzazione dei sistemi non autonomi
> Qualsiasi sistema non autonomo di $n$ equazioni:
> $$
> \mathbf{\dot{y}} = \mathbf{f}(t, \mathbf{y})
> $$
> può essere formalmente ricondotto a un sistema autonomo di $n+1$ equazioni introducendo il tempo come nuova variabile di stato $y_{n+1} := t$ e aggiungendo l'equazione differenziale banale:
> $$
> \dot{y}_{n+1} = 1
> $$
>
## 6.6. Teoria della stabilità secondo Lyapunov

Sia dato il sistema autonomo $\mathbf{\dot{y}} = \mathbf{f}(\mathbf{y})$, con $\mathbf{f}: D \subseteq \mathbb{R}^n \to \mathbb{R}^n$, e sia $\boldsymbol{\varphi}(t)$ una soluzione di riferimento del sistema definita per tutti i tempi futuri $t \in [0, +\infty)$, avente dato iniziale $\boldsymbol{\varphi}(0) = \boldsymbol{\xi} \in D$.

> [!definition] Classificazione della stabilità (Lyapunov)
> La soluzione $\boldsymbol{\varphi}(t)$ si definisce:
> 1. **Stabile (secondo Lyapunov)** se:
>    $$
>    \forall \varepsilon > 0, \; \exists \delta > 0 : \; \forall \boldsymbol{\eta} \in D \text{ con } \|\boldsymbol{\eta} - \boldsymbol{\xi}\| < \delta,
>    $$
>    la soluzione $\boldsymbol{\psi}(t)$ con condizione iniziale $\boldsymbol{\psi}(0) = \boldsymbol{\eta}$ è definita per ogni $t \in [0, +\infty)$ e soddisfa:
>    $$
>    \|\boldsymbol{\psi}(t) - \boldsymbol{\varphi}(t)\| < \varepsilon, \quad \forall t \in [0, +\infty)
>    $$
>    *(ovvero perturbazioni iniziali arbitrariamente piccole mantengono la traiettoria confinata in un tubo di raggio $\varepsilon$ attorno alla soluzione di riferimento per tutti i tempi futuri).*
> 2. **Asintoticamente stabile** se è stabile secondo Lyapunov e in aggiunta le perturbazioni decadono a zero nel tempo:
>    $$
>    \lim_{t \to +\infty} \|\boldsymbol{\psi}(t) - \boldsymbol{\varphi}(t)\| = 0
>    $$
> 3. **Instabile** se non è stabile secondo Lyapunov, ossia se:
>    $$
>    \exists \varepsilon_0 > 0 : \; \forall \delta > 0, \; \exists \boldsymbol{\eta} \in B_\delta(\boldsymbol{\xi}), \; \exists \bar{t} > 0 : \; \|\boldsymbol{\psi}(\bar{t}) - \boldsymbol{\varphi}(\bar{t})\| \ge \varepsilon_0
>    $$
>
## 6.7. Criteri di stabilità per sistemi lineari a coefficienti costanti

Consideriamo un sistema lineare omogeneo autonomo:
$$
\mathbf{\dot{y}}(t) = A \mathbf{y}(t)
$$
con $A \in \mathrm{Mat}(n, n)$. L'origine $\mathbf{y} = \mathbf{0}$ è sempre un punto di equilibrio stazionario per il sistema.
Lo studio della stabilità dell'equilibrio $\mathbf{0}$ è completamente risolto dallo spettro degli autovalori della matrice $A$:

> [!theorem] Teorema spettrale di stabilità per sistemi lineari
> Siano $\lambda_1, \dots, \lambda_k$ gli autovalori distinti della matrice $A$. L'origine $\mathbf{0}$ è un punto di equilibrio:
> - **Asintoticamente stabile** se e solo se tutti gli autovalori hanno parte reale strettamente negativa:
>   $$
>   \operatorname{Re}(\lambda_i) < 0, \quad \forall i = 1, \dots, k
>   $$
> - **Stabile (semplicemente stabile secondo Lyapunov)** se e solo se tutti gli autovalori hanno parte reale minore o uguale a zero, e per ciascun autovalore a parte reale nulla la molteplicità algebrica coincide con la molteplicità geometrica:
>   $$
>   \operatorname{Re}(\lambda_i) \le 0, \quad \forall i = 1, \dots, k \quad \land \quad \Big( \operatorname{Re}(\lambda_i) = 0 \implies m_a(\lambda_i) = m_g(\lambda_i) \Big)
>   $$
> - **Instabile** in tutti gli altri casi, ovvero se:
>   - esiste almeno un autovalore con $\operatorname{Re}(\lambda_i) > 0$;
>   - oppure esiste un autovalore con $\operatorname{Re}(\lambda_i) = 0$ avente molteplicità algebrica strettamente maggiore della molteplicità geometrica ($m_a(\lambda_i) > m_g(\lambda_i)$), che genera termini secolari polinomiali divergenti del tipo $t^m$.
>
### Classificazione topologica delle orbite nel piano ($n = 2$)

Nel caso piano bidimensionale ($n = 2$), la configurazione geometrica dello spazio delle fasi $(y_1, y_2)$ si classifica in base agli autovalori $\lambda_1, \lambda_2$:

**Caso con autovalori reali distinti ($\lambda_1, \lambda_2 \in \mathbb{R}, \lambda_1 \ne \lambda_2$):**

1. **Entrambi negativi ($\lambda_1 < 0, \lambda_2 < 0$): Nodo stabile (pozzo)**
   L'origine è asintoticamente stabile. Tutte le traiettorie convergono verso l'origine per $t \to +\infty$.
   *(Rappresentazione dello spazio delle fasi: fascio di traiettorie con frecce dirette verso l'origine, tangenti alla direzione dell'autovettore associato all'autovalore meno negativo).*

2. **Segni discordi ($\lambda_1 < 0 < \lambda_2$): Punto di sella**
   L'origine è intrinsecamente **instabile**.
   Esiste una retta invariante stabile (lungo l'autovettore associato a $\lambda_1 < 0$) lungo cui le soluzioni collassano nell'origine, e una retta invariante instabile (lungo l'autovettore associato a $\lambda_2 > 0$) lungo cui le soluzioni divergono all'infinito. Tutte le altre traiettorie sono curve iperboliche che transitano in prossimità dell'origine per poi essere deflesse all'infinito.

3. **Entrambi positivi ($\lambda_1 > 0, \lambda_2 > 0$): Nodo instabile (sorgente)**
   L'origine è instabile e le traiettorie divergono allontanandosi dall'origine per $t \to +\infty$.

> [!example] Esempio (Riconduzione dell'oscillatore armonico smorzato a sistema)
> Consideriamo l'equazione differenziale ordinaria del secondo ordine:
> $$
> y'' = -\omega^2 y - 2\delta y' \iff y'' + 2\delta y' + \omega^2 y = 0
> $$
> con $\omega > 0$ pulsazione naturale e $\delta \ge 0$ parametro di smorzamento.
> Definendo il vettore di stato nello spazio delle fasi:
> $$
> \mathbf{w} = \begin{pmatrix} y \\ y' \end{pmatrix}
> $$
> il sistema equivalente del primo ordine si scrive:
> $$
> \mathbf{w}' = \begin{pmatrix} y' \\ y'' \end{pmatrix} = \begin{pmatrix} 0 & 1 \\ -\omega^2 & -2\delta \end{pmatrix} \begin{pmatrix} y \\ y' \end{pmatrix} = A \mathbf{w}
> $$
> Il punto $\mathbf{w} = \mathbf{0}$ è l'unico punto di equilibrio per il sistema:
> $$
> \mathbf{w} = \mathbf{0} \iff \begin{cases} y = 0 \\ y' = 0 \end{cases}
> $$
> Il polinomio caratteristico della matrice $A$ è:
> $$
> \det(A - \lambda I) = \det \begin{pmatrix} -\lambda & 1 \\ -\omega^2 & -2\delta - \lambda \end{pmatrix} = \lambda^2 + 2\delta \lambda + \omega^2 = 0
> $$
> Le cui radici sono:
> $$
> \lambda_{1,2} = -\delta \pm \sqrt{\delta^2 - \omega^2}
> $$
> - Se $\delta > \omega$ (smorzamento forte): autovalori reali negativi distinti $\implies$ **nodo stabile**.
> - Se $\delta = \omega$ (smorzamento critico): autovalore reale negativo doppio $\implies$ **nodo improprio stabile**.
> - Se $0 < \delta < \omega$ (smorzamento debole): autovalori complessi coniugati con parte reale negativa $-\delta < 0 \implies$ **fuoco stabile** (spirale convergente).
> - Se $\delta = 0$ (oscillatore non smorzato): autovalori immaginari puri $\pm i\omega \implies$ **centro** (semplicemente stabile secondo Lyapunov, con orbite ellittiche chiuse).
>
