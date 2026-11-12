---
title: "Logica Proposizionale e Predicativa"
domain: "math/logic-foundations"
source_course: "Analisi 1 (Cap. 0)"
tags:
  - math/logic
  - math/foundations
  - math/logic/propositional
  - math/logic/predicates
---

## 0.1. Proposizioni Logiche e Valori di Verità

> [!definition] Proposizione Logica
> Si definisce **proposizione logica** (o enunciato dichiarativo chiuso) un'affermazione linguistica per la quale sia univocamente e oggettivamente possibile attribuire uno e uno solo tra due possibili **valori di verità**:
> - **Vero** ($V$ oppure $1$)
> - **Falso** ($F$ oppure $0$)
>   Convenzionalmente, le singole proposizioni atomiche vengono denotate con lettere latine minuscole ($p, q, r, s, \dots$).

> [!theorem] Postulati della Logica
>  La logica classica adottata nell'analisi matematica è vincolata a due postulati ontologici fondamentali:
> 1. **Principio di non contraddizione**: una proposizione non può essere contemporaneamente vera e falsa ($p \land \neg p \equiv F$).
> 2. **Principio del terzo escluso** (*tertium non datur*): una proposizione è necessariamente o vera o falsa, non esistendo un terzo valore di verità intermedio ($p \lor \neg p \equiv V$).

## 0.2. Connettivi Logici e Gerarchia Operazionale

I connettivi logici permettono di combinare proposizioni elementari per costruire proposizioni composte complesse.

> [!note] Ordine Gerarchico di Precedenza
> Esattamente come accade nell'algebra elementare per le quattro operazioni aritmetiche (dove moltiplicazione e divisione hanno priorità rispetto ad addizione e sottrazione), i connettivi logici rispettano una rigida **gerarchia di legame** in assenza di parentesi esplicite:
> 1. **Negazione** ($\sim$ oppure $\neg$, *"non"*): operatore unario a massima priorità.
> 2. **Congiunzione** ($\land$, *"et"*): operatore binario.
> 3. **Disgiunzione inclusiva** ($\lor$, *"vel"*): operatore binario.
> 4. **Implicazione logica** ($\implies$, *"se ... allora"*): operatore binario condizionale.
> 5. **Doppia implicazione / Equivalenza** ($\iff$, *"se e solo se"*): operatore binario bicondizionale a minima priorità.

### Tavole di Verità dei Connettivi Elementari

| $p$ | $q$ | $\neg p$ | $p \land q$ | $p \lor q$ | $p \implies q$ | $p \iff q$ |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| $V$ | $V$ | $F$ | $V$ | $V$ | $V$ | $V$ |
| $V$ | $F$ | $F$ | $F$ | $V$ | $F$ | $F$ |
| $F$ | $V$ | $V$ | $F$ | $V$ | $V$ | $F$ |
| $F$ | $F$ | $V$ | $F$ | $F$ | $V$ | $V$ |

---

### Analisi Strutturale dell'Implicazione ($p \implies q$)

> [!important] Il Valore di Verità dell'Implicazione Materiale
> La proposizione condizionale $p \implies q$ è **falsa se e solo se** la premessa (antecedente) $p$ è vera e la conseguenza (conseguente) $q$ è falsa.
> 
> In tutti gli altri casi l'implicazione è formalmente **vera**:
> - Se $p$ è falsa, l'implicazione $p \implies q$ è **sempre vera**, a prescindere dal fatto che $q$ sia vera o falsa (*ex falso sequitur quodlibet*).
> 
> Esiste una perfetta equivalenza logica tra l'implicazione materiale e la disgiunzione con la premessa negata:
> $$p \implies q \iff \neg p \lor q$$

```
   p ⟹ q
   ├── p è V, q è V  ──> VERA
   ├── p è V, q è F  ──> FALSA (unico caso di falsità)
   └── p è F         ──> VERA (indipendentemente dal valore di q)
```

