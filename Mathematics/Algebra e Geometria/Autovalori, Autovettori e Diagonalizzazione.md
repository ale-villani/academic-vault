---
title: "Autovalori, Autovettori e Diagonalizzazione"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 5)"
tags:
  - math/linear-algebra/eigenvalues
  - math/linear-algebra/jordan
---

# 5. Autovalori, Autovettori e Diagonalizzazione

## 5.1. Autovalori e Autovettori

### Definizione di Endomorfismo

> [!definition] Endomorfismo
> Un'applicazione lineare $L: V \to V$ avente come dominio e codominio il medesimo spazio vettoriale $V$ si definisce **endomorfismo** (o operatore lineare su $V$).

> [!example] Endomorfismo Indotto da Matrice Quadrata
> Se $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, l'applicazione lineare indotta:
> $$
> T_A: \mathbb{R}^n \to \mathbb{R}^n, \qquad T_A(\mathbf{x}) = A\mathbf{x}
> $$
> è un endomorfismo dello spazio euclideo $\mathbb{R}^n$.
>
### Definizione di Autovalore e Autovettore

> [!definition] Autovalore e Autovettore
> Sia $L: V \to V$ un endomorfismo su uno spazio vettoriale $V$. Se esistono uno scalare $\lambda \in \mathbb{R}$ e un vettore **non nullo** $\mathbf{v} \in V$, $\mathbf{v} \neq \mathbf{0}$, tali che:
> $$
> L(\mathbf{v}) = \lambda \mathbf{v}
> $$
> allora:
> - $\lambda$ è detto **autovalore** dell'endomorfismo $L$;
> - $\mathbf{v}$ è detto **autovettore** di $L$ associato all'autovalore $\lambda$.

> [!note] Autovalori e Autovettori per Matrici Quadrate
> Nel caso particolare in cui l'endomorfismo sia associato a una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ tramite $L = T_A$, l'equazione agli autovalori assume la forma:
> $$
> A \mathbf{v} = \lambda \mathbf{v}, \qquad \mathbf{v} \neq \mathbf{0}
> $$
> In tal caso $\lambda$ e $\mathbf{v}$ si dicono rispettivamente **autovalore** e **autovettore** della matrice $A$.

> [!note] Esclusione del Vettore Nullo
> La condizione $\mathbf{v} \neq \mathbf{0}$ è fondamentale e richiesta tassativamente per definizione.
> Infatti, per ogni applicazione lineare $L$ vale identicamente:
> $$
> L(\mathbf{0}) = \mathbf{0} = \lambda \mathbf{0}, \quad \forall \lambda \in \mathbb{R}
> $$
> Se il vettore nullo fosse ammesso come autovettore, qualsiasi scalare $\lambda \in \mathbb{R}$ sarebbe banalmente autovalore di qualunque endomorfismo, privando la definizione di ogni interesse e capacità classificatoria.

> [!example] Verifica di Autovalori e Autovettori
> Sia data la matrice simmetrica $2 \times 2$:
> $$
> A = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
> $$
> L'equazione agli autovalori è:
> $$
> L(\mathbf{v}) = \lambda \mathbf{v} \iff T_A(\mathbf{v}) = \lambda \mathbf{v} \iff A \mathbf{v} = \lambda \mathbf{v}
> $$
> 1. Verifichiamo il vettore $\mathbf{v}_1 = \begin{pmatrix} 1 \\ 2 \end{pmatrix} \neq \mathbf{0}$:
>    $$
>    A \mathbf{v}_1 = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 1 \\ 2 \end{pmatrix} = \begin{pmatrix} 1(1) + 2(2) \\ 2(1) + 4(2) \end{pmatrix} = \begin{pmatrix} 5 \\ 10 \end{pmatrix} = 5 \begin{pmatrix} 1 \\ 2 \end{pmatrix} = 5 \mathbf{v}_1
>    $$
>    Pertanto $\lambda_1 = 5$ è autovalore di $A$ e $\begin{pmatrix} 1 \\ 2 \end{pmatrix}$ è un autovettore associato all'autovalore 5.
> 2. Verifichiamo il vettore $\mathbf{v}_2 = \begin{pmatrix} 2 \\ -1 \end{pmatrix} \neq \mathbf{0}$:
>    $$
>    A \mathbf{v}_2 = \begin{pmatrix} 1 & 2 \\ 2 & 4 \end{pmatrix} \begin{pmatrix} 2 \\ -1 \end{pmatrix} = \begin{pmatrix} 1(2) + 2(-1) \\ 2(2) + 4(-1) \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} = 0 \begin{pmatrix} 2 \\ -1 \end{pmatrix} = 0 \mathbf{v}_2
>    $$
>    Pertanto $\lambda_2 = 0$ è autovalore di $A$ e $\begin{pmatrix} 2 \\ -1 \end{pmatrix}$ è un autovettore associato all'autovalore 0.
>
## 5.2. Il Polinomio Caratteristico

### Definizione e Proprietà Fondamentali

Come si determinano sistematicamente tutti gli autovalori e autovettori di una matrice in generale?

> [!definition] Polinomio Caratteristico
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ una matrice quadrata. Si definisce **polinomio caratteristico** di $A$ il polinomio $\chi_A(t)$ nella variabile formale $t$ dato dal determinante:
> $$
> \chi_A(t) := \det(A - t I_n)
> $$

> [!example] Calcolo del Polinomio Caratteristico per una Matrice $2 \times 2$
> Sia la matrice:
> $$
> A = \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
> $$
> Il suo polinomio caratteristico è:
> $$
> \chi_A(t) = \det \left[ \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix} - t \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} \right] = \det \begin{pmatrix} 1 - t & 2 \\ 3 & -t \end{pmatrix}
> $$
> Calcolando il determinante:
> $$
> \chi_A(t) = (1 - t)(-t) - (2)(3) = -t + t^2 - 6 = t^2 - t - 6
> $$

> [!note] Grado del Polinomio Caratteristico
> Per ogni matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, il polinomio caratteristico $\chi_A(t)$ è un polinomio di grado esattamente $n$:
> $$
> \deg(\chi_A(t)) = n
> $$
>
### Caratterizzazione degli Autovalori

> [!proposition] Radici del Polinomio Caratteristico come Autovalori
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ e sia $\chi_A(t)$ il suo polinomio caratteristico. Uno scalare $\lambda \in \mathbb{R}$ è autovalore di $A$ se e solo se è radice del polinomio caratteristico:
> $$
> \lambda \text{ è autovalore di } A \iff \chi_A(\lambda) = 0
> $$

> [!quote]- Dimostrazione
> Per definizione, $\lambda \in \mathbb{R}$ è un autovalore di $A$ se e solo se esiste un vettore $\mathbf{v} \in \mathbb{R}^n$ con $\mathbf{v} \neq \mathbf{0}$ tale che:
> $$
> T_A(\mathbf{v}) = \lambda \mathbf{v} \iff A \mathbf{v} = \lambda \mathbf{v}
> $$
> Portando tutti i termini a primo membro:
> $$
> A \mathbf{v} - \lambda \mathbf{v} = \mathbf{0} \iff A \mathbf{v} - \lambda I_n \mathbf{v} = \mathbf{0} \iff (A - \lambda I_n) \mathbf{v} = \mathbf{0}
> $$
> Ciò equivale a dire che il vettore $\mathbf{v}$ appartiene al nucleo della matrice $A - \lambda I_n$:
> $$
> \mathbf{v} \in \mathrm{Ker}(A - \lambda I_n)
> $$
> L'esistenza di un autovettore non nullo $\mathbf{v} \neq \mathbf{0}$ è dunque equivalente alla non banalità del nucleo:
> $$
> \exists \mathbf{v} \in \mathrm{Ker}(A - \lambda I_n) \text{ con } \mathbf{v} \neq \mathbf{0} \iff \mathrm{Ker}(A - \lambda I_n) \neq \{\mathbf{0}\}
> $$
> La non banalità del nucleo corrisponde ad avere dimensione strettamente positiva:
> $$
> \dim \mathrm{Ker}(A - \lambda I_n) > 0
> $$
> Per il Teorema della Dimensione (nullità + rango):
> $$
> \dim \mathrm{Ker}(A - \lambda I_n) + \mathrm{rk}(A - \lambda I_n) = n \implies \mathrm{rk}(A - \lambda I_n) < n
> $$
> Per il criterio del rango massimo sui determinanti, una matrice quadrata ha rango strettamente inferiore ad $n$ se e solo se il suo determinante è nullo:
> $$
> \mathrm{rk}(A - \lambda I_n) < n \iff \det(A - \lambda I_n) = 0 \iff \chi_A(\lambda) = 0 \qquad \blacksquare
> $$

> [!example] Ricerca degli Autovalori tramite Radici
> Riprendendo la matrice $A = \begin{pmatrix} 1 & 2 \\ 3 & 0 \end{pmatrix}$ con polinomio caratteristico $\chi_A(t) = t^2 - t - 6$:
> Si cercano le radici dell'equazione caratteristica:
> $$
> \chi_A(t) = t^2 - t - 6 = 0
> $$
> Fattorizzando il trinomio:
> $$
> (t - 3)(t + 2) = 0 \implies \lambda_1 = 3, \qquad \lambda_2 = -2
> $$
> Gli autovalori della matrice $A$ sono dunque $\lambda_1 = 3$ e $\lambda_2 = -2$.
>
### Autospazi di un Endomorfismo

