---
title: "Spazi Euclidei, Prodotti Scalari e Teorema Spettrale"
domain: "math/linear-algebra"
source_course: "Algebra Lineare (Cap. 6)"
tags:
  - math/linear-algebra/inner-product
  - math/linear-algebra/spectral-theorem
---
## 6.1 Definizione di Prodotto Scalare e Spazio Euclideo

### Definizione Assiomatica del Prodotto Scalare Reale

> [!definition] Prodotto Scalare
> Sia $V$ uno spazio vettoriale su $\mathbb{R}$. Un **prodotto scalare** su $V$ è una funzione:
> $$
> \langle \cdot, \cdot \rangle : V \times V \longrightarrow \mathbb{R}
> $$
> che soddisfa i seguenti tre assiomi:
> 
> 1. **Proprietà commutativa (simmetria):**
>    $$
>    \langle \mathbf{v}, \mathbf{w} \rangle = \langle \mathbf{w}, \mathbf{v} \rangle \qquad \forall \mathbf{v}, \mathbf{w} \in V
>    $$
> 
> 2. **Proprietà bilineare (bilinearità):**
>    $$
>    \left\langle \sum_{i=1}^n c_i \mathbf{v}_i, \mathbf{w} \right\rangle = \sum_{i=1}^n c_i \langle \mathbf{v}_i, \mathbf{w} \rangle \qquad \forall \mathbf{v}_i, \mathbf{w} \in V, \; c_i \in \mathbb{R}
>    \left\langle \mathbf{v}, \sum_{i=1}^n c_i \mathbf{w}_i \right\rangle = \sum_{i=1}^n c_i \langle \mathbf{v}, \mathbf{w}_i \rangle \qquad \forall \mathbf{v}, \mathbf{w}_i \in V, \; c_i \in \mathbb{R}
>    $$
> 
> 3. **Definito positivo (positività):**
>    $$
>    \langle \mathbf{v}, \mathbf{v} \rangle \ge 0 \quad \forall \mathbf{v} \in V, \qquad \langle \mathbf{v}, \mathbf{v} \rangle = 0 \iff \mathbf{v} = \mathbf{0}
>    $$

> [!example] Prodotto Scalare Standard su $\mathbb{R}^n$
> Sia $V = \mathbb{R}^n$ e siano $\mathbf{a}, \mathbf{b} \in \mathbb{R}^n$:
> $$
> \mathbf{a} = \begin{pmatrix} a_1 \\ \vdots \\ a_n \end{pmatrix}, \qquad \mathbf{b} = \begin{pmatrix} b_1 \\ \vdots \\ b_n \end{pmatrix}
> $$
> Il **prodotto scalare standard** (indicato comunemente con la notazione del punto $\mathbf{a} \cdot \mathbf{b}$) è definito come:
> $$
> \langle \mathbf{a}, \mathbf{b} \rangle = \mathbf{a} \cdot \mathbf{b} := \begin{pmatrix} a_1 \\ \vdots \\ a_n \end{pmatrix} \cdot \begin{pmatrix} b_1 \\ \vdots \\ b_n \end{pmatrix} = a_1 b_1 + \dots + a_n b_n = \sum_{i=1}^n a_i b_i
> $$

> [!note] Notazione Matriciale del Prodotto Scalare Standard
> Identificando i vettori con matrici colonna di tipo $n \times 1$, il prodotto scalare standard si esprime mediante il prodotto riga per colonna tra matrici:
> $$
> \mathbf{a} \cdot \mathbf{b} = \mathbf{a}^T \mathbf{b}
> $$

> [!definition] Spazio Euclideo
> Uno spazio vettoriale $V$ su cui è assegnato un prodotto scalare $\langle \cdot, \cdot \rangle$ è detto **spazio euclideo**.

> [!example] Prodotto Scalare non Standard su $\mathbb{R}^2$
> Sia $V = \mathbb{R}^2$. Definiamo per $\mathbf{a} = \begin{pmatrix} a_1 \\ a_2 \end{pmatrix}$ e $\mathbf{b} = \begin{pmatrix} b_1 \\ b_2 \end{pmatrix}$:
> $$
> \left\langle \begin{pmatrix} a_1 \\ a_2 \end{pmatrix}, \begin{pmatrix} b_1 \\ b_2 \end{pmatrix} \right\rangle := 2 a_1 b_1 + 2 a_2 b_2 + a_1 b_2 + a_2 b_1
> $$
> Si può verificare direttamente che questa operazione soddisfa gli assiomi di simmetria, bilinearità e positività, definendo pertanto un prodotto scalare su $\mathbb{R}^2$.

> [!example] Prodotto Scalare nello Spazio dei Polinomi $\mathbb{R}[t]$
> Sia $V = \mathbb{R}[t]$ lo spazio vettoriale dei polinomi a coefficienti reali nella variabile $t$. Definiamo:
> $$
> \langle p(t), q(t) \rangle := \int_0^1 p(t) q(t) \, dt
> $$
> Si può verificare che l'integrale del prodotto soddisfa tutti gli assiomi di prodotto scalare su $\mathbb{R}[t]$.

> [!example] Prodotto Scalare nello Spazio delle Matrici $\operatorname{Mat}_{\mathbb{R}}(n, n)$
> Sia $V = \operatorname{Mat}_{\mathbb{R}}(n, n)$ lo spazio delle matrici quadrate reali di ordine $n$. Per ogni $A, B \in \operatorname{Mat}_{\mathbb{R}}(n, n)$, poniamo:
> $$
> \langle A, B \rangle := \operatorname{tr}(A B^T)
> $$
> Tale mappa è un prodotto scalare su $\operatorname{Mat}_{\mathbb{R}}(n, n)$ (noto come prodotto scalare di Frobenius).
>
## 6.3. Norma, Distanza e Disuguaglianze Fondamentali

### Norma Euclidea e Distanza Euclidea

> [!definition] Norma Euclidea e Distanza Euclidea
> Sia $V$ uno spazio euclideo dotato di prodotto scalare $\langle \cdot, \cdot \rangle$.
> 
> 1. La **norma euclidea** (o lunghezza) di un vettore $\mathbf{v} \in V$ è definita come:
>    $$
>    \|\mathbf{v}\| := \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle}
>    $$
> 
> 2. La **distanza euclidea** tra due vettori $\mathbf{v}, \mathbf{w} \in V$ è definita come la norma del loro vettore differenza:
>    $$
>    d(\mathbf{v}, \mathbf{w}) := \|\mathbf{v} - \mathbf{w}\| = \sqrt{\langle \mathbf{v} - \mathbf{w}, \mathbf{v} - \mathbf{w} \rangle}
>    $$

> [!example] Norma e Distanza nello Spazio Standard $\mathbb{R}^n$
> In $V = \mathbb{R}^n$ dotato del prodotto scalare standard, dati $\mathbf{a}, \mathbf{b} \in \mathbb{R}^n$:
> $$
> \|\mathbf{a}\| = \sqrt{\mathbf{a} \cdot \mathbf{a}} = \sqrt{a_1^2 + \dots + a_n^2}
> d(\mathbf{a}, \mathbf{b}) = \|\mathbf{a} - \mathbf{b}\| = \sqrt{(a_1 - b_1)^2 + \dots + (a_n - b_n)^2}
> $$
>
## 6.4. Proprietà di Norma, Distanza e Prodotto Scalare

### Teorema sulle Proprietà di Spazio Euclideo

> [!theorem] Proprietà di Norma, Distanza e Prodotto Scalare
> Sia $V$ uno spazio euclideo. Per ogni $\mathbf{v}, \mathbf{w} \in V$ e per ogni $\lambda \in \mathbb{R}$ valgono le seguenti proprietà:
> 
> 1. **Annullamento della norma:**
>    $$
>    \|\mathbf{v}\| = 0 \iff \mathbf{v} = \mathbf{0}
>    $$
> 
> 2. **Omogeneità assoluta:**
>    $$
>    \|\lambda \mathbf{v}\| = |\lambda| \|\mathbf{v}\|
>    $$
> 
> 3. **Ortogonalità del vettore nullo:**
>    $$
>    \langle \mathbf{0}, \mathbf{v} \rangle = 0
>    $$
> 
> 4. **Disuguaglianza di Cauchy-Schwarz:**
>    $$
>    |\langle \mathbf{v}, \mathbf{w} \rangle| \le \|\mathbf{v}\| \|\mathbf{w}\|
>    $$
> 
> 5. **Teorema di Carnot (identità di polarizzazione):**
>    $$
>    \|\mathbf{v} + \mathbf{w}\|^2 = \|\mathbf{v}\|^2 + \|\mathbf{w}\|^2 + 2\langle \mathbf{v}, \mathbf{w} \rangle
>    $$
> 
> 6. **Disuguaglianza triangolare:**
>    $$
>    \|\mathbf{v} + \mathbf{w}\| \le \|\mathbf{v}\| + \|\mathbf{w}\|
>    $$

