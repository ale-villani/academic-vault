---
title: "Teoria degli Insiemi, Relazioni e Costruzione dei Numeri Naturali"
domain: "math/set-theory"
source_course: "Analisi 1 (Cap. 0)"
tags:
  - math/set-theory
  - math/foundations
  - math/relations
  - math/functions
  - math/von-neumann-ordinals
---
## 0.1. Concetti Primitivi, Notazione e Sottoinsiemi

Nella formulazione fondazionale, i concetti di **insieme** (collezione di oggetti), **elemento** (membro della collezione) e **appartenenza** vengono assunti come nozioni primitive non riducibili.

> [!definition] Notazione Fondamentale
> - **Insiemi**: denotati convenzionalmente con lettere latine maiuscole ($A, B, C, X, Y, S, \dots$).
> - **Elementi**: denotati con lettere latine minuscole ($a, b, c, x, y, \dots$).
> - **Rappresentazione estensiva (per tabulazione)**: elenco esplicito degli elementi racchiusi tra parentesi graffe:
>   $$A = \{0, 1, 2, \dots\}$$
> - **Insieme Singoletto**: insieme costituito da un unico elemento $a$, indicato con $\{a\}$.
> - **Insieme Vuoto**: insieme totalmente privo di elementi, denotato con il simbolo $\emptyset$ oppure $\{\}$.

### Relazioni Primitive e Uguaglianza

> [!definition] Appartenenza e Uguaglianza tra Elementi
> 1. **Relazione di Appartenenza**: $a \in A$ indica che l'elemento $a$ appartiene all'insieme $A$. La negazione è indicata con $a \notin A$.
> 2. **Uguaglianza tra Elementi ($a = b$)**: retta dal **Principio di Indiscernibilità degli Identici (Principio di Sostituibilità)**:
>    $$\forall x, \forall y : (x = y) \implies (P(x) \iff P(y))$$
>    Se due elementi sono identici, essi sono mutuamente interscambiabili all'interno di qualsiasi predicato $P$.
> 3. **Uguaglianza per Definizione**: indicata con la notazione $x := \text{espressione}$ (ad esempio $x := \frac{3}{2}\pi$).

### Uguaglianza tra Insiemi e Inclusione (Sottoinsiemi)

> [!theorem] Assioma di Estensionalità (Uguaglianza tra Insiemi)
> Due insiemi $A$ e $B$ sono **uguali** ($A = B$) se e solo se contengono gli stessi identici elementi:
> $$A = B \iff \forall x : (x \in A \iff x \in B)$$

> [!definition] Inclusione Debole (Sottoinsieme)
> Si dice che l'insieme $B$ è un **sottoinsieme** (o è contenuto in) $A$, indicato con $B \subseteq A$, se ogni elemento appartenente a $B$ appartiene necessariamente anche ad $A$:
> $$B \subseteq A \iff \forall x : (x \in B \implies x \in A)$$