> [!note] Formulazione per Endomorfismi Astratti
> Sia $L: V \to V$ un generico endomorfismo su uno spazio vettoriale $V$. Un vettore $\mathbf{v} \in V$ con $\mathbf{v} \neq \mathbf{0}$ è un autovettore di $L$ associato all'autovalore $\lambda$ se e solo se:
> $$
> \begin{align}
> L(\mathbf{v}) = \lambda \mathbf{v} &\iff L(\mathbf{v}) - \lambda \mathbf{v} = \mathbf{0} \\
> &\iff L(\mathbf{v}) - \lambda \mathrm{id}_V(\mathbf{v}) = \mathbf{0} \\
> &\iff (L - \lambda \mathrm{id}_V)(\mathbf{v}) = \mathbf{0} \\
> &\iff \mathbf{v} \in \mathrm{Ker}(L - \lambda \mathrm{id}_V)
> \end{align}
> $$

> [!definition] Autospazio
> Sia $\lambda \in \mathbb{R}$ un autovalore di un endomorfismo $L: V \to V$. Si definisce **autospazio** di $L$ associato a $\lambda$, e si denota con $V_\lambda$ (oppure $E(\lambda)$), il nucleo dell'applicazione lineare $L - \lambda \mathrm{id}_V$:
> $$
> V_\lambda := \mathrm{Ker}(L - \lambda \mathrm{id}_V) = \{ \mathbf{v} \in V : L(\mathbf{v}) = \lambda \mathbf{v} \}
> $$
> Nel contesto matriciale in cui $L = T_A$ per $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, l'autospazio associato all'autovalore $\lambda$ coincide con lo spazio delle soluzioni del sistema lineare omogeneo associato alla matrice $A - \lambda I_n$:
> $$
> V_\lambda = \mathrm{Ker}(A - \lambda I_n) = \{ \mathbf{x} \in \mathbb{R}^n : (A - \lambda I_n)\mathbf{x} = \mathbf{0} \}
> $$
>
## 5.3. Diagonalizzabilità e Criteri di Similitudine

## 5.4. Diagonalizzabilità di Endomorfismi e Matrici

### Concetto Fondamentale e Definizioni

Uno dei problemi centrali dell'algebra lineare consiste nel trovare, per un dato operatore lineare, una base dello spazio vettoriale rispetto alla quale la matrice rappresentativa assuma la forma più semplice possibile: la forma **diagonale**.

> [!definition] Endomorfismo Diagonalizzabile
> Un endomorfismo $L: V \to V$ su uno spazio vettoriale $V$ di dimensione finita $n$ si dice **diagonalizzabile** se esiste una base $\mathcal{B}$ di $V$ rispetto alla quale la matrice associata $M_L^{\mathcal{B},\mathcal{B}}$ è una **matrice diagonale**:
> $$
> \exists \mathcal{B} \text{ base di } V \quad \text{tale che} \quad M_L^{\mathcal{B},\mathcal{B}} \text{ è una matrice diagonale}
> $$

> [!definition] Matrice Diagonalizzabile
> Una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ si dice **diagonalizzabile** su $\mathbb{R}$ se l'endomorfismo $T_A: \mathbb{R}^n \to \mathbb{R}^n$ ad essa canonicamente associato (definito da $T_A(\mathbf{x}) = A\mathbf{x}$) è un endomorfismo diagonalizzabile.

> [!example] Diagonalizzabilità di un Endomorfismo in $\mathbb{R}^2$
> Si consideri l'endomorfismo $L: \mathbb{R}^2 \to \mathbb{R}^2$ definito dall'assegnazione:
> $$
> L\begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} x + y \\ x + y \end{pmatrix}
> $$
> Vogliamo determinare se $L$ sia diagonalizzabile.
> 
> **1. Rappresentazione rispetto alla base canonica:**
> Scegliendo la base canonica standard $\mathcal{B} = \{\mathbf{e}_1, \mathbf{e}_2\} = \left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 0 \\ 1 \end{pmatrix} \right\}$ di $\mathbb{R}^2$:
> $$
> L(\mathbf{e}_1) = L\begin{pmatrix} 1 \\ 0 \end{pmatrix} = \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \qquad L(\mathbf{e}_2) = L\begin{pmatrix} 0 \\ 1 \end{pmatrix} = \begin{pmatrix} 1 \\ 1 \end{pmatrix}
> $$
> Costruendo la matrice per colonne:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}
> $$
> Poiché presenta elementi non nulli fuori dalla diagonale principale, tale matrice **non è diagonale**.
> 
> **2. Rappresentazione rispetto a una base alternativa:**
> Consideriamo ora la base $\mathcal{C}$ di $\mathbb{R}^2$ formata dai vettori:
> $$
> \mathcal{C} = \left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\}
> $$
> Calcoliamo le immagini degli elementi di $\mathcal{C}$ tramite l'applicazione $L$:
> $$
> L\begin{pmatrix} 1 \\ 1 \end{pmatrix} = \begin{pmatrix} 1+1 \\ 1+1 \end{pmatrix} = \begin{pmatrix} 2 \\ 2 \end{pmatrix} = 2 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 0 \begin{pmatrix} 1 \\ -1 \end{pmatrix} \implies \left[ L\begin{pmatrix} 1 \\ 1 \end{pmatrix} \right]_{\mathcal{C}} = \begin{pmatrix} 2 \\ 0 \end{pmatrix}
> L\begin{pmatrix} 1 \\ -1 \end{pmatrix} = \begin{pmatrix} 1-1 \\ 1-1 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} = 0 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 0 \begin{pmatrix} 1 \\ -1 \end{pmatrix} \implies \left[ L\begin{pmatrix} 1 \\ -1 \end{pmatrix} \right]_{\mathcal{C}} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
> $$
> Esprimendo la matrice rappresentativa $M_L^{\mathcal{C},\mathcal{C}}$:
> $$
> M_L^{\mathcal{C},\mathcal{C}} = \begin{pmatrix} \left[ L\begin{pmatrix} 1 \\ 1 \end{pmatrix} \right]_{\mathcal{C}} & \left[ L\begin{pmatrix} 1 \\ -1 \end{pmatrix} \right]_{\mathcal{C}} \end{pmatrix} = \begin{pmatrix} \left[\begin{pmatrix} 2 \\ 2 \end{pmatrix}\right]_{\mathcal{C}} & \left[\begin{pmatrix} 0 \\ 0 \end{pmatrix}\right]_{\mathcal{C}} \end{pmatrix} = \begin{pmatrix} 2 & 0 \\ 0 & 0 \end{pmatrix}
> $$
> La matrice $M_L^{\mathcal{C},\mathcal{C}}$ **è diagonale**.
> Di conseguenza, per definizione, l'endomorfismo $L$ **è diagonalizzabile** (e $\mathcal{C}$ costituisce una base diagonalizzante).
>
### Il Primo Criterio di Diagonalizzabilità

Sorge spontaneo il problema fondamentale: *come identificare sistematicamente una base rispetto alla quale l'operatore sia diagonale?* La risposta risiede negli autovettori dell'operatore.

> [!theorem] Primo Criterio di Diagonalizzabilità
> Un endomorfismo $L: V \to V$ è diagonalizzabile se e solo se esiste una base $\mathcal{B}$ di $V$ interamente composta da **autovettori** di $L$:
> $$
> L \text{ è diagonalizzabile} \iff \exists \mathcal{B} \text{ base di } V \text{ composta dagli autovettori di } L
> $$
> In tal caso, la matrice diagonale associata ha sulla diagonale principale i corrispondenti autovalori $\lambda_1, \dots, \lambda_n$:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \begin{pmatrix}
> \lambda_1 & 0 & \dots & 0 \\
> 0 & \lambda_2 & \dots & 0 \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \dots & \lambda_n
> \end{pmatrix}
> $$

