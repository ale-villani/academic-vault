---
title: "Strutture Algebriche e Teoria dei Gruppi"
domain: "math/algebra"
source_course: "Approfondimento autonomo da Materiali"
tags:
  - math/algebra/groups
  - math/algebra/subgroups
---
## 1. Strutture Algebriche Fondamentali

La simmetria nella nostra realtà fisica non è un'intuizione visiva, ma la proprietà di un oggetto di essere invariante sotto l'azione di un automorfismo. Per comprendere questo formalismo, occorre partire dall'assiomatica algebrica pura.
> [!definition] Operazione binaria interna
> Sia $G$ un insieme non vuoto. Si dice **operazione binaria interna** (o legge di composizione interna) su $G$ un'applicazione che associa ad ogni coppia ordinata di elementi di $G$ un'unico elemento di $G$ $$\star:G \times G \mapsto G:  \quad (a,b) \mapsto a \star b$$

> [!note] Osservazione
> La proprietà $a \star b \in G$ conferisce all'operazione la proprietà di chiusura

> [!definition] Gruppo
> Una struttura algebrica $(G, \star)$, costituita da un insieme $G$ e un'operazione binaria interna $\star$ si dice **gruppo** se soddisfa i seguenti assiomi:
> 1) Chiusura $$a \star b\in G, \quad  \forall a,b \in G$$
> 2) Associatività  $$(a \star b)\star c=a\star(b\star c),  \quad \forall a,b,c\in G$$
> 3) Esistenza dell'elemento neutro (identità) $$\exists e\in G:   \quad a\star e=e\star a=a,  \quad \forall a\in G$$
> 4) Esistenza dell'elemento inverso $$\forall a\in G, \,\exists a^{-1}\in G:  \quad a \star a^{-1}=a^{-1}\star a=e$$

> [!note] Osservazione
> Esistono definizioni per $(G, \star)$ per ogni proprietà aggiunta delle 4, in ordine crescente ( a cascata)$$\begin{align} &   \text{Struttura algebrica}  \xrightarrow{\text{Chiusura}}{\text{Magma}} \xrightarrow{\text{Associatività}}{\text{Semigruppo}}  \\   & \xrightarrow{\text{E. Neutro}}{\text{Monoide}} \xrightarrow{\text{E. Inverso}}{\text{Gruppo}}  \xrightarrow{\text{Associatività}}{\text{Gruppo abeliano}}     \end{align} $$


> [!theorem] Unicità di elemento neutro e inverso
> In ogni gruppo $(G, \star)$:
> 1. L'elemento neutro è unico
> 2. Per ogni $a\in G$, l'inverso $a^{-1}$ è unico. Inoltre vale che $$(a^{-1})^{-1}=a$$
> 3. Vale che $$(a \star b)^{-1}=b^{-1}\star a^{-1}, \,\,\forall a,b\in G$$

> [!quote]- Dimostrazione 
> 1. Se esistessero due elementi neutri $e_{1}, e_{2}$ si avrebbe $$e_{1}=e_{1} \star e_{2}=e_{2}\implies e_{1}=e_{2}$$
> 2. Se $\exists b,c$ inversi di $a$ si ha che: $$ b=b\star e=b\star(a\star c)=(b\star a)\star c=e\star c=c\implies b=c$$
> 3. Per definizione di inverso di $a,b\in G$: $$(a \star b) \star(b^{-1}\star a^{-1})=a \star (b \star  b^{-1})\star a^{-1}=a\star e\star a^{-1}=a\star a^{-1}=e$$da cui la tesi
> 

> [!definition] Gruppo abeliano
> Un gruppo $(G, \star)$ si dice **abeliano** (o **commutativo**) se vale la commutatività $$a\star b=b\star a,  \quad \forall a,b\in G$$




> [!definition] Gruppo ciclico
> Si dice **gruppo ciclico** un gruppo generato da un singolo elemento $g\in G$ ($(G, \star)$ gruppo) attraverso le sue potenze intere $$\braket{ g }:=\left\{ g^k: k\in \mathbb{Z} \right\} $$
> Se $\text{ord}(g)=n$, allora $$\braket{ g  }=\left\{ e, g, g^2, \dots, g^{n-1} \right\} \cong \mathbb{Z}/n\mathbb{Z}$$

