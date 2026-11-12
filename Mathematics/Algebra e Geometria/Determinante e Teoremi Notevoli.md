---
title: "Il Determinante e Teoremi Notevoli"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 4)"
tags:
  - math/linear-algebra/determinant
  - math/linear-algebra/laplace
---
## 4.1. Definizione Ricorsiva e Sviluppi di Laplace

> [!definition] Il Determinante
> Il **determinante** è una funzione scalare definita sull'insieme delle matrici quadrate a coefficienti reali:
> $$
> \det: \mathrm{Mat}_{\mathbb{R}}(n, n) \to \mathbb{R}
> $$
> definita ricorsivamente (per induzione sull'ordine $n$ della matrice) come segue:
> 
> - **Caso base $n = 1$:**
>   Sia $A = (a_{1,1}) \in \mathrm{Mat}_{\mathbb{R}}(1, 1)$. Si pone:
>   $$
>   \det(A) := a_{1,1}
>   $$
> 
> - **Caso induttivo $n > 1$:**
>   Sia $A = (a_{i,j})_{1 \le i, j \le n} \in \mathrm{Mat}_{\mathbb{R}}(n, n)$.
>   Si denota con $\widehat{A}_{i,j} \in \mathrm{Mat}_{\mathbb{R}}(n-1, n-1)$ la sottomatrice quadrata ottenuta da $A$ eliminando la riga $i$-esima e la colonna $j$-esima (matrice del minore complementare di posizione $(i, j)$).
> 
> Il determinante può essere calcolato indifferentemente in due modi:
> 1. Si fissa una riga $i$ qualsiasi e si effettua lo **sviluppo lungo la riga $i$ (Formula di Laplace):**
>    $$
>    \det(A) := \sum_{j=1}^n (-1)^{i+j} a_{i,j} \det(\widehat{A}_{i,j})
>    $$
> 2. Si fissa una colonna $j$ qualsiasi e si effettua lo **sviluppo lungo la colonna $j$ (Formula di Laplace):**
>    $$
>    \det(A) := \sum_{i=1}^n (-1)^{i+j} a_{i,j} \det(\widehat{A}_{i,j})
>    $$
> Le due definizioni conducono al medesimo risultato, indipendentemente dalla riga o dalla colonna scelta.
>
## 4.2. Calcolo del Determinante per Matrici $2 \times 2$

Data una generica matrice quadrata d'ordine 2:
$$
A = \begin{pmatrix} a_{1,1} & a_{1,2} \\ a_{2,1} & a_{2,2} \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
$$
Scegliendo di sviluppare lungo la prima riga ($i = 1$):
$$
\det(A) = \sum_{j=1}^2 (-1)^{1+j} a_{1,j} \det(\widehat{A}_{1,j}) = (-1)^{1+1} a_{1,1} \det(\widehat{A}_{1,1}) + (-1)^{1+2} a_{1,2} \det(\widehat{A}_{1,2})
$$
Le sottomatrici complementari di ordine 1 sono:
$$
\widehat{A}_{1,1} = (a_{2,2}) \implies \det(\widehat{A}_{1,1}) = a_{2,2}
\widehat{A}_{1,2} = (a_{2,1}) \implies \det(\widehat{A}_{1,2}) = a_{2,1}
$$
Sostituendo tali valori:
$$
\det(A) = a_{1,1} a_{2,2} - a_{1,2} a_{2,1} \qquad \forall A \in \mathrm{Mat}_{\mathbb{R}}(2, 2)
$$

## 4.3. Interpretazione Geometrica del Determinante $2 \times 2$

> [!note] Area del Parallelogramma nel Piano
> Il determinante di una matrice $A \in \mathrm{Mat}_{\mathbb{R}}(2, 2)$ possiede una diretta interpretazione geometrica nel piano cartesiano $\mathbb{R}^2$.
> Considerata la matrice $A = \begin{pmatrix} a_{1,1} & a_{1,2} \\ a_{2,1} & a_{2,2} \end{pmatrix}$, i suoi due vettori colonna:
> $$
> \mathbf{v}_1 = \begin{pmatrix} a_{1,1} \\ a_{2,1} \end{pmatrix}, \qquad \mathbf{v}_2 = \begin{pmatrix} a_{1,2} \\ a_{2,2} \end{pmatrix}
> $$
> individuano nel piano un parallelogramma con un vertice nell'origine $O(0,0)$ e gli altri vertici in $A(a_{1,1}, a_{2,1})$, $B(a_{1,2}, a_{2,2})$ e $C = A + B$.
> Il valore assoluto del determinante coincide esattamente con l'area di tale parallelogramma:
> $$
> \mathrm{Area}_{OABC} = |\det(A)|
> $$
> In particolare:
> $$
> \mathrm{Area}_{OABC} = 0 \iff \begin{pmatrix} a_{1,1} \\ a_{2,1} \end{pmatrix} \text{ e } \begin{pmatrix} a_{1,2} \\ a_{2,2} \end{pmatrix} \text{ sono linearmente dipendenti}
> $$

> [!corollary] Criterio di Dipendenza Lineare in $\mathbb{R}^2$
> Due vettori $\mathbf{v}_1, \mathbf{v}_2 \in \mathbb{R}^2$ sono linearmente dipendenti se e solo se il determinante della matrice che li accosta è nullo:
> $$
> \mathbf{v}_1, \mathbf{v}_2 \text{ sono l.d.} \iff \det(\mathbf{v}_1 \mid \mathbf{v}_2) = 0
> $$
>
## 4.4. Calcolo del Determinante per Matrici $3 \times 3$

Data una generica matrice quadrata d'ordine 3:
$$
A = \begin{pmatrix} a_{1,1} & a_{1,2} & a_{1,3} \\ a_{2,1} & a_{2,2} & a_{2,3} \\ a_{3,1} & a_{3,2} & a_{3,3} \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(3, 3)
$$
Il calcolo di $\det(A)$ può essere condotto con due approcci:
1. **Formula di Laplace:** sviluppando lungo una riga o una colonna scelta convenientemente (ad esempio quella contenente il maggior numero di zeri).
2. **Regola di Sarrus:** metodo mnemonico applicabile esclusivamente alle matrici quadrate $3 \times 3$.

> [!note] Regola di Sarrus
> Si affiancano a destra della matrice le sue prime due colonne, formando la matrice orlata $3 \times 5$:
> $$
> \begin{pmatrix}
> a_{1,1} & a_{1,2} & a_{1,3} & \big| & a_{1,1} & a_{1,2} \\
> a_{2,1} & a_{2,2} & a_{2,3} & \big| & a_{2,1} & a_{2,2} \\
> a_{3,1} & a_{3,2} & a_{3,3} & \big| & a_{3,1} & a_{3,2}
> \end{pmatrix}
> $$
> Il determinante è dato dalla differenza tra la somma dei prodotti degli elementi posti sulle tre diagonali discendenti (da sinistra verso destra, $\searrow$) e la somma dei prodotti degli elementi posti sulle tre diagonali ascendenti (da sinistra verso destra, $\nearrow$):
> $$
> \det(A) = \sum \prod \searrow \;-\; \sum \prod \nearrow
> $$
> Esplicitando i singoli prodotti:
> $$
> \det(A) = (a_{1,1} a_{2,2} a_{3,3} + a_{1,2} a_{2,3} a_{3,1} + a_{1,3} a_{2,1} a_{3,2}) - (a_{3,1} a_{2,2} a_{1,3} + a_{3,2} a_{2,3} a_{1,1} + a_{3,3} a_{2,1} a_{1,2})
> $$

> [!note] Inapplicabilità della Regola di Sarrus per Ordini Superiori
> La regola di Sarrus è valida ed applicabile **esclusivamente** per matrici di ordine $n = 3$. Non esistono formule o schemi analoghi basati sul prolungamento delle diagonali per $n > 3$. Per matrici di ordine $n \ge 4$, il calcolo del determinante deve essere effettuato tramite la formula ricorsiva di Laplace o mediante l'eliminazione gaussiana.

> [!example] Esempio di Calcolo per una Matrice $4 \times 4$ mediante Sviluppo di Laplace

> [!example] Sviluppo di Laplace lungo la Colonna con più Zeri
> Sia data la matrice quadrata di ordine 4:
> $$
> A = \begin{pmatrix}
> 2 & 1 & 3 & 0 \\
> -1 & 0 & 1 & 2 \\
> 2 & 0 & -1 & -1 \\
> -3 & 1 & 0 & 1
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(4, 4)
> $$
> Per minimizzare i calcoli, si sceglie la riga o la colonna contenente il maggior numero di zeri. In questo caso si seleziona la seconda colonna ($j = 2$):
> $$
> \det(A) = \sum_{i=1}^4 (-1)^{i+2} a_{i,2} \det(\hat{A}_{i,2})
> $$
> Esplicitando la sommatoria per ciascun elemento della colonna:
> $$
> \begin{align}
> \det(A) = \; & (-1)^3 \cdot a_{1,2} \cdot \det(\hat{A}_{1,2}) + (-1)^4 \cdot a_{2,2} \cdot \det(\hat{A}_{2,2}) \\
> & + (-1)^5 \cdot a_{3,2} \cdot \det(\hat{A}_{3,2}) + (-1)^6 \cdot a_{4,2} \cdot \det(\hat{A}_{4,2})
> \end{align}
> $$
> Poiché $a_{2,2} = 0$ e $a_{3,2} = 0$, i due termini centrali si annullano identicamente:
> $$
> \det(A) = - a_{1,2} \det(\hat{A}_{1,2}) + a_{4,2} \det(\hat{A}_{4,2})
> $$
> Essendo $a_{1,2} = 1$ e $a_{4,2} = 1$, l'espressione si riduce a:
> $$
> \det(A) = - \det(\hat{A}_{1,2}) + \det(\hat{A}_{4,2})
> $$
> 
> **Calcolo del minore $\hat{A}_{1,2}$:**
> Eliminando la prima riga e la seconda colonna di $A$:
> $$
> \hat{A}_{1,2} = \begin{pmatrix}
> -1 & 1 & 2 \\
> 2 & -1 & -1 \\
> -3 & 0 & 1
> \end{pmatrix}
> $$
> Applicando la regola di Sarrus con la matrice orlata:
> $$
> \begin{pmatrix}
> -1 & 1 & 2 & \big| & -1 & 1 \\
> 2 & -1 & -1 & \big| & 2 & -1 \\
> -3 & 0 & 1 & \big| & -3 & 0
> \end{pmatrix}
> $$
> Calcolando i prodotti delle diagonali discendenti e ascendenti:
> $$
> \begin{align}
> \det(\hat{A}_{1,2}) &= [(-1)(-1)(1) + (1)(-1)(-3) + (2)(2)(0)] - [(-3)(-1)(2) + (0)(-1)(-1) + (1)(2)(1)] \\
> &= (1 + 3 + 0) - (6 + 0 + 2) = 4 - 8 = -4
> \end{align}
> $$
> 
> **Calcolo del minore $\hat{A}_{4,2}$:**
> Eliminando la quarta riga e la seconda colonna di $A$:
> $$
> \hat{A}_{4,2} = \begin{pmatrix}
> 2 & 3 & 0 \\
> -1 & 1 & 2 \\
> 2 & -1 & -1
> \end{pmatrix}
> $$
> Applicando la regola di Sarrus con la matrice orlata:
> $$
> \begin{pmatrix}
> 2 & 3 & 0 & \big| & 2 & 3 \\
> -1 & 1 & 2 & \big| & -1 & 1 \\
> 2 & -1 & -1 & \big| & 2 & -1
> \end{pmatrix}
> $$
> Calcolando i prodotti delle diagonali:
> $$
> \begin{align}
> \det(\hat{A}_{4,2}) &= [(2)(1)(-1) + (3)(2)(2) + (0)(-1)(-1)] - [(2)(1)(0) + (-1)(2)(2) + (-1)(-1)(3)] \\
> &= (-2 + 12 + 0) - (0 - 4 + 3) = 10 - (-1) = 11
> \end{align}
> $$
> 
> **Conclusione:**
> Sostituendo i due minori calcolati nell'espressione del determinante:
> $$
> \det(A) = -(-4) + 11 = 4 + 11 = 15
> $$
>
## 4.5. Proprietà Fondamentali del Determinante

### Scacchiera dei Segni e Mancata Linearità Globale

> [!note] Struttura a Scacchiera dei Segni
> I segni $(-1)^{i+j}$ che moltiplicano ciascun minore complementare nello sviluppo di Laplace formano una matrice a scacchiera di segni alternati:
> $$
> \begin{pmatrix}
> + & - & + & - & \cdots \\
> - & + & - & + & \cdots \\
> + & - & + & - & \cdots \\
> - & + & - & + & \cdots \\
> \vdots & \vdots & \vdots & \vdots & \ddots
> \end{pmatrix}
> $$

> [!note] Non Linearità del Determinante rispetto alla Somma
> Il determinante **NON** è un'applicazione lineare da $\mathrm{Mat}_{\mathbb{R}}(n, n)$ a $\mathbb{R}$. In particolare, per matrici arbitrarie $A, B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, in generale il determinante della somma differisce dalla somma dei determinanti:
> $$
> \det(A + B) \neq \det(A) + \det(B)
> $$

> [!example] Controesempio alla Linearità della Somma
> Si considerino le due matrici diagonali in $\mathrm{Mat}_{\mathbb{R}}(2, 2)$:
> $$
> A = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix}, \qquad B = \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix}
> $$
> I rispettivi determinanti valgono:
> $$
> \det(A) = 1 \cdot 0 - 0 \cdot 0 = 0, \qquad \det(B) = 0 \cdot 1 - 0 \cdot 0 = 0
> $$
> La loro somma è la matrice identità $I_2$:
> $$
> A + B = \begin{pmatrix} 1 & 0 \\ 0 & 0 \end{pmatrix} + \begin{pmatrix} 0 & 0 \\ 0 & 1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2
> $$
> Calcolando il determinante della somma:
> $$
> \det(A + B) = \det(I_2) = 1
> $$
> mentre la somma dei singoli determinanti risulta:
> $$
> \det(A) + \det(B) = 0 + 0 = 0
> $$
> Poiché $1 \neq 0$, si conclude che:
> $$
> \det(A + B) \neq \det(A) + \det(B)
> $$
>
### Invarianza per Trasposizione