> [!quote]- Dimostrazione
> Sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base ordinata di $V$.
> 
> **Parte 1 ($\Leftarrow$):**
> Supponiamo che la base $\mathcal{B}$ sia costituita da autovettori di $L$.
> Per definizione stessa di base, ciascun vettore è non nullo:
> $$
> \mathbf{b}_i \neq \mathbf{0} \qquad \forall i = 1, \dots, n
> $$
> Inoltre, per definizione di autovettore, esistono degli scalari $\lambda_1, \dots, \lambda_n \in \mathbb{R}$ tali che:
> $$
> L(\mathbf{b}_i) = \lambda_i \mathbf{b}_i \qquad \forall i = 1, \dots, n
> $$
> Esprimendo l'immagine $L(\mathbf{b}_i)$ come combinazione lineare dei vettori della base $\mathcal{B}$:
> $$
> L(\mathbf{b}_i) = 0 \mathbf{b}_1 + \dots + 0 \mathbf{b}_{i-1} + \lambda_i \mathbf{b}_i + 0 \mathbf{b}_{i+1} + \dots + 0 \mathbf{b}_n
> $$
> Il vettore coordinato di $L(\mathbf{b}_i)$ rispetto alla base $\mathcal{B}$ possiede tutte le coordinate nulle, tranne l'$i$-esima che vale $\lambda_i$:
> $$
> [L(\mathbf{b}_i)]_{\mathcal{B}} = \begin{pmatrix} 0 \\ \vdots \\ \lambda_i \\ \vdots \\ 0 \end{pmatrix} = \lambda_i \mathbf{e}_i
> $$
> Poiché la matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$ ha come colonne i vettori coordinati $[L(\mathbf{b}_i)]_{\mathcal{B}}$, i suoi elementi sono:
> $$
> (M_L^{\mathcal{B},\mathcal{B}})_{ij} = \begin{cases} \lambda_i & \text{se } i = j \\ 0 & \text{se } i \neq j \end{cases}
> $$
> Dunque $M_L^{\mathcal{B},\mathcal{B}}$ è diagonale, e $L$ è diagonalizzabile.
> 
> **Parte 2 ($\Rightarrow$):**
> Viceversa, supponiamo che $L$ sia diagonalizzabile. Allora per definizione esiste una base $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ di $V$ rispetto alla quale la matrice $M_L^{\mathcal{B},\mathcal{B}}$ è diagonale:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \mathrm{diag}(\lambda_1, \dots, \lambda_n)
> $$
> Leggendo l'$i$-esima colonna di tale matrice, troviamo le coordinate di $L(\mathbf{b}_i)$ rispetto a $\mathcal{B}$:
> $$
> [L(\mathbf{b}_i)]_{\mathcal{B}} = \begin{pmatrix} 0 \\ \vdots \\ \lambda_i \\ \vdots \\ 0 \end{pmatrix} \implies L(\mathbf{b}_i) = \lambda_i \mathbf{b}_i
> $$
> Poiché $\mathbf{b}_i \in \mathcal{B}$, si ha $\mathbf{b}_i \neq \mathbf{0}$. Di conseguenza, ogni vettore $\mathbf{b}_i$ della base è un autovettore di $L$ associato all'autovalore $\lambda_i$.
> $$
> \blacksquare
> $$
>
## 5.5. Matrici Simili

### Definizione e Motivazione

Siano $\mathcal{B}$ e $\mathcal{C}$ due basi distinte dello spazio vettoriale $V$, e sia $L: V \to V$ un endomorfismo.
*Quale relazione algebrica lega le due matrici rappresentative $M_L^{\mathcal{B},\mathcal{B}}$ e $M_L^{\mathcal{C},\mathcal{C}}$ dello stesso operatore?*

> [!definition] Matrici Simili
> Due matrici quadrate $A, B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ si dicono **simili** (notazione: $A \sim B$) se esiste una matrice invertibile $S \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ tale che:
> $$
> B = S^{-1} A S \iff S B = A S
> $$

> [!note] Significato Intuitivo e Operativo
> Moltiplicare a sinistra per $S^{-1}$ e a destra per $S$ consente di "convertire" la descrizione matriciale dell'operatore dal sistema di riferimento $A$ al sistema di riferimento $B$, e viceversa. Due matrici sono simili se e solo se rappresentano la **medesima trasformazione lineare** sotto due scelte differenti di basi.
>
### Proprietà delle Matrici Simili

> [!proposition] Invarianti per Similitudine
> Siano $A, B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ due matrici simili, ovvero tali che $B = S^{-1} A S$ per qualche matrice invertibile $S$. Allora sussistono le seguenti proprietà:
> 1. **Potenze:** $A^k$ e $B^k$ sono simili per ogni intero $k \in \mathbb{N}$ (e si ha $B^k = S^{-1} A^k S$).
> 2. **Trasposta:** $A^T$ e $B^T$ sono simili.
> 3. **Invertibilità:** $A$ è invertibile $\iff B$ è invertibile; in tal caso le matrici inverse $A^{-1}$ e $B^{-1}$ sono simili 
> 4. **Rango:** $\mathrm{rk}(A) = \mathrm{rk}(B)$.
> 5. **Determinante:** $\det(A) = \det(B)$.
> 6. **Nullità (dimensione del nucleo):** $\dim(\mathrm{Ker} A) = \dim(\mathrm{Ker} B)$.
> 7. **Polinomio caratteristico:** $\chi_A(t) = \chi_B(t)$.
> 8. **Autovalori e Spettro:** $A$ e $B$ hanno esattamente gli stessi autovalori, con le medesime molteplicità algebriche e geometriche.
> 9. **Traccia:** $\mathrm{tr}(A) = \mathrm{tr}(B)$.

> [!note] Condizioni Necessarie vs Sufficienti
> Le proprietà sopra elencate costituiscono condizioni **necessarie** per la similitudine: se due matrici differiscono anche solo per la traccia, per il determinante o per il polinomio caratteristico, esse **non possono essere simili**.
> Tuttavia, tali condizioni non sono in generale singolarmente sufficienti (due matrici possono avere lo stesso polinomio caratteristico senza essere simili, come nel caso di matrici aventi diversa struttura a blocchi di Jordan).
>
### Dimostrazione delle Proprietà delle Matrici Simili

> [!quote]- Dimostrazione
> Dimostriamo punto per punto ciascuna delle proprietà elencate.
> 
> **1. Dimostrazione della Proprietà 1 (Potenze):**
> Sia $B = S^{-1} A S$. Calcoliamo la potenza $k$-esima di $B$ per $k \in \mathbb{N}$:
> $$
> B^k = (S^{-1} A S)^k = \underbrace{(S^{-1} A S)(S^{-1} A S) \cdots (S^{-1} A S)}_{k \text{ volte}}
> $$
> Sfruttando la proprietà associativa del prodotto matriciale, i fattori interni adiacenti si elidono:
> $$
> B^k = S^{-1} A \underbrace{(S S^{-1})}_{I_n} A \underbrace{(S S^{-1})}_{I_n} \cdots \underbrace{(S S^{-1})}_{I_n} A S = S^{-1} \underbrace{(A \cdot A \cdots A)}_{k \text{ volte}} S = S^{-1} A^k S
> $$
> Dunque $B^k$ e $A^k$ sono simili tramite la stessa matrice $S$.
> 
> **2. Dimostrazione della Proprietà 2 (Trasposta):**
> Ricordando che la trasposta del prodotto di matrici inverte l'ordine dei fattori $(M N P)^T = P^T N^T M^T$, e che la trasposta dell'inversa coincide con l'inversa della trasposta $(M^{-1})^T = (M^T)^{-1}$:
> $$
> B^T = (S^{-1} A S)^T = S^T A^T (S^{-1})^T = S^T A^T (S^T)^{-1}
> $$
> Ponendo $R := (S^T)^{-1} = (S^{-1})^T$, la matrice $R$ è invertibile e la sua inversa è $R^{-1} = S^T$. Sostituendo:
> $$
> B^T = R^{-1} A^T R
> $$
> Ciò dimostra che $B^T$ e $A^T$ sono simili (avendo $R = (S^T)^{-1}$ come matrice di passaggio).
> 
> **3. Dimostrazione della Proprietà 3 & 5 (Determinante e Invertibilità):**
> Applicando il Teorema di Binet:
> $$
> \det(B) = \det(S^{-1} A S) = \det(S^{-1}) \cdot \det(A) \cdot \det(S)
> $$
> Poiché $\det(S^{-1}) = \frac{1}{\det(S)}$, possiamo semplificare:
> $$
> \det(B) = \frac{1}{\det(S)} \cdot \det(A) \cdot \det(S) = \frac{\det(S)}{\det(S)} \det(A) = \det(A)
> $$
> Di conseguenza, $\det(B) = \det(A)$.
> Inoltre, $A$ è invertibile $\iff \det(A) \neq 0 \iff \det(B) \neq 0 \iff B$ è invertibile.
> In tal caso, invertendo entrambi i membri di $B = S^{-1}AS$:
> $$
> B^{-1} = (S^{-1} A S)^{-1} = S^{-1} A^{-1} (S^{-1})^{-1} = S^{-1} A^{-1} S
> $$
> per cui $A^{-1}$ e $B^{-1}$ sono simili.
> 
> **4. Dimostrazione della Proprietà 4 (Rango):**
> Il rango di una matrice coincide con la dimensione dello spazio generato dalle sue colonne (spazio colonna), ovvero con la dimensione dell'immagine della trasformazione lineare associata:
> $$
> \mathrm{rk}(B) = \dim(\mathrm{col}(B)) = \dim(\mathrm{Im}(T_B)) = \dim(\mathrm{Im}(T_{S^{-1} A S}))
> $$
> Poiché l'applicazione associata al prodotto matriciale coincide con la composizione degli operatori associati ($T_{M N} = T_M \circ T_N$):
> $$
> T_{S^{-1} A S} = T_{S^{-1}} \circ T_A \circ T_S
> $$
> Pertanto:
> $$
> \dim(\mathrm{Im}(T_B)) = \dim\left( T_{S^{-1}}\left( T_A\left( T_S(\mathbb{R}^n) \right) \right) \right)
> $$
> Poiché $S$ è una matrice invertibile, l'applicazione lineare $T_S: \mathbb{R}^n \to \mathbb{R}^n$ è un isomorfismo, dunque suriettiva: $T_S(\mathbb{R}^n) = \mathbb{R}^n$. L'espressione diventa:
> $$
> \dim(\mathrm{Im}(T_B)) = \dim\left( T_{S^{-1}}\left( T_A(\mathbb{R}^n) \right) \right)
> $$
> Analogamente, anche $S^{-1}$ è invertibile, quindi $T_{S^{-1}}: \mathbb{R}^n \to \mathbb{R}^n$ è un isomorfismo. Poiché ogni isomorfismo conserva la dimensione di qualunque sottospazio vettoriale su cui agisce:
> $$
> \dim\left( T_{S^{-1}}\left( T_A(\mathbb{R}^n) \right) \right) = \dim(T_A(\mathbb{R}^n)) = \dim(\mathrm{col}(A)) = \mathrm{rk}(A)
> $$
> Abbiamo quindi dimostrato che:
> $$
> \mathrm{rk}(B) = \mathrm{rk}(A)
> $$
> 
> **5. Dimostrazione della Proprietà 6 (Nullità / Dimensione del Nucleo):**
> Per il Teorema della Dimensione (Teorema del Rango e della Nullità):
> $$
> \dim(\mathrm{Ker} A) = n - \mathrm{rk}(A), \qquad \dim(\mathrm{Ker} B) = n - \mathrm{rk}(B)
> $$
> Essendo $\mathrm{rk}(A) = \mathrm{rk}(B)$, segue immediatamente:
> $$
> \dim(\mathrm{Ker} A) = \dim(\mathrm{Ker} B)
> $$
> 
> **6. Dimostrazione della Proprietà 7 (Polinomio Caratteristico):**
> Il polinomio caratteristico di una matrice $A$ è definito da $\chi_A(t) = \det(A - t I_n)$.
> Mostriamo che le matrici $(B - t I_n)$ e $(A - t I_n)$ sono simili:
> $$
> S^{-1} (A - t I_n) S = S^{-1} A S - t \, S^{-1} I_n S = B - t \underbrace{(S^{-1} S)}_{I_n} = B - t I_n
> $$
> Applicando la proprietà di invarianza del determinante per matrici simili (Proprietà 5):
> $$
> \det(B - t I_n) = \det\left( S^{-1} (A - t I_n) S \right) = \det(A - t I_n)
> $$
> Da cui segue l'identità polinomiale:
> $$
> \chi_B(t) = \chi_A(t)
> $$
> 
> **7. Dimostrazione della Proprietà 8 (Autovalori e Molteplicità):**
> Poiché gli autovalori di una matrice sono le radici nel campo del rispettivo polinomio caratteristico, e dato che $\chi_A(t) \equiv \chi_B(t)$, le matrici $A$ e $B$ ammettono esattamente lo stesso spettro di autovalori con identiche molteplicità algebriche ($a_\lambda(A) = a_\lambda(B)$).
> Inoltre, per ogni autovalore $\lambda$, le matrici $(A - \lambda I_n)$ e $(B - \lambda I_n)$ sono simili. Per la Proprietà 6, la dimensione del loro nucleo (molteplicità geometrica) coincide:
> $$
> g_\lambda(A) = \dim(\mathrm{Ker}(A - \lambda I_n)) = \dim(\mathrm{Ker}(B - \lambda I_n)) = g_\lambda(B)
> $$
> 
> **8. Dimostrazione della Proprietà 9 (Traccia):**
> Ricordando che il coefficiente del termine di grado $n-1$ nel polinomio caratteristico $\chi_M(t) = \det(M - t I_n) = (-1)^n t^n + (-1)^{n-1} \mathrm{tr}(M) t^{n-1} + \dots + \det(M)$ è univocamente legato alla traccia della matrice, e poiché $\chi_A(t) = \chi_B(t)$, ne discende necessariamente che:
> $$
> \mathrm{tr}(A) = \mathrm{tr}(B) \qquad \blacksquare
> $$
>
## 5.6. Matrice del Cambio di Base

