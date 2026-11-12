---
title: "Serie Numeriche"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 8)"
tags:
  - math/real-analysis/series
  - math/real-analysis/convergence-criteria
---

# 8. Serie Numeriche

## 8.1. Definizioni fondamentali, somme parziali e carattere

> [!definition] Serie Numerica e Successione delle Somme Parziali
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale.
> Si definisce **serie numerica** di termine generale $a_n$ la successione $\{S_n\}_{n \in \mathbb{N}}$ delle somme parziali:
> $$
> S_n := \sum_{k=1}^n a_k = a_1 + a_2 + \dots + a_n
> $$
> La successione $\{S_n\}_{n \in \mathbb{N}}$ è detta **successione delle somme parziali** (o ridotte $n$-esime).
>
Il **carattere** della serie numerica è definito in base all'esistenza e al valore del limite della successione $\{S_n\}$ per $n \to +\infty$:
- **CONVERGENTE:** $\iff \lim_{n \to +\infty} S_n = S \in \mathbb{R}$ (il limite esiste finito).
  Il valore $S$ è detto **somma della serie**, e si indica formalmente con:
  $$
  \sum_{k=1}^{+\infty} a_k := \lim_{n \to +\infty} S_n = S
  $$
- **DIVERGENTE:** $\iff \lim_{n \to +\infty} S_n = +\infty$ oppure $\lim_{n \to +\infty} S_n = -\infty$ (il limite esiste infinito).
- **INDETERMINATA (o oscillante):** $\iff \lim_{n \to +\infty} S_n$ **non esiste**.

> [!note] Notazione
> Lo stesso simbolo $\sum_{k=1}^{+\infty} a_k$ è impiegato per indicare sia l'oggetto matematico astratto ("la serie"), sia il limite della successione delle somme parziali qualora esso esista (finito o infinito).
>
## 8.2. Serie notevoli: geometrica, Mengoli e armonica generalizzata

### Serie Geometrica

Fissato un parametro reale $x \in \mathbb{R}$ (detto *ragione* della serie), consideriamo per ogni $n \in \mathbb{N} \cup \{0\}$ il termine generale:
$$
a_n := x^n \quad (\text{con la convenzione } 0^0 := 1 \text{ per } x = 0, n = 0)
$$
La somma parziale $(n+1)$-esima (indicizzando da $k=0$ a $n$) è:
$$
S_n = \sum_{k=0}^n x^k = 1 + x + x^2 + \dots + x^n
$$
Per $x \neq 1$, ricordando l'identità algebrica per la scomposizione della differenza di potenze:
$$
(1 - x) S_n = (1 - x)(1 + x + x^2 + \dots + x^n) = 1 - x^{n+1}
$$
da cui si ricava la forma chiusa per la ridotta:
$$
S_n = \frac{1 - x^{n+1}}{1 - x}, \quad \forall x \neq 1
$$

Valutiamo il limite per $n \to +\infty$:
1. Se $x = 1$:
   $$
   S_n = \sum_{k=0}^n 1 = n + 1 \xrightarrow[n \to +\infty]{} +\infty
   $$
2. Se $x \neq 1$:
   $$
   \lim_{n \to +\infty} x^{n+1} = \begin{cases}
   0 & \text{se } |x| < 1 \\
   +\infty & \text{se } x > 1 \\
   \nexists & \text{se } x \le -1
   \end{cases}
   $$
   Ne segue:
   $$
   S_n = \frac{1 - x^{n+1}}{1 - x} \xrightarrow[n \to +\infty]{} \begin{cases}
   \dfrac{1}{1-x} & \text{se } |x| < 1 \\
   +\infty & \text{se } x > 1 \\
   \nexists & \text{se } x \le -1
   \end{cases}
   $$

> [!proposition] Carattere della Serie Geometrica
> Sia data la serie geometrica di ragione $x \in \mathbb{R}$:
> $$
> \sum_{k=0}^{+\infty} x^k
> $$
> Allora:
> - **CONVERGE** $\iff |x| < 1$, e in tal caso la sua somma vale:
>   $$
>   \sum_{k=0}^{+\infty} x^k = \frac{1}{1-x}
>   $$
> - **DIVERGE a $+\infty$** $\iff x \ge 1$;
> - **È INDETERMINATA** $\iff x \le -1$.
>
### Serie Armonica e Armonica Generalizzata

Consideriamo la successione di termine generale:
$$
a_k = \frac{1}{k^\alpha}, \quad \alpha \in \mathbb{R}, \quad k \in \mathbb{N}
$$
La somma parziale associata è:
$$
S_n = \sum_{k=1}^n \frac{1}{k^\alpha}
$$
In generale non esistono formule algebriche chiuse elementari per $S_n$ né per il suo limite per $n \to +\infty$ (salvo casi speciali, come il celebre Problema di Basilea per $\alpha = 2$, risolto da Eulero con somma $\frac{\pi^2}{6}$).

> [!theorem] Carattere della Serie Armonica Generalizzata
> La serie armonica generalizzata:
> $$
> \sum_{k=1}^{+\infty} \frac{1}{k^\alpha}
> $$
> - **CONVERGE** $\iff \alpha > 1$;
> - **DIVERGE a $+\infty$** $\iff \alpha \le 1$.
> 
> In particolare, per $\alpha = 1$ la serie è denominata **SERIE ARMONICA**:
> $$
> \sum_{k=1}^{+\infty} \frac{1}{k} = 1 + \frac{1}{2} + \frac{1}{3} + \dots = +\infty \quad (\text{Diverge a } +\infty)
> $$

