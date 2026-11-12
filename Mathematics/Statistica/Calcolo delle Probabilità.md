---
title: "Calcolo delle Probabilità e Variabili Aleatorie"
domain: "math/probability"
source_course: "Statistica (Cap. 2-3)"
tags:
  - math/probability/axioms
  - math/probability/random-variables
  - math/probability/distributions
  - math/probability/limit-theorems
---
## Spazio Campionario ed Eventi

### Concetti Primitivi ed Esperimenti Aleatori

> [!definition] Esperimento Aleatorio, Evento e Probabilità
> - **Esperimento Aleatorio**: è un fenomeno, prova o situazione operativa di cui non è possibile prevedere l'esito a priori con certezza.
> - **Evento**: è una proposizione logica che può risultare vera o falsa a seconda dell'esito della prova.
> - **Probabilità**: è la misura o valutazione del grado di fiducia assegnato al verificarsi di un determinato evento.

> [!example] Lancio di Due Monete
> Si consideri l'esperimento aleatorio consistente nel lanciare due monete:
> $$
> \begin{aligned}
> E_1 &= \text{"esce testa dalla prima moneta e croce dalla seconda"} \\
> E_2 &= \text{"le due monete mostrano facce diverse"}
> \end{aligned}
> $$

Essendo definite come proposizioni logiche, le entità evento possono essere combinate tramite le operazioni dell'**algebra di Boole**:
- Congiunzione logica (AND): $\land$
- Disgiunzione logica (OR): $\lor$
- Negazione logica (NOT): $\neg$

Valgono di conseguenza le consuete **leggi di De Morgan**:
$$
\begin{aligned}
\neg(A \land B) = \neg A \lor \neg B, \qquad \neg(A \lor B) = \neg A \land \neg B
\end{aligned}
$$

### Formalizzazione Insiemistica: Spazio Campionario e $\sigma$-Algebre

Per formalizzare matematicamente la teoria, le proposizioni logiche vengono tradotte in opportuni insiemi:
- Si definisce lo **spazio dei risultati possibili** (spazio campionario) $\Omega$, contenente tutti gli esiti elementari.
- L'algebra di Boole tra proposizioni si mappa isomorficamente nell'algebra delle operazioni tra sottoinsiemi:
  - Congiunzione $\land \longmapsto$ Intersezione $\cap$
  - Disgiunzione $\lor \longmapsto$ Unione $\cup$
  - Negazione $\neg \longmapsto$ Complementare $(\cdot)^c$

Si definisce **famiglia di tutti gli eventi** una classe di sottoinsiemi $\mathcal{F} \subseteq \mathcal{P}(\Omega)$ (dove $\mathcal{P}(\Omega)$ indica l'insieme delle parti di $\Omega$).

> [!note] Struttura di $\sigma$-Algebra
> - **Casi finiti o numerabili**: nella grande maggioranza delle applicazioni in cui $\Omega$ è discreto, si assume semplicemente $\mathcal{F} = \mathcal{P}(\Omega)$.
> - **Casi continui**: quando $\Omega$ ha la cardinalità del continuo (es. sottoinsiemi di $\mathbb{R}^n$), non è in generale possibile definire coerentemente una misura di probabilità su tutte le parti di $\Omega$. Si sceglie pertanto $\mathcal{F} \subsetneq \mathcal{P}(\Omega)$ come una $\sigma$-algebra di sottoinsiemi, ovvero una famiglia non vuota tale che:
>   1. L'evento certo e l'evento impossibile appartengono alla famiglia:
>      $$
>      \begin{aligned}
>      \Omega \in \mathcal{F}, \qquad \emptyset \in \mathcal{F}
>      \end{aligned}
>      $$
>   2. Chiusura rispetto al complementare:
>      $$
>      \begin{aligned}
>      E \in \mathcal{F} \implies E^c \in \mathcal{F}
>      \end{aligned}
>      $$
>   3. Chiusura rispetto a unioni e intersezioni al più numerabili: per ogni successione $\{E_i\}_{i \in I} \subseteq \mathcal{F}$ con $I$ finito o numerabile:
>      $$
>      \begin{aligned}
>      \bigcup_{i \in I} E_i \in \mathcal{F}, \qquad \bigcap_{i \in I} E_i \in \mathcal{F}
>      \end{aligned}
>      $$

Ogni sottoinsieme $E \in \mathcal{F}$ è detto formalmente **evento misurabile**.

## Definizione Assiomatica di Probabilità

### Assiomi di Kolmogorov

> [!definition] Probabilità (Assiomi di Kolmogorov)
> Si definisce **misura di probabilità** una funzione a valori reali $\mathbb{P} : \mathcal{F} \to [0, 1]$ che soddisfa i seguenti tre assiomi fondamentali:
> 1. **Positività**:
>    $$
>    \begin{aligned}
>    \mathbb{P}(E) \ge 0 \quad \forall E \in \mathcal{F}
>    \end{aligned}
>    $$
> 2. **Normalizzazione (Certezza)**:
>    $$
>    \begin{aligned}
>    \mathbb{P}(\Omega) = 1
>    \end{aligned}
>    $$
> 3. **$\sigma$-Additività**: per ogni famiglia finita o numerabile di eventi $\{E_n\}_{n \in I} \subseteq \mathcal{F}$ a due a due incompatibili (disgiunti), ovvero tali che $E_n \cap E_m = \emptyset$ per ogni $n \neq m$:
>    $$
>    \begin{aligned}
>    \mathbb{P}\left(\bigcup_{n \in I} E_n\right) = \sum_{n \in I} \mathbb{P}(E_n)
>    \end{aligned}
>    $$

> [!example] Lancio di un Dado
> Si consideri il lancio di un dado a sei facce regolari, con spazio campionario $\Omega = \{1, 2, 3, 4, 5, 6\}$:
> - Evento $A$: "esce un punteggio maggiore o uguale a 4" $\implies A = \{4, 5, 6\}$.
> - Evento $B$: "esce un numero pari" $\implies B = \{2, 4, 6\}$.
> - Evento intersezione $A \cap B$: "esce un numero pari maggiore o uguale a 4":
>   $$
>   \begin{aligned}
>   A \cap B = \{4, 6\}
>   \end{aligned}
>   $$

### Spazio di Probabilità e Teoria della Misura

> [!note] Connessione con la Teoria della Misura
> Essendo $\mathcal{F}$ una $\sigma$-algebra sullo spazio $\Omega$, la coppia $(\Omega, \mathcal{F})$ costituisce uno **spazio misurabile**.
> 
> La funzione $\mathbb{P}$ rispetta rigorosamente tutti gli assiomi di una misura positiva definita su $(\Omega, \mathcal{F})$. Gli elementi di $\mathcal{F}$ sono gli insiemi misurabili dello spazio.
> 
> A differenza della misura di Lebesgue standard, la probabilità $\mathbb{P}$ è una misura di massa totale finita e normalizzata a 1:
> $$
> \begin{aligned}
> \mathbb{P}(\Omega) = 1
> \end{aligned}
> $$
> La terna $(\Omega, \mathcal{F}, \mathbb{P})$ prende il nome di **spazio di probabilità**.

## Proprietà e Corollari della Probabilità

### Teoremi Fondamentali del Calcolo delle Probabilità

> [!corollary] Proprietà Derivate della Misura di Probabilità
> Dagli assiomi di Kolmogorov discendono direttamente le seguenti proprietà analitiche:
> 1. Probabilità dell'evento impossibile:
>    $$
>    \begin{aligned}
>    \mathbb{P}(\emptyset) = 0
>    \end{aligned}
>    $$
> 2. Probabilità della differenza di eventi: dati $E, F \in \mathcal{F}$ con $F \subseteq E$:
>    $$
>    \begin{aligned}
>    \mathbb{P}(E \setminus F) = \mathbb{P}(E) - \mathbb{P}(F)
>    \end{aligned}
>    $$
> 3. Probabilità dell'evento complementare: ponendo $E = \Omega$ nella differenza:
>    $$
>    \begin{aligned}
>    \mathbb{P}(F^c) = 1 - \mathbb{P}(F)
>    \end{aligned}
>    $$
> 4. Monotonia: se $F \subseteq E$, allora:
>    $$
>    \begin{aligned}
>    \mathbb{P}(F) \le \mathbb{P}(E)
>    \end{aligned}
>    $$
> 5. Limitazione superiore: per ogni evento $E \in \mathcal{F}$:
>    $$
>    \begin{aligned}
>    \mathbb{P}(E) \le 1
>    \end{aligned}
>    $$
> 6. Legge di addizione per due eventi qualunque: per ogni $E, F \in \mathcal{F}$:
>    $$
>    \begin{aligned}
>    \mathbb{P}(E \cup F) = \mathbb{P}(E) + \mathbb{P}(F) - \mathbb{P}(E \cap F)
>    \end{aligned}
>    $$

> [!quote]- Dimostrazione
> Si verificano rigorosamente le singole proprietà:
> 
> **Dimostrazione 1 (Evento impossibile):**
> Si può esprimere $\Omega$ come unione disgiunta $\Omega = \Omega \cup \emptyset$, con $\Omega \cap \emptyset = \emptyset$. Applicando l'assioma di additività finita e la normalizzazione:
> $$
> \begin{aligned}
> \mathbb{P}(\Omega) = \mathbb{P}(\Omega \cup \emptyset) = \mathbb{P}(\Omega) + \mathbb{P}(\emptyset) \implies 1 = 1 + \mathbb{P}(\emptyset) \implies \mathbb{P}(\emptyset) = 0
> \end{aligned}
> $$
> 
> **Dimostrazione 2 (Differenza di eventi):**
> L'evento $E$ può essere decomposto nell'unione di due sottoinsiemi disgiunti:
> $$
> \begin{aligned}
> E = (E \cap F) \cup (E \setminus F)
> \end{aligned}
> $$
> Poiché per ipotesi $F \subseteq E$, si ha $E \cap F = F$. Essendo $F$ ed $E \setminus F$ chiaramente disgiunti, per additività:
> $$
> \begin{aligned}
> \mathbb{P}(E) &= \mathbb{P}(E \cap F) + \mathbb{P}(E \setminus F) \\
> &= \mathbb{P}(F) + \mathbb{P}(E \setminus F) \\
> \implies \mathbb{P}(E \setminus F) &= \mathbb{P}(E) - \mathbb{P}(F)
> \end{aligned}
> $$
> 
> **Dimostrazione 3 (Evento complementare):**
> Applicando il risultato del punto precedente al caso particolare $E = \Omega$:
> $$
> \begin{aligned}
> \mathbb{P}(F^c) = \mathbb{P}(\Omega \setminus F) = \mathbb{P}(\Omega) - \mathbb{P}(F) = 1 - \mathbb{P}(F)
> \end{aligned}
> $$
> 
> **Dimostrazione 4 (Monotonia):**
> Essendo $\mathbb{P}$ a valori non negativi per l'assioma di positività ($\mathbb{P}(E \setminus F) \ge 0$), dall'identità dimostrata al punto 2 segue:
> $$
> \begin{aligned}
> \mathbb{P}(E \setminus F) = \mathbb{P}(E) - \mathbb{P}(F) \ge 0 \implies \mathbb{P}(F) \le \mathbb{P}(E)
> \end{aligned}
> $$
> 
> **Dimostrazione 5 (Limitazione superiore):**
> Poiché ogni evento $E \in \mathcal{F}$ è per definizione un sottoinsieme dello spazio campionario, $E \subseteq \Omega$. Applicando la monotonia e l'assioma di normalizzazione:
> $$
> \begin{aligned}
> E \subseteq \Omega \implies \mathbb{P}(E) \le \mathbb{P}(\Omega) = 1
> \end{aligned}
> $$
> 
> **Dimostrazione 6 (Unione di eventi generali):**
> L'evento unione $E \cup F$ può essere riscritto come unione di due insiemi disgiunti isolando la parte di $F$ non condivisa con $E$:
> $$
> \begin{aligned}
> E \cup F = E \cup (F \setminus (E \cap F))
> \end{aligned}
> $$
> Poiché $E \cap (F \setminus (E \cap F)) = \emptyset$, per l'assioma di additività si ha:
> $$
> \begin{aligned}
> \mathbb{P}(E \cup F) = \mathbb{P}(E) + \mathbb{P}(F \setminus (E \cap F))
> \end{aligned}
> $$
> Poiché $(E \cap F) \subseteq F$, applicando la formula della differenza (dimostrata al punto 2) al termine $\mathbb{P}(F \setminus (E \cap F))$:
> $$
> \begin{aligned}
> \mathbb{P}(F \setminus (E \cap F)) = \mathbb{P}(F) - \mathbb{P}(E \cap F)
> \end{aligned}
> $$
> Sostituendo si conclude:
> $$
> \begin{aligned}
> \mathbb{P}(E \cup F) = \mathbb{P}(E) + \mathbb{P}(F) - \mathbb{P}(E \cap F)
> \end{aligned}
> $$
> La dimostrazione di tutte le proprietà è così completata. $\blacksquare$

### Modelli di Probabilità Uniforme

> [!definition] Probabilità Uniforme su Insiemi Finiti (Definizione Classica)
> Se lo spazio campionario $\Omega$ è **finito**, associando a ciascun esito elementare la medesima probabilità, la misura di probabilità di un evento $E$ è determinata dal principio classico dei casi favorevoli su casi possibili:
> $$
> \begin{aligned}
> \mathbb{P}(E) = \frac{\mathrm{card}(E)}{\mathrm{card}(\Omega)}
> \end{aligned}
> $$
> Da cui discende che per ogni singolo esito elementare $\omega \in \Omega$:
> $$
> \begin{aligned}
> \forall \omega \in \Omega, \quad \mathbb{P}(\{\omega\}) = \frac{1}{\mathrm{card}(\Omega)}
> \end{aligned}
> $$

> [!definition] Probabilità Geometrica Continua (Uniforme su $\mathbb{R}^n$)
> Se $\Omega \subset \mathbb{R}^n$ è un insieme limitato avente misura di Lebesgue non nulla ($0 < |\Omega| < +\infty$), posta come $\sigma$-algebra $\mathcal{F} = \mathcal{M}$ (famiglia dei sottoinsiemi di $\Omega$ misurabili secondo Lebesgue), per ogni evento misurabile $E \in \mathcal{F}$ la probabilità uniforme è definita da:
> $$
> \begin{aligned}
> \mathbb{P}(E) = \frac{|E|}{|\Omega|}
> \end{aligned}
> $$
> dove $|E|$ e $|\Omega|$ denotano rispettivamente le misure $n$-dimensionali (lunghezza, area o volume a seconda della dimensione dello spazio) di $E$ e di $\Omega$.

## Calcolo Combinatorio ed Esempi Classici

> [!example] Combinazioni ed Estrazione di Carte
> Si ricorda che:
> $$
> \begin{aligned}
> \binom{n}{k} = \frac{n!}{k!(n-k)!} \quad \text{per } k = 1, \dots, n
> \end{aligned}
> $$
> è il numero di combinazioni di $k$ elementi presi da $n$.
> 
> **Problema:** Pesco $5$ carte da un mazzo di $52$: qual è la probabilità di pescare esattamente $3$ assi?
> $$
> \begin{aligned}
> \Omega = \text{5-ine di carte} \implies \mathrm{card}(\Omega) = \binom{52}{5}
> \end{aligned}
> $$
> $3$ assi si possono ottenere in:
> $$
> \begin{aligned}
> \binom{4}{3} = 4 \text{ modi}
> \end{aligned}
> $$
> Le altre $2$ carte sono prese tra le rimanenti $52 - 4 = 48$ carte non-assi in:
> $$
> \begin{aligned}
> \binom{48}{2} \text{ modi}
> \end{aligned}
> $$
> Ne segue che la probabilità dell'evento $E$ è:
> $$
> \begin{aligned}
> \mathbb{P}(E) = \frac{\binom{48}{2}\binom{4}{3}}{\binom{52}{5}}
> \end{aligned}
> $$

> [!example] Problema dei Compleanni
> In una stanza ci sono $n$ persone. Qual è la probabilità che almeno $2$ abbiano lo stesso compleanno?
> $$
> \begin{aligned}
> \Omega = \{1, \dots, 365\}^n \implies \mathrm{card}(\Omega) = 365^n
> \end{aligned}
> $$
> Consideriamo l'evento complementare $E^c$: tutte le $n$ persone hanno giorni di compleanno distinti. Per $n \le 365$:
> $$
> \begin{aligned}
> \mathrm{card}(E^c) = \frac{365!}{(365-n)!}
> \end{aligned}
> $$
> Quindi:
> $$
> \begin{aligned}
> \mathbb{P}(E^c) = \frac{365!}{365^n (365-n)!} \implies \mathbb{P}(E) = 1 - \frac{365!}{365^n (365-n)!}
> \end{aligned}
> $$

## Indipendenza Stocastica

> [!definition] Eventi Stocasticamente Indipendenti
> Due eventi $E, F$ si dicono **stocasticamente indipendenti** se:
> $$
> \begin{aligned}
> \mathbb{P}(E \cap F) = \mathbb{P}(E)\mathbb{P}(F)
> \end{aligned}
> $$

> [!example] Lancio Indipendente di Due Monete
> Lancio $2$ monete contemporaneamente in posti diversi:
> $$
> \begin{aligned}
> E &= \text{"moneta 1 T"} \implies \mathbb{P}(E) = \frac{1}{2} \\
> F &= \text{"moneta 2 C"} \implies \mathbb{P}(F) = \frac{1}{2} \\
> G &= \text{"le 2 monete hanno lo stesso ris."} \implies \mathbb{P}(G) = \frac{1}{2}
> \end{aligned}
> $$
> Calcolando le probabilità delle intersezioni a coppie:
> $$
> \begin{aligned}
> \mathbb{P}(E \cap F) = \frac{1}{4} = \mathbb{P}(F \cap G) = \mathbb{P}(E \cap G) \implies \text{A 2 a 2 sono indipendenti}
> \end{aligned}
> $$

> [!note] Indipendenza vs Disgiunzione
> Indipendenti **NON** è ovviamente sinonimo di disgiunti. Anzi, due eventi $E, F$ sono contemporaneamente indipendenti e disgiunti se e solo se:
> $$
> \begin{aligned}
> \mathbb{P}(E \cap F) = \mathbb{P}(E)\mathbb{P}(F) = 0 \implies \mathbb{P}(E) = 0 \lor \mathbb{P}(F) = 0
> \end{aligned}
> $$

> [!definition] Famiglia di Eventi Indipendenti
> Dico che gli eventi $E_1, \dots, E_n$ ($n \in \mathbb{N}$) sono **indipendenti** se $\forall i_1, \dots, i_m$ indici distinti, con $m \le n$:
> $$
> \begin{aligned}
> \mathbb{P}\left(\bigcap_{j=1}^m E_{i_j}\right) = \prod_{j=1}^m \mathbb{P}(E_{i_j})
> \end{aligned}
> $$

> [!example] Indipendenza a Due a Due non Implica Indipendenza Globale
> Nell'esempio precedente del lancio delle due monete:
> $$
> \begin{aligned}
> \mathbb{P}(E \cap F \cap G) = 0 \implies \text{gli eventi NON sono tra loro indipendenti, anche se a 2 a 2 lo sono}
> \end{aligned}
> $$

## Prove di Bernoulli

> [!definition] Schema delle Prove Ripetute di Bernoulli
> Si ripete la medesima prova $n \in \mathbb{N}$ volte sotto le seguenti condizioni:
> 1. Ogni prova non influenza le altre (indipendenza reciproca);
> 2. Ciascuna prova ha solo due risultati possibili: insuccesso ($0$) e successo ($1$);
> 3. La probabilità di successo è costante ad ogni prova: $p \in (0,1)$.
> 
> Lo spazio campionario è dato da:
> $$
> \begin{aligned}
> \Omega = \{0,1\}^n = \left\{(\omega_1, \dots, \omega_n) : \omega_i \in \{0,1\} \ \forall i = 1, \dots, n\right\}
> \end{aligned}
> $$
> Siano $n$ il numero totale di prove e $k = \sum_{i=1}^n \omega_i$ il numero totale di successi. Essendo le prove indipendenti:
> $$
> \begin{aligned}
> \mathbb{P}\{(\omega_1, \dots, \omega_n)\} = p^k (1-p)^{n-k}
> \end{aligned}
> $$
> Definendo l'evento $B_k := \text{"k successi nelle n prove"}$, siccome $B_k$ può essere realizzato scegliendo le posizioni dei $k$ successi in $\binom{n}{k}$ modi:
> $$
> \begin{aligned}
> \mathbb{P}(B_k) = \binom{n}{k} p^k (1-p)^{n-k}
> \end{aligned}
> $$

## Variabili Aleatorie

> [!definition] Variabile Aleatoria (Definizione Elementare)
> Sia $X: \Omega \to \mathbb{R}$ e suppongo $\mathcal{F} = \mathcal{P}(\Omega)$.
> $X$ è detta **variabile aleatoria**.
> La variabile aleatoria esprime sempre il concetto di "misura" numerica dell'esito dell'esperimento.

> [!example] Somma nel Lancio di Due Dadi
> Lancio di due dadi:
> $$
> \begin{aligned}
> \Omega = \{(h,k) : h,k \in \{1,\dots,6\}\}
> \end{aligned}
> $$
> La variabile aleatoria $X$ può essere definita come il punteggio totale ottenuto:
> $$
> \begin{aligned}
> X(h,k) = h+k
> \end{aligned}
> $$
> Gli eventi associati ai valori di $X$ si possono scrivere come:
> $$
> \begin{aligned}
> \{(h,k) \in \Omega : X(h,k) = s, \ s \in \mathbb{R}\} \quad \text{o abbreviato come} \quad \{X=s\} \quad \text{o} \quad X^{-1}(s)
> \end{aligned}
> $$

> [!example] Conteggio dei Successi nelle Prove di Bernoulli
> Nelle prove ripetute di Bernoulli, la variabile aleatoria che conta i successi è data da:
> $$
> \begin{aligned}
> X = \sum_{i=1}^n \omega_i
> \end{aligned}
> $$
> da cui la probabilità che $X$ assuma valore $k$ coincide con la probabilità dell'evento $B_k$:
> $$
> \begin{aligned}
> \mathbb{P}(B_k) = \mathbb{P}(X=k) = \binom{n}{k} p^k (1-p)^{n-k}
> \end{aligned}
> $$

> [!definition] Variabile Aleatoria (Definizione Formale tramite Teoria della Misura)
> Sia $\mathcal{F} \subseteq \mathcal{P}(\Omega)$ una $\sigma$-algebra su $\Omega$. Definisco $X: \Omega \to \mathbb{R}$ una **variabile aleatoria** se è **misurabile** nello spazio di misura $(\Omega, \mathcal{F}, \mathbb{P})$, ovvero se:
> $$
> \begin{aligned}
> \forall A \subseteq \mathbb{R} \text{ aperto}, \quad X^{-1}(A) \in \mathcal{F}
> \end{aligned}
> $$
> Questo oggetto è formalmente importante nell'ambito della teoria della misura, in quanto esistono insiemi di $\mathbb{R}$ che non è possibile misurare (ad esempio l'insieme di Vitali).