### Definizione e Formula di Trasformazione delle Coordinate

Sia $V$ uno spazio vettoriale su $\mathbb{R}$ di dimensione finita $n$, e siano $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ e $\mathcal{C} = \{\mathbf{c}_1, \dots, \mathbf{c}_n\}$ due sue basi distinte.

> [!definition] Matrice del Cambio di Base
> Si definisce **matrice del cambio di base** da $\mathcal{B}$ a $\mathcal{C}$ (o matrice di passaggio dalla base $\mathcal{B}$ alla base $\mathcal{C}$) la matrice associata all'applicazione identità $\mathrm{id}_V: V \to V$ considerando $\mathcal{B}$ come base del dominio e $\mathcal{C}$ come base del codominio:
> $$
> M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} = \begin{pmatrix} [\mathbf{b}_1]_{\mathcal{C}} & [\mathbf{b}_2]_{\mathcal{C}} & \dots & [\mathbf{b}_n]_{\mathcal{C}} \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(n, n)
> $$
> Le colonne di $M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}}$ sono i vettori colonna formati dalle coordinate degli elementi della vecchia base $\mathcal{B}$ espressi rispetto alla nuova base $\mathcal{C}$.

> [!note] Formula di Trasformazione delle Coordinate
> Dal teorema fondamentale di rappresentazione delle applicazioni lineari, per ogni vettore $\mathbf{v} \in V$ il diagramma seguente commuta:
> 
> ```
>              id_V
>         V ----------> V
>         |             |
>      Q_B|             |Q_C
>         v             v
>        R^n ---------> R^n
>            T_{M_{id_V}^{B,C}}
> ```
> 
> Esprimendo la relazione in termini algebrici:
> $$
> [\mathbf{v}]_{\mathcal{C}} = [\mathrm{id}_V(\mathbf{v})]_{\mathcal{C}} = T_{M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}}}(Q_{\mathcal{B}}(\mathbf{v})) = M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} [\mathbf{v}]_{\mathcal{B}}
> $$
> Si ha dunque la formula fondamentale del cambio di coordinate:
> $$
> \forall \mathbf{v} \in V, \qquad [\mathbf{v}]_{\mathcal{C}} = M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} [\mathbf{v}]_{\mathcal{B}}
> $$

> [!note] Invertibilità della Matrice di Cambio di Base
> Poiché l'applicazione identità $\mathrm{id}_V: V \to V$ è un isomorfismo (lineare e biiettivo), la matrice $M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}}$ è sempre **invertibile**. Inoltre, l'inversa della matrice di passaggio da $\mathcal{B}$ a $\mathcal{C}$ coincide esattamente con la matrice di passaggio inverso da $\mathcal{C}$ a $\mathcal{B}$:
> $$
> \left( M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} \right)^{-1} = M_{\mathrm{id}_V}^{\mathcal{C},\mathcal{B}}
> $$

> [!example] Esempio di Calcolo del Cambio di Base in $\mathbb{R}^2$

> [!example] Calcolo Esplicito in $\mathbb{R}^2$
> Sia $V = \mathbb{R}^2$, e consideriamo le due basi:
> $$
> \mathcal{B} = \left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\} = \{\mathbf{b}_1, \mathbf{b}_2\}, \qquad \mathcal{C} = \left\{ \begin{pmatrix} 1 \\ 0 \end{pmatrix}, \begin{pmatrix} 2 \\ 1 \end{pmatrix} \right\} = \{\mathbf{c}_1, \mathbf{c}_2\}
> $$
> Vogliamo determinare la matrice di passaggio $M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} = \begin{pmatrix} [\mathbf{b}_1]_{\mathcal{C}} & [\mathbf{b}_2]_{\mathcal{C}} \end{pmatrix}$.
> 
> **1. Espressione di $\mathbf{b}_1 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}$ nella base $\mathcal{C}$:**
> Cerchiamo gli scalari $x_1, y_1 \in \mathbb{R}$ tali che:
> $$
> \begin{pmatrix} 1 \\ 1 \end{pmatrix} = x_1 \begin{pmatrix} 1 \\ 0 \end{pmatrix} + y_1 \begin{pmatrix} 2 \\ 1 \end{pmatrix} = \begin{pmatrix} x_1 + 2y_1 \\ y_1 \end{pmatrix}
> $$
> Risolvendo il sistema:
> $$
> \begin{cases} y_1 = 1 \\ x_1 + 2(1) = 1 \implies x_1 = -1 \end{cases} \implies [\mathbf{b}_1]_{\mathcal{C}} = \begin{pmatrix} -1 \\ 1 \end{pmatrix}
> $$
> 
> **2. Espressione di $\mathbf{b}_2 = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$ nella base $\mathcal{C}$:**
> Cerchiamo gli scalari $x_2, y_2 \in \mathbb{R}$ tali che:
> $$
> \begin{pmatrix} 1 \\ -1 \end{pmatrix} = x_2 \begin{pmatrix} 1 \\ 0 \end{pmatrix} + y_2 \begin{pmatrix} 2 \\ 1 \end{pmatrix} = \begin{pmatrix} x_2 + 2y_2 \\ y_2 \end{pmatrix}
> $$
> Risolvendo il sistema:
> $$
> \begin{cases} y_2 = -1 \\ x_2 + 2(-1) = 1 \implies x_2 = 3 \end{cases} \implies [\mathbf{b}_2]_{\mathcal{C}} = \begin{pmatrix} 3 \\ -1 \end{pmatrix}
> $$
> 
> **3. Costruzione della matrice del cambio di base:**
> Accostando le colonne trovate:
> $$
> M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} = \begin{pmatrix} -1 & 3 \\ 1 & -1 \end{pmatrix}
> $$
> 
> **4. Verifica della formula delle coordinate:**
> Sia dato un vettore $\mathbf{v}$ definito dalle sue componenti rispetto a $\mathcal{B}$:
> $$
> \mathbf{v} = 2 \begin{pmatrix} 1 \\ 1 \end{pmatrix} + 3 \begin{pmatrix} 1 \\ -1 \end{pmatrix} = \begin{pmatrix} 5 \\ -1 \end{pmatrix} \implies [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} 2 \\ 3 \end{pmatrix}
> $$
> Calcoliamo le coordinate rispetto a $\mathcal{C}$ mediante la matrice di passaggio:
> $$
> [\mathbf{v}]_{\mathcal{C}} = M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} -1 & 3 \\ 1 & -1 \end{pmatrix} \begin{pmatrix} 2 \\ 3 \end{pmatrix} = \begin{pmatrix} -1(2) + 3(3) \\ 1(2) + (-1)(3) \end{pmatrix} = \begin{pmatrix} -2 + 9 \\ 2 - 3 \end{pmatrix} = \begin{pmatrix} 7 \\ -1 \end{pmatrix}
> $$
> Verifichiamo calcolando la combinazione lineare nella base $\mathcal{C}$:
> $$
> \mathbf{v} = 7 \begin{pmatrix} 1 \\ 0 \end{pmatrix} - 1 \begin{pmatrix} 2 \\ 1 \end{pmatrix} = \begin{pmatrix} 7 - 2 \\ 0 - 1 \end{pmatrix} = \begin{pmatrix} 5 \\ -1 \end{pmatrix}
> $$
> L'uguaglianza è verificata.
>
## 5.7. Formula del Cambio di Base per Endomorfismi