> [!note] Osservazione: Il limite nullo del termine generale non basta
> Nonostante per qualsiasi $\alpha > 0$ si abbia:
> $$
> \lim_{n \to +\infty} \frac{1}{n^\alpha} = 0
> $$
> la serie corrispondente può divergere (come accade emblematicamente per la serie armonica ordinaria con $\alpha = 1$). L'annullarsi del termine generale non è condizione sufficiente per la convergenza.

> [!quote]- Dimostrazione
> **Dimostrazione del carattere tramite il Criterio Integrale:**
> Sia $f(x) = \frac{1}{x^\alpha}$ definita per $x \in [1, +\infty)$. Per ogni $\alpha > 0$, la funzione $f$ è continua, positiva e strettamente decrescente.
>
> **Caso 1: $\alpha > 1$ (Convergenza)**
> Costruiamo una funzione a gradini minorante $g(x)$ definita sotto il grafico di $f(x)$.
> Per ogni $k \ge 1$, nell'intervallo $[k, k+1)$ poniamo l'altezza pari al valore assunto dalla funzione sull'estremo destro, ossia $g(x) = \frac{1}{(k+1)^\alpha}$, oppure considerando l'integrale su intervalli unitari $[k-1, k]$ con $g(x) = \frac{1}{k^\alpha}$:
> $$
> 0 < g(x) \le f(x), \quad \forall x \ge 1
> $$
> Poiché $\alpha > 1$, sappiamo che l'integrale improprio di $f(x)$ converge:
> $$
> \int_1^{+\infty} f(x) \, dx = \int_1^{+\infty} \frac{1}{x^\alpha} \, dx = \lim_{M \to +\infty} \left[ \frac{x^{1-\alpha}}{1-\alpha} \right]_1^M = \frac{1}{\alpha - 1} < +\infty
> $$
> Per il teorema del confronto tra integrali impropri, anche la funzione a gradini $g(x)$ è integrabile in senso improprio su $[1, +\infty)$, e dunque su $[0, +\infty)$ ponendo ad esempio $\int_0^1 g(x) \, dx = 1$.
> L'integrale della funzione a gradini tra $0$ e $n$ rappresenta la somma delle aree di $n$ rettangoli aventi base unitaria ($b=1$) e altezza $\frac{1}{k^\alpha}$:
> $$
> \int_0^n g(x) \, dx = \sum_{k=1}^n \frac{1}{k^\alpha}
> $$
> Passando al limite per $n \to +\infty$:
> $$
> \lim_{n \to +\infty} \int_0^n g(x) \, dx = \int_0^{+\infty} g(x) \, dx = \ell \in \mathbb{R} \implies \lim_{n \to +\infty} \sum_{k=1}^n \frac{1}{k^\alpha} = \ell \in \mathbb{R}
> $$
> Per definizione di serie numerica, abbiamo dimostrato che per $\alpha > 1$ la serie armonica generalizzata converge:
> $$
> \sum_{k=1}^{+\infty} \frac{1}{k^\alpha} \quad \text{CONVERGE per } \alpha > 1.
> $$
>
> **Caso 2: $\alpha \le 1$ (Divergenza)**
> Sia ora $\alpha \le 1$. Consideriamo una funzione a gradini maggiorante $h(x)$ i cui rettangoli circoscrivono dall'alto il grafico di $f(x) = \frac{1}{x^\alpha}$.
> Per costruzione risulta:
> $$
> 0 \le f(x) \le h(x), \quad \forall x \ge 1
> $$
> Sappiamo dallo studio degli integrali impropri notevoli che per $\alpha \le 1$:
> $$
> \int_1^{+\infty} \frac{1}{x^\alpha} \, dx = +\infty \quad (\text{Diverge})
> $$
> Per il teorema del confronto, anche l'integrale improprio di $h(x)$ diverge:
> $$
> \int_1^{+\infty} h(x) \, dx = +\infty
> $$
> Ma l'integrale di $h(x)$ sull'intervallo $[1, n+1]$ coincide con la somma parziale della serie:
> $$
> \int_1^{n+1} h(x) \, dx = \sum_{k=1}^n \frac{1}{k^\alpha}, \quad n \in \mathbb{N}
> $$
> Poiché l'integrale diverge a $+\infty$ quando $n \to +\infty$, ne consegue direttamente che la successione delle somme parziali diverge a $+\infty$:
> $$
> \lim_{n \to +\infty} S_n = \lim_{n \to +\infty} \sum_{k=1}^n \frac{1}{k^\alpha} = +\infty
> $$
> Dunque:
> $$
> \sum_{k=1}^{+\infty} \frac{1}{k^\alpha} \quad \text{DIVERGE a } +\infty \text{ per } \alpha \le 1.
> $$
> $\blacksquare$

> [!note] Caso $\alpha \le 0$
> Se $\alpha \le 0$, per ogni $k \in \mathbb{N}$ si ha $\frac{1}{k^\alpha} = k^{-\alpha} \ge 1$.
> Il termine generale non è infinitesimo:
> $$
> \lim_{k \to +\infty} \frac{1}{k^\alpha} \neq 0
> $$
> Dunque per la condizione necessaria di convergenza la serie **non può convergere** (e diverge positivamente a $+\infty$).
>
## 8.3. Condizione necessaria di convergenza

> [!theorem] Condizione Necessaria di Convergenza (Teorema del Limite del Termine Generale)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale e sia $\sum_{n=1}^{+\infty} a_n$ la serie ad essa associata, con somme parziali $\{S_n\}_{n \in \mathbb{N}}$.
> Se la serie **CONVERGE** ($\lim_{n \to +\infty} S_n = \ell \in \mathbb{R}$), allora il suo termine generale è necessariamente **infinitesimo**:
> $$
> \lim_{n \to +\infty} a_n = 0
> $$