> [!definition] Condizione Necessaria e Condizione Sufficiente
> Nell'ambito dell'enunciato $p \implies q$:
> - $p$ costituisce **condizione sufficiente** affinché si verifichi $q$ (è sufficiente che $p$ sia vera per garantire la verità di $q$).
> - $q$ costituisce **condizione necessaria** affinché valga $p$ (se $q$ fosse falsa, $p$ non potrebbe in alcun modo essere vera senza violare l'implicazione).
### Analisi della Doppia Implicazione ($p \iff q$)

> [!definition] Equivalenza Logica
> La doppia implicazione (o coimplicazione) $p \iff q$ corrisponde alla congiunzione delle due implicazioni reciproche:
> $$p \iff q \iff (p \implies q) \land (q \implies p)$$
> In questo scenario:
> - $p$ è **condizione necessaria e sufficiente** affinché valga $q$ (e simmetricamente $q$ è condizione necessaria e sufficiente per $p$).
> - $p$ e $q$ si dicono **logicamente equivalenti**: possiedono la medesima tavola di verità e possono essere interscambiati in qualsiasi contesto deduttivo.
## 0.3. Regole di Deduzione e Forme dell'Implicazione

### Modus Ponens (Regola di Distacco)

Se è stabilita la verità dell'enunciato condizionale $p \implies q$, per poter **dedurre** l'effettiva validità di $q$ (ovvero sapere se $q$ è vera nel mondo reale) è tassativamente necessario verificare la verità della premessa $p$.

> [!theorem] Modus Ponens
> La struttura logica del Modus Ponens è espressa dalla proposizione composta:
> $$(p \land (p \implies q)) \implies q$$
> Tale enunciato è una **tautologia** (ovvero una proposizione che risulta costantemente vera per qualunque combinazione di valori di verità assegnata a $p$ e $q$).

> [!quote]- Dimostrazione formale tramite tavola di verità
> Verifichiamo la validità per ogni assegnazione di $p$ e $q$:
> 
> | $p$ | $q$ | $p \implies q$ | $p \land (p \implies q)$ | $(p \land (p \implies q)) \implies q$ |
> | :---: | :---: | :---: | :---: | :---: |
> | $V$ | $V$ | $V$ | $V$ | $V$ |
> | $V$ | $F$ | $F$ | $F$ | $V$ |
> | $F$ | $V$ | $V$ | $F$ | $V$ |
> | $F$ | $F$ | $V$ | $F$ | $V$ |
> 
> La colonna terminale presenta unicamente il valore $V$, comprovando che la formula è universalmente valida. $\blacksquare$

> [!example] Modus Ponens nel Sillogismo Classico
> Siano definite le proposizioni:
> - $p = \text{"Socrate è un uomo"}$
> - $p \implies q = \text{"Se Socrate è un uomo, allora Socrate è mortale"}$
> 
> Poiché sappiamo empiricamente che $p$ è vera, applicando la regola del Modus Ponens deduciamo formalmente che:
> - $q = \text{"Socrate è mortale"}$ è vera.

### Forme Derivate dell'Implicazione

Considerando l'implicazione originaria $p \implies q$, definita **proposizione diretta**, si possono generare tre ulteriori proposizioni correlate modificando la polarità o l'ordine degli operandi:

```
                      p ⟹ q  (DIRETTA)
                     ↗     ↖
   (CONTRARIA) ¬p ⟹ ¬q  ≡  q ⟹ p (INVERSA)
                     ↖     ↗
                    ¬q ⟹ ¬p  (CONTRONOMINALE)
```

> [!proposition] Classificazione delle Forme dell'Implicazione
> Data la proposizione diretta $p \implies q$:
> 1. **Proposizione Contronominale (o Controreciproca)**:
>    $$\neg q \implies \neg p$$
>    È **logicamente equivalente** alla proposizione diretta ($p \implies q \equiv \neg q \implies \neg p$). È alla base di ogni dimostrazione per assurdo o per contrapposizione.
> 2. **Proposizione Inversa**:
>    $$q \implies p$$
>    Non è logicamente equivalente alla diretta. Confondere la diretta con la sua inversa costituisce la fallacia logica dell'affermazione del conseguente.
> 3. **Proposizione Contraria**:
>    $$\neg p \implies \neg q$$
>    È logicamente equivalente alla proposizione inversa ($\neg p \implies \neg q \equiv q \implies p$), ma non alla diretta.

> [!quote]- Verifica dell'equivalenza tra diretta e contronominale
> Riscriviamo entrambe le implicazioni tramite disgiunzione:
> - Forma diretta: $p \implies q \equiv \neg p \lor q$
> - Forma contronominale: $\neg q \implies \neg p \equiv \neg(\neg q) \lor \neg p \equiv q \lor \neg p \equiv \neg p \lor q$
> 
> Poiché le formule disgiuntive coincidono per commutatività di $\lor$, le due implicazioni esprimono la stessa identica funzione booleana. $\blacksquare$

## 0.4. Logica dei Predicati e Quantificatori

### Predicati e Variabili

> [!definition] Predicato
> Un **predicato** (o proposizione aperta) è un'espressione linguistica contenente una o più **variabili** appartenenti a un prefissato insieme di definizione:
> - **Predicato unario**: $P(x)$ contenente una singola variabile libera $x$ (es. $P(x) : \text{"}x \ge 1\text{"}$ su $\mathbb{R}$, oppure $P(x) : \text{"}x \text{ è un uomo}\text{"}$).
> - **Predicato binario o multivariato**: $P(x, y)$ o $P(x_1, \dots, x_n)$ (es. $P(x, y) : \text{"}x + y = 0\text{"}$).
> 
> Un predicato in quanto tale non possiede un valore di verità oggettivo. Tuttavia, **se si fissano tutte le variabili** sostituendole con elementi puntuali del dominio, il predicato diviene una vera e propria **proposizione logica**, assumendo il valore Vero o Falso.

> [!example] 
> Se $P(x) : \text{"}x \ge 1\text{"}$, allora per $x = 0$ si ha $P(0) \equiv F$, mentre per $x = 3$ si ha $P(3) \equiv V$.
> 

### Quantificatori Logici

Per trasformare un predicato in un enunciato dotato di valore di verità senza fissare singolarmente ogni variabile, si utilizzano i **quantificatori**:

> [!definition] Quantificatore Universale ed Esistenziale
> 1. **Quantificatore Universale** ($\forall$, letto *"per ogni"*, *"qualunque sia"*):
>    $$\forall x, P(x)$$
>    Afferma che il predicato $P(x)$ è verificato per **tutti** gli elementi $x$ appartenenti al dominio considerato.
> 2. **Quantificatore Esistenziale** ($\exists$, letto *"esiste almeno un"*):
>    $$\exists x \mid P(x)$$
>    Afferma che esiste **almeno un** elemento $x$ nel dominio per il quale il predicato $P(x)$ risulta vero.
> 3. **Quantificatore di Esistenza e Unicità** ($\exists!$, letto *"esiste ed è unico"*):
>    $$\exists! x \mid P(x) \iff (\exists x \mid P(x)) \land (\forall x_1, x_2 : (P(x_1) \land P(x_2)) \implies x_1 = x_2)$$
### Variabili Libere ed Enunciati

> [!important] Distinzione tra Variabile Libera e Variabile Vincolata
> - Una variabile si definisce **vincolata** (o quantificata) se ricade nel raggio d'azione di un quantificatore ($\forall$ o $\exists$).
> - Una variabile si definisce **libera** se non è retta da alcun quantificatore.
> 
> *Esempio:* Nell'espressione $\forall x : P(x, y)$, la variabile $x$ è vincolata dal quantificatore universale, mentre la variabile $y$ è libera.
> 
> Uno stato predicativo può presentare due conformazioni:
> 1. **Tutte le variabili sono quantificate (vincolate)**: l'espressione è un **enunciato** (o proposizione chiusa) e assume un valore di verità univoco ($V$ o $F$) indipendente da parametri esterni.
>    *Esempio:* $\forall x \in \mathbb{R},\, x \ne x + 1$ (Enunciato Vero).
> 2. **Almeno una variabile è libera**: l'espressione non è un enunciato ma una proprietà parametrica; la sua verità o falsità dipende interamente dal valore che viene assegnato alla variabile libera.

### Negazione delle Proposizioni Quantificate

> [!theorem] Leggi di De Morgan per Quantificatori
> Negare che una proprietà valga per tutti equivale ad asserire l'esistenza di almeno un controesempio; simmetricamente, negare l'esistenza di un elemento equivale ad asserire che per tutti gli elementi la proprietà fallisce:
> $$
> \begin{align}
> \neg \left(\forall x, P(x)\right) &\iff \exists x \mid \neg P(x) \\
> \neg \left(\exists x \mid P(x)\right) &\iff \forall x, \neg P(x)
> \end{align}
> $$