> [!proposition] Invarianza rispetto alla Trasposizione
> Per ogni matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, il determinante coincide con quello della matrice trasposta:
> $$
> \det(A) = \det(A^T)
> $$

> [!note] Equivalenza tra Righe e Colonne
> Poiché la formula di Laplace per righe su $A$ corrisponde esattamente alla formula di Laplace per colonne su $A^T$, ogni teorema, proprietà o algoritmo enunciato e dimostrato per le righe di una matrice vale identicamente anche per le sue colonne.
>
### Multilinearità del Determinante

> [!proposition] Multilinearità rispetto a Righe e Colonne
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ scritta mediante le sue righe:
> $$
> A = \begin{pmatrix} R_1 \\ \vdots \\ R_n \end{pmatrix}, \qquad R_j \in \mathbb{R}^n \quad \forall j = 1, \dots, n
> $$
> Se la riga $i$-esima è espressa come combinazione lineare di due vettori riga $\mathbf{v}, \mathbf{w} \in \mathbb{R}^n$ con scalari $c, d \in \mathbb{R}$, ovvero $R_i = c \mathbf{v} + d \mathbf{w}$, allora il determinante è lineare rispetto a tale riga:
> $$
> \det \begin{pmatrix} R_1 \\ \vdots \\ c \mathbf{v} + d \mathbf{w} \\ \vdots \\ R_n \end{pmatrix} = c \cdot \det \begin{pmatrix} R_1 \\ \vdots \\ \mathbf{v} \\ \vdots \\ R_n \end{pmatrix} + d \cdot \det \begin{pmatrix} R_1 \\ \vdots \\ \mathbf{w} \\ \vdots \\ R_n \end{pmatrix}
> $$
> Per la proprietà di invarianza per trasposizione, la medesima proprietà di multilinearità vale rispetto a ciascuna colonna.