> [!quote]- Dimostrazione
> Dimostriamo ciascuna proprietà singolarmente:
> 
> **1. Dimostrazione della proprietà di annullamento della norma:**
> Dalla definizione di norma euclidea e dalla proprietà di positività del prodotto scalare:
> $$
> \|\mathbf{v}\| = 0 \iff \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle} = 0 \iff \langle \mathbf{v}, \mathbf{v} \rangle = 0 \iff \mathbf{v} = \mathbf{0}
> $$
> 
> **2. Dimostrazione dell'omogeneità assoluta:**
> Applicando la bilinearità del prodotto scalare:
> $$
> \|\lambda \mathbf{v}\| = \sqrt{\langle \lambda \mathbf{v}, \lambda \mathbf{v} \rangle} = \sqrt{\lambda^2 \langle \mathbf{v}, \mathbf{v} \rangle} = \sqrt{\lambda^2} \sqrt{\langle \mathbf{v}, \mathbf{v} \rangle} = |\lambda| \|\mathbf{v}\|
> $$
> 
> **3. Dimostrazione dell'ortogonalità del vettore nullo:**
> Ricordando che $\mathbf{0} = 0 \cdot \mathbf{0}$, per linearità si ottiene:
> $$
> \langle \mathbf{0}, \mathbf{v} \rangle = \langle 0 \cdot \mathbf{0}, \mathbf{v} \rangle = 0 \cdot \langle \mathbf{0}, \mathbf{v} \rangle = 0
> $$
> 
> **4. Dimostrazione della Disuguaglianza di Cauchy-Schwarz:**
> Analizziamo separatamente i due casi:
> 
> - *Caso particolare:* Se $\mathbf{v} = \mathbf{0}$ oppure $\mathbf{w} = \mathbf{0}$, allora:
>   $$
>   \langle \mathbf{v}, \mathbf{w} \rangle = 0 \qquad \text{e} \qquad \|\mathbf{v}\| \|\mathbf{w}\| = 0
>   $$
>   L'uguaglianza $0 \le 0$ è verificata banalmente.
> 
> - *Caso generale:* Assumiamo $\mathbf{v} \ne \mathbf{0}$ e $\mathbf{w} \ne \mathbf{0}$, da cui segue che $\|\mathbf{v}\| \ne 0$ e $\|\mathbf{w}\| \ne 0$.
> 
> Consideriamo il vettore $\mathbf{v} - \lambda \mathbf{w}$ al variare di $\lambda \in \mathbb{R}$. Calcoliamo la sua norma al quadrato:
> $$
> \|\mathbf{v} - \lambda \mathbf{w}\|^2 = \langle \mathbf{v} - \lambda \mathbf{w}, \mathbf{v} - \lambda \mathbf{w} \rangle
> $$
> Sfruttando la bilinearità e la simmetria del prodotto scalare:
> $$
> \begin{aligned}
> \|\mathbf{v} - \lambda \mathbf{w}\|^2 &= \langle \mathbf{v}, \mathbf{v} \rangle - \lambda \langle \mathbf{v}, \mathbf{w} \rangle - \lambda \langle \mathbf{w}, \mathbf{v} \rangle + \lambda^2 \langle \mathbf{w}, \mathbf{w} \rangle \\
> &= \langle \mathbf{v}, \mathbf{v} \rangle - 2\lambda \langle \mathbf{v}, \mathbf{w} \rangle + \lambda^2 \langle \mathbf{w}, \mathbf{w} \rangle \\
> &= \|\mathbf{v}\|^2 - 2\lambda \langle \mathbf{v}, \mathbf{w} \rangle + \lambda^2 \|\mathbf{w}\|^2 \qquad \forall \lambda \in \mathbb{R}
> \end{aligned}
> $$
> Poiché tale uguaglianza vale per ogni $\lambda \in \mathbb{R}$, scegliamo in modo mirato il valore:
> $$
> \lambda := \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{w}\|^2}
> $$
> (scelta consentita poiché per ipotesi $\|\mathbf{w}\| \ne 0 \implies \|\mathbf{w}\|^2 \ne 0$). Poiché la norma al quadrato è sempre non negativa:
> $$
> 0 \le \left\| \mathbf{v} - \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{w}\|^2} \mathbf{w} \right\|^2 = \|\mathbf{v}\|^2 - 2 \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{w}\|^2} \langle \mathbf{v}, \mathbf{w} \rangle + \left( \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{w}\|^2} \right)^2 \|\mathbf{w}\|^2
> = \|\mathbf{v}\|^2 - 2 \frac{\langle \mathbf{v}, \mathbf{w} \rangle^2}{\|\mathbf{w}\|^2} + \frac{\langle \mathbf{v}, \mathbf{w} \rangle^2}{\|\mathbf{w}\|^2} = \|\mathbf{v}\|^2 - \frac{\langle \mathbf{v}, \mathbf{w} \rangle^2}{\|\mathbf{w}\|^2}
> $$
> Di conseguenza:
> $$
> \|\mathbf{v}\|^2 - \frac{\langle \mathbf{v}, \mathbf{w} \rangle^2}{\|\mathbf{w}\|^2} \ge 0 \implies \|\mathbf{v}\|^2 \|\mathbf{w}\|^2 \ge \langle \mathbf{v}, \mathbf{w} \rangle^2
> $$
> Estraendo la radice quadrata aritmetica da entrambi i membri (entrambi positivi):
> $$
> \|\mathbf{v}\| \|\mathbf{w}\| \ge |\langle \mathbf{v}, \mathbf{w} \rangle|
> $$
> ovvero la disuguaglianza di Cauchy-Schwarz.
> 
> **5. Dimostrazione del Teorema di Carnot:**
> Sviluppiamo direttamente il quadrato della norma della somma:
> $$
> \begin{aligned}
> \|\mathbf{v} + \mathbf{w}\|^2 &= \langle \mathbf{v} + \mathbf{w}, \mathbf{v} + \mathbf{w} \rangle \\
> &= \langle \mathbf{v}, \mathbf{v} \rangle + \langle \mathbf{w}, \mathbf{v} \rangle + \langle \mathbf{v}, \mathbf{w} \rangle + \langle \mathbf{w}, \mathbf{w} \rangle \\
> &= \langle \mathbf{v}, \mathbf{v} \rangle + 2\langle \mathbf{v}, \mathbf{w} \rangle + \langle \mathbf{w}, \mathbf{w} \rangle \\
> &= \|\mathbf{v}\|^2 + 2\langle \mathbf{v}, \mathbf{w} \rangle + \|\mathbf{w}\|^2
> \end{aligned}
> $$
> 
> **6. Dimostrazione della Disuguaglianza Triangolare:**
> Utilizzando il Teorema di Carnot:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 = \|\mathbf{v}\|^2 + 2\langle \mathbf{v}, \mathbf{w} \rangle + \|\mathbf{w}\|^2
> $$
> Poiché per ogni numero reale $x \le |x|$, si ha $\langle \mathbf{v}, \mathbf{w} \rangle \le |\langle \mathbf{v}, \mathbf{w} \rangle|$:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 \le \|\mathbf{v}\|^2 + 2|\langle \mathbf{v}, \mathbf{w} \rangle| + \|\mathbf{w}\|^2
> $$
> Applicando la disuguaglianza di Cauchy-Schwarz $|\langle \mathbf{v}, \mathbf{w} \rangle| \le \|\mathbf{v}\| \|\mathbf{w}\|$:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 \le \|\mathbf{v}\|^2 + 2\|\mathbf{v}\| \|\mathbf{w}\| + \|\mathbf{w}\|^2 = (\|\mathbf{v}\| + \|\mathbf{w}\|)^2
> $$
> Estraendo la radice quadrata aritmetica:
> $$
> \|\mathbf{v} + \mathbf{w}\| \le \|\mathbf{v}\| + \|\mathbf{w}\| \qquad \blacksquare
> $$
>
## 6.5. Angolo tra Vettori e Ortogonalità

### Angolo nello Spazio Euclideo

> [!note] Limitazione di Cauchy-Schwarz e Dominio dell'Arcocoseno
> Dalla disuguaglianza di Cauchy-Schwarz segue che per ogni coppia di vettori non nulli $\mathbf{v}, \mathbf{w} \in V$:
> $$
> \frac{|\langle \mathbf{v}, \mathbf{w} \rangle|}{\|\mathbf{v}\| \|\mathbf{w}\|} \le 1 \implies -1 \le \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{v}\| \|\mathbf{w}\|} \le 1
> $$
> Ciò assicura che il rapporto appartenga sempre all'intervallo $[-1, 1]$, rendendo ben definita l'operazione di arcocoseno.

> [!definition] Angolo tra due Vettori
> Sia $V$ uno spazio euclideo e siano $\mathbf{v}, \mathbf{w} \in V \setminus \{\mathbf{0}\}$. Si definisce **angolo** tra $\mathbf{v}$ e $\mathbf{w}$ lo scalare:
> $$
> \widehat{\mathbf{v} \mathbf{w}} := \arccos\left( \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{v}\| \|\mathbf{w}\|} \right) \in [0, \pi]
> $$

> [!note] Formula Trigonometrica del Prodotto Scalare
> Dalla definizione di angolo discende la consueta rappresentazione trigonometrica:
> $$
> \cos(\widehat{\mathbf{v} \mathbf{w}}) = \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{v}\| \|\mathbf{w}\|} \implies \langle \mathbf{v}, \mathbf{w} \rangle = \|\mathbf{v}\| \|\mathbf{w}\| \cos(\widehat{\mathbf{v} \mathbf{w}})
> $$
> In particolare, se i vettori formano un angolo retto:
> $$
> \widehat{\mathbf{v} \mathbf{w}} = \frac{\pi}{2} \implies \langle \mathbf{v}, \mathbf{w} \rangle = 0
> $$
>
### Vettori Perpendicolari e Teorema di Pitagora

> [!definition] Vettori Perpendicolari o Ortogonali
> Sia $V$ uno spazio euclideo e siano $\mathbf{v}, \mathbf{w} \in V$. I vettori $\mathbf{v}$ e $\mathbf{w}$ si dicono **perpendicolari** (o **ortogonali**) se il loro prodotto scalare è nullo:
> $$
> \mathbf{v} \perp \mathbf{w} \iff \langle \mathbf{v}, \mathbf{w} \rangle = 0
> $$

> [!note] Proprietà dell'Ortogonalità
> - Il vettore nullo $\mathbf{0}$ è ortogonale a ogni vettore dello spazio euclideo:
>   $$
>   \forall \mathbf{v} \in V, \quad \langle \mathbf{0}, \mathbf{v} \rangle = 0 \implies \mathbf{0} \perp \mathbf{v}
>   $$
> - Nessun vettore non nullo è mai ortogonale a se stesso:
>   $$
>   \text{Se } \mathbf{v} \ne \mathbf{0} \implies \langle \mathbf{v}, \mathbf{v} \rangle = \|\mathbf{v}\|^2 > 0 \implies \mathbf{v} \not\perp \mathbf{v}
>   $$

> [!theorem] Teorema di Pitagora
> Siano $\mathbf{v}, \mathbf{w} \in V$ due vettori ortogonali, ovvero $\mathbf{v} \perp \mathbf{w} \iff \langle \mathbf{v}, \mathbf{w} \rangle = 0$. Allora:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 = \|\mathbf{v}\|^2 + \|\mathbf{w}\|^2
> $$

> [!quote]- Dimostrazione
> Dal Teorema di Carnot:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 = \|\mathbf{v}\|^2 + \|\mathbf{w}\|^2 + 2\langle \mathbf{v}, \mathbf{w} \rangle
> $$
> Essendo $\mathbf{v} \perp \mathbf{w}$, il termine misto si annulla identicamente ($2\langle \mathbf{v}, \mathbf{w} \rangle = 0$), ottenendo direttamente:
> $$
> \|\mathbf{v} + \mathbf{w}\|^2 = \|\mathbf{v}\|^2 + \|\mathbf{w}\|^2 \qquad \blacksquare
> $$
>
### Indipendenza Lineare di Vettori Ortogonali

> [!proposition] Indipendenza Lineare di Sistemi Ortogonali
> Sia $V$ uno spazio euclideo. Siano $\mathbf{v}_1, \dots, \mathbf{v}_n \in V$ vettori tutti non nulli ($\mathbf{v}_i \ne \mathbf{0}$ per ogni $i = 1, \dots, n$).
> Se i vettori sono a due a due ortogonali:
> $$
> \mathbf{v}_i \perp \mathbf{v}_j \qquad \forall i \ne j
> $$
> allora $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono linearmente indipendenti.

> [!quote]- Dimostrazione
> Consideriamo una generica combinazione lineare nulla dei vettori:
> $$
> c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}
> $$
> Per isolare ciascun coefficiente $c_i$ ($i \in \{1, \dots, n\}$), moltiplichiamo scalarmente l'intera equazione per il vettore $\mathbf{v}_i$:
> $$
> \left\langle c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n, \mathbf{v}_i \right\rangle = \langle \mathbf{0}, \mathbf{v}_i \rangle = 0
> $$
> Per bilinearità del prodotto scalare:
> $$
> \sum_{k=1}^n c_k \langle \mathbf{v}_k, \mathbf{v}_i \rangle = 0
> $$
> Decomponendo la sommatoria isolando il termine con indice $k = i$:
> $$
> \sum_{k=1}^{i-1} c_k \underbrace{\langle \mathbf{v}_k, \mathbf{v}_i \rangle}_{= 0} + c_i \langle \mathbf{v}_i, \mathbf{v}_i \rangle + \sum_{k=i+1}^n c_k \underbrace{\langle \mathbf{v}_k, \mathbf{v}_i \rangle}_{= 0} = 0
> $$
> Poiché $\mathbf{v}_k \perp \mathbf{v}_i$ per ogni $k \ne i$, tutti i termini con $k \ne i$ si annullano, lasciando unicamente:
> $$
> c_i \langle \mathbf{v}_i, \mathbf{v}_i \rangle = 0
> $$
> Essendo per ipotesi $\mathbf{v}_i \ne \mathbf{0}$, si ha $\langle \mathbf{v}_i, \mathbf{v}_i \rangle = \|\mathbf{v}_i\|^2 > 0 \ne 0$. Di conseguenza:
> $$
> c_i = 0
> $$
> Poiché tale conclusione sussiste per ogni $i = 1, \dots, n$, tutti i coefficienti sono nulli:
> $$
> c_1 = c_2 = \dots = c_n = 0
> $$
> I vettori $\mathbf{v}_1, \dots, \mathbf{v}_n$ sono quindi linearmente indipendenti. $\blacksquare$

> [!note] Non Validità dell'Inverso in Generale
> L'implicazione inversa non vale: vettori linearmente indipendenti non sono necessariamente ortogonali.
> Ad esempio, in $\mathbb{R}^2$ i vettori:
> $$
> \begin{pmatrix} 0 \\ 1 \end{pmatrix} \quad \text{e} \quad \begin{pmatrix} 1 \\ 1 \end{pmatrix}
> $$
> sono linearmente indipendenti, ma il loro prodotto scalare standard vale:
> $$
> \begin{pmatrix} 0 \\ 1 \end{pmatrix} \cdot \begin{pmatrix} 1 \\ 1 \end{pmatrix} = 0 \cdot 1 + 1 \cdot 1 = 1 \ne 0 \implies \begin{pmatrix} 0 \\ 1 \end{pmatrix} \not\perp \begin{pmatrix} 1 \\ 1 \end{pmatrix}
> $$
>
## 6.6. Complemento Ortogonale

### Definizione e Caratterizzazione del Complemento Ortogonale

> [!definition] Complemento Ortogonale
> Sia $V$ uno spazio euclideo e sia $H \subseteq V$ un sottospazio vettoriale. Il **complemento ortogonale** di $H$ è il sottoinsieme dei vettori di $V$ ortogonali a ogni vettore di $H$:
> $$
> H^\perp := \{ \mathbf{v} \in V : \mathbf{v} \perp \mathbf{w}, \; \forall \mathbf{w} \in H \} = \{ \mathbf{v} \in V : \langle \mathbf{v}, \mathbf{w} \rangle = 0, \; \forall \mathbf{w} \in H \} \subseteq V
> $$

