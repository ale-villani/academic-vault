---
title: "Ottimizzazione (Libera, Vincolata e Teorema del Dini)"
domain: "math/multivariate-analysis"
source_course: "Analisi 2 (Cap. 2-3)"
tags:
  - math/multivariate/optimization
  - math/multivariate/dini
  - math/multivariate/lagrange-multipliers
---

# 2. Ottimizzazione Libera in $\mathbb{R}^n$

## 2.9. Ottimizzazione libera in $\mathbb{R}^n$ e Teorema di Fermat

I problemi di ottimizzazione riguardano la ricerca dei massimi e minimi di un campo scalare $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$.
Nel caso dell'**ottimizzazione libera**, il dominio $A$ è un insieme **aperto**, per cui non sono presenti vincoli di frontiera da considerare.

> [!example] Esempio motivazionale (Ricerca del baricentro geometrico)
> Sia $A \subseteq \mathbb{R}^3$ un insieme aperto. Dati $n$ punti $P_1, \dots, P_n \in \mathbb{R}^3$, si vuole trovare il punto che minimizza la somma delle distanze:
> $$
> f(x, y, z) = \sum_{i=1}^n d\left( \begin{pmatrix} x \\ y \\ z \end{pmatrix}, P_i \right)
> $$
> Si tratta di un classico problema di estremo libero su insieme aperto.
>

### Definizioni di estremi globali e locali

> [!definition] Punti di massimo e minimo (globali e locali)
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$.
>
> 1. **Massimo globale (assoluto):** $\mathbf{x}_0$ è punto di massimo globale se:
>    $$
>    f(\mathbf{x}_0) \ge f(\mathbf{x}), \qquad \forall \mathbf{x} \in A
>    $$
> 2. **Minimo globale (assoluto):** $\mathbf{x}_0$ è punto di minimo globale se:
>    $$
>    f(\mathbf{x}_0) \le f(\mathbf{x}), \qquad \forall \mathbf{x} \in A
>    $$
> 3. **Massimo locale (relativo):** $\mathbf{x}_0$ è punto di massimo locale se esiste un raggio $R > 0$ tale che la palla $B_R(\mathbf{x}_0) \subseteq A$ e:
>    $$
>    f(\mathbf{x}_0) \ge f(\mathbf{x}), \qquad \forall \mathbf{x} \in B_R(\mathbf{x}_0)
>    $$
> 4. **Minimo locale (relativo):** $\mathbf{x}_0$ è punto di minimo locale se esiste un raggio $R > 0$ tale che la palla $B_R(\mathbf{x}_0) \subseteq A$ e:
>    $$
>    f(\mathbf{x}_0) \le f(\mathbf{x}), \qquad \forall \mathbf{x} \in B_R(\mathbf{x}_0)
>    $$
> 5. **Punto di estremo:** $\mathbf{x}_0$ è detto generico punto di estremo (locale o globale) se è un punto di massimo o di minimo.

> [!definition] Punto stazionario (o critico)
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$ derivabile in $\mathbf{x}_0 \in A$.
> Il punto $\mathbf{x}_0$ si dice **punto stazionario** (o critico) se il gradiente di $f$ si annulla in esso:
> $$
> \nabla f(\mathbf{x}_0) = \mathbf{0}
> $$
> Geometricamente, ciò corrisponde all'esistenza di un **piano tangente orizzontale** al grafico $z = f(\mathbf{x})$, parallelo all'iperpiano coordinato delle variabili indipendenti.
>
### Teorema di Fermat in $\mathbb{R}^n$

> [!theorem] Teorema di Fermat in $\mathbb{R}^n$ (Condizione necessaria del primo ordine)
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e sia $\mathbf{x}_0 \in A$. Supponiamo che $f$ sia derivabile in $\mathbf{x}_0$.
> Se $\mathbf{x}_0$ è un punto di estremo locale (massimo o minimo locale), allora $\mathbf{x}_0$ è un punto stazionario:
> $$
> \nabla f(\mathbf{x}_0) = \mathbf{0}
> $$

> [!quote]- Dimostrazione
> Supponiamo senza perdita di generalità che $\mathbf{x}_0$ sia un punto di massimo locale (la dimostrazione per il minimo è identica invertendo i versi delle disuguaglianze).
> Per definizione di massimo locale, esiste $R > 0$ tale che $B_R(\mathbf{x}_0) \subseteq A$ e:
> $$
> f(\mathbf{x}_0) \ge f(\mathbf{x}), \qquad \forall \mathbf{x} \in B_R(\mathbf{x}_0)
> $$
> Scriviamo il vettore $\mathbf{x}_0$ nelle sue coordinate canoniche:
> $$
> \mathbf{x}_0 = \begin{pmatrix} x_{01} \\ x_{02} \\ \vdots \\ x_{0n} \end{pmatrix}
> $$
> Per ogni direzione coordinata $i \in \{1, \dots, n\}$, consideriamo la restrizione scalare $g_i$ definita sull'intervallo reale $(x_{0i} - R, \, x_{0i} + R)$ congelando tutte le altre $n-1$ variabili:
> $$
> g_i(x) := f(x_{01}, \dots, x_{0, i-1}, \, x, \, x_{0, i+1}, \dots, x_{0n})
> $$
> Poiché per ogni $x \in (x_{0i} - R, x_{0i} + R)$ il punto $(x_{01}, \dots, x, \dots, x_{0n})$ appartiene alla palla $B_R(\mathbf{x}_0)$, vale:
> $$
> g_i(x_{0i}) = f(\mathbf{x}_0) \ge g_i(x), \qquad \forall x \in (x_{0i} - R, \, x_{0i} + R)
> $$
> Dunque $x_{0i}$ è un punto di massimo locale interno per la funzione monovariabile $g_i$.
> Per ipotesi, $f$ è derivabile in $\mathbf{x}_0$, quindi $g_i$ è derivabile in $x_{0i}$ e la sua derivata coincide per definizione con la derivata parziale $i$-esima di $f$:
> $$
> g_i'(x_{0i}) = \frac{\partial f}{\partial x_i}(\mathbf{x}_0)
> $$
> Applicando il classico Teorema di Fermat unidimensionale in $\mathbb{R}$ (Analisi 1), la derivata di $g_i$ nel punto di estremo interno deve annullarsi:
> $$
> g_i'(x_{0i}) = \frac{\partial f}{\partial x_i}(\mathbf{x}_0) = 0
> $$
> Ripetendo il medesimo ragionamento per ogni $i = 1, \dots, n$, otteniamo che tutte le componenti del gradiente sono nulle:
> $$
> \nabla f(\mathbf{x}_0) = \begin{pmatrix} \frac{\partial f}{\partial x_1}(\mathbf{x}_0) \\ \vdots \\ \frac{\partial f}{\partial x_n}(\mathbf{x}_0) \end{pmatrix} = \begin{pmatrix} 0 \\ \vdots \\ 0 \end{pmatrix} = \mathbf{0}
> $$
> $\blacksquare$

> [!warning] Il Teorema di Fermat fornisce solo una condizione necessaria
> Esattamente come in $\mathbb{R}$, l'annullamento del gradiente $\nabla f(\mathbf{x}_0) = \mathbf{0}$ **non è condizione sufficiente** per garantire l'esistenza di un estremo locale:
> $$
> \nabla f(\mathbf{x}_0) = \mathbf{0} \centernot\implies \mathbf{x}_0 \text{ è punto di estremo}
> $$
> Esistono infatti i **punti di sella**: punti stazionari in cui il piano tangente è orizzontale, ma che non costituiscono né un massimo né un minimo locale (la funzione cresce lungo alcune direzioni e decresce lungo altre).
>
## 2.10. Forme quadratiche, Teorema Spettrale e Criterio di Sylvester

Come possiamo determinare condizioni sufficienti per stabilire la natura dei punti stazionari?
Sia $f \in C^2(A)$ con $A$ aperto, e sia $\mathbf{x}_0$ un punto stazionario ($\nabla f(\mathbf{x}_0) = \mathbf{0}$). Applicando la formula di Taylor con resto di Peano centrata in $\mathbf{x}_0$:
$$
f(\mathbf{x}) - f(\mathbf{x}_0) = \underbrace{\nabla f(\mathbf{x}_0) \cdot (\mathbf{x} - \mathbf{x}_0)}_{= 0} + \frac{1}{2} (\mathbf{x} - \mathbf{x}_0)^T H_f(\mathbf{x}_0) (\mathbf{x} - \mathbf{x}_0) + o(\|\mathbf{x} - \mathbf{x}_0\|^2)
$$
L'incremento $\Delta f = f(\mathbf{x}) - f(\mathbf{x}_0)$ è dominato localmente dalla **forma quadratica** associata alla matrice Hessiana:
$$
\Delta f \approx \frac{1}{2} (\mathbf{x} - \mathbf{x}_0)^T H_f(\mathbf{x}_0) (\mathbf{x} - \mathbf{x}_0)
$$
- Se $\mathbf{x}_0$ è punto di massimo locale: $\Delta f \le 0$ per ogni $\mathbf{x}$ in un intorno di $\mathbf{x}_0$.
- Se $\mathbf{x}_0$ è punto di minimo locale: $\Delta f \ge 0$ per ogni $\mathbf{x}$ in un intorno di $\mathbf{x}_0$.