> [!proposition] Proprietà Strutturali dell'Inclusione
> 1. **Inclusione dell'Insieme Vuoto**: Per qualunque insieme $A$, l'insieme vuoto è sottoinsieme di $A$:
>    $$\forall A, \quad \emptyset \subseteq A$$
>    *(Dimostrazione per vacuità: l'implicazione $x \in \emptyset \implies x \in A$ è sempre vera poiché la premessa $x \in \emptyset$ è falsa per ogni $x$)*.
> 2. **Riflessività**: $\forall A, \, A \subseteq A$.
> 3. **Antisimmetria**: $A \subseteq B \land B \subseteq A \implies A = B$ *(principio della doppia inclusione)*.
> 4. **Transitività**: $A \subseteq B \land B \subseteq C \implies A \subseteq C$.

> [!definition] Inclusione Stretta (Sottoinsieme Proprio)
> L'insieme $B$ è un **sottoinsieme proprio** di $A$, denotato con $B \subsetneq A$ (oppure $B \subset A$), se $B$ è contenuto in $A$, è non vuoto e non coincide con $A$:
> $$B \subsetneq A \iff (B \subseteq A \land B \ne \emptyset \land B \ne A)$$
## 0.2. Operazioni Fondamentali tra Insiemi

Siano $A$ e $B$ due sottoinsiemi di un generico universo. Si definiscono le seguenti operazioni booleane:

```
  UNIONE (A ∪ B)       INTERSEZIONE (A ∩ B)     DIFFERENZA (A \ B)
  ┌───────┬───────┐      ┌───────┬───────┐      ┌───────┬───────┐
  │███████│███████│      │       │█████  │      │██████ │       │
  │██ A ██│██ B ██│      │   A   │█ A∩B █│      │  A\B  │   B   │
  │███████│███████│      │       │█████  │      │██████ │       │
  └───────┴───────┘      └───────┴───────┘      └───────┴───────┘
```

> [!definition] Operazioni Insiemistiche Elementari
> 1. **Unione**: L'insieme degli elementi che appartengono ad $A$, a $B$ o a entrambi:
>    $$A \cup B := \{x \mid x \in A \lor x \in B\}$$
> 2. **Intersezione**: L'insieme degli elementi comuni sia ad $A$ sia a $B$:
>    $$A \cap B := \{x \mid x \in A \land x \in B\}$$
>    Se $A \cap B = \emptyset$, gli insiemi $A$ e $B$ si definiscono **disgiunti**.
> 3. **Differenza Insiemistica**: L'insieme degli elementi che appartengono ad $A$ ma non appartengono a $B$:
>    $$A \setminus B := \{x \mid x \in A \land x \notin B\}$$
> 4. **Differenza Simmetrica**: L'insieme degli elementi che appartengono ad $A$ o a $B$, ma non a entrambi:
>    $$A \mathbin{\Delta} B := (A \setminus B) \cup (B \setminus A) = (A \cup B) \setminus (A \cap B)$$

### Insieme Ambiente (Universo) e Complementazione

> [!definition] Insieme Universo e Insieme delle Parti (Power Set)
> Fissato un **insieme ambiente** (o universo del discorso) $U$, tale che tutti gli insiemi considerati siano suoi sottoinsiemi ($A \subseteq U$):
> 
> Si definisce **Insieme delle Parti** (o Power Set) di $U$, denotato con $\mathcal{P}(U)$ (oppure $2^U$), l'insieme di tutti i possibili sottoinsiemi (propri e impropri) di $U$:
> $$\mathcal{P}(U) := \{S \mid S \subseteq U\}$$
> 
> *Esempio:* Se $U = \{a, b\}$, l'insieme delle parti contiene esattamente $2^2 = 4$ elementi:
> $$\mathcal{P}(U) = \{\emptyset, \{a\}, \{b\}, \{a, b\}\}$$

> [!definition] Complementare Relativo
> Se $A \in \mathcal{P}(U)$ (ovvero $A \subseteq U$), il **complementare** di $A$ rispetto a $U$, denotato con $\mathcal{C}_U(A)$ (oppure $A^c$ o $\complement A$), è definito dalla differenza insiemistica:
> $$\mathcal{C}_U(A) := U \setminus A = \{x \in U \mid x \notin A\}$$

## 0.3. Antinomia di Russell e Limiti della Teoria Ingenua

> [!caution] Il Paradosso di Bertrand Russell
> Nella teoria ingenua degli insiemi (sviluppata inizialmente da Georg Cantor), si assumeva implicitamente il **Principio di Comprensione Illimitato**: data una qualsiasi proprietà o predicato $P(x)$, è sempre possibile definire l'insieme di tutti gli oggetti che soddisfano tale proprietà:
> $$I = \{x \mid P(x)\}$$
> 
> Nel 1901, Bertrand Russell dimostrò che tale assunzione conduce a una contraddizione catastrofica. Consideriamo la proprietà di un insieme di **non appartenere a se stesso** come elemento ($x \notin x$), e definiamo l'insieme di tutti gli insiemi che godono di tale proprietà:
> $$I := \{x \mid x \text{ è un insieme } \land x \notin x\}$$
> 
> Domandiamoci se $I$ appartenga o meno a se stesso ($I \in I$?):
> - Se $I \in I$, allora per definizione di $I$ deve soddisfare la proprietà, quindi $I \notin I$ (Assurdo).
> - Se $I \notin I$, allora $I$ soddisfa la condizione di appartenenza, quindi $I \in I$ (Assurdo).
> 
> Si giunge all'antinomia insolubile:
> $$I \in I \iff I \notin I$$
> 
> **Conclusione Fondazionale**: L'oggetto $I$ **non è un insieme**. Non è lecito considerare una totalità assoluta come l'"insieme di tutti gli insiemi". Per preservare la coerenza logica della matematica è stato necessario riformulare la teoria su basi assiomatiche rigide (**Assiomatica di Zermelo-Fraenkel con Assioma di Scelta - ZFC**), sostituendo la comprensione illimitata con l'**Assioma di Separazione**, in cui la selezione degli elementi avviene sempre ed esclusivamente all'interno di un insieme preesistente.
## 0.4. Prodotto Cartesiano e Relazioni Binarie

### Prodotto Cartesiano

> [!definition] Coppia Ordinata e Prodotto Cartesiano
> Si definisce **coppia ordinata** $(a, b)$ una struttura relazionale in cui l'ordine degli elementi è vincolante:
> $$(a, b) = (c, d) \iff (a = c \land b = d)$$
> In particolare, se $a \ne b$, allora $(a, b) \ne (b, a)$.
> 
> Dati due insiemi non vuoti $A$ e $B$, il loro **prodotto cartesiano** $A \times B$ è l'insieme di tutte le coppie ordinate aventi come primo elemento un membro di $A$ e come secondo elemento un membro di $B$:
> $$A \times B := \{(a, b) \mid a \in A \land b \in B\}$$
> 
> Il prodotto cartesiano **non gode della proprietà commutativa**:
> $$A \times B \ne B \times A \quad (\text{se } A \ne B \text{ e } A, B \ne \emptyset)$$
### Relazioni Binarie e Grafico

> [!definition] Relazione tra Insiemi
> Siano $X$ e $Y$ due insiemi. Una **relazione binaria** (o corrispondenza) tra $X$ e $Y$ è formalmente specificata da un predicato binario $r(x, y)$ con variabili libere $x \in X$ e $y \in Y$.
> - Se l'enunciato $r(x, y)$ è vero, si dice che $x$ è in relazione con $y$ e si scrive $x \mathrel{r} y$.
> - Se $X = Y$, la relazione si definisce **relazione binaria interna** sull'insieme $X$.

> [!definition] Grafico di una Relazione
> Il **grafico** della relazione $r$, denotato con $R$ oppure $\mathrm{graf}(r)$, è il sottoinsieme del prodotto cartesiano $X \times Y$ costituito da tutte e sole le coppie ordinate che soddisfano la relazione:
> $$R := \{(x, y) \in X \times Y \mid r(x, y) \text{ è vera}\}$$
> 
> Dal punto di vista della teoria assiomatica, una relazione binaria si identifica esaustivamente con il suo grafico $R \subseteq X \times Y$.
## 0.5. Relazioni di Equivalenza e Insieme Quoziente

> [!definition] Relazione di Equivalenza
> Una relazione binaria interna $\sim$ su un insieme $X$ è detta **relazione di equivalenza** se soddisfa simultaneamente tre proprietà assiomatiche:
> 1. **Riflessività**: $\forall x \in X, \quad x \sim x$
> 2. **Simmetria**: $\forall x, y \in X, \quad x \sim y \implies y \sim x$
> 3. **Transitività**: $\forall x, y, z \in X, \quad (x \sim y \land y \sim z) \implies x \sim z$

Le relazioni di equivalenza permettono di "classificare" e raggruppare gli elementi di un insieme in base a una caratteristica o proprietà invariante comune.

> [!definition] Classe di Equivalenza
> Dato $x \in X$, si definisce **classe di equivalenza** generata da $x$, denotata con $[x]$ oppure $\bar{x}$, il sottoinsieme di $X$ contenente tutti e soli gli elementi equivalenti a $x$:
> $$[x] := \{y \in X \mid x \sim y\}$$
> L'elemento $x$ è detto *rappresentante* della classe $[x]$.

> [!theorem] Teorema Fondamentale delle Relazioni di Equivalenza
> Le classi di equivalenza indotte da $\sim$ su $X$ godono delle seguenti proprietà:
> 1. Ogni classe è non vuota: $\forall x \in X, \, x \in [x]$.
> 2. Due classi o coincidono o sono completamente disgiunte:
>    $$[x] \cap [y] \ne \emptyset \iff [x] = [y] \iff x \sim y$$
> 3. L'unione di tutte le classi ricopre l'intero insieme: $\bigcup_{x \in X} [x] = X$.
> 
> Di conseguenza, le classi di equivalenza formano una **partizione** di $X$.

^91d63b

> [!definition] Insieme Quoziente
> Si definisce **insieme quoziente** di $X$ rispetto alla relazione $\sim$, denotato con $X / \sim$, la famiglia di tutte le distinte classi di equivalenza:
> $$X / \sim \;:= \{[x] \mid x \in X\}$$
## 0.6. Funzioni e Applicazioni

> [!definition] Funzione (Applicazione)
> Siano $X$ e $Y$ due insiemi. Una **funzione** $f : X \to Y$ è una relazione binaria tra $X$ e $Y$ che associa a **ogni** elemento di $X$ **uno ed un solo** elemento di $Y$:
> $$\forall x \in X, \quad \exists! y \in Y \mid (x, y) \in \mathrm{graf}(f)$$
> 
> Tale elemento unico $y$ viene denotato con la notazione analitica:
> $$y = f(x)$$
> ed è chiamato **immagine** di $x$ tramite la funzione $f$.

```
     Dominio X                 Codominio Y
  ┌───────────────┐         ┌───────────────┐
  │     • x₁──────┼─────────┼──────> • y₁   │
  │               │    f    │               │
  │     • x₂──────┼─────────┼──────> • y₂   │
  │               │         │        • y₃   │  <── non coperto da im(f)
  │     • x₃──────┼─────────┼──────> • y₄   │
  └───────────────┘         └───────────────┘
```

> [!definition] Dominio, Codominio e Immagine
> Data una funzione $f : X \to Y$:
> - $X$ costituisce il **dominio** (o insieme di partenza): $X = \mathrm{dom}(f)$.
> - $Y$ costituisce il **codominio** (o insieme di arrivo): $Y = \mathrm{cod}(f)$.
> - L'**insieme immagine** (o rango) di $f$, denotato con $\mathrm{im}(f)$ o $f(X)$, è il sottoinsieme del codominio costituito da tutte le immagini effettive degli elementi del dominio:
>   $$\mathrm{im}(f) := \{y \in Y \mid \exists x \in X : f(x) = y\}$$
### Uguaglianza tra Funzioni

> [!important] Criterio di Coincidenza Funzionale
> Due funzioni $f$ e $g$ sono rigorosamente **uguali** ($f = g$) se e solo se:
> 1. Condividono lo stesso dominio: $\mathrm{dom}(f) = \mathrm{dom}(g)$.
> 2. Condividono lo stesso codominio: $\mathrm{cod}(f) = \mathrm{cod}(g)$.
> 3. Condividono la medesima legge di assegnazione: $\forall x \in \mathrm{dom}(f), \, f(x) = g(x)$.
> 
> *Nota operativa sul grafico:* Dal punto di vista relazionale, due funzioni con la stessa legge e lo stesso dominio generano lo stesso identico grafico $\mathrm{graf}(f) = \mathrm{graf}(g) \subseteq X \times Y$.
> 
> *Esempio:*
> Consideriamo $f : \mathbb{R} \to \mathbb{R}$ con $f(x) = x^2$ e $g : \mathbb{R} \to \mathbb{R}_+ \cup \{0\}$ con $g(x) = x^2$. Esse possiedono lo stesso identico grafico cartesiano ma codomini formali differenti. Nella prassi operativa dell'analisi, quando il focus è puramente sulla corrispondenza numerica, le due mappe vengono spesso identificate per comodità, pur restando formalmente distinte sotto il profilo categoriale della suriettività.

## 0.7. Classificazione delle Funzioni: Iniettività, Suriettività, Biettività

Sia data la funzione generica $f : X \to Y$.

```
   INIETTIVA               SURIETTIVA              BIETTIVA (BIUNIVOCA)
  (x₁≠x₂ ⟹ f(x₁)≠f(x₂))    (im(f) = Y)             (Iniettiva + Suriettiva)
   X          Y            X          Y            X          Y
  ┌───┐      ┌───┐        ┌───┐      ┌───┐        ┌───┐      ┌───┐
  │•──┼──────┼─>•│        │•──┼──────┼─>•│        │•──┼──────┼─>•│
  │•──┼──────┼─>•│        │•──┼───┐  │   │        │•──┼──────┼─>•│
  │   │      │  •│        │•──┼───┴──┼─>•│        │•──┼──────┼─>•│
  └───┘      └───┘        └───┘      └───┘        └───┘      └───┘
```

> [!definition] Funzione Iniettiva
> La funzione $f$ è **iniettiva** se elementi distinti del dominio hanno immagini distinte nel codominio:
> $$\forall x_1, x_2 \in X, \quad f(x_1) = f(x_2) \implies x_1 = x_2$$
> *(o equivalentemente in forma contronominale: $x_1 \ne x_2 \implies f(x_1) \ne f(x_2)$)*.
> Geometricamente: ogni retta orizzontale $y = c$ interseca il grafico della funzione in **al più un punto**.

> [!definition] Funzione Suriettiva
> La funzione $f$ è **suriettiva** se ogni elemento del codominio è immagine di almeno un elemento del dominio:
> $$\forall y \in Y, \quad \exists x \in X \mid f(x) = y \iff \mathrm{im}(f) = Y$$
> Geometricamente: ogni retta orizzontale $y = c$ interseca il grafico in **almeno un punto**.

> [!definition] Funzione Biettiva (Biunivoca o Invertibile)
> La funzione $f$ è **biettiva** (o biunivoca) se è **contemporaneamente iniettiva e suriettiva**:
> $$\forall y \in Y, \quad \exists! x \in X \mid f(x) = y$$
> Geometricamente: ogni retta orizzontale interseca il grafico in **uno ed un solo punto**.
> 
> Due insiemi $X$ e $Y$ si dicono in **corrispondenza biunivoca** se esiste una mappa biettiva $f : X \to Y$.

> [!tip] Ristrizione Locale per Iniettività e Suriettività
> Funzioni che non risultano globalmente iniettive o suriettive su tutto il loro dominio naturale possono diventarlo restringendo opportunamente il dominio o il codominio:
> - Riducendo il codominio all'immagine ($Y' = \mathrm{im}(f)$), qualunque funzione diventa suriettiva.
> - Riducendo il dominio a un intervallo di stretta monotonia, funzioni non iniettive (come $f(x) = x^2$ su $[0, +\infty)$ o $f(x) = \sin(x)$ su $[-\frac{\pi}{2}, \frac{\pi}{2}]$) divengono iniettive e quindi localmente invertibili.
## 0.8. Operazioni su Funzioni: Restrizione, Composizione e Inversa

