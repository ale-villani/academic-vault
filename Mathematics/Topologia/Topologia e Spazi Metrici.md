---
title: "Topologia in Rn e Spazi Metrici"
domain: "math/topology"
source_course: "Analisi 1 (Cap. 2)"
tags:
  - math/topology/metric-spaces
  - math/topology/compactness
---

# 2. Topologia in $\mathbb{R}^n$

## 2.1. Spazio normato e metrico

> [!definition] Spazio normato
> Sia $X$ uno spazio vettoriale. Si dice che $X$ è *normato* se esiste una funzione $||\;||{:} \; X \to [0, +\infty)$ detta *norma* in $X$, con le seguenti proprietà.
> $$
> \begin{align}
> \tag{n1} &||x|| \geq 0, \; \forall x \in X, \; ||x|| = 0 \iff x = 0 \\
> \tag{n2} &||\lambda x|| = |\lambda| ||x||, \; \forall x \in X, \; \forall \lambda \in \mathbb{R} \; \text{o i complessi} \\
> \tag{n3} &||x + y|| \leq ||x|| + ||y||, \; \forall x, y \in X
> \end{align}
> $$
>
Come esempio, prendiamo $X = \mathbb{R}^n$. $\mathbf{x} := (x_{1}, x_{2}, \dots, x_{n}) \in \mathbb{R}^n$. Pongo
$$
||\mathbf{x}|| := (x_{1}^{2} + \dots + x_{n}^{2})^{\frac{1}{2}}
$$
Se $n = 2$ o $n = 3$ si tratta della lunghezza di $\mathbf{x}$, o equivalentemente della distanza dall'origine di $\mathbf{x}$. È possibile dimostrare che valgono le proprietà precedenti (n1), (n2) ed (n3). Analogamente per $X = \mathbb{C}^n$.

> [!definition] Spazio metrico
> Sia $X$ un insieme. Dico che $X$ è uno spazio *metrico* se esiste una funzione $d{:} \; X \times X \to [0, +\infty)$ (il cui dominio è il prodotto cartesiano di $X$ per sé stesso) tale che 
> $$
> \begin{align}
> \tag{m1} &d(x, y) \geq 0, \; \forall x, y \in X \\
> &d(x, y) = 0 \iff x = y \\
> \tag{m2} &d(x, y) = d(y, x), \; \forall x, y \in X \text{simmetria} \\
> \tag{m3} &d(x, y) \leq d(x, z) + d(z, y), \; \forall x, y, z \in X \text{disuguaglianza triangolare}
> \end{align}
> $$
>
Si noti che non è richiesto che $X$ sia vettoriale. 

Tra spazi metrici e spazi normati esiste una corrispondenza univoca, infatti tutti gli spazi normati sono spazi metrici: sia $X$ normato, ponendo $d(x, y) := ||x - y||$ è facile mostrare che $X$ è anche metrico con tale distanza. Non è necessariamente vero viceversa. 

Esempio (1): prendendo $X = \mathbb{R}^n$,
$$
d(\mathbf{x}, \mathbf{y}) = ((x_{1} - y_{1})^{2} + \dots + (x_{n} - y_{n})^{2})^{\frac{1}{2}}
$$

Esempio (2): si pone $X$ come l'insieme delle funzioni continue $$X := C([a, b]) := \left\{ f: [a, b] \to \mathbb{R}, \; f \; \text{continua su} \; [a, b] \right\}$$
Tale insieme è uno spazio vettoriale, dunque sono definite le usuali operazioni di somma di funzione e di moltiplicazione di uno scalare per un suo elemento (una funzione), ad esempio $(f + g)(x) := f(x) + g(x), \forall x$.

In tale spazio vettoriale, si può definire la funzione $$ ||f||_{\infty} := \underset{x \in [a, b]}\max|f(x)|$$Si noti che i massimo della funzione esiste per il teorema di Weierstrass, come vedremo in seguito. Si dimostra che $|| \; ||_{\infty}$ è una norma su $X$.