> [!example] Decomposizione di una Riga per Semplificare il Calcolo
> Si consideri il vettore riga $R_2 = (2, 2, 3)$, decomponibile come:
> $$
> (2, 2, 3) = 2(1, 1, 0) + 3(0, 0, 1)
> $$
> Applicando la multilinearità al determinante della matrice:
> $$
> \det \begin{pmatrix} 7 & 8 & 9 \\ 2 & 2 & 3 \\ 5 & 6 & 7 \end{pmatrix} = 2 \det \begin{pmatrix} 7 & 8 & 9 \\ 1 & 1 & 0 \\ 5 & 6 & 7 \end{pmatrix} + 3 \det \begin{pmatrix} 7 & 8 & 9 \\ 0 & 0 & 1 \\ 5 & 6 & 7 \end{pmatrix}
> $$
> La comparsa di zeri nelle matrici decomposte semplifica notevolmente il calcolo dei determinanti tramite Laplace.

> [!corollary] Determinante del Prodotto per uno Scalare
> Se $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ e $c \in \mathbb{R}$, allora:
> $$
> \det(cA) = c^n \det(A)
> $$

> [!quote]- Dimostrazione
> La matrice $cA$ si ottiene moltiplicando ogni elemento di ciascuna delle sue $n$ righe per lo scalare $c$:
> $$
> cA = \begin{pmatrix}
> c a_{1,1} & \cdots & c a_{1,n} \\
> c a_{2,1} & \cdots & c a_{2,n} \\
> \vdots & \ddots & \vdots \\
> c a_{n,1} & \cdots & c a_{n,n}
> \end{pmatrix}
> $$
> Raccogliendo il fattore $c$ dalla prima riga per la proprietà di multilinearità:
> $$
> \det(cA) = c \cdot \det \begin{pmatrix}
> a_{1,1} & \cdots & a_{1,n} \\
> c a_{2,1} & \cdots & c a_{2,n} \\
> \vdots & \ddots & \vdots \\
> c a_{n,1} & \cdots & c a_{n,n}
> \end{pmatrix}
> $$
> Ripetendo il raccoglimento per ciascuna delle $n$ righe:
> $$
> \det(cA) = \underbrace{c \cdot c \cdots c}_{n \text{ volte}} \cdot \det \begin{pmatrix}
> a_{1,1} & \cdots & a_{1,n} \\
> a_{2,1} & \cdots & a_{2,n} \\
> \vdots & \ddots & \vdots \\
> a_{n,1} & \cdots & a_{n,n}
> \end{pmatrix} = c^n \det(A) \qquad \blacksquare
> $$