> [!theorem] Teorema del Cambio di Base per Endomorfismi
> Sia $L: V \to V$ un endomorfismo di uno spazio vettoriale $V$ di dimensione finita $n$, e siano $\mathcal{B}$ e $\mathcal{C}$ due sue basi.
> Allora la relazione tra le matrici rappresentative dell'endomorfismo $L$ nelle basi $\mathcal{B}$ e $\mathcal{C}$ è data da:
> $$
> M_L^{\mathcal{C},\mathcal{C}} = M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} \cdot M_L^{\mathcal{B},\mathcal{B}} \cdot M_{\mathrm{id}_V}^{\mathcal{C},\mathcal{B}}
> $$
> Ricordando che $M_{\mathrm{id}_V}^{\mathcal{B},\mathcal{C}} = \left( M_{\mathrm{id}_V}^{\mathcal{C},\mathcal{B}} \right)^{-1}$, ponendo $S := M_{\mathrm{id}_V}^{\mathcal{C},\mathcal{B}}$ si ottiene la relazione:
> $$
> M_L^{\mathcal{C},\mathcal{C}} = S^{-1} \cdot M_L^{\mathcal{B},\mathcal{B}} \cdot S
> $$
> Di conseguenza, le due matrici rappresentative $M_L^{\mathcal{C},\mathcal{C}}$ e $M_L^{\mathcal{B},\mathcal{B}}$ **sono simili**:
> $$
> M_L^{\mathcal{C},\mathcal{C}} \sim M_L^{\mathcal{B},\mathcal{B}}
> $$

> [!note] Diagramma Commutativo Globale
> Il risultato discende direttamente dalla decomposizione dell'applicazione lineare $L$ attraverso le mappe identità:
> $$
> L = \mathrm{id}_V \circ L \circ \mathrm{id}_V
> $$
> e dalla corrispondente commutatività del diagramma su $\mathbb{R}^n$:
> 
> ```
>               L
>         V ----------> V
>        ^ |           ^ |
>   id_V | | id_V id_V | | id_V
>        | v           | v
>         V ----------> V
>               L
>   Q_C   |  Q_B| |Q_B   |  Q_C
>         v     v v      v
>        R^n ---------> R^n
>             M_L^{B,B}
>         ^              |
>         |M_{id}^{C,B}  |M_{id}^{B,C}
>         |              v
>        R^n ---------> R^n
>             M_L^{C,C}
> ```

> [!note] Corollario: Similitudine delle Matrici Rappresentative
> Tutte le matrici quadrate che rappresentano il medesimo endomorfismo $L: V \to V$ rispetto a scelte diverse di basi sono **simili** tra loro.

> [!definition] Invarianti Intrinseci di un Endomorfismo
> Poiché determinante, traccia e polinomio caratteristico sono invarianti per similitudine, essi sono proprietà intrinseche dell'operatore $L$, indipendenti dalla base scelta per calcolarli:
> - **Determinante di $L$:**
>   $$
>   \det(L) := \det(M_L^{\mathcal{B},\mathcal{B}})
>   $$
> - **Traccia di $L$:**
>   $$
>   \mathrm{tr}(L) := \mathrm{tr}(M_L^{\mathcal{B},\mathcal{B}})
>   $$
> - **Polinomio Caratteristico di $L$:**
>   $$
>   \chi_L(t) := \chi_{M_L^{\mathcal{B},\mathcal{B}}}(t) = \det(M_L^{\mathcal{B},\mathcal{B}} - t I_n)
>   $$
> per una qualunque base $\mathcal{B}$ di $V$.
>
## 5.8. Caratterizzazione Matriciale della Diagonalizzazione

> [!proposition] Condizione di Diagonalizzabilità Matriciale
> Una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ è **diagonalizzabile** se e solo se è **simile a una matrice diagonale** $D$:
> $$
> A \text{ è diagonalizzabile} \iff \exists D \text{ diagonale, } S \text{ invertibile tale che } D = S^{-1} A S
> $$
> L'identità:
> $$
> D = S^{-1} A S \iff A = S D S^{-1}
> $$
> prende il nome di **equazione di diagonalizzazione**.
> In particolare:
> $$
> D = \begin{pmatrix}
> \lambda_1 & 0 & \dots & 0 \\
> 0 & \lambda_2 & \dots & 0 \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \dots & \lambda_n
> \end{pmatrix}, \qquad S = \begin{pmatrix} \mathbf{b}_1 & \mathbf{b}_2 & \dots & \mathbf{b}_n \end{pmatrix}
> $$
> dove gli scalari $\lambda_i$ sono gli **autovalori** di $A$, e i vettori colonna $\mathbf{b}_i$ sono i corrispondenti **autovettori** di $A$, linearmente indipendenti, per ogni $i = 1, \dots, n$.

> [!quote]- Dimostrazione
> Per definizione, la matrice $A$ è diagonalizzabile se e solo se l'endomorfismo associato $T_A: \mathbb{R}^n \to \mathbb{R}^n$ è diagonalizzabile.
> 
> Per il Primo Criterio di diagonalizzabilità, $T_A$ è diagonalizzabile se e solo se esiste una base $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ di $\mathbb{R}^n$ interamente formata da autovettori di $T_A$. Rispetto a tale base, la matrice rappresentativa $M_{T_A}^{\mathcal{B},\mathcal{B}}$ è diagonale:
> $$
> M_{T_A}^{\mathcal{B},\mathcal{B}} = D = \mathrm{diag}(\lambda_1, \dots, \lambda_n)
> $$
> Denotiamo con $\mathcal{E} = \{\mathbf{e}_1, \dots, \mathbf{e}_n\}$ la base canonica standard di $\mathbb{R}^n$. Per definizione di applicazione indotta, la matrice rappresentativa di $T_A$ nella base canonica coincide esattamente con $A$:
> $$
> M_{T_A}^{\mathcal{E},\mathcal{E}} = A
> $$
> Applicando la formula del cambio di base:
> $$
> M_{T_A}^{\mathcal{B},\mathcal{B}} = M_{\mathrm{id}_{\mathbb{R}^n}}^{\mathcal{E},\mathcal{B}} \cdot M_{T_A}^{\mathcal{E},\mathcal{E}} \cdot M_{\mathrm{id}_{\mathbb{R}^n}}^{\mathcal{B},\mathcal{E}}
> $$
> Definendo la matrice modale $S$ come la matrice del cambio di base dalla base di autovettori $\mathcal{B}$ alla base canonica $\mathcal{E}$:
> $$
> S := M_{\mathrm{id}_{\mathbb{R}^n}}^{\mathcal{B},\mathcal{E}} = \begin{pmatrix} [\mathbf{b}_1]_{\mathcal{E}} & [\mathbf{b}_2]_{\mathcal{E}} & \dots & [\mathbf{b}_n]_{\mathcal{E}} \end{pmatrix} = \begin{pmatrix} \mathbf{b}_1 & \mathbf{b}_2 & \dots & \mathbf{b}_n \end{pmatrix}
> $$
> La matrice di passaggio inverso è:
> $$
> M_{\mathrm{id}_{\mathbb{R}^n}}^{\mathcal{E},\mathcal{B}} = \left( M_{\mathrm{id}_{\mathbb{R}^n}}^{\mathcal{B},\mathcal{E}} \right)^{-1} = S^{-1}
> $$
> Sostituendo tali espressioni:
> $$
> D = S^{-1} A S \qquad \blacksquare
> $$