Esempio (3): si sceglie $X := C([a, b])$. Sia $p \geq 1$. Determino in esso una funzione
$$
||f||_{p} := [\int_{a}^{b} |f(x)|^p dx]^{1 / p}
$$
È possibile verificare che l'integrale esiste, siccome $f$ è continua per ipotesi. Si dimostra che tutte le $|| \; ||_{p}$ sono norme. Questo esempio è utile a mostrare come in uno stesso insieme (quello delle funzioni continue) possono coesistere più norme. (All'interno dell'integrale, l'esponente $p$ serve a far valere la proprietà di prodotto di uno scalare per la funzione, dunque a rendere la funzione omogenea).

> [!definition] Palla aperta, palla chiusa, sfera
> Sia $X$ metrico. 
> 1) L'insieme
> $$
> B_{R}(x_{0}) := \left\{ x \in X : d(x, x_{0}) < R \right\}
> $$
> viene detto *palla aperta* di centro $x_{0}$ e raggio $R$. 
> 
> 2) L'insieme 
> $$
> \overline{B_{R}(x_{0})} := \left\{ x \in X : d(x, x_{0}) \leq R \right\}
> $$
> viene detto *palla chiusa* di centro $x_{0}$ e raggio $R$. 
> 
> 3) L'insieme
> $$
> S_{R}(x_{0}) := \left\{ x \in X : d(x, x_{0}) = R \right\}
> $$
> viene detto *sfera* di centro $x_{0}$ e raggio $R$.
>
Esempio (1): $X = \mathbb{R}^{2}$. $$||\mathbf{x}||_{\infty} := \max\left\{ |x_{1}|, |x_{2}| \right\}, \; \; \mathbf{x} = (x_{1}, x_{2}) \text{ è una norma}$$Cos'è $B_{R}(\mathbf{0})$? Lavoro nel primo quadrante $x_{1}, x_{2} \geq 0$ e poi procedo per simmetria.
$$
\mathbf{x} \in B_{R}(\mathbf{0}) \iff \max(x_{1}, x_{2}) < R \iff x_{1} < R \land x_{2} < R
$$

Esempio (2): $X = \mathbb{R}^{2}$. $$||\mathbf{x}||_{\perp} := |x_{1}| + |x_{2}| \text{ è una norma}$$Esercizio: disegnare $B_{R}(\mathbf{0})$ per tale norma. Fare lo stesso per $$||\mathbf{x}||_{p} := [|x_{1}|^p + |x_{2}|^p]^{1 / p}$, $p  > 1$$

> [!definition] Intorno
> Sia $X$ metrico. Sia $x_{0} \in X$. Dico che $U \subset X$ è un *intorno* di $x_{0}$ se $B_{R}(x_{0}) \subset U$ per un opportuno $R > 0$.
>
> esempi 2d foto telefono
> esempio retta $(x_{0} - R, x_{0} + R)$.
>
Esempio. $X := C([a, b])$ con $|| \; ||_{\infty}$. Data $f \in X$, quali $g \in B_{R}(f)$?
Deve valere che $$
\begin{align}
&\underset{x \in [a, b]}\max |f(x) - g(x)| < R |f(x) - g(x)| < R, \; \forall x \in [a, b] \\
&\implies  -R < f(x) - g(x) < R, \; \forall x \in [a, b] \\
&\implies f(x) - R < g(x), \; \forall x \in [a, b]
\end{align}
$$

> [!definition]
> Sia $X$ metrico e $x_{0} \in X$. Dico che $x_{0}$ è *interno* ad $A \subset X$ se $$\exists R > 0 : B_{R}(x_{0}) \subset A$$
> Dico che $x_{0}$ è *esterno* a $A$ se esso è interno ad $A^C$, il complementare di $A$.
> 
> Dico $x_{0}$ *di frontiera* per $A$ se non è né interno né esterno ad $A$.
>
Esempio. Prendiamo $X = \mathbb{R}$ e $A = \mathbb{Q}$. Sia $x_{0} \in \mathbb{R}$ fissato. Ciascun $x_{0}$ è di frontiera per $A$. Infatti dato $R > 0$, $B_{R}(x_{0}) = (x_{0} - R, x_{0} + R)$ contiene sia punti di $\mathbb{Q}$ che punti di $\mathbb{R} \setminus \mathbb{Q}$.