Il comportamento locale della funzione è interamente governato dal segno della forma quadratica associata all'Hessiana.

### Matrice rappresentativa e corrispondenza biunivoca

> [!definition] Forma quadratica in $\mathbb{R}^n$
> Un polinomio omogeneo di secondo grado nelle $n$ variabili $(x_1, \dots, x_n)$ è detto **forma quadratica** su $\mathbb{R}^n$:
> $$
> q(\mathbf{x}) = \sum_{i=1}^n \sum_{j=1}^n a_{ij} x_i x_j
> $$
>
Esiste una **corrispondenza biunivoca** fondamentale tra le forme quadratiche su $\mathbb{R}^n$ e le matrici quadrate reali simmetriche $n \times n$:

1. **Da matrice simmetrica a forma quadratica ($A \to q$):**
   Sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ una matrice simmetrica ($A = A^T$). Allora l'applicazione definita da:
   $$
   q(\mathbf{x}) := \mathbf{x}^T A \mathbf{x}
   $$
   è una forma quadratica su $\mathbb{R}^n$.
2. **Da forma quadratica a matrice simmetrica ($q \to A$):**
   Sia $q(\mathbf{x}) = \sum_{i, j=1}^n q_{ij} x_i x_j$ una forma quadratica. La sua **matrice rappresentativa simmetrica** $A$ ha entrate date da:
   $$
   A_{ij} = \begin{cases} q_{ii} & \text{se } i = j \\ \dfrac{q_{ij} + q_{ji}}{2} & \text{se } i \ne j \end{cases}
   $$

> [!note] Regola pratica per la matrice simmetrica
> Se la forma quadratica è scritta raccogliendo i termini misti (ad esempio $c \, x_i x_j$ con $i < j$), nella matrice simmetrica il coefficiente $c$ viene diviso equamente tra le posizioni simmetriche fuori diagonale:
> $$
> A_{ij} = A_{ji} = \frac{c}{2}
> $$

> [!example] Esempio in $\mathbb{R}^3$
> Data la forma quadratica:
> $$
> q(\mathbf{x}) = a x_1^2 + b x_1 x_2 + c x_2 x_3 + d x_1 x_3 + e x_2^2 + f x_3^2
> $$
> la sua matrice rappresentativa simmetrica $A = A^T$ è:
> $$
> A = \begin{pmatrix} a & \frac{b}{2} & \frac{d}{2} \\ \frac{b}{2} & e & \frac{c}{2} \\ \frac{d}{2} & \frac{c}{2} & f \end{pmatrix}
> $$
>

### Segnatura e Teorema Spettrale per forme quadratiche

> [!definition] Classificazione del segno delle forme quadratiche
> Sia $q: \mathbb{R}^n \to \mathbb{R}$ una forma quadratica. Si dice che $q$ è:
> 1. **Definita positiva:** se $q(\mathbf{x}) > 0, \quad \forall \mathbf{x} \ne \mathbf{0}$
> 2. **Definita negativa:** se $q(\mathbf{x}) < 0, \quad \forall \mathbf{x} \ne \mathbf{0}$
> 3. **Semidefinita positiva:** se $q(\mathbf{x}) \ge 0, \quad \forall \mathbf{x} \ne \mathbf{0}$, ed esiste almeno un vettore non nullo $\mathbf{x} \ne \mathbf{0}$ tale che $q(\mathbf{x}) = 0$
> 4. **Semidefinita negativa:** se $q(\mathbf{x}) \le 0, \quad \forall \mathbf{x} \ne \mathbf{0}$, ed esiste almeno un vettore non nullo $\mathbf{x} \ne \mathbf{0}$ tale che $q(\mathbf{x}) = 0$
> 5. **Indefinita:** se esistono due vettori non nulli $\mathbf{x}, \mathbf{y} \ne \mathbf{0}$ tali che:
>    $$
>    q(\mathbf{x}) > 0 \qquad \text{e} \qquad q(\mathbf{y}) < 0
>    $$

> [!theorem] Teorema — Caratterizzazione spettrale delle forme quadratiche
> Sia $q: \mathbb{R}^n \to \mathbb{R}$ una forma quadratica e sia $A \in \mathrm{Mat}_{\mathbb{R}}(n, n)$ la sua matrice rappresentativa simmetrica. Siano $\lambda_1, \dots, \lambda_n \in \mathbb{R}$ gli autovalori di $A$ (tutti reali in virtù del Teorema Spettrale). Allora:
> 1. $q$ è **definita positiva** (rispettivamente **definita negativa**) se e solo se tutti i suoi autovalori sono strettamente positivi (rispettivamente strettamente negativi):
>    $$
>    \begin{aligned}
>    q \text{ def. positiva} &\iff \lambda_i > 0, \quad \forall i = 1, \dots, n \\
>    q \text{ def. negativa} &\iff \lambda_i < 0, \quad \forall i = 1, \dots, n
>    \end{aligned}
>    $$
> 2. $q$ è **semidefinita positiva** (rispettivamente **semidefinita negativa**) se e solo se:
>    $$
>    \begin{aligned}
>    q \text{ semidef. positiva} &\iff \lambda_i \ge 0 \; (\forall i) \quad \land \quad \exists j: \lambda_j = 0 \quad \land \quad \exists k: \lambda_k > 0 \\
>    q \text{ semidef. negativa} &\iff \lambda_i \le 0 \; (\forall i) \quad \land \quad \exists j: \lambda_j = 0 \quad \land \quad \exists k: \lambda_k < 0
>    \end{aligned}
>    $$
> 3. $q$ è **indefinita** se e solo se esistono almeno due autovalori di segno strettamente discorde:
>    $$
>    q \text{ indefinita} \iff \exists i, j \in \{1, \dots, n\} : \lambda_i > 0 \quad \land \quad \lambda_j < 0
>    $$
>
### Stima variazionale di Rayleigh-Ritz

> [!proposition] Disuguaglianza variazionale per forme quadratiche
> Sia $q(\mathbf{x}) = \mathbf{x}^T A \mathbf{x}$ una forma quadratica con matrice reale simmetrica $A$ avente autovalori $\lambda_1, \dots, \lambda_n$.
> Allora per ogni vettore $\mathbf{x} \in \mathbb{R}^n$ vale la stima:
> $$
> \left( \min_{i=1,\dots,n} \lambda_i \right) \|\mathbf{x}\|^2 \le q(\mathbf{x}) \le \left( \max_{i=1,\dots,n} \lambda_i \right) \|\mathbf{x}\|^2
> $$

> [!quote]- Dimostrazione
> La matrice $A$ è reale e simmetrica ($A = A^T$). Per il **Teorema Spettrale**, $A$ è ortogonalmente diagonalizzabile: esiste una matrice ortogonale $S \in \mathrm{Mat}_{\mathbb{R}}(n, n)$, con $S^T = S^{-1}$ (dunque $S^T S = S S^T = I$), tale che:
> $$
> S^T A S = \Lambda := \begin{pmatrix} \lambda_1 & 0 & \dots & 0 \\ 0 & \lambda_2 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & \lambda_n \end{pmatrix}
> $$
> Effettuiamo il cambio di coordinate ortogonale ponendo $\mathbf{x} = S \mathbf{w}$, da cui $\mathbf{w} = S^T \mathbf{x} \in \mathbb{R}^n$.
> Sostituendo nell'espressione della forma quadratica:
> $$
> \mathbf{x}^T A \mathbf{x} = (S \mathbf{w})^T A (S \mathbf{w}) = \mathbf{w}^T (S^T A S) \mathbf{w} = \mathbf{w}^T \Lambda \mathbf{w}
> $$
> Esplicitando il prodotto con la matrice diagonale $\Lambda$:
> $$
> \mathbf{w}^T \Lambda \mathbf{w} = \sum_{i=1}^n \lambda_i w_i^2
> $$
> Poiché per ogni indice $i \in \{1, \dots, n\}$ si ha banalmente:
> $$
> \min_{j=1,\dots,n} \{\lambda_j\} \le \lambda_i \le \max_{j=1,\dots,n} \{\lambda_j\}
> $$
> moltiplicando ciascuna disuguaglianza per la quantità non negativa $w_i^2 \ge 0$ e sommando su tutti gli indici $i = 1, \dots, n$:
> $$
> \left( \min_{j=1,\dots,n} \lambda_j \right) \sum_{i=1}^n w_i^2 \le \sum_{i=1}^n \lambda_i w_i^2 \le \left( \max_{j=1,\dots,n} \lambda_j \right) \sum_{i=1}^n w_i^2
> $$
> ovvero:
> $$
> \left( \min_{i=1,\dots,n} \lambda_i \right) \|\mathbf{w}\|^2 \le \mathbf{x}^T A \mathbf{x} \le \left( \max_{i=1,\dots,n} \lambda_i \right) \|\mathbf{w}\|^2
> $$
> Calcoliamo ora la norma euclidea di $\mathbf{w}$:
> $$
> \|\mathbf{w}\|^2 = \langle \mathbf{w}, \mathbf{w} \rangle = (S^T \mathbf{x})^T (S^T \mathbf{x}) = \mathbf{x}^T (S S^T) \mathbf{x}
> $$
> Poiché la matrice $S$ è ortogonale, $S S^T = I$, da cui segue l'invarianza isometrica:
> $$
> \|\mathbf{w}\|^2 = \mathbf{x}^T I \mathbf{x} = \|\mathbf{x}\|^2
> $$
> Sostituendo $\|\mathbf{w}\|^2 = \|\mathbf{x}\|^2$, otteniamo la tesi:
> $$
> \left( \min_{i=1,\dots,n} \lambda_i \right) \|\mathbf{x}\|^2 \le q(\mathbf{x}) \le \left( \max_{i=1,\dots,n} \lambda_i \right) \|\mathbf{x}\|^2
> $$
> $\blacksquare$
>
### Criterio di Sylvester per forme quadratiche in $\mathbb{R}^2$