> [!quote]- Dimostrazione
> Per ipotesi la serie converge, il che significa che la successione delle somme parziali ammette limite finito:
> $$
> \exists \ell \in \mathbb{R} : \lim_{n \to +\infty} S_n = \ell
> $$
> Poiché $n - 1 \to +\infty$ quando $n \to +\infty$, anche la successione traslata delle somme parziali converge allo stesso valore:
> $$
> \lim_{n \to +\infty} S_{n-1} = \ell
> $$
> Osserviamo che la differenza algebrica tra due somme parziali consecutive restituisce per costruzione il termine generale $n$-esimo:
> $$
> S_n - S_{n-1} = \sum_{i=1}^n a_i - \sum_{i=1}^{n-1} a_i = a_n
> $$
> Applicando l'algebra dei limiti per $n \to +\infty$:
> $$
> \lim_{n \to +\infty} a_n = \lim_{n \to +\infty} (S_n - S_{n-1}) = \lim_{n \to +\infty} S_n - \lim_{n \to +\infty} S_{n-1} = \ell - \ell = 0
> $$
> Il termine generale $a_n$ tende quindi a zero per $n \to +\infty$. $\blacksquare$

> [!warning] La condizione necessaria NON è sufficiente (Test di divergenza)
> La condizione $\lim_{n \to +\infty} a_n = 0$ è solo una condizione **necessaria**, ma **NON sufficiente**:
> - Se $\lim_{n \to +\infty} a_n = 0$, la serie **può convergere o divergere** (ad esempio per la serie armonica $a_n = \frac{1}{n} \to 0$, ma $\sum \frac{1}{n} = +\infty$);
> - Per contrapposizione logica, se $\lim_{n \to +\infty} a_n \neq 0$ (oppure non esiste), allora la serie **NON converge** (diverge o è indeterminata).
>
## 8.4. Serie a termini non negativi: criteri del confronto e asintotico

Una classe centrale dell'analisi delle serie è quella delle serie a termini di segno costante, specificamente a termini **definitivamente non negativi** ($a_n \ge 0$).

> [!theorem] Regolarità delle Serie a Termini Definitivamente Non Negativi
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione definitivamente non negativa:
> $$
> a_n \ge 0 \quad \text{definitivamente per } n \to +\infty
> $$
> Allora la serie numerica associata è **regolare**:
> $$
> \sum_{n=1}^{+\infty} a_n \quad \text{CONVERGE} \quad \lor \quad \text{DIVERGE a } +\infty
> $$
> In particolare, una serie a termini definitivamente non negativi **NON PUÒ ESSERE INDETERMINATA**.

> [!quote]- Dimostrazione
> Sia $S_n = \sum_{k=1}^n a_k$ la successione delle somme parziali. Poiché definitivamente $a_{n+1} \ge 0$, si ha:
> $$
> S_{n+1} - S_n = a_{n+1} \ge 0 \implies S_{n+1} \ge S_n \quad \text{definitivamente.}
> $$
> La successione $\{S_n\}$ è dunque **monotona crescente** (o non decrescente).
> Per il Teorema del Limite per Successioni Monotone, $\{S_n\}$ ammette sempre limite:
> $$
> \lim_{n \to +\infty} S_n = \sup_{n \in \mathbb{N}} S_n = \ell \in \mathbb{R} \cup \{+\infty\}
> $$
> - Se l'estremo superiore è finito ($\sup S_n = \ell \in \mathbb{R}$), la serie **converge**;
> - Se l'estremo superiore è infinito ($\sup S_n = +\infty$), la serie **diverge a $+\infty$**.
> Non vi è alcuna possibilità di comportamento oscillante o indeterminato. $\blacksquare$

> [!note] Osservazione: Serie a termini non positivi
> Un risultato del tutto simmetrico vale per le serie a termini definitivamente non positivi ($a_n \le 0$ definitivamente): la successione delle somme parziali è monotona decrescente, pertanto la serie converge a un limite finito oppure diverge negativamente a $-\infty$.
>
### Teorema del Confronto per Serie Numeriche

> [!theorem] Teorema del Confronto
> Siano $\{a_n\}_{n \in \mathbb{N}}$ e $\{b_n\}_{n \in \mathbb{N}}$ due successioni a termini definitivamente non negativi tali che:
> $$
> 0 \le a_n \le b_n \quad \text{definitivamente per } n \to +\infty
> $$
> Allora:
> 1. $\sum_{n=1}^{+\infty} b_n \text{ converge} \implies \sum_{n=1}^{+\infty} a_n \text{ converge}$;
> 2. $\sum_{n=1}^{+\infty} a_n \text{ diverge a } +\infty \implies \sum_{n=1}^{+\infty} b_n \text{ diverge a } +\infty$.

> [!note] Nota metodologica
> Il criterio del confronto ordinario richiede di trovare opportune disuguaglianze puntuali valide per ogni $n$ grande. In molti contesti con espressioni algebriche o trascendenti articolate, tale stima diretta può risultare laboriosa: per questo motivo si introduce il confronto asintotico.
>
### Teorema del Confronto Asintotico per Serie Numeriche