> [!definition] Punto di accumulazione
> Sia $X$ metrico e $x_{0} \in X$. Dico che $x_{0}$ è *punto di accumulazione* di $A \subset X$ se per ogni intorno $B$ di $x_{0}$, $\exists x \in B : x \ne x_{0}, \; x \in A$.
>
Facendo un "diagramma di Eulero-Venn" per $x_{0} \in B \subset A$, esisterà sempre un $x_{0} \in B \land x_{0} \in A$.

Esempio. Se $X = \mathbb{R}$. Considero $A = [3, 4) \cup \left\{ 5 \right\}$. I punti di accumulazione di $A$ sono i punti dell'intervallo $[3, 4]$.

> [!definition] 
> Sia $X$ metrico e sia $A \subset X$. Dico che $A$ è *aperto* se ogni $x \in A$ è interno ad $A$. Dico che $A$ è *chiuso* se $A^C$ è aperto.
>
Ad esempio, $X = \mathbb{R}$. $A := \left\{ x_{n} = 1 - \frac{1}{n} : n \in \mathbb{N} \right\}$. Affermiamo che questo insieme non è aperto (nessun punto di $A$ è interno ad $A$). $A$ non è neppure chiuso. Infatti $1 \ne A$, cioè $1 \in A^C$. Ma $\forall \varepsilon > 0 \; B_{\varepsilon}(1) = (1 - \varepsilon, 1 + \varepsilon) \not\subset A^C$ poiché infiniti elementi di $A$ cadono in $(1 - \varepsilon, 1 + \varepsilon)$.

> [!theorem]
> Sia $X$ uno spazio metrico, $A \subset X$. Sono equivalenti le seguenti affermazioni:
> - $A$ è chiuso;
> - L'insieme dei punti di frontiera di $A$ (si indica con $\delta A$) è contenuto in $A$;
> - L'insieme dei punti di accumulazione di $A$ (si indica con $A^{\prime}$) è contenuto in $A$.
> Inoltre sono equivalenti
> - $A$ è aperto;
> - $A = A^{•}$ (parte interna di $A$) con $A^{•} := \left\{ x \in A : x \; \text{interno ad} \; A \right\}$.

> [!theorem]
> Sia $\mathcal{F}$ una famiglia di insiemi aperti. Allora
> - Unione su tutti gli $A \in \mathcal{F}$ di $A$ è aperto;
> - Se $\mathcal{F}$ è una famiglia finita. Allora intersezione su tutti gli $A \in \mathcal{F}$ è aperta.
>
E.g. se $X = \mathbb{R}$. L'intersezione di infiniti aperti può diventare chiuso. Ad esempio, considero $A_{n} = (-\frac{1}{n}, \frac{1}{n}), n \in \mathbb{N}$. Intersezione su tutti questi è $\left\{ 0 \right\}$.

> [!theorem]
> Sia $\mathcal{F}$ una famiglia di insiemi chiusi. Allora
> - Intersezione su tutti $A \in \mathcal{F}$ è chiuso;
> - Se $\mathcal{F}$ è una famiglia finita, allora l'unione di tutti gli $A \in \mathcal{F}$ è chiusa.
>
N.B. Gli intervalli chiusi sono insiemi chiusi. Gli intervalli aperti sono insiemi aperti.

E.g. se $X = \mathbb{R}$. $A_{n} = [-1 + \frac{1}{n}, 1 - \frac{1}{n}], n \in \mathbb{N}$. Unendo per ogni $x \in \mathbb{N}$ $A_{n}$ è uguale a $(-1, 1)$, aperto.

> [!definition]
> Sia $X$ metrico, $A \subset X$. Dico che $A$ è *limitato* se $\exists x_{0} \in X, R > 0 : A \subset B_{R}(x_{0})$.