> [!note] Determinante come Applicazione Lineare a Righe Fissate
> Fissando tutte le righe e colonne tranne una all'interno di una matrice quadrata $n \times n$, il determinante definisce un'applicazione lineare da $\mathbb{R}^n$ a $\mathbb{R}$.
> Ad esempio, fissando la prima e la terza colonna:
> $$
> L: \mathbb{R}^3 \to \mathbb{R}, \qquad L \begin{pmatrix} x \\ y \\ z \end{pmatrix} = \det \begin{pmatrix} 1 & x & 5 \\ 2 & y & 7 \\ 8 & z & -1 \end{pmatrix}
> $$
> L'applicazione $L$ è lineare.
>
### Proprietà Alternante

> [!proposition] Proprietà Alternante
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ e sia $B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ la matrice ottenuta scambiando tra loro due righe o due colonne di $A$. Allora:
> $$
> \det(B) = - \det(A)
> $$

> [!example] Verifica nel Caso $2 \times 2$
> Siano le matrici $A$ e $B$, dove $B$ è ottenuta scambiando le due righe di $A$:
> $$
> A = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \xrightarrow{R_1 \leftrightarrow R_2} B = \begin{pmatrix} c & d \\ a & b \end{pmatrix}
> $$
> Calcolando i rispettivi determinanti:
> $$
> \det(A) = ad - bc, \qquad \det(B) = cb - ad = - (ad - bc) = - \det(A)
> $$