Consideriamo il caso bidimensionale $n=2$. Sia $q: \mathbb{R}^2 \to \mathbb{R}$ la forma quadratica data da:
$$
q(\mathbf{x}) = a x_1^2 + 2b x_1 x_2 + c x_2^2
$$
La corrispondente matrice simmetrica è:
$$
A = \begin{pmatrix} a & b \\ b & c \end{pmatrix}
$$
Il polinomio caratteristico associato ad $A$ è:
$$
\chi_A(t) = \det(A - t I) = \begin{vmatrix} a - t & b \\ b & c - t \end{vmatrix} = (a - t)(c - t) - b^2 = t^2 - (a + c)t + (ac - b^2)
$$
Riconosciamo la traccia $\mathrm{tr}(A) = a + c$ e il determinante $\det(A) = ac - b^2$:
$$
\chi_A(t) = t^2 - \mathrm{tr}(A) \, t + \det(A)
$$
D'altra parte, fattorizzando il polinomio caratteristico rispetto ai due autovalori $\lambda_1, \lambda_2 \in \mathbb{R}$:
$$
(t - \lambda_1)(t - \lambda_2) = t^2 - (\lambda_1 + \lambda_2) t + \lambda_1 \lambda_2
$$
Confrontando termine a termine otteniamo le classiche relazioni:
$$
\begin{aligned}
\mathrm{tr}(A) &= \lambda_1 + \lambda_2 \quad (\text{somma degli autovalori}) \\
\det(A) &= \lambda_1 \lambda_2 \quad (\text{prodotto degli autovalori})
\end{aligned}
$$

> [!proposition] Criterio di Sylvester in dimensione 2 (Traccia e Determinante)
> Sia $q: \mathbb{R}^2 \to \mathbb{R}$ una forma quadratica con matrice simmetrica associata $A = \begin{pmatrix} a & b \\ b & c \end{pmatrix}$.
> Il segno di $q$ è determinato unicamente da $\det(A)$ e $\mathrm{tr}(A)$ (o dal segno del primo elemento diagonale $a$):
>
> 1. **Definita positiva:**
>    $$
>    q \text{ def. positiva} \iff \begin{cases} \det(A) > 0 \\ \mathrm{tr}(A) > 0 \end{cases} \iff \begin{cases} \det(A) > 0 \\ a > 0 \end{cases}
>    $$
> 2. **Definita negativa:**
>    $$
>    q \text{ def. negativa} \iff \begin{cases} \det(A) > 0 \\ \mathrm{tr}(A) < 0 \end{cases} \iff \begin{cases} \det(A) > 0 \\ a < 0 \end{cases}
>    $$
> 3. **Semidefinita positiva:**
>    $$
>    q \text{ semidef. positiva} \iff \begin{cases} \det(A) = 0 \\ \mathrm{tr}(A) > 0 \end{cases}
>    $$
> 4. **Semidefinita negativa:**
>    $$
>    q \text{ semidef. negativa} \iff \begin{cases} \det(A) = 0 \\ \mathrm{tr}(A) < 0 \end{cases}
>    $$
> 5. **Indefinita:**
>    $$
>    q \text{ indefinita} \iff \det(A) < 0
>    $$
>
## 2.11. Criterio della matrice Hessiana per la classificazione dei punti stazionari

> [!theorem] Teorema — Criterio della matrice Hessiana
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, $f \in C^2(A)$, e sia $\mathbf{x}_0 \in A$ un punto stazionario ($\nabla f(\mathbf{x}_0) = \mathbf{0}$).
> Consideriamo la matrice Hessiana $H_f(\mathbf{x}_0)$ e la forma quadratica associata $q(\mathbf{h}) = \mathbf{h}^T H_f(\mathbf{x}_0) \mathbf{h}$. Allora:
>
> 1. Se $q$ è **definita positiva** (tutti gli autovalori $\lambda_i > 0$):
>    $$
>    \mathbf{x}_0 \text{ è un punto di \textbf{minimo locale stretto}}
>    $$
> 2. Se $q$ è **definita negativa** (tutti gli autovalori $\lambda_i < 0$):
>    $$
>    \mathbf{x}_0 \text{ è un punto di \textbf{massimo locale stretto}}
>    $$
> 3. Se $q$ è **indefinita** (esistono almeno due autovalori di segno opposto, $\exists \lambda_i > 0, \lambda_j < 0$):
>    $$
>    \mathbf{x}_0 \text{ è un punto di \textbf{sella}}
>    $$

