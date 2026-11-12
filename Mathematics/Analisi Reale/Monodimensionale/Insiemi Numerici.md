---
title: "Insiemi Numerici e Assiomatica Reale"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 1)"
tags:
  - math/real-analysis/numbers
  - math/real-analysis/completeness
---

# 1. Insiemi numerici

## 1.1. Numeri naturali, relativi e razionali

Si definiscano i seguenti insiemi numerici, rispettivamente dei numeri *naturali*, *interi relativi* e *razionali*. In particolare $\mathbb{N} \subseteq \mathbb{Z} \subseteq \mathbb{Q}$.
$$
\begin{align}
\mathbb{N} &:= \left\{1, 2, 3, \dots\right\} \\
\mathbb{Z} &:= \left\{0, \pm 1, \pm 2, \dots\right\} \\
\mathbb{Q} &:= \left\{\frac{p}{q} : p, q \in \mathbb{Z}, q \ne 0 \right\}
\end{align}
$$
In $\mathbb{Q}$ gli elementi possono essere ridotti in classi di identità caratterizzate dalla riduzione dei fattori comuni di $p$ e $q$, così che i due interi siano coprimi. (E.g. $\frac{1}{3} = \frac{2}{6}$.)

$\sqrt{2}$ è un numero nel quale ci si può imbattere tramite semplici valutazioni geometriche (tramite il teorema di Pitagora, è la misura dell'ipotenusa del triangolo rettangolo dai cateti unitari). È tuttavia possibile dimostrare che questo numero non è razionale.

> [!proposition] $\sqrt{2} \not\in \mathbb{Q}$
> La radice quadrata di $2$ non appartiene all'insieme $\mathbb{Q}$, ovvero non è esprimibile come il rapporto di due numeri interi relativi $p, q \in \mathbb{Z}$.
>
^c67fe8

> [!quote]- Dimostrazione
> Si procede per assurdo. Supponiamo che $\sqrt{2} \in \mathbb{Q}$. Allora
> $$
> \DeclareMathOperator{\MCD}{MCD}
> \exists p, q \in \mathbb{N} : \sqrt{2} = \frac{p}{q} \land \MCD(p, q) = 1
> $$
> ^85400b
>
> Risulta quindi $p^2 = 2 q^2$. Essendo $p$ un quadrato, ognuno dei suoi fattori primi compare un numero pari di volte. Poiché per la relazione precedente $2|p^2$, allora quantomeno valgono anche $4|p^2$ e $2|p$. Sia $k \in \mathbb{N}$ tale che $p^2 = 4 k^2$. Allora $2 k^2 = q^2$, ovvero $2|q^2$ e $2|q$, per motivi analoghi ai precedenti. Risulta quindi
> $$
> 2|p \land 2|q \implies \MCD(p, q) \geq 2
> $$
> Ma questo contraddice la condizione [[#^85400b]] iniziale. Si giunge ad un assurdo, dimostrando che $\sqrt{2} \not\in \mathbb{Q}$. $\blacksquare$
>
## 1.2. Numeri reali

Considero una retta, detta *retta reale*. Scelgo l'origine $0$ e l'unità di misura, che corrisponde alla distanza fra interi adiacenti sulla retta.
Sia $x$ un valore sulla retta. E.g. poniamo $x \in [1, 2)$. Divido l'intervallo in dieci intervalli sottoinsiemi disgiunti, tutti di ampiezza pari a un decimo dell'ampiezza dell'intervallo iniziale.
$$
[1, 2) = [1, 1.1) \cup [1.1, 1.2) \cup \dots \cup [1.9, 2)
$$
$x$ apparterrà nuovamente a uno solo dei precedenti intervalli (e.g. $x \in [1.7, 1.8)$). Iterando questo procedimento $n$ volte sarà possibile determinare le prime $n$ cifre decimali di $x$. Iterando il processo all'infinito si potranno determinare in maniera univoca le cifre di $x \in \mathbb{R}$.
Per fissare le idee, pongo ora $x > 0$. Siano
$$
\begin{align}
x_{0} &\in \mathbb{N} \cup \left\{ 0 \right\} \\
x_{1}, x_{2}, x_{3}, \dots &\in \left\{ 1, 2, 3, \dots, 9 \right\}
\end{align}
$$

^9977a5

In modo tale che
$$
\begin{align}
x_{0} \leq x& < x_{0} + 1 \\
x_{0} + \frac{x_{1}}{10} \leq x& < x_{0} + \frac{x_{1} + 1}{10} \\
x_{0} + \frac{x_{1}}{10} + \frac{x_{2}}{100} \leq x& < x_{0} + \frac{x_{1}}{10} + \frac{x_{2} + 1}{100} \\
\vdots&
\end{align}
$$
Individuo così $x_0 = [x]$, parte intera di $x$, e $x_{1}, x_{2}, x_{3}, \dots$, rispettivamente la prima, seconda, terza... cifra decimale. È possibile dimostrare la seguente proposizione.

> [!proposition] Unicità della rappresentazione decimale nei reali
> Fissato $x \in \mathbb{R}$, la sua rappresentazione decimale è unica (eccetto i casi 9-periodici, e.g. $0.\overline{9} = 1$).
> Sia $A$ l'insieme delle rappresentazioni decimali di $\mathbb{R}$. La funzione $f{:}\; A \rightarrow \mathbb{R}$, che associa ad ogni rappresentazione decimale il corrispettivo numero sulla retta reale, è suriettiva ma non iniettiva.
>
Si scrive quindi, più in generale, se $x \in \mathbb{R}$ e $x_{0} \in \mathbb{Z}$, estendendo la [[#^9977a5]],
$$
x = \text{``$x_{0}.x_{1}x_{2}x_{3}\dots$''}
$$

## 1.3. Relazioni e funzioni

> [!definition] Funzione, dominio, codominio, immagine e insieme immagine
> Siano $X$ e $Y$ due insiemi. Si dice *funzione* (o *applicazione*) da un insieme $X$ a un insieme $Y$ una corrispondenza univoca da $X$ a $Y$, ovvero una corrispondenza che associa ad ogni elemento $x \in X$ uno e un solo elemento $y \in Y$. Ovvero, sia $f{:} \; X \to Y$,
> $$
> \forall x \in X, \exists!y \in Y : f(x) = y
> $$
> $y$ viene detta *immagine* di $x$ tramite $f$.
> $X$ e $Y$ vengono detti rispettivamente $dominio$ e $codominio$ di $f$ e si indicano con
> $$
> \DeclareMathOperator{\dom}{dom}
> \DeclareMathOperator{\cod}{cod}
> \begin{align}
> \dom{f} := X \\
> \cod{f} := Y
> \end{align}
> $$
> Il sottoinsieme del codominio costituito dalle immagini degli elementi del dominio è detto *insieme immagine* e si indica come segue.
> $$
> \DeclareMathOperator{\im}{im}
> \im(f) := f(X) := \left\{y \in Y: \exists x \in X, f(x) = y\right\} \subseteq Y
> $$

> [!definition] Funzioni iniettive, suriettive e biettive
> Sia $f{:}\; X \rightarrow Y$. $f$ si dice *suriettiva* se $\im(f) = Y$ (è una funzione *su $Y$* e non *in $Y$*). Ovvero se
> $$
> \forall y \in Y \; \exists x \in X : f(x) = y
> $$
> Diremo invece che $f$ è *iniettiva* se
> $$
> \forall x_{1}, x_{2} \in X \; f(x_{1}) = f(x_{2}) \implies x_{1} = x_{2}
> $$
> In ultimo, $f$ viene detta *biettiva* (o *invertibile*) qualora fosse sia suriettiva che iniettiva.
>
Dalla definizione di cui sopra, dico che due insiemi $A$ e $B$ possono essere messi in corrispondenza biunivoca ($A \leftrightarrow B$) se $\exists f{:}\; A \rightarrow B : f \;\text{biettiva}$.

## 1.4. Insieme numerabile

> [!definition] Insieme numerabile
> Dico un insieme *numerabile* se può essere messo in corrispondenza biunivoca con $\mathbb{N}$.
>
^1ddbdf

> [!proposition] L'insieme $\mathbb{Q}$ è numerabile
> Esiste una corrispondenza biunivoca fra gli elementi di $\mathbb{Q}$ e di $\mathbb{N}$.

> [!quote]- Dimostrazione
> È possibile elencare tutti i numeri razionali positivi secondo la seguente tabella di infinite righe e colonne. L'elemento alla $i$-esima riga e $j$-esima colonna può essere individuato con
> $$
> a_{ij} := \frac{j}{i}, \; i, j \in \mathbb{N}
> \begin{matrix}
> 1 & 2 & 3 & 4 & \dots \\
> \frac{1}{2} & \frac{2}{2} & \frac{3}{2} & \ddots \\
> \frac{1}{3} & \frac{2}{3} & \ddots \\
> \frac{1}{4} & \ddots \\
> \vdots
> \end{matrix}
> $$
> Considero i numeri diagonalmente, dall'alto verso il basso, da destra verso sinistra, così che possano essere messi in successione come
> $$
> 1, 2, \frac{1}{2}, 3, \frac{2}{2}, \frac{1}{3}, 4, \frac{3}{2}, \frac{2}{3}, \frac{1}{4}, \dots
> $$
> Si escludano le ripetizioni dalla successione (e.g. $\frac{1}{2} = \frac{2}{4} = \dots$), allora diventa
> $$
> 1, 2, \frac{1}{2}, 3, \frac{1}{3}, 4, \frac{3}{2}, \frac{2}{3}, \frac{1}{4}, \dots
> $$
> In questo modo sono stati elencati tutti i razionali positivi in una sequenza ordinata. È possibile assegnare a ciascuno di essi un numero naturale nel rispettivo. È stata tracciata una corrispondenza biunivoca tra $\mathbb{Q}^+$ e $\mathbb{N}$: $\mathbb{Q}^+$ è numerabile per [[#^1ddbdf]].
> Per dimostrare che anche $\mathbb{Q}$ è numerabile, si consideri la seguente regola per associare ad ogni razionale positivo uno e un solo razionale.
> $$
> \begin{matrix}
> \mathbb{N}{:}& \; 1,& 2,& 3,& 4,& 5,& \dots& \\
> \mathbb{Q}^+{:}& \; 1,& 2,& \frac{1}{2},& 3,& \frac{1}{3},& \dots& \\
> \mathbb{Q}{:}& \; 0,& 1,& -1,& 2,& -2,& \dots&
> \end{matrix}
> $$
> Si è dimostrato così che esiste una corrispondenza biunivoca tra $\mathbb{Q}$ e $\mathbb{N}$, ovvero l'insieme dei numeri razionali è numerabile. $\blacksquare$

> [!remark] Corrispondenza biunivoca con un sottoinsieme
> Esistono insiemi (in realtà tutti quelli infiniti) che possono essere messi in corrispondenza biunivoca con un loro sottoinsieme proprio.
>
Ne sono un esempio gli insiemi numerici sottoinsiemi di $\mathbb{Q}$ e numerabili con $\mathbb{N}$, oppure $\mathbb{R}$ con $[0, 1]$, nonostante, come vedremo, non siano insiemi numerabili.

> [!proposition] L'insieme $\mathbb{R}$ non è numerabile
> Non è possibile determinare una corrispondenza biunivoca fra gli elementi di $\mathbb{R}$ e di $\mathbb{N}$.

> [!quote]- Dimostrazione
> Mostro in primo luogo che $[0, 1]$ non è numerabile. Si tratta chiaramente di un'affermazione più forte della tesi in quanto $[0, 1] \in \mathbb{R}$. Sarebbe possibile dimostrare questa proposizione per ogni intervallo.
> Procediamo per assurdo: supponiamo che $[0, 1]$ sia numerabile. Allora esiste una corrispondenza biunivoca tra l'intervallo e i numeri naturali. Altresì è possibile elencare gli elementi di $[0, 1]$ in una tabella come la seguente.
> $$
> \begin{align}
> x_{1}& = \text{``$0.x_{11}x_{12}x_{13}\dots$''} \\
> x_{2}& = \text{``$0.x_{21}x_{22}x_{23}\dots$''} \\
> x_{3}& = \text{``$0.x_{31}x_{32}x_{33}\dots$''} \\
> \vdots
> \end{align}
> $$
>
> ^9c8925
>
> La tabella precedente contiene tutti i numeri nell'intervallo considerato (anche $1$ perché $0.\overline{9} = 1$). Poiché tutti i reali sono ordinati secondo i naturali, ciascuno di essi avrà un valore assegnato $1, 2, 3, \dots$.
> Costruisco ora, qualsiasi sia la tabella, un $y \in [0, 1]$ tale che $\forall n \in \mathbb{N} \; x_{n} \ne y$ (non appartiene alla tabella). Sia, similmente a come fatto in precedenza,
> $$
> y := \text{``$0.y_{1}y_{2}y_{3}\dots$''}
> $$
> Inoltre, scelti $a, b \in \left\{1, \dots, 8\right\} \land a \ne b$, 
> $$
> y_{i} := 
> \begin{cases}
> a, & x_{ii} = b \\
> b, & x_{ii} \ne b
> \end{cases} 
> $$
> In questo modo, per costruzione,
> $$
> \forall i \in \mathbb{N} \; y_{i} \ne x_{ii} \implies \forall i \in \mathbb{N} \; y \ne x_{i}
> $$
> Dunque $y \in [0, 1]$, ma non appare nella tabella [[#^9c8925]]. Questa è una contraddizione. Si giunge ad un assurdo, ovvero $[0, 1]$ non è numerabile (e di conseguenza nemmeno $\mathbb{R}$). $\blacksquare$

> [!corollary] Intervalli in $\mathbb{R}$ non numerabili
> Siano $a, b \in \mathbb{R}$, con $a < b$. Allora $(a, b)$ non è numerabile.
>
## 1.5. Operazioni su $\mathbb{R}$

Le quattro operazioni sono definite consuetamente su $\mathbb{Q}$. Non esiste una definizione immediata su $\mathbb{R}$. Tuttavia, per la somma, se considero $x, y \in \mathbb{R}$.
$$
\begin{matrix}
x = \text{``$x_{0}.x_{1}x_{2}x_{3}\dots$''} \\
y = \text{``$y_{0}.y_{1}y_{2}y_{3}\dots$''}
\end{matrix}
$$
Costruisco la successione $z_{k} \in \mathbb{Q}$ nel seguente modo.
$$
\begin{align}
z_{0} &:= x_{0} + y_{0} \\
z_{1} &:= \text{``$x_{0}.x_{1}$''} + \text{``$y_{0}.y_{1}$''} \\
z_{2} &:= \text{``$x_{0}.x_{1}x_{2}$''} + \text{``$y_{0}.y_{1}y_{2}$''} \\
\vdots
\end{align}
$$
Le cifre decimali, con $k \to +\infty$ si stabilizzano su quelle del numero reale $x + y$.

> [!definition] Campo
> Un un insieme dotato di due operazioni (interne), chiamate *somma* e *prodotto*, che soddisfano le seguenti proprietà è detto *campo*. Per la somma, se $x$, $y$ e $z$ sono elementi dell'insieme, valgono le proprietà associativa, commutativa, esistenza dell'elemento neutro ed esistenza dell'elemento opposto.
> $$
> \begin{align}
> \tag{c1} &(x + y) + z = x + (y + z) \\
> \tag{c2} &x + y = y + x \\
> \tag{c3} &x + 0 = x \\
> \tag{c4} &\exists (-x) \in \mathbb{R} : x + (-x) = 0 
> \end{align}
> $$
> Mentre per il prodotto, analogamente alla somma,
> $$
> \begin{align}
> \tag{c5} &(xy)z = x(yz) \\
> \tag{c6} &xy = yx \\
> \tag{c7} &1 \cdot x = x \\
> \tag{c8} &x \ne 0 \implies \exists x^{-1} : xx^{-1} = 1
> \end{align}
> $$
> Deve inoltre valere la proprietà distributiva del prodotto sulla somma, che lega le due operazioni. Ovvero
> $$
> \tag{c9} x(y + z) = xy + xz
> $$
>
Sull'insieme $\mathbb{R}$ vi è un ordinamento naturale: dico che $x < y$ se $x$ è a sinistra di $y$ sulla retta reale (strettamente). Analogamente è possibile definire le altre disuguaglianza strette e late (e.g. $x \leq y \iff x < y \lor x = y$).

> [!definition] Campo ordinato
> Un insieme numerico che soddisfa le proprietà di campo, oltre che le seguenti, è detto *campo ordinato*. Per ogni $x$, $y$, $z$ e $w$ dell'insieme considerato,
> $$
> \begin{align}
> \tag{c10} &x \leq x \\
> \tag{c11} &x \leq y \land y \leq x \implies x = y \\
> \tag{c12} &x \leq y \land y \leq z \implies x \leq z \\
> \tag{c13} &x \leq y \land z \leq w \implies x + y = z + w \\
> \tag{c14} &x \leq y \land 0 \leq z \implies xz \leq yz \\
> \end{align}
> $$
> 
>
^1ba26f

> [!proposition] $\mathbb{R}$ è un campo ordinato
> Essendo $\mathbb{R}$ dotato di operazioni di somma e prodotto che rispettano gli assiomi di campo e di una relazione di ordine totale compatibile con esse, $\mathbb{R}$ è un campo ordinato.
>
Esistono anche campi non ordinati (o, in generale, non ordinabili secondo le condizioni della [[#^1ba26f]]), come l'insieme $\mathbb{C}$.

## 1.6. Proprietà di completezza

> [!definition] Massimo e minimo
> Sia $A \subseteq \mathbb{R}$, dico che $M \in \mathbb{R}$ è il *massimo* di $A$ se $M \geq a \; \forall a \in A$ e $M \in A$. Analogamente, dico che $m \in \mathbb{R}$ è il *minimo* di $A$ se $m \leq a \; \forall a \in A$ e $m \in A$. Si scrive rispettivamente
>$$
> \begin{align}
> \max{A} &:= M \\
> \min{A} &:= m
> \end{align}
> $$

> [!definition] Maggiorante e minorante
> Sia $A \subseteq \mathbb{R}$, dico che $M \in \mathbb{R}$ è un *maggiorante* di $A$ se $M \geq a \; \forall a \in A$. Analogamente, dico che $m \in \mathbb{R}$ è un *minorante* di $A$ se $m \leq A \; \forall a \in A$.
>
Si noti che un massimo (minimo) di un insieme è sempre un maggiorante (minorante) dell'insieme stesso, ma non viceversa.
In particolare il massimo e minimo di un insieme, se esistono, sono unici. Questo è facilmente dimostrabile: supponiamo che un insieme $A$ abbia due massimi $M, M^{\prime} \in A$ con $M \ne M^{\prime}$. Allora per la definizione di massimo, $M \geq M^{\prime} \land M^{\prime} \geq M \implies M = M^{\prime}$. Questa è una contraddizione, quindi il massimo è unico. È possibile costruire un ragionamento analogo sul minimo.

> [!definition] Insieme limitato dall'alto e dal basso
> Dico un insieme $A \subseteq \mathbb{R}$ *limitato dall'alto* (*limitato superiormente*) se esiste un maggiorante di $A$. Analogamente dico $A$ *limitato dal basso* (*limitato inferiormente*) se esiste un minorante di $A$. $A$ si dice *limitato* se è limitato sia superiormente che inferiormente.

> [!theorem] Minimo dei maggioranti e massimo dei minoranti
> Sia $A \subseteq \mathbb{R}$. Se $A$ è limitato dall'alto, allora l'insieme dei maggioranti ammette minimo. Similmente, se $A$ è limitato dal basso, allora l'insieme dei minoranti ammette massimo.
>
^c55a38

Il [[#^c55a38]] è falso in $\mathbb{Q}$. Ad esempio per
$$
A := \left\{ x \in \mathbb{Q} : x^2 < 2 \right\} \subset \mathbb{Q}
$$
L'insieme dei maggioranti è
$$
A^{+} = \left\{ x \in \mathbb{Q} : \text{``$x > \sqrt{ 2 }$''} \right\}
$$
L'insieme non ha un minimo in $\mathbb{Q}$, infatti $\sqrt{ 2 } \not\in \mathbb{Q}$.

> [!definition] Estremo superiore e inferiore
> Sia $A \subseteq \mathbb{R}$. Si supponga che $A$ ammetta maggioranti o minoranti. Si indichino con $A^{+}$ e $A^{-}$ l'insieme dei maggioranti e dei minoranti di $A$. Siano $\sup{A}$ e $\inf{A}$ rispettivamente l'*estremo superiore* e *inferiore* di $A$, così che
> $$
> \begin{align}
> \sup{A} &:= \min{A^{+}} \\
> \inf{A} &:= \max{A^{-}}
> \end{align}
> $$
> Per convenzione, se $A$ non ammette maggioranti (minoranti) si dice che $\sup{A} := +\infty$ ($\inf{A} := -\infty$).
>
Se $A$ ammette massimo (minimo) allora $\max{A} = \sup{A}$ ($\min{A} = \inf{A}$), ovvero l'estremo superiore (inferiore) appartiene ad $A$.

La proprietà fondamentale che distingue il corpo dei reali da quello dei razionali è la *completezza*. Essa viene espressa dalla caratterizzazione di $\inf$ e $\sup$ del seguente teorema.

> [!theorem] Teorema di completezza
> Sia $A \subseteq \mathbb{R}$ limitato dall'alto. Allora le seguenti proprietà sono equivalenti:
> - $L := \sup{A}, \; L \in \mathbb{R}$;
> - Se $L$ è un maggiorante di $A$, $\forall \varepsilon > 0 \; \exists a \in A : a > L - \varepsilon$.
>
> Analogamente, se $A$ è un insieme limitato dal basso, le seguenti proprietà sono equivalenti:
> - $l := \inf{A}, \; l \in \mathbb{R}$;
> - Se $l$ è un minorante di $A$, $\forall \varepsilon > 0 \; \exists a \in A : a < l + \varepsilon$.
>
Il teorema mette in equivalenza la proprietà di essere il minimo dei maggioranti e la proprietà tale per cui, se $L$ è un maggiorante, tutti i valori di $[L - \varepsilon, L]$ non possano essere maggioranti per nessun $\varepsilon > 0$ molto piccolo. $\inf{A}$ è inoltre caratterizzato in maniera analoga.

## 1.7. Numeri complessi

Si pone il seguente quesito. Esiste un campo, indicato con $\mathbb{C}$, tale che $\mathbb{R} \subset \mathbb{C}$ e tale che ogni polinomio di grado $n \in \mathbb{C}$ abbia esattamente $n$ radici, se contate con la propria molteplicità in $\mathbb{C}$?
La risposta è sì. Il campo $\mathbb{C}$ si identifica con $\mathbb{R}^{2} = \mathbb{R} \times \mathbb{R}$. Verranno definite opportune operazioni di campo (somma e prodotto) che soddisfino gli assiomi di campo da (c1) a (c9).
In particolare $\mathbb{R} \times \left\{ 0 \right\} \subset \mathbb{C}$, ovvero sul piano $\mathbb{C}$, $\mathbb{R}$ coincide con l'asse delle ascisse.

È possibile mostrare che $\mathbb{C}$ non può essere ordinato tramite gli assiomi (c10) a (c14); infatti, se lo fosse, dovrebbe valere
$$
\forall z \in \mathbb{C} \; z^{2} + 1 > 0 \implies \nexists z_{0} \in \mathbb{C} : z_{0}^2 + 1 = 0
$$
La precedente affermazione è giustificata dal fatto che, se $\mathbb{C}$ seguisse gli assiomi di un campo ordinato, allora, come in $\mathbb{R}$, varrebbe $\forall z \in \mathbb{C} \; z^2 \geq 0 > -1$. Tuttavia, come vedremo, $\exists i \in \mathbb{C} \setminus \mathbb{R} : i^{2} + 1 = 0$.

## 1.8. Operazioni su $\mathbb{C}$

> [!definition] Somma e prodotto in $\mathbb{C}$
> Siano $(x_{1}, y_{1}), (x_{2}, y_{2}) \in \mathbb{C}$, allora le operazioni binarie interne di somma e prodotto in $\mathbb{C}$ vengono definite come
> $$
> \begin{align}
> (x_{1}, y_{1}) + (x_{2}, y_{2}) &:= (x_{1} + x_{2}, y_{1} + y_{2}) \in \mathbb{C} \\
> (x_{1}, y_{1})(x_{2}, y_{2}) &:= (x_{1}x_{2} - y_{1}y_{2}, x_{1}y_{2} + x_{2}y_{1}) \in \mathbb{C}
> \end{align}
> $$
>
La definizione dell'addizione può essere facilmente giustificata immaginando i numeri complessi come vettori nel piano. In tal caso il vettore risultante dalla somma è deducibile con la *regola del parallelogramma*. I vettori vengono concatenati testa-coda con semplici traslazioni a formare un parallelogramma. Il vettore somma con coda nell'origine coincide così con la diagonale.

La definizione del prodotto non è altrettanto ovvia. Per costruire una ragionevole definizione del prodotto, chiediamo in primo luogo che l'operazione cercata soddisfi gli assiomi di campo per il prodotto.
Si noti che per un generico complesso $(x, y) \in \mathbb{C}$, per la somma di vettori,
$$
(x, y) = (x, 0) + (0, y) = x(1, 0) + y(0, 1)
$$

^2e70ef

Consideriamo $(x_{1}, y_{1}), (x_{2}, y_{2}) \in \mathbb{C}$. Vogliamo definire il prodotto $(x_{1}, y_{1})(x_{2}, y_{2})$ coerentemente con gli assiomi di campo. Utilizzando la [[#^2e70ef]] e la proprietà distributiva del prodotto si ottiene
$$
\begin{align}
(x_{1}, y_{1})(x_{2}, y_{2}) &= [x_{1}(1, 0) + y_{1}(0, 1)][x_{2}(1, 0) + y_{2}(0, 1)] \\
&= x_{1}x_{2}(1, 0)(1, 0) + x_{1}y_{2}(1, 0)(0, 1) + y_{1}x_{2}(0, 1)(1, 0) + y_{1}y_{2}(0, 1)(0, 1)
\end{align}
$$

^8a3e5f

Identifico $\mathbb{R}$ con l'asse delle ascisse nel piano complesso. Dunque $(1, 0)$ è l'unità di $\mathbb{R}$, quindi anche l'unità in $\mathbb{C}$, ovvero $\forall z \in \mathbb{C} \; (1, 0)z = z$. Per cui
$$
\begin{align}
(1, 0)(1, 0) &= (1, 0) \\
(1, 0)(0, 1) &= (0, 1)
\end{align}
$$
Pongo per definizione
$$
(0, 1)(0, 1) := -(1, 0) = (-1, 0)
$$
Allora, dalla [[#^8a3e5f]]
$$
\begin{align}
(x_{1}, x_{2})(y_{1}, y_{2}) &= x_{1}x_{2}(1, 0) + x_{1}y_{2}(0, 1) + y_{1}x_{2}(0, 1) + y_{1}y_{2}(0, 1)(0, 1) \\
&= x_{1}x_{2}(1, 0) + x_{1}y_{2}(0, 1) + y_{1}x_{2}(0, 1) - y_{1}y_{2}(1, 0) \\
&= (x_{1}x_{2} - y_{1}y_{2})(1, 0) + (x_{1}y_{2} + x_{2}y_{1})(0, 1) \\
&= (x_{1}x_{2} - y_{1}y_{2}, 0) + (0, x_{1}y_{2} + x_{2}y_{1}) \\
&= (x_{1}x_{2} - y_{1}y_{2}, x_{1}y_{2} + x_{2}y_{1})
\end{align}
$$

> [!proposition] $\mathbb{C}$ è un campo
> $\mathbb{R}^2$ con le operazioni sopra indicate è un campo, detto *campo complesso*, e indicato con $\mathbb{C}$. Tale campo non ammette alcuna struttura di campo ordinato.
>
^847e08

Le operazioni di cui sopra sono per costruzione compatibili con quelle usuali sull'asse delle ascisse, cioè su $\mathbb{R}$. Infatti
$$
\begin{align}
(x_{1}, 0) + (x_{2}, 0) &= (x_{1} + x_{2}, 0) \\
(x_{1}, 0)(x_{2}, 0) &= (x_{1}x_{2}, 0)
\end{align}
$$

Per semplificare la notazione, definiamo alcune regole.

> [!definition] Unità immaginaria
> I complessi sull'asse reale nella forma $(x, 0), \; x \in \mathbb{R}$ si indicano con $x$.
> Si definisce inoltre la lettera $i$, detta *unità immaginaria*, tale che
> $$
> i := (0, 1) \in \mathbb{C}
> $$
>
In questo modo i punti sull'asse immaginario (ordinate del piano complesso) del tipo $(0, y), \; y \in \mathbb{R}$ si indicano come segue.
$$
(0, y) = y(0, 1) = iy
$$
Dunque scriviamo il numero complesso $(x, y) \in \mathbb{C}$ in quella che viene detta *forma cartesiana*.

> [!definition] Rappresentazione cartesiana
> I numeri complessi possono essere rappresentati come punti sul piano complesso, dove la *parte reale* individua le ascisse, mentre la *parte immaginaria* le ordinate.
> $$
> z = x + iy \in \mathbb{C}, \; x, y \in \mathbb{R}
> $$
> Parte reale e immaginaria si indicano rispettivamente con
> $$
> \DeclareMathOperator{\Re}{Re}
> \DeclareMathOperator{\Im}{Im}
> \begin{align}
> \Re z &:= x \\
> \Im z &:= y \in \mathbb{R}
> \end{align}
> $$
>
Si noti che per costruzione $ii = i^{2} = -1$. Allora si vede che somme e prodotti si svolgono con le regole usuali dell'algebra. Per $(x_{1}, y_{1}), (x_{2}, y_{2}) \in \mathbb{C}$, come definito per le proprietà di campo,
$$
\begin{align}
(x_{1} + iy_{1}) + (x_{2} + iy_{2}) &= x_{1} + x_{2} + i(y_{1} + y_{2}) \\
(x_{1} + iy_{1})(x_{2} + iy_{2}) &= x_{1}x_{2} + iy_{1}x_{2} + ix_{1}y_{2} - y_{1}y_{2} \\
&= x_{1}x_{2} - y_{1}y_{2} + i(x_{1}y_{2} + x_{2}y_{1})
\end{align}
$$
In particolare l'identità rispetto al prodotto è $1 = (1, 0)$, quella rispetto alla somma è $0 = (0, 0)$.

Nella [[#^847e08]] è sottintesa l'esistenza degli inversi rispetto alla somma e al prodotto. Essi vanno però scritti esplicitamente.

Se $z = (x, y) \in \mathbb{C}$, allora il vettore $(-z) := (-x, -y) \in \mathbb{C}$, così che $z + (-z) = 0$. Questo avviene a livello di somma vettoriale, come già definita.
Con la notazione precedente, se $z_{1} = x_{1} + iy_{1}$ e $z_{2} = x_{2} + iy_{2}$ sono numeri complessi, allora
$$
z_{1} - z_{2} = x_{1} - x_{2} + i(y_{1} - y_{2})
$$
Dal punto di vista geometrico questo coincide con le regole di differenza di vettori.

Per considerare l'inverso rispetto al prodotto iniziamo definendo quanto segue.

> [!definition] Complesso coniugato
> Sia $z = x + iy \in \mathbb{C}$, definisco il *complesso coniugato* di $z$ come
> $$
> \bar{z} := x - iy
> $$
>
Geometricamente, il complesso coniugato di un numero è il suo simmetrico rispetto all'asse delle ascisse sul piano $\mathbb{C}$.

> [!definition] Modulo
> Sia $z = x + iy \in \mathbb{C}$. Sia $|z|$ la distanza di $z$ dall'origine del piano complesso, detta *modulo*. Dal teorema di Pitagora
> $$
> |z| := \sqrt{ x^{2} + y^{2} }
> $$
>
Si noti che $|z| \geq 0 \; \forall z \in \mathbb{C}$ e che $|z| = 0 \iff z = 0$.

Volendo trovare l'inverso di $z$ rispetto al prodotto, si consideri
$$
z\bar{z} = (x + iy)(x - iy) = x^{2} + y^{2} = |z|^{2} \in \mathbb{R}
$$
Ma allora, se $z \ne 0$, segue che
$$
\frac{z\bar{z}}{|z|^{2}} = 1 \implies z\frac{\bar{z}}{|z|^{2}} = 1
$$
Abbiamo dimostrato che, se $z \in \mathbb{C} \setminus \left\{ 0 \right\}$, il numero complesso $\frac{\bar{z}}{|z|^2}$ è l'inverso di $z$ rispetto alla moltiplicazione: è dunque è lo $z^{-1}$ cercato. Ovvero
$$
z^{-1} = \frac{x - iy}{x^{2} + y^{2}}
$$
È quindi possibile definire il rapporto $\frac{z}{w}, \; w \in \mathbb{C} \setminus \left\{ 0 \right\}$ come di consueto, infatti
$$
\frac{z}{w} := zw^{-1}
$$
È possibile svolgere il quoziente ricordando che il prodotto di un complesso per il suo coniugato è il quadrato del modulo. Ad esempio
$$
\begin{align}
\frac{7 - 2i}{-3 + i} &= \frac{(7 - 2i)(-3 - i)}{10} \\
&= \frac{-23 - i}{10}
\end{align}
$$

## 1.9. Proprietà in $\mathbb{C}$

> [!theorem] Coniugato di somma e prodotto
> L'operazione di prendere il coniugato complesso di un numero è distributiva su somma e prodotto. Ovvero, siano $z_{1}, z_{2} \in \mathbb{C}$, allora
> $$
> \begin{align}
> \overline{z_{1} + z_{2}} &= \bar{z_{1}} + \bar{z_{2}} \\
> \overline{z_{1}z_{2}} &= \bar{z_{1}}\bar{z_{2}}
> \end{align}
> $$

> [!quote]- Dimostrazione
> Ricavo le due proprietà sviluppando i calcoli ed esprimendo $z_{1}$ e $z_{2}$ in forma cartesiana come $x_{1} + iy_{1}$ e $x_{2} + iy_{2}$. In questo modo il coniugato della somma diventa
> $$
> \begin{align}
> \overline{z_{1} + z_{2}} &= \overline{x_{1} + x_{2} + i(y_{1} + y_{2})} \\
> &= x_{1} + x_{2} - i(y_{1} + y_{2}) \\
> &= x_{1} - iy_{1} + x_{2} - iy_{2} \\
> &= \bar{z_{1}} + \bar{z_{2}}
> \end{align}
> $$
> Analogamente, per il prodotto
> $$
> \begin{align}
> \overline{z_{1}z_{2}} &= \overline{(x_{1} + iy_{1})(x_{2} + iy_{2})} \\
> &= \overline{x_{1}x_{2} - y_{1}y_{2} + i(x_{1}y_{2} + x_{2}y_{1})} \\
> &= x_{1}x_{2} - y_{1}y_{2} - i(x_{1}y_{2} + x_{2}y_{1}) \\
> &= x_{1}(x_{2} - iy_{2}) - y_{1}(y_{2} + ix_{2}) \\
> &= x_{1}(x_{2} - iy_{2}) + i^{2}y_{1}(y_{2} + ix_{2}) \\
> &= x_{1}(x_{2} - iy_{2}) + iy_{1}(iy_{2} - x_{2}) \\
> &= (x_{1} - iy_{1})(x_{2} - iy_{2}) \\
> &= \bar{z_{1}}\bar{z_{2}}
> \end{align}
> $$
> Ne consegue anche che $\overline{(\frac{z_{1}}{z_{2}})} = \overline{z_{1}z_{2}^{-1}} = \bar{z_{1}}\overline{z_{2}^{-1}} = \frac{\bar{z_{1}}}{\bar{z_{2}}}, z_{2} \ne 0$. $\blacksquare$

> [!theorem] Reali nel piano complesso
> Sia $z \in \mathbb{C}$. La caratterizzazione dei numeri reali sul piano complesso è data dai valori uguali al proprio coniugato complesso. Ovvero
> $$
> z = \bar{z} \iff z \in \mathbb{R} \iff \Im z = 0
> $$

> [!quote]- Dimostrazione
> Impostando l'uguaglianza fra $z = x + iy$ e il suo coniugato
> $$
> z = \bar{z} \iff x + iy = x - iy \iff 2iy = 0 \iff y = \Im z = 0 \iff z \in \mathbb{R}
> $$
> Poiché la parte immaginaria di $z$ è nulla, allora $z$ è reale. $\blacksquare$

> [!theorem] Prodotto con il complesso coniugato
> Sia $z \in \mathbb{C}$, allora il prodotto $z\bar{z}$ è un numero reale positivo, in particolare
> $$
> z\bar{z} = |z|^{2} \in \mathbb{R}^{+} \cup \left\{ 0 \right\}
> $$

> [!quote]- Dimostrazione
> Essendo $z = x + iy \in \mathbb{C}$
> $$
> z\bar{z} = (x + iy)(x - iy) = x^{2} - (iy)^{2} = x^{2} + y^{2} = |z|^{2}
> $$
> Inoltre $|z| \in \mathbb{R}^{+} \cup \left\{ 0 \right\} \; \forall z \in \mathbb{C}$. $\blacksquare$

> [!theorem] Modulo di somma e prodotto
> L'operazione di prendere il modulo di un numero complesso è distributiva sul prodotto, ma non lo è in generale sull'addizione. In particolare, se $z_{1}, z_{2} \in \mathbb{C}$, valgono
> $$
> \begin{align}
> |z_{1}z_{2}| &= |z_{1}||z_{2}| \\
> |z_{1} + z_{2}| &\leq |z_{1}| + |z_{2}|
> \end{align}
> $$

> [!quote]- Dimostrazione
> Considero i complessi $z_{1} = x_{1} + iy_{1}$ e $z_{2} = x_{2} + iy_{2}$.
> $$
> \begin{align}
> |z_{1}z_{2}| &= |(x_{1} + iy_{1})(x_{2} + iy_{2})| \\
> &= |x_{1}x_{2} - y_{1}y_{2} + i(x_{1}y_{2} + y_{1}x_{2})| \\
> &= \sqrt{ (x_{1}x_{2} - y_{1}y_{2})^{2} + (x_{1}y_{2} + y_{1}x_{2})^{2} } \\
> &= \sqrt{ x_{1}^{2}x_{2}^{2} + y_{1}^{2}y_{2}^{2} - 2x_{1}x_{2}y_{1}y_{2} + x_{1}^{2}y_{2}^{2} + y_{1}^{2}x_{2}^{2} + 2x_{1}x_{2}y_{1}y_{2} } \\
> &= \sqrt{ x_{1}^{2}(x_{2}^{2} + y_{2}^{2}) + y_{1}^{2}(x_{2}^{2} + y_{2}^{2}) } \\
> &= \sqrt{ x_{1}^{2} + y_{1}^{2} }\sqrt{ x_{2}^{2} + y_{2}^{2} } \\
> &= |z_{1}||z_{2}|
> \end{align}
> $$
> È evidente che la stessa proprietà si applica anche al rapporto $\frac{z_{1}}{z_{2}}$, essendo $z_{2}^{-1}$ un complesso a propria volta.
> Rispetto alla somma ragioniamo geometricamente. La disuguaglianza può essere facilmente intuita considerando $z_{1}$ e $z_{2}$ come vettori nel piano. Secondo la regola del parallelogramma, il vettore somma di modulo maggiore, a parità di modulo degli addendi, si ottiene quando essi hanno stesso modulo e direzione; in tal caso il complesso risultante avrebbe modulo $|z_{1} + z_{2}| = |z_{1}| + |z_{2}|$ (sommando la misura dei segmenti sul piano).
> Ne si deduce che, presi due complessi i cui vettori hanno versi e direzioni generiche, deve valere
> $$
> |z_{1} + z_{2}| \leq |z_{1}| + |z_{2}|
> $$
> L'uguaglianza si ha quando $\frac{y_{1}}{x_{1}} = \frac{y_{2}}{x_{2}}$. $\blacksquare$
>
## 1.10. Rappresentazione trigonometrica di $\mathbb{C}$

> [!definition] Rappresentazione trigonometrica
> Disegnando la congiungente dall'origine degli assi (del piano complesso) fino a $z \in \mathbb{C}$, individuando l'angolo $\theta$ con l'asse delle ascisse, il segmento sarà lungo $|z|$. Se $z = x + iy \ne 0$ vale
> $$
> z = x + iy = |z|(\cos\theta + i\sin\theta) = \rho(\cos\theta + i\sin\theta) \in \mathbb{C}
> $$
> Dove $\rho := |z| = \sqrt{ x^{2} + y^{2} } \geq 0$. Inoltre $\rho = 0 \iff z = 0$. $\rho$ è il modulo di $z$ mentre $\theta$ viene detto *argomento* di $z$. In particolare
> $$
> \arg{z} := \theta
> $$
> Per convenzione si sceglie $\theta \in [0, 2\pi)$.
>
L'argomento di un complesso, se preso come sopra definito in $[0, 2\pi)$, è univocamente determinato. Questo non è tuttavia vero in $\mathbb{R}$. Sia $z$ un complesso con $\arg{z} = \theta \in [0, 2\pi)$. I numeri con argomento nella forma $\theta + 2k\pi, \; k \in \mathbb{Z}$ vengono detti *fasi* di $z$ e sono infiniti. Ad esempio
$$
-1 + i\sqrt{ 3 } = \sqrt{ 1 + 3 }(-\frac{1}{2} + i\frac{\sqrt{ 3 }}{2}) = 2(\cos{\frac{2}{3}\pi} + i\sin{\frac{2}{3}\pi}) = 2(\cos{\frac{8}{3}\pi} + i\sin{\frac{8}{3}\pi}) = \dots
$$
Si noti che passando dalla forma trigonometrica a quella cartesiana, il modulo si individua a meno di un segno. È possibile aggiungere $\pi$ all'argomento normalizzando la rappresentazione trigonometrica.

> [!theorem] Equazione di De Moivre per il prodotto
> Siano $z_{1}, z_{2} \in \mathbb{C}$ numeri complessi di modulo $\rho_{1}$ e $\rho_{2}$, con argomento $\theta_{1}$ e $\theta_{2}$. Vale
> $$
> z_{1}z_{2} = \rho_{1}\rho_{2}[\cos(\theta_{1} + \theta_{2}) + i\sin(\theta_{1} + \theta_{2})]
> $$

> [!quote]- Dimostrazione
> Considero il prodotto tra $z_{1}$ e $z_{2}$ in forma trigonometrica.
> $$
> \begin{align}
> z_{1}z_{2} &= \rho_{1}\rho_{2}(\cos\theta_{1} + i\sin\theta_{1})(\cos\theta_{2} + i\sin\theta_{2}) \\
> &= \rho_{1}\rho_{2}[\cos\theta_{1}\cos\theta_{2} - \sin\theta_{1}\sin\theta_{2} + i(\sin\theta_{1}\cos\theta_{2} + \cos\theta_{1}\sin\theta_{2})] \\
> &= \rho_{1}\rho_{2}[\cos(\theta_{1} + \theta_{2}) + i\sin(\theta_{1} + \theta_{2})]
> \end{align}
> $$
> Riordinando i termini si ottiene la relazione di De Moivre. $\blacksquare$
>
Dalla relazione precedente risulta evidente che il modulo del prodotto è pari al prodotto dei moduli: $|z_{1}z_{2}| = |z_{1}||z_{2}|$. Inoltre $\theta_{1}\theta_{2}$ è una fase di $z_{1}z_{2}$.
La forma trigonometrica dei numeri complessi offre anche un'interpretazione geometrica intuitiva del prodotto in $\mathbb{C}$. $z_{1}z_{2}$ sarà individuato sul piano complesso a una distanza $\rho_{1}\rho_{2}$ dall'origine con un angolo $\theta_{1} + \theta_{2}$ in rotazione antioraria rispetto all'orizzontale.

L'unico caso in cui un complesso può essere nullo è se il modulo è nullo, infatti $|\cos\theta + i\sin\theta| = 1 \; \forall \theta \in \mathbb{R}$.
Geometricamente, il rapporto tra $z_{1}, z_{2} \in \mathbb{C}$ può essere interpretato analogamente al prodotto: si tratta del punto a distanza $\frac{\rho_{1}}{\rho_{2}}$ dall'origine che forma un angolo $\theta_{1} - \theta_{2}$ in rotazione antioraria con l'orizzontale.

> [!theorem] Equazione di De Moivre per il rapporto
> Siano $z_{1}$ e $z_{2}$ $\in \mathbb{C}$ numeri complessi di modulo $\rho_{1}$ e $\rho_{2}$, con argomento $\theta_{1}$ e $\theta_{2}$. Se $z_{2} \neq 0$, vale 
> $$
> \frac{z_{1}}{z_{2}} = \frac{\rho_{1}}{\rho_{2}}[\cos(\theta_{1}-\theta_{2}) + i\sin(\theta_{1}-\theta_{2})]
> $$

> [!quote]- Dimostrazione
> Considero il rapporto di $z_{1}$ e $z_{2}$ in forma trigonometrica.
> $$
> \frac{z_{1}}{z_{2}} = \frac{\rho_{1}[\cos\theta_{1} + i\sin\theta_{1}]}{\rho_{2}[\cos\theta_{2} + i\sin\theta_{2}]}
> $$
> Si noti che il denominatore non è nullo siccome $\rho_{2} > 0$ per ipotesi, mentre il numero complesso $\cos \theta_{2} + i\sin \theta_{2}$ non è nullo perché avente modulo $\sqrt{\cos^2\theta_{2} + \sin^2 \theta_{2}} = 1$. 
> Siccome $1$ è l'elemento neutro del prodotto, moltiplico il lato destro dell'equazione per
> $$
> 1 = \frac{\cos \theta_{2} - i\sin \theta_{2}}{\cos \theta_{2} - i\sin \theta_{2}}
> $$
> In questo modo ottengo
> $$
> \begin{align}
> \frac{z_{1}}{z_{2}} &= \frac{\rho_{1}(\cos\theta_{1} + i \sin\theta_{1})}{\rho_{2}(\cos\theta_{2} + i\sin\theta_{2})} \frac{(\cos\theta_{2} - i\sin \theta_{2})}{(\cos\theta_{2} - i\sin\theta_{2})} \\
> &= \frac{\rho_{1}}{\rho_{2}}(\cos\theta_{1} + i\sin\theta_{1})(\cos\theta_{2} - i\sin\theta_{2}) \\
> &= \frac{\rho_{1}}{\rho_{2}}[\cos\theta_{1}\cos\theta_{2} + \sin\theta_{1}\sin\theta_{2} + i(\sin\theta_{1}\cos\theta_{2} - \cos\theta_{1}\sin\theta_{2})] \\
> &= \frac{\rho_{1}}{\rho_{2}}[\cos(\theta_{1} - \theta_{2}) + i\sin(\theta_{1} - \theta_{2})]
> \end{align}
> $$
> Il complesso risultante dal rapporto si ottiene tramite una rotazione in senso antiorario partendo dall'argomento di $z_{1}$ e avrà modulo pari al rapporto dei moduli degli operandi. $\blacksquare$

> [!theorem] Equazione di De Moivre per la potenza naturale
> Sia $z = \rho(\cos\theta + i \sin\theta) \in \mathbb{C}$ un numero complesso di argomento $\theta$ e modulo $\rho$. Se $n \in \mathbb{N}$, allora vale
> $$
> z^n = \rho^n[\cos(n\theta) + i \sin (n\theta)]
> $$

> [!theorem] Teorema fondamentale dell'algebra
> Sia $p_{n}(z) = a_{0}+ a_{1}z + a_{2}z^2 + \dots + a_{n}z^n$ un polinomio di grado $n$-esimo nella variabile complessa $z \in \mathbb{C}$ con i coefficienti $a_{0}, a_{1}, a_{2}, \dots , a_{n} \in \mathbb{C}, \; a_{n} \neq 0$.
> Allora, $p_{n}$ ha esattamente *n* zeri complessi, se contati nella loro rispettiva molteplicità. In altri termini, 
> $$
> \exists z_{1}, z_{2}, \dots, z_{n} \in \mathbb{C}: p_{n}(z) = a_{n}(z-z_{1})(z-z_{2})\dots(z-z_{n}), \forall z\in \mathbb{C}
> $$
>
^ef39ab

Analizziamo un caso particolare di questo teorema. Si fissi $w \in \mathbb{C}$ e sia $p_{n}$ un polinomio di grado $n$ in $z \in \mathbb{C}$ tale che
$$
p_{n}(z)=z^n-w
$$
Per il [[#^ef39ab]] questo polinomio ha esattamente $n$ radici complesse (contate nella loro molteplicità). Ne si deduce che esistono esattamente $n$ radici $n$-esime di un numero in $w \in \mathbb{C}$.

Volendo determinare le radici di $p_{n}$, assumo inizialmente $w = 1 = 1(\cos0 + i\sin0)$. Allora, se $z^n = \rho^n[\cos(n\theta) + i\sin(n\theta)]$, vale
$$
\rho^n[\cos(n\theta) + i\sin(n\theta)] = 1(\cos0 + i\sin0)
$$
Di conseguenza, ricordando che $\rho \in \mathbb{R}^+$,
$$
\begin{cases}
\rho^n = 1 \\
n\theta = 0 + 2k\pi, \; k \in \mathbb{Z}
\end{cases}
\implies
\begin{cases}
\rho = 1 \\
\theta = \frac{2k}{n}\pi
\end{cases}
$$
L'equazione precedente restituisce, al variare di $k$, le $n$ radici $n$-esime dell'unità. Ad esempio, considerando unicamente unicamente il caso $n = 6$, otterremo sei radici distinte:
$$
\begin{cases}
\rho = 1 \\
\theta = \frac{1}{3}k\pi, \; k \in \mathbb{Z}
\end{cases}
\implies 
\begin{cases}
\rho = 1  \\
\theta = 0 \lor \theta = \frac{\pi}{3} \lor \theta = \frac{2}{3} \pi \lor \theta = \pi \lor \theta = \frac{4}{3}
\pi \lor \theta = \frac{5}{3} \pi \\
\end{cases}
$$
Sul piano complesso le radici coincidono con i vertici di un esagono regolare inscritto nella circonferenza goniometrica, uno di essi è l'unità reale. Una procedura equivalente vale $\forall n \in \mathbb{N}$. 

Se invece consideriamo le radici $n$-esime di un numero complesso fissato $w \in \mathbb{C} = \sigma(\cos\varphi + i\sin\varphi)$, con $\sigma >0, \; \varphi \in \mathbb{R}$, allora
$$
\begin{align}
&z^{n} = w \\
&\implies \rho^n[\cos(n\theta) + i\sin(n\theta)] = \sigma(\cos\varphi + i\sin\varphi) \\
\end{align}
$$
In analogia al caso $w = 1$ segue
$$
\begin{cases}
\rho^n = \sigma \\
n\theta = \varphi + 2k\pi, \; k \in \mathbb{Z}
\end{cases} \\
\implies
\begin{cases}
\rho = \sqrt[n]{\sigma} \\
\theta = \frac{\varphi}{n} + \frac{2k\pi}{n}, \; k \in \mathbb{Z}
\end{cases}
$$

Si noti che il teorema fondamentale dell'algebra non si applica in generale a polinomi nella forma indicata. In particolare non si applica necessariamente a funzioni nelle quali compaiono operazioni come $\bar{z}$, $|z|$, $\Re z$ o $\Im z$.
Ad esempio, nell'equazione $z^2 = \overline{z}$, con $z^2 = \rho^2[\cos(2\theta)+i\sin (2\theta)]$ e $\overline{z}=\rho[\cos(-\theta)+i\sin(-\theta)]$, si ha che
$$
\begin{cases}
\rho^2 = \rho \\
2\theta = -\theta + 2k\pi, k \in \mathbb{Z}
\end{cases}
\implies
\begin{cases}
\rho = 0 \lor \rho = 1 \\
\theta = 0  \lor \theta = \frac{2}{3}\pi \lor \theta = \frac{4}{3}\pi
\end{cases}
$$
Esistono quattro soluzioni possibili all'equazione. Questo è chiaramente in conflitto con la tesi del teorema fondamentale dell'algebra, essendo le ipotesi non rispettate.

## 1.11. Rappresentazione esponenziale di $\mathbb{C}$

Assumiamo, come notazione, la seguente relazione. È possibile dimostrare che essa è un'identità per ogni $\theta \in [0, 2\pi)$. Questa relazione è nota come *formula di Eulero*. In particolare ne è una diretta conseguenza l'interessante identità $e^{i\pi} + 1 = 0$.
$$
e^{i\theta} := \cos\theta + i\sin\theta
$$

> [!definition] Rappresentazione esponenziale
> Sia $z = \rho(\cos\theta + i\sin\theta) \in \mathbb{C}$ un numero complesso di modulo $\rho$ e argomento $\theta$. Ne consegue che
> $$
> z = \rho e^{i\theta} \in \mathbb{C}
> $$
> Questa notazione è detta *forma esponenziale* di un numero complesso.

> [!theorem] Prodotto e quoziente in forma esponenziale
> Sia $z = \rho e^{i\theta} \in \mathbb{C}$ un numero complesso di modulo $\rho$ e fase $\theta$, e $w = \sigma e^{i\varphi} \in \mathbb{C}$ un numero complesso di modulo $\sigma$ e fase $\varphi$. Per le leggi di De Moivre, valgono le seguenti formule:
> $$
> \begin{align}
> zw &= \rho \sigma e^{i(\theta + \varphi)} \\
> \frac{z}{w} &= \frac{\rho}{\sigma}e^{i(\theta - \varphi)}
> \end{align}
> $$
> Le leggi di De Moivre per i complessi in forma esponenziale possono quindi essere assimilate alle proprietà delle potenze.

> [!definition] Esponenziale complesso
> Sia $z = x + iy \in \mathbb{C}$. L'espressione seguente viene detta *esponenziale complesso*.
> $$
> e^z := e^xe^{ iy }
> $$
> In particolare $|e^z| = e^x > 0$, mentre $e^y = \cos y + i\sin y$, dunque $y$ è una fase di $e^z$.
>
 $z = 0 \iff x = 0$. Inoltre, $z = x \implies e^z = e^x$, siccome $\cos0+i\sin 0=0$. È possibile dimostrare che $e^z$ è l'unica funzione definita su $\mathbb{C}$ che sia "derivabile in senso complesso" con tali proprietà.

> [!definition] Logaritmo complesso
> Sia $w \in \mathbb{C}$ fissato. Allora, se $z \in \mathbb{C}$, esistono infinite soluzioni all'equazione $e^z = w$. Esse sono nella forma
> $$
> z_{k} := \log\rho + i(\theta+2k\pi), \; k \in \mathbb{Z}
> $$
> In particolare $\log\rho$ è il logaritmo naturale di $\rho$ (funzione nei reali).
> Ogni $z$ è detto *logaritmo complesso* in base $e$ di $w$.

> [!quote]- Dimostrazione
> Scriviamo $w$ in forma esponenziale e $z$ in forma cartesiana
> $$
> \begin{align}
> w &= \rho e^{i\theta}, \; \theta \in \mathbb{R} \\
> z &= x + iy
> \end{align}
> $$
> Ne risultano le seguente relazioni.
> $$
> \begin{align}
> &e^z = w \\
> &\implies e^{x + iy} = \rho e^{i\theta} \\
> &\implies e^x e^{iy} = \rho e^{i\theta} \\
> &\implies
> \begin{cases}
> e^x = \rho \\
> y = \theta + 2k\pi, \; k \in \mathbb{Z}
> \end{cases} \\
> &\implies
> \begin{cases}
> x = \log p \\
> y = \theta + 2k\pi, \; k \in \mathbb{Z}
> \end{cases} \\
> &\implies z_{k} := \log\rho + i(\theta + 2k\pi), \; k \in \mathbb{Z}
> \end{align}
> $$
> Al variare di $k$, il logaritmo complesso assume infiniti valori. $\blacksquare$

> [!definition] Logaritmo principale
> Sia $z = \rho e ^{i\theta} \in \mathbb{C}, \; z \ne 0$. Se $\theta \in (-\pi, \pi]$, allora si definisce *logaritmo complesso principale* di $z$
> $$
> \DeclareMathOperator{\Log}{Log}
> \Log z := \log_{p}z := \log\rho + i\theta
> $$

> [!definition] Potenza complessa di un numero complesso
> Siano $z, a \in \mathbb{C}, \; z \ne 0$. Allora le infinite potenze di $z$ elevato alla $a$ sono della forma
> $$
> e^{a\log z}
> $$
> Viene invece detta *potenza principale* di $z$ elevato alla $a$
>$$
>z^a := e^{aLog(z)}
>$$
>