> [!note] Controimmagine ed Eventi
> La controimmagine di un insieme $A \subseteq \mathbb{R}$ rispetto a $X$ rappresenta un evento misurabile dello spazio campionario:
> $$
> \begin{aligned}
> E = X^{-1}(A) = \{\omega \in \Omega : X(\omega) \in A\} = \{x \in A : X = x\}
> \end{aligned}
> $$
> la cui probabilità $\mathbb{P}(E)$ è ben definita essendo la variabile aleatoria $X$ una funzione misurabile.
> Si possono inoltre definire funzioni composte che coinvolgono variabili aleatorie.

## Funzione di Ripartizione

> [!definition] Funzione di Ripartizione (Cumulative Distribution Function)
> Si dice **funzione di ripartizione** della variabile aleatoria $X: \Omega \to \mathbb{R}$ la funzione $F: \mathbb{R} \to [0,1]$ definita da:
> $$
> \begin{aligned}
> F(x) = \mathbb{P}(\{X \le x\})
> \end{aligned}
> $$

> [!example] Funzione di Ripartizione nel Lancio di Due Dadi
> Sia $\Omega = \{1,\dots,6\}^2$ e $X(h,k) = h+k$.
> Definiamo la funzione di ripartizione e la densità discreta:
> $$
> \begin{aligned}
> F(x) = \mathbb{P}(X \le x) \quad \text{e} \quad p_X(x) := \mathbb{P}(X=x)
> \end{aligned}
> $$
> I valori assunti per $x \in \{2, \dots, 12\}$ sono:
> 
> | $X = x$ | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 |
> | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
> | $p_X(x)$ | $\frac{1}{36}$ | $\frac{2}{36}$ | $\frac{3}{36}$ | $\frac{4}{36}$ | $\frac{5}{36}$ | $\frac{6}{36}$ | $\frac{5}{36}$ | $\frac{4}{36}$ | $\frac{3}{36}$ | $\frac{2}{36}$ | $\frac{1}{36}$ |
> | $F(x)$ | $\frac{1}{36}$ | $\frac{3}{36}$ | $\frac{6}{36}$ | $\frac{10}{36}$ | $\frac{15}{36}$ | $\frac{21}{36}$ | $\frac{26}{36}$ | $\frac{30}{36}$ | $\frac{33}{36}$ | $\frac{35}{36}$ | $\frac{36}{36}$ |
> 
> Comportamento qualitativo dei grafici:
> - Il grafico di $36 p_X(x)$ presenta una forma a cuspide simmetrica triangolare con vertice in $x = 7$, dove $36 p_X(7) = 6$.
> - Il grafico di $36 F(x)$ è una funzione a gradini monotona non decrescente, continua a destra, che sale progressivamente da $1$ in $x=2$ fino a stabilizzarsi sul valore $36$ (ovvero $F(x) = 1$) per tutti gli $x \ge 12$.

> [!example] Variabile Aleatoria Continua: Scelta a Caso in un Intervallo
> Scelta di un punto $x$ a caso su un intervallo limitato $[a,b]$:
> - $X$: punto scelto (variabile aleatoria);
> - $\Omega = [a,b]$;
> - $\mathcal{F} = \text{famiglia di sottoinsiemi misurabili di } \Omega$.
> 
> Per ogni sottointervallo $[s,t] \subset [a,b]$, definiamo la probabilità geometrica:
> $$
> \begin{aligned}
> \mathbb{P}([s,t]) = \frac{t-s}{b-a}
> \end{aligned}
> $$
> La probabilità associata a un singolo punto $x_0$ è nulla:
> $$
> \begin{aligned}
> \mathbb{P}(\{x_0\}) = \lim_{\varepsilon \to 0} \mathbb{P}([x_0 - \varepsilon, x_0 + \varepsilon]) = 0
> \end{aligned}
> $$
> La funzione di ripartizione $F: \mathbb{R} \to [0,1]$ è data da $F(x) = \mathbb{P}(\{X \le x\})$:
> $$
> \begin{aligned}
> F(x) = \begin{cases}
> 0 & x < a \\
> \frac{x-a}{b-a} & a \le x \le b \\
> 1 & x > b
> \end{cases}
> \end{aligned}
> $$
> Graficamente, $F(x)$ è nulla a sinistra di $a$, cresce linearmente da $0$ a $1$ nell'intervallo $[a,b]$, ed è identicamente pari a $1$ per $x > b$.

### Proprietà Fondamentali della Funzione di Ripartizione

> [!proposition] Proprietà della Funzione di Ripartizione
> Sia $F$ la funzione di ripartizione di una generica variabile aleatoria $X$. Valgono le seguenti proprietà:
> 1. **Monotonia non decrescente:**
> $$
> \begin{aligned}
> \forall x_1 < x_2 \implies F(x_2) - F(x_1) \ge 0
> \end{aligned}
> $$
> 2. **Limiti asintotici agli estremi:**
> $$
> \begin{aligned}
> \lim_{x \to -\infty} F(x) = 0, \quad \lim_{x \to +\infty} F(x) = 1
> \end{aligned}
> $$
> 3. **Probabilità degli intervalli semi-aperti e continuità da destra:**
> $$
> \begin{aligned}
> \forall x_1 < x_2, \quad \mathbb{P}(\{x_1 < X \le x_2\}) = F(x_2) - F(x_1)
> \end{aligned}
> $$
> e per la continuità da destra:
> $$
> \begin{aligned}
> \lim_{x_2 \to x_1^+} \left(F(x_2) - F(x_1)\right) = 0
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> **Dimostrazione della proprietà 1 (Monotonia):**
> Poiché $x_1 \le x_2$, sussiste l'inclusione insiemistica degli eventi:
> $$
> \begin{aligned}
> \{X \le x_1\} \subseteq \{X \le x_2\}
> \end{aligned}
> $$
> Applicando la proprietà della probabilità della differenza di eventi:
> $$
> \begin{aligned}
> \mathbb{P}\left(\{X \le x_2\} \setminus \{X \le x_1\}\right) &= \mathbb{P}(\{X \le x_2\}) - \mathbb{P}(\{X \le x_1\}) \\
> &= F(x_2) - F(x_1) \ge 0
> \end{aligned}
> $$
> Pertanto $F(x_2) \ge F(x_1)$, dimostrando la monotonia non decrescente. $\blacksquare$

## Variabili Aleatorie Discrete

> [!definition] Variabile Aleatoria Discreta e Densità Discreta
> Dico che la variabile aleatoria $X$ è **discreta** se esiste un insieme $S \subset \mathbb{R}$ al più numerabile tale che:
> $$
> \begin{aligned}
> \exists S \subset \mathbb{R} : \mathrm{card}(S) \le \mathrm{card}(\mathbb{N}) \ \land \ \mathbb{P}\{X \in S\} = 1
> \end{aligned}
> $$
> In tal caso definisco **densità di probabilità** (o funzione di massa di probabilità) di $X$ la funzione:
> $$
> \begin{aligned}
> p_X: S \to [0,1], \quad p_X(x) = \mathbb{P}\{X = x\}
> \end{aligned}
> $$

> [!proposition] Proprietà della Densità di Probabilità Discreta
> La densità di probabilità discreta $p_X$ soddisfa:
> 1. **Positività:**
> $$
> \begin{aligned}
> p_X(x) \ge 0 \quad \forall x \in S
> \end{aligned}
> $$
> 2. **Normalizzazione:**
> $$
> \begin{aligned}
> \sum_{x \in S} p_X(x) = 1
> \end{aligned}
> $$

> [!note] Probabilità degli Eventi tramite Somma della Densità
> Per qualsiasi insieme $A \subseteq \mathbb{R}$, la probabilità della controimmagine è data da:
> $$
> \begin{aligned}
> \mathbb{P}(X^{-1}(A)) = \sum_{x \in A \cap S} p_X(x)
> \end{aligned}
> $$

> [!note] Relazione tra Funzione di Ripartizione e Densità Discreta
> La funzione di ripartizione $F_X(x)$ si ricava sommando la densità discreta su tutti i punti di supporto minori o uguali a $x$:
> $$
> \begin{aligned}
> F_X(x) = \mathbb{P}(X \le x) = \sum_{y \in S, \ y \le x} p_X(y)
> \end{aligned}
> $$
> Viceversa, il valore puntuale della densità $p_X(x)$ corrisponde all'ampiezza del salto di $F$ in $x$:
> $$
> \begin{aligned}
> p_X(x) &= \mathbb{P}\{X = x\} \\
> &= \lim_{\varepsilon \to 0^+} \mathbb{P}\{x - \varepsilon < X \le x\} \\
> &= \lim_{\varepsilon \to 0^+} \left[\mathbb{P}\{X \le x\} - \mathbb{P}\{X \le x - \varepsilon\}\right] \\
> &= \lim_{\varepsilon \to 0^+} \left[F(x) - F(x - \varepsilon)\right] \\
> &= F(x) - \lim_{\varepsilon \to 0^+} F(x - \varepsilon)
> \end{aligned}
> $$

## Valore Atteso (Media)

> [!definition] Valore Atteso di una Variabile Aleatoria Discreta
> Sia $X$ una variabile aleatoria discreta con densità di probabilità $p_X: S \to [0,1]$.
> Definisco **media** o **valore atteso** (*expected value*) di $X$:
> $$
> \begin{aligned}
> \mathbb{E}[X] = \sum_{x \in S} x \, p_X(x)
> \end{aligned}
> $$
> laddove tale serie (se $S$ è infinito numerabile) converge assolutamente.

> [!example] Valore Atteso nel Lancio di un Dado Singolo
> Per un dado regolare a $6$ facce: $\Omega = \{1,\dots,6\}$, $S = \{1,\dots,6\}$, con densità uniforme:
> $$
> \begin{aligned}
> p_X(x) = \frac{1}{6} \quad \forall x \in S
> \end{aligned}
> $$
> Il valore atteso vale:
> $$
> \begin{aligned}
> \mathbb{E}[X] = \sum_{x=1}^6 x \cdot \frac{1}{6} = \frac{1+2+3+4+5+6}{6} = \frac{21}{6} = \frac{7}{2}
> \end{aligned}
> $$

> [!definition] Valore Atteso di una Trasformazione $g(X)$
> Sia $X$ una variabile aleatoria discreta con densità $p_X: S \to [0,1]$. Data una funzione reale $g: \mathbb{R} \to \mathbb{R}$, si definisce:
> $$
> \begin{aligned}
> \mathbb{E}[g(X)] = \sum_{x \in S} g(x) p_X(x)
> \end{aligned}
> $$
> sotto l'ipotesi che tale serie converga assolutamente.

> [!note] Densità di $g(X)$ e Sostituzione
> Se la trasformazione $g$ è iniettiva, la densità della variabile trasformata soddisfa:
> $$
> \begin{aligned}
> p_{g(X)}(x) = \mathbb{P}\{g(X) = g(x)\} = \mathbb{P}\{X = x\} = p_X(x)
> \end{aligned}
> $$
> Se $g$ non è iniettiva, si può comunque procedere per sostituzione raggruppando le preimmagini che producono lo stesso valore.

> [!example] Momento Secondo del Lancio del Dado
> Considerando nuovamente il lancio del dado con $g(x) = x^2$:
> $$
> \begin{aligned}
> \mathbb{E}[X^2] = \sum_{x=1}^6 x^2 \cdot \frac{1}{6} = \frac{1+4+9+16+25+36}{6} = \frac{91}{6}
> \end{aligned}
> $$