> [!proposition] Proprietà del Complemento Ortogonale
> Sia $H \subseteq V$ un sottospazio vettoriale di uno spazio euclideo $V$.
> 
> 1. $H^\perp$ è un sottospazio vettoriale di $V$.
> 2. Se $H$ è generato da un insieme di vettori, $H = \operatorname{Span}\{\mathbf{w}_1, \dots, \mathbf{w}_d\}$, allora:
>    $$
>    H^\perp = \{ \mathbf{v} \in V : \mathbf{v} \perp \mathbf{w}_i, \; \forall i = 1, \dots, d \}
>    $$

> [!quote]- Dimostrazione
> **1. Dimostrazione che $H^\perp$ è un sottospazio vettoriale:**
> Verifichiamo i tre assiomi di sottospazio vettoriale:
> 
> - *Presenza dello zero:* $\mathbf{0} \in H^\perp$ poiché per ogni $\mathbf{w} \in H$ si ha $\langle \mathbf{0}, \mathbf{w} \rangle = 0 \implies \mathbf{0} \perp \mathbf{w}$.
> - *Chiusura rispetto alla somma:* Siano $\mathbf{v}_1, \mathbf{v}_2 \in H^\perp$. Allora per ogni $\mathbf{w} \in H$ si ha $\langle \mathbf{v}_1, \mathbf{w} \rangle = 0$ e $\langle \mathbf{v}_2, \mathbf{w} \rangle = 0$. Per bilinearità:
>   $$
>   \langle \mathbf{v}_1 + \mathbf{v}_2, \mathbf{w} \rangle = \langle \mathbf{v}_1, \mathbf{w} \rangle + \langle \mathbf{v}_2, \mathbf{w} \rangle = 0 + 0 = 0 \quad \forall \mathbf{w} \in H \implies \mathbf{v}_1 + \mathbf{v}_2 \in H^\perp
>   $$
> - *Chiusura rispetto al prodotto per scalare:* Sia $\mathbf{v} \in H^\perp$ e sia $c \in \mathbb{R}$. Per ogni $\mathbf{w} \in H$:
>   $$
>   \langle c\mathbf{v}, \mathbf{w} \rangle = c \langle \mathbf{v}, \mathbf{w} \rangle = c \cdot 0 = 0 \implies c\mathbf{v} \in H^\perp
>   $$
> Dunque $H^\perp \le V$ è un sottospazio vettoriale.
> 
> **2. Dimostrazione della riduzione ai generatori:**
> - L'inclusione $H^\perp \subseteq \{ \mathbf{v} \in V : \mathbf{v} \perp \mathbf{w}_i, \; \forall i = 1, \dots, d \}$ è immediata, poiché se $\mathbf{v}$ è ortogonale a ogni vettore di $H$, è in particolare ortogonale ai suoi generatori $\mathbf{w}_1, \dots, \mathbf{w}_d \in H$.
> - Mostriamo l'inclusione opposta $(\supseteq)$:
>   Sia $\mathbf{v} \in V$ tale che $\langle \mathbf{v}, \mathbf{w}_i \rangle = 0$ per ogni $i = 1, \dots, d$.
>   Sia $\mathbf{w} \in H$ un generico vettore. Poiché $H = \operatorname{Span}\{\mathbf{w}_1, \dots, \mathbf{w}_d\}$, esistono scalari $c_1, \dots, c_d \in \mathbb{R}$ tali che $\mathbf{w} = c_1 \mathbf{w}_1 + \dots + c_d \mathbf{w}_d$. Calcoliamo:
>   $$
>   \begin{aligned}
>   \langle \mathbf{v}, \mathbf{w} \rangle &= \langle \mathbf{v}, c_1 \mathbf{w}_1 + \dots + c_d \mathbf{w}_d \rangle \\
>   &= c_1 \langle \mathbf{v}, \mathbf{w}_1 \rangle + \dots + c_d \langle \mathbf{v}, \mathbf{w}_d \rangle \\
>   &= c_1 \cdot 0 + \dots + c_d \cdot 0 = 0
>   \end{aligned}
>   $$
>   Dunque $\langle \mathbf{v}, \mathbf{w} \rangle = 0$ per ogni $\mathbf{w} \in H$, ovvero $\mathbf{v} \perp \mathbf{w}$ per ogni $\mathbf{w} \in H$. Ne segue che $\mathbf{v} \in H^\perp$. $\blacksquare$

> [!example] Calcolo Esplicito del Complemento Ortogonale in $\mathbb{R}^3$
> Sia $H = \operatorname{Span}\left\{ \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} \right\} \subseteq \mathbb{R}^3$. Vogliamo trovare $H^\perp$.
> Sfruttando la proposizione precedente:
> $$
> H^\perp = \left\{ \mathbf{v} \in \mathbb{R}^3 : \mathbf{v} \perp \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} \;\land\; \mathbf{v} \perp \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} \right\}
> $$
> Imponendo l'annullamento del prodotto scalare standard:
> $$
> \mathbf{v} \cdot \begin{pmatrix} 1 \\ 1 \\ 1 \end{pmatrix} = 0 \implies v_1 + v_2 + v_3 = 0
> \mathbf{v} \cdot \begin{pmatrix} 1 \\ 0 \\ 2 \end{pmatrix} = 0 \implies v_1 + 2v_3 = 0
> $$
> Risolvendo il sistema lineare:
> $$
> \begin{cases}
> v_1 + v_2 + v_3 = 0 \\
> v_1 + 2v_3 = 0
> \end{cases}
> $$
> Ponendo il parametro libero $v_3 := t$:
> $$
> \begin{cases}
> v_1 = -2t \\
> -2t + v_2 + t = 0 \implies v_2 = t
> \end{cases}
> $$
> Ne segue che:
> $$
> H^\perp = \operatorname{Span}\left\{ \begin{pmatrix} -2 \\ 1 \\ 1 \end{pmatrix} \right\}
> $$
> che rappresenta una retta passante per l'origine ortogonale al piano $H$.
>
## 6.7. Basi Ortogonali e Ortonormali

### Definizioni Fondamentali

> [!definition] Base Ortogonale e Base Ortonormale
> Sia $V$ uno spazio euclideo e sia $H \subseteq V$ un sottospazio vettoriale. Una base $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ di $H$ è detta:
> 
> - **Base Ortogonale:** se i vettori della base sono a due a due ortogonali:
>   $$
>   \forall i \ne j \implies \langle \mathbf{b}_i, \mathbf{b}_j \rangle = 0
>   $$
> 
> - **Base Ortonormale:** se è ortogonale e ogni vettore ha norma unitaria ($\|\mathbf{b}_i\| = 1$):
>   $$
>   \forall i, j \implies \langle \mathbf{b}_i, \mathbf{b}_j \rangle = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \ne j \end{cases}
>   $$

> [!example] Base Canonica di $\mathbb{R}^n$
> La base canonica $\mathcal{E} = \{\mathbf{e}_1, \mathbf{e}_2, \dots, \mathbf{e}_n\}$ è una base ortonormale di $\mathbb{R}^n$ rispetto al prodotto scalare standard.

> [!example] Base Ortogonale non Ortonormale in $\mathbb{R}^2$
> In $\mathbb{R}^2$, consideriamo l'insieme:
> $$
> \mathcal{B} = \left\{ \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\}
> $$
> Tale insieme è una base di $\mathbb{R}^2$. Calcoliamo il prodotto scalare:
> $$
> \left\langle \begin{pmatrix} 1 \\ 1 \end{pmatrix}, \begin{pmatrix} 1 \\ -1 \end{pmatrix} \right\rangle = \begin{pmatrix} 1 \\ 1 \end{pmatrix} \cdot \begin{pmatrix} 1 \\ -1 \end{pmatrix} = 1 \cdot 1 + 1 \cdot (-1) = 1 - 1 = 0
> $$
> Dunque $\mathcal{B}$ è una **base ortogonale**, ma **non è ortonormale** in quanto:
> $$
> \left\| \begin{pmatrix} 1 \\ 1 \end{pmatrix} \right\| = \sqrt{1^2 + 1^2} = \sqrt{2} \ne 1
> $$

> [!note] Normalizzazione di una Base Ortogonale
> Ogni base ortogonale può diventare una base ortonormale dividendo ciascun vettore della base per la rispettiva norma.
> Ad esempio, a partire dalla base precedente di $\mathbb{R}^2$:
> $$
> \mathcal{B}_{\text{o.n.}} = \left\{ \begin{pmatrix} 1/\sqrt{2} \\ 1/\sqrt{2} \end{pmatrix}, \begin{pmatrix} 1/\sqrt{2} \\ -1/\sqrt{2} \end{pmatrix} \right\}
> $$
> è una base ortonormale di $\mathbb{R}^2$.
>
### Coordinate rispetto a una Base Ortonormale (Coordinate di Fourier)

> [!proposition] Espressione delle Coordinate rispetto a una Base Ortonormale
> Sia $V$ uno spazio euclideo e sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una sua base ortonormale.
> Allora per ogni vettore $\mathbf{v} \in V$, il vettore delle coordinate di $\mathbf{v}$ rispetto alla base $\mathcal{B}$ è dato direttamente dai prodotti scalari:
> $$
> [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} \langle \mathbf{v}, \mathbf{b}_1 \rangle \\ \vdots \\ \langle \mathbf{v}, \mathbf{b}_n \rangle \end{pmatrix}
> $$
> ovvero:
> $$
> \mathbf{v} = \sum_{i=1}^n \langle \mathbf{v}, \mathbf{b}_i \rangle \mathbf{b}_i
> $$

> [!quote]- Dimostrazione
> Poiché $\mathcal{B}$ è una base di $V$, per ogni $\mathbf{v} \in V$ esistono unici scalari $c_1, \dots, c_n \in \mathbb{R}$ tali che:
> $$
> \mathbf{v} = \sum_{i=1}^n c_i \mathbf{b}_i \implies [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} c_1 \\ \vdots \\ c_n \end{pmatrix}
> $$
> Calcoliamo il prodotto scalare di $\mathbf{v}$ con il generico vettore di base $\mathbf{b}_j$ ($j \in \{1, \dots, n\}$):
> $$
> \begin{aligned}
> \langle \mathbf{v}, \mathbf{b}_j \rangle &= \left\langle \sum_{i=1}^n c_i \mathbf{b}_i, \mathbf{b}_j \right\rangle = \sum_{i=1}^n c_i \langle \mathbf{b}_i, \mathbf{b}_j \rangle \\
> &= \sum_{i=1}^{j-1} c_i \underbrace{\langle \mathbf{b}_i, \mathbf{b}_j \rangle}_{= 0} + c_j \langle \mathbf{b}_j, \mathbf{b}_j \rangle + \sum_{i=j+1}^n c_i \underbrace{\langle \mathbf{b}_i, \mathbf{b}_j \rangle}_{= 0} \\
> &= c_j \langle \mathbf{b}_j, \mathbf{b}_j \rangle
> \end{aligned}
> $$
> Essendo la base ortonormale, $\langle \mathbf{b}_j, \mathbf{b}_j \rangle = \|\mathbf{b}_j\|^2 = 1$. Ne consegue:
> $$
> \langle \mathbf{v}, \mathbf{b}_j \rangle = c_j \cdot 1 = c_j
> $$
> Dunque ogni coordinata coincide con il rispettivo prodotto scalare, provando la tesi:
> $$
> [\mathbf{v}]_{\mathcal{B}} = \begin{pmatrix} \langle \mathbf{v}, \mathbf{b}_1 \rangle \\ \vdots \\ \langle \mathbf{v}, \mathbf{b}_n \rangle \end{pmatrix} \qquad \blacksquare
> $$
>
## 6.8. Proiezione Ortogonale

### Definizione dell'Operatore di Proiezione Ortogonale

> [!definition] Proiezione Ortogonale su un Sottospazio
> Sia $V$ uno spazio euclideo e sia $H \subseteq V$ un sottospazio vettoriale. Sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base ortonormale di $H$.
> La **proiezione ortogonale** di un vettore $\mathbf{v} \in V$ su $H$ è la funzione $\pi_H: V \to V$ definita da:
> $$
> \pi_H(\mathbf{v}) := \langle \mathbf{v}, \mathbf{b}_1 \rangle \mathbf{b}_1 + \dots + \langle \mathbf{v}, \mathbf{b}_n \rangle \mathbf{b}_n = \sum_{i=1}^n \langle \mathbf{v}, \mathbf{b}_i \rangle \mathbf{b}_i
> $$