> [!warning] Caso degenere: Hessiana semidefinita
> Se la forma quadratica $q$ è solo **semidefinita** (positiva o negativa), ovvero almeno un autovalore è nullo e i rimanenti sono concordi ($\det H_f(\mathbf{x}_0) = 0$):
> **NON SI PUÒ CONCLUDERE NULLA (!)**
> In tale circostanza critica, il secondo ordine di Taylor non è sufficiente a discriminare la natura del punto: $\mathbf{x}_0$ potrebbe rivelarsi un massimo locale, un minimo locale oppure una sella. È indispensabile ricorrere ad altre tecniche (studio del segno dell'incremento $\Delta f$, restrizioni lungo curve o esame delle derivate di ordine superiore).

> [!example] Esempio di caso semidefinito (inconcludenza del test dell'Hessiana)
> Consideriamo la funzione:
> $$
> f(x, y) = x^2 - y^4
> $$
> 1. Ricerca dei punti stazionari:
>    $$
>    \nabla f(x, y) = \begin{pmatrix} 2x \\ -4y^3 \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix} \implies \begin{cases} 2x = 0 \\ -4y^3 = 0 \end{cases} \implies (x, y) = (0, 0)
>    $$
>    L'origine $\mathbf{0} = (0, 0)$ è l'unico punto stazionario.
> 2. Calcolo della matrice Hessiana:
>    $$
>    H_f(x, y) = \begin{pmatrix} 2 & 0 \\ 0 & -12y^2 \end{pmatrix} \implies H_f(\mathbf{0}) = \begin{pmatrix} 2 & 0 \\ 0 & 0 \end{pmatrix}
>    $$
>    Gli autovalori sono $\lambda_1 = 2 > 0$ e $\lambda_2 = 0$. La matrice è semidefinita positiva con $\det H_f(\mathbf{0}) = 0$: **il criterio dell'Hessiana non permette di concludere**.
> 3. Studio diretto del segno dell'incremento:
>    Valutiamo la funzione lungo le due direzioni canoniche uscenti dall'origine:
>    - Lungo l'asse delle ascisse ($y = 0$):
>      $$
>      f(x, 0) = x^2 > 0 = f(0, 0), \qquad \forall x \ne 0
>      $$
>    - Lungo l'asse delle ordinate ($x = 0$):
>      $$
>      f(0, y) = -y^4 < 0 = f(0, 0), \qquad \forall y \ne 0
>      $$
>    In ogni intorno sferico $B_R(\mathbf{0})$, la funzione assume sia valori strettamente positivi sia valori strettamente negativi rispetto a $f(\mathbf{0}) = 0$.
>    Pertanto, l'origine $\mathbf{0} = (0, 0)$ è un **punto di sella**.
>

### Esempio applicativo: Modello di produzione di Cobb-Douglas

Nel modello microeconomico di produzione di Cobb-Douglas, introduciamo le grandezze operative:
- $L \ge 0$: quantità di lavoro impiegata (*Labor*)
- $K \ge 0$: quantità di capitale impiegata (*Capital*)
- $m > 0$: costo unitario del fattore lavoro
- $n > 0$: costo unitario del fattore capitale
- $\alpha, \beta \in (0, 1)$: costanti di elasticità di scala della produzione
- $b > 0$: parametro tecnologico globale di produttività

La funzione profitto netto (o guadagno) $g(L, K)$ è definita dai ricavi di produzione meno i costi dei fattori:
$$
g(L, K) = b L^\alpha K^\beta - mL - nK
$$
Per semplificare la trattazione analitica, assumiamo parametri normalizzati ponendo $b = 1$, $m = \alpha$ e $n = \beta$, e rinominiamo le variabili $(L, K) \mapsto (x, y)$:
$$
g(x, y) = x^\alpha y^\beta - \alpha x - \beta y, \qquad \text{con } x > 0, \; y > 0
$$
Il dominio di interesse economico è l'aperto costituito dal primo quadrante:
$$
A = \left\{ (x, y) \in \mathbb{R}^2 : x > 0, \; y > 0 \right\}
$$
Essendo $A$ un insieme aperto, cerchiamo gli estremi liberi di $g$ su $A$.

> [!example] Esempio (Modello economico di Cobb-Douglas - Continuazione)
> La funzione guadagno considerata è:
> $$
> g(x,y) = x^\alpha y^\beta - \alpha x - \beta y, \quad \text{con } x > 0, \; y > 0
> $$
> con parametri $\alpha, \beta \in (0,1)$ tali che $\alpha + \beta < 1$.
> La funzione $g$ è regolare sull'aperto $(0, +\infty) \times (0, +\infty)$ (l'origine $\mathbf{0}$ e gli assi coordinati sono esclusi dal dominio).
>
> Cerchiamo i punti stazionari liberi annullando il gradiente di $g$:
> $$
> \nabla g(x,y) = \begin{pmatrix} \alpha x^{\alpha-1} y^\beta - \alpha \\ \beta x^\alpha y^{\beta-1} - \beta \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
> $$
> Otteniamo il sistema:
> $$
> \begin{cases}
> \alpha x^{\alpha-1} y^\beta = \alpha \\
> \beta x^\alpha y^{\beta-1} = \beta
> \end{cases}
> \implies
> \begin{cases}
> x^{\alpha-1} y^\beta = 1 \\
> x^\alpha y^{\beta-1} = 1
> \end{cases}
> $$
> Eguagliando le due espressioni:
> $$
> x^{\alpha-1} y^\beta = x^\alpha y^{\beta-1} \implies x^{\alpha-1} y^{\beta-1} (x - y) = 0
> $$
> Poiché $x > 0$ e $y > 0$, il fattore $x^{\alpha-1} y^{\beta-1}$ non si annulla mai, da cui:
> $$
> x = y
> $$
> Sostituendo $y = x$ nella prima equazione:
> $$
> x^{\alpha-1} x^\beta = 1 \implies x^{\alpha + \beta - 1} = 1
> $$
> Essendo $\alpha + \beta < 1$, l'esponente $\alpha + \beta - 1 \ne 0$, da cui l'unica soluzione reale positiva è:
> $$
> x = 1 \implies y = 1
> $$
> Pertanto, vi è un unico punto stazionario interno:
> $$
> \mathbf{x}_0 = \begin{pmatrix} 1 \\ 1 \end{pmatrix}
> $$
>
> Applichiamo il criterio della matrice Hessiana. Le derivate parziali seconde di $g$ sono:
> $$
> H_g(x,y) = \begin{pmatrix}
> \alpha(\alpha-1) x^{\alpha-2} y^\beta & \alpha \beta x^{\alpha-1} y^{\beta-1} \\
> \alpha \beta x^{\alpha-1} y^{\beta-1} & \beta(\beta-1) x^\alpha y^{\beta-2}
> \end{pmatrix}
> $$
> Valutando l'Hessiana nel punto critico $\mathbf{x}_0 = (1,1)^T$:
> $$
> H_g(\mathbf{x}_0) = \begin{pmatrix}
> \alpha(\alpha-1) & \alpha \beta \\
> \alpha \beta & \beta(\beta-1)
> \end{pmatrix}
> $$
> Calcoliamo il determinante di $H_g(\mathbf{x}_0)$:
> $$
> \begin{align}
> \det H_g(\mathbf{x}_0) &= \alpha(\alpha-1)\beta(\beta-1) - (\alpha \beta)^2 \\
> &= \alpha \beta \big( (\alpha-1)(\beta-1) - \alpha \beta \big) \\
> &= \alpha \beta (\alpha \beta - \alpha - \beta + 1 - \alpha \beta) \\
> &= \alpha \beta \big( 1 - (\alpha + \beta) \big)
> \end{align}
> $$
> Poiché $\alpha, \beta > 0$ e $\alpha + \beta < 1$, abbiamo:
> $$
> \alpha \beta > 0 \quad \text{e} \quad 1 - (\alpha + \beta) > 0 \implies \det H_g(\mathbf{x}_0) > 0
> $$
> Esaminiamo ora la traccia:
> $$
> \mathrm{tr} H_g(\mathbf{x}_0) = \alpha(\alpha-1) + \beta(\beta-1)
> $$
> Dato che $\alpha \in (0,1)$ e $\beta \in (0,1)$, si ha $\alpha-1 < 0$ e $\beta-1 < 0$, dunque:
> $$
> \alpha(\alpha-1) < 0 \quad \text{e} \quad \beta(\beta-1) < 0 \implies \mathrm{tr} H_g(\mathbf{x}_0) < 0
> $$
> Avendo determinante strettamente positivo e traccia strettamente negativa, la matrice Hessiana $H_g(\mathbf{x}_0)$ è **definita negativa**.
> Ne consegue che il punto stazionario $\mathbf{x}_0 = (1,1)$ è un punto di **massimo locale** stretto per la funzione guadagno.
>

# 3. Funzioni Implicite e Ottimizzazione Vincolata

## 3.1. Funzioni implicite e Teorema del Dini in $\mathbb{R}^2$ e $\mathbb{R}^n$

> [!note] Insiemi di livello e curve
> Sia $f: \mathbb{R}^n \to \mathbb{R}$. I suoi insiemi di livello possono essere curve (o ipersuperfici).
> Al contrario, ci chiediamo: sotto quali condizioni una curva in $\mathbb{R}^2$ può essere descritta localmente o globalmente come insieme di livello di una funzione differenziabile $f$?
> 
> **Esempi introduttivi:**
> 1. Sia $f(x,y) = x^2 + y^2 + c$, considerando la controimmagine del livello zero $f^{-1}(0)$:
>    - Se $c = 1$: l'insieme di livello è vuoto, $f^{-1}(0) = \emptyset$.
>    - Se $c = 0$: l'insieme di livello è ridotto a un solo punto, $f^{-1}(0) = \{\mathbf{0}\}$.
>    - Se $c < 0$: ponendo $r^2 = -c > 0$, si ha:
>      $$
>      f^{-1}(0) = \left\{ \mathbf{x} \in \mathbb{R}^2 : x^2 + y^2 = -c \right\}
>      $$
>      che è una circonferenza di raggio $\sqrt{-c}$ centrata nell'origine.
> 2. Sia $f(x,y) = x^2 - y^2$:
>    $$
>    f^{-1}(0) = \left\{ (x,y) \in \mathbb{R}^2 : x^2 - y^2 = 0 \right\} = \big\{ (x,x) : x \in \mathbb{R} \big\} \cup \big\{ (x,-x) : x \in \mathbb{R} \big\}
>    $$
>    che è l'unione di due rette incidenti nell'origine (le bisettrici dei quadranti). A causa dell'autointersezione nell'origine, tale insieme non è globalmente una curva regolare.
>
### Definizione di funzione definita implicitamente

> [!definition] Funzione definita implicitamente
> Siano $A \subseteq \mathbb{R}^2$ un aperto e $f: A \to \mathbb{R}$.
> Una funzione $g: I \subseteq \mathbb{R} \to \mathbb{R}$ si dice **definita implicitamente** dall'equazione:
> $$
> f(x,y) = 0
> $$
> se accade che:
> $$
> f(x, g(x)) = 0, \quad \forall x \in I
> $$
> In tal caso, il grafico della funzione $g$, dato da $\mathrm{graph}(g) = \{(x, g(x)) : x \in I\}$, è interamente contenuto nell'insieme di livello zero $f^{-1}(0)$.

> [!note] Insiemi di livello generici
> Se l'interesse è rivolto a un generico livello $c \in \mathbb{R}$, ovvero all'equazione $f(x,y) = c$, ci si può sempre ricondurre al livello zero ridefinendo la funzione ausiliaria:
> $$
> \tilde{f}(x,y) := f(x,y) - c
> $$
> in modo tale che $\tilde{f}(x,y) = 0 \iff f(x,y) = c$.
>
### Derivazione formale e motivazione euristica

Consideriamo l'identità fondamentale:
$$
f(x, g(x)) = 0, \quad \forall x \in I
$$
Ipotizzando che $f$ sia differenziabile e che la funzione implicita $g$ sia derivabile, possiamo derivare entrambi i membri rispetto alla variabile indipendente $x$ applicando la regola della catena:
$$
\frac{d}{dx} \big[ f(x, g(x)) \big] = \frac{\partial f}{\partial x}(x, g(x)) \cdot \frac{dx}{dx} + \frac{\partial f}{\partial y}(x, g(x)) \cdot g'(x) = 0
$$
ovvero:
$$
\frac{\partial f}{\partial x}(x, g(x)) + \frac{\partial f}{\partial y}(x, g(x)) \, g'(x) = 0
$$
Se in un punto $x_0 \in I$ la derivata parziale rispetto alla variabile dipendente non è nulla:
$$
\frac{\partial f}{\partial y}(x_0, g(x_0)) \ne 0
$$
allora per continuità essa resta non nulla in un intorno di $x_0$, consentendo di esplicitare la derivata $g'(x)$:
$$
g'(x) = - \frac{\frac{\partial f}{\partial x}(x, g(x))}{\frac{\partial f}{\partial y}(x, g(x))}
$$
Tale relazione evidenzia che se il gradiente $\nabla f(x_0, y_0)$ esiste ed è non nullo, con componente non nulla lungo $y$, è possibile determinare localmente la pendenza della curva di livello.

### Teorema della funzione implicita (o di Dini) in $\mathbb{R}^2$