> [!theorem] Teorema di Bolzano-Weistrass in $\mathbb{R}^n$
> Sia $A \subset \mathbb{R}^n$ limitato e infinito, allora $A$ ammette almeno un punto di accumulazione.
>
All'interno di un insieme (rappresentato come un blob in 2d), esiste almeno un punto del blob che è di accumulazione. Per ogni intorno che consideriamo di quel punto, esso contiene almeno un altro punto interno al blob.

Dimostrazione. Considero per semplicità notazionale solo il caso $n = 2$. Essendo $A$ limitato, esiste un rettangolo $R := [a, b] \times [c, d]$ che contiene $A$. (Sarebbe una palla, ma una palla può essere contenuta dentro un rettangolo.)

Dividiamo $[a, b]$ e $[c, d]$ entrambi in due sottointervalli di uguale ampiezza. (Ovvero dividiamo il rettangolo in quattro rettangoli congruenti fra loro).
Essendo per ipotesi $A$ infinito, almeno uno dei quattro sottorettangoli così definiti contiene infiniti punti di $A$. Indichiamo con $R_{1} = [a_{1}, b_{1}] \times [c_{1}, d_{1}]$ uno di tali rettangoli. Dividiamo $R_{1}$ nuovamente in quattro rettangoli congruenti. Iteriamo il procedimento. Otterremo una successione di rettangoli, che indichiamo con $[a_{n}, b_{n}] \times [c_{n}, d_{n}], n \in \mathbb{N}$, t.c. ad esempio $a_{n}, b_{n}$ hanno le seguenti proprietà:
$$
a_{1} \leq a_{2} \leq a_{3} \leq \dots \leq a_{n} \leq b_{n} \leq b_{n - 1} \leq \dots \leq b_{2} \leq b_{1}
$$
Vedremo poi che la successione degli $a$ è monotona crescente, la successione degli $b$ è monotona decrescente (entrambe in senso lato).
Questo si giustifica considerando i rettangoli...

$$
b_{n} - a_{n} = \frac{b - a}{2^n}, \; \forall n
$$

Inoltre ciascun $R_{n}$ contiene infiniti punti di $A$.
In particolare avremo, se $n \geq h \land n \geq k$ che 
$$
a_{h} \leq a_{n} < b_{n} \leq b_{k}
$$
Siano ora
$$
\begin{align}
W &:= \left\{ a_{1}, a_{2}, \dots \right\} \\
Z &:= \left\{ b_{1}, b_{2}, \dots \right\}
\end{align}
$$
Dalla disuguaglianza precedente segue che per ogni $k$, $b_{k}$ è un maggiorante di $W$ e dunque $\sup W \leq b_{k}, \; \forall k$. Ma allora il numero $\sup W$ è a sua volta un minorante di $Z$. E quindi
$$
\sup W \leq \inf Z
$$
Vogliamo dimostrare che è in realtà un'uguaglianza. Inoltre si ha che 
$$
0 \leq \inf Z - \sup W \leq b_{n} - a_{n}
$$
(Perché $\inf Z \leq b_{n} \forall n$). Cioè
$$
0 \leq \inf Z - \sup W \leq \frac{b - a}{2^n}, \forall n \in \mathbb{N}
$$
E dunque $\inf Z - \sup W = 0 \iff \inf Z = \sup Z$. Indico con $x_{0} \in [a, b]$ tale valore.
Procedendo in maniera identica sull'asse delle ordinate, trovo $y_{0} \in [c, d]$.
Affermo allora che $\mathbf{x} := (x_{0}, y_{0})$ è di accumulazione per $A$. Infatti, si fissi $R > 0$ a piacere. Per $n$ abbastanza grande, varrà che $R_{n} = [a_{n}, b_{n}] \times [c_{n}, d_{n}] \in B_{R}(\mathbf{x})$.
E in ogni rettangolo $R_{n}$, per costruzione, vi sono infiniti punti di $A$.
Quindi $\forall R > 0$ $B_{R}(\mathbf{x})$ contiene infiniti punti di $A$. Ovvero $\mathbf{x}$ è di accumulazione per $A$.

$$
\lfloor x \rfloor = (\lim_{ k \to +\infty } (\cos \pi x)^{2k})x
$$