### Funzioni Particolari

> [!definition] Funzione Identità, Restrizione e Proiezione
> 1. **Funzione Identità**: La mappa $\mathrm{id}_X : X \to X$ che associa ciascun elemento a se stesso:
>    $$\mathrm{id}_X(x) = x, \quad \forall x \in X$$
> 2. **Restrizione**: Dato un sottoinsieme $Z \subseteq X$ e una funzione $f : X \to Y$, si definisce restrizione di $f$ a $Z$, indicata con $f|_Z : Z \to Y$, la funzione avente la medesima legge analitica ma limitata a $Z$:
>    $$f|_Z(x) := f(x), \quad \forall x \in Z$$
> 3. **Proiezione Canonica**: Sul prodotto cartesiano $X \times Y$, la proiezione sul primo fattore è la funzione suriettiva:
>    $$\pi_X : X \times Y \to X, \quad \pi_X(x, y) = x$$

### Composizione di Funzioni

> [!definition] Funzione Composta
> Siano date due funzioni $f : X \to Z$ e $g : W \to Y$. 
> La funzione composta $g \circ f$ (letta *"g composto f"*) è ben definita se e solo se l'immagine di $f$ è contenuta nel dominio di $g$:
> $$\mathrm{im}(f) \subseteq W = \mathrm{dom}(g)$$
> 
> Sotto tale condizione, si definisce la funzione $h = g \circ f : X \to Y$ che opera mediante applicazione sequenziale:
> $$(g \circ f)(x) := g(f(x)), \quad \forall x \in X$$