> [!example] Alcuni esempi di gruppi
> 
| Insieme e Operazione                                                                                         | Struttura                    | Perché (o perché no)                                                                                                         |
| :----------------------------------------------------------------------------------------------------------- | :--------------------------- | :--------------------------------------------------------------------------------------------------------------------------- |
| $(\mathbb{Z}, +)$                                                                                            | Gruppo abeliano infinito     | Neutro: $0$. Inverso di $n$: $-n$. Chiuso e associativo.                                                                     |
| $(\mathbb{Z}, \cdot)$                                                                                        | Non è un gruppo              | Manca l'inverso moltiplicativo! L'inverso di $2$ sarebbe $1/2 \notin \mathbb{Z}$.                                            |
| $(\mathbb{R} \setminus \{0\}, \cdot)$                                                                        | Gruppo abeliano infinito     | Neutro: $1$. Inverso di $x$: $1/x$.                                                                                          |
| $(\mathrm{GL}(n, \mathbb{R}), \cdot)$<br>(matrici invertibili $n \times n$, prodotto righe $\times$ colonne) | Gruppo non abeliano infinito | Neutro $\mathbf{I}_n$, inverso $\mathbf{A}^{-1}$. Non commuta.                                                               |
| $(\mathrm{O}(3), \cdot)$                                                                                     | Gruppo di Lie compatto       | Matrici ortogonali $3 \times 3$ ($\mathbf{R}^T \mathbf{R} = \mathbf{I}_3$). Preservano lunghezze e angoli in $\mathbb{R}^3$. |

> [!definition] Ordine di un gruppo
> Sia $(G, \star)$ un gruppo. Si dice **ordine** del gruppo, e si indica con $\lvert G \rvert$, la cardinalità dell'insieme $G$. Se $|G|<+\infty$, il gruppo si dice **finito**. Altrimenti, il gruppo si dice **infinito**

> [!definition] Ordine di un elemento
> Sia $(G, \star)$ un gruppo e $g\in G$. Si sice **ordine** di $g$ l'intero $k\in \mathbb{N}$ tale che $$g^k:= \underbrace{g \circ g \circ \dots \circ g}_{\text{k volte}}=e$$
> Se per $h\in G$, $\not\exists k$ ordine del gruppo, allora è posto per convenzione il suo ordine $k=+\infty$
## 2. Sottogruppi 

> [!definition] Sottogruppo
> Sia $(G, \star)$ un gruppo. Si dice **sottogruppo** un insieme $H\subseteq G$ non vuoto, e si indica con $H\leq G$, se è esso stesso un gruppo rispetto all'operazione $\star$, cioè $$H\leq G \iff a\star b^{-1}\in H,  \quad  \forall a,b\in H$$

> [!definition] Classe laterale
> Sia $H\leq G$ e $g\in G$. Allora si definiscono:
> 1. **Classe laterale sinistra** $$gH := \left\{ g \star  h: h\in H \right\}$$
> 2. **Classe laterale destra** $$Hg:=\left\{ h\star g: h \in G \right\}$$

> [!example] Sottospazi affini come sottogruppi
> I sottogruppi sono strutture algebriche molto simile a sottospazi affini. Se $V$ è uno spazio vettoriale e $H\subseteq V$ è sottospazio, con $w\in H$, allora una classe laterale ricorda $$H+\mathbf{w}=\left\{ \mathbf{v}+\mathbf{w}: \mathbf{v}\in H \right\}$$
> Infatti $(V, +)$ è per ogni spazio vettoriale un gruppo abeliano e $H \leq V$ un suo sottogruppo. Per cui un sottospazio affine è effettivamente una classe laterale di $H$.

> [!lemma] Partizione in Classi Laterali ed Equicardinalità
> Sia $(G, \star)$ gruppo e $H \leq G$: 
> 1. Definita la relazione su $a,b\in G$: $$a \sim_{L} b  \quad  \iff  \quad a^{-1}\star b \in H $$allora è una relazione di equivalenza
> 2. Le classi di equivalenza (su $\sim_{L}$) coincidono con le classi laterali sinistre di $a$ $$[a]=aH, \forall a\in H$$
> 3. Per ogni $a\in G$ $$|aH| = |H|$$

> [!quote]- Dimostrazione
> 4. Dimostriamo le 3 proprietà delle relazioni di equivalenza
> a) Riflessività $$\forall a\in G, \,a^{-1}\star a=e\in H$$poiché $H$ è un sottogruppo $\implies a \sim_{L}a$
> b) Simmetria. Se $a\sim_{L}b$  per definizione $a^{-1}\star b\in H$. Essendo $H$ sottogruppo  $$(a^{-1}\star b)^{-1}=b^{-1}\star (a^{-1})^{-1}=b^{-1}\star a\in H$$
> c) Transitività. Se $a\sim_{L}b$ e $b\sim_{L}c$ allora $$\begin{align}  &  a^{-1}\star b\in H, \,\,b^{-1}\star c\in H \\   & \implies (a^{-1}\star b)\star (b^{-1}\star c)=a^{-1}\star (b\star b^{-1})\star c=a^{-1}\star c\in H  \end{align}$$quindi $a\sim_{L}c$ 
> 5. Vale che $$[a]=\left\{ b\in G: b \sim_{L}a \right\}=\left\{ b\in G : a^{-1}\star b=:h \in H \right\}=\left\{ b=a\star h \in G: h \in H \right\}$$moltiplicando per $a$ da entrambe le parti
> 6. Sia $\Phi_{a}:H \to aH$ definita da $$\Phi_{a}(h)=a\star h$$
> Se mostro che $\Phi_{a}$ è biiettiva, $\lvert aH \rvert=\lvert H \rvert$. $\Phi_{a}$ è iniettiva perchè $$\Phi_{a}(h_{1})=\Phi_{a}(h_{2})\implies a\star h_{1}=a\star h_{2}\implies h_{1}=h_{2}$$moltiplicando per $a^{-1}$ a sinistra
> $\Phi_{a}$ è suriettiva per definizione di $aH$ (ogni elemento è della forma $a\star h, \,\,h\in H$) $\,\blacksquare$