## 2.2. Insiemi compatti e Teorema di Heine-Borel

> [!note] Estensione agli spazi metrici generali
> La nozione di compattezza e i concetti di copertura aperta che seguono sono presentati per il contesto euclideo $\mathbb{R}^n$, ma mantengono piena validità e medesima formulazione all'interno di un qualunque spazio metrico $(X, d)$ generico.
>
Si introducono le definizioni fondamentali di copertura aperta e di insieme compatto.

> [!definition] Copertura aperta
> Sia $A \subseteq \mathbb{R}^n$ e sia $\mathcal{F}$ una famiglia di insiemi aperti di $\mathbb{R}^n$. Si dice che $\mathcal{F}$ è una **copertura aperta** di $A$ se $A$ è contenuto nell'unione di tutti gli elementi di $\mathcal{F}$:
> $$
> A \subseteq \bigcup_{B \in \mathcal{F}} B
> $$

> [!definition] Insieme compatto
> Sia $A \subseteq \mathbb{R}^n$. Si dice che $A$ è **compatto** se da ogni sua copertura aperta $\mathcal{F}$ è possibile estrarre una sottofamiglia finita di insiemi $\{B_1, B_2, \dots, B_k\} \subseteq \mathcal{F}$ che costituisce ancora una copertura di $A$:
> $$
> A \subseteq \bigcup_{i=1}^k B_i
> $$
>
**Domande fondamentali sull'esistenza di insiemi compatti**

1. **Esistono insiemi compatti?**
   La risposta è affermativa e viene caratterizzata in modo esaustivo dal Teorema di Heine-Borel.
2. **Esistono insiemi non compatti?**
   Sì. Per esibire un insieme non compatto è sufficiente trovare una singola copertura aperta dalla quale non sia possibile estrarre alcuna sottocopertura finita.

> [!example] Insieme non compatto in $\mathbb{R}$: l'intervallo aperto $(0, 1)$
> Si consideri l'intervallo aperto $A = (0, 1) \subset \mathbb{R}$. Si definisca la famiglia $\mathcal{F}$ di insiemi aperti:
> $$
> B_n := \left( \frac{1}{n}, 1 - \frac{1}{n} \right) \quad \text{con } n \in \mathbb{N} \setminus \{1, 2\}
> $$
> L'unione di tutti gli insiemi $B_n$ coincide esattamente con $A$:
> $$
> \bigcup_{n=3}^\infty B_n = (0, 1) = A
> $$
> Dunque $\mathcal{F} = \{B_n\}_{n \geq 3}$ costituisce una copertura aperta di $A$.
> 
> Si dimostra tuttavia che da $\mathcal{F}$ non è possibile estrarre alcuna sottocopertura finita di $A$. Infatti, se per assurdo esistesse una sottofamiglia finita $\{B_{n_1}, B_{n_2}, \dots, B_{n_k}\}$ tale che:
> $$
> A \subseteq \bigcup_{i=1}^k B_{n_i}
> $$
> ordinando per convenzione gli indici $n_1 < n_2 < \dots < n_k$, gli insiemi $B_n$ risultano reciprocamente inscatolati:
> $$
> B_{n_1} \subset B_{n_2} \subset \dots \subset B_{n_k}
> $$
> Di conseguenza l'unione finita coincide semplicemente con il termine con indice massimo:
> $$
> \bigcup_{i=1}^k B_{n_i} = B_{n_k} = \left( \frac{1}{n_k}, 1 - \frac{1}{n_k} \right) \subsetneq (0, 1) = A
> $$
> Questo contraddice la copertura di $A$, poiché punti quali ad esempio $x = \frac{1}{2 n_k} \in A$ non appartengono a $B_{n_k}$. Si conclude che l'intervallo aperto $(0, 1)$ non è compatto.
>
Il seguente teorema fornisce una caratterizzazione topologica completa della compattezza nello spazio euclideo $\mathbb{R}^n$.

> [!theorem] Teorema di Heine-Borel
> Sia $A \subseteq \mathbb{R}^n$. Allora $A$ è compatto se e solo se è chiuso e limitato:
> $$
> A \text{ è compatto} \iff A \text{ è chiuso e limitato}
> $$