> [!theorem] Teorema della funzione implicita (Dini) in $\mathbb{R}^2$
> Sia $f: A \subseteq \mathbb{R}^2 \to \mathbb{R}$, con $A$ aperto, e sia $\begin{pmatrix} x_0 \\ y_0 \end{pmatrix} \in A$ tale che:
> 1. $f(x_0, y_0) = 0$;
> 2. $f \in C^1(A)$;
> 3. $\frac{\partial f}{\partial y}(x_0, y_0) \ne 0$.
> 
> Allora esistono un intervallo aperto $I \subseteq \mathbb{R}$ contenente $x_0$ e un'unica funzione $g: I \to \mathbb{R}$ tali che:
> $$
> g(x_0) = y_0 \quad \text{e} \quad f(x, g(x)) = 0, \quad \forall x \in I
> $$
> Inoltre, la funzione $g$ appartiene alla classe $C^1(I)$ e la sua derivata prima vale:
> $$
> g'(x) = - \frac{\frac{\partial f}{\partial x}(x, g(x))}{\frac{\partial f}{\partial y}(x, g(x))}, \quad \forall x \in I
> $$

> [!note] Esplicitazione rispetto a $x$
> Se invece accade che:
> $$
> \frac{\partial f}{\partial y}(x_0, y_0) = 0 \quad \text{ma} \quad \frac{\partial f}{\partial x}(x_0, y_0) \ne 0
> $$
> sotto le medesime ipotesi di regolarità il teorema di Dini garantisce l'esistenza di un intorno $J \subseteq \mathbb{R}$ di $y_0$ e di un'unica funzione $h: J \to \mathbb{R}$ con $h(y_0) = x_0$ tale che:
> $$
> f(h(y), y) = 0, \quad \forall y \in J
> $$
> con $h \in C^1(J)$ e derivata:
> $$
> h'(y) = - \frac{\frac{\partial f}{\partial y}(h(y), y)}{\frac{\partial f}{\partial x}(h(y), y)}, \quad \forall y \in J
> $$
> La curva di livello è quindi localmente il grafico di una funzione di $y$, con retta tangente verticale in $(x_0, y_0)$.

> [!note] Approssimazione lineare e retta tangente
> Il teorema fornisce informazioni dirette sulla regolarità della funzione implicita $g$, permettendo di costruire la retta tangente al grafico nel punto $(x_0, y_0)$:
> $$
> y = g(x_0) + g'(x_0)(x - x_0) = y_0 - \frac{\frac{\partial f}{\partial x}(x_0, y_0)}{\frac{\partial f}{\partial y}(x_0, y_0)} (x - x_0)
> $$
> che coincide con l'equazione della retta tangente all'insieme di livello:
> $$
> \nabla f(x_0, y_0) \cdot \begin{pmatrix} x - x_0 \\ y - y_0 \end{pmatrix} = 0
> $$

> [!example] Esempio
> Consideriamo la circonferenza unitaria:
> $$
> f(x,y) = x^2 + y^2 - 1 = 0
> $$
> Il gradiente di $f$ è:
> $$
> \nabla f(x,y) = \begin{pmatrix} 2x \\ 2y \end{pmatrix}
> $$
> Il gradiente si annulla solo nell'origine: $\nabla f(x,y) = \mathbf{0} \iff (x,y) = (0,0)$, ma $(0,0) \notin f^{-1}(0)$ poiché $f(0,0) = -1 \ne 0$. Dunque tutti i punti dell'insieme di livello sono regolari.
> Cerchiamo i punti a tangente orizzontale o verticale:
> $$
> \frac{\partial f}{\partial y}(x,y) = 2y = 0 \iff y = 0 \implies x = \pm 1
> $$
> Nei punti $(\pm 1, 0)$ la tangente è verticale e non si può esplicitare $y = g(x)$ (si esplicita invece $x = h(y)$).
> Nei punti in cui $x = 0$, abbiamo $y^2 = 1 \implies y = \pm 1$.
> Studiamo il punto $(0,1)$:
> - $f(0,1) = 0$;
> - $\frac{\partial f}{\partial y}(0,1) = 2 \ne 0$.
> Per il teorema di Dini, esiste una funzione $g: I \to \mathbb{R}$ con $0 \in I$ tale che $g(0) = 1$ e $f(x, g(x)) = 0$ per ogni $x \in I$.
> La derivata prima nel punto vale:
> $$
> g'(0) = - \frac{2x}{2y} \Bigg|_{(0,1)} = - \frac{0}{2} = 0
> $$
> Essendo $g \in C^1(I)$, possiamo scrivere lo sviluppo di Taylor al primo ordine per $x \to 0$:
> $$
> g(x) = g(0) + g'(0)x + o(x) = 1 + 0 \cdot x + o(x) = 1 + o(x)
> $$
> (In questo caso la funzione implicita esatta è $g(x) = \sqrt{1 - x^2} = 1 - \frac{1}{2}x^2 + o(x^2)$).
>

### Derivate di ordine superiore e formula di Taylor per funzioni implicite

> [!note] Regolarità di ordine superiore
> In generale, se $f \in C^k(A)$ con $k \ge 2$ e $\frac{\partial f}{\partial y}(x_0, y_0) \ne 0$, allora anche la funzione implicita appartiene alla medesima classe:
> $$
> g \in C^k(I)
> $$
> È quindi possibile calcolare le derivate successive di $g$ derivando ripetutamente l'identità fondamentale rispetto a $x$ e determinare lo sviluppo di Taylor di $g$ fino all'ordine $k$.
>
Procediamo con la derivazione a catena:
- **Ordine 0:**
  $$
  f(x, g(x)) = 0
  $$
- **Ordine 1:**
  $$
  f_x(x, g(x)) + f_y(x, g(x)) \, g'(x) = 0
  $$
- **Ordine 2:** Derivando ulteriormente rispetto a $x$:
  $$
  \begin{align}
  0 &= \frac{d}{dx} \big[ f_x(x, g(x)) \big] + \frac{d}{dx} \big[ f_y(x, g(x)) \, g'(x) \big] \\
  &= \Big( f_{xx}(x, g(x)) + f_{xy}(x, g(x)) \, g'(x) \Big) + \Big( f_{yx}(x, g(x)) + f_{yy}(x, g(x)) \, g'(x) \Big) g'(x) + f_y(x, g(x)) \, g''(x)
  \end{align}
  $$
  Poiché per il teorema di Schwarz vale $f_{xy} = f_{yx}$, raggruppando i termini otteniamo:
  $$
  f_{xx}(x, g(x)) + 2 f_{xy}(x, g(x)) \, g'(x) + f_{yy}(x, g(x)) \, [g'(x)]^2 + f_y(x, g(x)) \, g''(x) = 0, \quad \forall x \in I
  $$
  Essendo $f_y(x, g(x)) \ne 0$, si può ricavare esplicitamente $g''(x)$:
  $$
  g''(x) = - \frac{f_{xx}(x, g(x)) + 2 f_{xy}(x, g(x)) \, g'(x) + f_{yy}(x, g(x)) \, [g'(x)]^2}{f_y(x, g(x))}
  $$

### Punti singolari e regolari degli insiemi di livello

> [!definition] Punti regolari e punti singolari di un insieme di livello
> Siano $A \subseteq \mathbb{R}^2$ aperto, $f: A \to \mathbb{R}$ di classe $C^1(A)$ e consideriamo l'insieme di livello $f^{-1}(0) = \{(x,y) \in A : f(x,y) = 0\}$.
> - Un punto $(x_0, y_0) \in f^{-1}(0)$ si dice **punto singolare** dell'insieme di livello se:
>   $$
>   \nabla f(x_0, y_0) = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
>   $$
> - Un punto $(x_0, y_0) \in f^{-1}(0)$ si dice **punto regolare** se:
>   $$
>   \nabla f(x_0, y_0) \ne \mathbf{0}
>   $$
>
Nei punti regolari, almeno una delle derivate parziali $f_x$ o $f_y$ è non nulla, garantendo che localmente l'insieme di livello sia il sostegno di una curva differenziabile (grafico rispetto a $x$ o rispetto a $y$).
Nei punti singolari, il teorema di Dini non è applicabile: l'insieme può presentare cuspidi, nodi, punti isolati o autointersezioni.

### Teorema della funzione implicita (Dini) in $\mathbb{R}^n$

> [!theorem] Teorema della funzione implicita in $\mathbb{R}^n$
> Sia $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$, con $A$ aperto, e indichiamo le coordinate con $\mathbf{x} = (\mathbf{y}, z) \in \mathbb{R}^{n-1} \times \mathbb{R}$.
> Sia $\mathbf{x}_0 = (\mathbf{y}_0, z_0) \in A$ tale che:
> 1. $f(\mathbf{x}_0) = 0$;
> 2. $f \in C^1(A)$;
> 3. $\frac{\partial f}{\partial z}(\mathbf{x}_0) = \frac{\partial f}{\partial x_n}(\mathbf{x}_0) \ne 0$.
> 
> Allora esistono un intorno aperto $U \subseteq \mathbb{R}^{n-1}$ di $\mathbf{y}_0$ e un'unica funzione $g: U \to \mathbb{R}$ tali che:
> $$
> g(\mathbf{y}_0) = z_0 \quad \text{e} \quad f(\mathbf{y}, g(\mathbf{y})) = 0, \quad \forall \mathbf{y} \in U
> $$
> Inoltre, la funzione $g$ appartiene a $C^1(U)$ e le sue derivate parziali sono date da:
> $$
> \frac{\partial g}{\partial x_i}(\mathbf{y}) = - \frac{\frac{\partial f}{\partial x_i}(\mathbf{y}, g(\mathbf{y}))}{\frac{\partial f}{\partial x_n}(\mathbf{y}, g(\mathbf{y}))}, \quad \forall i = 1, \dots, n-1, \quad \forall \mathbf{y} \in U
> $$