> [!theorem] Teorema del Confronto Asintotico
> Siano $\{a_n\}_{n \in \mathbb{N}}$ e $\{b_n\}_{n \in \mathbb{N}}$ due successioni a termini definitivamente non negativi, e si supponga che per $n \to +\infty$ siano asintoticamente equivalenti:
> $$
> a_n \sim b_n \quad \text{per } n \to +\infty \quad \left( \lim_{n \to +\infty} \frac{a_n}{b_n} = 1 \right)
> $$
> Allora le due serie numeriche associate hanno lo **stesso carattere**:
> - $\sum_{n=1}^{+\infty} a_n \text{ converge} \iff \sum_{n=1}^{+\infty} b_n \text{ converge}$
> - $\sum_{n=1}^{+\infty} a_n \text{ diverge a } +\infty \iff \sum_{n=1}^{+\infty} b_n \text{ diverge a } +\infty$

> [!example] Esempio
> Studiare il carattere della serie:
> $$
> \sum_{n=2}^{+\infty} a_n \quad \text{con } a_n = \frac{n^2 - 20\sin^5 n}{n^6 - n^3}, \quad n \ge 2
> $$
> 1. **Segno del termine generale:**
>    - Per $n \ge 2$, il denominatore soddisfa $n^6 - n^3 = n^3(n^3 - 1) \ge 8(7) > 0$;
>    - Poiché $|\sin n| \le 1$, per ogni $n$ si ha $-20 \le -20\sin^5 n \le 20$. Dunque il numeratore soddisfa:
>      $$
>      n^2 - 20\sin^5 n \ge n^2 - 20 > 0 \quad \forall n \ge 5
>      $$
>    Quindi $a_n > 0$ definitivamente.
> 2. **Comportamento asintotico per $n \to +\infty$:**
>    Raccogliendo le potenze dominanti:
>    $$
>    a_n = \frac{n^2\left(1 - \frac{20\sin^5 n}{n^2}\right)}{n^6\left(1 - \frac{1}{n^3}\right)}
>    $$
>    Poiché $\frac{20\sin^5 n}{n^2} \to 0$ (prodotto di una funzione limitata per un infinitesimo) e $\frac{1}{n^3} \to 0$, si ottiene:
>    $$
>    a_n \sim \frac{n^2}{n^6} = \frac{1}{n^4} \quad \text{per } n \to +\infty
>    $$
> 3. **Conclusione:**
>    La serie campione è la serie armonica generalizzata:
>    $$
>    \sum_{n=1}^{+\infty} \frac{1}{n^4}
>    $$
>    la quale **converge** essendo $\alpha = 4 > 1$.
>    Per il Teorema del Confronto Asintotico, anche la serie data:
>    $$
>    \sum_{n=2}^{+\infty} \frac{n^2 - 20\sin^5 n}{n^6 - n^3} \quad \mathbf{CONVERGE.}
>    $$
>
>
### Confronto Ordinario vs Confronto Asintotico

> [!note] Osservazione: Ambito di validità dei criteri di confronto
> 1. Entrambi i criteri valgono **esclusivamente per successioni a termini definitivamente non negativi** (o non positivi).
> 2. Il Teorema del Confronto Asintotico è una conseguenza diretta del Teorema del Confronto ordinario.
> 3. Esistono serie in cui il confronto asintotico **non è applicabile** (perché il limite del rapporto non esiste a causa di oscillazioni), ma il **confronto ordinario** permette di risolvere immediatamente il problema.

> [!example] Esempio (Confronto ordinario applicabile ma confronto asintotico non applicabile)
> Si consideri la serie di termine generale:
> $$
> a_n = \frac{2 + (-1)^n}{n^2}, \quad n \ge 1
> $$
> - Poiché $(-1)^n$ oscilla continuamente assumendo i valori $-1$ e $+1$, il rapporto tra $a_n$ e la potenza dominante naturale $\frac{1}{n^2}$ vale:
>   $$
>   \frac{a_n}{1/n^2} = 2 + (-1)^n
>   $$
>   Tale successione oscilla tra $1$ (per $n$ dispari) e $3$ (per $n$ pari): il limite per $n \to +\infty$ **non esiste**, rendendo il Teorema del Confronto Asintotico del tutto inapplicabile.
> - Tuttavia, possiamo applicare direttamente il **Teorema del Confronto ordinario**, osservando la limitazione elementare:
>   $$
>   0 < a_n = \frac{2 + (-1)^n}{n^2} \le \frac{3}{n^2}, \quad \forall n \ge 1
>   $$
>   Poiché la serie maggiorante:
>   $$
>   \sum_{n=1}^{+\infty} \frac{3}{n^2} = 3 \sum_{n=1}^{+\infty} \frac{1}{n^2}
>   $$
>   converge ($\alpha = 2 > 1$), per il Teorema del Confronto si conclude immediatamente che:
>   $$
>   \sum_{n=1}^{+\infty} \frac{2 + (-1)^n}{n^2} \quad \mathbf{CONVERGE.}
>   $$