> [!proposition] Linearità del Valore Atteso
> L'operatore $\mathbb{E}$ è un funzionale lineare nello spazio delle variabili aleatorie discrete, ovvero:
> $$
> \begin{aligned}
> \forall a,b \in \mathbb{R}, \quad \mathbb{E}[aX + b] = a\mathbb{E}[X] + b
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Per definizione di valore atteso di una funzione di variabile aleatoria:
> $$
> \begin{aligned}
> \mathbb{E}[aX + b] = \sum_{x \in S} (ax+b) p_X(x)
> \end{aligned}
> $$
> Essendo la serie assolutamente convergente, possiamo spezzare la sommatoria:
> $$
> \begin{aligned}
> \sum_{x \in S} (ax+b) p_X(x) &= \sum_{x \in S} ax \, p_X(x) + \sum_{x \in S} b \, p_X(x) \\
> &= a \sum_{x \in S} x \, p_X(x) + b \sum_{x \in S} p_X(x) \\
> &= a \mathbb{E}[X] + b
> \end{aligned}
> $$
> dove si è sfruttata la condizione di normalizzazione $\sum_{x \in S} p_X(x) = 1$. $\blacksquare$

## Varianza e Deviazione Standard

> [!definition] Varianza e Deviazione Standard
> Sia $X: \Omega \to \mathbb{R}$ una variabile aleatoria discreta.
> Si definisce **varianza** di $X$ il valore:
> $$
> \begin{aligned}
> \mathbb{V}[X] &= \mathbb{E}\left[\left(X - \mathbb{E}[X]\right)^2\right] \\
> &= \sum_{x \in S} (x - \mathbb{E}[X])^2 p_X(x) \ge 0
> \end{aligned}
> $$
> Il valore $\sqrt{\mathbb{V}[X]}$ è detto **deviazione standard** (o scarto quadratico medio) di $X$.

### Proprietà Fondamentali della Varianza

> [!proposition] Proprietà della Varianza
> Valgono le seguenti proprietà:
> 1. **Trasformazioni affini:**
> $$
> \begin{aligned}
> \forall a,b \in \mathbb{R}, \quad \mathbb{V}[aX+b] = a^2 \mathbb{V}[X]
> \end{aligned}
> $$
> 2. **Formula di calcolo alternativa:**
> $$
> \begin{aligned}
> \mathbb{V}[X] = \mathbb{E}[X^2] - \mathbb{E}[X]^2
> \end{aligned}
> $$
> 3. **Non-negatività e annullamento:**
> $$
> \begin{aligned}
> \mathbb{V}[X] = 0 \iff \mathbb{P}\{X = \mathbb{E}[X]\} = 1
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> **Dimostrazione della proprietà 1:**
> Sfruttando la linearità del valore atteso $\mathbb{E}[aX+b] = a\mathbb{E}[X] + b$:
> $$
> \begin{aligned}
> \mathbb{V}[aX+b] &= \mathbb{E}\left[\left((aX+b) - \mathbb{E}[aX+b]\right)^2\right] \\
> &= \mathbb{E}\left[\left(aX + b - a\mathbb{E}[X] - b\right)^2\right] \\
> &= \mathbb{E}\left[\left(a(X - \mathbb{E}[X])\right)^2\right] \\
> &= \mathbb{E}\left[a^2 (X - \mathbb{E}[X])^2\right] \\
> &= a^2 \mathbb{E}\left[(X - \mathbb{E}[X])^2\right] \\
> &= a^2 \mathbb{V}[X]
> \end{aligned}
> $$
> 
> **Dimostrazione della proprietà 2:**
> Espandendo il quadrato di binomio all'interno dell'operatore valore atteso:
> $$
> \begin{aligned}
> \mathbb{E}\left[(X - \mathbb{E}[X])^2\right] &= \mathbb{E}\left[X^2 - 2\mathbb{E}[X]X + \mathbb{E}[X]^2\right] \\
> &= \mathbb{E}[X^2] - 2\mathbb{E}[X]\mathbb{E}[X] + \mathbb{E}[X]^2 \\
> &= \mathbb{E}[X^2] - 2\mathbb{E}[X]^2 + \mathbb{E}[X]^2 \\
> &= \mathbb{E}[X^2] - \mathbb{E}[X]^2
> \end{aligned}
> $$
> 
> **Dimostrazione della proprietà 3:**
> La varianza è espressa da una serie di termini a valori non negativi:
> $$
> \begin{aligned}
> \mathbb{V}[X] = \sum_{x \in S} (x - \mathbb{E}[X])^2 p_X(x) = 0
> \end{aligned}
> $$
> Una somma di termini non negativi è nulla se e solo se ciascun termine è nullo per tutti i punti con probabilità non nulla:
> $$
> \begin{aligned}
> &\iff \forall x \in S \text{ tale che } p_X(x) > 0, \quad x = \mathbb{E}[X] \\
> &\implies p_X(\mathbb{E}[X]) = 1
> \end{aligned}
> $$
> ovvero la variabile $X$ è degenere (costante quasi certamente). $\blacksquare$

## Disuguaglianza di Chebyshev

> [!theorem] Disuguaglianza di Chebyshev
> Sia $X: \Omega \to \mathbb{R}$ una variabile aleatoria con media finita $\mathbb{E}[X] =: \mu$ e varianza finita $\mathbb{V}[X] =: \sigma^2$.
> Vale che per ogni $\varepsilon > 0$:
> $$
> \begin{aligned}
> \mathbb{P}\{|X - \mu| > \varepsilon\} \le \frac{\sigma^2}{\varepsilon^2}
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Esprimiamo la probabilità come somma della densità sui valori che distano da $\mu$ più di $\varepsilon$:
> $$
> \begin{aligned}
> \mathbb{P}\{|X - \mu| > \varepsilon\} = \sum_{x \in S : |x-\mu| > \varepsilon} p_X(x)
> \end{aligned}
> $$
> Poiché per ogni $x$ appartenente alla regione di sommatoria $|x - \mu| > \varepsilon$, abbiamo:
> $$
> \begin{aligned}
> |x - \mu| > \varepsilon \iff \frac{|x-\mu|}{\varepsilon} > 1 \iff \frac{|x-\mu|^2}{\varepsilon^2} > 1
> \end{aligned}
> $$
> Possiamo pertanto maggiorare ciascun addendo:
> $$
> \begin{aligned}
> \sum_{x \in S : |x-\mu| > \varepsilon} p_X(x) &\le \sum_{x \in S : |x-\mu| > \varepsilon} \frac{|x-\mu|^2}{\varepsilon^2} p_X(x) \\
> &\le \frac{1}{\varepsilon^2} \sum_{x \in S} (x - \mu)^2 p_X(x) \\
> &= \frac{\sigma^2}{\varepsilon^2}
> \end{aligned}
> $$
> $\blacksquare$

> [!note] Forma con Scarti Multipli della Deviazione Standard
> Ponendo $\varepsilon = k\sigma$ con $k > 0$, la disuguaglianza assume la forma notevole:
> $$
> \begin{aligned}
> \mathbb{P}\{|X - \mu| > k\sigma\} \le \frac{1}{k^2}
> \end{aligned}
> $$

> [!example] Variabile Aleatoria con Media che Diverge (Serie Telescopica/Armonica)
> Da Analisi I è noto che:
> $$
> \begin{aligned}
> \sum_{n=1}^{+\infty} \frac{1}{n(n+1)} = 1
> \end{aligned}
> $$
> Ponendo lo spazio dei valori $S = \mathbb{N}$, la funzione:
> $$
> \begin{aligned}
> p_X(n) = \frac{1}{n(n+1)}
> \end{aligned}
> $$
> definisce una densità di probabilità valida.
> Tuttavia, se $X$ è la variabile aleatoria associata a tale densità, il suo valore atteso risulta infinito:
> $$
> \begin{aligned}
> \mathbb{E}[X] = \sum_{n=1}^{+\infty} n \frac{1}{n(n+1)} = \sum_{n=1}^{+\infty} \frac{1}{n+1} = +\infty \quad \text{(diverge)}
> \end{aligned}
> $$

## Densità Notevoli Discrete

### Densità di Bernoulli e Densità Binomiale

> [!definition] Densità di Bernoulli
> Si considerano $n \in \mathbb{N}$ prove indipendenti aventi ciascuna probabilità $p \in (0,1)$ di successo.
> Sia $X_i$ il risultato della $i$-esima prova come variabile aleatoria discreta:
> $$
> \begin{aligned}
> X_i \in \{0,1\} \quad \forall i = 1, \dots, n
> \end{aligned}
> $$
> La densità di probabilità di $X_i$ è:
> $$
> \begin{aligned}
> p_{X_i}(0) = 1-p, \quad p_{X_i}(1) = p
> \end{aligned}
> $$
> Il suo valore atteso vale:
> $$
> \begin{aligned}
> \mathbb{E}[X_i] = 0 \cdot (1-p) + 1 \cdot p = p
> \end{aligned}
> $$
> Tale legge $p_{X_i}$ si definisce **densità di Bernoulli** con parametro $p$ e si indica con $B(1,p)$.

> [!definition] Densità Binomiale (Bernoulli $B(n,p)$)
> Sia $S_n$ la variabile aleatoria che conta il numero totale di successi ottenuti nelle $n$ prove indipendenti:
> $$
> \begin{aligned}
> S_n = \sum_{i=1}^n X_i
> \end{aligned}
> $$
> La sua densità di probabilità è data da:
> $$
> \begin{aligned}
> p_{S_n}(k) = \mathbb{P}\{S_n = k\} = \binom{n}{k} p^k (1-p)^{n-k}, \quad 0 \le k \le n
> \end{aligned}
> $$
> Essa prende il nome di **densità Binomiale** (o densità di Bernoulli) $B(n,p)$.
> 
> Per linearità del valore atteso:
> $$
> \begin{aligned}
> \mathbb{E}[S_n] = \mathbb{E}\left[\sum_{i=1}^n X_i\right] = \sum_{i=1}^n \mathbb{E}[X_i] = \sum_{i=1}^n p = np
> \end{aligned}
> $$
> Si dimostra inoltre che:
> $$
> \begin{aligned}
> \mathbb{V}[S_n] = np(1-p)
> \end{aligned}
> $$

### Densità di Poisson

> [!definition] Densità di Poisson con Parametro $\lambda$
> Sia $\lambda > 0$. Si definisce **densità di Poisson** con parametro $\lambda$, indicata con $\mathcal{P}(\lambda)$, la densità discreta sui valori $k \in \mathbb{N} \cup \{0\}$:
> $$
> \begin{aligned}
> p_X(k) := e^{-\lambda} \frac{\lambda^k}{k!} =: \mathcal{P}(\lambda)
> \end{aligned}
> $$
> 
> **Verifica della normalizzazione:**
> Sfruttando lo sviluppo in serie esponenziale $\sum_{k=0}^{+\infty} \frac{\lambda^k}{k!} = e^\lambda$:
> $$
> \begin{aligned}
> \sum_{k \ge 0} e^{-\lambda} \frac{\lambda^k}{k!} = e^{-\lambda} \sum_{k \ge 0} \frac{\lambda^k}{k!} = e^{-\lambda} e^\lambda = 1
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \implies \sum_{k \ge 0} p(k) = 1
> \end{aligned}
> $$

## Distribuzioni Discrete: Poisson e Geometrica

### Proprietà della Distribuzione di Poisson

Il valore atteso di una variabile aleatoria di Poisson $X \sim \mathcal{P}(\lambda)$ con parametro $\lambda > 0$ è dato da:
$$
\begin{aligned}
\mathbb{E}[X] &= \sum_{k=0}^{+\infty} k e^{-\lambda} \frac{\lambda^k}{k!} = e^{-\lambda} \sum_{k=1}^{+\infty} \frac{\lambda^k}{(k-1)!} = \lambda e^{-\lambda} \sum_{k=1}^{+\infty} \frac{\lambda^{k-1}}{(k-1)!} \\
&= \lambda e^{-\lambda} e^{\lambda} = \lambda
\end{aligned}
$$

Si verifica in modo analogo che anche la varianza coincide con il parametro:
$$
\begin{aligned}
\mathbb{V}[X] = \lambda
\end{aligned}
$$

Per determinare la moda $\bar{k}$, definita come il valore che massimizza la probabilità discreta:
$$
\begin{aligned}
\text{moda} = \bar{k}: \quad p(\bar{k}) = \max_{k \ge 0} P(k)
\end{aligned}
$$
si analizza la disuguaglianza tra probabilità in valori consecutivi $P(k) \le P(k+1)$:
$$
\begin{aligned}
P(k) \le P(k+1) &\iff e^{-\lambda} \frac{\lambda^k}{k!} \le e^{-\lambda} \frac{\lambda^{k+1}}{(k+1)!} \\
&\iff e^{-\lambda} \frac{\lambda^k}{k!} \le e^{-\lambda} \lambda \frac{\lambda^k}{(k+1)k!} \\
&\iff 1 \le \frac{\lambda}{k+1} \iff k+1 \le \lambda
\end{aligned}
$$

Si trova quindi che la moda $\bar{k}$ è l'intero più vicino a $\lambda$.

> [!note] Profilo della distribuzione
> Come istogramma, la distribuzione di Poisson assomiglia molto alla distribuzione binomiale (presenta un profilo unimodale con picco attorno a $\lambda$).

### Approssimazione Binomiale - Poisson

> [!proposition] Approssimazione Binomiale - Poisson
> Sia $X$ una variabile aleatoria con densità binomiale $B(n, p_n)$.
> Se vale che $n p_n \to \lambda$, si può approssimare $B(n, p_n)$ con la distribuzione di Poisson $\mathcal{P}(\lambda)$.
> Più precisamente, se:
> $$
> \begin{aligned}
> n p_n \xrightarrow{n \to +\infty} \lambda \implies B(n, p_n) \xrightarrow{n \to +\infty} \mathcal{P}(\lambda)
> \end{aligned}
> $$

Pertanto la distribuzione di Poisson è detta anche distribuzione degli "eventi rari" perché, per $n \to +\infty$, si ha $p_n \to 0$.

> [!quote]- Dimostrazione
> La probabilità di ottenere $k$ successi in $n$ prove secondo la binomiale $B(n, p_n)$ è data da:
> $$
> \begin{aligned}
> \binom{n}{k} p_n^k (1 - p_n)^{n-k} = \frac{n(n-1)\dots(n-k+1)}{k!} p_n^k (1 - p_n)^{n-k}
> \end{aligned}
> $$
> Poiché per ipotesi $n p_n \to \lambda$, si ha per la probabilità individuale di successo:
> $$
> \begin{aligned}
> p_n \overset{n\to+\infty}{\sim} \frac{\lambda}{n} + o\left(\frac{1}{n}\right)
> \end{aligned}
> $$
> Sostituendo questa espressione asintotica:
> $$
> \begin{aligned}
> B(n, p_n) &\overset{n\to+\infty}{\sim} \frac{n(n-1)\dots(n-k+1)}{k!} \left(\frac{\lambda}{n}\right)^k \left(1 - \frac{\lambda}{n}\right)^{n-k} \\
> &= \frac{n(n-1)\dots(n-k+1)}{k!} \left(\frac{\lambda}{n}\right)^k \left(1 - \frac{\lambda}{n}\right)^n \left(1 - \frac{\lambda}{n}\right)^{-k}
> \end{aligned}
> $$
> Esaminando il comportamento limite dei singoli fattori:
> $$
> \begin{aligned}
> \left(1 - \frac{\lambda}{n}\right)^n \xrightarrow{n\to+\infty} e^{-\lambda}, \qquad \left(1 - \frac{\lambda}{n}\right)^{-k} \xrightarrow{n\to+\infty} 1
> \end{aligned}
> $$
> Riorganizzando i termini:
> $$
> \begin{aligned}
> B(n, p_n) &\to \frac{e^{-\lambda}\lambda^k}{k!} \cdot \frac{n(n-1)\dots(n-k+1)}{n^k}
> \end{aligned}
> $$
> Essendo sia il numeratore $n(n-1)\dots(n-k+1)$ sia il denominatore $n^k$ polinomi in $n$ di grado $k$ con coefficiente di testa pari a 1:
> $$
> \begin{aligned}
> \frac{n(n-1)\dots(n-k+1)}{n^k} \xrightarrow{n\to+\infty} 1
> \end{aligned}
> $$
> Il prodotto converge quindi a:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \binom{n}{k} p_n^k (1 - p_n)^{n-k} = e^{-\lambda} \frac{\lambda^k}{k!}
> \end{aligned}
> $$
> che è esattamente la funzione di probabilità della densità di Poisson $\mathcal{P}(\lambda)$. $\blacksquare$

> [!note] Regola empirica di applicazione
> Si usa solitamente questa regola empirica per "$n$ grande, $p_n$ piccolo":
> $$
> \begin{aligned}
> n \ge 20, \quad n p_n \ge 0.5
> \end{aligned}
> $$

### Distribuzione Geometrica

> [!definition] Densità geometrica di parametro $p$
> Si definisce variabile aleatoria con densità geometrica di parametro $p \in (0, 1)$ la distribuzione discreta con densità di probabilità:
> $$
> \begin{aligned}
> P_X(k) := p (1 - p)^{k-1}, \quad k \in \mathbb{N}
> \end{aligned}
> $$