> [!note] Iperpiano tangente
> In questo contesto, l'approssimazione lineare di primo ordine dell'ipersuperficie di livello $f(\mathbf{x}) = 0$ attorno a $\mathbf{x}_0$ è l'**iperpiano tangente**, di equazione:
> $$
> \nabla f(\mathbf{x}_0) \cdot (\mathbf{x} - \mathbf{x}_0) = 0
> \iff
> \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{x}_0)(x_i - x_{0,i}) = 0
> $$
>
## 3.2. Ottimizzazione vincolata: Metodo dei Moltiplicatori di Lagrange

L'ottimizzazione vincolata studia la determinazione di massimi e minimi di una funzione $f: A \subseteq \mathbb{R}^n \to \mathbb{R}$ subordinata alla condizione che le variabili appartengano a un opportuno sottoinsieme chiuso o a insiemi di livello.

I vincoli si distinguono formalmente in:
1. **Vincoli di disuguaglianza:**
   $$
   D = \left\{ \mathbf{x} \in \mathbb{R}^n : F(\mathbf{x}) \le 0 \right\}
   $$
2. **Vincoli di uguaglianza:**
   $$
   Z = \left\{ \mathbf{x} \in \mathbb{R}^n : F(\mathbf{x}) = 0 \right\}
   $$
La funzione $F$ che definisce il vincolo deve essere continua (garantendo che $D$ e $Z$ siano insiemi chiusi).

Nel caso di vincoli di disuguaglianza (1), l'analisi del dominio ammissibile si divide sistematicamente in due fasi distinte:
- **Punti interni:** $\mathring{D} = \{\mathbf{x} \in \mathbb{R}^n : F(\mathbf{x}) < 0\}$.
  Essendo un insieme aperto, la ricerca di estremi interni viene trattata con i metodi dell'**ottimizzazione libera** (annullamento del gradiente $\nabla f(\mathbf{x}) = \mathbf{0}$ e studio della matrice Hessiana).
- **Punti di frontiera:** $\partial D = \{\mathbf{x} \in \mathbb{R}^n : F(\mathbf{x}) = 0\}$.
  La ricerca di estremi sulla frontiera costituisce un problema di **ottimizzazione vincolata con vincolo di uguaglianza**.

Per trattare i vincoli di uguaglianza, si presentano due approcci metodologici:
1. **Vincoli esplicitabili:**
   Quando è possibile determinare una parametrizzazione analitica globale del vincolo:
   - a) Sostegno di una curva;
   - b) Unione di grafici di funzioni di una variabile.
2. **Vincoli non esplicitabili:**
   Quando la parametrizzazione globale è complessa o impossibile. Si sfrutta la struttura locale garantita dal teorema di Dini mediante il **metodo dei moltiplicatori di Lagrange**.

### Ottimizzazione su vincoli esplicitabili

**a) Sostegno di una curva parametrata**

Sia $\mathbf{r}(t) = \begin{pmatrix} x(t) \\ y(t) \end{pmatrix}$, con $t \in I \subseteq \mathbb{R}$, una curva esplicita regolare e sia $f$ la funzione da ottimizzare.
Se il vincolo è dato da:
$$
Z = \left\{ \mathbf{x} \in \mathbb{R}^2 : g(x,y) = 0 \right\} = g^{-1}(0)
$$
e troviamo una parametrizzazione globale tale che $Z = \mathrm{Im}(\mathbf{r})$, allora definendo la funzione composta di una variabile:
$$
\phi(t) := f(\mathbf{r}(t)), \quad \phi: I \subseteq \mathbb{R} \to \mathbb{R}
$$
il problema si riduce alla ricerca degli estremi di una funzione ad una sola variabile reale:
$$
\max_{\mathbf{x} \in Z} f(\mathbf{x}) = \max_{t \in I} \phi(t)
\min_{\mathbf{x} \in Z} f(\mathbf{x}) = \min_{t \in I} \phi(t)
$$

> [!example] Esempio
> Sia $f(x,y) = xy$ sul vincolo circonferenza:
> $$
> Z = \left\{ \mathbf{x} \in \mathbb{R}^2 : x^2 + y^2 - 1 = 0 \right\} = g^{-1}(0), \quad \text{con } g(x,y) = x^2 + y^2 - 1
> $$
> Parametrizziamo $Z$ in coordinate polari tramite la curva:
> $$
> \mathbf{r}(t) = \begin{pmatrix} \cos t \\ \sin t \end{pmatrix}, \quad t \in [0, 2\pi]
> $$
> La funzione obiettivo ristretta alla curva è:
> $$
> \phi(t) = f(\cos t, \sin t) = \cos t \sin t = \frac{1}{2} \sin(2t)
> $$
> Poiché il dominio $[0, 2\pi]$ è compatto e $\phi$ è continua, per il teorema di Weierstrass esistono certamente massimo e minimo assoluti.
> Calcoliamo la derivata prima:
> $$
> \phi'(t) = \cos(2t) = 0 \iff 2t = \frac{\pi}{2} + k\pi, \; k \in \mathbb{Z} \iff t = \frac{\pi}{4} + k\frac{\pi}{2}
> $$
> I punti critici appartenenti all'intervallo $[0, 2\pi]$ sono:
> $$
> t \in \left\{ \frac{\pi}{4}, \frac{3}{4}\pi, \frac{5}{4}\pi, \frac{7}{4}\pi \right\}
> $$
> Valutando $\phi(t)$ in tali punti:
> $$
> \phi\left(\frac{\pi}{4}\right) = \phi\left(\frac{5}{4}\pi\right) = \frac{1}{2} = \max_{\mathbf{x} \in Z} f(\mathbf{x})
> \phi\left(\frac{3}{4}\pi\right) = \phi\left(\frac{7}{4}\pi\right) = -\frac{1}{2} = \min_{\mathbf{x} \in Z} f(\mathbf{x})
> $$
> I punti di massimo vincolato su $Z$ sono $\left(\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}\right)$ e $\left(-\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2}\right)$; i punti di minimo vincolato sono $\left(-\frac{\sqrt{2}}{2}, \frac{\sqrt{2}}{2}\right)$ e $\left(\frac{\sqrt{2}}{2}, -\frac{\sqrt{2}}{2}\right)$.
>
**b) Unione di grafici di funzioni di una variabile**
>
> Siano $\gamma_1$ e $\gamma_2$ i grafici di due funzioni $g_1, g_2: [a,b] \to \mathbb{R}$:
> $$
> \gamma_1 = \left\{ (x, g_1(x)) : x \in [a,b] \right\}, \quad \gamma_2 = \left\{ (x, g_2(x)) : x \in [a,b] \right\}
> $$
> Se il vincolo è dato dall'unione $Z = \gamma_1 \cup \gamma_2$, la ricerca degli estremi globali si ottiene valutando gli estremi separatamente su ciascun ramo e prendendone rispettivamente il massimo dei massimi e il minimo dei minimi:
> $$
> \max_{\mathbf{x} \in Z} f(\mathbf{x}) = \max \left\{ \max_{\mathbf{x} \in \gamma_1} f(\mathbf{x}), \max_{\mathbf{x} \in \gamma_2} f(\mathbf{x}) \right\}
> \min_{\mathbf{x} \in Z} f(\mathbf{x}) = \min \left\{ \min_{\mathbf{x} \in \gamma_1} f(\mathbf{x}), \min_{\mathbf{x} \in \gamma_2} f(\mathbf{x}) \right\}
> $$