> [!note] Prospettiva: I successivi criteri operativi per serie numeriche
> I criteri successivi (criterio del rapporto o di d'Alembert, criterio della radice o di Cauchy, criterio di condensazione, criterio di Leibniz per serie a segni alterni), pur non essendo applicabili universalmente a ogni serie, presentano il vantaggio di richiedere calcoli puramente algebrici e meccanici sul termine generale senza dover preventivamente individuare una serie campione di riferimento.
>
## 8.5. Criteri operativi: radice di Cauchy, rapporto di D'Alembert e condensazione

I successivi risultati, sebbene non siano sempre risolutivi (possono condurre a casi di indecisione o inconcludenza), risultano operativamente molto più diretti e semplici da applicare rispetto al confronto puntuale.

### Criterio della Radice (Criterio di Cauchy)

> [!theorem] Teorema (Criterio della Radice)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a termini definitivamente non negativi ($a_n \ge 0$ def.) e si supponga che:
> $$
> \limsup_{n \to +\infty} \sqrt[n]{a_n} = \ell \in [0, +\infty]
> $$
> Allora si distinguono i seguenti casi fondamentali:
> 1. Se $\ell \in [0, 1)$, allora la serie **converge**:
>    $$
>    \sum_{n=1}^{+\infty} a_n < +\infty
>    $$
> 2. Se $\sqrt[n]{a_n} \ge 1$ definitivamente (oppure se $\ell > 1$), allora la serie **diverge positivamente**:
>    $$
>    \sum_{n=1}^{+\infty} a_n = +\infty
>    $$
> 3. Se $\ell = 1$, il criterio è **inconcludente** (non è possibile dedurre alcuna informazione sul carattere di convergenza della serie).

> [!note] Formulazione alternativa con il limite ordinario
> Le medesime conclusioni sussistono identicamente qualora il limite superiore $\limsup_{n \to +\infty} \sqrt[n]{a_n}$ sia sostituito dal limite ordinario $\lim_{n \to +\infty} \sqrt[n]{a_n}$, nei casi in cui tale limite esista.

> [!quote]- Dimostrazione
> Si analizzano separatamente i casi di convergenza e divergenza:
>
> 4. **Caso $\ell \in [0, 1)$ (Convergenza):**
>    Sia $\limsup_{n \to +\infty} \sqrt[n]{a_n} = \ell \in [0, 1)$. Per la definizione metrica di limite superiore, scelto un opportuno valore $q$ tale che $\ell < q < 1$, si ha definitivamente:
>    $$
>    \sqrt[n]{a_n} \le q < 1 \quad \text{def.}
>    $$
>    (Nel caso in cui $\ell$ sia assunto direttamente come maggiorante, $\sqrt[n]{a_n} \le \ell$).
>    Essendo $a_n \ge 0$, elevando ambo i membri alla potenza $n$-esima si preserva il verso della disuguaglianza:
>    $$
>    0 \le a_n \le q^n \quad \text{def.}
>    $$
>    La serie maggiorante $\sum_{n=1}^{+\infty} q^n$ è una serie geometrica di ragione $q \in [0, 1)$, la quale è notoriamente convergente:
>    $$
>    \sum_{n=1}^{+\infty} q^n = \frac{q}{1 - q} < +\infty
>    $$
>    Applicando il Criterio del Confronto per serie a termini non negativi, si conclude che la serie $\sum_{n=1}^{+\infty} a_n$ **converge**.
>
> 5. **Caso $\sqrt[n]{a_n} \ge 1$ definitivamente (Divergenza):**
>    Se $\sqrt[n]{a_n} \ge 1$ definitivamente, elevando alla potenza $n$-esima si ottiene:
>    $$
>    a_n \ge 1^n = 1 \quad \text{def.}
>    $$
>    Ne segue immediatamente che il termine generale non può tendere a zero:
>    $$
>    \lim_{n \to +\infty} a_n \neq 0
>    $$
>    Essendo violata la condizione necessaria di convergenza di Cauchy ($\lim_{n \to +\infty} a_n = 0$), la serie non può convergere. Trattandosi di una serie a termini non negativi, l'unica possibilità residua è la divergenza:
>    $$
>    \sum_{n=1}^{+\infty} a_n = +\infty
>    $$
> $\blacksquare$

> [!note] Analisi del caso $\limsup_{n \to +\infty} \sqrt[n]{a_n} = \ell > 1$ tramite sottosuccessioni
> Se si assume l'ipotesi più debole $\limsup_{n \to +\infty} \sqrt[n]{a_n} = \ell > 1$ (senza richiedere $\sqrt[n]{a_n} \ge 1$ per tutti gli $n$ definitivamente), per la caratterizzazione sequenziale del limite superiore esiste una sottosuccessione di indici $\{n_k\}_{k \in \mathbb{N}}$ tale che:
> $$
> \lim_{k \to +\infty} \sqrt[n_k]{a_{n_k}} = \ell > 1
> $$
> Fissato un valore intermedio $\ell'$ tale che $1 < \ell' < \ell$, per la definizione di limite si ha definitivamente lungo la sottosuccessione:
> $$
> \sqrt[n_k]{a_{n_k}} \ge \ell' > 1 \implies a_{n_k} \ge (\ell')^{n_k} \xrightarrow[k \to +\infty]{} +\infty
> $$
> Poiché lungo l'estratta $a_{n_k} \to +\infty$, l'intera successione $a_n$ non è infinitesima. Di conseguenza la serie parziale dei termini estratti diverge:
> $$
> \sum_{k=1}^{+\infty} a_{n_k} = +\infty \implies \sum_{n=1}^{+\infty} a_n = +\infty \quad (\text{Diverge})
> $$