> [!note] Validità generale negli spazi metrici
> Nel Teorema di Heine-Borel, l'implicazione diretta:
> $$
> A \text{ compatto} \implies A \text{ chiuso e limitato}
> $$
> è valida in **qualsiasi spazio metrico**. L'implicazione inversa ($A \text{ chiuso e limitato} \implies A \text{ compatto}$), invece, non è in generale vera negli spazi metrici arbitrari (in particolare negli spazi a dimensione infinita), ma sussiste rigorosamente in $\mathbb{R}^n$.

> [!quote]- Dimostrazione
> Si dimostrano separatamente l'implicazione diretta ($\implies$) e l'implicazione inversa ($\impliedby$).
>
> **Parte 1: Implicazione diretta ($\implies$)**
>
> Si assume che $A \subseteq \mathbb{R}^n$ sia compatto. Si dimostra che $A$ è limitato e chiuso.
>
> **1a. $A$ è limitato**
> Si consideri la famiglia di palle aperte centrate nell'origine:
> $$
> \mathcal{F} := \left\{ B_k(\mathbf{0}) : k \in \mathbb{R}^+ \right\}
> $$
> Poiché ogni punto di $\mathbb{R}^n$ possiede norma finita, l'unione di tutte le palle ricopre l'intero spazio:
> $$
> \bigcup_{k=1}^\infty B_k(\mathbf{0}) = \mathbb{R}^n \implies A \subseteq \bigcup_{k=1}^\infty B_k(\mathbf{0})
> $$
> Dunque $\mathcal{F}$ è una copertura aperta di $A$. Essendo $A$ compatto per ipotesi, è possibile estrarre una sottocopertura finita $\{B_{k_1}(\mathbf{0}), B_{k_2}(\mathbf{0}), \dots, B_{k_m}(\mathbf{0})\}$ con $k_1 < k_2 < \dots < k_m$.
> Poiché le palle centrate nell'origine sono tra loro inscatolate ($B_{k_1} \subset B_{k_2} \subset \dots \subset B_{k_m}$), la loro unione coincide con la palla di raggio massimo:
> $$
> A \subseteq \bigcup_{i=1}^m B_{k_i}(\mathbf{0}) = B_{k_m}(\mathbf{0})
> $$
> Poiché $A$ è interamente contenuto in una palla di raggio finito $k_m$, per definizione $A$ è limitato.
>
> **1b. $A$ è chiuso**
> Per dimostrare che $A$ è chiuso, è equivalente mostrare che il suo complementare $A^c = \mathbb{R}^n \setminus A$ è un insieme aperto.
> Sia $\mathbf{x} \in A^c$ un punto fissato. Per ogni punto $\mathbf{y} \in A$, poiché $\mathbf{x} \ne \mathbf{y}$, per la proprietà di Hausdorff degli spazi metrici esistono due intorni aperti e disgiunti $U_{\mathbf{y}}$ di $\mathbf{x}$ e $V_{\mathbf{y}}$ di $\mathbf{y}$:
> $$
> \mathbf{x} \in U_{\mathbf{y}}, \quad \mathbf{y} \in V_{\mathbf{y}}, \quad U_{\mathbf{y}} \cap V_{\mathbf{y}} = \emptyset
> $$
> Variando $\mathbf{y} \in A$, la famiglia di aperti $\mathcal{F} := \{V_{\mathbf{y}} : \mathbf{y} \in A\}$ forma una copertura aperta di $A$:
> $$
> A \subseteq \bigcup_{\mathbf{y} \in A} V_{\mathbf{y}}
> $$
> Essendo $A$ compatto per ipotesi, da $\mathcal{F}$ è possibile estrarre una sottocopertura finita $\{V_{\mathbf{y}_1}, V_{\mathbf{y}_2}, \dots, V_{\mathbf{y}_k}\}$ tale che:
> $$
> A \subseteq \bigcup_{i=1}^k V_{\mathbf{y}_i} =: V
> $$
> Si consideri ora l'intersezione finita dei corrispondenti intorni aperti del punto $\mathbf{x}$:
> $$
> U := \bigcap_{i=1}^k U_{\mathbf{y}_i}
> $$
> Poiché $U$ è l'intersezione di un numero finito di insiemi aperti, $U$ è un insieme aperto contenente $\mathbf{x}$.
> Inoltre, per ciascun indice $i \in \{1, \dots, k\}$, per costruzione si ha $U \subseteq U_{\mathbf{y}_i}$ e $U_{\mathbf{y}_i} \cap V_{\mathbf{y}_i} = \emptyset$. Ne consegue che se $\mathbf{z} \in U$, allora:
> $$
> \mathbf{z} \notin V_{\mathbf{y}_i} \quad \forall i=1, \dots, k \implies \mathbf{z} \notin \bigcup_{i=1}^k V_{\mathbf{y}_i} = V \implies \mathbf{z} \notin A
> $$
> Pertanto:
> $$
> U \cap A = \emptyset \iff U \subseteq A^c
> $$
> Avendo trovato per ogni punto $\mathbf{x} \in A^c$ un intorno aperto $U$ interamente contenuto in $A^c$, ogni punto di $A^c$ è punto interno. Di conseguenza $A^c$ è aperto, il che dimostra che $A$ è chiuso.
>
> ---
>
> **Parte 2: Implicazione inversa ($\impliedby$)**
>
> Si assume che $A \subseteq \mathbb{R}^n$ sia chiuso e limitato. Si dimostra che $A$ è compatto. Per chiarezza espositiva, la dimostrazione viene condotta nel piano $\mathbb{R}^2$ (senza perdita di generalità rispetto a $\mathbb{R}^n$).
>
> **2p. Compattezza del rettangolo chiuso $E := [a, b] \times [c, d]$**
> Si procede per assurdo. Supponiamo che il rettangolo chiuso $E$ non sia compatto. Allora esiste una copertura aperta $\mathcal{F}$ di $E$ dalla quale non è possibile estrarre alcuna sottocopertura finita.
> In stretta analogia con la dimostrazione del Teorema di Bolzano-Weierstrass, si divide $E$ in quattro sottorettangoli chiusi e congruenti bisezionando i lati $[a, b]$ e $[c, d]$.
> Se ciascuno dei quattro sottorettangoli ammettesse una sottocopertura finita estratta da $\mathcal{F}$, allora l'unione di tali sottofamiglie costituirebbe una copertura finita per $E$, contro l'ipotesi di non compattezza.
> Pertanto, almeno uno dei quattro sottorettangoli non ammette alcuna sottocopertura finita; sia esso denominato $E_1$.
>
> Iterando questo processo di bisezione a partire da $E_1$, si ottiene una successione di rettangoli chiusi $\{E_k\}_{k=0}^\infty$ con $E_0 = E$ che verifica:
> 1. $E_{k+1} \subset E_k$ per ogni $k \in \mathbb{N} \cup \{0\}$ (successione di compatti inscatolati);
> 2. $\mathrm{Area}(E_k) = \frac{(b-a)(d-c)}{4^k} \xrightarrow{k \to \infty} 0$;
> 3. Per ogni $k \in \mathbb{N} \cup \{0\}$, nessuna sottofamiglia finita di $\mathcal{F}$ ricopre $E_k$.
>
> Per il principio di Cantor degli insiemi chiusi e limitati inscatolati a diametro infinitesimo (teorema di Bolzano-Weierstrass):
> $$
> \bigcap_{k=0}^\infty E_k = \{\mathbf{x}\} \quad \text{con } \mathbf{x} \in E_k \; \forall k
> $$
> Poiché $\mathbf{x} \in E$ e $\mathcal{F}$ è una copertura aperta di $E$, esiste un elemento aperto $U \in \mathcal{F}$ tale che $\mathbf{x} \in U$.
> Essendo $U$ aperto, esiste un raggio $R > 0$ tale che la palla aperta sia contenuta in $U$:
> $$
> B_R(\mathbf{x}) \subseteq U
> $$
> Poiché le dimensioni dei lati dei rettangoli $E_k$ tendono a zero al divergere di $k$, per $k$ sufficientemente grande l'intero rettangolo $E_k$ è contenuto nella palla $B_R(\mathbf{x})$:
> $$
> E_k \subset B_R(\mathbf{x}) \subseteq U \in \mathcal{F}
> $$
> Ma questo significa che $E_k$ è ricoperto dal solo aperto $U$, contraddicendo l'ipotesi che nessuna sottofamiglia finita di $\mathcal{F}$ potesse ricoprire $E_k$.
> L'assurdo dimostra che il rettangolo $E = [a, b] \times [c, d]$ è compatto.
>
> **2b. I sottoinsiemi chiusi di un compatto sono compatti**
> Sia $K \subset \mathbb{R}^n$ un insieme compatto e sia $A \subseteq K$ un sottoinsieme chiuso (e limitato).
> Sia $\mathcal{F}$ una qualunque copertura aperta di $A$. Si consideri la famiglia ampliata:
> $$
> \mathcal{F}' := \mathcal{F} \cup \{A^c\}
> $$
> Poiché $A$ è chiuso, il suo complementare $A^c = \mathbb{R}^n \setminus A$ è aperto. Inoltre:
> $$
> \left( \bigcup_{B \in \mathcal{F}} B \right) \cup A^c \supseteq A \cup A^c = \mathbb{R}^n \supseteq K
> $$
> Dunque $\mathcal{F}'$ è una copertura aperta del compatto $K$.
> Essendo $K$ compatto per ipotesi, è possibile estrarre da $\mathcal{F}'$ una sottocopertura finita $\{U_1, U_2, \dots, U_m, A^c\}$ di $K$, dove gli insiemi $U_i$ appartengono a $\mathcal{F}$.
> Poiché $A \subseteq K$ e per definizione $A \cap A^c = \emptyset$, l'aperto $A^c$ non fornisce alcun contributo alla copertura dei punti di $A$. Ne segue che gli insiemi $\{U_1, U_2, \dots, U_m\}$ ricoprono interamente $A$:
> $$
> A \subseteq \bigcup_{i=1}^m U_i
> $$
> Dunque da ogni copertura aperta di $A$ è possibile estrarre una sottocopertura finita, dimostrando che $A$ è compatto.
>
> **Conclusione**
> Sia $A \subset \mathbb{R}^n$ un qualunque insieme chiuso e limitato. Essendo limitato, esiste un rettangolo (o iper-rettangolo $n$-dimensionale) chiuso $E$ sufficientemente grande tale che:
> $$
> A \subseteq E
> $$
> Poiché $E$ è compatto (punto 2p) e $A$ è un sottoinsieme chiuso di $E$, per il punto 2b $A$ è compatto.
> Resta così dimostrata l'equivalenza fondamentale:
> $$
> A \text{ chiuso e limitato} \iff A \text{ compatto}
> $$
> $\blacksquare$

> [!note] Insiemi infiniti e inderogabilità dell'ipotesi di apertura
> Sia $A \subset \mathbb{R}^n$ un insieme infinito. Poiché ogni insieme coincide con l'unione dei propri elementi:
> $$
> A = \bigcup_{\mathbf{x} \in A} \{\mathbf{x}\}
> $$
> Si consideri la famiglia formata dai singoli singoletti:
> $$
> \mathcal{F} := \left\{ \{\mathbf{x}\} : \mathbf{x} \in A \right\}
> $$
> Tale famiglia costituisce una copertura di $A$. Tuttavia, gli elementi $\{\mathbf{x}\}$ sono insiemi chiusi (non aperti) nello spazio euclideo. Essendo $A$ un insieme infinito, da $\mathcal{F}$ non è chiaramente possibile estrarre alcuna sottocopertura finita di $A$.
> 
> Questo controesempio evidenzia che l'ipotesi che la copertura sia costituita da insiemi **aperti** è assolutamente fondamentale e non eliminabile nella nozione di compattezza per insiemi con cardinalità infinita.
>