> [!corollary] Determinante Nullo con Righe o Colonne Uguali
> Se una matrice quadrata $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ possiede due righe o due colonne identiche, allora il suo determinante è nullo:
> $$
> \det(A) = 0
> $$

> [!quote]- Dimostrazione
> Siano $R_i = R_j$ (con $i \neq j$) due righe identiche di $A$. Scambiando tra loro queste due righe, la matrice risultante $B$ coincide con la matrice di partenza ($B = A$), dunque:
> $$
> \det(B) = \det(A)
> $$
> D'altra parte, per la proprietà alternante lo scambio di due righe impone un cambio di segno:
> $$
> \det(B) = - \det(A)
> $$
> Uguagliando le due relazioni:
> $$
> \det(A) = - \det(A) \implies 2 \det(A) = 0 \implies \det(A) = 0 \qquad \blacksquare
> $$
>
## 4.6. Matrici Triangolari e Diagonali

### Definizioni Strutturali

> [!definition] Matrici Triangolari e Diagonali
> Sia $A = (a_{i,j}) \in \mathrm{Mat}_{\mathbb{R}}(n, n)$. La matrice $A$ si dice:
> 1. **Triangolare superiore** se tutti gli elementi situati sotto la diagonale principale sono nulli:
>    $$
>    a_{i,j} = 0 \quad \forall i > j
>    $$
> 2. **Triangolare inferiore** se tutti gli elementi situati sopra la diagonale principale sono nulli:
>    $$
>    a_{i,j} = 0 \quad \forall i < j
>    $$
> 3. **Diagonale** se tutti gli elementi al di fuori della diagonale principale sono nulli:
>    $$
>    a_{i,j} = 0 \quad \forall i \neq j
>    $$

> [!example] Forme Canoniche $3 \times 3$
> $$
> A_{\text{triang. sup.}} = \begin{pmatrix} 1 & 2 & 3 \\ 0 & 4 & 5 \\ 0 & 0 & 6 \end{pmatrix}, \qquad
> A_{\text{triang. inf.}} = \begin{pmatrix} 1 & 0 & 0 \\ 2 & 3 & 0 \\ 4 & 5 & 6 \end{pmatrix}, \qquad
> A_{\text{diagonale}} = \begin{pmatrix} 1 & 0 & 0 \\ 0 & 2 & 0 \\ 0 & 0 & 3 \end{pmatrix}
> $$
>
### Determinante di Matrici Triangolari e Diagonali

> [!proposition] Determinante di una Matrice Triangolare o Diagonale
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$. Se $A$ è triangolare superiore, triangolare inferiore oppure diagonale, il suo determinante è pari al prodotto degli elementi sulla diagonale principale:
> $$
> \det(A) = \prod_{i=1}^n a_{i,i} = a_{1,1} \cdot a_{2,2} \cdots a_{n,n}
> $$