> [!example] Controesempio e inconcludenza del caso critico $\ell = 1$
> Per comprendere per quale motivo il caso $\ell = 1$ non fornisca alcuna informazione, si consideri la serie armonica generalizzata di termine generale:
> $$
> a_n = \frac{1}{n^a}, \quad a > 0
> $$
> Calcolando la radice $n$-esima del termine generale:
> $$
> \sqrt[n]{a_n} = \left(\frac{1}{n^a}\right)^{1/n} = \frac{1}{n^{a/n}}
> $$
> Riscrivendo la potenza mediante l'esponenziale e il logaritmo naturale:
> $$
> \frac{1}{n^{a/n}} = \exp\left( -\log\left(n^{a/n}\right) \right) = \exp\left( -\frac{a}{n} \log n \right)
> $$
> Per la gerarchia degli infiniti e degli infinitesimi si ha $\lim_{n \to +\infty} \frac{\log n}{n} = 0$, da cui:
> $$
> \lim_{n \to +\infty} \sqrt[n]{a_n} = \lim_{n \to +\infty} e^{-\frac{a}{n}\log n} = e^0 = 1, \quad \forall a > 0
> $$
> D'altra parte, il comportamento asintotico della serie armonica generalizzata al variare del parametro $a > 0$ è ben determinato:
> $$
> \sum_{n=1}^{+\infty} \frac{1}{n^a} \begin{cases} \text{converge} & \text{se } a > 1 \\ \text{diverge} & \text{se } a \in (0, 1] \end{cases}
> $$
> Poiché il limite della radice vale costantemente $\ell = 1$ sia per serie convergenti ($a > 1$) sia per serie divergenti ($0 < a \le 1$), il criterio della radice non permette di dedurre alcuna conclusione quando $\ell = 1$.
>
### Criterio del Rapporto (Criterio di D'Alembert)

> [!theorem] Teorema (Criterio del Rapporto)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a termini definitivamente strettamente positivi ($a_n > 0$ def.) e si assuma che:
> $$
> \limsup_{n \to +\infty} \frac{a_{n+1}}{a_n} = \ell \in [0, +\infty]
> $$
> Allora:
> 1. Se $\ell \in [0, 1) \implies \sum_{n=1}^{+\infty} a_n$ **converge**;
> 2. Se $\ell > 1 \implies \sum_{n=1}^{+\infty} a_n$ **diverge**;
> 3. Se $\ell = 1 \implies$ il criterio è **inconcludente**.

> [!example] Esempio 1: Serie esponenziale per $x > 0$
> Si consideri la serie notevole dello sviluppo esponenziale:
> $$
> \sum_{n=0}^{+\infty} \frac{x^n}{n!} \quad \left( = e^x, \; \forall x \in \mathbb{R} \right)
> $$
> Per $x > 0$, la serie è a termini strettamente positivi. Applicando il criterio del rapporto:
> $$
> \frac{a_{n+1}}{a_n} = \frac{x^{n+1}}{(n+1)!} \cdot \frac{n!}{x^n} = \frac{x \cdot x^n}{(n+1)n!} \cdot \frac{n!}{x^n} = \frac{x}{n+1}
> $$
> Calcolando il limite per $n \to +\infty$:
> $$
> \lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \lim_{n \to +\infty} \frac{x}{n+1} = 0 =: \ell, \quad \forall x > 0
> $$
> Poiché $\ell = 0 < 1$, per il criterio del rapporto la serie **converge** per ogni $x > 0$.

> [!example] Esempio 2: Studio della convergenza della serie $\sum_{n=1}^{+\infty} \frac{n!}{n^n}$
> Si consideri la serie numerica:
> $$
> \sum_{n=1}^{+\infty} \frac{n!}{n^n}
> $$
> 4. **Verifica della condizione necessaria:**
>    Poiché la successione è a termini positivi, per la scala di infiniti ($n^n$ domina $n!$ per $n \to +\infty$) si ha:
>    $$
>    \lim_{n \to +\infty} a_n = \lim_{n \to +\infty} \frac{n!}{n^n} = 0
>    $$
> 5. **Calcolo del rapporto tra termini consecutivi:**
>    $$
>    \begin{align}
>    \frac{a_{n+1}}{a_n} &= \frac{(n+1)!}{(n+1)^{n+1}} \cdot \frac{n^n}{n!} \\
>    &= \frac{(n+1)n!}{(n+1)(n+1)^n} \cdot \frac{n^n}{n!} \\
>    &= \frac{n^n}{(n+1)^n} = \left(\frac{n}{n+1}\right)^n \\
>    &= \frac{1}{\left(\frac{n+1}{n}\right)^n} = \frac{1}{\left(1 + \frac{1}{n}\right)^n}
>    \end{align}
>    $$
> 6. **Passaggio al limite e conclusione:**
>    Ricordando il limite fondamentale del numero di Nepero $\lim_{n \to +\infty} \left(1 + \frac{1}{n}\right)^n = e$:
>    $$
>    \lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \lim_{n \to +\infty} \frac{1}{\left(1 + \frac{1}{n}\right)^n} = \frac{1}{e}
>    $$
>    Essendo $e > 1$, ne consegue:
>    $$
>    \ell = \frac{1}{e} < 1
>    $$
>    Per il criterio del rapporto, la serie $\sum_{n=1}^{+\infty} \frac{n!}{n^n}$ **converge**.
>
### Serie a Termini di Segno Qualunque e Convergenza Assoluta

Quando la successione $\{a_n\}_{n \in \mathbb{N}}$ non ha segno costante, non è possibile applicare direttamente i criteri basati sulla monotonia delle somme parziali. Si introduce pertanto il concetto di convergenza assoluta.

> [!definition] Convergenza Assoluta
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale a termini di segno qualunque.
> Si dice che la serie $\sum_{n=1}^{+\infty} a_n$ **converge assolutamente** se converge la serie dei valori assoluti dei suoi termini:
> $$
> \sum_{n=1}^{+\infty} |a_n| < +\infty
> $$

> [!theorem] Teorema (La convergenza assoluta implica la convergenza semplice)
> Se una serie numerica converge assolutamente, allora converge anche semplicemente:
> $$
> \sum_{n=1}^{+\infty} |a_n| \text{ converge} \implies \sum_{n=1}^{+\infty} a_n \text{ converge}
> $$