È la distribuzione associata a una successione di infinite prove indipendenti, ciascuna con probabilità di successo $p$, dove:
$$
\begin{aligned}
X = \text{"numero della prova in cui si verifica il primo successo"}
\end{aligned}
$$

## Variabili Aleatorie Continue

### Definizione di Variabile Aleatoria Assolutamente Continua e Densità

> [!definition] Variabile aleatoria assolutamente continua
> Una variabile aleatoria $X: \Omega \to \mathbb{R}$ si dice **assolutamente continua** se per ogni coppia di estremi $a, b \in \overline{\mathbb{R}}$:
> $$
> \begin{aligned}
> \mathbb{P}\{X \in [a, b]\} = \int_a^b f_X(x) \, dx
> \end{aligned}
> $$
> per qualche funzione $f_X$ integrabile su $[a, b]$, chiamata **densità** di $X$.

### Proprietà della Densità di Probabilità

> [!proposition] Proprietà di $f_X$
> Ogni funzione di densità di probabilità $f_X$ soddisfa:
> 1. Condizione di normalizzazione:
> $$
> \begin{aligned}
> \int_{-\infty}^{+\infty} f_X(x) \, dx = \mathbb{P}\{X \in \mathbb{R}\} = 1
> \end{aligned}
> $$
> 2. Non-negatività:
> $$
> \begin{aligned}
> f_X(x) \ge 0 \quad \forall x \in \mathbb{R}
> \end{aligned}
> $$

### Funzione di Ripartizione per Variabili Continue

> [!definition] Funzione di ripartizione (o densità cumulata)
> Sia $X$ una variabile aleatoria continua con densità di probabilità $f_X$. Si definisce **funzione di ripartizione** (o densità cumulata) la funzione $F_X: \mathbb{R} \to [0, 1]$ data da:
> $$
> \begin{aligned}
> F_X(x) = \mathbb{P}\{X \le x\} = \int_{-\infty}^x f_X(t) \, dt
> \end{aligned}
> $$

> [!note] Legame differenziale fondamentale
> Per il teorema fondamentale del calcolo integrale, se $f_X$ è continua nel punto $x$:
> $$
> \begin{aligned}
> f_X(x) = \frac{d}{dx} F_X(x)
> \end{aligned}
> $$

> [!note] Probabilità nei punti singoli
> Per una variabile aleatoria continua, la probabilità che assuma un singolo valore prefissato è identicamente nulla:
> $$
> \begin{aligned}
> \mathbb{P}\{X = x_0\} = \int_{\{x_0\}} f_X(x) \, dx = 0 \quad \forall x_0 \in \mathbb{R}
> \end{aligned}
> $$

### Esempio: Densità Esponenziale e Funzione di Ripartizione

> [!example] Densità esponenziale
> Una variabile aleatoria $X$ ha densità esponenziale con parametro $\lambda > 0$ (simbolo $\mathcal{E}(\lambda)$) se la sua densità è:
> $$
> \begin{aligned}
> f_X(x) = \begin{cases}
> \lambda e^{-\lambda x} & \text{se } x \ge 0 \\
> 0 & \text{se } x < 0
> \end{cases}
> \end{aligned}
> $$
> Calcolando la funzione di ripartizione:
> $$
> \begin{aligned}
> F_X(x) &= \int_{-\infty}^x f_X(t) \, dt = \begin{cases}
> 0 & \text{se } x \le 0 \\
> \int_0^x \lambda e^{-\lambda t} \, dt & \text{se } x > 0
> \end{cases} \\
> &= \begin{cases}
> 0 & \text{se } x \le 0 \\
> -\left[e^{-\lambda x} - 1\right] & \text{se } x > 0
> \end{cases} = \begin{cases}
> 0 & \text{se } x \le 0 \\
> 1 - e^{-\lambda x} & \text{se } x > 0
> \end{cases}
> \end{aligned}
> $$
> La distribuzione esponenziale descrive accuratamente il decadimento radioattivo e i tempi di attesa per il verificarsi di eventi privi di memoria.

### Trasformazioni di Variabili Aleatorie Continue (Caso Non Lineare)

> [!example] Calcolo della densità della trasformazione quadratica $Y = X^2$
> Sia $X \sim f_X$. Se definiamo $Y = X^2$, si determina la densità $f_Y$.
> Si calcola prima la funzione di ripartizione $F_Y(y) = \mathbb{P}\{Y \le y\}$:
> Per $y \le 0$:
> $$
> \begin{aligned}
> F_Y(y) = 0
> \end{aligned}
> $$
> Per $y > 0$:
> $$
> \begin{aligned}
> F_Y(y) &= \mathbb{P}\{X^2 \le y\} = \mathbb{P}\{-\sqrt{y} \le X \le \sqrt{y}\} = \int_{-\sqrt{y}}^{\sqrt{y}} f_X(x) \, dx
> \end{aligned}
> $$
> Scomponendo l'integrale:
> $$
> \begin{aligned}
> \int_{-\sqrt{y}}^{\sqrt{y}} f_X(x) \, dx = \int_{-\infty}^{\sqrt{y}} f_X(x) \, dx - \int_{-\infty}^{-\sqrt{y}} f_X(x) \, dx
> \end{aligned}
> $$
> Derivando $F_Y(y)$ rispetto a $y$:
> $$
> \begin{aligned}
> f_Y(y) &= \frac{d}{dy} F_Y(y) = \frac{1}{2\sqrt{y}} f_X(\sqrt{y}) - \left(-\frac{1}{2\sqrt{y}}\right) f_X(-\sqrt{y}) \\
> &= \frac{1}{2\sqrt{y}} f_X(\sqrt{y}) + \frac{1}{2\sqrt{y}} f_X(-\sqrt{y}) \\
> &= \frac{f_X(-\sqrt{y}) + f_X(\sqrt{y})}{2\sqrt{y}}
> \end{aligned}
> $$
> Analogamente per altre trasformazioni si conduce il calcolo nello stesso modo, passando attraverso la funzione di ripartizione.

### Valore Atteso e Momenti per Variabili Continue

> [!definition] Media di una variabile aleatoria continua
> Si dice **media** (o valore atteso) di una variabile aleatoria continua $X$ con densità $f_X$:
> $$
> \begin{aligned}
> \mathbb{E}[X] := \int_{-\infty}^{+\infty} x f_X(x) \, dx
> \end{aligned}
> $$

### Esempio: Densità Uniforme Continua

> [!example] Variabile aleatoria uniforme su $[a, b]$
> Sia $X$ con densità uniforme su $[a, b]$:
> $$
> \begin{aligned}
> f_X(x) = \begin{cases}
> \frac{1}{b-a} & \text{se } x \in [a, b] \\
> 0 & \text{se } x \notin [a, b]
> \end{cases}
> \end{aligned}
> $$
> Il valore atteso vale:
> $$
> \begin{aligned}
> \mathbb{E}[X] &= \int_{-\infty}^{+\infty} x f_X(x) \, dx = \int_a^b \frac{x}{b-a} \, dx \\
> &= \frac{1}{b-a} \left[ \frac{b^2}{2} - \frac{a^2}{2} \right] = \frac{b^2 - a^2}{2(b-a)} = \frac{a+b}{2} \quad \text{(punto medio)}
> \end{aligned}
> $$
> Il momento secondo vale:
> $$
> \begin{aligned}
> \mathbb{E}[X^2] &= \int_{-\infty}^{+\infty} x^2 f_X(x) \, dx = \frac{1}{b-a} \left[ \frac{b^3}{3} - \frac{a^3}{3} \right] \\
> &= \frac{a^2 + ab + b^2}{3}
> \end{aligned}
> $$

### Varianza e Proprietà del Valore Atteso

Come per le variabili discrete, per qualsiasi funzione misurabile $g(X)$ si ha:
$$
\begin{aligned}
\mathbb{E}[g(X)] = \int_{-\infty}^{+\infty} g(x) f_X(x) \, dx
\end{aligned}
$$

> [!definition] Varianza di una variabile aleatoria continua
> Si definisce **varianza** della variabile aleatoria continua $X$:
> $$
> \begin{aligned}
> \mathbb{V}[X] = \mathbb{E}[X^2] - \mathbb{E}[X]^2
> \end{aligned}
> $$

Valgono per la media le stesse proprietà del caso discreto, ovvero:
- Linearità:
$$
\begin{aligned}
\mathbb{E}[aX + b] = a\mathbb{E}[X] + b
\end{aligned}
$$
- Definizione mediante scarto quadratico:
$$
\begin{aligned}
\mathbb{V}[X] = \mathbb{E}\left[(X - \mathbb{E}[X])^2\right]
\end{aligned}
$$

### Quantili per Distribuzioni Continue

> [!definition] Quantile di ordine $\alpha$
> Si dice **quantile di ordine $\alpha \in (0, 1)$** della densità $f_X(x)$ un numero $X_\alpha$ tale che:
> $$
> \begin{aligned}
> F_X(X_\alpha) = \alpha \quad \text{per la variabile aleatoria } X
> \end{aligned}
> $$

Se $X$ è discreta ed assume i valori $x_1, \dots, x_n$ con probabilità uniforme:
$$
\begin{aligned}
\forall i = 1, \dots, n: \quad f(x_i) = \frac{1}{n}
\end{aligned}
$$
allora i quantili corrispondono esattamente a quelli della statistica descrittiva.

## Trasformazioni Affini e Famiglie di Distribuzioni Continue

### Densità di una Trasformazione Affine

Sia $X$ una variabile aleatoria continua e $f_X$ la sua densità. Qual è la densità della trasformazione affine $aX + b$?

Sia $Y := aX + b$.
Se $a > 0$:
$$
\begin{aligned}
F_Y(y) &= \mathbb{P}\{aX + b \le y\} = \mathbb{P}\left\{X \le \frac{y-b}{a}\right\} = \int_{-\infty}^{\frac{y-b}{a}} f_X(x) \, dx
\end{aligned}
$$
Derivando rispetto a $y$:
$$
\begin{aligned}
f_Y(y) &= \frac{d}{dy} \int_{-\infty}^{\frac{y-b}{a}} f_X(x) \, dx = f_X\left(\frac{y-b}{a}\right) \cdot \frac{1}{a}
\end{aligned}
$$

Se $a < 0$:
$$
\begin{aligned}
f_Y(y) = -\frac{1}{a} f_X\left(\frac{y-b}{a}\right)
\end{aligned}
$$

Combinando le due espressioni per ogni $a \neq 0$:
$$
\begin{aligned}
f_{aX+b}(y) = \frac{1}{|a|} f_X\left(\frac{y-b}{a}\right)
\end{aligned}
$$

### Distribuzione Esponenziale: Valore Atteso e Varianza

Consideriamo la densità esponenziale di parametro $\lambda$: $\mathcal{E}(\lambda)$:
$$
\begin{aligned}
f_X(x) = \begin{cases}
\lambda e^{-\lambda x} & \text{se } x \ge 0 \\
0 & \text{se } x < 0
\end{cases}
\end{aligned}
$$

Il valore atteso si calcola integrando per parti:
$$
\begin{aligned}
\mathbb{E}[X] &= \int_0^{+\infty} x \lambda e^{-\lambda x} \, dx
\end{aligned}
$$
Ponendo $f(x) = x \implies f'(x) = 1$ e $g'(x) = \lambda e^{-\lambda x} \implies g(x) = -e^{-\lambda x}$:
$$
\begin{aligned}
\mathbb{E}[X] &= \left[-x e^{-\lambda x}\right]_0^{+\infty} + \int_0^{+\infty} e^{-\lambda x} \, dx \\
&= [0 - 0] + \left[-\frac{e^{-\lambda x}}{\lambda}\right]_0^{+\infty} = \frac{1}{\lambda}
\end{aligned}
$$

Per il calcolo della varianza $\mathbb{V}[X] = \mathbb{E}[X^2] - \frac{1}{\lambda^2}$, si valuta il momento secondo per integrazione tabulare:
- $x^2 \searrow \lambda e^{-\lambda x}$ con primitiva $-e^{-\lambda x}$
- $2x \searrow -e^{-\lambda x}$ con primitiva $\frac{e^{-\lambda x}}{\lambda}$
- $2 \searrow \frac{e^{-\lambda x}}{\lambda}$ con primitiva $-\frac{e^{-\lambda x}}{\lambda^2}$
- $0 \searrow -\frac{e^{-\lambda x}}{\lambda^2}$

Ne risulta:
$$
\begin{aligned}
\mathbb{V}[X] &= \mathbb{E}[X^2] - \frac{1}{\lambda^2} = \int_0^{+\infty} x^2 \lambda e^{-\lambda x} \, dx - \frac{1}{\lambda^2} \\
&= \left[ -x^2 e^{-\lambda x} - 2x \frac{e^{-\lambda x}}{\lambda} - 2 \frac{e^{-\lambda x}}{\lambda^2} \right]_0^{+\infty} - \frac{1}{\lambda^2} \\
&= \frac{2}{\lambda^2} - \frac{1}{\lambda^2} = \frac{1}{\lambda^2}
\end{aligned}
$$

### Distribuzione Normale (Gaussiana): Definizione e Parametri

> [!definition] Densità Normale o Gaussiana
> La distribuzione normale (o gaussiana) ha parametri $\mu \in \mathbb{R}$ e $\sigma > 0$, indicata con $N(\mu, \sigma)$ (o $N(\mu, \sigma^2)$).
> La sua funzione di densità è:
> $$
> \begin{aligned}
> f_X(x) = \frac{1}{\sqrt{2\pi}\sigma} e^{-\frac{(x-\mu)^2}{2\sigma^2}}
> \end{aligned}
> $$

> [!note] Espressione della funzione di ripartizione
> La funzione di ripartizione NON si può esprimere mediante funzioni elementari:
> $$
> \begin{aligned}
> F_X(x) = \frac{1}{\sqrt{2\pi}\sigma} \int_{-\infty}^x e^{-\frac{(t-\mu)^2}{2\sigma^2}} \, dt
> \end{aligned}
> $$

### Calcolo della Media della Distribuzione Normale

Si calcola esplicitamente il valore atteso:
$$
\begin{aligned}
\mathbb{E}[X] &= \int_{-\infty}^{+\infty} x f_X(x) \, dx = \int_{-\infty}^{+\infty} \frac{x}{\sqrt{2\pi}\sigma} e^{-\frac{(x-\mu)^2}{2\sigma^2}} \, dx
\end{aligned}
$$
Operando il cambio di variabile:
$$
\begin{aligned}
t = \frac{x-\mu}{\sigma} \implies dx = \sigma \, dt, \quad x = \sigma t + \mu
\end{aligned}
$$
Si ottiene:
$$
\begin{aligned}
\mathbb{E}[X] &= \int_{-\infty}^{+\infty} \frac{\sigma t + \mu}{\sqrt{2\pi}\sigma} \sigma e^{-\frac{t^2}{2}} \, dt = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} (\sigma t + \mu) e^{-\frac{t^2}{2}} \, dt \\
&= \frac{\sigma}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} t e^{-\frac{t^2}{2}} \, dt + \frac{\mu}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} e^{-\frac{t^2}{2}} \, dt
\end{aligned}
$$
Il primo addendo è nullo poiché l'integrando $t e^{-t^2/2}$ è una funzione dispari:
$$
\begin{aligned}
\int_{-\infty}^{+\infty} t e^{-\frac{t^2}{2}} \, dt = 0
\end{aligned}
$$
Il secondo addendo corrisponde all'integrale della normale normalizzato ad 1:
$$
\begin{aligned}
\frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} e^{-\frac{t^2}{2}} \, dt = \int_{-\infty}^{+\infty} f_X(x) \, dx = 1
\end{aligned}
$$
Quindi:
$$
\begin{aligned}
\mathbb{E}[X] = \mu
\end{aligned}
$$

### Studio di Funzione della Densità Gaussiana

La derivata prima della densità $f_X(x)$ è:
$$
\begin{aligned}
f_X'(x) = \frac{\mu - x}{\sqrt{2\pi}\sigma^3} e^{-\frac{(x-\mu)^2}{2\sigma^2}} \implies f_X'(x) = 0 \iff x = \mu
\end{aligned}
$$
Quindi $x = \mu$ è l'unico punto stazionario.

La derivata seconda vale:
$$
\begin{aligned}
f_X''(x) &= -\frac{1}{\sqrt{2\pi}\sigma^3} e^{-\frac{(x-\mu)^2}{2\sigma^2}} + \frac{1}{\sqrt{2\pi}\sigma} \left(\frac{-(x-\mu)}{\sigma^2}\right)^2 e^{-\frac{(x-\mu)^2}{2\sigma^2}} \\
&= \left( \frac{(x-\mu)^2}{\sigma^4} - \frac{1}{\sigma^2} \right) \underbrace{\frac{1}{\sqrt{2\pi}\sigma} e^{-\frac{(x-\mu)^2}{2\sigma^2}}}_{f_X(x)}
\end{aligned}
$$
I punti di flesso si ricavano ponendo $f_X''(x) = 0$:
$$
\begin{aligned}
f_X''(x) = 0 \implies x = \mu \pm \sigma
\end{aligned}
$$
Nel punto stazionario $x = \mu$:
$$
\begin{aligned}
f_X''(\mu) = \left(-\frac{1}{\sigma^2}\right) f_X(\mu) < 0
\end{aligned}
$$
Pertanto $x = \mu$ è l'unico punto di estremo globale ed è un punto di massimo (poiché per definizione $f_X(x) \xrightarrow{x \to \pm\infty} 0$).