> [!note] Corollario: Determinante e Traccia come Invarianti Spettrali
> Poiché ogni matrice diagonalizzabile $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ è simile alla matrice diagonale dei suoi autovalori $D = \mathrm{diag}(\lambda_1, \dots, \lambda_n)$, e dato che determinante e traccia sono invarianti per similitudine:
> - Il **determinante** di $A$ è pari al **prodotto di tutti i suoi autovalori**:
>   $$
>   \det(A) = \det(D) = \prod_{i=1}^n \lambda_i = \lambda_1 \cdot \lambda_2 \cdots \lambda_n
>   $$
> - La **traccia** di $A$ è pari alla **somma di tutti i suoi autovalori**:
>   $$
>   \mathrm{tr}(A) = \mathrm{tr}(D) = \sum_{i=1}^n \lambda_i = \lambda_1 + \lambda_2 + \dots + \lambda_n
>   $$

> [!note] Calcolo Rapido delle Potenze di una Matrice
> L'equazione di diagonalizzazione fornisce un potente strumento analitico per il calcolo delle potenze di una matrice $A^k$. Essendo $A = S D S^{-1}$, per ogni intero $k \in \mathbb{N}$ si ha:
> $$
> A^k = (S D S^{-1})^k = S D^k S^{-1} = S \begin{pmatrix}
> \lambda_1^k & 0 & \dots & 0 \\
> 0 & \lambda_2^k & \dots & 0 \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \dots & \lambda_n^k
> \end{pmatrix} S^{-1}
> $$
> Questo approccio riduce il calcolo della potenza $k$-esima di una matrice arbitraria al semplice calcolo delle potenze numeriche dei singoli autovalori.

> [!example] Esempio Completo di Diagonalizzazione Matriciale $2 \times 2$

> [!example] Procedura di Diagonalizzazione di $A = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$
> Consideriamo la matrice reale simmetrica:
> $$
> A = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}
> $$
> 
> **Passo 1: Calcolo del polinomio caratteristico e degli autovalori.**
> $$
> \chi_A(t) = \det(A - t I_2) = \det \begin{pmatrix} 1-t & 1 \\ 1 & 1-t \end{pmatrix} = (1-t)^2 - 1^2 = (1-t-1)(1-t+1) = -t(2-t) = t^2 - 2t
> $$
> Ponendo l'equazione secolare $\chi_A(t) = 0$:
> $$
> t(t - 2) = 0 \implies \begin{cases} \lambda_1 = 0 \\ \lambda_2 = 2 \end{cases}
> $$
> Troviamo due autovalori reali e distinti.
> 
> **Passo 2: Determinazione degli autospazi e delle basi di autovettori.**
> - **Autospazio $E_0$ associato a $\lambda_1 = 0$:**
>   $$
>   E_0 = \mathrm{Ker}(A - 0 I_2) = \mathrm{Ker} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}
>   $$
>   Risolviamo il sistema lineare omogeneo associato:
>   $$
>   \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} x \\ y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \iff x + y = 0 \iff y = -x
>   $$
>   I vettori soluzione hanno forma $\begin{pmatrix} x \\ -x \end{pmatrix} = x \begin{pmatrix} 1 \\ -1 \end{pmatrix}$. Dunque:
>   $$
>   E_0 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\} \implies \mathbf{v}_1 = \begin{pmatrix} 1 \\ -1 \end{pmatrix}
>   $$
> - **Autospazio $E_2$ associato a $\lambda_2 = 2$:**
>   $$
>   E_2 = \mathrm{Ker}(A - 2 I_2) = \mathrm{Ker} \begin{pmatrix} 1-2 & 1 \\ 1 & 1-2 \end{pmatrix} = \mathrm{Ker} \begin{pmatrix} -1 & 1 \\ 1 & -1 \end{pmatrix}
>   $$
>   Risolviamo il sistema:
>   $$
>   -x + y = 0 \iff y = x \implies \begin{pmatrix} x \\ x \end{pmatrix} = x \begin{pmatrix} 1 \\ 1 \end{pmatrix}
>   $$
>   Dunque:
>   $$
>   E_2 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix} \right\} \implies \mathbf{v}_2 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}
>   $$
> 
> **Passo 3: Costruzione della base e delle matrici $D$ ed $S$.**
> I vettori $\mathbf{v}_1 = \begin{pmatrix} 1 \\ -1 \end{pmatrix}$ e $\mathbf{v}_2 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}$ corrispondono ad autovalori distinti, quindi sono linearmente indipendenti e formano una base di autovettori per $\mathbb{R}^2$.
> Per il Primo Criterio, $A$ è diagonalizzabile.
> Costruiamo la matrice diagonale $D$ e la matrice modale $S$:
> $$
> D = \begin{pmatrix} 0 & 0 \\ 0 & 2 \end{pmatrix}, \qquad S = \begin{pmatrix} \mathbf{v}_1 & \mathbf{v}_2 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}
> $$
> L'equazione di diagonalizzazione è data da:
> $$
> \begin{pmatrix} 0 & 0 \\ 0 & 2 \end{pmatrix} = \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}^{-1} \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix} \begin{pmatrix} 1 & 1 \\ -1 & 1 \end{pmatrix}
> $$
> ovvero $D = S^{-1} A S$.
>
## 5.9. Molteplicità Algebrica, Molteplicità Geometrica e Secondo Criterio

### Ripasso: Fattorizzazione dei Polinomi in $\mathbb{R}[x]$

> [!note] Teorema di Scomposizione dei Polinomi Reali
> Sia $p(x) \in \mathbb{R}[x]$ un polinomio a coefficienti reali di grado $n \ge 1$. Per il Teorema Fondamentale dell'Algebra, $p(x)$ si scompone in fattori irriducibili in $\mathbb{R}[x]$ nella forma:
> $$
> p(x) = c \, (\alpha_1 - x)^{m_1} (\alpha_2 - x)^{m_2} \cdots (\alpha_r - x)^{m_r} \cdot q(x)
> $$
> dove:
> - $c \in \mathbb{R} \setminus \{0\}$ è una costante;
> - $\alpha_1, \dots, \alpha_r \in \mathbb{R}$ sono le radici reali distinte del polinomio;
> - gli esponenti interi positivi $m_1, \dots, m_r \in \mathbb{N}^+$ rappresentano le rispettive **molteplicità** delle radici reali $\alpha_i$;
> - $q(x) \in \mathbb{R}[x]$ è un polinomio privo di radici reali, dato dal prodotto di fattori quadratici irriducibili di secondo grado con discriminante strettamente negativo ($\Delta < 0$).

> [!example] Fattorizzazione in $\mathbb{R}[x]$
> Si consideri il polinomio $p(x) = x^4 - 1 \in \mathbb{R}[x]$:
> $$
> x^4 - 1 = (x^2 - 1)(x^2 + 1) = (x - 1)(x + 1)(x^2 + 1)
> $$
> Il polinomio possiede due radici reali distinte:
> $$
> \alpha_1 = 1 \quad (m_1 = 1), \qquad \alpha_2 = -1 \quad (m_2 = 1)
> $$
> mentre il fattore $q(x) = x^2 + 1$ non è ulteriormente scomponibile in $\mathbb{R}$ poiché ha radici complesse coniugate $\pm i \notin \mathbb{R}$.
>
### Definizioni delle Molteplicità

Sia $L: V \to V$ un endomorfismo su uno spazio vettoriale reale $V$ di dimensione finita $n$ (oppure sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$), e sia $\lambda \in \mathbb{R}$ un autovalore di $L$.

> [!definition] Molteplicità Algebrica e Molteplicità Geometrica
> 1. Si definisce **molteplicità algebrica** dell'autovalore $\lambda$, denotata con $a_\lambda$ oppure $m_a(\lambda)$, la molteplicità di $\lambda$ come radice del polinomio caratteristico $\chi_L(t)$ (ovvero la massima potenza con cui il termine $(t - \lambda)$ o $(\lambda - t)$ divide $\chi_L(t)$).
> 2. Si definisce **molteplicità geometrica** dell'autovalore $\lambda$, denotata con $g_\lambda$ oppure $m_g(\lambda)$, la dimensione dell'autospazio associato a $\lambda$:
>    $$
>    g_\lambda := \dim(E_\lambda) = \dim(\mathrm{Ker}(L - \lambda \mathrm{id}_V))
>    $$
>    Nel contesto matriciale:
>    $$
>    g_\lambda = n - \mathrm{rk}(A - \lambda I_n)
>    $$
>
### La Disuguaglianza Fondamentale tra le Molteplicità

> [!proposition] Disuguaglianza Fondamentale
> Per ogni autovalore $\lambda$ di un endomorfismo $L: V \to V$ (o di una matrice quadrata $A$), la molteplicità geometrica è sempre compresa tra 1 e la molteplicità algebrica:
> $$
> 1 \le g_\lambda \le a_\lambda
> $$