> [!note] Invarianza della Proiezione Ortogonale rispetto alla Base Scelta
> È possibile dimostrare che l'operatore $\pi_H$ è intrinseco al sottospazio $H$ e **non dipende** dalla base ortonormale $\mathcal{B}$ scelta per rappresentarlo.
>
### Proprietà dell'Operatore di Proiezione Ortogonale

> [!proposition] Proprietà della Proiezione Ortogonale $\pi_H$
> Sia $\pi_H: V \to V$ la proiezione ortogonale sul sottospazio $H$. Valgono le seguenti proprietà:
> 
> 1. $\pi_H$ è un'applicazione lineare ($\pi_H \in \operatorname{End}(V)$).
> 2. $\pi_H(\mathbf{h}) = \mathbf{h}$ per ogni $\mathbf{h} \in H$.
> 3. L'immagine e il nucleo sono dati rispettivamente da:
>    $$
>    \operatorname{Im}(\pi_H) = H \qquad \text{e} \qquad \operatorname{Ker}(\pi_H) = H^\perp
>    $$
> 4. $\pi_H$ è idempotente:
>    $$
>    \pi_H \circ \pi_H = \pi_H
>    $$
> 5. Per ogni $\mathbf{v} \in V$:
>    $$
>    \mathbf{v} - \pi_H(\mathbf{v}) \in H^\perp
>    $$

> [!quote]- Dimostrazione
> **1. Dimostrazione della linearità di $\pi_H$:**
> *(Lasciata al lettore come conseguenza diretta della bilinearità del prodotto scalare e della linearità delle combinazioni lineari).*
> 
> **2. Dimostrazione di $\pi_H(\mathbf{h}) = \mathbf{h}$ per ogni $\mathbf{h} \in H$:**
> Sia $\mathbf{h} \in H$. Poiché $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è una base ortonormale di $H$, il vettore delle coordinate di $\mathbf{h}$ rispetto a $\mathcal{B}$ è:
> $$
> [\mathbf{h}]_{\mathcal{B}} = \begin{pmatrix} \langle \mathbf{h}, \mathbf{b}_1 \rangle \\ \vdots \\ \langle \mathbf{h}, \mathbf{b}_n \rangle \end{pmatrix}
> $$
> Ricostruendo il vettore attraverso i suoi coefficienti di base:
> $$
> \mathbf{h} = \langle \mathbf{h}, \mathbf{b}_1 \rangle \mathbf{b}_1 + \dots + \langle \mathbf{h}, \mathbf{b}_n \rangle \mathbf{b}_n = \pi_H(\mathbf{h})
> $$
> 
> **3. Dimostrazione dell'immagine $\operatorname{Im}(\pi_H) = H$:**
> - Per ogni $\mathbf{v} \in V$, $\pi_H(\mathbf{v}) = \sum_{i=1}^n \langle \mathbf{v}, \mathbf{b}_i \rangle \mathbf{b}_i \in \operatorname{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_n\} = H$. Quindi:
>   $$
>   \operatorname{Im}(\pi_H) \subseteq H
>   $$
> - Viceversa, sia $\mathbf{h} \in H$. Dal punto 2 sappiamo che $\pi_H(\mathbf{h}) = \mathbf{h}$, il che mostra che $\mathbf{h} \in \operatorname{Im}(\pi_H)$ per ogni $\mathbf{h} \in H$. Dunque:
>   $$
>   H \subseteq \operatorname{Im}(\pi_H)
>   $$
> Dalla doppia inclusione segue:
> $$
> \operatorname{Im}(\pi_H) = H
> $$
> 
> **4. Dimostrazione del nucleo $\operatorname{Ker}(\pi_H) = H^\perp$:**
> Per definizione di nucleo:
> $$
> \mathbf{v} \in \operatorname{Ker}(\pi_H) \iff \pi_H(\mathbf{v}) = \mathbf{0}
> $$
> Sostituendo la definizione di $\pi_H$:
> $$
> \langle \mathbf{v}, \mathbf{b}_1 \rangle \mathbf{b}_1 + \dots + \langle \mathbf{v}, \mathbf{b}_n \rangle \mathbf{b}_n = \mathbf{0}
> $$
> Poiché $\mathbf{b}_1, \dots, \mathbf{b}_n$ costituiscono una base di $H$, essi sono linearmente indipendenti. Una loro combinazione lineare è nulla se e solo se tutti i coefficienti sono nulli:
> $$
> \langle \mathbf{v}, \mathbf{b}_i \rangle = 0 \qquad \forall i = 1, \dots, n
> $$
> il che equivale a dire:
> $$
> \mathbf{v} \perp \mathbf{b}_i \qquad \forall i = 1, \dots, n
> $$
> Poiché $H = \operatorname{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_n\}$, essere ortogonale a tutti i generatori equivale ad appartenere al complemento ortogonale $H^\perp$:
> $$
> \mathbf{v} \in H^\perp
> $$
> Abbiamo quindi dimostrato che:
> $$
> \forall \mathbf{v} \in V, \quad \mathbf{v} \in \operatorname{Ker}(\pi_H) \iff \mathbf{v} \in H^\perp \implies \operatorname{Ker}(\pi_H) = H^\perp \qquad \blacksquare
> $$
>
### Dimostrazione delle Proprietà della Proiezione Ortogonale (Continuazione)

Si conclude la dimostrazione del teorema fondamentale relativo alle proprietà dell'operatore di proiezione ortogonale $\pi_H: V \to V$ su un sottospazio vettoriale $H \subseteq V$ di uno spazio euclideo $V$.

> [!quote]- Dimostrazione (Punti 5 e 6)
> Riprendendo la numerazione delle proprietà enunciate:
> 
> **Punto 5 (Idempotenza di $\pi_H$):**
> Si vuole dimostrare che l'operatore di proiezione è idempotente, ovvero che:
> $$
> \pi_H \circ \pi_H = \pi_H
> $$
> Per ogni vettore $\mathbf{v} \in V$, la sua proiezione appartiene per definizione allo spazio di arrivo $H$, ovvero $\pi_H(\mathbf{v}) \in H$.
> Applicando la proprietà ② precedentemente dimostrata (secondo cui ogni vettore già appartenente a $H$ coincide con la propria proiezione ortogonale, $\pi_H(\mathbf{h}) = \mathbf{h}$ per ogni $\mathbf{h} \in H$), ponendo $\mathbf{h} = \pi_H(\mathbf{v}) \in H$ si ottiene immediatamente:
> $$
> \pi_H(\pi_H(\mathbf{v})) = \pi_H(\mathbf{v}) \qquad \forall \mathbf{v} \in V
> $$
> Da cui discende l'idempotenza $\pi_H \circ \pi_H = \pi_H$.
> 
> **Punto 6 (Ortogonalità del complemento proiettivo):**
> Si vuole verificare che la componente residua $\mathbf{v} - \pi_H(\mathbf{v})$ appartiene al complemento ortogonale $H^\perp$:
> $$
> \forall \mathbf{v} \in V, \qquad \mathbf{v} - \pi_H(\mathbf{v}) \in H^\perp
> $$
> Applichiamo l'operatore $\pi_H$ alla combinazione lineare $\mathbf{v} - \pi_H(\mathbf{v})$, sfruttando la linearità di $\pi_H$ e l'idempotenza appena provata:
> $$
> \pi_H\big(\mathbf{v} - \pi_H(\mathbf{v})\big) = \pi_H(\mathbf{v}) - \pi_H\big(\pi_H(\mathbf{v})\big) = \pi_H(\mathbf{v}) - \pi_H(\mathbf{v}) = \mathbf{0}
> $$
> Ne consegue che il vettore appartiene al nucleo dell'operatore di proiezione:
> $$
> \mathbf{v} - \pi_H(\mathbf{v}) \in \operatorname{Ker}(\pi_H)
> $$
> Essendo stato dimostrato al punto ③ che $\operatorname{Ker}(\pi_H) = H^\perp$, si conclude direttamente che:
> $$
> \mathbf{v} - \pi_H(\mathbf{v}) \in H^\perp \qquad \blacksquare
> $$

> [!note] Interpretazione Geometrica della Decomposizione
> Dal punto di vista geometrico, ogni vettore $\mathbf{v} \in V$ viene decomposto in modo univoco nella somma di una componente parallela al sottospazio $H$ (data da $\pi_H(\mathbf{v})$) e di una componente ortogonale a $H$ (data da $\mathbf{v} - \pi_H(\mathbf{v}) \in H^\perp$). Il vettore $\mathbf{v} - \pi_H(\mathbf{v})$ forma un angolo retto con qualunque direzione giacente sul piano $H$.
>
### Decomposizione Ortogonale dello Spazio Euclideo

> [!theorem] Corollario della Decomposizione Ortogonale
> Sia $V$ uno spazio euclideo reale di dimensione finita e sia $H \subseteq V$ un suo sottospazio vettoriale. Valgono le seguenti proprietà fondamentali:
> 
> 1. Relazione dimensionale:
> $$
> \dim(H) + \dim(H^\perp) = \dim(V)
> $$
> 
> 2. Somma diretta ortogonale:
> $$
> H + H^\perp = V, \qquad H \cap H^\perp = \{\mathbf{0}\} \iff V = H \oplus H^\perp
> $$
> 
> 3. Involuzione dell'ortogonale:
> $$
> (H^\perp)^\perp = H
> $$
> 
> 4. Decomposizione dell'identità:
> $$
> \forall \mathbf{v} \in V, \quad \mathbf{v} = \pi_H(\mathbf{v}) + \pi_{H^\perp}(\mathbf{v}) \iff \pi_H + \pi_{H^\perp} = \operatorname{id}_V
> $$

> [!quote]- Dimostrazione
> **Dimostrazione del punto 1:**
> Consideriamo l'operatore proiezione ortogonale $\pi_H: V \to V$. Per il Teorema della Dimensione (nullità + rango):
> $$
> \dim(\operatorname{Ker}(\pi_H)) + \dim(\operatorname{Im}(\pi_H)) = \dim(V)
> $$
> Poiché $\operatorname{Ker}(\pi_H) = H^\perp$ e $\operatorname{Im}(\pi_H) = H$, sostituendo si ottiene direttamente:
> $$
> \dim(H^\perp) + \dim(H) = \dim(V)
> $$
> 
> **Dimostrazione del punto 2:**
> Per ogni vettore $\mathbf{v} \in V$, possiamo riscrivere banalmente l'identità:
> $$
> \mathbf{v} = \underbrace{\pi_H(\mathbf{v})}_{\in H} + \underbrace{\big[\mathbf{v} - \pi_H(\mathbf{v})\big]}_{\in H^\perp}
> $$
> Poiché il primo termine appartiene a $H$ e il secondo appartiene a $H^\perp$, ogni vettore di $V$ è somma di un elemento di $H$ e di uno di $H^\perp$, provando che $V = H + H^\perp$.
> 
> Per determinare l'intersezione $H \cap H^\perp$, applichiamo la formula di Grassmann:
> $$
> \dim(H \cap H^\perp) = \dim(H + H^\perp) - \big(\dim(H) + \dim(H^\perp)\big)
> $$
> Sostituendo $\dim(H + H^\perp) = \dim(V)$ e $\dim(H) + \dim(H^\perp) = \dim(V)$:
> $$
> \dim(H \cap H^\perp) = \dim(V) - \dim(V) = 0
> $$
> Di conseguenza, l'intersezione contiene unicamente il vettore nullo:
> $$
> H \cap H^\perp = \{\mathbf{0}\}
> $$
> La somma è pertanto diretta e lo spazio si decompone come somma diretta ortogonale $V = H \oplus H^\perp$.
> 
> **Dimostrazione del punto 3:**
> Verifichiamo innanzitutto l'inclusione $H \subseteq (H^\perp)^\perp$.
> Per definizione di complemento ortogonale:
> $$
> \forall \mathbf{v} \in H, \quad \forall \mathbf{w} \in H^\perp \implies \mathbf{v} \perp \mathbf{w} \iff \langle \mathbf{v}, \mathbf{w} \rangle = 0
> $$
> Fissato $\mathbf{v} \in H$, esso risulta ortogonale a ogni elemento di $H^\perp$, il che per definizione implica che $\mathbf{v} \in (H^\perp)^\perp$. Ne consegue l'inclusione:
> $$
> H \subseteq (H^\perp)^\perp
> $$
> Calcoliamo ora la dimensione di $(H^\perp)^\perp$ sfruttando la proprietà 1 applicata al sottospazio $H^\perp$:
> $$
> \dim((H^\perp)^\perp) = \dim(V) - \dim(H^\perp)
> $$
> Essendo $\dim(H^\perp) = \dim(V) - \dim(H)$, sostituendo si ricava:
> $$
> \dim((H^\perp)^\perp) = \dim(V) - \big(\dim(V) - \dim(H)\big) = \dim(H)
> $$
> Avendo provato che $H \subseteq (H^\perp)^\perp$ e che i due spazi possiedono la medesima dimensione finita, si conclude l'uguaglianza insiemistica:
> $$
> (H^\perp)^\perp = H
> $$
> 
> **Dimostrazione del punto 4:**
> Sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base ortonormale di $H$ e sia $\mathcal{B}' = \{\mathbf{b}_1', \dots, \mathbf{b}_m'\}$ una base ortonormale di $H^\perp$.
> Poiché $V = H \oplus H^\perp$, l'unione $\mathcal{B} \cup \mathcal{B}' = \{\mathbf{b}_1, \dots, \mathbf{b}_n, \mathbf{b}_1', \dots, \mathbf{b}_m'\}$ costituisce una base ortonormale dell'intero spazio $V$.
> Per ogni vettore $\mathbf{v} \in V$, lo sviluppo di Fourier rispetto a tale base ortonormale fornisce:
> $$
> \mathbf{v} = \sum_{i=1}^n \langle \mathbf{v}, \mathbf{b}_i \rangle \mathbf{b}_i + \sum_{j=1}^m \langle \mathbf{v}, \mathbf{b}_j' \rangle \mathbf{b}_j'
> $$
> Riconoscendo le definizioni di proiezione ortogonale su $H$ e su $H^\perp$:
> $$
> \pi_H(\mathbf{v}) = \sum_{i=1}^n \langle \mathbf{v}, \mathbf{b}_i \rangle \mathbf{b}_i, \qquad \pi_{H^\perp}(\mathbf{v}) = \sum_{j=1}^m \langle \mathbf{v}, \mathbf{b}_j' \rangle \mathbf{b}_j'
> $$
> Si ottiene immediatamente:
> $$
> \mathbf{v} = \pi_H(\mathbf{v}) + \pi_{H^\perp}(\mathbf{v}) \qquad \blacksquare
> $$
>
### Teorema della Minima Distanza