> [!warning] La convergenza assoluta è una condizione SOLO SUFFICIENTE
> Il viceversa del teorema non sussiste: una serie può convergere semplicemente senza che converga la serie dei suoi valori assoluti (in tal caso si dice che la serie converge *semplicemente* o *condizionatamente*).
> 
> Si consideri come controesempio la serie armonica alternata:
> $$
> \sum_{n=1}^{+\infty} \frac{(-1)^n}{n} \quad \text{CONVERGE}
> $$
> mentre la serie dei valori assoluti coincide con la serie armonica standard, la quale diverge:
> $$
> \sum_{n=1}^{+\infty} \left| \frac{(-1)^n}{n} \right| = \sum_{n=1}^{+\infty} \frac{1}{n} = +\infty \quad (\text{DIVERGE})
> $$
>
### Criterio di Leibniz per le Serie a Segni Alterni

> [!theorem] Teorema (Criterio di Leibniz)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a termini definitivamente non negativi ($a_n \ge 0$ def.) soddisfacente le due seguenti condizioni:
> 1. $\lim_{n \to +\infty} a_n = 0$ (la successione è infinitesima);
> 2. $\{a_n\}_{n \in \mathbb{N}}$ è definitivamente decrescente ($a_{n+1} \le a_n$ def.).
> 
> Allora la serie a segni alterni:
> $$
> \sum_{n=1}^{+\infty} (-1)^n a_n \quad \left( \text{oppure } \sum_{n=1}^{+\infty} (-1)^{n+1} a_n \right)
> $$
> **converge**.
> 
> Inoltre, detta $S = \sum_{n=1}^{+\infty} (-1)^n a_n$ la somma della serie e $S_n = \sum_{k=1}^n (-1)^k a_k$ la somma parziale $n$-esima:
> - Le somme parziali di ordine pari $S_{2n}$ approssimano la somma della serie per **eccesso**:
>   $$
>   S \le S_{2n}
>   $$
> - Le somme parziali di ordine dispari $S_{2n+1}$ approssimano la somma della serie per **difetto**:
>   $$
>   S_{2n+1} \le S
>   $$
> - L'errore assoluto $\mathcal{E}_n := |S - S_n|$ che si commette arrestando la serie alla somma parziale $n$-esima è maggiorato dal valore assoluto del primo termine trascurato:
>   $$
>   |\mathcal{E}_n| \le a_{n+1}
>   $$

> [!example] Esempio paradigmatico: La serie armonica alternata
> La serie armonica alternata:
> $$
> \sum_{n=1}^{+\infty} \frac{(-1)^n}{n}
> $$
> converge per il criterio di Leibniz in quanto $a_n = \frac{1}{n} \xrightarrow[n \to +\infty]{} 0$ e la successione $\{\frac{1}{n}\}_{n \in \mathbb{N}}$ è strettamente decrescente ($\frac{1}{n+1} < \frac{1}{n}$).

> [!quote]- Dimostrazione
> Sia $S_n := \sum_{k=1}^n (-1)^k a_k$ la successione delle somme parziali.
>
> 1. **Monotonia della sottosuccessione dei termini pari:**
>    Valutiamo la differenza tra due somme parziali pari consecutive:
>    $$
>    S_{2n+2} = S_{2n} + (-1)^{2n+1} a_{2n+1} + (-1)^{2n+2} a_{2n+2} = S_{2n} - \underbrace{(a_{2n+1} - a_{2n+2})}_{\ge 0 \text{ per decrescenza di } \{a_n\}} \le S_{2n}
>    $$
>    Dunque la successione $\{S_{2n}\}_{n \in \mathbb{N}}$ è **monotona decrescente**.
>
> 2. **Monotonia della sottosuccessione dei termini dispari:**
>    Valutiamo analogamente due termini dispari consecutivi:
>    $$
>    S_{2n+1} = S_{2n-1} + (-1)^{2n} a_{2n} + (-1)^{2n+1} a_{2n+1} = S_{2n-1} + \underbrace{(a_{2n} - a_{2n+1})}_{\ge 0 \text{ per decrescenza}} \ge S_{2n-1}
>    $$
>    Dunque la successione $\{S_{2n+1}\}_{n \in \mathbb{N}}$ è **monotona crescente**.
>
> 3. **Relazione tra termini pari e termini dispari:**
>    Calcolando la differenza diretta:
>    $$
>    S_{2n} - S_{2n+1} = S_{2n} - (S_{2n} - a_{2n+1}) = a_{2n+1} \ge 0 \quad (*)
>    $$
>    Ne segue che per ogni $n \in \mathbb{N}$ si ha:
>    $$
>    S_{2n} \ge S_{2n+1}
>    $$
>    Combinando la monotonia crescente dei dispari, la monotonia decrescente dei pari e la relazione $(*)$, assumendo che le ipotesi valgano per ogni $n$, si costruisce la catena di disuguaglianze ad incastro:
>    $$
>    S_1 \le S_3 \le S_5 \le \dots \le S_{2n-1} \le S_{2n+1} \le S_{2n} \le S_{2n-2} \le \dots \le S_4 \le S_2
>    $$
>
> 4. **Convergenza delle due sottosuccessioni:**
>    - La successione $\{S_{2n}\}$ è decrescente ed è limitata inferiormente da $S_1$ ($S_{2n} \ge S_1, \; \forall n$). Per il teorema sulle successioni monotone, esiste finito il limite:
>      $$
>      \lim_{n \to +\infty} S_{2n} = \ell_1 \in \mathbb{R}
>      $$
>    - La successione $\{S_{2n+1}\}$ è crescente ed è limitata superiormente da $S_2$ ($S_{2n+1} \le S_2, \; \forall n$). Dunque ammette limite finito:
>      $$
>      \lim_{n \to +\infty} S_{2n+1} = \ell_2 \in \mathbb{R}
>      $$
>
> 5. **Coincidenza dei limiti:**
>    Passando al limite per $n \to +\infty$ nella relazione $(*)$:
>    $$
>    \lim_{n \to +\infty} (S_{2n} - S_{2n+1}) = \lim_{n \to +\infty} a_{2n+1} = 0
>    $$
>    in virtù dell'ipotesi di infinitesimità (1) ($a_n \to 0$). Ne deriva che:
>    $$
>    \ell_1 - \ell_2 = 0 \implies \ell_1 = \ell_2 =: \ell \in \mathbb{R}
>    $$
>    Poiché le sottosuccessioni pari e dispari ricoprono l'intero insieme $\mathbb{N}$ e convergono al medesimo limite $\ell$, l'intera successione $\{S_n\}$ converge:
>    $$
>    \lim_{n \to +\infty} S_n = \ell \in \mathbb{R} \implies \sum_{n=1}^{+\infty} (-1)^n a_n \quad \text{CONVERGE}
>    $$
>
> 6. **Stima dell'errore di troncamento:**
>    Dalla catena ad incastro si ha che il limite $\ell = S$ è racchiuso tra ciascuna coppia di somme parziali consecutiva:
>    $$
>    S_{2n+1} \le \ell \le S_{2n}
>    $$
>    Pertanto:
>    - Per gli indici dispari:
>      $$
>      0 \le \ell - S_{2n+1} \le S_{2n} - S_{2n+1} = a_{2n+1} \implies \mathcal{E}_{2n+1} = |S - S_{2n+1}| \le a_{2n+1}
>      $$
>    - Per gli indici pari:
>      $$
>      0 \le S_{2n} - \ell \le S_{2n} - S_{2n+1} = a_{2n+1} \implies \mathcal{E}_{2n} = |S - S_{2n}| \le a_{2n+1}
>      $$
>    In conclusione, per ogni $n \in \mathbb{N}$ l'errore soddisfa la maggiorazione:
>    $$
>    |\mathcal{E}_n| = |S - S_n| \le a_{n+1}
>    $$
> $\blacksquare$