> [!quote]- Dimostrazione
> Si consideri, senza perdita di generalità, una matrice triangolare superiore:
> $$
> A = \begin{pmatrix}
> a_{1,1} & a_{1,2} & \cdots & a_{1,n} \\
> 0 & a_{2,2} & \cdots & a_{2,n} \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \cdots & a_{n,n}
> \end{pmatrix}
> $$
> Per calcolare $\det(A)$, applichiamo lo sviluppo di Laplace lungo la prima colonna ($j = 1$):
> $$
> \det(A) = \sum_{i=1}^n (-1)^{i+1} a_{i,1} \det(\hat{A}_{i,1})
> $$
> Poiché $a_{i,1} = 0$ per ogni $i > 1$, l'unico elemento non nullo della colonna è $a_{1,1}$:
> $$
> \det(A) = (-1)^2 a_{1,1} \det(\hat{A}_{1,1}) = a_{1,1} \det(\hat{A}_{1,1})
> $$
> La sottomatrice $\hat{A}_{1,1} \in \mathrm{Mat}_{\mathbb{R}}(n-1, n-1)$ è data da:
> $$
> \hat{A}_{1,1} = \begin{pmatrix}
> a_{2,2} & a_{2,3} & \cdots & a_{2,n} \\
> 0 & a_{3,3} & \cdots & a_{3,n} \\
> \vdots & \vdots & \ddots & \vdots \\
> 0 & 0 & \cdots & a_{n,n}
> \end{pmatrix}
> $$
> Tale sottomatrice è ancora triangolare superiore. Sviluppando a sua volta lungo la sua prima colonna:
> $$
> \det(\hat{A}_{1,1}) = a_{2,2} \det(\hat{A}_{\{1,2\},\{1,2\}})
> $$
> Reiterando il procedimento per induzione su tutte le $n$ colonne:
> $$
> \det(A) = a_{1,1} \cdot a_{2,2} \cdot a_{3,3} \cdots a_{n,n} = \prod_{i=1}^n a_{i,i} \qquad \blacksquare
> $$
>
## 4.7. Determinante e Mosse di Gauss

### Effetto delle Operazioni Elementari di Riga

> [!proposition] Determinante e Mosse di Gauss
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ e sia $A'$ la matrice ottenuta applicando una mossa di Gauss sulle righe:
> 1. **Scambio di due righe ($R_i \leftrightarrow R_j$):**
>    $$
>    A \xrightarrow{R_i \leftrightarrow R_j} A' \implies \det(A') = - \det(A)
>    $$
> 2. **Moltiplicazione di una riga per uno scalare non nullo ($c R_i$ con $c \neq 0$):**
>    $$
>    A \xrightarrow{c R_i} A' \implies \det(A') = c \det(A)
>    $$
> 3. **Aggiunta a una riga del multiplo di un'altra riga ($R_i + c R_j$ con $i \neq j$):**
>    $$
>    A \xrightarrow{R_i + c R_j} A' \implies \det(A') = \det(A)
>    $$

> [!quote]- Dimostrazione
> 1. La prima proprietà è la trascrizione diretta della proprietà alternante del determinante.
> 2. La seconda proprietà è la conseguenza diretta della multilinearità del determinante rispetto alla riga $R_i$.
> 3. Per la terza mossa, calcoliamo il determinante di $A'$ sfruttando la multilinearità rispetto alla riga $i$-esima modificata:
>    $$
>    \det(A') = \det \begin{pmatrix} R_1 \\ \vdots \\ R_i + c R_j \\ \vdots \\ R_j \\ \vdots \\ R_n \end{pmatrix} = \det \begin{pmatrix} R_1 \\ \vdots \\ R_i \\ \vdots \\ R_j \\ \vdots \\ R_n \end{pmatrix} + c \cdot \det \begin{pmatrix} R_1 \\ \vdots \\ R_j \\ \vdots \\ R_j \\ \vdots \\ R_n \end{pmatrix}
>    $$
>    La seconda matrice a secondo membro possiede due righe identiche alla posizione $i$ e alla posizione $j$. Per il corollario sulla proprietà alternante, il suo determinante è nullo. Dunque:
>    $$
>    \det(A') = \det(A) + c \cdot 0 = \det(A) \qquad \blacksquare
>    $$
>
## 4.8. Criteri di Rango e Invertibilità

### Determinante e Rango di Matrici Quadrate

> [!corollary] Criterio di Rango Massimo
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$. Allora:
> $$
> \det(A) \neq 0 \iff \mathrm{rk}(A) = n
> $$
> Di conseguenza:
> $$
> \det(A) = 0 \iff \mathrm{rk}(A) < n \iff A \text{ ha righe o colonne linearmente dipendenti}
> $$
>
### Teorema delle Condizioni Equivalenti per Matrici Quadrate

> [!theorem] Condizioni Equivalenti per l'Invertibilità
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ una matrice quadrata d'ordine $n$. Le seguenti condizioni sono mutuamente equivalenti:
> 1. $\det(A) \neq 0$;
> 2. $\mathrm{rk}(A) = n$;
> 3. La matrice $A$ è invertibile;
> 4. Il sistema lineare $A\mathbf{x} = \mathbf{b}$ ammette una e una sola soluzione per ogni $\mathbf{b} \in \mathbb{R}^n$;
> 5. Il nucleo della matrice è banale: $\mathrm{Ker}(A) = \{\mathbf{0}\}$;
> 6. Le righe e le colonne di $A$ sono linearmente indipendenti (L.I.);
> 7. $\mathrm{col}(A) = \mathbb{R}^n$ e $\mathrm{row}(A) = \mathbb{R}^n$;
> 8. L'applicazione lineare associata $T_A: \mathbb{R}^n \to \mathbb{R}^n$ è un isomorfismo.
>
### Inversa di una Matrice $2 \times 2$

> [!proposition] Formula Esplicita dell'Inversa di Ordine 2
> Sia $A = \begin{pmatrix} a & b \\ c & d \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(2, 2)$. La matrice $A$ è invertibile se e solo se:
> $$
> \det(A) \neq 0 \iff ad - bc \neq 0
> $$
> In tal caso, la matrice inversa è data da:
> $$
> A^{-1} = \frac{1}{\det(A)} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} = \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix}
> $$