Caratteristiche geometriche del grafico:
- Punto di massimo: in $x = \mu$
- Punti di flesso: in $x = \mu - \sigma$ e $x = \mu + \sigma$
- Asintoto orizzontale: $y = 0$ per $x \to \pm\infty$

### Standardizzazione della Distribuzione Normale

Se $Y = aX + b$, la densità di $Y$ assume la forma:
$$
\begin{aligned}
f_Y(y) = \frac{1}{\sqrt{2\pi}\sigma|a|} e^{-\frac{\left(\frac{y-b}{a} - \mu\right)^2}{2\sigma^2}} = \frac{1}{\sqrt{2\pi}\sigma|a|} e^{-\frac{\left(\frac{y}{a} - \frac{b}{a} - \mu\right)^2}{2\sigma^2}}
\end{aligned}
$$
Scegliendo in particolare:
$$
\begin{aligned}
a = \frac{1}{\sigma}, \quad b = -\frac{\mu}{\sigma} \implies Y = \frac{X-\mu}{\sigma}
\end{aligned}
$$
si ottiene:
$$
\begin{aligned}
f_{\frac{X-\mu}{\sigma}}(y) &= \frac{1}{\sqrt{2\pi}} e^{-\frac{\left(\sigma y + \frac{\mu}{\sigma}\sigma - \mu\right)^2}{2\sigma^2}} = \frac{1}{\sqrt{2\pi}} e^{-\frac{y^2}{2}}
\end{aligned}
$$

> [!definition] Densità Normale Standard $N(0, 1)$
> La variabile standardizzata $Y = \frac{X-\mu}{\sigma}$ possiede densità normale standard:
> $$
> \begin{aligned}
> f_Y(y) = \frac{1}{\sqrt{2\pi}} e^{-\frac{y^2}{2}}
> \end{aligned}
> $$
> La funzione di ripartizione associata è indicata con:
> $$
> \begin{aligned}
> \Phi(y) := F_Y(y) = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^y e^{-\frac{t^2}{2}} \, dt
> \end{aligned}
> $$

### Varianza della Distribuzione Normale

Dato che $Y \sim N(0, 1)$ è simmetrica attorno all'origine:
$$
\begin{aligned}
\mathbb{E}[Y] = 0
\end{aligned}
$$
Esprimendo $X = \sigma Y + \mu$:
$$
\begin{aligned}
\mathbb{E}[X^2] &= \mathbb{E}\left[\sigma^2 Y^2 + 2\mu\sigma Y + \mu^2\right] = \sigma^2 \mathbb{E}[Y^2] + 2\mu\sigma \underbrace{\mathbb{E}[Y]}_{=0} + \mu^2 \\
&= \sigma^2 \mathbb{E}[Y^2] + \mu^2
\end{aligned}
$$
Il momento secondo $\mathbb{E}[Y^2]$ si valuta mediante integrazione per parti:
$$
\begin{aligned}
\mathbb{E}[Y^2] &= \frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} y^2 e^{-\frac{y^2}{2}} \, dy
\end{aligned}
$$
Ponendo $u(y) = y \implies u'(y) = 1$ e $v'(y) = y e^{-y^2/2} \implies v(y) = -e^{-y^2/2}$:
$$
\begin{aligned}
\mathbb{E}[Y^2] &= \frac{1}{\sqrt{2\pi}} \left[-y e^{-\frac{y^2}{2}}\right]_{-\infty}^{+\infty} + \underbrace{\frac{1}{\sqrt{2\pi}} \int_{-\infty}^{+\infty} e^{-\frac{y^2}{2}} \, dy}_{=1} \\
&= 0 + 1 = 1
\end{aligned}
$$
Ne segue che:
$$
\begin{aligned}
\mathbb{E}[X^2] = \sigma^2 \mathbb{E}[Y^2] + \mu^2 = \sigma^2 + \mu^2
\end{aligned}
$$
E la varianza vale:
$$
\begin{aligned}
\mathbb{V}[X] &= \mathbb{E}[X^2] - \mathbb{E}[X]^2 = \sigma^2 + \mu^2 - \mu^2 = \sigma^2
\end{aligned}
$$

> [!proposition] Parametri della distribuzione normale
> Per una variabile aleatoria normale $X \sim N(\mu, \sigma^2)$ si ha:
> $$
> \begin{aligned}
> \mathbb{E}[X] = \mu, \qquad \mathbb{V}[X] = \sigma^2
> \end{aligned}
> $$

### Calcolo delle Probabilità e Uso delle Tavole della Normale

Come calcolare la probabilità dell'intervallo $\mathbb{P}\{a \le X < b\}$?
Si ricorre alla procedura di standardizzazione:
$$
\begin{aligned}
\mathbb{P}\{a \le X < b\} &= \mathbb{P}\left\{\frac{a-\mu}{\sigma} \le \frac{X-\mu}{\sigma} < \frac{b-\mu}{\sigma}\right\} \\
&= \mathbb{P}\left\{\frac{a-\mu}{\sigma} \le Y < \frac{b-\mu}{\sigma}\right\} \\
&= \mathbb{P}\left\{Y < \frac{b-\mu}{\sigma}\right\} - \mathbb{P}\left\{Y < \frac{a-\mu}{\sigma}\right\} \\
&= \Phi\left(\frac{b-\mu}{\sigma}\right) - \Phi\left(\frac{a-\mu}{\sigma}\right)
\end{aligned}
$$

> [!note] Uso delle tabelle della distribuzione normale
> Le tavole indicano i valori di $\Phi(z)$ con precisione al secondo decimale di $z$, dove:
> $$
> \begin{aligned}
> z_1 = \frac{b-\mu}{\sigma}, \qquad z_2 = \frac{a-\mu}{\sigma}
> \end{aligned}
> $$
> Si possono usare le tavole "nei due sensi":
> 1. Diretto: $z \mapsto \Phi(z)$, per determinare il valore della funzione di ripartizione (probabilità cumulata) dato $z$.
> 2. Inverso: $\Phi(z) \mapsto z$, per trovare il quantile o valore critico $z$ corrispondente a una prefissata probabilità cumulata.

### Quantili e Simmetria della Normale Standard

> [!example] Trovare i quartili di $N(0, 1)$
> - $1^\circ$ quartile:
> $$
> \begin{aligned}
> z: \Phi(z) = \frac{1}{4} \leadsto z \approx -0.68
> \end{aligned}
> $$
> - Mediana:
> $$
> \begin{aligned}
> z: \Phi(z) = \frac{1}{2} \leadsto z = 0
> \end{aligned}
> $$
> - $3^\circ$ quartile:
> $$
> \begin{aligned}
> z: \Phi(z) = \frac{3}{4} \leadsto z \approx 0.68
> \end{aligned}
> $$

> [!note] Valori negativi e simmetria
> Sulle tavole si riportano unicamente i valori di $\Phi(z)$ per $z \ge 0$. Per $z < 0$ si calcola $\Phi(-z)$ per simmetria:
> $$
> \begin{aligned}
> \Phi(-z) = 1 - \Phi(z)
> \end{aligned}
> $$
> Inoltre la corrispondenza è invertibile in quanto:
> $$
> \begin{aligned}
> z \longleftrightarrow \Phi(z) \quad \text{è biiettiva}
> \end{aligned}
> $$

### Esempio Applicativo di Standardizzazione

> [!example] Calcolo di probabilità per $X \sim N(3.2, \, 7.6)$
> Sia $X \sim N(3.2, \, 7.6)$ con $\mu = 3.2$ e varianza $\sigma^2 = 7.6$, da cui la deviazione standard è $\sigma = \sqrt{7.6}$.
> Calcolare $\mathbb{P}\{0 < X < 5.1\}$:
> $$
> \begin{aligned}
> \mathbb{P}\{0 < X < 5.1\} &= \mathbb{P}\left\{\frac{0 - 3.2}{\sqrt{7.6}} < \frac{X - 3.2}{\sqrt{7.6}} < \frac{5.1 - 3.2}{\sqrt{7.6}}\right\} \\
> &= \mathbb{P}\left\{\frac{-3.2}{\sqrt{7.6}} < Y < \frac{5.1 - 3.2}{\sqrt{7.6}}\right\} \\
> &= \Phi\left(\frac{5.1 - 3.2}{\sqrt{7.6}}\right) - \Phi\left(\frac{-3.2}{\sqrt{7.6}}\right)
> \end{aligned}
> $$

## Distribuzione Normale (Gaussiana)

### Intervalli Notevoli e Regola dei Sigma

> [!example] Calcolo di Probabilità per una Gaussiana Generale
> Sia data una variabile aleatoria distribuita normalmente:
> $$
> \begin{aligned}
> X \sim N(3.2, 7.6)
> \end{aligned}
> $$
> Si vuole calcolare la probabilità dell'intervallo:
> $$
> \begin{aligned}
> \mathbb{P}\{0 < X < 5.1\}
> \end{aligned}
> $$
> I parametri della distribuzione sono la media $\mu = 3.2$ e la deviazione standard $\sigma = \sqrt{7.6}$. Standardizzando la variabile aleatoria mediante la trasformazione $Z = \frac{X - \mu}{\sigma} \sim N(0,1)$:
> $$
> \begin{aligned}
> \mathbb{P}\{0 < X < 5.1\} &= \mathbb{P}\left\{ \frac{0 - 3.2}{\sqrt{7.6}} < \frac{X - 3.2}{\sqrt{7.6}} < \frac{5.1 - 3.2}{\sqrt{7.6}} \right\} \\
> &\approx \mathbb{P}\{-1.16 < Z < 0.69\} \\
> &= \mathbb{P}\{Z < 0.69\} - \mathbb{P}\{Z < -1.16\} \\
> &= \Phi(0.69) - \Phi(-1.16) \\
> &= \Phi(0.69) - (1 - \Phi(1.16)) \\
> &= \Phi(0.69) + \Phi(1.16) - 1 \\
> &\approx 0.63
> \end{aligned}
> $$

> [!example] Probabilità di Deviazione dalla Media per una Variabile Normale
> Sia $X \sim N(\mu, \sigma^2)$ una generica variabile aleatoria gaussiana.
> 
> La probabilità di trovarsi a distanza al più $\sigma$ dalla media è data da:
> $$
> \begin{aligned}
> \mathbb{P}\{\mu - \sigma < X < \mu + \sigma\} &= \mathbb{P}\{-1 < Z < 1\} \\
> &= \Phi(1) - \Phi(-1) \\
> &= \Phi(1) - (1 - \Phi(1)) \\
> &= 2\Phi(1) - 1 \\
> &\approx 0.68
> \end{aligned}
> $$
> 
> Più in generale, la probabilità di trovarsi entro $k$ deviazioni standard dalla media è pari a:
> $$
> \begin{aligned}
> \mathbb{P}\{\mu - k\sigma < X < \mu + k\sigma\} = 2\Phi(k) - 1
> \end{aligned}
> $$
> 
> In particolare:
> - Per $k = 2$:
>   $$
>   \begin{aligned}
>   \mathbb{P}\{|Z| < 2\} = 2\Phi(2) - 1 \approx 0.95
>   \end{aligned}
>   $$
> - Per $k = 3$:
>   $$
>   \begin{aligned}
>   \mathbb{P}\{|Z| < 3\} = 2\Phi(3) - 1 \approx 0.997
>   \end{aligned}
>   $$

> [!note] Confronto tra Distribuzione Normale e Disuguaglianza di Chebyshev
> La distribuzione normale fornisce stime decisamente più strette ("migliori") rispetto a quelle universali garantite dalla disuguaglianza di Chebyshev.
> 
> Ad esempio, per $k = 2$, per la normale standard $Z \sim N(0,1)$ si ha:
> $$
> \begin{aligned}
> \mathbb{P}\{|Z| > 2\} \approx 1 - 0.95 = 0.05
> \end{aligned}
> $$
> Mentre applicando la disuguaglianza di Chebyshev per una variabile aleatoria generica con varianza unitaria:
> $$
> \begin{aligned}
> \mathbb{P}\{|Z| > 2\} \le \frac{1}{2^2} = 0.25
> \end{aligned}
> $$
> Tale stima di Chebyshev è notevolmente più conservativa e peggiore, poiché la distribuzione normale presenta code esponenzialmente decadenti ed è una distribuzione molto controllata.

### Calcolo dell'Integrale Gaussiano

> [!example] Calcolo dell'Integrale di Eulero-Poisson in Coordinate Polari
> Si vuole calcolare il valore dell'integrale fondamentale di normalizzazione:
> $$
> \begin{aligned}
> I = \int_{-\infty}^{+\infty} e^{-\frac{x^2}{2}} \, dx
> \end{aligned}
> $$
> Considerando il quadrato dell'integrale e convertendo l'integrale doppio su $\mathbb{R}^2$ in coordinate polari nel piano $(x = \rho \cos\theta, \, y = \rho \sin\theta, \, dx \, dy = \rho \, d\rho \, d\theta)$:
> $$
> \begin{aligned}
> I^2 &= \int_{-\infty}^{+\infty} \int_{-\infty}^{+\infty} e^{-\frac{x^2 + y^2}{2}} \, dx \, dy \\
> &= \int_0^{+\infty} \int_0^{2\pi} e^{-\frac{\rho^2}{2}} \rho \, d\rho \, d\theta \\
> &= 2\pi \int_0^{+\infty} e^{-\frac{\rho^2}{2}} \rho \, d\rho \\
> &= 2\pi \left[ -e^{-\frac{\rho^2}{2}} \right]_0^{+\infty} \\
> &= 2\pi (0 - (-1)) \\
> &= 2\pi
> \end{aligned}
> $$
> Estraendo la radice quadrata positiva:
> $$
> \begin{aligned}
> I = \sqrt{2\pi}
> \end{aligned}
> $$

## Vettori Aleatori

### Definizione e Indipendenza di Variabili Aleatorie

> [!definition] Vettore Aleatorio
> Siano $X_1, \dots, X_n: \Omega \to \mathbb{R}$ variabili aleatorie definite sul medesimo spazio di probabilità $(\Omega, \mathcal{F}, \mathbb{P})$.
> Si definisce **vettore aleatorio** $\mathbf{X}$ l'applicazione:
> $$
> \begin{aligned}
> \mathbf{X} := (X_1, \dots, X_n): \Omega \to \mathbb{R}^n
> \end{aligned}
> $$

> [!definition] Variabili Aleatorie Indipendenti
> Le variabili aleatorie $X_1, \dots, X_n$ si dicono **indipendenti** se per ogni scelta di estremi $a_i, b_i \in \overline{\mathbb{R}}$ con $a_i < b_i$ per ogni $i = 1, \dots, n$, vale la fattorizzazione della probabilità congiunta:
> $$
> \begin{aligned}
> \mathbb{P}\left( \bigcap_{i=1}^n \{a_i < X_i < b_i\} \right) = \prod_{i=1}^n \mathbb{P}\{a_i < X_i < b_i\}
> \end{aligned}
> $$

> [!note] Indipendenza per Sotto-vettori
> La condizione di indipendenza implica la fattorizzazione anche per qualunque sotto-insieme di variabili (coppie, terne, ecc.).
> Ad esempio, per isolare la coppia $(X_1, X_2)$, è sufficiente porre $a_1, a_2, b_1, b_2 \in \mathbb{R}$ e saturare le restanti componenti ponendo:
> $$
> \begin{aligned}
> a_i = -\infty, \quad b_i = +\infty \qquad \forall i = 3, \dots, n
> \end{aligned}
> $$

> [!note] Indipendenza su Insiemi Misurabili
> Più in generale, se $X_1, \dots, X_n$ sono variabili aleatorie indipendenti e $A_1, \dots, A_n \subseteq \mathbb{R}$ sono insiemi misurabili (ad esempio insiemi di Borel o misurabili secondo Lebesgue), allora vale:
> $$
> \begin{aligned}
> \mathbb{P}\left( \bigcap_{i=1}^n \{X_i \in A_i\} \right) = \prod_{i=1}^n \mathbb{P}\{X_i \in A_i\}
> \end{aligned}
> $$

> [!example] Esperimento Indipendente: Dado e Moneta
> Si consideri l'esperimento composto dal lancio simultaneo di un dado a sei facce e di una moneta equilibrata.
> Definiamo le variabili aleatorie:
> - $X =$ "risultato del lancio del dado"
> - $Y =$ "risultato del lancio della moneta"
> 
> Gli eventi $\{X = i\}$ e $\{Y = j\}$ risultano stocasticamente indipendenti per ogni $i \in \{1, \dots, 6\}$ e per ogni $j \in \{0, 1\}$.

### Densità Congiunta

> [!definition] Densità Congiunta di un Vettore Aleatorio Discreto
> Siano $X_1, \dots, X_n$ variabili aleatorie discrete aventi densità marginali rispettivamente $f_{X_1}, \dots, f_{X_n}$.
> Si definisce **densità congiunta** del vettore aleatorio $\mathbf{X} = (X_1, \dots, X_n)$ la funzione:
> $$
> \begin{aligned}
> f_{\mathbf{X}}(x_1, \dots, x_n) &:= \mathbb{P}\left( \bigcap_{i=1}^n \{X_i = x_i\} \right) \\
> &= \mathbb{P}\{\mathbf{X} = \mathbf{x}\}
> \end{aligned}
> $$
> dove $\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n$.