> [!example] Esempio
> Sia $f(x,y) = e^{x+y}$ e sia il vincolo $Z = \gamma_1 \cup \gamma_2 \cup \gamma_3$ costituito dal bordo del triangolo di vertici $(0,0), (1,0), (1,1)$:
> - $\gamma_1 = \left\{ (x, 0) : x \in [0,1] \right\}$ (lato sull'asse $x$);
> - $\gamma_2 = \left\{ (1, y) : y \in [0,1] \right\}$ (lato verticale);
> - $\gamma_3 = \left\{ (t, t) : t \in [0,1] \right\}$ (ipotenusa sulla bisettrice $y = x$).
>
> Definiamo le restrizioni di $f$ su ciascun lato:
> 1. **Sul tratto $\gamma_1$:**
>    $$
>    \phi_1(x) = f(x,0) = e^x, \quad x \in [0,1]
>    $$
>    Essendo $e^x$ strettamente crescente su $[0,1]$:
>    $$
>    \max_{x \in [0,1]} \phi_1 = e^1 = e, \quad \min_{x \in [0,1]} \phi_1 = e^0 = 1
>    $$
> 2. **Sul tratto $\gamma_2$:**
>    $$
>    \phi_2(y) = f(1,y) = e^{1+y}, \quad y \in [0,1]
>    $$
>    Essendo $e^{1+y}$ strettamente crescente su $[0,1]$:
>    $$
>    \max_{y \in [0,1]} \phi_2 = e^{1+1} = e^2, \quad \min_{y \in [0,1]} \phi_2 = e^{1+0} = e
>    $$
> 3. **Sul tratto $\gamma_3$:**
>    $$
>    \phi_3(t) = f(t,t) = e^{2t}, \quad t \in [0,1]
>    $$
>    Essendo $e^{2t}$ strettamente crescente su $[0,1]$:
>    $$
>    \max_{t \in [0,1]} \phi_3 = e^2, \quad \min_{t \in [0,1]} \phi_3 = e^0 = 1
>    $$
>
> Confrontando i risultati ottenuti sui tre segmenti:
> $$
> \max_{\mathbf{x} \in Z} f(\mathbf{x}) = \max \left\{ e, e^2, e^2 \right\} = e^2
> \min_{\mathbf{x} \in Z} f(\mathbf{x}) = \min \left\{ 1, e, 1 \right\} = 1
> $$
> Il punto di massimo assoluto sul vincolo è $(1,1)$, con valore $f(1,1) = e^2$.
> Il punto di minimo assoluto sul vincolo è $(0,0)$, con valore $f(0,0) = 1$.
>

### Metodo dei moltiplicatori di Lagrange

Nel caso di vincoli non esplicitabili globalmente, si ricorre al metodo variazionale introdotto da Lagrange.

> [!theorem] Teorema dei moltiplicatori di Lagrange (in $\mathbb{R}^2$)
> Siano $f, g \in C^1(A)$, con $A \subseteq \mathbb{R}^2$ aperto, e consideriamo il vincolo:
> $$
> Z = \left\{ \mathbf{x} \in A : g(x,y) = c \right\} = g^{-1}(c), \quad c \in \mathbb{R}
> $$
> Sia $(x_0, y_0) \in Z$ un punto di estremo locale vincolato per $f$ su $Z$.
> Se $(x_0, y_0)$ è un **punto regolare del vincolo**, ossia:
> $$
> \nabla g(x_0, y_0) \ne \begin{pmatrix} 0 \\ 0 \end{pmatrix}
> $$
> allora esiste uno scalare $\lambda_0 \in \mathbb{R}$ tale che:
> $$
> \nabla f(x_0, y_0) = \lambda_0 \nabla g(x_0, y_0)
> $$

> [!quote]- Dimostrazione
> Poiché $(x_0, y_0)$ è un punto regolare per il vincolo, per il Teorema della funzione implicita (Dini) l'insieme di livello $g^{-1}(c)$ coincide, in un intorno di $(x_0, y_0)$, con il sostegno di un arco di curva regolare.
> Sia dunque $\mathbf{r}(t) = \begin{pmatrix} x(t) \\ y(t) \end{pmatrix}$ una parametrizzazione locale regolare della curva vincolo, definita per $t \in I \subseteq \mathbb{R}$, tale che:
> $$
> 0 \in I, \quad \mathbf{r}(0) = \begin{pmatrix} x_0 \\ y_0 \end{pmatrix}, \quad \mathbf{r}'(0) \ne \begin{pmatrix} 0 \\ 0 \end{pmatrix}
> $$
> Per ipotesi, $(x_0, y_0)$ è punto di estremo vincolato per $f$. Di conseguenza, $t = 0$ è un punto di estremo locale (libero) per la funzione composta:
> $$
> \phi(t) := f(\mathbf{r}(t)), \quad t \in I
> $$
> Essendo $f$ ed $\mathbf{r}$ di classe $C^1$, anche $\phi \in C^1(I)$. Per il teorema di Fermat per funzioni di una variabile reale:
> $$
> \phi'(0) = 0
> $$
> Applicando la regola di derivazione a catena:
> $$
> \phi'(t) = \nabla f(\mathbf{r}(t)) \cdot \mathbf{r}'(t)
> $$
> che, valutata in $t = 0$, fornisce:
> $$
> \phi'(0) = \nabla f(\mathbf{r}(0)) \cdot \mathbf{r}'(0) = \nabla f(x_0, y_0) \cdot \mathbf{r}'(0) = 0
> $$
> Ciò dimostra che il vettore gradiente $\nabla f(x_0, y_0)$ è ortogonale al vettore tangente $\mathbf{r}'(0)$ alla curva vincolo nel punto:
> $$
> \nabla f(x_0, y_0) \perp \mathbf{r}'(0)
> $$
> D'altra parte, poiché la curva giace interamente sull'insieme di livello $g^{-1}(c)$, si ha l'identità:
> $$
> g(\mathbf{r}(t)) = c, \quad \forall t \in I
> $$
> Derivando rispetto a $t$ ambo i membri in $t = 0$:
> $$
> \frac{d}{dt} \big[ g(\mathbf{r}(t)) \big]_{t=0} = \nabla g(\mathbf{r}(0)) \cdot \mathbf{r}'(0) = \nabla g(x_0, y_0) \cdot \mathbf{r}'(0) = 0
> $$
> Dunque anche il gradiente del vincolo è ortogonale al vettore tangente:
> $$
> \nabla g(x_0, y_0) \perp \mathbf{r}'(0)
> $$
> Nello spazio vettoriale bidimensionale $\mathbb{R}^2$, l'ortogonale a una retta vettoriale (generata dal vettore tangente non nullo $\mathbf{r}'(0)$) ha dimensione 1.
> Pertanto, i due vettori $\nabla f(x_0, y_0)$ e $\nabla g(x_0, y_0)$, essendo entrambi ortogonali alla stessa direzione $\mathbf{r}'(0)$, devono essere necessariamente paralleli tra loro:
> $$
> \nabla f(x_0, y_0) \parallel \nabla g(x_0, y_0)
> $$
> Poiché per ipotesi di regolarità $\nabla g(x_0, y_0) \ne \mathbf{0}$, esiste un coefficiente di proporzionalità reale $\lambda_0 \in \mathbb{R}$ tale che:
> $$
> \nabla f(x_0, y_0) = \lambda_0 \nabla g(x_0, y_0)
> $$
> (Se $\nabla f(x_0, y_0) = \mathbf{0}$, la relazione è banalmente soddisfatta ponendo $\lambda_0 = 0$). $\blacksquare$

> [!note] Significato del moltiplicatore
> 1. Lo scalare $\lambda_0 \in \mathbb{R}$ è detto **moltiplicatore di Lagrange**.
> 2. Il teorema stabilisce una **condizione necessaria del primo ordine**: se $(x_0, y_0)$ è un estremo vincolato regolare, le curve di livello di $f$ e del vincolo $g$ sono tangenti tra loro nel punto.
>
### Funzione Lagrangiana e formulazione variazionale

Per trasformare il problema di ottimizzazione vincolata in un problema algebrico di annullamento del gradiente, si introduce una funzione ausiliaria a tre variabili.

> [!definition] Funzione Lagrangiana
> Si definisce la **funzione Lagrangiana** $\mathcal{L}: \mathbb{R}^2 \times \mathbb{R} \to \mathbb{R}$ associata al problema:
> $$
> \mathcal{L}(x, y, \lambda) := \underbrace{f(x, y)}_{\text{funzione da ottimizzare}} - \lambda \underbrace{\big( g(x, y) - c \big)}_{\text{equazione del vincolo}}
> $$

> [!proposition] Punti stazionari della Lagrangiana
> La condizione del teorema dei moltiplicatori di Lagrange è equivalente alla stazionarietà della funzione Lagrangiana:
> Se $(x_0, y_0)$ è un estremo vincolato regolare per $f$ su $g^{-1}(c)$, allora esiste $\lambda_0 \in \mathbb{R}$ tale che la terna $(x_0, y_0, \lambda_0)$ è un **punto critico (stazionario)** per la Lagrangiana $\mathcal{L}$.

> [!quote]- Dimostrazione
> Calcoliamo il gradiente di $\mathcal{L}$ rispetto alle tre coordinate $(x, y, \lambda)$:
> $$
> \nabla \mathcal{L}(x_0, y_0, \lambda_0) = \begin{pmatrix}
> \frac{\partial \mathcal{L}}{\partial x}(x_0, y_0, \lambda_0) \\
> \frac{\partial \mathcal{L}}{\partial y}(x_0, y_0, \lambda_0) \\
> \frac{\partial \mathcal{L}}{\partial \lambda}(x_0, y_0, \lambda_0)
> \end{pmatrix}
> = \begin{pmatrix}
> \frac{\partial f}{\partial x}(x_0, y_0) - \lambda_0 \frac{\partial g}{\partial x}(x_0, y_0) \\
> \frac{\partial f}{\partial y}(x_0, y_0) - \lambda_0 \frac{\partial g}{\partial y}(x_0, y_0) \\
> -(g(x_0, y_0) - c)
> \end{pmatrix}
> = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix}
> $$
> Le prime due componenti si annullano per la tesi del teorema dei moltiplicatori di Lagrange:
> $$
> \nabla f(x_0, y_0) - \lambda_0 \nabla g(x_0, y_0) = \mathbf{0}
> $$
> La terza componente si annulla per la condizione di appartenenza al vincolo:
> $$
> -(g(x_0, y_0) - c) = 0 \iff g(x_0, y_0) = c
> $$
> Dunque $\nabla \mathcal{L}(x_0, y_0, \lambda_0) = \mathbf{0}$. $\blacksquare$