> [!theorem] Corollario della Minima Distanza (Migliore Approssimazione)
> Sia $V$ uno spazio euclideo e sia $H \subseteq V$ un suo sottospazio vettoriale. Per ogni vettore $\mathbf{v} \in V$, la proiezione ortogonale $\pi_H(\mathbf{v})$ è l'elemento di $H$ che minimizza la distanza euclidea da $\mathbf{v}$:
> $$
> \forall \mathbf{v} \in V, \qquad d\big(\mathbf{v}, \pi_H(\mathbf{v})\big) \le d(\mathbf{v}, \mathbf{h}) \qquad \forall \mathbf{h} \in H
> $$
> L'uguaglianza vale se e solo se $\mathbf{h} = \pi_H(\mathbf{v})$.

> [!quote]- Dimostrazione
> Sia $\mathbf{h} \in H$ un generico vettore di $H$. Possiamo decomporre la differenza $\mathbf{v} - \mathbf{h}$ inserendo il termine $\pi_H(\mathbf{v})$:
> $$
> \mathbf{v} - \mathbf{h} = \big(\mathbf{v} - \pi_H(\mathbf{v})\big) + \big(\pi_H(\mathbf{v}) - \mathbf{h}\big)
> $$
> Analizziamo i due vettori addendi:
> - Il vettore $\mathbf{v} - \pi_H(\mathbf{v})$ appartiene a $H^\perp$ per la proprietà 6 di $\pi_H$.
> - Il vettore $\pi_H(\mathbf{v}) - \mathbf{h}$ appartiene a $H$, essendo differenza di due vettori appartenenti al sottospazio $H$.
> 
> Poiché i due vettori sono tra loro ortogonali, possiamo applicare il Teorema di Pitagora:
> $$
> \|\mathbf{v} - \mathbf{h}\|^2 = \|\mathbf{v} - \pi_H(\mathbf{v})\|^2 + \|\pi_H(\mathbf{v}) - \mathbf{h}\|^2
> $$
> Essendo la norma sempre non negativa, $\|\pi_H(\mathbf{v}) - \mathbf{h}\|^2 \ge 0$, si ha:
> $$
> \|\mathbf{v} - \mathbf{h}\|^2 \ge \|\mathbf{v} - \pi_H(\mathbf{v})\|^2
> $$
> Estraendo la radice quadrata:
> $$
> d(\mathbf{v}, \mathbf{h}) \ge d\big(\mathbf{v}, \pi_H(\mathbf{v})\big)
> $$
> L'uguaglianza si verifica se e solo se $\|\pi_H(\mathbf{v}) - \mathbf{h}\|^2 = 0 \iff \mathbf{h} = \pi_H(\mathbf{v}) \qquad \blacksquare$
>
## 6.9. Algoritmo di Ortogonalizzazione di Gram-Schmidt

### Procedura Costruttiva di Ortogonalizzazione

L'algoritmo di Gram-Schmidt consente di trasformare una qualunque base di uno spazio vettoriale euclideo in una base ortonormale dello stesso spazio, preservando ad ogni passaggio i sottospazi generati dai primi vettori.

> [!theorem] Algoritmo di Gram-Schmidt
> Sia $V$ uno spazio euclideo e sia $H \subseteq V$ un sottospazio vettoriale di dimensione $d$.
> Data una base qualsiasi $\mathcal{C} = \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_d\}$ di $H$, la procedura per costruire una base ortonormale $\mathcal{B} = \{\mathbf{b}_1, \mathbf{b}_2, \dots, \mathbf{b}_d\}$ di $H$ si articola nei seguenti passi:
> 
> **Passo 1:** Si normalizza il primo vettore:
> $$
> \mathbf{b}_1 = \frac{\mathbf{v}_1}{\|\mathbf{v}_1\|}, \qquad H_1 = \operatorname{Span}\{\mathbf{b}_1\} = \operatorname{Span}\{\mathbf{v}_1\}
> $$
> 
> **Passo 2:** Si sottrae a $\mathbf{v}_2$ la sua proiezione ortogonale su $H_1$:
> $$
> \mathbf{w}_2 = \mathbf{v}_2 - \pi_{H_1}(\mathbf{v}_2) = \pi_{H_1^\perp}(\mathbf{v}_2) = \mathbf{v}_2 - \langle \mathbf{v}_2, \mathbf{b}_1 \rangle \mathbf{b}_1
> $$
> Per costruzione $\mathbf{w}_2 \perp \mathbf{b}_1$ e $\mathbf{w}_2 \neq \mathbf{0}$ (poiché $\mathbf{v}_2 \notin H_1$). Si normalizza quindi il vettore:
> $$
> \mathbf{b}_2 = \frac{\mathbf{w}_2}{\|\mathbf{w}_2\|}, \qquad H_2 = \operatorname{Span}\{\mathbf{b}_1, \mathbf{b}_2\}
> $$
> 
> **Passo 3:** Si calcola la componente di $\mathbf{v}_3$ ortogonale a $H_2$:
> $$
> \mathbf{w}_3 = \mathbf{v}_3 - \pi_{H_2}(\mathbf{v}_3) = \pi_{H_2^\perp}(\mathbf{v}_3) = \mathbf{v}_3 - \langle \mathbf{v}_3, \mathbf{b}_1 \rangle \mathbf{b}_1 - \langle \mathbf{v}_3, \mathbf{b}_2 \rangle \mathbf{b}_2
> $$
> con $\mathbf{w}_3 \perp \mathbf{b}_1$ e $\mathbf{w}_3 \perp \mathbf{b}_2$. Si normalizza:
> $$
> \mathbf{b}_3 = \frac{\mathbf{w}_3}{\|\mathbf{w}_3\|}, \qquad H_3 = \operatorname{Span}\{\mathbf{b}_1, \mathbf{b}_2, \mathbf{b}_3\}
> $$
> 
> **Passo $k$ (Passo induttivo generale per $k = 2, \dots, d$):**
> $$
> \mathbf{w}_k = \mathbf{v}_k - \pi_{H_{k-1}}(\mathbf{v}_k) = \mathbf{v}_k - \sum_{i=1}^{k-1} \langle \mathbf{v}_k, \mathbf{b}_i \rangle \mathbf{b}_i
> $$
> Risultando $\mathbf{w}_k \perp \mathbf{b}_i$ per ogni $i = 1, \dots, k-1$, si normalizza:
> $$
> \mathbf{b}_k = \frac{\mathbf{w}_k}{\|\mathbf{w}_k\|}, \qquad H_k = \operatorname{Span}\{\mathbf{b}_1, \dots, \mathbf{b}_k\}
> $$
> 
> Al termine del passo $d$, l'insieme:
> $$
> \mathcal{B} = \{\mathbf{b}_1, \mathbf{b}_2, \dots, \mathbf{b}_d\}
> $$
> costituisce una base ortonormale di $H$.
>
## 6.10. Geometria Affine Euclidea: Ortogonalità e Distanze

### Sottospazi Affini Ortogonali

> [!definition] Sottospazi Affini Ortogonali
> Sia $V$ uno spazio euclideo e siano:
> $$
> S_1 = \mathbf{x}_1 + H_1, \qquad S_2 = \mathbf{x}_2 + H_2
> $$
> due sottospazi affini di $V$ con giaciture rispettivamente $H_1, H_2 \subseteq V$.
> I sottospazi affini $S_1$ e $S_2$ si dicono **ortogonali** se:
> $$
> S_1 \cap S_2 \neq \emptyset \quad \land \quad H_1 \perp H_2
> $$
> ovvero se possiedono almeno un punto comune di incidenza e le rispettive giaciture sono sottospazi ortogonali ($H_1 \subseteq H_2^\perp$ oppure $H_2 \subseteq H_1^\perp$).

> [!note] Giacitura di Piani e Rette nello Spazio $\mathbb{R}^3$
> Sia $\pi$ un piano affine in $\mathbb{R}^3$ descritto dall'equazione cartesiana:
> $$
> \pi: ax + by + cz + d = 0
> $$
> La giacitura associata $H_\pi$ è il sottospazio vettoriale ottenuto ponendo il termine noto pari a zero:
> $$
> H_\pi: ax + by + cz = 0
> $$
> Esprimendo la relazione mediante il prodotto scalare standard in $\mathbb{R}^3$:
> $$
> \begin{pmatrix} a \\ b \\ c \end{pmatrix} \cdot \begin{pmatrix} x \\ y \\ z \end{pmatrix} = 0 \iff \begin{pmatrix} x \\ y \\ z \end{pmatrix} \perp \begin{pmatrix} a \\ b \\ c \end{pmatrix}
> $$
> Pertanto, la giacitura del piano è esattamente il complemento ortogonale della direzione individuata dal vettore normale:
> $$
> H_\pi = \left[\operatorname{Span}\left\{\begin{pmatrix} a \\ b \\ c \end{pmatrix}\right\}\right]^\perp
> $$
> Di conseguenza, il vettore normale $\mathbf{n} = (a, b, c)^T$ genera lo spazio ortogonale alla giacitura del piano.
>
### Distanza tra Sottospazi Affini

> [!definition] Distanza tra due Sottospazi Affini
> Sia $V$ uno spazio euclideo e siano $S_1, S_2 \subseteq V$ due sottospazi affini. Si definisce **distanza** tra $S_1$ e $S_2$ l'estremo inferiore delle distanze euclidee tra le coppie di punti:
> $$
> d(S_1, S_2) := \min_{\substack{\mathbf{v}_1 \in S_1 \\ \mathbf{v}_2 \in S_2}} d(\mathbf{v}_1, \mathbf{v}_2) = \min_{\substack{\mathbf{v}_1 \in S_1 \\ \mathbf{v}_2 \in S_2}} \|\mathbf{v}_1 - \mathbf{v}_2\|
> $$