> [!note] Fattorizzazione della Densità Congiunta sotto Indipendenza
> Se le variabili aleatorie $X_1, \dots, X_n$ sono tra loro indipendenti, la densità congiunta coincide con il prodotto delle densità marginali:
> $$
> \begin{aligned}
> f_{\mathbf{X}}(\mathbf{x}) = \prod_{i=1}^n \mathbb{P}\{X_i = x_i\} = \prod_{i=1}^n f_{X_i}(x_i)
> \end{aligned}
> $$

### Funzioni Scalari di Vettori Aleatori

> [!definition] Funzioni Scalari di Vettori Aleatori
> Sia $\mathbf{X}: \Omega \to \mathbb{R}^n$ un vettore aleatorio.
> Qualsiasi funzione boreliana $g: \mathbb{R}^n \to \mathbb{R}$ definisce una **funzione scalare di vettore aleatorio**.

> [!note] Valore Atteso di Funzioni Scalari
> La composizione $Y = g(\mathbf{X})$ è a sua volta una variabile aleatoria scalare reale, di cui è possibile calcolare i momenti (valore atteso, varianza, ecc.).
> Nel caso discreto, il valore atteso è dato da:
> $$
> \begin{aligned}
> \mathbb{E}[g(\mathbf{X})] = \sum_{\mathbf{x}} g(\mathbf{x}) \mathbb{P}\{\mathbf{X} = \mathbf{x}\}
> \end{aligned}
> $$

> [!example] Linearità del Valore Atteso per una Somma
> Sia data la funzione somma $g(\mathbf{X}) = \sum_{i=1}^n X_i$.
> Per la linearità dell'operatore valore atteso:
> $$
> \begin{aligned}
> \mathbb{E}[g(\mathbf{X})] = \mathbb{E}\left[ \sum_{i=1}^n X_i \right] = \sum_{i=1}^n \mathbb{E}[X_i]
> \end{aligned}
> $$
> Si noti che la linearità del valore atteso vale sempre, senza richiedere alcuna ipotesi di indipendenza tra le variabili aleatorie.

## Covarianza e Correlazione

### Definizione e Proprietà della Covarianza

> [!definition] Covarianza
> Siano $X$ e $Y$ due variabili aleatorie dotate di momenti secondi finiti. Si definisce **covarianza** di $X$ e $Y$ la quantità:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] := \mathbb{E}\big[ (X - \mathbb{E}[X])(Y - \mathbb{E}[Y]) \big]
> \end{aligned}
> $$
> purché tale valore atteso esista finito.

> [!note] Autocovarianza e Varianza
> Se $X = Y$, la covarianza della variabile con se stessa coincide con la varianza:
> $$
> \begin{aligned}
> \text{Cov}[X, X] = \mathbb{E}\big[ (X - \mathbb{E}[X])^2 \big] = \mathbb{V}[X]
> \end{aligned}
> $$

> [!proposition] Proprietà Fondamentali della Covarianza
> Siano $X, Y$ variabili aleatorie con varianza finita e siano $a, b, c, d \in \mathbb{R}$. Valgono le seguenti proprietà:
> 1. **Formula di calcolo rapido**:
>    $$
>    \begin{aligned}
>    \text{Cov}[X, Y] = \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y]
>    \end{aligned}
>    $$
> 2. **Bilinearità rispetto a trasformazioni affini**:
>    $$
>    \begin{aligned}
>    \text{Cov}[aX + b, cY + d] = ac \, \text{Cov}[X, Y]
>    \end{aligned}
>    $$
> 3. **Indipendenza stocastica**:
>    Se $X$ e $Y$ sono indipendenti e $\mathbb{V}[X], \mathbb{V}[Y] < +\infty$, allora:
>    $$
>    \begin{aligned}
>    \text{Cov}[X, Y] = 0
>    \end{aligned}
>    $$
> 4. **Disuguaglianza di Cauchy-Schwarz**:
>    $$
>    \begin{aligned}
>    |\text{Cov}[X, Y]|^2 \le \mathbb{V}[X] \, \mathbb{V}[Y]
>    \end{aligned}
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione della Proprietà 1:**
> Sviluppando il prodotto all'interno dell'operatore valore atteso e sfruttandone la linearità:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] &= \mathbb{E}\big[ (X - \mathbb{E}[X])(Y - \mathbb{E}[Y]) \big] \\
> &= \mathbb{E}\big[ XY - Y\mathbb{E}[X] - X\mathbb{E}[Y] + \mathbb{E}[X]\mathbb{E}[Y] \big] \\
> &= \mathbb{E}[XY] - \mathbb{E}[Y]\mathbb{E}[X] - \mathbb{E}[X]\mathbb{E}[Y] + \mathbb{E}[X]\mathbb{E}[Y] \\
> &= \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y]
> \end{aligned}
> $$
> I termini costanti $\mathbb{E}[X]\mathbb{E}[Y]$ si elidono parzialmente, fornendo la formula desiderata.
> 
> **Dimostrazione della Proprietà 2:**
> Calcolando lo scarto della variabile trasformata rispetto al suo valore atteso:
> $$
> \begin{aligned}
> (aX + b) - \mathbb{E}[aX + b] &= aX + b - (a\mathbb{E}[X] + b) \\
> &= aX + b - a\mathbb{E}[X] - b \\
> &= a(X - \mathbb{E}[X])
> \end{aligned}
> $$
> Analogamente per la variabile $Y$:
> $$
> \begin{aligned}
> (cY + d) - \mathbb{E}[cY + d] = c(Y - \mathbb{E}[Y])
> \end{aligned}
> $$
> Sostituendo nella definizione di covarianza:
> $$
> \begin{aligned}
> \text{Cov}[aX + b, cY + d] &= \mathbb{E}\big[ a(X - \mathbb{E}[X]) \cdot c(Y - \mathbb{E}[Y]) \big] \\
> &= \mathbb{E}\big[ ac (X - \mathbb{E}[X])(Y - \mathbb{E}[Y]) \big] \\
> &= ac \, \mathbb{E}\big[ (X - \mathbb{E}[X])(Y - \mathbb{E}[Y]) \big] \\
> &= ac \, \text{Cov}[X, Y]
> \end{aligned}
> $$
> 
> **Dimostrazione della Proprietà 3:**
> Svolgiamo la dimostrazione nel caso di variabili aleatorie discrete $X$ e $Y$ aventi supporti rispettivamente $S$ e $T$.
> Per definizione di valore atteso congiunto:
> $$
> \begin{aligned}
> \mathbb{E}[XY] = \sum_{x \in S} \sum_{y \in T} xy \, \mathbb{P}\{X = x, Y = y\}
> \end{aligned}
> $$
> Poiché le variabili sono indipendenti, la probabilità congiunta si fattorizza: $\mathbb{P}\{X = x, Y = y\} = \mathbb{P}\{X = x\} \mathbb{P}\{Y = y\}$. Sostituendo:
> $$
> \begin{aligned}
> \mathbb{E}[XY] &= \sum_{x \in S} \sum_{y \in T} xy \, \mathbb{P}\{X = x\} \mathbb{P}\{Y = y\} \\
> &= \left( \sum_{x \in S} x \mathbb{P}\{X = x\} \right) \left( \sum_{y \in T} y \mathbb{P}\{Y = y\} \right) \\
> &= \left( \sum_{x \in S} x P_X(x) \right) \left( \sum_{y \in T} y P_Y(y) \right) \\
> &= \mathbb{E}[X] \mathbb{E}[Y]
> \end{aligned}
> $$
> Ne consegue immediatamente:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] = \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y] = \mathbb{E}[X]\mathbb{E}[Y] - \mathbb{E}[X]\mathbb{E}[Y] = 0
> \end{aligned}
> $$
> 
> **Dimostrazione della Proprietà 4:**
> Siano $X$ e $Y$ discrete su insiemi di supporto finiti $S = \{x_1, \dots, x_n\}$ e $T = \{y_1, \dots, y_n\}$.
> Esplicitando la covarianza come prodotto scalare pesato dalle probabilità congiunte:
> $$
> \begin{aligned}
> |\text{Cov}[X, Y]|^2 &= \left| \sum_{x \in S} \sum_{y \in T} (x - \mathbb{E}[X])(y - \mathbb{E}[Y]) \mathbb{P}\{X = x, Y = y\} \right|^2
> \end{aligned}
> $$
> Applicando la disuguaglianza di Cauchy-Schwarz per somme ponderate:
> $$
> \begin{aligned}
> |\text{Cov}[X, Y]|^2 &\le \left( \sum_{x \in S} (x - \mathbb{E}[X])^2 P_X(x) \right) \left( \sum_{y \in T} (y - \mathbb{E}[Y])^2 P_Y(y) \right) \\
> &= \mathbb{V}[X] \, \mathbb{V}[Y]
> \end{aligned}
> $$
> Concludendo la dimostrazione. $\blacksquare$

> [!example] Esistenza del Valore Atteso con Varianza Infinita
> Può accadere che una variabile aleatoria ammetta valore atteso finito ma abbia varianza infinita.
> Si consideri la funzione densità di probabilità:
> $$
> \begin{aligned}
> f_X(x) = \begin{cases} \frac{2}{x^3} & x \ge 1 \\ 0 & x < 1 \end{cases}
> \end{aligned}
> $$
> 1. **Verifica della condizione di normalizzazione**:
>    $$
>    \begin{aligned}
>    \int_1^{+\infty} \frac{2}{x^3} \, dx = \left[ -\frac{1}{x^2} \right]_1^{+\infty} = 0 - (-1) = 1
>    \end{aligned}
>    $$
> 2. **Calcolo del valore atteso**:
>    $$
>    \begin{aligned}
>    \mathbb{E}[X] = \int_1^{+\infty} x \frac{2}{x^3} \, dx = \int_1^{+\infty} \frac{2}{x^2} \, dx = \left[ -\frac{2}{x} \right]_1^{+\infty} = 0 - (-2) = 2
>    \end{aligned}
>    $$
> 3. **Calcolo del momento secondo**:
>    $$
>    \begin{aligned}
>    \mathbb{E}[X^2] = \int_1^{+\infty} x^2 \frac{2}{x^3} \, dx = \int_1^{+\infty} \frac{2}{x} \, dx = \left[ 2 \ln x \right]_1^{+\infty} = +\infty
>    \end{aligned}
>    $$
> Di conseguenza:
> $$
> \begin{aligned}
> \mathbb{V}[X] = \mathbb{E}[X^2] - (\mathbb{E}[X])^2 = +\infty - 4 = +\infty
> \end{aligned}
> $$

### Coefficiente di Correlazione Lineare

> [!definition] Coefficiente di Correlazione Lineare
> Siano $X$ e $Y$ due variabili aleatorie con varianze strettamente positive e finite ($\mathbb{V}[X] > 0, \mathbb{V}[Y] > 0$).
> Si definisce **coefficiente di correlazione lineare** (di Bravais-Pearson):
> $$
> \begin{aligned}
> \rho[X, Y] := \frac{\text{Cov}[X, Y]}{\sqrt{\mathbb{V}[X]\mathbb{V}[Y]}}
> \end{aligned}
> $$

> [!proposition] Proprietà del Coefficiente di Correlazione
> In virtù della disuguaglianza di Cauchy-Schwarz, il coefficiente di correlazione è un numero adimensionale limitato:
> $$
> \begin{aligned}
> \rho[X, Y] \in [-1, 1] \qquad \forall X, Y
> \end{aligned}
> $$
> In base al segno del coefficiente, le variabili si classificano in:
> - **Positivamente correlate**: se $\rho[X, Y] > 0$.
> - **Negativamente correlate**: se $\rho[X, Y] < 0$.
> - **Non correlate (o scorrelate)**: se $\rho[X, Y] = 0$.

> [!example] Lanci di Monete e Covarianza Positiva
> Si considerino gli esiti di $n$ lanci indipendenti di una moneta equilibrata, modellati da variabili di Bernoulli indipendenti:
> $$
> \begin{aligned}
> L_1, \dots, L_n \sim B\left(1, \frac{1}{2}\right) \quad \text{indipendenti}, \qquad L_i(\Omega) = \{0, 1\}
> \end{aligned}
> $$
> Definiamo le variabili aleatorie:
> $$
> \begin{aligned}
> X = L_1, \qquad Y = L_1 + L_2
> \end{aligned}
> $$
> Le varianze marginali valgono:
> $$
> \begin{aligned}
> \mathbb{V}[X] &= \mathbb{V}[L_1] = \frac{1}{2}\left(1 - \frac{1}{2}\right) = \frac{1}{4} \\
> \mathbb{V}[Y] &= \mathbb{V}[L_1 + L_2] = \mathbb{V}[L_1] + \mathbb{V}[L_2] = 2 \cdot \frac{1}{2}\left(1 - \frac{1}{2}\right) = \frac{1}{2}
> \end{aligned}
> $$
> Calcolando la covarianza:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] &= \mathbb{E}[XY] - \mathbb{E}[X]\mathbb{E}[Y] \\
> &= \mathbb{E}[L_1(L_1 + L_2)] - \mathbb{E}[L_1] \mathbb{E}[L_1 + L_2] \\
> &= \mathbb{E}[L_1^2 + L_1 L_2] - \frac{1}{2} \cdot \left(\frac{1}{2} + \frac{1}{2}\right) \\
> &= \mathbb{E}[L_1^2 + L_1 L_2] - \frac{1}{2} \cdot 1 \\
> &= \mathbb{E}[L_1^2] + \mathbb{E}[L_1 L_2] - \frac{1}{2}
> \end{aligned}
> $$
> Essendo $L_1$ e $L_2$ indipendenti, $\mathbb{E}[L_1 L_2] = \mathbb{E}[L_1]\mathbb{E}[L_2] = \frac{1}{2} \cdot \frac{1}{2} = \frac{1}{4}$. Inoltre, poiché $\mathbb{V}[L_1] = \mathbb{E}[L_1^2] - (\mathbb{E}[L_1])^2$, si ha $\mathbb{E}[L_1^2] = \mathbb{V}[L_1] + (\mathbb{E}[L_1])^2$:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] &= \mathbb{V}[L_1] + (\mathbb{E}[L_1])^2 + \frac{1}{4} - \frac{1}{2} \\
> &= \mathbb{V}[L_1] + \left(\frac{1}{2}\right)^2 + \frac{1}{4} - \frac{1}{2} \\
> &= \mathbb{V}[L_1] + \frac{1}{4} + \frac{1}{4} - \frac{1}{2} \\
> &= \mathbb{V}[L_1] \\
> &= \frac{1}{4} > 0
> \end{aligned}
> $$
> Pertanto le variabili $X$ e $Y$ risultano positivamente correlate.

### Scorrelazione vs Indipendenza Stocastica

> [!warning] La Scorrelazione NON Implica l'Indipendenza
> La condizione di covarianza nulla (scorrelazione) non implica generalmente l'indipendenza stocastica:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] = 0 \centernot\implies X, Y \text{ indipendenti}
> \end{aligned}
> $$
> Due variabili possono presentare covarianza identicamente nulla pur essendo legate da una stretta dipendenza probabilistica deterministica o non lineare.

> [!example] Controesempio di Variabili Scorrelate ma Dipendenti
> Siano $L_1, L_2 \sim B(1, p)$ due variabili aleatorie di Bernoulli indipendenti con parametro $p \in (0, 1)$, tali che $L_1, L_2 \in \{0, 1\}$.
> Definiamo:
> $$
> \begin{aligned}
> X = L_1 - L_2, \qquad Y = L_1 + L_2
> \end{aligned}
> $$
> 
> **Verifica della dipendenza:**
> Calcoliamo la probabilità dell'evento congiunto $\{X = 0, Y = 2\}$:
> $$
> \begin{aligned}
> \{X = 0, Y = 2\} \iff \{L_1 - L_2 = 0, \, L_1 + L_2 = 2\} \iff \{L_1 = 1, \, L_2 = 1\}
> \end{aligned}
> $$
> Quindi:
> $$
> \begin{aligned}
> \mathbb{P}\{X = 0, Y = 2\} = \mathbb{P}\{L_1 = 1, L_2 = 1\} = \mathbb{P}\{L_1 = 1\}\mathbb{P}\{L_2 = 1\} = p^2
> \end{aligned}
> $$
> D'altra parte, calcolando le probabilità marginali:
> $$
> \begin{aligned}
> \mathbb{P}\{X = 0\} &= \mathbb{P}\{L_1 = L_2\} \\
> &= \mathbb{P}\{L_1 = 1, L_2 = 1\} + \mathbb{P}\{L_1 = 0, L_2 = 0\} \\
> &= p^2 + (1-p)^2
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \mathbb{P}\{Y = 2\} = \mathbb{P}\{L_1 = 1, L_2 = 1\} = p^2
> \end{aligned}
> $$
> Il prodotto delle probabilità marginali risulta:
> $$
> \begin{aligned}
> \mathbb{P}\{X = 0\}\mathbb{P}\{Y = 2\} = p^2 \big[ p^2 + (1-p)^2 \big]
> \end{aligned}
> $$
> Poiché $p^2 + (1-p)^2 < 1$ per ogni $p \in (0, 1)$:
> $$
> \begin{aligned}
> p^2 \big[ p^2 + (1-p)^2 \big] \neq p^2 \implies \mathbb{P}\{X = 0, Y = 2\} \neq \mathbb{P}\{X = 0\}\mathbb{P}\{Y = 2\}
> \end{aligned}
> $$
> Dunque $X$ e $Y$ sono stocasticamente dipendenti.
> 
> **Calcolo della covarianza:**
> $$
> \begin{aligned}
> \text{Cov}[X, Y] &= \mathbb{E}[(L_1 - L_2)(L_1 + L_2)] - \mathbb{E}[L_1 - L_2]\mathbb{E}[L_1 + L_2] \\
> &= \mathbb{E}[L_1^2 - L_2^2] - (\mathbb{E}[L_1] - \mathbb{E}[L_2])\mathbb{E}[L_1 + L_2]
> \end{aligned}
> $$
> Poiché $L_1$ e $L_2$ hanno la stessa funzione di densità (sono identicamente distribuite), si ha:
> $$
> \begin{aligned}
> \mathbb{E}[L_1] = \mathbb{E}[L_2] \implies \mathbb{E}[L_1 - L_2] = 0
> \end{aligned}
> $$
> e per i momenti secondi:
> $$
> \begin{aligned}
> \mathbb{E}[L_1^2] = \mathbb{E}[L_2^2] \implies \mathbb{E}[L_1^2 - L_2^2] = \mathbb{E}[L_1^2] - \mathbb{E}[L_2^2] = 0
> \end{aligned}
> $$
> Sostituendo:
> $$
> \begin{aligned}
> \text{Cov}[X, Y] = 0 - 0 = 0
> \end{aligned}
> $$
> Le variabili $X$ e $Y$ sono pertanto **scorrelate** pur essendo **stocasticamente dipendenti**.