> [!quote]- Dimostrazione (Verifica Diretta)
> Verifichiamo che il prodotto $A \cdot A^{-1}$ è la matrice identità $I_2$:
> $$
> \begin{align}
> A \cdot A^{-1} &= \begin{pmatrix} a & b \\ c & d \end{pmatrix} \left[ \frac{1}{ad - bc} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} \right] \\
> &= \frac{1}{ad - bc} \begin{pmatrix} a & b \\ c & d \end{pmatrix} \begin{pmatrix} d & -b \\ -c & a \end{pmatrix} \\
> &= \frac{1}{ad - bc} \begin{pmatrix} ad - bc & -ab + ba \\ cd - dc & -bc + ad \end{pmatrix} \\
> &= \frac{1}{ad - bc} \begin{pmatrix} ad - bc & 0 \\ 0 & ad - bc \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2 \qquad \blacksquare
> \end{align}
> $$
>
## 4.9. Teorema di Binet e Teorema degli Orlati

### Teorema di Binet e Determinante dell'Inversa

> [!theorem] Teorema di Binet
> Siano $A, B \in \mathrm{Mat}_{\mathbb{R}}(n, n)$. Il determinante del prodotto di due matrici quadrate è il prodotto dei singoli determinanti:
> $$
> \det(AB) = \det(A) \det(B)
> $$

> [!corollary] Determinante della Matrice Inversa
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ invertibile. Allora:
> $$
> \det(A^{-1}) = \frac{1}{\det(A)}
> $$

> [!quote]- Dimostrazione
> Per definizione di matrice inversa si ha $A A^{-1} = I_n$. Applicando il determinante ad entrambi i membri ed utilizzando il Teorema di Binet:
> $$
> \det(A A^{-1}) = \det(I_n) \implies \det(A) \det(A^{-1}) = 1
> $$
> Essendo $A$ invertibile, $\det(A) \neq 0$. Dividendo ambo i membri per $\det(A)$:
> $$
> \det(A^{-1}) = \frac{1}{\det(A)} \qquad \blacksquare
> $$
>
### Teorema degli Orlati (Kronecker)

> [!theorem] Teorema degli Orlati
> Sia $A \in \mathrm{Mat}_{\mathbb{R}}(m, n)$ una matrice rettangolare non necessariamente quadrata.
> Il rango di $A$ è pari alla massima dimensione di una sottomatrice quadrata estratta da $A$ avente determinante non nullo:
> $$
> \mathrm{rk}(A) = \max \left\{ r \in \mathbb{N} : \exists B \subseteq A \text{ con } B \in \mathrm{Mat}_{\mathbb{R}}(r, r) \land \det(B) \neq 0 \right\}
> $$