> [!warning] Punti singolari del vincolo
> Il metodo dei moltiplicatori di Lagrange individua **soltanto** gli estremi vincolati che sono punti regolari per il vincolo.
> I **punti singolari del vincolo**, ossia i punti in cui:
> $$
> \begin{cases} g(x,y) = c \\ \nabla g(x,y) = \mathbf{0} \end{cases}
> $$
> non soddisfano l'ipotesi di regolarità del teorema e **devono essere cercati e analizzati a parte** come candidati estremi vincolati.
>
### Esempio completo: Moltiplicatori di Lagrange

Consideriamo la funzione:
$$
f(x,y) = xy
$$
soggetta al vincolo:
$$
Z = \left\{ \mathbf{x} \in \mathbb{R}^2 : x^2 - xy + y^2 - 1 = 0 \right\} = g^{-1}(0)
$$
con $g(x,y) = x^2 - xy + y^2 - 1$.

**Passo 1: Verifica della regolarità delle funzioni**
Le funzioni $f$ e $g$ sono polinomiali, dunque $f, g \in C^\infty(\mathbb{R}^2)$.

**Passo 2: Ricerca dei punti singolari del vincolo**
Cerchiamo eventuali punti in cui il gradiente di $g$ si annulla:
$$
\nabla g(x,y) = \begin{pmatrix} 2x - y \\ -x + 2y \end{pmatrix} = \begin{pmatrix} 0 \\ 0 \end{pmatrix}
\iff
\begin{cases}
y = 2x \\
-x + 2(2x) = 0
\end{cases}
\iff
\begin{cases}
x = 0 \\
y = 0
\end{cases}
$$
L'unico punto a gradiente nullo è l'origine $(0,0)$. Tuttavia:
$$
g(0,0) = 0^2 - 0 \cdot 0 + 0^2 - 1 = -1 \ne 0 \implies (0,0) \notin Z
$$
Poiché il gradiente $\nabla g$ non si annulla in alcun punto appartenente a $Z$, **tutti i punti del vincolo sono regolari**. Non vi sono punti singolari del vincolo da analizzare separatamente.

**Passo 3: Costruzione della funzione Lagrangiana e sistema delle derivate parziali**
Introduciamo la Lagrangiana:
$$
\mathcal{L}(x, y, \lambda) = f(x,y) - \lambda g(x,y) = xy - \lambda (x^2 - xy + y^2 - 1)
$$
Annulliamo il gradiente di $\mathcal{L}$:
$$
\begin{cases}
\frac{\partial \mathcal{L}}{\partial x} = y - 2\lambda x + \lambda y = 0 & (1) \\
\frac{\partial \mathcal{L}}{\partial y} = x - \lambda(-x + 2y) = x + \lambda x - 2\lambda y = 0 & (2) \\
\frac{\partial \mathcal{L}}{\partial \lambda} = -(x^2 - xy + y^2 - 1) = 0 \quad \text{(appartenenza al vincolo)} & (3)
\end{cases}
$$
Raccogliendo i termini nelle prime due equazioni:
$$
\begin{cases}
2\lambda x = y(1 + \lambda) & (1) \\
2\lambda y = x(1 + \lambda) & (2) \\
x^2 - xy + y^2 - 1 = 0 & (3)
\end{cases}
$$

**Passo 4: Esclusione dei casi banali $x = 0$ o $y = 0$**
- Se $x = 0$:
  Dall'equazione (1) si ottiene $y(1 + \lambda) = 0 \implies y = 0 \lor \lambda = -1$.
  Se $y = 0$, il punto sarebbe $(0,0)$, ma abbiamo già verificato che $(0,0) \notin Z$.
  Se $\lambda = -1$, l'equazione (2) diventa $-2y = 0 \implies y = 0$, che riporta a $(0,0) \notin Z$.
  Dunque nessuna soluzione può avere $x = 0$.
- Se $y = 0$:
  Simmetricamente, dall'equazione (2) si ricava $x(1 + \lambda) = 0 \implies x = 0$, non ammissibile.
  Dunque nessuna soluzione può avere $y = 0$.

Pertanto possiamo assumere $x \ne 0$ e $y \ne 0$.

**Passo 5: Riduzione del sistema stazionario**
Dividendo rispettivamente per $x$ nella (1) e per $y$ nella (2):
$$
\begin{cases}
2\lambda = (1 + \lambda) \frac{y}{x} \\
2\lambda = (1 + \lambda) \frac{x}{y}
\end{cases}
$$
Uguagliando le due espressioni per $2\lambda$, otteniamo la relazione fondamentale:
$$
\frac{y}{x} (1 + \lambda) = \frac{x}{y} (1 + \lambda) \quad (3)
\text{(3)} \quad \text{Se } 1 + \lambda = 0 \implies \lambda = -1 \implies x = 0, \; y = 0 \implies (0, 0) \notin Z \implies \lambda \ne -1
$$
Dall'uguaglianza $\frac{y}{x}(1+\lambda) = \frac{x}{y}(1+\lambda)$ segue dunque:
$$
\frac{y}{x} = \frac{x}{y} \implies y^2 - x^2 = 0 \implies y = \pm x
$$
Sostituendo nell'equazione del vincolo $x^2 - xy + y^2 - 1 = 0$:
$$
\begin{cases}
y = \pm x \\
x^2 - xy + y^2 - 1 = 0
\end{cases}
\implies y^2 \mp y^2 + y^2 - 1 = 0
$$
Distinguiamo i due rami:
$$
\begin{cases}
y = x \\
2y^2 - y^2 - 1 = 0
\end{cases}
\cup
\begin{cases}
y = -x \\
2y^2 + y^2 - 1 = 0
\end{cases}
\implies
\begin{cases}
y = x \\
y^2 - 1 = 0 \implies y = \pm 1
\end{cases}
\cup
\begin{cases}
y = -x \\
3y^2 - 1 = 0 \implies y^2 = \frac{1}{3} \implies y = \pm \frac{\sqrt{3}}{3}
\end{cases}
$$
Otteniamo così i quattro punti stazionari vincolati:
$$
(1, 1), \quad (-1, -1), \quad \left( \frac{\sqrt{3}}{3}, -\frac{\sqrt{3}}{3} \right), \quad \left( -\frac{\sqrt{3}}{3}, \frac{\sqrt{3}}{3} \right)
$$
Valutando la funzione obiettivo $f(x, y) = xy$ in tali punti:
$$
f(1, 1) = f(-1, -1) = 1
f\left( \frac{\sqrt{3}}{3}, -\frac{\sqrt{3}}{3} \right) = f\left( -\frac{\sqrt{3}}{3}, \frac{\sqrt{3}}{3} \right) = -\frac{1}{3}
$$
Concludiamo che:
$$
(1, 1) \text{ e } (-1, -1) \text{ sono punti di massimo assoluto vincolato}
\left( \frac{\sqrt{3}}{3}, -\frac{\sqrt{3}}{3} \right) \text{ e } \left( -\frac{\sqrt{3}}{3}, \frac{\sqrt{3}}{3} \right) \text{ sono punti di minimo assoluto vincolato}
$$

> [!note] Compattezza del vincolo per il Teorema di Weierstrass
> Se si applica il metodo dei moltiplicatori di Lagrange per determinare massimi e minimi assoluti vincolati, è necessario dimostrare preliminarmente che il vincolo è **compatto** (chiuso e limitato in $\mathbb{R}^n$), affinché il teorema di Weierstrass ne garantisca l'esistenza.
> Nel caso di un vincolo espresso come insieme di livello $g^{-1}(0) = \{ \mathbf{x} \in \mathbb{R}^n : g(\mathbf{x}) = 0 \}$, l'insieme è certamente chiuso se $g$ è una funzione continua (controimmagine di un punto/chiuso tramite mappa continua).
> Per accertare la **limitatezza** si agisce in maniera analitica isolando le variabili.

> [!example] Esempio di verifica della limitatezza
> Consideriamo il vincolo dell'esempio precedente, $x^2 - xy + y^2 = 1$. Completando il quadrato rispetto a $x$:
> $$
> x^2 - xy + \frac{1}{4}y^2 + \frac{3}{4}y^2 = 1 \iff \left( x - \frac{1}{2}y \right)^2 + \frac{3}{4}y^2 = 1
> $$
> Poiché $\left( x - \frac{1}{2}y \right)^2 \ge 0$, deve necessariamente aversi:
> $$
> \frac{3}{4}y^2 \le 1 \implies y^2 \le \frac{4}{3} \implies y \in \left[ -\frac{2}{\sqrt{3}}, \, \frac{2}{\sqrt{3}} \right]
> $$
> Inoltre, da $\left( x - \frac{1}{2}y \right)^2 \le 1$ segue:
> $$
> x - \frac{1}{2}y \in [-1, 1] \implies x \in \left[ \frac{1}{2}y - 1, \, \frac{1}{2}y + 1 \right]
> $$
> Sfruttando la limitatezza già ottenuta su $y$, si ha:
> $$
> x \in \left[ -\frac{1}{\sqrt{3}} - 1, \, \frac{1}{\sqrt{3}} + 1 \right]
> $$
> Essendo entrambe le coordinate vincolate a intervalli chiusi e limitati di $\mathbb{R}$, l'insieme $Z = \{ (x, y) \in \mathbb{R}^2 : x^2 - xy + y^2 - 1 = 0 \}$ è limitato e dunque **compatto**.
>