> [!proposition] Calcolo della Distanza tramite Proiezione Ortogonale
> Siano $S_1 = \mathbf{x}_1 + H_1$ e $S_2 = \mathbf{x}_2 + H_2$ due sottospazi affini di $V$. La distanza euclidea tra $S_1$ ed $S_2$ è data dal modulo della proiezione ortogonale del vettore congiungente $\mathbf{x}_1 - \mathbf{x}_2$ sul complemento ortogonale della somma delle giaciture:
> $$
> d(S_1, S_2) = \left\| \pi_{(H_1 + H_2)^\perp}(\mathbf{x}_1 - \mathbf{x}_2) \right\|
> $$

> [!quote]- Dimostrazione
> Siano $\mathbf{v}_1 \in S_1$ e $\mathbf{v}_2 \in S_2$. Per definizione di sottospazio affine:
> $$
> \mathbf{v}_1 = \mathbf{x}_1 + \mathbf{h}_1, \quad \mathbf{h}_1 \in H_1; \qquad \mathbf{v}_2 = \mathbf{x}_2 + \mathbf{h}_2, \quad \mathbf{h}_2 \in H_2
> $$
> Il vettore differenza tra due generici punti è:
> $$
> \mathbf{v}_1 - \mathbf{v}_2 = (\mathbf{x}_1 - \mathbf{x}_2) + (\mathbf{h}_1 - \mathbf{h}_2) = (\mathbf{x}_1 - \mathbf{x}_2) - \mathbf{h}
> $$
> dove $\mathbf{h} = \mathbf{h}_2 - \mathbf{h}_1 \in H_1 + H_2$.
> Il calcolo della distanza tra $S_1$ ed $S_2$ equivale dunque a trovare:
> $$
> d(S_1, S_2) = \min_{\mathbf{h} \in H_1 + H_2} \|(\mathbf{x}_1 - \mathbf{x}_2) - \mathbf{h}\|
> $$
> Per il Teorema della Minima Distanza applicato al vettore $\mathbf{x}_1 - \mathbf{x}_2$ rispetto al sottospazio $H = H_1 + H_2$, il minimo si realizza quando $\mathbf{h} = \pi_{H_1 + H_2}(\mathbf{x}_1 - \mathbf{x}_2)$.
> Pertanto:
> $$
> d(S_1, S_2) = \big\| (\mathbf{x}_1 - \mathbf{x}_2) - \pi_{H_1 + H_2}(\mathbf{x}_1 - \mathbf{x}_2) \big\|
> $$
> Poiché $\operatorname{id}_V - \pi_{H_1 + H_2} = \pi_{(H_1 + H_2)^\perp}$, si conclude:
> $$
> d(S_1, S_2) = \left\| \pi_{(H_1 + H_2)^\perp}(\mathbf{x}_1 - \mathbf{x}_2) \right\| \qquad \blacksquare
> $$
>
## 6.11. Isometrie Lineari e Matrici Ortogonali

### Definizione e Proprietà delle Isometrie Lineari

> [!definition] Isometria Lineare
> Sia $V$ uno spazio euclideo reale dotato di prodotto scalare $\langle \cdot, \cdot \rangle$. Un endomorfismo $L: V \to V$ si dice **isometria lineare** (o trasformazione ortogonale) se preserva il prodotto scalare di qualunque coppia di vettori:
> $$
> \langle L(\mathbf{v}), L(\mathbf{w}) \rangle = \langle \mathbf{v}, \mathbf{w} \rangle \qquad \forall \mathbf{v}, \mathbf{w} \in V
> $$

> [!proposition] Proprietà Fondamentali delle Isometrie Lineari
> Sia $L: V \to V$ un'isometria lineare. Valgono le seguenti proprietà:
> 
> 1. **Conservazione della norma:**
> $$
> \|L(\mathbf{v})\| = \|\mathbf{v}\| \qquad \forall \mathbf{v} \in V
> $$
> 
> 2. **Conservazione delle distanze euclidee:**
> $$
> d\big(L(\mathbf{v}), L(\mathbf{w})\big) = d(\mathbf{v}, \mathbf{w}) \qquad \forall \mathbf{v}, \mathbf{w} \in V
> $$
> 
> 3. **Conservazione degli angoli:**
> $$
> \widehat{L(\mathbf{v}) L(\mathbf{w})} = \widehat{\mathbf{v} \mathbf{w}} \qquad \forall \mathbf{v}, \mathbf{w} \in V \setminus \{\mathbf{0}\}
> $$
> 
> 4. **Conservazione delle basi ortonormali:**
> Se $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ è una base ortonormale di $V$, allora l'immagine:
> $$
> L(\mathcal{B}) = \{L(\mathbf{b}_1), \dots, L(\mathbf{b}_n)\}
> $$
> è anch'essa una base ortonormale di $V$.
> 
> 5. **Iniettività ed Isomorfismo:**
> Ogni isometria lineare $L$ è un isomorfismo (quindi biiettiva ed invertibile).

> [!quote]- Dimostrazione
> **Punto 1:** Per definizione di norma indotta, $\|L(\mathbf{v})\|^2 = \langle L(\mathbf{v}), L(\mathbf{v}) \rangle = \langle \mathbf{v}, \mathbf{v} \rangle = \|\mathbf{v}\|^2$. Estraendo la radice quadrata si ottiene $\|L(\mathbf{v})\| = \|\mathbf{v}\|$.
> 
> **Punto 2:** Sfruttando la linearità di $L$ e la conservazione della norma:
> $$
> d\big(L(\mathbf{v}), L(\mathbf{w})\big) = \|L(\mathbf{v}) - L(\mathbf{w})\| = \|L(\mathbf{v} - \mathbf{w})\| = \|\mathbf{v} - \mathbf{w}\| = d(\mathbf{v}, \mathbf{w})
> $$
> 
> **Punto 3:** Il coseno dell'angolo tra due vettori non nulli è definito da:
> $$
> \cos\big(\widehat{L(\mathbf{v}) L(\mathbf{w})}\big) = \frac{\langle L(\mathbf{v}), L(\mathbf{w}) \rangle}{\|L(\mathbf{v})\| \, \|L(\mathbf{w})\|} = \frac{\langle \mathbf{v}, \mathbf{w} \rangle}{\|\mathbf{v}\| \, \|\mathbf{w}\|} = \cos(\widehat{\mathbf{v} \mathbf{w}})
> $$
> Poiché $\widehat{\mathbf{v} \mathbf{w}} \in [0, \pi]$, l'angolo viene rigidamente preservato.
> 
> **Punto 4:** Calcoliamo il prodotto scalare tra i vettori trasformati:
> $$
> \langle L(\mathbf{b}_i), L(\mathbf{b}_j) \rangle = \langle \mathbf{b}_i, \mathbf{b}_j \rangle = \delta_{ij} = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \neq j \end{cases}
> $$
> I vettori $\{L(\mathbf{b}_1), \dots, L(\mathbf{b}_n)\}$ sono mutuamente ortogonali e normalizzati; essendo non nulli e a due a due ortogonali, sono linearmente indipendenti. In uno spazio di dimensione $n$, un insieme ortonormale di $n$ elementi è automaticamente una base ortonormale.
> 
> **Punto 5:** Se $L(\mathbf{v}) = \mathbf{0}$, allora $\|L(\mathbf{v})\| = \|\mathbf{v}\| = 0 \implies \mathbf{v} = \mathbf{0}$. Dunque $\operatorname{Ker}(L) = \{\mathbf{0}\}$, il che implica che $L$ è iniettiva. Trattandosi di un endomorfismo tra spazi di dimensione finita, l'iniettività implica la biiettività, rendendo $L$ un isomorfismo $\qquad \blacksquare$
>
### Matrici Ortogonali

> [!definition] Matrice Ortogonale
> Una matrice quadrata $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ si dice **ortogonale** se il suo prodotto per la trasposta fornisce la matrice identità:
> $$
> A^T A = I_n
> $$

> [!note] Proprietà Immediate delle Matrici Ortogonali
> Dalla definizione derivano immediatamente le seguenti equivalenze algebriche:
> 1. Una matrice $A$ è ortogonale se e solo se è invertibile e la sua inversa coincide con la trasposta:
> $$
> A \text{ è ortogonale} \iff A^{-1} = A^T \iff A A^T = I_n
> $$
> 2. Se $A$ è ortogonale, anche la sua trasposta $A^T$ è ortogonale:
> $$
> (A^T)^T A^T = A A^T = I_n
> $$
> 3. Il prodotto di due matrici ortogonali $A, B \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ è ancora una matrice ortogonale:
> $$
> (AB)^T (AB) = B^T A^T A B = B^T I_n B = B^T B = I_n
> $$
> Le matrici ortogonali formano un gruppo rispetto al prodotto righe per colonne, denominato gruppo ortogonale $O(n)$.
> 4. Applicando il teorema di Binet:
> $$
> \det(A^T A) = \det(A^T) \det(A) = (\det(A))^2 = \det(I_n) = 1 \implies \det(A) = \pm 1
> $$

> [!proposition] Caratterizzazione delle Matrici Ortogonali tramite Righe e Colonne
> Sia $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$. Le seguenti affermazioni sono tra loro equivalenti:
> 
> 1. $A$ è una matrice ortogonale ($A^T A = I_n$).
> 2. Le colonne di $A$ formano una base ortonormale di $\mathbb{R}^n$ (rispetto al prodotto scalare standard).
> 3. Le righe di $A$ formano una base ortonormale di $\mathbb{R}^n$.

> [!quote]- Dimostrazione
> Dimostriamo l'equivalenza tra il punto 1 e il punto 2.
> Sia $A = (\mathbf{c}_1, \mathbf{c}_2, \dots, \mathbf{c}_n)$ espressa tramite i suoi vettori colonna $\mathbf{c}_i \in \mathbb{R}^n$.
> La matrice trasposta $A^T$ ha come righe le trasposte delle colonne di $A$:
> $$
> A^T = \begin{pmatrix} \mathbf{c}_1^T \\ \mathbf{c}_2^T \\ \vdots \\ \mathbf{c}_n^T \end{pmatrix}
> $$
> Eseguiamo il prodotto matriciale $A^T A$:
> $$
> A^T A = \begin{pmatrix} \mathbf{c}_1^T \\ \mathbf{c}_2^T \\ \vdots \\ \mathbf{c}_n^T \end{pmatrix} \begin{pmatrix} \mathbf{c}_1 & \mathbf{c}_2 & \dots & \mathbf{c}_n \end{pmatrix} = \begin{pmatrix} \mathbf{c}_1^T \mathbf{c}_1 & \mathbf{c}_1^T \mathbf{c}_2 & \dots & \mathbf{c}_1^T \mathbf{c}_n \\ \mathbf{c}_2^T \mathbf{c}_1 & \mathbf{c}_2^T \mathbf{c}_2 & \dots & \mathbf{c}_2^T \mathbf{c}_n \\ \vdots & \vdots & \ddots & \vdots \\ \mathbf{c}_n^T \mathbf{c}_1 & \mathbf{c}_n^T \mathbf{c}_2 & \dots & \mathbf{c}_n^T \mathbf{c}_n \end{pmatrix}
> $$
> Ricordando che per due vettori colonna vale la relazione fondamentale $\mathbf{a}^T \mathbf{b} = \mathbf{a} \cdot \mathbf{b}$, l'elemento di posto $(i, j)$ della matrice prodotto è:
> $$
> (A^T A)_{ij} = \mathbf{c}_i^T \mathbf{c}_j = \mathbf{c}_i \cdot \mathbf{c}_j
> $$
> Pertanto:
> $$
> A^T A = I_n \iff (A^T A)_{ij} = \delta_{ij} = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \neq j \end{cases} \iff \mathbf{c}_i \cdot \mathbf{c}_j = \begin{cases} 1 & \text{se } i = j \\ 0 & \text{se } i \neq j \end{cases}
> $$
> Il che certifica che l'insieme delle colonne $\mathcal{C} = \{\mathbf{c}_1, \dots, \mathbf{c}_n\}$ costituisce una base ortonormale di $\mathbb{R}^n$.
> L'equivalenza con il punto 3 segue identicamente considerando che $A$ è ortogonale se e solo se $A^T$ è ortogonale, e applicando il medesimo ragionamento alle colonne di $A^T$, che sono le righe trasposte di $A \qquad \blacksquare$
>
### Connessione tra Isometrie e Matrici Ortogonali