> [!note] Metodo analitico per dimostrare la decrescenza di $\{a_n\}$
> In molti esercizi può risultare algebricamente complicato dimostrare direttamente $a_{n+1} \le a_n$.
> Una strategia efficace consiste nell'introdurre una funzione reale di variabile continua $f: [x_0, +\infty) \to \mathbb{R}$ tale che:
> $$
> f(n) = a_n, \quad \forall n \ge x_0
> $$
> Se la funzione $f(x)$ è derivabile e si dimostra che:
> $$
> f'(x) \le 0, \quad \forall x > x_0
> $$
> allora $f(x)$ è monotona decrescente su $[x_0, +\infty)$, e di conseguenza la successione campionata $a_n = f(n)$ risulta definitivamente decrescente.

> [!warning] La decrescenza della funzione interpolante è solo condizione sufficiente
> Si noti che questo metodo non sempre è applicabile o necessario: una successione $\{a_n\}_{n \in \mathbb{N}}$ può essere strettamente decrescente sui punti discreti interi, mentre una funzione $f(x)$ che la interpola può oscillare liberamente tra i nodi senza essere globalmente decrescente su tutto $\mathbb{R}$.
>
### Ulteriori Criteri di Convergenza (Approfondimento)

> [!theorem] Teorema (Criterio di Condensazione di Cauchy)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a termini definitivamente non negativi e non crescente ($a_{n+1} \le a_n$).
> Allora la serie di partenza converge se e solo se converge la corrispondente serie "condensata" costruita sulle potenze di due:
> $$
> \sum_{n=1}^{+\infty} a_n \quad \text{converge} \iff \sum_{k=1}^{+\infty} 2^k a_{2^k} \quad \text{converge}
> $$

> [!theorem] Teorema (Criterio di Abel-Dirichlet)
> Si consideri la serie a termini di segno qualunque ottenuta come prodotto di due successioni:
> $$
> \sum_{n=0}^{+\infty} a_n b_n
> $$
> Se sono verificate le seguenti tre condizioni:
> 1. $\lim_{n \to +\infty} a_n = 0$;
> 2. $\{a_n\}_{n \in \mathbb{N}}$ è definitivamente decrescente;
> 3. La successione delle somme parziali di $\{b_n\}$ è **uniformemente limitata**, ovvero:
>    $$
>    \exists M \ge 0 : \left| \sum_{k=0}^n b_k \right| \le M, \quad \forall n \in \mathbb{N}
>    $$
> Allora la serie prodotto $\sum_{n=0}^{+\infty} a_n b_n$ **CONVERGE**.

> [!note] Relazione tra Leibniz e Dirichlet
> Si noti che il Criterio di Leibniz corrisponde al caso particolare in cui si scelga $b_n = (-1)^n$. Infatti le somme parziali della successione a segni alterni oscillano tra $1$ e $0$:
> $$
> B_n = \sum_{k=0}^n (-1)^k \in \{0, 1\} \implies |B_n| \le 1, \quad \forall n \in \mathbb{N}
> $$
> e risultano dunque limitate con $M = 1$.
>