```
          f             g
   X ──────────> Z ──────────> Y
   x ──────────> f(x) ───────> g(f(x))
   └────────── g ∘ f ─────────┘
```

> [!warning] Non Commutatività della Composizione
> L'operazione di composizione funzionale **non è commutativa**:
> $$g \circ f \ne f \circ g \quad (\text{in generale})$$
> Spesso una delle due composizioni non è neppure lecita a livello di domini e codomini.
> 
> *Esempio:* Siano $f, g : \mathbb{R} \to \mathbb{R}$ con $f(x) = \sin(x)$ e $g(x) = \sqrt[3]{x}$.
> - $(g \circ f)(x) = g(f(x)) = \sqrt[3]{\sin(x)}$
> - $(f \circ g)(x) = f(g(x)) = \sin\left(\sqrt[3]{x}\right)$
> È evidente che $\sqrt[3]{\sin(x)} \ne \sin\left(\sqrt[3]{x}\right)$.

### Funzione Inversa

> [!definition] Funzione Inversa
> Sia data una funzione biettiva $f : X \to Y$. Poiché $f$ è suriettiva e iniettiva, per ogni $y \in Y$ esiste uno ed un solo $x \in X$ tale che $f(x) = y$.
> 
> Si definisce **funzione inversa** di $f$, denotata con $f^{-1} : Y \to X$, la corrispondenza che associa a ciascun $y \in Y$ il suo unico antecedente $x \in X$:
> $$f^{-1}(y) = x \iff f(x) = y$$