> [!proposition] Corrispondenza Isometrie - Matrici Ortogonali
> Sia $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ e sia $T_A: \mathbb{R}^n \to \mathbb{R}^n$ l'applicazione lineare indotta da $A$ (ovvero $T_A(\mathbf{v}) = A\mathbf{v}$). Allora:
> $$
> T_A \text{ è un'isometria lineare} \iff A \text{ è una matrice ortogonale}
> $$

> [!quote]- Dimostrazione
> **Implicazione $(\Leftarrow)$:** Supponiamo che $A$ sia ortogonale ($A^T A = I_n$).
> Calcoliamo il prodotto scalare standard tra le immagini di due generici vettori $\mathbf{v}, \mathbf{w} \in \mathbb{R}^n$:
> $$
> T_A(\mathbf{v}) \cdot T_A(\mathbf{w}) = (A\mathbf{v}) \cdot (A\mathbf{w}) = (A\mathbf{v})^T (A\mathbf{w}) = \mathbf{v}^T A^T A \mathbf{w} = \mathbf{v}^T (A^T A) \mathbf{w}
> $$
> Essendo $A$ ortogonale, $A^T A = I_n$:
> $$
> \mathbf{v}^T (A^T A) \mathbf{w} = \mathbf{v}^T I_n \mathbf{w} = \mathbf{v}^T \mathbf{w} = \mathbf{v} \cdot \mathbf{w}
> $$
> Dunque $T_A$ conserva il prodotto scalare ed è un'isometria lineare.
> 
> **Implicazione $(\Rightarrow)$:** Supponiamo che $T_A$ sia un'isometria lineare.
> Sia $\mathcal{E} = \{\mathbf{e}_1, \dots, \mathbf{e}_n\}$ la base canonica di $\mathbb{R}^n$, la quale è notoriamente ortonormale.
> Poiché le isometrie trasformano basi ortonormali in basi ortonormali (Proprietà 4), l'insieme:
> $$
> \{T_A(\mathbf{e}_1), T_A(\mathbf{e}_2), \dots, T_A(\mathbf{e}_n)\}
> $$
> è una base ortonormale di $\mathbb{R}^n$.
> Calcolando le immagini dei vettori della base canonica:
> $$
> T_A(\mathbf{e}_j) = A \mathbf{e}_j = \mathbf{c}_j
> $$
> dove $\mathbf{c}_j$ rappresenta la $j$-esima colonna di $A$.
> Ne consegue che le colonne di $A$ formano una base ortonormale di $\mathbb{R}^n$, il che equivale a dire che la matrice $A$ è ortogonale $\qquad \blacksquare$

> [!example] Esempi Notabili di Isometrie nel Piano $\mathbb{R}^2$
> 
> **1. Matrice di Rotazione $R_\theta$:**
> $$
> A = R_\theta = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}
> $$
> Verifichiamo direttamente l'ortonormalità delle colonne:
> - Prodotto scalare tra le due colonne:
> $$
> \begin{pmatrix} \cos\theta \\ \sin\theta \end{pmatrix} \cdot \begin{pmatrix} -\sin\theta \\ \cos\theta \end{pmatrix} = -\cos\theta\sin\theta + \sin\theta\cos\theta = 0 \quad \checkmark
> $$
> - Norma della prima colonna:
> $$
> \left\| \begin{pmatrix} \cos\theta \\ \sin\theta \end{pmatrix} \right\| = \sqrt{\cos^2\theta + \sin^2\theta} = 1 \quad \checkmark
> $$
> - Norma della seconda colonna:
> $$
> \left\| \begin{pmatrix} -\sin\theta \\ \cos\theta \end{pmatrix} \right\| = \sqrt{(-\sin\theta)^2 + \cos^2\theta} = \sqrt{\sin^2\theta + \cos^2\theta} = 1 \quad \checkmark
> $$
> Essendo le colonne ortonormali, la matrice $R_\theta$ è ortogonale ($\det(R_\theta) = \cos^2\theta + \sin^2\theta = 1$) ed individua una rotazione antioraria rigida di angolo $\theta$ (isometria diretta).
> 
> **2. Riflessione rispetto all'asse $x$ ($S_x$):**
> $$
> A = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}
> $$
> Si ha $A^T A = \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} = \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix} = I_2$. La matrice è ortogonale con determinante $\det(A) = -1$, ed individua la riflessione assiale $S_x$ rispetto all'asse delle ascisse.
> 
> **3. Riflessione rispetto all'asse $y$ ($S_y$):**
> $$
> A = \begin{pmatrix} -1 & 0 \\ 0 & 1 \end{pmatrix}
> $$
> Analogamente, $A^T A = I_2$ e $\det(A) = -1$, rappresentando l'isometria lineare di riflessione speculare $S_y$ rispetto all'asse delle ordinate.
>
### Matrici di Cambio di Base tra Basi Ortonormali

> [!note] Natura Ortogonale delle Matrici di Passaggio
> Sia $\mathcal{B} = \{\mathbf{b}_1, \dots, \mathbf{b}_n\}$ una base ortonormale di $\mathbb{R}^n$ e sia $\mathcal{E}$ la base canonica.
> La matrice di transizione (o matrice di cambio base) da $\mathcal{B}$ a $\mathcal{E}$ ha come colonne le coordinate dei vettori di $\mathcal{B}$ rispetto alla base canonica:
> $$
> M_{\operatorname{id}_V}^{\mathcal{B}, \mathcal{E}} = \begin{pmatrix} \mathbf{b}_1 & \mathbf{b}_2 & \dots & \mathbf{b}_n \end{pmatrix}
> $$
> Poiché le sue colonne costituiscono per ipotesi una base ortonormale, $M_{\operatorname{id}_V}^{\mathcal{B}, \mathcal{E}}$ è una **matrice ortogonale**.
> Da ciò consegue immediatamente che l'inversa (ovvero la matrice di passaggio inverso da $\mathcal{E}$ a $\mathcal{B}$) coincide con la sua trasposta:
> $$
> M_{\operatorname{id}_V}^{\mathcal{E}, \mathcal{B}} = \big(M_{\operatorname{id}_V}^{\mathcal{B}, \mathcal{E}}\big)^{-1} = \big(M_{\operatorname{id}_V}^{\mathcal{B}, \mathcal{E}}\big)^T
> $$