## Varianza della Somma e Somma di Variabili Aleatorie Notevoli

### Varianza della Somma

> [!proposition] Varianza della Somma di Variabili Aleatorie
> Siano $X_1, \dots, X_n$ variabili aleatorie con momento secondo finito.
> La varianza della loro somma è data da:
> $$
> \begin{aligned}
> \mathbb{V}\left[ \sum_{i=1}^n X_i \right] = \sum_{i=1}^n \mathbb{V}[X_i] + 2 \sum_{1 \le i < j \le n} \text{Cov}[X_i, X_j]
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Ricordando che l'autocovarianza coincide con la varianza e sfruttando la bilinearità della covarianza:
> $$
> \begin{aligned}
> \mathbb{V}\left[ \sum_{i=1}^n X_i \right] &= \text{Cov}\left[ \sum_{i=1}^n X_i, \, \sum_{j=1}^n X_j \right] \\
> &= \sum_{i=1}^n \sum_{j=1}^n \text{Cov}[X_i, X_j] \\
> &= \sum_{i=j=1}^n \text{Cov}[X_i, X_i] + \sum_{i \neq j} \text{Cov}[X_i, X_j] \\
> &= \sum_{i=1}^n \mathbb{V}[X_i] + \sum_{i < j} \text{Cov}[X_i, X_j] + \sum_{i > j} \text{Cov}[X_i, X_j]
> \end{aligned}
> $$
> Per la simmetria della covarianza $\text{Cov}[X_i, X_j] = \text{Cov}[X_j, X_i]$, i due doppi indici forniscono contributi identici:
> $$
> \begin{aligned}
> \mathbb{V}\left[ \sum_{i=1}^n X_i \right] = \sum_{i=1}^n \mathbb{V}[X_i] + 2 \sum_{1 \le i < j \le n} \text{Cov}[X_i, X_j]
> \end{aligned}
> $$
> Concludendo la dimostrazione. $\blacksquare$

> [!note] Varianza per Variabili Scorrelate o Indipendenti
> Se le variabili aleatorie $X_1, \dots, X_n$ sono non correlate a coppie (ad esempio perché stocasticamente indipendenti), tutti i termini di covarianza si annullano ($\text{Cov}[X_i, X_j] = 0$ per ogni $i \neq j$), pertanto:
> $$
> \begin{aligned}
> \mathbb{V}\left[ \sum_{i=1}^n X_i \right] = \sum_{i=1}^n \mathbb{V}[X_i]
> \end{aligned}
> $$

> [!example] Varianza della Distribuzione Binomiale
> Sia $X \sim B(n, p)$. Come noto, $X$ può essere decomposta nella somma di $n$ variabili di Bernoulli indipendenti e identicamente distribuite:
> $$
> \begin{aligned}
> X = \sum_{i=1}^n X_i, \qquad X_i \sim B(1, p) \quad \text{indipendenti}
> \end{aligned}
> $$
> Poiché $\mathbb{V}[X_i] = p(1-p)$ per ciascun indicatore di Bernoulli:
> $$
> \begin{aligned}
> \mathbb{V}[X] &= \mathbb{V}\left[ \sum_{i=1}^n X_i \right] \\
> &\overset{X_i \text{ ind.}}{=} \sum_{i=1}^n \mathbb{V}[X_i] \\
> &= \sum_{i=1}^n p(1-p) \\
> &= np(1-p)
> \end{aligned}
> $$

### Somma di Variabili Aleatorie Notevoli

> [!example] Somma di Binomiali Indipendenti con Stesso Parametro
> Siano $S_n \sim B(n, p)$ e $R_m \sim B(m, p)$ due variabili aleatorie indipendenti ($S_n \perp\!\!\!\perp R_m$):
> - $S_n$ conta il numero di successi in $n$ prove indipendenti con probabilità $p$.
> - $R_m$ conta il numero di successi in ulteriori $m$ prove indipendenti con la medesima probabilità $p$.
> 
> La variabile somma $S_n + R_m$ conta il numero complessivo di successi nell'insieme delle $n + m$ prove indipendenti, pertanto:
> $$
> \begin{aligned}
> S_n + R_m \sim B(n+m, p)
> \end{aligned}
> $$

> [!proposition] Proprietà di Chiusura per Somma di Variabili Notevoli Indipendenti
> Siano $X$ e $Y$ variabili aleatorie stocasticamente indipendenti. Valgono le seguenti proprietà:
> 1. **Binomiale**:
>    $$
>    \begin{aligned}
>    X \sim B(n, p), \quad Y \sim B(m, p) \implies X + Y \sim B(n+m, p)
>    \end{aligned}
>    $$
> 2. **Poisson**:
>    $$
>    \begin{aligned}
>    X \sim P(\lambda), \quad Y \sim P(\mu) \implies X + Y \sim P(\lambda + \mu)
>    \end{aligned}
>    $$
> 3. **Normale (Gaussiana)**:
>    $$
>    \begin{aligned}
>    X \sim N(\mu_X, \sigma_X^2), \quad Y \sim N(\mu_Y, \sigma_Y^2) \implies X + Y \sim N(\mu_X + \mu_Y, \sigma_X^2 + \sigma_Y^2)
>    \end{aligned}
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione della Proprietà 2 (Somma di Poisson):**
> L'immagine della variabile somma è $\mathrm{Im}(X + Y) = \{0, 1, 2, \dots\}$.
> Per ogni intero $k \ge 0$, l'evento $\{X + Y = k\}$ si decompone nell'unione disgiunta:
> $$
> \begin{aligned}
> \{X + Y = k\} = \bigcup_{h=0}^k \{X = h, \, Y = k - h\}
> \end{aligned}
> $$
> Sfruttando l'additività su eventi disgiunti e l'indipendenza stocastica tra $X$ e $Y$:
> $$
> \begin{aligned}
> \mathbb{P}\{X + Y = k\} &= \mathbb{P}\left( \bigcup_{h=0}^k \{X = h, \, Y = k - h\} \right) \\
> &= \sum_{h=0}^k \mathbb{P}\{X = h, \, Y = k - h\} \\
> &= \sum_{h=0}^k P_X(h) P_Y(k - h)
> \end{aligned}
> $$
> Sostituendo le densità di Poisson $P_X(h) = e^{-\lambda} \frac{\lambda^h}{h!}$ e $P_Y(k-h) = e^{-\mu} \frac{\mu^{k-h}}{(k-h)!}$:
> $$
> \begin{aligned}
> \mathbb{P}\{X + Y = k\} &= \sum_{h=0}^k e^{-\lambda} \frac{\lambda^h}{h!} \, e^{-\mu} \frac{\mu^{k-h}}{(k-h)!} \\
> &= e^{-(\lambda + \mu)} \sum_{h=0}^k \frac{\lambda^h \mu^{k-h}}{h!(k-h)!} \\
> &= \frac{e^{-(\lambda + \mu)}}{k!} \sum_{h=0}^k \frac{k!}{h!(k-h)!} \lambda^h \mu^{k-h}
> \end{aligned}
> $$
> Riconoscendo i coefficienti binomiali $\binom{k}{h} = \frac{k!}{h!(k-h)!}$ e applicando la formula del binomio di Newton $\sum_{h=0}^k \binom{k}{h} \lambda^h \mu^{k-h} = (\lambda + \mu)^k$:
> $$
> \begin{aligned}
> \mathbb{P}\{X + Y = k\} = \frac{e^{-(\lambda + \mu)}}{k!} (\lambda + \mu)^k
> \end{aligned}
> $$
> Tale densità coincide esattamente con la distribuzione di Poisson di parametro $\lambda + \mu$, ovvero $X + Y \sim P(\lambda + \mu)$. $\blacksquare$

# 3. Teoremi Limite e Teoria del Campionamento

## Campione Statistico e Media Campionaria

> [!definition] $n$-Campione Statistico
> Siano $X_1, \dots, X_n$ variabili aleatorie indipendenti e identicamente distribuite (i.i.d.), aventi tutte la medesima densità di probabilità:
> $$
> \begin{aligned}
> x \mapsto f(x, \boldsymbol{\theta}), \qquad \boldsymbol{\theta} \in \mathbb{R}^m \text{ parametri}
> \end{aligned}
> $$
> L'insieme delle variabili $(X_1, \dots, X_n)$ viene definito **$n$-campione** della densità $f(\cdot, \boldsymbol{\theta})$.

> [!definition] Media Campionaria
> Dato un $n$-campione $X_1, \dots, X_n$, si definisce **media campionaria** la statistica:
> $$
> \begin{aligned}
> \overline{X}_n := \frac{1}{n} \sum_{i=1}^n X_i
> \end{aligned}
> $$

> [!note] Distribuzione della Media Campionaria per Variabili Gaussiane
> Se le variabili del campione sono normali e indipendenti:
> $$
> \begin{aligned}
> X_1, \dots, X_n \sim N(\mu, \sigma^2) \quad \text{i.i.d.}
> \end{aligned}
> $$
> per la proprietà di stabilità della somma di normali indipendenti si ha:
> $$
> \begin{aligned}
> n\overline{X}_n = \sum_{i=1}^n X_i \sim N(n\mu, n\sigma^2)
> \end{aligned}
> $$
> Ricordando la legge di trasformazione per funzioni affini di variabili normali:
> $$
> \begin{aligned}
> Y \sim N(\mu', \sigma'^2) \implies aY + b \sim N(a\mu' + b, a^2\sigma'^2)
> \end{aligned}
> $$
> moltiplicando la somma per la costante scalare $a = \frac{1}{n}$ e ponendo $b = 0$, si ottiene la distribuzione esatta della media campionaria:
> $$
> \begin{aligned}
> \overline{X}_n \sim N\left( \frac{1}{n}(n\mu), \, \left(\frac{1}{n}\right)^2 (n\sigma^2) \right) = N\left(\mu, \frac{\sigma^2}{n}\right)
> \end{aligned}
> $$

### Legge Debole dei Grandi Numeri

> [!theorem] Legge Debole dei Grandi Numeri (Weak Law of Large Numbers)
> Sia $\{X_n\}_{n \in \mathbb{N}}$ una successione di variabili aleatorie a due a due non correlate, aventi tutte valore atteso $\mathbb{E}[X_n] = \mu$ e varianza finita $\mathbb{V}[X_n] = \sigma^2$ per ogni $n \in \mathbb{N}$.
> Allora, per ogni $\varepsilon > 0$, la media campionaria $\overline{X}_n$ converge in probabilità al valore atteso $\mu$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathbb{P}\{ |\overline{X}_n - \mu| > \varepsilon \} = 0 \qquad \forall \varepsilon > 0
> \end{aligned}
> $$

> [!quote]- Dimostrazione
> Calcoliamo innanzitutto il valore atteso e la varianza della media campionaria $\overline{X}_n$:
> $$
> \begin{aligned}
> \mathbb{E}[\overline{X}_n] = \mathbb{E}\left[ \frac{1}{n} \sum_{i=1}^n X_i \right] = \frac{1}{n} \sum_{i=1}^n \mathbb{E}[X_i] = \frac{1}{n} (n\mu) = \mu
> \end{aligned}
> $$
> Essendo le variabili $X_i$ tra loro non correlate ($\text{Cov}[X_i, X_j] = 0$ per ogni $i \neq j$):
> $$
> \begin{aligned}
> \mathbb{V}[\overline{X}_n] &= \mathbb{V}\left[ \frac{1}{n} \sum_{i=1}^n X_i \right] \\
> &= \frac{1}{n^2} \mathbb{V}\left[ \sum_{i=1}^n X_i \right] \\
> &= \frac{1}{n^2} \sum_{i=1}^n \mathbb{V}[X_i] \\
> &= \frac{1}{n^2} (n\sigma^2) \\
> &= \frac{\sigma^2}{n}
> \end{aligned}
> $$
> Applicando la disuguaglianza di Chebyshev alla variabile $\overline{X}_n$ rispetto alla sua media $\mu$:
> $$
> \begin{aligned}
> \mathbb{P}\{ |\overline{X}_n - \mu| > \varepsilon \} &\le \frac{\mathbb{V}[\overline{X}_n]}{\varepsilon^2} \\
> &= \frac{1}{\varepsilon^2} \mathbb{V}\left[ \frac{1}{n} \left(\sum_{i=1}^n X_i\right) \right] \\
> &= \frac{1}{(n\varepsilon)^2} \sum_{i=1}^n \mathbb{V}[X_i] \\
> &= \frac{n\sigma^2}{n^2 \varepsilon^2} \\
> &= \frac{\sigma^2}{n\varepsilon^2}
> \end{aligned}
> $$
> Passando al limite per $n \to +\infty$, per qualsiasi $\varepsilon > 0$ fissato:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \frac{\sigma^2}{n\varepsilon^2} = 0
> \end{aligned}
> $$
> Poiché le probabilità sono non-negative:
> $$
> \begin{aligned}
> 0 \le \lim_{n \to +\infty} \mathbb{P}\{ |\overline{X}_n - \mu| > \varepsilon \} \le 0
> \end{aligned}
> $$
> Per il teorema del confronto (dei carabinieri), si conclude:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathbb{P}\{ |\overline{X}_n - \mu| > \varepsilon \} = 0
> \end{aligned}
> $$
> Il che dimostra la tesi. $\blacksquare$

### Convergenza in Probabilità

Dalla disuguaglianza di Chebyshev applicata alla media campionaria $\bar{X}_n$:
$$
\begin{aligned}
\mathbb{P}\{|\bar{X}_n - \mu| > \varepsilon\} \le \frac{\sigma^2}{n\varepsilon^2} = \frac{n\sigma^2}{n^2\varepsilon^2} \xrightarrow{n \to +\infty} 0
\end{aligned}
$$
Per confronto, essendo le probabilità non negative:
$$
\begin{aligned}
\lim_{n \to +\infty} \mathbb{P}\{|\bar{X}_n - \mu| > \varepsilon\} = 0
\end{aligned}
$$

> [!definition] Convergenza in Probabilità
> Siano $\{X_n\}_{n \in \mathbb{N}}$ e $X$ variabili aleatorie definite sul medesimo spazio di probabilità $(\Omega, \mathcal{F}, \mathbb{P})$.
> Si dice che la successione $X_n$ **converge in probabilità** alla variabile aleatoria $X$, e si scrive:
> $$
> \begin{aligned}
> X_n \xrightarrow[n \to +\infty]{\mathbb{P}} X
> \end{aligned}
> $$
> se e solo se per ogni $\varepsilon > 0$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathbb{P}\{|X_n - X| > \varepsilon\} = 0
> \end{aligned}
> $$

> [!note] Riformulazione della Legge Debole dei Grandi Numeri
> In base alla definizione di convergenza in probabilità, la legge debole dei grandi numeri si può riscrivere in forma compatta come:
> $$
> \begin{aligned}
> \bar{X}_n \xrightarrow[n \to +\infty]{\mathbb{P}} \mu
> \end{aligned}
> $$
> ovvero la media campionaria converge in probabilità al valore atteso $\mu$.

### Giustificazione dell'Istogramma tramite la Legge dei Grandi Numeri