> [!quote]- Dimostrazione
> **1. Verifica di $1 \le g_\lambda$:**
> Per definizione di autovalore, esiste almeno un autovettore non nullo $\mathbf{v} \neq \mathbf{0}$ tale che $L(\mathbf{v}) = \lambda \mathbf{v}$. Di conseguenza:
> $$
> E_\lambda = \mathrm{Ker}(L - \lambda \mathrm{id}_V) \neq \{\mathbf{0}\} \implies g_\lambda = \dim(E_\lambda) \ge 1
> $$
> 
> **2. Verifica di $g_\lambda \le a_\lambda$:**
> Sia $g := g_\lambda = \dim(E_\lambda)$. Fissiamo una base dell'autospazio $E_\lambda$, denotata con $\{\mathbf{v}_1, \dots, \mathbf{v}_g\}$.
> Per il Teorema di Completamento a Base, possiamo completare questo insieme di vettori linearmente indipendenti ad una base $\mathcal{B}$ dell'intero spazio $V$:
> $$
> \mathcal{B} = \{\mathbf{v}_1, \dots, \mathbf{v}_g, \mathbf{w}_{g+1}, \dots, \mathbf{w}_n\}
> $$
> Poiché per ciascun $i \in \{1, \dots, g\}$ il vettore $\mathbf{v}_i \in E_\lambda$ è un autovettore associato a $\lambda$, si ha:
> $$
> L(\mathbf{v}_i) = \lambda \mathbf{v}_i
> $$
> Le prime $g$ colonne della matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$ avranno quindi $\lambda$ sull'elemento diagonale e $0$ in ogni altra posizione. La matrice associata assume dunque una struttura a blocchi triangolare superiore:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \begin{pmatrix}
> \lambda I_g & B \\
> 0 & C
> \end{pmatrix}
> $$
> dove $\lambda I_g \in \mathrm{Mat}_{\mathbb{R}}(g, g)$ è una matrice scalare, $0 \in \mathrm{Mat}_{\mathbb{R}}(n-g, g)$ è il blocco nullo, $B \in \mathrm{Mat}_{\mathbb{R}}(g, n-g)$ e $C \in \mathrm{Mat}_{\mathbb{R}}(n-g, n-g)$.
> 
> Calcoliamo ora il polinomio caratteristico $\chi_L(t)$ usando la matrice a blocchi:
> $$
> \chi_L(t) = \det(M_L^{\mathcal{B},\mathcal{B}} - t I_n) = \det \begin{pmatrix}
> (\lambda - t) I_g & B \\
> 0 & C - t I_{n-g}
> \end{pmatrix}
> $$
> In virtù delle proprietà del determinante di una matrice triangolare a blocchi:
> $$
> \chi_L(t) = \det\left( (\lambda - t) I_g \right) \cdot \det(C - t I_{n-g}) = (\lambda - t)^g \cdot \det(C - t I_{n-g})
> $$
> Da tale scomposizione deduciamo che il fattore lineare $(\lambda - t)$ divide $\chi_L(t)$ almeno con potenza $g$. Poiché la molteplicità algebrica $a_\lambda$ è per definizione la massima potenza con cui $(\lambda - t)$ divide $\chi_L(t)$, ne discende che:
> $$
> g \le a_\lambda \implies g_\lambda \le a_\lambda
> $$
> Combinando i due risultati:
> $$
> 1 \le g_\lambda \le a_\lambda \qquad \blacksquare
> $$
>
### Il Secondo Criterio di Diagonalizzabilità

> [!theorem] Secondo Criterio di Diagonalizzabilità
> Sia $L: V \to V$ un endomorfismo di uno spazio vettoriale reale $V$ con $\dim(V) = n$, e siano $\lambda_1, \dots, \lambda_r$ tutti i suoi autovalori reali distinti.
> L'endomorfismo $L$ è **diagonalizzabile** su $\mathbb{R}$ se e solo se sono contemporaneamente soddisfatte le seguenti due condizioni:
> 
> 1. **Scissione completa del polinomio caratteristico in $\mathbb{R}$:**
>    Tutte le radici di $\chi_L(t)$ appartengono al campo reale $\mathbb{R}$, ossia la somma delle molteplicità algebriche è uguale alla dimensione dello spazio:
>    $$
>    \sum_{i=1}^r a_{\lambda_i} = \dim(V) = n
>    $$
> 2. **Coincidenza delle molteplicità per ogni autovalore:**
>    Per ciascun autovalore $\lambda_i$, la molteplicità algebrica coincide con la molteplicità geometrica:
>    $$
>    a_{\lambda_i} = g_{\lambda_i} \qquad \forall i = 1, \dots, r
>    $$
> 
> Le due condizioni sono congiuntamente equivalenti alla singola condizione compatta:
> $$
> \sum_{i=1}^r g_{\lambda_i} = \dim(V) = n
> $$

> [!note] Costruzione della Base Diagonalizzante
> Siano $\mathcal{B}_1, \dots, \mathcal{B}_r$ delle basi dei rispettivi autospazi $E_{\lambda_1}, \dots, E_{\lambda_r}$.
> Poiché autospazi relativi ad autovalori distinti sono sempre in somma diretta tra loro:
> $$
> E_{\lambda_1} \oplus E_{\lambda_2} \oplus \dots \oplus E_{\lambda_r} \subseteq V
> $$
> Quando il Secondo Criterio è soddisfatto, tale somma diretta riempie l'intero spazio vettoriale $V$. Di conseguenza, l'unione insiemistica delle basi dei singoli autospazi:
> $$
> \mathcal{B} := \bigcup_{i=1}^r \mathcal{B}_i
> $$
> è una **base di $V$ composta interamente da autovettori** di $L$.
> Rispetto a tale base, la matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$ è diagonale e reca ciascun autovalore $\lambda_i$ ripetuto tante volte quant'è la sua molteplicità $g_{\lambda_i} = a_{\lambda_i}$:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \begin{pmatrix}
> \lambda_1 & & & & 0 \\
> & \ddots & & & \\
> & & \lambda_1 & & \\
> & & & \ddots & \\
> 0 & & & & \lambda_r
> \end{pmatrix}
> $$

> [!example] Esempi di Applicazione del Secondo Criterio

> [!example] Esempio 1: Matrice Diagonalizzabile
> Si riprenda la matrice simmetrica $A = \begin{pmatrix} 1 & 1 \\ 1 & 1 \end{pmatrix}$.
> Il polinomio caratteristico è $\chi_A(t) = t(t - 2)$. Gli autovalori sono $\lambda_1 = 2$ e $\lambda_2 = 0$.
> - Per $\lambda_1 = 2$: la molteplicità algebrica è $a_{\lambda_1} = 1$. L'autospazio è $E_2 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix} \right\}$, per cui $g_{\lambda_1} = \dim(E_2) = 1$.
> - Per $\lambda_2 = 0$: la molteplicità algebrica è $a_{\lambda_2} = 1$. L'autospazio è $E_0 = \mathrm{Span}\left\{ \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\}$, per cui $g_{\lambda_2} = \dim(E_0) = 1$.
> 
> Verifichiamo le due condizioni del Secondo Criterio:
> 1. $\sum_{i=1}^2 a_{\lambda_i} = a_{\lambda_1} + a_{\lambda_2} = 1 + 1 = 2 = \dim(\mathbb{R}^2)$ (polinomio completamente scisso in $\mathbb{R}$).
> 2. $a_{\lambda_1} = g_{\lambda_1} = 1$ e $a_{\lambda_2} = g_{\lambda_2} = 1$ (coincidenza delle molteplicità per ogni autovalore).
> 
> Entrambe le condizioni sono soddisfatte, dunque $A$ **è diagonalizzabile**.