> [!theorem] Corollario: Rappresentazione Matriciale delle Isometrie in Basi Ortonormali
> Siano $\mathcal{B}$ e $\mathcal{C}$ due basi ortonormali dello spazio euclideo $\mathbb{R}^n$. Un'applicazione lineare $L: \mathbb{R}^n \to \mathbb{R}^n$ è un'isometria lineare se e solo se la sua matrice rappresentativa $M_L^{\mathcal{B}, \mathcal{C}}$ rispetto a tali basi è una matrice ortogonale:
> $$
> L: \mathbb{R}^n \to \mathbb{R}^n \text{ è un'isometria lineare} \iff M_L^{\mathcal{B}, \mathcal{C}} \text{ è ortogonale}
> $$

> [!quote]- Dimostrazione
> Esprimiamo la matrice rappresentativa $M_L^{\mathcal{B}, \mathcal{C}}$ componendola mediante le matrici di transizione con la base canonica ortonormale $\mathcal{E}$:
> $$
> M_L^{\mathcal{B}, \mathcal{C}} = M_{\operatorname{id}_{\mathbb{R}^n}}^{\mathcal{E}, \mathcal{C}} \cdot M_L^{\mathcal{E}, \mathcal{E}} \cdot M_{\operatorname{id}_{\mathbb{R}^n}}^{\mathcal{B}, \mathcal{E}}
> $$
> Analizziamo i singoli fattori di questa catena di prodotti:
> - Le matrici di passaggio $M_{\operatorname{id}_{\mathbb{R}^n}}^{\mathcal{E}, \mathcal{C}}$ e $M_{\operatorname{id}_{\mathbb{R}^n}}^{\mathcal{B}, \mathcal{E}}$ collegano basi ortonormali ($\mathcal{E}, \mathcal{C}$ e $\mathcal{B}, \mathcal{E}$), pertanto sono matrici ortogonali.
> - La matrice centrale $M_L^{\mathcal{E}, \mathcal{E}}$ rappresenta la matrice canonica $A$ associata all'endomorfismo $L$ ($T_A = L$).
> 
> Per il teorema precedente, $L$ è un'isometria se e solo se $A = M_L^{\mathcal{E}, \mathcal{E}}$ è una matrice ortogonale.
> Poiché il prodotto di matrici ortogonali è sempre una matrice ortogonale (e viceversa il prodotto di una matrice con matrici ortogonali conserva la proprietà di ortogonalità), ne discende direttamente che:
> $$
> M_L^{\mathcal{B}, \mathcal{C}} \text{ è ortogonale} \iff M_L^{\mathcal{E}, \mathcal{E}} \text{ è ortogonale} \iff L \text{ è un'isometria} \qquad \blacksquare
> $$
>
## 6.12. Il Teorema Spettrale per Matrici ed Endomorfismi Simmetrici

### Matrici Simmetriche ed Operatori Autoaggiunti

> [!definition] Matrice Simmetrica
> Una matrice quadrata $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ si dice **simmetrica** se coincide con la propria trasposta:
> $$
> A^T = A
> $$

> [!definition] Endomorfismo Simmetrico (o Autoaggiunto)
> Sia $V$ uno spazio euclideo reale dotato di prodotto scalare $\langle \cdot, \cdot \rangle$. Un endomorfismo $L: V \to V$ si dice **simmetrico** se:
> $$
> \langle \mathbf{v}, L(\mathbf{w}) \rangle = \langle L(\mathbf{v}), \mathbf{w} \rangle \qquad \forall \mathbf{v}, \mathbf{w} \in V
> $$

> [!note] Equivalenza tra Matrice Simmetrica ed Endomorfismo Simmetrico
> Se fissiamo in $V$ una base ortonormale $\mathcal{B}$, la matrice rappresentativa $M_L^\mathcal{B}$ di un endomorfismo $L$ è una matrice simmetrica ($A^T = A$) se e solo se $L$ è un endomorfismo simmetrico.
> Infatti, usando il prodotto scalare euclideo standard:
> $$
> \mathbf{v} \cdot (A \mathbf{w}) = \mathbf{v}^T A \mathbf{w} = (A^T \mathbf{v})^T \mathbf{w} = (A^T \mathbf{v}) \cdot \mathbf{w}
> $$
> Tale quantità coincide con $(A\mathbf{v}) \cdot \mathbf{w}$ per ogni $\mathbf{v}, \mathbf{w}$ se e solo se $A^T = A$.
>
### Teorema Spettrale Reale

> [!theorem] Teorema Spettrale per Matrici Simmetriche
> Sia $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ una matrice reale simmetrica. Allora:
> $$
> A \text{ è simmetrica} \iff \exists \mathcal{B} \text{ base ortonormale di } \mathbb{R}^n \text{ formata da autovettori di } A
> $$
> In forma equivalente:
> $$
> A \text{ è simmetrica} \iff A \text{ è ortogonalmente diagonalizzabile}
> $$
> Esiste cioè una matrice ortogonale $S \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ (con $S^{-1} = S^T$) e una matrice diagonale $D \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ tali che:
> $$
> D = S^{-1} A S = S^T A S
> $$
> dove:
> $$
> S = \begin{pmatrix} \mathbf{b}_1 & \mathbf{b}_2 & \dots & \mathbf{b}_n \end{pmatrix}, \qquad D = \begin{pmatrix} \lambda_1 & 0 & \dots & 0 \\ 0 & \lambda_2 & \dots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \dots & \lambda_n \end{pmatrix}
> $$
> con $\mathbf{b}_1, \dots, \mathbf{b}_n$ autovettori ortonormali di $A$ associati agli autovalori reali $\lambda_1, \dots, \lambda_n$.

> [!theorem] Corollari Fondamentali del Teorema Spettrale
> Dal Teorema Spettrale discendono due proprietà algebriche di fondamentale rilievo:
> 
> 1. **Realtà dello Spettro:**
> Se $A \in \operatorname{Mat}_{\mathbb{R}}(n, n)$ è simmetrica, tutte le radici del polinomio caratteristico $\chi_A(t)$ sono reali:
> $$
> \sigma(A) \subset \mathbb{R}
> $$
> Non esistono autovalori complessi non reali, e ogni autovalore possiede molteplicità geometrica uguale a quella algebrica ($m_g(\lambda) = m_a(\lambda)$).
> 
> 2. **Ortogonalità degli Autospazi:**
> Se $A$ è simmetrica, autovettori corrispondenti ad autovalori distinti sono tra loro mutuamente ortogonali:
> $$
> \lambda_i \neq \lambda_j \implies E_{\lambda_i} \perp E_{\lambda_j}
> $$
> ovvero:
> $$
> \forall \mathbf{v} \in E_{\lambda_i}, \quad \forall \mathbf{w} \in E_{\lambda_j} \implies \langle \mathbf{v}, \mathbf{w} \rangle = 0
> $$

> [!quote]- Dimostrazione dell'Ortogonalità degli Autospazi
> Siano $\mathbf{v} \in E_{\lambda_i}$ e $\mathbf{w} \in E_{\lambda_j}$ due autovettori con autovalori associati $\lambda_i \neq \lambda_j$.
> Si ha per definizione:
> $$
> A\mathbf{v} = \lambda_i \mathbf{v}, \qquad A\mathbf{w} = \lambda_j \mathbf{w}
> $$
> Calcoliamo il prodotto scalare tra $A\mathbf{v}$ e $\mathbf{w}$:
> $$
> (A\mathbf{v}) \cdot \mathbf{w} = (\lambda_i \mathbf{v}) \cdot \mathbf{w} = \lambda_i (\mathbf{v} \cdot \mathbf{w})
> $$
> D'altra parte, per le proprietà della trasposta e la simmetria di $A$ ($A^T = A$):
> $$
> (A\mathbf{v}) \cdot \mathbf{w} = (A\mathbf{v})^T \mathbf{w} = \mathbf{v}^T A^T \mathbf{w} = \mathbf{v}^T A \mathbf{w} = \mathbf{v} \cdot (A\mathbf{w}) = \mathbf{v} \cdot (\lambda_j \mathbf{w}) = \lambda_j (\mathbf{v} \cdot \mathbf{w})
> $$
> Eguagliando le due espressioni:
> $$
> \lambda_i (\mathbf{v} \cdot \mathbf{w}) = \lambda_j (\mathbf{v} \cdot \mathbf{w}) \iff (\lambda_i - \lambda_j)(\mathbf{v} \cdot \mathbf{w}) = 0
> $$
> Poiché per ipotesi $\lambda_i \neq \lambda_j$, la differenza $(\lambda_i - \lambda_j) \neq 0$. Dunque necessariamente:
> $$
> \mathbf{v} \cdot \mathbf{w} = 0 \iff \mathbf{v} \perp \mathbf{w} \qquad \blacksquare
> $$
>
## 6.13. Appendice: Il Prodotto Vettoriale in $\mathbb{R}^3$

*(Argomento complementare: non compreso nel programma d'esame istituzionale)*

Il prodotto vettoriale costituisce una costruzione algebrica specifica dello spazio a tre dimensioni $\mathbb{R}^3$, risultando notevolmente meno generale del prodotto scalare (il quale è invece definito intrinsecamente in qualsiasi dimensione).

### Definizione del Prodotto Vettoriale

> [!definition] Prodotto Vettoriale
> Siano dati due vettori $\mathbf{v}, \mathbf{w} \in \mathbb{R}^3$ con componenti espresse rispetto alla base canonica:
> $$
> \mathbf{v} = \begin{pmatrix} v_1 \\ v_2 \\ v_3 \end{pmatrix}, \qquad \mathbf{w} = \begin{pmatrix} w_1 \\ w_2 \\ w_3 \end{pmatrix}
> $$
> Si definisce **prodotto vettoriale** tra $\mathbf{v}$ e $\mathbf{w}$ l'operazione binaria $\times: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R}^3$ formalmente calcolata attraverso lo sviluppo del determinante simbolico:
> $$
> \mathbf{v} \times \mathbf{w} := \text{"}\det \begin{pmatrix} \mathbf{e}_1 & \mathbf{e}_2 & \mathbf{e}_3 \\ v_1 & v_2 & v_3 \\ w_1 & w_2 & w_3 \end{pmatrix}\text{"}
> $$
> dove $\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3$ denotano formalmente i versori della base canonica di $\mathbb{R}^3$.
> Sviluppando lungo la prima riga secondo Laplace:
> $$
> \mathbf{v} \times \mathbf{w} = \mathbf{e}_1 \begin{vmatrix} v_2 & v_3 \\ w_2 & w_3 \end{vmatrix} - \mathbf{e}_2 \begin{vmatrix} v_1 & v_3 \\ w_1 & w_3 \end{vmatrix} + \mathbf{e}_3 \begin{vmatrix} v_1 & v_2 \\ w_1 & w_2 \end{vmatrix}
> $$
> Esplicitando le componenti vettoriali risultanti:
> $$
> \mathbf{v} \times \mathbf{w} = \begin{pmatrix} v_2 w_3 - v_3 w_2 \\ v_3 w_1 - v_1 w_3 \\ v_1 w_2 - v_2 w_1 \end{pmatrix}
> $$
>
### Proprietà Algebriche e Geometriche del Prodotto Vettoriale

> [!proposition] Proprietà del Prodotto Vettoriale
> Per ogni terna di vettori $\mathbf{u}, \mathbf{v}, \mathbf{w} \in \mathbb{R}^3$ e per ogni scalare $c \in \mathbb{R}$, valgono le seguenti proprietà:
> 
> 1. **Antisimmetria (o alternanza):**
> $$
> \mathbf{v} \times \mathbf{w} = - (\mathbf{w} \times \mathbf{v})
> $$
> 
> 2. **Omogeneità rispetto al prodotto per scalare:**
> $$
> (c\mathbf{v}) \times \mathbf{w} = c(\mathbf{v} \times \mathbf{w}) = \mathbf{v} \times (c\mathbf{w})
> $$
> 
> 3. **Distributività rispetto alla somma vettoriale:**
> $$
> (\mathbf{v} + \mathbf{v}') \times \mathbf{w} = (\mathbf{v} \times \mathbf{w}) + (\mathbf{v}' \times \mathbf{w})
> $$
> 
> 4. **Ortogonalità e Regola della Mano Destra:**
> Il vettore risultante dal prodotto vettoriale è simultaneamente ortogonale ad entrambi i fattori:
> $$
> \mathbf{v} \cdot (\mathbf{v} \times \mathbf{w}) = 0 \quad \land \quad \mathbf{w} \cdot (\mathbf{v} \times \mathbf{w}) = 0 \implies (\mathbf{v} \times \mathbf{w}) \perp \mathbf{v}, \quad (\mathbf{v} \times \mathbf{w}) \perp \mathbf{w}
> $$
> Il verso del vettore è orientato secondo la consueta convenzione della regola della mano destra: pollice su $\mathbf{v}$, indice su $\mathbf{w}$, medio su $\mathbf{v} \times \mathbf{w}$.
> 
> 5. **Annullamento sui vettori coincidenti:**
> $$
> \mathbf{v} \times \mathbf{v} = \mathbf{0}
> $$
> 
> 6. **Condizione di Dipendenza Lineare e Parallelismo:**
> $$
> \mathbf{v} \times \mathbf{w} = \mathbf{0} \iff \mathbf{v} \text{ e } \mathbf{w} \text{ sono proporzionali} \iff \exists c \in \mathbb{R}: \mathbf{v} = c\mathbf{w} \text{ (oppure } \mathbf{w} = \mathbf{0}\text{)}
> $$
> 
> 7. **Modulo ed Interpretazione Geometrica:**
> Il modulo del prodotto vettoriale coincide con l'area del parallelogramma individuato dai due vettori:
> $$
> \|\mathbf{v} \times \mathbf{w}\| = \|\mathbf{v}\| \, \|\mathbf{w}\| \sin(\widehat{\mathbf{v}\mathbf{w}})
> $$
> 
> 8. **Non-Associatività:**
> Il prodotto vettoriale non gode della proprietà associativa:
> $$
> (\mathbf{v} \times \mathbf{w}) \times \mathbf{u} \neq \mathbf{v} \times (\mathbf{w} \times \mathbf{u})
> $$

> [!example] Esempio Pratico di Calcolo del Prodotto Vettoriale

> [!example] Calcolo Esplicito del Prodotto Vettoriale
> Siano dati in $\mathbb{R}^3$ i vettori:
> $$
> \mathbf{v} = \begin{pmatrix} 2 \\ 3 \\ -1 \end{pmatrix}, \qquad \mathbf{w} = \begin{pmatrix} 1 \\ 1 \\ -2 \end{pmatrix}
> $$
> Calcoliamo il prodotto vettoriale $\mathbf{v} \times \mathbf{w}$ impostando la matrice formale:
> $$
> \mathbf{v} \times \mathbf{w} = \det \begin{pmatrix} \mathbf{e}_1 & \mathbf{e}_2 & \mathbf{e}_3 \\ 2 & 3 & -1 \\ 1 & 1 & -2 \end{pmatrix}
> $$
> Calcolando i determinanti dei minori di ordine 2 con i corretti segni algebrici:
> $$
> \mathbf{v} \times \mathbf{w} = \begin{pmatrix}
> +\begin{vmatrix} 3 & -1 \\ 1 & -2 \end{vmatrix} \\
> -\begin{vmatrix} 2 & -1 \\ 1 & -2 \end{vmatrix} \\
> +\begin{vmatrix} 2 & 3 \\ 1 & 1 \end{vmatrix}
> \end{pmatrix}
> $$
> Sviluppando i singoli prodotti a croce:
> - Prima componente:
> $$
> \begin{vmatrix} 3 & -1 \\ 1 & -2 \end{vmatrix} = 3(-2) - (-1)(1) = -6 + 1 = -5
> $$
> - Seconda componente:
> $$
> -\begin{vmatrix} 2 & -1 \\ 1 & -2 \end{vmatrix} = -\big(2(-2) - (-1)(1)\big) = -(-4 + 1) = -(-3) = 3
> $$
> - Terza componente:
> $$
> \begin{vmatrix} 2 & 3 \\ 1 & 1 \end{vmatrix} = 2(1) - 3(1) = 2 - 3 = -1
> $$
> Il vettore risultante è dunque:
> $$
> \mathbf{v} \times \mathbf{w} = \begin{pmatrix} -5 \\ 3 \\ -1 \end{pmatrix}
> $$
> 
> Verifichiamo la mutua ortogonalità mediante il prodotto scalare standard:
> $$
> \mathbf{v} \cdot (\mathbf{v} \times \mathbf{w}) = 2(-5) + 3(3) + (-1)(-1) = -10 + 9 + 1 = 0 \quad \checkmark
> \mathbf{w} \cdot (\mathbf{v} \times \mathbf{w}) = 1(-5) + 1(3) + (-2)(-1) = -5 + 3 + 2 = 0 \quad \checkmark
> $$
> L'ortogonalità è perfettamente verificata.
>
## 6.14. Conclusione del Corso e Quadro Sinottico Globale

Con l'esposizione del Teorema Spettrale reale e delle proprietà algebrico-geometriche degli spazi euclidei si conclude integralmente il percorso del corso di **Geometria e Algebra Lineare** (Politecnico di Milano — Ingegneria Fisica).

### Mappa Sinottica delle Strutture Algebriche Fondamentali

1. **Sistemi Lineari ed Eliminazione Gaussiana:**
   - Struttura dello spazio affine delle soluzioni: $S = \mathbf{x}_0 + \operatorname{Ker}(A)$.
   - Teorema di Rouché-Capelli e Teorema di Struttura.

2. **Spazi Vettoriali e Teoria delle Basi:**
   - Indipendenza lineare, sistemi di generatori, basi e dimensione.
   - Operazioni tra sottospazi: formule di Grassmann per intersezione e somma.

3. **Morfismi e Teoria Spettrale Lineare:**
   - Teorema di Nullità più Rango: $\dim(\operatorname{Ker} L) + \dim(\operatorname{Im} L) = \dim(V)$.
   - Matrici rappresentative e cambiamenti di coordinate per similitudine: $B = P^{-1} A P$.
   - Teoria degli autovalori e diagonalizzabilità algebrica: coincidenza tra molteplicità algebriche e geometriche ($m_a(\lambda) = m_g(\lambda)$).

4. **Spazi Euclidei e Geometria Ortogonale:**
   - Forme bilineari simmetriche definite positive, disuguaglianza di Cauchy-Schwarz.
   - Decomposizione in somma diretta ortogonale $V = H \oplus H^\perp$ e operatore di proiezione $\pi_H$.
   - Isometrie lineari e gruppo delle matrici ortogonali ($A^T A = I$).
   - **Teorema Spettrale:** ogni matrice simmetrica reale ammette una base ortonormale di autovettori ed è diagonalizzabile tramite una trasformazione di similitudine ortogonale ($S^T A S = D$).