> [!proposition] Proprietà di Cancellazione dell'Inversa
> La composizione di una funzione invertibile con la propria inversa restituisce l'operatore identità sui rispettivi insiemi di definizione:
> $$
> \begin{align}
> (f^{-1} \circ f)(x) &= f^{-1}(f(x)) = x = \mathrm{id}_X(x), \quad \forall x \in X \\
> (f \circ f^{-1})(y) &= f(f^{-1}(y)) = y = \mathrm{id}_Y(y), \quad \forall y \in Y
> \end{align}
> $$

## 0.9. Costruzione Insiemistica dei Numeri Naturali (Ordinali di von Neumann)

### Equipotenza e Cardinalità

> [!definition] Insiemi Equipotenti e Cardinalità
> Due insiemi $A$ e $B$ si dicono **equipotenti** (o equinumerosi), e si scrive $A \sim B$, se possono essere posti in corrispondenza biunivoca:
> $$A \sim B \iff \exists f : A \to B \text{ biettiva}$$
> 
> Poiché l'equipotenza definisce una relazione di equivalenza sulla classe di tutti gli insiemi, si definisce **cardinalità** (o potenza) di un insieme $A$, denotata con $\mathrm{card}(A)$ o $|A|$, la classe di equivalenza di tutti gli insiemi equipotenti ad $A$.
### Il Successore Insiemistico e la Gerarchia di von Neumann