> [!example] Esempio 2: Matrice Non Diagonalizzabile su $\mathbb{R}$ (Assenza di Autovalori Reali)
> Si consideri la matrice di rotazione oraria di $\frac{\pi}{2}$:
> $$
> B = \begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
> $$
> Calcoliamo il polinomio caratteristico:
> $$
> \chi_B(t) = \det(B - t I_2) = \det \begin{pmatrix} -t & -1 \\ 1 & -t \end{pmatrix} = (-t)(-t) - (-1)(1) = t^2 + 1
> $$
> Risolvendo l'equazione secolare $\chi_B(t) = 0$:
> $$
> t^2 + 1 = 0 \implies t^2 = -1
> $$
> Non esiste alcuna soluzione reale: $\nexists \lambda \in \mathbb{R}$.
> Non esistendo autovalori reali, la somma delle molteplicità algebriche è $0 \neq 2 = \dim(\mathbb{R}^2)$.
> La prima condizione del criterio fallisce: la matrice $B$ **non è diagonalizzabile** su $\mathbb{R}$ (geometricamente intuitivo, poiché una rotazione di $\pi/2$ non lascia invariata alcuna retta passante per l'origine nel piano reale).
>
## 5.10. Endomorfismi Triangolabili e Forma Canonica di Jordan

### Endomorfismi Triangolabili

Quando la condizione di diagonalizzabilità non è soddisfatta (ad esempio perché per qualche autovalore si ha $g_\lambda < a_\lambda$), ci si domanda quale sia la forma più semplice a cui sia possibile ricondurre la matrice rappresentativa. La prima generalizzazione naturale è data dalle matrici triangolari.

> [!definition] Endomorfismo Triangolabile
> Sia $L: V \to V$ un endomorfismo di uno spazio vettoriale $V$. Si dice che $L$ è **triangolabile** se esiste una base $\mathcal{B}$ di $V$ rispetto alla quale la matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$ è una **matrice triangolare superiore**:
> $$
> M_L^{\mathcal{B},\mathcal{B}} = \begin{pmatrix}
> \lambda_1 & * & \dots & * \\
> 0 & \lambda_2 & \dots & * \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \dots & \lambda_n
> \end{pmatrix}
> $$

> [!theorem] Teorema di Triangolabilità
> Sia $L: V \to V$ un endomorfismo di uno spazio vettoriale reale di dimensione finita $n$.
> L'endomorfismo $L$ è **triangolabile** se e solo se **ha tutti gli autovalori reali**:
> $$
> \begin{align}  & L     \text{ è triangolabile} \\    \iff  & \sum_{i=1}^r a_{\lambda_i} = \dim(V) = n  \end{align}
> $$

> [!note] Oltre la Semplice Triangolarità: la Forma di Jordan
> Per gli endomorfismi triangolabili, la forma triangolare superiore non è univocamente determinata negli elementi posti al di sopra della diagonale. È tuttavia possibile fare molto meglio: esiste una base speciale, detta **base di Jordan**, che riduce la matrice ad una forma quasi-diagonale, in cui tutti gli elementi fuori dalla diagonale sono nulli, eccetto al più alcuni $1$ posti sulla sopradiagonale immediatamente superiore. Tale costruzione estende il concetto di base di autovettori mediante gli autovettori generalizzati.
>
### Catene di Jordan e Autovettori Generalizzati

> [!definition] Catena di Jordan
> Sia $L: V \to V$ un endomorfismo. Si definisce **catena di Jordan** di $L$ di lunghezza $m \ge 1$ associata all'autovalore $\lambda \in \mathbb{R}$ un insieme ordinato di vettori non nulli $\{\mathbf{v}_1, \dots, \mathbf{v}_m\} \subset V$ tali che:
> $$
> L(\mathbf{v}_i) = \lambda \mathbf{v}_i + \mathbf{v}_{i-1} \qquad \forall i = 1, \dots, m
> $$
> dove per convenzione si pone:
> $$
> \mathbf{v}_0 := \mathbf{0}
> $$
> I vettori $\mathbf{v}_1, \dots, \mathbf{v}_m$ costituenti la catena prendono il nome di **autovettori generalizzati** di $L$.

> [!note] Analisi della Catena di Jordan
> - Per l'indice $i = 1$, la relazione ricorsiva fornisce:
>   $$
>   L(\mathbf{v}_1) = \lambda \mathbf{v}_1 + \mathbf{v}_0 = \lambda \mathbf{v}_1 + \mathbf{0} = \lambda \mathbf{v}_1
>   $$
>   Dunque il primo vettore $\mathbf{v}_1$ (detto *capocatena*) è a tutti gli effetti un **autovettore ordinario** di $L$ associato all'autovalore $\lambda$ ($\mathbf{v}_1 \in E_\lambda$).
> - Per gli indici successivi $i = 2, \dots, m$, riscrivendo la relazione nella forma:
>   $$
>   (L - \lambda \mathrm{id}_V)(\mathbf{v}_i) = \mathbf{v}_{i-1}
>   $$
>   si nota che l'operatore $(L - \lambda \mathrm{id}_V)$ agisce come un operatore di "abbassamento" che sposta ciascun vettore della catena sul precedente, annullando infine il capocatena:
>   $$
>   (L - \lambda \mathrm{id}_V)^k(\mathbf{v}_k) = \mathbf{0}
>   $$
>
### La Base di Jordan e il Blocco di Jordan

> [!definition] Base di Jordan
> Una **base di Jordan** per un endomorfismo $L: V \to V$ è una base di $V$ formata dall'unione di un numero finito di catene di Jordan disgiunte a due a due.

> [!note] Struttura della Matrice di una Singola Catena di Jordan
> Supponiamo che esista una base di Jordan $\mathcal{B} = \{\mathbf{v}_1, \dots, \mathbf{v}_m\}$ per $L$ formata da un'**unica catena** di lunghezza $m$.
> Esprimiamo le immagini dei vettori rispetto alla base $\mathcal{B}$:
> $$
> L(\mathbf{v}_1) = \lambda \mathbf{v}_1 \implies [L(\mathbf{v}_1)]_{\mathcal{B}} = \begin{pmatrix} \lambda \\ 0 \\ 0 \\ \vdots \\ 0 \end{pmatrix}
> L(\mathbf{v}_2) = \lambda \mathbf{v}_2 + \mathbf{v}_1 \implies [L(\mathbf{v}_2)]_{\mathcal{B}} = \begin{pmatrix} 1 \\ \lambda \\ 0 \\ \vdots \\ 0 \end{pmatrix}
> L(\mathbf{v}_3) = \lambda \mathbf{v}_3 + \mathbf{v}_2 \implies [L(\mathbf{v}_3)]_{\mathcal{B}} = \begin{pmatrix} 0 \\ 1 \\ \lambda \\ \vdots \\ 0 \end{pmatrix}
> $$
> e così via fino all'ultimo vettore:
> $$
> L(\mathbf{v}_m) = \lambda \mathbf{v}_m + \mathbf{v}_{m-1} \implies [L(\mathbf{v}_m)]_{\mathcal{B}} = \begin{pmatrix} 0 \\ \vdots \\ 0 \\ 1 \\ \lambda \end{pmatrix}
> $$
> Disponendo tali colonne nella matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$, otteniamo la matrice quadrata di ordine $m$:
> $$
> J_m(\lambda) = \begin{pmatrix}
> \lambda & 1 & 0 & \dots & 0 \\
> 0 & \lambda & 1 & \dots & 0 \\
> \vdots & \vdots & \ddots & \ddots & \vdots \\
> 0 & 0 & \dots & \lambda & 1 \\
> 0 & 0 & \dots & 0 & \lambda
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(m, m)
> $$
> Se invece la base $\mathcal{B}$ di $V$ è composta dall'unione di più catene di Jordan disgiunte, la matrice $M_L^{\mathcal{B},\mathcal{B}}$ assume una struttura **diagonale a blocchi**, costituita da una sequenza di blocchi di Jordan disposti lungo la diagonale principale.
>
### La Forma Canonica di Jordan

> [!definition] Blocco di Jordan e Matrice di Jordan
> 1. La matrice quadrata $J_m(\lambda) \in \mathrm{Mat}_{\mathbb{R}}(m, m)$ avente l'autovalore $\lambda$ lungo tutta la diagonale principale, il valore $1$ sulla sopradiagonale immediatamente superiore e $0$ altrove è detta **blocco di Jordan** di ordine $m$ associato a $\lambda$ $$J_{m}=\begin{pmatrix}  1 & 1 & 0  & 0 & \dots & 0 \\ 0 & 1 & 1  & 0 & \dots & 0 \\  0 & 0 & 1 & 1 & \dots & 0 \\  \vdots & \vdots & \vdots & \vdots &   \ddots & \vdots  \\  0 & 0 & 0 & 0 & \dots & 1   \end{pmatrix}$$
> 2. Una matrice quadrata $J$ diagonale a blocchi della forma:
>    $$
>    J = \begin{pmatrix}
>    J_{m_1}(\lambda_{(1)}) & 0 & \dots & 0 \\
>    0 & J_{m_2}(\lambda_{(2)}) & \dots & 0 \\
>    \vdots & \vdots & \ddots & \vdots \\
>    0 & 0 & \dots & J_{m_p}(\lambda_{(p)})
>    \end{pmatrix}
>    $$
>    i cui blocchi diagonali $J_{m_k}(\lambda_{(k)})$ sono tutti blocchi di Jordan, è detta **matrice di Jordan**.

> [!theorem] Teorema di Esistenza della Base di Jordan
> Sia $L: V \to V$ un endomorfismo triangolabile su uno spazio vettoriale di dimensione finita (ovvero avente tutti gli autovalori nel campo scalare).
> Allora esiste sempre una base di Jordan $\mathcal{B}$ di $V$ per l'endomorfismo $L$.

> [!definition] Forma Canonica di Jordan
> Sia $\mathcal{B}$ una base di Jordan per un endomorfismo triangolabile $L: V \to V$.
> Allora la matrice rappresentativa $M_L^{\mathcal{B},\mathcal{B}}$ di $L$ rispetto a tale base è detta **forma canonica di Jordan** di $L$.

> [!note] Proprietà della Forma Canonica
> La forma canonica di Jordan è una matrice di Jordan.
> Tale definizione è **ben posta**: la forma canonica associata ad un endomorfismo triangolabile è essenzialmente unica, nel senso che due basi di Jordan diverse per lo stesso endomorfismo producono matrici di Jordan che differiscono esclusivamente per una permutazione nell'ordine dei blocchi di Jordan lungo la diagonale principale.
>
### Teorema di Unicità della Forma Canonica

> [!theorem] Unicità della Forma Canonica di Jordan
> Sia $L: V \to V$ un endomorfismo triangolabile, e sia $\lambda_0 \in \mathbb{R}$ un suo autovalore.
> Posto, per ogni $k \in \mathbb{N}$:
> $$
> s_k := \mathrm{rk}(L - \lambda_0 \mathrm{id}_V)^k
> $$
> Allora ogni base di Jordan di $L$ contiene esattamente:
> $$
> r_k = s_{k+1} - 2s_k + s_{k-1}
> $$
> catene disgiunte associate a $\lambda_0$ e di lunghezza $k$.
> 
> In particolare, a meno di permutazioni dei blocchi di Jordan, la forma canonica di Jordan $J$ è unica.