> [!note] Fondamento Teorico dell'Istogramma
> Sia $\{Z_n\}_{n \in \mathbb{N}}$ un campione numerabile assolutamente continuo (AC) con funzione di densità di probabilità $f_Z(z)$. È possibile interpretare ciascuna variabile $Z_i$ come un dato osservato nell'ambito della statistica descrittiva.
> 
> Se $\mathrm{Im}(Z_n) = \mathbb{R}$, si consideri una partizione finita o numerabile di $\mathbb{R}$:
> $$
> \begin{aligned}
> \bigcup_{i=1}^m C_i = \mathbb{R}, \quad C_i \cap C_j = \emptyset \quad \forall i \neq j
> \end{aligned}
> $$
> Le classi $C_i$ individuano i raggruppamenti (bin) dei dati. Si consideri ad esempio una classe specifica:
> $$
> \begin{aligned}
> C_0 = [a, b] \subset \mathbb{R}
> \end{aligned}
> $$
> Per ciascuna osservazione $i = 1, \dots, n$, si definisce la variabile indicatrice:
> $$
> \begin{aligned}
> X_i : \Omega \to \mathbb{R}, \quad X_i = \begin{cases} 1 & \text{se } Z_i \in [a, b] \\ 0 & \text{se } Z_i \notin [a, b] \end{cases}
> \end{aligned}
> $$
> Essendo le variabili $Z_i$ mutualmente indipendenti, anche le variabili $X_i \sim \mathcal{B}(1, p)$ risultano indipendenti e identicamente distribuite secondo una legge di Bernoulli di parametro:
> $$
> \begin{aligned}
> p = \mathbb{P}\{X_i = 1\} = \mathbb{P}\{Z_i \in [a, b]\} = \int_a^b f_Z(z) \, dz
> \end{aligned}
> $$
> Calcolando la media campionaria delle variabili indicatrici $X_i$:
> $$
> \begin{aligned}
> \bar{X}_n = \frac{1}{n} \sum_{i=1}^n X_i = \frac{\mathrm{card}\{Z_i \in [a, b] : i = 1, \dots, n\}}{n}
> \end{aligned}
> $$
> Tale quantità coincide esattamente con la **frequenza relativa** $FR([a, b])$ dei dati che cadono nella classe $[a, b]$.
> 
> Applicando la legge debole dei grandi numeri alla successione $\{X_i\}_{i=1}^n$:
> $$
> \begin{aligned}
> \forall \varepsilon > 0, \quad \lim_{n \to +\infty} \mathbb{P}\left\{ \left| \bar{X}_n - \int_a^b f_Z(z) \, dz \right| > \varepsilon \right\} = 0
> \end{aligned}
> $$
> Ovvero:
> $$
> \begin{aligned}
> \bar{X}_n = FR([a, b]) \xrightarrow[n \to +\infty]{\mathbb{P}} \int_a^b f_Z(z) \, dz
> \end{aligned}
> $$
> Di conseguenza, all'aumentare della numerosità campionaria $n$, le altezze delle barre dell'istogramma (opportunamente normalizzate per l'ampiezza dell'intervallo) approssimano sempre meglio l'area sottesa dalla vera densità $f_Z(z)$ in ciascun intervallo $[a, b]$.

### Legge Forte dei Grandi Numeri

> [!theorem] Legge Forte dei Grandi Numeri (SLLN)
> Sia $\{X_n\}_{n \in \mathbb{N}}$ un campione aleatorio di variabili indipendenti e identicamente distribuite con densità $f(\cdot, \boldsymbol{\theta})$ e valore atteso finito:
> $$
> \begin{aligned}
> \mathbb{E}[X_n] = \mu < +\infty
> \end{aligned}
> $$
> Allora la successione delle medie campionarie $\bar{X}_n = \frac{1}{n}\sum_{i=1}^n X_i$ soddisfa:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \lim_{n \to +\infty} \bar{X}_n = \mu \right\} = 1
> \end{aligned}
> $$

### Convergenza Quasi Certa

> [!definition] Convergenza Quasi Certa
> Siano $\{X_n\}_{n \in \mathbb{N}}$ e $X$ variabili aleatorie definite sul medesimo spazio di probabilità $(\Omega, \mathcal{F}, \mathbb{P})$.
> Si dice che la successione $X_n$ **converge quasi certamente** (q.c.) alla variabile aleatoria $X$, e si scrive:
> $$
> \begin{aligned}
> X_n \xrightarrow{n \to +\infty} X \quad \text{q.c.}
> \end{aligned}
> $$
> se e solo se l'evento su cui la successione non converge ha probabilità nulla:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \lim_{n \to +\infty} X_n = X \right\} = 1
> \end{aligned}
> $$

> [!note] Interpretazione Teoretico-Misuristica
> La convergenza quasi certa corrisponde esattamente alla convergenza quasi ovunque (q.o.) rispetto alla misura di probabilità $\mathbb{P}$. Infatti:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \lim_{n \to +\infty} X_n = X \right\} = 1 \iff \mathbb{P}\left\{ \lim_{n \to +\infty} |X_n - X| \neq 0 \right\} = 0
> \end{aligned}
> $$
> il che indica che l'insieme dei punti campionari $\omega \in \Omega$ per cui $X_n(\omega) \not\to X(\omega)$ appartiene agli insiemi trascurabili (misura nulla).

> [!proposition] Gerarchia tra Convergenza Quasi Certa e in Probabilità
> Siano $\{X_n\}_{n \in \mathbb{N}}$ e $X$ variabili aleatorie. La convergenza quasi certa implica sempre la convergenza in probabilità:
> $$
> \begin{aligned}
> X_n \xrightarrow{n \to +\infty} X \quad \text{q.c.} \implies X_n \xrightarrow[n \to +\infty]{\mathbb{P}} X
> \end{aligned}
> $$
> Il viceversa non è in generale vero a meno di estrarre opportune sottosuccessioni.

Dalla proposizione segue immediatamente che la legge forte dei grandi numeri implica la legge debole:
$$
\begin{aligned}
\bar{X}_n \xrightarrow{n \to +\infty} \mu \quad \text{q.c.} \implies \bar{X}_n \xrightarrow[n \to +\infty]{\mathbb{P}} \mu
\end{aligned}
$$

## Teorema del Limite Centrale

### Enunciato e Standardizzazione

> [!theorem] Teorema del Limite Centrale (TLC)
> Sia $\{X_n\}_{n \in \mathbb{N}}$ un campione aleatorio di variabili indipendenti e identicamente distribuite con densità $f(\cdot, \boldsymbol{\theta})$, aventi valore atteso e varianza finiti:
> $$
> \begin{aligned}
> \mathbb{E}[X_n] = \mu, \quad \mathbb{V}[X_n] = \sigma^2 < +\infty \quad \forall n \in \mathbb{N}
> \end{aligned}
> $$
> Allora, per ogni $x \in \mathbb{R}$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathbb{P}\left\{ \frac{\bar{X}_n - \mu}{\left(\frac{\sigma}{\sqrt{n}}\right)} \le x \right\} = \Phi(x) = \frac{1}{\sqrt{2\pi}} \int_{-\infty}^x e^{-\frac{t^2}{2}} \, dt
> \end{aligned}
> $$
> In altri termini, per $n \to +\infty$, la variabile standardizzata:
> $$
> \begin{aligned}
> Z_n := \frac{\bar{X}_n - \mu}{\left(\frac{\sigma}{\sqrt{n}}\right)}
> \end{aligned}
> $$
> ha asintoticamente distribuzione normale standard $N(0, 1)$.

> [!note] Standardizzazione della Media Campionaria
> La variabile $Z_n$ rappresenta la standardizzazione della media campionaria $\bar{X}_n$. Infatti:
> $$
> \begin{aligned}
> \mathbb{E}[Z_n] = \mathbb{E}\left[ \frac{\bar{X}_n - \mu}{\sigma}\sqrt{n} \right] = \frac{\sqrt{n}}{\sigma}(\mathbb{E}[\bar{X}_n] - \mu) = 0
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \mathbb{V}[Z_n] = \mathbb{V}\left[ \frac{\bar{X}_n - \mu}{\sigma}\sqrt{n} \right] = \frac{n}{\sigma^2}\mathbb{V}[\bar{X}_n] = \frac{n}{\sigma^2}\left(\frac{\sigma^2}{n}\right) = 1
> \end{aligned}
> $$

### Convergenza in Distribuzione

> [!definition] Convergenza in Distribuzione (o in Legge)
> Siano $\{X_n\}_{n \in \mathbb{N}}$ e $X$ variabili aleatorie con funzioni di ripartizione rispettivamente $F_{X_n}(x)$ e $F_X(x)$.
> Si dice che la successione $X_n$ **converge in distribuzione** (o in legge) a $X$, e si indica con:
> $$
> \begin{aligned}
> X_n \xrightarrow[n \to +\infty]{\mathcal{D}} X
> \end{aligned}
> $$
> se e solo se la successione delle funzioni di ripartizione converge puntualmente alla funzione di ripartizione limite per ogni punto di continuità di $F_X$:
> $$
> \begin{aligned}
> \lim_{n \to +\infty} \mathbb{P}\{X_n \le x\} = \mathbb{P}\{X \le x\} \iff \lim_{n \to +\infty} F_{X_n}(x) = F_X(x) \quad \forall x \in \mathcal{C}(F_X)
> \end{aligned}
> $$

> [!note] Significato Operativo del TLC e Confronto con le LLN
> Alla luce della convergenza in distribuzione, l'enunciato del teorema del limite centrale si scrive:
> $$
> \begin{aligned}
> Z_n = \frac{\bar{X}_n - \mu}{\left(\frac{\sigma}{\sqrt{n}}\right)} \xrightarrow[n \to +\infty]{\mathcal{D}} Z \sim N(0, 1)
> \end{aligned}
> $$
> È fondamentale rimarcare che la convergenza in distribuzione descrive esclusivamente il comportamento asintotico delle probabilità e non fornisce informazioni puntuali sui singoli valori campionari (traiettorie). Per analizzare il comportamento asintotico dei dati campionari e la consistenza delle stime occorre invece fare affidamento sulla legge debole (convergenza in probabilità) e sulla legge forte (convergenza quasi certa).

### Applicazioni ed Esercizi sul Teorema del Limite Centrale

> [!example] Lancio di un Dado non Truccato
> Si lancia un dado a sei facce non truccato per $n = 6 \cdot 10^5$ volte.
> Si vuole determinare la probabilità che il numero 6 esca un numero di volte compreso tra $99\,900$ e $100\,100$.
> 
> Sia $S$ la variabile aleatoria che conta il numero complessivo di esiti favorevoli (uscita del 6):
> $$
> \begin{aligned}
> S \sim \mathcal{B}\left(6 \cdot 10^5, \, \frac{1}{6}\right)
> \end{aligned}
> $$
> I parametri della distribuzione binomiale sono:
> $$
> \begin{aligned}
> \mu = n p = 6 \cdot 10^5 \cdot \frac{1}{6} = 10^5
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \sigma^2 = n p (1 - p) = 6 \cdot 10^5 \cdot \frac{1}{6} \cdot \frac{5}{6} = \frac{5}{6} \cdot 10^5
> \end{aligned}
> $$
> $$
> \begin{aligned}
> \sigma = \sqrt{\frac{5}{6} \cdot 10^5} = \frac{\sqrt{5}}{6} \sqrt{6 \cdot 10^5} = \frac{\sqrt{30}}{6} \cdot 10^2 \cdot \sqrt{10} = \frac{\sqrt{30}}{6} \cdot 10^3
> \end{aligned}
> $$
> Per il Teorema del Limite Centrale, la variabile standardizzata approssima una normale standard:
> $$
> \begin{aligned}
> \frac{S - 10^5}{\frac{\sqrt{5}}{6}\sqrt{6 \cdot 10^5}} \sim N(0, 1)
> \end{aligned}
> $$
> La probabilità richiesta è:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ 99\,900 < S < 100\,100 \right\} &= \mathbb{P}\left\{ \frac{99\,900 - 10^5}{\frac{\sqrt{5}}{6}\sqrt{6 \cdot 10^5}} < \frac{S - 10^5}{\frac{\sqrt{5}}{6}\sqrt{6 \cdot 10^5}} < \frac{100\,100 - 10^5}{\frac{\sqrt{5}}{6}\sqrt{6 \cdot 10^5}} \right\} \\
> &= \mathbb{P}\left\{ \frac{99\,900 - 100\,000}{\frac{\sqrt{30}}{6} \cdot 10^2 \cdot \dots} < Z < \frac{100\,100 - 100\,000}{\frac{\sqrt{30}}{6} \cdot 10^2 \cdot \dots} \right\}
> \end{aligned}
> $$

> [!example] Sondaggio Elettorale su un Campione di Popolazione
> Si consideri una popolazione di $N = 4 \cdot 10^7$ elettori, in cui il $52\%$ è intenzionato a votare Sì ($= 1$) e il restante $48\%$ è intenzionato a votare No ($= 0$).
> Si conduce un sondaggio statistico intervistando un campione di $n = 4000$ individui.
> 
> Si determinano:
> 1. La probabilità che la maggioranza del campione intervistato risponda Sì;
> 2. Nel caso in cui si riduca il campione a $n < 4000$, la dimensione minima $n$ necessaria affinché la probabilità che la maggioranza risponda Sì sia almeno pari a $0.975$.
> 
> **Risoluzione del punto 1:**
> Sia $X_i$ la risposta dell'$i$-esimo intervistato ($i = 1, \dots, 4000$):
> $$
> \begin{aligned}
> X_i \sim \mathcal{B}(1, \, 0.52)
> \end{aligned}
> $$
> La somma delle risposte è:
> $$
> \begin{aligned}
> S_{4000} = \sum_{i=1}^{4000} X_i
> \end{aligned}
> $$
> Si assume l'indipendenza stocastica tra le $X_i$ (ipotesi lecita e accurata in quanto la popolazione totale $N = 4 \cdot 10^7$ è di molti ordini di grandezza superiore alla numerosità campionaria $n = 4000$).
> 
> La condizione di maggioranza favorevole corrisponde a $S_{4000} > 2000$.
> Media e varianza della singola variabile $X_i$ sono:
> $$
> \begin{aligned}
> \mathbb{E}[X_i] = p = 0.52, \quad \mathbb{V}[X_i] = p(1 - p) = 0.52 \cdot 0.48 = 0.2496
> \end{aligned}
> $$
> Per il Teorema del Limite Centrale, la standardizzazione della media campionaria è asintoticamente gaussiana:
> $$
> \begin{aligned}
> \frac{\frac{S_{4000}}{4000} - 0.52}{\sqrt{\frac{0.52 \cdot 0.48}{4000}}} = \frac{S_{4000} - 4000 \cdot 0.52}{\sqrt{4000 \cdot 0.52 \cdot 0.48}} = \frac{S_{4000} - 2080}{\sqrt{998.4}} \approx N(0, 1) =: Z
> \end{aligned}
> $$
> Poiché $S_{4000}$ assume valori interi, la condizione $S_{4000} > 2000$ equivale a $S_{4000} \ge 2001$. Applicando la correzione per continuità di Yates:
> $$
> \begin{aligned}
> \mathbb{P}\{S_{4000} \ge 2000.5\} &= \mathbb{P}\left\{ Z \ge \frac{2000.5 - 2080}{\sqrt{4000 \cdot 0.52 \cdot 0.48}} \right\} \\
> &= \mathbb{P}\left\{ Z \ge \frac{-79.5}{31.5975} \right\} \\
> &= \mathbb{P}\{Z \ge -2.51\} \\
> &= \mathbb{P}\{Z \le 2.51\} \\
> &= \Phi(2.51) = 0.9940 = 99.4\%
> \end{aligned}
> $$
> 
> **Risoluzione del punto 2:**
> Sia $S_n = \sum_{i=1}^n X_i$. Si richiede di determinare la minima dimensione campionaria $n$ affinché:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ S_n > \frac{n}{2} \right\} \ge 0.975
> \end{aligned}
> $$
> Esprimendo la disuguaglianza in termini di media campionaria $\frac{S_n}{n}$:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \frac{S_n}{n} > 0.5 \right\} \ge 0.975
> \end{aligned}
> $$
> Standardizzando entrambi i membri:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ \frac{\frac{S_n}{n} - 0.52}{\sqrt{\frac{0.52 \cdot 0.48}{n}}} > \frac{0.50 - 0.52}{\sqrt{\frac{0.52 \cdot 0.48}{n}}} \right\} \ge 0.975
> \end{aligned}
> $$
> Posto $Z \sim N(0, 1)$:
> $$
> \begin{aligned}
> \mathbb{P}\left\{ Z > -\frac{0.02}{\sqrt{0.52 \cdot 0.48}} \sqrt{n} \right\} \ge 0.975
> \end{aligned}
> $$
> Per simmetria della densità gaussiana $\mathbb{P}\{Z > -z_0\} = \mathbb{P}\{Z \le z_0\} = \Phi(z_0)$:
> $$
> \begin{aligned}
> \Phi\left( \sqrt{n} \cdot \frac{0.02}{\sqrt{0.52 \cdot 0.48}} \right) \ge 0.975
> \end{aligned}
> $$
> Dalle tavole della distribuzione normale standard si ha $\Phi(1.96) = 0.975$, per cui:
> $$
> \begin{aligned}
> \sqrt{n} \cdot \frac{0.02}{\sqrt{0.52 \cdot 0.48}} \ge 1.96
> \end{aligned}
> $$
> Esplicitando rispetto a $n$:
> $$
> \begin{aligned}
> \sqrt{n} \ge 1.96 \cdot \frac{\sqrt{0.52 \cdot 0.48}}{0.02} = 1.96 \cdot \frac{\sqrt{0.2496}}{0.02} \approx 1.96 \cdot 24.47959 \approx 48.05
> \end{aligned}
> $$
> Elevando al quadrato:
> $$
> \begin{aligned}
> n \ge (48.05)^2 \approx 2309
> \end{aligned}
> $$
> Si conclude che occorre intervistare almeno $n = 2309$ elettori.