> [!theorem] Teorema di Lagrange
> Sia $(G, \star)$ un gruppo finito e $H\leq G$ un suo sottogruppo. Allora l'ordine di $H$ divide l'ordine di $G$: $$\lvert G \rvert = \lvert G / H \rvert \lvert H \rvert  $$dove $G / H := G / \sim_{L}$ insieme quoziente rispetto all'equivalenza $\sim_{L}$

> [!quote]- Dimostrazione
>Dal [[Teoria degli Insiemi#^91d63b|Teorema Fondamentale delle Relazioni di Equivalenza]] vale che $\exists k\in{\left\{ 0,\dots,\lvert G \rvert \right\}}$ tale che $G$ è un unione disgiunta di un numero $k=\lvert G /H \rvert$ di classi distinte  $$\bigcup_{i=1}^k[g_{i}]= \bigcup_{i=1}^k g_{i}H= G$$dove $g_{i}H \cap g_{j}H=\emptyset \iff i≠j$
> Essendo i sottoinsiemi disgiunti, l'ordine di $G$ è la somma delle cardinalità $$\lvert G \rvert=\sum_{i=1}^k \lvert g_{i}H \rvert  $$
> Siccome dal lemma $\lvert g_{i}H \rvert=\lvert H \rvert$: $$\lvert G \rvert = \sum_{i=1}^k \lvert H \rvert =k\lvert H \rvert=\lvert G / H \rvert \lvert H \rvert   $$
>$\blacksquare$

> [!note] Osservazione
> Dal teorema si evince che i sottogruppi di un gruppo non possono avere un numero arbitrario di elementi. Se un sistema ha $12$ operazioni di simmetria totali, può ammettere sotto-sommetrie solo nei divisori interi di 12

> [!example] Partizione del Gruppo Modulare $(\mathbb{Z}_{6}, +)$
> Prendiamo il gruppo dei numeri interi modulo $6$ sotto l'addizione $$G=\mathbb{Z}_{6}=\left\{ 0,1,2,3,4,5 \right\}=\mathbb{Z} / \sim$$dove $n \sim m \iff n-m = 6k, \,\,k\in \mathbb{Z}$
> Considero ora il sottogruppo dei multipli di $2$ $$H=\left\{ 0,2,4 \right\}\implies \lvert H \rvert=3 $$
> Calcoliamo le classi laterali (usando la notazione $gH \mapsto g+H$)
> $g=0$: $$0 + H=\left\{ 0,2,4 \right\}=H$$
> $g=1$: $$1+H=\left\{ 1,3,5 \right\}$$
> $g=2$: $$2+H=\left\{ 0,2,4 \right\}=H$$
> Quindi ho solo 2 classi distinte $$G/H=\left\{ \left\{ 0,2,4 \right\}, \left\{ 1,3,5 \right\} \right\}\implies \lvert G / H \rvert=2 $$
> Infatti da Lagrange $$\lvert G/H \rvert = \lvert G \rvert / \lvert H \rvert  =2$$

## 3. Sottogruppi Normali, Coniugazione ed Equazione delle Classi

> [!definition] Coniugati e classe di coniugo
> Sia $(G, \star)$ un gruppo. Due elementi $a,b \in G$ si dicono **coniugati** ($a \sim b$) se esiste $x \in G$ tale che $$b=x \star a\star x^{-1}$$
> La classe di equivalenza associata ad $a$ è detta **classe di coniugo** $$\mathcal{  C  } (a):= \left\{ x \star  a \star  x^{-1}: x \in G \right\}$$

> [!definition] Centralizzatore e centro di un gruppo
> Sia $(G, \star)$ un gruppo. Si dice **centralizzatore** di $a\in G$ il sottogruppo degli elementi che commutano con a: $$C_{G}(a):=\left\{ g\in G: g\star a=a\star g \right\}\leq G$$mentre **centro** del gruppo $$Z(G):=\left\{ z\in G: z\star g=g\star z, \, \forall g\in G \right\}$$

> [!theorem] Equazione delle classi
> Per ogni gruppo finito $(G, \star)$, la cardinalità di ogni classe di coniugio coincide con l'
