Come è possibile fondare il concetto ontologico di "numero" a partire dal puro vuoto insiemistico $\emptyset$? John von Neumann propose una costruzione geniale basata sull'operatore di **successore**:

> [!definition] Insieme Successore
> Per ogni insieme $A$, si definisce il suo **successore** $A^+$ come l'insieme ottenuto aggiungendo $A$ stesso come elemento alla totalità dei suoi membri:
> $$A^+ := A \cup \{A\}$$

Definiamo ora la sequenza formale dei numeri naturali ponendo lo zero come cardinalità dell'insieme vuoto:

$$
\begin{align}
0 &:= \emptyset \implies \mathrm{card}(\emptyset) = 0 \\
1 &:= 0^+ = 0 \cup \{0\} = \emptyset \cup \{\emptyset\} = \{\emptyset\} = \{0\} \\
2 &:= 1^+ = 1 \cup \{1\} = \{0\} \cup \{1\} = \{0, 1\} = \{\emptyset, \{\emptyset\}\} \\
3 &:= 2^+ = 2 \cup \{2\} = \{0, 1\} \cup \{2\} = \{0, 1, 2\} = \{\emptyset, \{\emptyset\}, \{\emptyset, \{\emptyset\}\}\} \\
&\;\;\vdots \\
n &:= (n-1)^+ = \{0, 1, 2, \dots, n-1\}
\end{align}
$$