> [!example] Calcolo del Rango tramite Sottomatrici
> Sia la matrice $3 \times 4$:
> $$
> A = \begin{pmatrix}
> 1 & 2 & 3 & 4 \\
> 2 & 4 & 6 & 0 \\
> 3 & 6 & 9 & 12
> \end{pmatrix}
> $$
> Si nota immediatamente che la terza riga è tre volte la prima ($R_3 = 3 R_1$), pertanto le righe sono linearmente dipendenti e $\mathrm{rk}(A) < 3$.
> Per verificare se il rango è 2, si cerca una sottomatrice $2 \times 2$ con determinante non nullo. Considerando le colonne 3 e 4 e le prime due righe:
> $$
> B = \begin{pmatrix} 3 & 4 \\ 6 & 0 \end{pmatrix} \subseteq A \implies \det(B) = (3)(0) - (4)(6) = -24 \neq 0
> $$
> Poiché esiste una sottomatrice $2 \times 2$ invertibile e tutte le sottomatrici $3 \times 3$ hanno determinante nullo (a causa di $R_3 = 3 R_1$), si conclude che:
> $$
> \mathrm{rk}(A) = 2
> $$
>
### Studio del Rango di una Matrice Parametrica

> [!example] Rango di una Matrice $3 \times 3$ al Variare di $k$
> Sia data la matrice quadrata dipendente dal parametro $k \in \mathbb{R}$:
> $$
> A = \begin{pmatrix}
> 1 & k+2 & 0 \\
> k^2-1 & 0 & 4-k \\
> 1 & 2k-3 & 0
> \end{pmatrix} \in \mathrm{Mat}_{\mathbb{R}}(3, 3)
> $$
> Si determini $\mathrm{rk}(A)$ al variare di $k \in \mathbb{R}$.
> 
> **Calcolo di $\det(A)$ con la regola di Sarrus:**
> $$
> \begin{pmatrix}
> 1 & k+2 & 0 & \big| & 1 & k+2 \\
> k^2-1 & 0 & 4-k & \big| & k^2-1 & 0 \\
> 1 & 2k-3 & 0 & \big| & 1 & 2k-3
> \end{pmatrix}
> $$
> - Somma dei prodotti lungo le diagonali discendenti:
>   $$
>   1 \cdot 0 \cdot 0 + (k+2)(4-k)(1) + 0 \cdot (k^2-1)(2k-3) = (k+2)(4-k)
>   $$
> - Somma dei prodotti lungo le diagonali ascendenti:
>   $$
>   1 \cdot 0 \cdot 0 + (2k-3)(4-k)(1) + 0 \cdot (k^2-1)(k+2) = (2k-3)(4-k)
>   $$
> Sottraendo i due contributi:
> $$
> \begin{align}
> \det(A) &= (k+2)(4-k) - (2k-3)(4-k) \\
> &= (4-k) \big[ (k+2) - (2k-3) \big] \\
> &= (4-k) (k + 2 - 2k + 3) \\
> &= (4-k)(-k+5) = (4-k)(5-k)
> \end{align}
> $$
> 
> **Discussione al variare del parametro $k$:**
> - **Caso 1 ($k \neq 4$ e $k \neq 5$):**
>   Il determinante è non nullo:
>   $$
>   (4-k)(5-k) \neq 0 \iff k \neq 4 \land k \neq 5 \iff \mathrm{rk}(A) = 3
>   $$
> - **Caso 2 ($k = 4$):**
>   Sostituendo $k = 4$ nella matrice di partenza:
>   $$
>   A = \begin{pmatrix}
>   1 & 6 & 0 \\
>   15 & 0 & 0 \\
>   1 & 5 & 0
>   \end{pmatrix}
>   $$
>   La terza colonna è interamente nulla. Riducendo a scala:
>   $$
>   \begin{pmatrix}
>   1 & 6 & 0 \\
>   15 & 0 & 0 \\
>   1 & 5 & 0
>   \end{pmatrix} \longrightarrow \begin{pmatrix}
>   0 & 1 & 0 \\
>   1 & 0 & 0 \\
>   0 & 0 & 0
>   \end{pmatrix}
>   $$
>   Esiste la sottomatrice $2 \times 2$ con determinante non nullo:
>   $$
>   \det \begin{pmatrix} 1 & 6 \\ 15 & 0 \end{pmatrix} = -90 \neq 0 \implies \mathrm{rk}(A) = 2
>   $$
> - **Caso 3 ($k = 5$):**
>   Sostituendo $k = 5$ nella matrice di partenza:
>   $$
>   A = \begin{pmatrix}
>   1 & 7 & 0 \\
>   24 & 0 & -1 \\
>   1 & 7 & 0
>   \end{pmatrix}
>   $$
>   La prima e la terza riga sono uguali ($R_1 = R_3$):
>   $$
>   \longrightarrow \begin{pmatrix}
>   1 & 7 & 0 \\
>   24 & 0 & -1
>   \end{pmatrix}
>   $$
>   Le due righe superstiti sono linearmente indipendenti (minore $\det \begin{pmatrix} 1 & 7 \\ 24 & 0 \end{pmatrix} = -168 \neq 0$), dunque:
>   $$
>   \mathrm{rk}(A) = 2
>   $$
>