> [!important] Struttura Fondamentale degli Ordinali di von Neumann
> In questa formulazione rigorosa:
> 1. Ogni numero naturale $n$ **è un insieme**.
> 2. Ciascun numero $n$ contiene esattamente $n$ elementi: $\mathrm{card}(n) = n$.
> 3. Ogni numero naturale coincide con **l'insieme di tutti i numeri naturali che lo precedono**:
>    $$n = \{k \in \mathbb{N} \mid k < n\}$$
> 4. La relazione d'ordine canonico coincide con l'appartenenza insiemistica:
>    $$m < n \iff m \in n \iff m \subsetneq n$$

> [!definition] Insiemi Finiti e Infiniti
> Un insieme $X$ si definisce **finito** se esiste un numero naturale $n \in \mathbb{N}$ tale per cui $X$ è equipotente ad $n$ ($\mathrm{card}(X) = n$).
> In caso contrario, l'insieme $X$ si definisce **infinito**.

## 0.10. Operazioni Aritmetiche Insiemistiche sui Cardinali Finiti

Le quattro operazioni dell'aritmetica elementare emergono in modo del tutto naturale a partire dalle operazioni insiemistiche fondamentali:

> [!theorem] Definizione Insiemistica delle Operazioni Aritmetiche
> Siano $m, n \in \mathbb{N}$ e siano $A$ e $B$ due insiemi finiti tali che $\mathrm{card}(A) = m$ e $\mathrm{card}(B) = n$:
> 
> 1. **Addizione (Somma)**: Definita tramite l'unione di insiemi disgiunti:
>    $$m + n := \mathrm{card}(A \cup B), \quad \text{con } A \cap B = \emptyset$$
> 
> 2. **Moltiplicazione (Prodotto)**: Definita tramite il prodotto cartesiano:
>    $$m \cdot n := \mathrm{card}(A \times B)$$
> 
> 3. **Sottrazione (Differenza)**: Definita per $n \le m$, considerando $B \subseteq A$:
>    $$m - n := \mathrm{card}(A \setminus B), \quad \text{con } B \subseteq A$$
> 
> 4. **Divisione Esatta (Quoziente)**: Sia $n \le m$ con $n \ne 0$. Se è possibile partizionare l'insieme $A$ in sottoinsiemi mutuamente disgiunti $A_i$ aventi tutti cardinalità identica $n$ (inducendo una relazione di equivalenza $\sim$ su $A$ con classi equipotenti a $B$):
>    $$\frac{m}{n} := \mathrm{card}(A / \sim)$$
>    Il quoziente coincide con la cardinalità dell'insieme quoziente, ovvero con il numero totale di blocchi della partizione.
