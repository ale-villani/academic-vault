---
title: "Successioni e Serie di Funzioni e Analiticità Reale"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 9)"
tags:
  - math/real-analysis/function-series
  - math/real-analysis/power-series
---

# 9. Successioni e Serie di Funzioni, Serie di Potenze e Analiticità Reale

## 9.1. Convergenza puntuale vs uniforme e spazio normato $C([a, b])$

Siano date $f_n: I \subset \mathbb{R} \to \mathbb{R}$, con $I$ intervallo reale ed $n \in \mathbb{N}$. Ci si pone la questione fondamentale di stabilire in quale senso, data una funzione limite $f: I \subset \mathbb{R} \to \mathbb{R}$, si possa affermare che:
$$
f_n \xrightarrow[n \to +\infty]{} f
$$

> [!definition] Convergenza Puntuale
> Siano $f_n: I \subset \mathbb{R} \to \mathbb{R}$ ($n \in \mathbb{N}$) funzioni definite su un intervallo $I$, e sia $f: I \to \mathbb{R}$.
> Si dice che la successione di funzioni $\{f_n\}_{n \in \mathbb{N}}$ **converge puntualmente** a $f$ in $I$ se, per ogni punto fissato $x \in I$, la successione numerica $\{f_n(x)\}_{n \in \mathbb{N}}$ converge al valore reale $f(x)$:
> $$
> \lim_{n \to +\infty} f_n(x) = f(x), \quad \forall x \in I
> $$
> In termini di quantificatori logici ($\varepsilon$-$n_0$):
> $$
> \forall x \in I, \; \forall \varepsilon > 0, \; \exists n_0 \in \mathbb{N} : |f_n(x) - f(x)| \le \varepsilon, \quad \forall n \ge n_0
> $$

> [!important] Dipendenza dell'indice di soglia nella convergenza puntuale
> Nella definizione di convergenza puntuale, la soglia $n_0$ dipende sia dal grado di approssimazione richiesto $\varepsilon$, sia dallo specifico punto $x \in I$:
> $$
> n_0 = n_0(\varepsilon, x)
> $$
> Ciò significa che punti diversi del dominio possono richiedere un numero differente (e potenzialmente arbitrariamente grande) di iterazioni per avvicinarsi alla funzione limite entro la tolleranza $\varepsilon$.
>
**Richiami di Analisi Funzionale: Spazi Normati e Spazi di Banach**

Per superare i limiti intrinseci della convergenza puntuale, è necessario interpretare le funzioni come punti o vettori all'interno di uno spazio funzionale dotato di metrica e norma.

- **Successioni convergenti in spazi normati:**
  Sia $X$ uno spazio vettoriale normato dotato di norma $\|\cdot\|$, e sia $\{x_n\}_{n \in \mathbb{N}} \subset X$.
  Si dice che $\{x_n\}$ **converge** a $x \in X$ per $n \to +\infty$ se:
  $$
  \lim_{n \to +\infty} \|x_n - x\| = 0
  $$

- **Successioni di Cauchy:**
  Si dice che $\{x_n\}_{n \in \mathbb{N}} \subset X$ è una **successione di Cauchy** se:
  $$
  \forall \varepsilon > 0, \; \exists n_0 > 0 : \|x_n - x_m\| \le \varepsilon, \quad \forall n, m \ge n_0 \iff \lim_{n, m \to +\infty} \|x_n - x_m\| = 0
  $$

> [!definition] Spazio Completo o Spazio di Banach
> Uno spazio normato $X$ in cui **ogni successione di Cauchy converge ad un elemento appartenente ad $X$** si dice **completo** o **Spazio di Banach**.
>
### Lo Spazio Normato $C([a, b])$ e la Norma del Massimo

> [!definition] Spazio $C([a, b])$ e Norma del Massimo
> Si definisce lo spazio delle funzioni reali continue sull'intervallo compatto $[a, b]$:
> $$
> C([a, b]) := \{f: [a, b] \to \mathbb{R} : f \text{ continua in } [a, b]\}
> $$
> Per ogni $f \in C([a, b])$, si definisce la **norma del massimo** (o norma uniforme / norma infinito):
> $$
> \|f\| := \max_{x \in [a, b]} |f(x)|
> $$
> (L'esistenza del massimo assoluto finito è garantita dal Teorema di Weierstrass, essendo $[a, b]$ compatto e $|f|$ continua).
>
**Verifica degli assiomi di spazio normato**

1. **Positività e Non degenerazione:**
   - $\|f\| \ge 0$ poiché $|f(x)| \ge 0$ per ogni $x \in [a, b]$;
   - $\|f\| = 0 \iff \max_{x \in [a, b]} |f(x)| = 0 \iff f(x) = 0, \; \forall x \in [a, b] \iff f = \mathbf{0}$ (funzione identicamente nulla).

2. **Omogeneità rispetto al prodotto per scalare:**
   Per ogni $\lambda \in \mathbb{R}$ e per ogni $f \in C([a, b])$:
   $$
   \|\lambda f\| = \max_{x \in [a, b]} |\lambda f(x)| = \max_{x \in [a, b]} \left( |\lambda| |f(x)| \right) = |\lambda| \max_{x \in [a, b]} |f(x)| = |\lambda| \|f\|
   $$

3. **Disuguaglianza triangolare:**
   Per ogni coppia di funzioni $f, g \in C([a, b])$, applicando la disuguaglianza triangolare dei numeri reali in ogni punto $x$:
   $$
   \begin{align}
   \|f + g\| &= \max_{x \in [a, b]} |f(x) + g(x)| \\
   &\le \max_{x \in [a, b]} \left[ |f(x)| + |g(x)| \right] \\
   &\le \max_{x \in [a, b]} |f(x)| + \max_{x \in [a, b]} |g(x)| = \|f\| + \|g\|
   \end{align}
   $$

Ne segue che $C([a, b])$ equipaggiato con la norma del massimo è uno spazio vettoriale normato (ed è completo, dunque uno spazio di Banach).

**Intorni sferici (Palla aperta $B_R(f_0)$) e significato geometrico**

La palla aperta di centro la funzione $f \in C([a, b])$ e raggio $R > 0$ è definita da:
$$
B_R(f) := \{g \in C([a, b]) : d(g, f) < R\} = \{g \in C([a, b]) : \|g - f\| < R\}
$$
Esplicitando la condizione di appartenenza:
$$
g \in B_R(f) \iff \|g - f\| < R \iff \max_{x \in [a, b]} |g(x) - f(x)| < R \iff |g(x) - f(x)| < R, \quad \forall x \in [a, b]
$$
Geometricamente, la condizione $|g(x) - f(x)| < R$ per ogni $x \in [a, b]$ equivale alla doppia disuguaglianza:
$$
f(x) - R < g(x) < f(x) + R, \quad \forall x \in [a, b]
$$
Ciò significa che il grafico della funzione perturbata $g(x)$ deve giacere interamente all'interno della "striscia" (o tubo) bidimensionale di semi-ampiezza $R$ costruita attorno al grafico di $f(x)$.

> [!note] Generalizzazione alle funzioni limitate non continue (Norma dell'Estremo Superiore)
> Il concetto di norma può essere esteso allo spazio delle funzioni limitate su un insieme generico $I \subset \mathbb{R}$ (non necessariamente continue né compatte):
> Se $f: I \to \mathbb{R}$ è **limitata**, si definisce la norma dell'estremo superiore:
> $$
> \|f\|_\infty := \sup_{x \in I} |f(x)| < +\infty
> $$
> la quale soddisfa parimenti tutti gli assiomi di norma.
>
### Definizione e Proprietà della Convergenza Uniforme

> [!definition] Convergenza Uniforme
> Siano $f_n \in C([a, b])$ ed $f \in C([a, b])$.
> Si dice che la successione di funzioni $\{f_n\}_{n \in \mathbb{N}}$ **converge uniformemente** a $f$ in $[a, b]$ se converge nella topologia indotta dalla norma del massimo:
> $$
> \lim_{n \to +\infty} \|f_n - f\| = 0 \iff \lim_{n \to +\infty} \max_{x \in [a, b]} |f_n(x) - f(x)| = 0
> $$
> Più in generale, per funzioni definite su un dominio $I \subset \mathbb{R}$ generico, $f_n$ converge a $f$ **uniformemente in $I$** se:
> $$
> \lim_{n \to +\infty} \sup_{x \in I} |f_n(x) - f(x)| = 0
> $$
> (ove si assume che l'estremo superiore sia finito definitivamente).
>
In termini di quantificatori logici ($\varepsilon$-$n_0$):
$$
\forall \varepsilon > 0, \; \exists n_0 > 0 : |f_n(x) - f(x)| \le \varepsilon, \quad \forall n \ge n_0, \; \forall x \in I
$$

> [!important] Il cardine logico della Convergenza Uniforme
> Nella convergenza uniforme, la soglia $n_0$ **dipende SOLO da $\varepsilon$ e non dipende dal punto $x \in I$**:
> $$
> n_0 = n_0(\varepsilon)
> $$
> L'avvicinamento del grafico di $f_n$ al grafico di $f$ avviene globalmente e contemporaneamente con la medesima velocità su tutto il dominio $I$, cosicché per $n \ge n_0$ l'intero grafico di $f_n$ entra nella striscia di semiampiezza $\varepsilon$ attorno ad $f$.

> [!proposition] Relazione tra convergenza uniforme e puntuale
> Se una successione di funzioni converge uniformemente in $I$, allora converge anche puntualmente nello stesso dominio:
> $$
> f_n \xrightarrow[n \to +\infty]{\text{unif.}} f \implies f_n \xrightarrow[n \to +\infty]{\text{punt.}} f
> $$
> In generale, **il viceversa non sussiste**.
>
**Studio del Controesempio Fondamentale: La Successione $f_n(x) = x^n$ su $[0, 1]$**

Si consideri la successione di funzioni polinomiali:
$$
f_n: [0, 1] \to \mathbb{R}, \quad f_n(x) = x^n, \quad n \in \mathbb{N}
$$

1. **Studio della convergenza puntuale:**
   Per ogni punto fissato $x \in [0, 1]$, si valuta il limite della progressione geometrica $x^n$:
   - Se $x \in [0, 1)$, essendo la base strettamente minore di 1, si ha $\lim_{n \to +\infty} x^n = 0$;
   - Se $x = 1$, la successione numerica è costantemente $1^n = 1$, dunque $\lim_{n \to +\infty} 1 = 1$.
   
   Pertanto la successione $f_n$ converge **puntualmente** su $[0, 1]$ alla funzione limite:
   $$
   f(x) = \begin{cases} 0 & \text{se } x \in [0, 1) \\ 1 & \text{se } x = 1 \end{cases}
   $$

> [!warning] La convergenza puntuale non preserva la continuità!
> Si osservi che ciascuna funzione $f_n(x) = x^n$ è un polinomio continuo su tutto $[0, 1]$ per ogni $n \in \mathbb{N}$.
> Tuttavia la funzione limite $f(x)$ presenta una netta **discontinuità a salto nel punto $x = 1$**:
> $$
> \lim_{x \to 1^-} f(x) = 0 \neq 1 = f(1)
> $$
> La convergenza puntuale, da sola, **non è sufficiente a garantire che la proprietà di continuità si conservi nel passaggio al limite**.
>
2. **Verifica della non convergenza uniforme:**
   Per stabilire se la convergenza sia anche uniforme sull'intervallo $[0, 1]$, si calcola la distanza in norma del sup tra $f_n$ e la funzione limite $f$:
   $$
   \sup_{x \in [0, 1]} |f_n(x) - f(x)|
   $$
   Distinguendo i punti del dominio:
   - In $x = 1$: $|f_n(1) - f(1)| = |1 - 1| = 0$;
   - In $x \in [0, 1)$: $|f_n(x) - f(x)| = |x^n - 0| = x^n$.
   
   Dunque:
   $$
   \sup_{x \in [0, 1]} |f_n(x) - f(x)| = \sup_{x \in [0, 1)} x^n = 1, \quad \forall n \in \mathbb{N}
   $$
   *(Si noti con attenzione che sull'intervallo semiaperto $[0, 1)$ non esiste il massimo per la funzione strettamente crescente $x^n$, bensì l'estremo superiore vale $1$).*
   
   Calcolando il limite della distanza per $n \to +\infty$:
   $$
   \lim_{n \to +\infty} \left( \sup_{x \in [0, 1]} |f_n(x) - f(x)| \right) = \lim_{n \to +\infty} 1 = 1 \neq 0
   $$
   Poiché la distanza non tende a zero, la successione $\{f_n\}$ **NON converge uniformemente** ad $f$ su $[0, 1]$.

> [!note] Riduzione metodologica a successioni numeriche
> Poiché lo studio della convergenza uniforme di una successione di funzioni si riduce formalmente allo studio del limite per $n \to +\infty$ della successione numerica reale:
> $$
> d_n := \sup_{x \in I} |f_n(x) - f(x)|
> $$
> tutte le tecniche asintotiche, i teoremi del confronto e gli strumenti del calcolo dei limiti per successioni numeriche risultano direttamente applicabili.
>
## 9.2. Criteri di Cauchy e teoremi di scambio (limite, derivata, integrale)

Nella trattazione precedente si è introdotta la distinzione fondamentale tra la convergenza puntuale (in cui l'indice di soglia $n_0$ dipende sia dal parametro di accuratezza $\varepsilon$ sia dalla posizione del punto $x$ nel dominio) e la convergenza uniforme (in cui l'indice di soglia $n_0$ dipende esclusivamente da $\varepsilon$, governando uniformemente l'intero dominio). Poiché la convergenza puntuale ed uniforme riconduce l'analisi funzionale allo studio delle successioni numeriche per ciascun punto o globalmente tramite la norma dell'estremo superiore, è possibile caratterizzare entrambe le tipologie mediante il criterio intrinseco di Cauchy.

### Criteri di Cauchy per le Successioni di Funzioni

> [!proposition] Criterio di Cauchy per la Convergenza Puntuale
> Sia $I \subset \mathbb{R}$ un intervallo e sia $\{f_n\}_{n \in \mathbb{N}}$ una successione di funzioni $f_n: I \to \mathbb{R}$.
> 
> La successione $\{f_n\}$ **converge puntualmente** in $I$ se e solo se per ogni $x \in I$ la successione numerica $\{f_n(x)\}_{n \in \mathbb{N}}$ è una successione di Cauchy in $\mathbb{R}$.
> 
> In virtù della completezza della retta reale $\mathbb{R}$, ciò equivale alla seguente condizione quantificata:
> $$
> \forall \varepsilon > 0, \; \forall x \in I, \; \exists n_0 = n_0(\varepsilon, x) \in \mathbb{N} : \quad |f_n(x) - f_m(x)| \le \varepsilon, \quad \forall n, m \ge n_0
> $$

> [!note] Dipendenza puntuale della soglia
> Si rimarca che nella convergenza puntuale la scelta dell'indice di soglia $n_0$ è subordinata **sia** ad $\varepsilon$ **sia** alla scelta del punto $x \in I$:
> $$
> n_0 = n_0(\varepsilon, x)
> $$
> Pertanto, per un medesimo valore di tolleranza $\varepsilon$, punti diversi del dominio possono richiedere indici $n_0$ arbitrariamente grandi affinché la differenza $|f_n(x) - f_m(x)|$ scenda al di sotto di $\varepsilon$.

> [!proposition] Criterio di Cauchy per la Convergenza Uniforme
> Sia $I \subset \mathbb{R}$ un intervallo e sia $\{f_n\}_{n \in \mathbb{N}}$ una successione di funzioni $f_n: I \to \mathbb{R}$.
> 
> La successione $\{f_n\}$ **converge uniformemente** in $I$ se e solo se soddisfa la condizione di Cauchy uniforme:
> $$
> \forall \varepsilon > 0, \; \exists n_0 = n_0(\varepsilon) \in \mathbb{N} : \quad |f_n(x) - f_m(x)| \le \varepsilon, \quad \forall n, m \ge n_0, \; \forall x \in I
> $$
> ovvero, passando all'estremo superiore (o massimo) su $I$:
> $$
> \forall \varepsilon > 0, \; \exists n_0 = n_0(\varepsilon) \in \mathbb{N} : \quad \|f_n - f_m\|_\infty = \sup_{x \in I} |f_n(x) - f_m(x)| \le \varepsilon, \quad \forall n, m \ge n_0
> $$

> [!note] Uniformità globale rispetto al dominio
> A differenza del caso puntuale, nella convergenza uniforme l'indice soglia $n_0$ dipende **esclusivamente da $\varepsilon$**:
> $$
> n_0 = n_0(\varepsilon)
> $$
> e la disuguaglianza deve risultare simultaneamente verificata per **ogni** punto $x \in I$.
>
### Teorema di Scambio dei Limiti e Continuità del Limite Uniforme

Uno dei cardini dell'analisi moderna riguarda la possibilità di invertire l'ordine di due operazioni di passaggio al limite. Il seguente teorema dimostra che la convergenza uniforme costituisce la condizione naturale e sufficiente per garantire la validità di tale scambio e, come fondamentale conseguenza, per assicurare la conservazione della continuità.

> [!theorem] Teorema dello Scambio dei Limiti (Continuità del Limite Uniforme)
> Siano $I \subset \mathbb{R}$ un intervallo, $\{f_n\}_{n \in \mathbb{N}}$ una successione di funzioni $f_n: I \to \mathbb{R}$, $f: I \to \mathbb{R}$ una funzione limite e $x_0 \in I$ (oppure un punto di accumulazione per $I$).
> 
> Si assumano le seguenti due ipotesi:
> 1. La successione $\{f_n\}$ **converge uniformemente** a $f$ in $I$:
>    $$
>    f_n \xrightarrow[n \to +\infty]{\text{unif.}} f \quad \text{su } I
>    $$
> 2. Per ogni $n \in \mathbb{N}$, esiste finito il limite della funzione per $x \to x_0$:
>    $$
>    \lim_{x \to x_0} f_n(x) = \ell_n \in \mathbb{R}, \quad \forall n \in \mathbb{N}
>    $$
>    *(Si osservi che, qualora ciascuna funzione $f_n$ fosse continua in $x_0$, si avrebbe semplicemente $\ell_n = f_n(x_0)$).*
> 
> Allora:
> 1. La successione numerica $\{\ell_n\}_{n \in \mathbb{N}}$ è convergente a un limite finito $\ell \in \mathbb{R}$:
>    $$
>    \lim_{n \to +\infty} \ell_n = \ell \in \mathbb{R}
>    $$
> 2. Esiste finito il limite della funzione limite $f(x)$ per $x \to x_0$, ed esso coincide con $\ell$:
>    $$
>    \lim_{x \to x_0} f(x) = \ell
>    $$
> 3. Vale l'identità fondamentale di scambio dei limiti:
>    $$
>    \lim_{x \to x_0} \left[ \lim_{n \to +\infty} f_n(x) \right] = \lim_{n \to +\infty} \left[ \lim_{x \to x_0} f_n(x) \right] = \ell
>    $$
> 
> In particolare, **se ogni funzione $f_n$ è continua in $I$, allora anche la funzione limite $f$ è continua in $I$**.

> [!quote]- Dimostrazione
> La dimostrazione si articola in passaggi successivi.
>
> **Passaggio 1: Dimostrazione della convergenza della successione dei limiti $\{\ell_n\}_{n \in \mathbb{N}}$.**
> Si dimostra che $\{\ell_n\}$ è una successione di Cauchy in $\mathbb{R}$.
> Siano $n, m \in \mathbb{N}$ due generici indici. Per ogni punto $x \in I$, inserendo ad arte i termini $f_n(x)$ e $f_m(x)$ all'interno del modulo e applicando la disuguaglianza triangolare, si ottiene:
> $$
> \begin{align}
> |\ell_n - \ell_m| &= |(\ell_n - f_n(x)) + (f_n(x) - f_m(x)) + (f_m(x) - \ell_m)| \\
> &\le |\ell_n - f_n(x)| + |f_n(x) - f_m(x)| + |f_m(x) - \ell_m|
> \end{align}
> $$
> Fissato arbitrariamente $\varepsilon > 0$:
> - Per l'ipotesi (1), la successione $\{f_n\}$ converge uniformemente su $I$, quindi per il Criterio di Cauchy uniforme esiste un indice $n_0 = n_0(\varepsilon) \in \mathbb{N}$ tale che:
>   $$
>   |f_n(x) - f_m(x)| \le \varepsilon, \quad \forall n, m \ge n_0, \; \forall x \in I
>   $$
> - Per l'ipotesi (2), per definizione di limite, quando $x \to x_0$ si ha:
>   $$
>   \lim_{x \to x_0} |\ell_n - f_n(x)| = 0 \quad \text{e} \quad \lim_{x \to x_0} |f_m(x) - \ell_m| = 0
>   $$
>
> Si passi ora al limite per $x \to x_0$ in ambo i membri della disuguaglianza. Poiché il membro di sinistra $|\ell_n - \ell_m|$ è una quantità numerica costante che **non dipende da $x$**, si ottiene:
> $$
> |\ell_n - \ell_m| = \lim_{x \to x_0} |\ell_n - \ell_m| \le 0 + \varepsilon + 0 = \varepsilon, \quad \forall n, m \ge n_0
> $$
> Dunque la successione $\{\ell_n\}_{n \in \mathbb{N}}$ è una successione di Cauchy di numeri reali. Poiché lo spazio metrico $(\mathbb{R}, |\cdot|)$ è completo, ogni successione di Cauchy converge ad un limite finito:
> $$
> \exists \ell \in \mathbb{R} : \lim_{n \to +\infty} \ell_n = \ell
> $$
> Ne discende direttamente che:
> $$
> \lim_{n \to +\infty} \left[ \lim_{x \to x_0} f_n(x) \right] = \lim_{n \to +\infty} \ell_n = \ell
> $$
>
> **Passaggio 2: Dimostrazione che $\lim_{x \to x_0} f(x) = \ell$.**
> Poiché la convergenza uniforme implica in particolare la convergenza puntuale, la funzione limite $f(x)$ è ben definita come $f(x) = \lim_{n \to +\infty} f_n(x)$ per ogni $x \in I$. Si vuole provare che per ogni $\varepsilon > 0$ la distanza $|f(x) - \ell|$ è controllabile per $x$ sufficientemente vicino a $x_0$.
>
> Sia fissato $\varepsilon > 0$.
> - Per l'uniforme convergenza $f_n \to f$, esiste un indice $n_1 \in \mathbb{N}$ tale che:
>   $$
>   |f(x) - f_{n_1}(x)| \le \varepsilon, \quad \forall x \in I
>   $$
> - Poiché la successione $\{\ell_n\}$ converge a $\ell$, è possibile scegliere l'indice $n_1$ sufficientemente grande affinché sia verificata anche la disuguaglianza:
>   $$
>   |\ell_{n_1} - \ell| \le \varepsilon
>   $$
> - Fissato tale indice $n_1$, si consideri la funzione $f_{n_1}$. Poiché per l'ipotesi (2) $\lim_{x \to x_0} f_{n_1}(x) = \ell_{n_1}$, per la definizione di limite esiste un raggio $\delta = \delta(\varepsilon) > 0$ tale che:
>   $$
>   |x - x_0| \le \delta, \; x \in I \implies |f_{n_1}(x) - \ell_{n_1}| \le \varepsilon
>   $$
>
> Scomponendo la differenza $|f(x) - \ell|$ mediante la disuguaglianza triangolare a tre termini:
> $$
> \begin{align}
> |f(x) - \ell| &= |(f(x) - f_{n_1}(x)) + (f_{n_1}(x) - \ell_{n_1}) + (\ell_{n_1} - \ell)| \\
> &\le |f(x) - f_{n_1}(x)| + |f_{n_1}(x) - \ell_{n_1}| + |\ell_{n_1} - \ell|
> \end{align}
> $$
> Valutando i tre addendi per ogni $x \in I$ soddisfacente $|x - x_0| \le \delta$:
> $$
> |f(x) - \ell| \le \varepsilon + \varepsilon + \varepsilon = 3\varepsilon
> $$
> Dall'arbitrarietà di $\varepsilon > 0$, per definizione di limite segue rigorosamente:
> $$
> \lim_{x \to x_0} f(x) = \ell
> $$
> il che conclude la dimostrazione dell'uguaglianza tra i due limiti scambiati:
> $$
> \lim_{x \to x_0} \left[ \lim_{n \to +\infty} f_n(x) \right] = \lim_{x \to x_0} f(x) = \ell = \lim_{n \to +\infty} \ell_n = \lim_{n \to +\infty} \left[ \lim_{x \to x_0} f_n(x) \right]
> $$
>
> **Passaggio 3: Conservazione della continuità.**
> Si assuma ora che ciascuna funzione $f_n$ sia continua su $I$.
> Allora per ogni punto fissato $x_0 \in I$ si ha:
> $$
> \lim_{x \to x_0} f_n(x) = f_n(x_0), \quad \forall n \in \mathbb{N}
> $$
> Applicando il risultato di scambio testé dimostrato:
> $$
> \begin{align}
> \lim_{x \to x_0} f(x) &= \lim_{x \to x_0} \left[ \lim_{n \to +\infty} f_n(x) \right] \\
> &= \lim_{n \to +\infty} \left[ \lim_{x \to x_0} f_n(x) \right] \\
> &= \lim_{n \to +\infty} f_n(x_0) = f(x_0)
> \end{align}
> $$
> Poiché $\lim_{x \to x_0} f(x) = f(x_0)$, la funzione limite $f$ è continua in $x_0$. Data la generalità della scelta di $x_0 \in I$, si conclude che $f$ è continua su tutto $I$. $\blacksquare$

> [!note] La continuità si preserva sotto convergenza uniforme
> L'enunciato precedente sancisce che **la convergenza uniforme preserva la continuità**.
> Si ribadisce con forza che la sola convergenza puntuale **non è sufficiente** a preservare la continuità (come documentato dal classico controesempio $f_n(x) = x^n$ su $[0, 1]$, in cui funzioni continue convergono puntualmente a una funzione discontinua).
>
### Completezza dello Spazio Funzionale $C([a, b])$ (Spazio di Banach)

Una conseguenza fondamentale del teorema di continuità del limite uniforme e del criterio di Cauchy riguarda la struttura topologica dello spazio delle funzioni continue.

> [!theorem] Completezza di $C([a, b])$
> Lo spazio vettoriale $C([a, b])$ delle funzioni reali continue sull'intervallo compatto $[a, b]$, dotato della norma dell'estremo superiore (o del massimo):
> $$
> \|f\|_\infty := \max_{x \in [a, b]} |f(x)|
> $$
> è uno **spazio vettoriale normato completo**, ovvero uno **spazio di Banach**.

> [!quote]- Dimostrazione
> Sia $\{f_n\}_{n \in \mathbb{N}}$ una successione di Cauchy in $(C([a, b]), \|\cdot\|_\infty)$.
> Per definizione di successione di Cauchy rispetto alla norma $\|\cdot\|_\infty$:
> $$
> \forall \varepsilon > 0, \; \exists n_0 = n_0(\varepsilon) \in \mathbb{N} : \quad \|f_n - f_m\|_\infty = \max_{x \in [a, b]} |f_n(x) - f_m(x)| \le \varepsilon, \quad \forall n, m \ge n_0
> $$
> Tale condizione coincide esattamente con la condizione del Criterio di Cauchy uniforme.
> Di conseguenza, esiste una funzione limite $f: [a, b] \to \mathbb{R}$ a cui la successione $\{f_n\}$ converge uniformemente su $[a, b]$:
> $$
> f_n \xrightarrow[n \to +\infty]{\text{unif.}} f
> $$
> Poiché ciascuna $f_n$ è continua su $[a, b]$, per il Teorema di Continuità del Limite Uniforme la funzione limite $f$ appartiene anch'essa allo spazio delle funzioni continue:
> $$
> f \in C([a, b])
> $$
> Inoltre, passando al limite per $m \to +\infty$ nella disuguaglianza di Cauchy, si ottiene:
> $$
> \max_{x \in [a, b]} |f_n(x) - f(x)| = \|f_n - f\|_\infty \le \varepsilon, \quad \forall n \ge n_0
> $$
> ossia:
> $$
> \lim_{n \to +\infty} \|f_n - f\|_\infty = 0
> $$
> Poiché ogni successione di Cauchy in $C([a, b])$ ammette limite appartenente allo spazio stesso, lo spazio $(C([a, b]), \|\cdot\|_\infty)$ è **completo**, e dunque è uno spazio di Banach. $\blacksquare$

> [!note] Generalizzazione a domini compatti generici $C(K)$
> Il risultato sussiste in modo del tutto identico per lo spazio delle funzioni continue definite su un qualunque sottoinsieme compatto $K \subset \mathbb{R}^n$:
> $$
> C(K) := \{f: K \to \mathbb{R} : f \text{ è continua su } K\}
> $$
> equipaggiato con la norma del massimo $\|f\|_\infty = \max_{x \in K} |f(x)|$ (il cui massimo è garantito esistere finito dal Teorema di Weierstrass). Dunque anche $(C(K), \|\cdot\|_\infty)$ è uno **spazio di Banach**.
>
**Scambio di Limiti, Derivate e Integrali: Controesempi e Teoremi**

> [!warning] Il principio generale del fallimento degli scambi senza ipotesi
> Lo scambio tra due operazioni non banali dell'analisi (quali limiti, derivate o integrali definiti) **NON conduce in generale al medesimo risultato**.
> Affinché l'inversione sia lecita, è indispensabile formulare ipotesi di convergenza globale, tipicamente legate alla **convergenza uniforme**.
> 
> In particolare, per una successione di funzioni derivabili $\{f_n\}$:
> $$
> \lim_{n \to +\infty} f_n'(x) \neq \left[ \lim_{n \to +\infty} f_n(x) \right]' \quad \text{(in generale)}
> $$
> Addirittura, può accadere che il limite delle derivate esista finito, mentre la funzione limite non sia neppure derivabile, oppure viceversa!
>
**Controesempio: Scambio tra limiti ordinari ($f_n(x) = x^n$)**

Si consideri la successione $f_n(x) = x^n$ definita sull'intervallo $[0, 1]$ per $n \in \mathbb{N}$.
Il limite puntuale è dato da:
$$
f(x) = \lim_{n \to +\infty} x^n = \begin{cases} 0 & \text{se } x \in [0, 1) \\ 1 & \text{se } x = 1 \end{cases}
$$
Si consideri il punto $x_0 = 1$ ed il limite per $x \to 1^-$ (da sinistra):
1. Calcolando prima il limite per $x \to 1^-$ per ogni singola funzione $f_n$ e poi il limite per $n \to +\infty$:
   $$
   \lim_{n \to +\infty} \left[ \lim_{x \to 1^-} f_n(x) \right] = \lim_{n \to +\infty} \left[ \lim_{x \to 1^-} x^n \right] = \lim_{n \to +\infty} 1 = 1
   $$
2. Calcolando invece prima il limite per $n \to +\infty$ e poi il limite per $x \to 1^-$ della funzione risultante:
   $$
   \lim_{x \to 1^-} \left[ \lim_{n \to +\infty} f_n(x) \right] = \lim_{x \to 1^-} f(x) = \lim_{x \to 1^-} 0 = 0
   $$

I due valori risultano distinti:
$$
\lim_{n \to +\infty} \left[ \lim_{x \to 1^-} f_n(x) \right] = 1 \neq 0 = \lim_{x \to 1^-} \left[ \lim_{n \to +\infty} f_n(x) \right]
$$
Lo scambio fallisce poiché la convergenza di $f_n$ su $[0, 1]$ non è uniforme e la funzione limite $f(x)$ è discontinua in $x = 1$.

**Teorema di Scambio tra Limite e Derivata (Derivazione per Successioni)**

> [!theorem] Teorema di Derivazione per Successioni di Funzioni
> Siano $f_n: (a, b) \to \mathbb{R}$ funzioni derivabili sull'intervallo aperto $(a, b)$ per ogni $n \in \mathbb{N}$.
> 
> Si assuma che:
> 1. La successione delle derivate prime $\{f_n'\}_{n \in \mathbb{N}}$ **converga uniformemente** in $(a, b)$ a una funzione $g: (a, b) \to \mathbb{R}$:
>    $$
>    f_n' \xrightarrow[n \to +\infty]{\text{unif.}} g \quad \text{su } (a, b)
>    $$
> 2. Esista **almeno un punto** $x_0 \in (a, b)$ in cui la successione numerica $\{f_n(x_0)\}_{n \in \mathbb{N}}$ **converge puntualmente**:
>    $$
>    \exists x_0 \in (a, b) : \quad \lim_{n \to +\infty} f_n(x_0) \in \mathbb{R}
>    $$
> 
> Allora:
> 1. La successione $\{f_n\}_{n \in \mathbb{N}}$ converge **uniformemente** su $(a, b)$ a una funzione $f: (a, b) \to \mathbb{R}$;
> 2. La funzione limite $f$ è **derivabile** su $(a, b)$;
> 3. La derivata della funzione limite coincide con il limite uniforme delle derivate, rendendo lecito lo scambio di operatori:
>    $$
>    f'(x) = g(x) \iff \left[ \lim_{n \to +\infty} f_n(x) \right]' = \lim_{n \to +\infty} \left[ f_n'(x) \right], \quad \forall x \in (a, b)
>    $$
>
**Teorema di Scambio tra Limite e Integrale (Integrazione per Successioni)**

> [!theorem] Teorema di Passaggio al Limite sotto il Segno di Integrale di Riemann
> Siano $f_n: [a, b] \to \mathbb{R}$ funzioni integrabili secondo Riemann su $[a, b]$ per ogni $n \in \mathbb{N}$.
> 
> Si assuma che la successione $\{f_n\}_{n \in \mathbb{N}}$ **converga uniformemente** su $[a, b]$ a una funzione $f: [a, b] \to \mathbb{R}$:
> $$
> f_n \xrightarrow[n \to +\infty]{\text{unif.}} f \quad \text{su } [a, b]
> $$
> 
> Allora:
> 1. La funzione limite $f$ è **integrabile secondo Riemann** su $[a, b]$;
> 2. È lecito scambiare il limite per $n \to +\infty$ con l'integrale definito:
>    $$
>    \lim_{n \to +\infty} \int_a^b f_n(x) \, dx = \int_a^b \left[ \lim_{n \to +\infty} f_n(x) \right] \, dx = \int_a^b f(x) \, dx
>    $$
>
**Controesempio: Mancanza di Convergenza Uniforme e Scambio Non Lecito (Esempio dei "Picchi Mobili")**

Il seguente celebre controesempio (noto nella tradizione didattica come *Incursione di Abatangelo*) illustra come, in assenza di convergenza uniforme, l'integrale del limite possa differire drasticamente dal limite degli integrali.

> [!example] Controesempio dello scalino divergente (Abatangelo)
> Si consideri sull'intervallo $[0, 1]$ la successione di funzioni a supporto compatto contraente:
> $$
> f_n(x) = \begin{cases} n & \text{se } x \in \left[0, \frac{1}{n}\right] \\ 0 & \text{se } x \in \left(\frac{1}{n}, 1\right] \end{cases}
> $$
> 
> 1. **Calcolo del limite puntuale:**
>    - Per ogni punto $x \in (0, 1]$, non appena si sceglie $n > \frac{1}{x}$, si ha $\frac{1}{n} < x$, per cui $f_n(x) = 0$.
>    - Dunque per ogni $x > 0$ si ha $\lim_{n \to +\infty} f_n(x) = 0$.
>    - In $x = 0$, $f_n(0) = n \to +\infty$.
>    
>    La successione converge puntualmente alla funzione identicamente nulla quasi ovunque (e ponendo $f_n(0)=0$ convergerebbe ovunque a zero). L'integrale del limite puntuale vale pertanto:
>    $$
>    \int_0^1 \left[ \lim_{n \to +\infty} f_n(x) \right] \, dx = \int_0^1 0 \, dx = 0
>    $$
> 
> 2. **Calcolo degli integrali delle funzioni $f_n$:**
>    Per ogni $n \in \mathbb{N}$ fissato, l'integrale di Riemann di $f_n$ su $[0, 1]$ corrisponde all'area di un rettangolo di base $\frac{1}{n}$ e altezza $n$:
>    $$
>    \int_0^1 f_n(x) \, dx = \int_0^{1/n} n \, dx = n \cdot \frac{1}{n} = 1
>    $$
>    Eseguendo ora il limite della successione degli integrali:
>    $$
>    \lim_{n \to +\infty} \int_0^1 f_n(x) \, dx = \lim_{n \to +\infty} 1 = 1
>    $$
> 
> **Conclusione:**
> $$
> \lim_{n \to +\infty} \int_0^1 f_n(x) \, dx = 1 \neq 0 = \int_0^1 \lim_{n \to +\infty} f_n(x) \, dx
> $$
> Lo scambio è manifestamente illecito. La convergenza uniforme fallisce drasticamente poiché il massimo della differenza $\|f_n - 0\|_\infty = n \to +\infty$.
>
## 9.3. Serie di funzioni e convergenza totale (Weierstrass M-test)

### Definizioni Fondamentali e Convergenza

> [!definition] Serie di Funzioni e Successione delle Somme Parziali
> Sia data una successione di funzioni reali di variabile reale $\{f_n\}_{n \in \mathbb{N}}$ definite su un intervallo $I \subset \mathbb{R}$, $f_n: I \to \mathbb{R}$.
> 
> Per ogni $n \in \mathbb{N}$, si definisce la $n$-esima **somma parziale** (o ridotta $n$-esima) della serie come la funzione $S_n: I \to \mathbb{R}$ data da:
> $$
> S_n(x) := \sum_{k=1}^n f_k(x) = f_1(x) + f_2(x) + \dots + f_n(x), \quad x \in I
> $$
> La successione di funzioni $\{S_n(x)\}_{n \in \mathbb{N}}$ prende il nome di **serie di funzioni** associata alla successione $\{f_n\}$, e si indica formalmente con il simbolo:
> $$
> \sum_{n=1}^{+\infty} f_n(x) \quad \text{oppure} \quad \sum_{k=1}^{+\infty} f_k(x)
> $$

> [!definition] Convergenza Puntuale e Uniforme di una Serie di Funzioni
> Sia data la serie di funzioni $\sum_{k=1}^{+\infty} f_k(x)$ su $I$.
> 1. Si dice che la serie **converge puntualmente** in $I$ se la successione delle somme parziali $\{S_n(x)\}_{n \in \mathbb{N}}$ converge puntualmente su $I$ per $n \to +\infty$. In tal caso la funzione limite $S: I \to \mathbb{R}$ è detta **somma della serie**:
>    $$
>    S(x) := \lim_{n \to +\infty} S_n(x) = \sum_{k=1}^{+\infty} f_k(x), \quad \forall x \in I
>    $$
> 2. Si dice che la serie **converge uniformemente** in $I$ se la successione delle somme parziali $\{S_n(x)\}_{n \in \mathbb{N}}$ converge uniformemente a $S(x)$ su $I$, ovvero:
>    $$
>    \lim_{n \to +\infty} \|S - S_n\|_\infty = \lim_{n \to +\infty} \sup_{x \in I} \left| S(x) - \sum_{k=1}^n f_k(x) \right| = 0
>    $$
>
**Studio Dettagliato del Modello Prototipico: La Serie Geometrica**

> [!example] La Serie Geometrica di Funzioni $\sum_{k=0}^{+\infty} x^k$
> Si consideri la serie di potenze geometrica:
> $$
> \sum_{k=0}^{+\infty} x^k = 1 + x + x^2 + \dots + x^k + \dots, \quad x \in \mathbb{R}
> $$
> 
> **1. Convergenza Puntuale:**
> Per ogni $x \in \mathbb{R}$ fissato, si tratta di una serie geometrica numerica di ragione $x$:
> - Se $|x| < 1$, la serie numerica converge e la sua somma analitica è:
>   $$
>   S(x) = \lim_{n \to +\infty} \sum_{k=0}^n x^k = \frac{1}{1 - x}
>   $$
> - Se $|x| \ge 1$, il termine generale non tende a zero:
>   $$
>   \lim_{k \to +\infty} x^k \neq 0
>   $$
>   Violando la condizione necessaria di convergenza, la serie non converge (diverge positivamente se $x \ge 1$, è indeterminata/oscillante se $x \le -1$).
> 
> L'intervallo di convergenza puntuale è pertanto l'insieme aperto $I = (-1, 1)$.
> 
> **2. Convergenza Uniforme sui Compatti $[-R, R] \subset (-1, 1)$:**
> Si verifichi la convergenza uniforme su un generico intervallo chiuso e limitato $[-R, R]$ con $0 < R < 1$.
> Per $x \neq 1$, la somma parziale $n$-esima è data dalla formula algebrica chiusa:
> $$
> S_n(x) = \sum_{k=0}^n x^k = \frac{1 - x^{n+1}}{1 - x}
> $$
> Valutando il modulo del resto $n$-esimo $R_n(x) := S(x) - S_n(x)$:
> $$
> |S(x) - S_n(x)| = \left| \frac{1}{1 - x} - \frac{1 - x^{n+1}}{1 - x} \right| = \left| \frac{x^{n+1}}{1 - x} \right| = \frac{|x|^{n+1}}{|1 - x|}
> $$
> Poiché $x \in [-R, R]$, si hanno le stime:
> $$
> |x| \le R < 1 \implies |x|^{n+1} \le R^{n+1}
> |1 - x| \ge 1 - |x| \ge 1 - R > 0 \implies \frac{1}{|1 - x|} \le \frac{1}{1 - R}
> $$
> Ne discende la disuguaglianza uniforme valida per ogni $x \in [-R, R]$:
> $$
> |S(x) - S_n(x)| \le \frac{R^{n+1}}{1 - R}
> $$
> Passando al limite per $n \to +\infty$:
> $$
> \lim_{n \to +\infty} \frac{R^{n+1}}{1 - R} = 0 \quad (\text{essendo } 0 < R < 1)
> $$
> Poiché la stima maggiorante non dipende da $x$, si conclude che la serie geometrica **converge uniformemente** su ogni compatto $[-R, R]$ con $R < 1$:
> $$
> S_n(x) \xrightarrow[n \to +\infty]{\text{unif.}} S(x) \quad \text{su } [-R, R], \quad \forall R \in (0, 1)
> $$
> 
> **3. Mancanza di Convergenza Uniforme su tutto $(-1, 1)$:**
> Se si considera l'intero intervallo aperto $(-1, 1)$, valutando l'estremo superiore del resto:
> $$
> \|S - S_n\|_\infty = \sup_{x \in (-1, 1)} |S(x) - S_n(x)| = \sup_{x \in (-1, 1)} \frac{|x|^{n+1}}{1 - x} \ge \lim_{x \to 1^-} \frac{x^{n+1}}{1 - x} = +\infty
> $$
> Poiché il sup del modulo della differenza non tende a zero (ed è anzi identicamente infinito per ogni $n$), **la convergenza NON è uniforme su $(-1, 1)$**.
>
### Criterio di Cauchy per le Serie di Funzioni

Lo studio della convergenza delle serie di funzioni si riconduce allo studio della successione delle somme parziali $S_n(x) = \sum_{k=1}^n f_k(x)$.
Dati due indici $m, n \in \mathbb{N}$ con $m > n$, la differenza tra le ridotte corrisponde al "blocco di Cauchy":
$$
S_m(x) - S_n(x) = \sum_{k=1}^m f_k(x) - \sum_{k=1}^n f_k(x) = \sum_{k=n+1}^m f_k(x)
$$

> [!theorem] Criterio di Cauchy per la Convergenza delle Serie di Funzioni
> Sia data la serie di funzioni $\sum_{k=1}^{+\infty} f_k(x)$ con $f_k: [a, b] \to \mathbb{R}$.
> 
> 1. **Convergenza Puntuale:**
>    La serie converge puntualmente in $[a, b]$ se e solo se:
>    $$
>    \forall \varepsilon > 0, \; \forall x \in [a, b], \; \exists n_0 = n_0(\varepsilon, x) \in \mathbb{N} : \quad \left| \sum_{k=n+1}^m f_k(x) \right| \le \varepsilon, \quad \forall m > n \ge n_0
>    $$
> 
> 2. **Convergenza Uniforme:**
>    La serie converge uniformemente in $[a, b]$ se e solo se:
>    $$
>    \forall \varepsilon > 0, \; \exists n_0 = n_0(\varepsilon) \in \mathbb{N} : \quad \left| \sum_{k=n+1}^m f_k(x) \right| \le \varepsilon, \quad \forall m > n \ge n_0, \; \forall x \in [a, b]
>    $$

> [!note] Confronto strutturale sull'indice soglia $n_0$
> Si evidenzia la differenza chiave:
> - Nella convergenza puntuale, $n_0$ **dipende sia da $\varepsilon$ sia da $x$**: $n_0 = n_0(\varepsilon, x)$.
> - Nella convergenza uniforme, $n_0$ **dipende SOLO da $\varepsilon$**: $n_0 = n_0(\varepsilon)$, garantendo un controllo simultaneo su tutto $[a, b]$.
>
### Condizione Necessaria di Convergenza

> [!proposition] Condizione Necessaria per Serie di Funzioni
> Sia $\sum_{n=1}^{+\infty} f_n(x)$ una serie di funzioni definita su $[a, b]$.
> 
> 1. Se la serie converge **puntualmente** in $[a, b]$, allora:
>    $$
>    \lim_{n \to +\infty} f_n(x) = 0 \quad \text{puntualmente in } [a, b]
>    $$
> 2. Se la serie converge **uniformemente** in $[a, b]$, allora:
>    $$
>    f_n \xrightarrow[n \to +\infty]{\text{unif.}} 0 \quad \text{su } [a, b] \iff \lim_{n \to +\infty} \sup_{x \in [a, b]} |f_n(x)| = 0
>    $$

> [!quote]- Dimostrazione
> La tesi discende immediatamente dal Criterio di Cauchy ponendo $m = n+1$. Infatti:
> $$
> |S_{n+1}(x) - S_n(x)| = |f_{n+1}(x)| \le \varepsilon, \quad \forall n \ge n_0
> $$
> il che esprime la definizione di convergenza a zero (rispettivamente puntuale o uniforme per $n \to +\infty$). $\blacksquare$
>
### Teorema del Criterio di Weierstrass (Convergenza Totale)

Il criterio di Weierstrass rappresenta il metodo operativo più potente ed ampiamente utilizzato per stabilire la convergenza uniforme di una serie di funzioni mediante confronto con una serie numerica a termini positivi convergente (concetto che nella letteratura analitica coincide con la **convergenza totale**).

> [!theorem] Criterio di Weierstrass per la Convergenza Uniforme (Total Convergence)
> Siano $f_n: [a, b] \to \mathbb{R}$ funzioni definite su $[a, b]$ per ogni $n \in \mathbb{N}$.
> 
> Si assuma che:
> 1. Ciascuna funzione $f_n$ sia limitata su $[a, b]$, ovvero esista una successione numerica non negativa $\{c_n\}_{n \in \mathbb{N}}$ tale che:
>    $$
>    |f_n(x)| \le c_n, \quad \forall x \in [a, b], \; \forall n \in \mathbb{N}
>    $$
>    *(La scelta ottimale e minimale per la costante maggiorante è data dall'estremo superiore del modulo: $c_n := \sup_{x \in [a, b]} |f_n(x)| = \|f_n\|_\infty$).*
> 2. La serie numerica dei maggioranti $\sum_{n=1}^{+\infty} c_n$ sia **convergente**:
>    $$
>    \sum_{n=1}^{+\infty} c_n < +\infty
>    $$
> 
> Allora la serie di funzioni $\sum_{n=1}^{+\infty} f_n(x)$ **converge uniformemente** (e assolutamente per ciascun punto) in $[a, b]$.

> [!quote]- Dimostrazione
> Per ipotesi la serie numerica $\sum_{n=1}^{+\infty} c_n$ è a termini non negativi e converge.
> In virtù del Criterio di Cauchy per le serie numeriche:
> $$
> \forall \varepsilon > 0, \; \exists n_0 = n_0(\varepsilon) \in \mathbb{N} : \quad \forall m > n \ge n_0 \implies \left| \sum_{k=n+1}^m c_k \right| = \sum_{k=n+1}^m c_k \le \varepsilon
> $$
> Si consideri ora la serie di funzioni $\sum_{k=1}^{+\infty} f_k(x)$ e si valuti il relativo blocco di Cauchy per ogni $x \in [a, b]$:
> $$
> \left| \sum_{k=n+1}^m f_k(x) \right|
> $$
> Applicando la disuguaglianza triangolare e la maggiorazione puntuale $|f_k(x)| \le c_k$:
> $$
> \left| \sum_{k=n+1}^m f_k(x) \right| \le \sum_{k=n+1}^m |f_k(x)| \le \sum_{k=n+1}^m c_k \le \varepsilon, \quad \forall m > n \ge n_0, \; \forall x \in [a, b]
> $$
> Poiché la stima maggiorante $\varepsilon$ è indipendente dal punto $x \in [a, b]$, la condizione del Criterio di Cauchy per la convergenza uniforme è pienamente verificata.
> Ne consegue che la serie $\sum_{n=1}^{+\infty} f_n(x)$ converge uniformemente su $[a, b]$. $\blacksquare$

> [!example] Esempi Applicativi ed Esercizi Guidati sul Criterio di Weierstrass

> [!example] Esercizio 1: Serie razionale-trigonometrica
> Si studi la convergenza uniforme su tutto $\mathbb{R}$ della serie di funzioni:
> $$
> \sum_{n=1}^{+\infty} \frac{n + 2n \sin(n^2 x)}{1 + n^3}, \quad x \in \mathbb{R}
> $$
> 
> **Risoluzione:**
> Si analizza il termine generale $f_n(x) = \frac{n + 2n \sin(n^2 x)}{1 + n^3}$.
> Poiché per ogni $x \in \mathbb{R}$ si ha $-1 \le \sin(n^2 x) \le 1$, il termine trigonometrico $2n \sin(n^2 x)$ è confinato nell'intervallo $[-2n, 2n]$:
> $$
> |n + 2n \sin(n^2 x)| \le n + 2n |\sin(n^2 x)| \le n + 2n = 3n
> $$
> Essendo il denominatore $1 + n^3 > 0$, si ricava la maggiorazione uniforme:
> $$
> |f_n(x)| \le \frac{3n}{1 + n^3} =: c_n, \quad \forall x \in \mathbb{R}
> $$
> Si studia il carattere della serie numerica dei maggioranti $\sum_{n=1}^{+\infty} c_n$:
> Per $n \to +\infty$:
> $$
> c_n = \frac{3n}{1 + n^3} \sim \frac{3n}{n^3} = \frac{3}{n^2}
> $$
> La serie numerica armonica generalizzata $\sum_{n=1}^{+\infty} \frac{3}{n^2} = 3 \sum_{n=1}^{+\infty} \frac{1}{n^2}$ è convergente ($\alpha = 2 > 1$).
> Per il Teorema del Confronto Asintotico tra serie numeriche a termini positivi, anche la serie $\sum_{n=1}^{+\infty} c_n$ è convergente:
> $$
> \sum_{n=1}^{+\infty} c_n < +\infty
> $$
> Per il Criterio di Weierstrass, la serie di funzioni data converge **uniformemente** e **assolutamente** su tutto $\mathbb{R}$.

> [!example] Esercizio 2: Serie Trigonometriche e Serie di Fourier
> Si considerino due successioni reali $\{a_n\}_{n \in \mathbb{N}}$ e $\{b_n\}_{n \in \mathbb{N}}$ e si studi la serie trigonometrica:
> $$
> \sum_{n=1}^{+\infty} \big[ a_n \cos(nx) + b_n \sin(nx) \big], \quad x \in [0, 2\pi]
> $$
> 
> **Risoluzione:**
> Applicando la disuguaglianza triangolare al termine generale e sapendo che $|\cos(nx)| \le 1$ e $|\sin(nx)| \le 1$ per ogni $x \in \mathbb{R}$:
> $$
> |a_n \cos(nx) + b_n \sin(nx)| \le |a_n| |\cos(nx)| + |b_n| |\sin(nx)| \le |a_n| + |b_n| =: c_n
> $$
> Pertanto, se le successioni dei coefficienti soddisfano la condizione di assoluta sommabilità:
> $$
> \sum_{n=1}^{+\infty} \big( |a_n| + |b_n| \big) < +\infty
> $$
> per il Criterio di Weierstrass la serie di Fourier converge **uniformemente** (e assolutamente) sull'intervallo $[0, 2\pi]$ (e per periodicità su tutto l'asse reale $\mathbb{R}$).
>
### Proprietà e Teoremi di Scambio per Serie di Funzioni

I teoremi di scambio stabiliti per le successioni di funzioni si traducono in corrispondenti e fondamentali proprietà per le serie di funzioni, applicando i risultati alla successione delle somme parziali $S_n(x) = \sum_{k=1}^n f_k(x)$.

**1. Teorema di Passaggio al Limite sotto il Segno di Serie (Scambio tra Limite e Serie)**

> [!theorem] Scambio tra Limite e Serie
> Siano $f_n: I \subset \mathbb{R} \to \mathbb{R}$ per $n \in \mathbb{N}$, e sia $x_0 \in I$ (oppure un punto di accumulazione per $I$).
> 
> Si assuma che:
> 1. La serie di funzioni $\sum_{n=1}^{+\infty} f_n(x)$ **converga uniformemente** in $I$ alla funzione somma $F(x)$:
>    $$
>    F(x) := \sum_{n=1}^{+\infty} f_n(x)
>    $$
> 2. Per ogni $n \in \mathbb{N}$, esista finito il limite per $x \to x_0$:
>    $$
>    \lim_{x \to x_0} f_n(x) = \ell_n \in \mathbb{R}, \quad \forall n \in \mathbb{N}
>    $$
> 
> Allora:
> 1. La serie numerica dei limiti $\sum_{n=1}^{+\infty} \ell_n$ è convergente a una somma finita $L \in \mathbb{R}$:
>    $$
>    \sum_{n=1}^{+\infty} \ell_n = L \in \mathbb{R}
>    $$
> 2. Esiste finito il limite della funzione somma $F(x)$ per $x \to x_0$, ed esso coincide con $L$:
>    $$
>    \lim_{x \to x_0} F(x) = L
>    $$
> 3. Vale la formula di scambio tra limite e sommatoria infinita:
>    $$
>    \lim_{x \to x_0} \sum_{n=1}^{+\infty} f_n(x) = \sum_{n=1}^{+\infty} \lim_{x \to x_0} f_n(x) = \sum_{n=1}^{+\infty} \ell_n
>    $$

> [!note] Corollario: Continuità della somma di una serie di funzioni
> Qualora ciascuna funzione $f_n$ sia continua in $I$, applicando il teorema si ha $\ell_n = f_n(x_0)$ per ogni $x_0 \in I$.
> Dunque la funzione somma $F(x) = \sum_{n=1}^{+\infty} f_n(x)$ è **continua** su $I$:
> $$
> \lim_{x \to x_0} \sum_{n=1}^{+\infty} f_n(x) = \sum_{n=1}^{+\infty} f_n(x_0) = F(x_0)
> $$
> La convergenza uniforme garantisce quindi che la somma di una serie di funzioni continue è una funzione continua.
>
**2. Teorema di Derivazione per Serie (Derivazione Termine a Termine)**

> [!theorem] Scambio tra Derivata e Serie
> Siano $f_n: (a, b) \to \mathbb{R}$ funzioni derivabili sull'intervallo aperto $(a, b)$ per ogni $n \in \mathbb{N}$.
> 
> Si assuma che:
> 1. La serie delle derivate prime $\sum_{n=1}^{+\infty} f_n'(x)$ **converga uniformemente** in $(a, b)$ a una funzione somma $G(x)$:
>    $$
>    \sum_{n=1}^{+\infty} f_n'(x) \xrightarrow{\text{unif.}} G(x) \quad \text{su } (a, b)
>    $$
> 2. La serie originaria $\sum_{n=1}^{+\infty} f_n(x)$ converga in **almeno un punto** $x_0 \in (a, b)$:
>    $$
>    \exists x_0 \in (a, b) : \quad \sum_{n=1}^{+\infty} f_n(x_0) \in \mathbb{R}
>    $$
> 
> Allora:
> 1. La serie $\sum_{n=1}^{+\infty} f_n(x)$ converge uniformemente su $(a, b)$ a una funzione somma $F(x) = \sum_{n=1}^{+\infty} f_n(x)$;
> 2. La funzione somma $F(x)$ è **derivabile** su $(a, b)$;
> 3. La derivata prima di $F(x)$ coincide con la somma della serie delle derivate:
>    $$
>    F'(x) = G(x) \iff \left[ \sum_{n=1}^{+\infty} f_n(x) \right]' = \sum_{n=1}^{+\infty} f_n'(x), \quad \forall x \in (a, b)
>    $$
>
**Esercizio Guidato: Derivazione Termine a Termine della Serie $\sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1}$**

> [!example] Esercizio: Studio di convergenza e derivazione termine a termine
> Si consideri la serie di funzioni:
> $$
> \sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1} = x + \frac{x^2}{2} + \frac{x^3}{3} + \dots + \frac{x^{n+1}}{n+1} + \dots, \quad x \in (-1, 1)
> $$
> 
> **Fase 1: Studio puntuale con il Criterio del Rapporto.**
> Fissato $x \in \mathbb{R}$, si studia la serie dei valori assoluti con termine generale:
> $$
> a_n = \frac{x^{n+1}}{n+1} \implies |a_n| = \frac{|x|^{n+1}}{n+1}
> $$
> Calcolando il rapporto tra termini consecutivi:
> $$
> \frac{|a_{n+1}|}{|a_n|} = \frac{|x|^{n+2}}{n+2} \cdot \frac{n+1}{|x|^{n+1}} = |x| \cdot \frac{n+1}{n+2}
> $$
> Eseguendo il limite per $n \to +\infty$:
> $$
> \lim_{n \to +\infty} \frac{|a_{n+1}|}{|a_n|} = \lim_{n \to +\infty} \left( |x| \cdot \frac{n+1}{n+2} \right) = |x|
> $$
> In base al Criterio del Rapporto:
> - Se $|x| < 1$, il limite è strettamente minore di $1$, dunque la serie converge **assolutamente**, e di conseguenza converge semplicemente.
> - Se $|x| > 1$, il limite è strettamente maggiore di $1$, dunque il termine generale non tende a zero e la serie diverge.
> - Se $x = 1$, si ottiene la serie armonica $\sum_{n=0}^{+\infty} \frac{1}{n+1} = +\infty$ (divergente).
> - Se $x = -1$, si ottiene la serie armonica a segni alterni $\sum_{n=0}^{+\infty} \frac{(-1)^{n+1}}{n+1} = - \sum_{k=1}^{+\infty} \frac{(-1)^{k-1}}{k}$, convergente per il criterio di Leibniz.
> 
> Dunque la serie converge puntualmente per ogni $x \in [-1, 1)$, e in particolare nell'intervallo aperto $(-1, 1)$.
> 
> **Fase 2: Verifica della convergenza uniforme mediante derivazione.**
> Ciascun termine $f_n(x) = \frac{x^{n+1}}{n+1}$ è una funzione polinomiale di classe $C^\infty(\mathbb{R})$, derivabile in ogni punto di $(-1, 1)$:
> $$
> f_n'(x) = \frac{d}{dx}\left( \frac{x^{n+1}}{n+1} \right) = \frac{(n+1)x^n}{n+1} = x^n, \quad \forall x \in (-1, 1)
> $$
> La serie delle derivate prime è dunque:
> $$
> \sum_{n=0}^{+\infty} f_n'(x) = \sum_{n=0}^{+\infty} x^n
> $$
> che coincide esattamente con la serie geometrica fondamentale.
> 
> Come dimostrato in precedenza (Sezione 8.2.2), la serie geometrica $\sum_{n=0}^{+\infty} x^n$:
> - **Converge uniformemente** su ogni sottointervallo compatto $[-R, R]$ per qualsiasi $0 < R < 1$.
> - La sua somma è data dalla funzione $g(x) = \frac{1}{1 - x}$.
> 
> Inoltre, per $x_0 = 0 \in (-1, 1)$, la serie di partenza converge banalmente alla somma nulla:
> $$
> \sum_{n=0}^{+\infty} f_n(0) = \sum_{n=0}^{+\infty} 0 = 0 \in \mathbb{R}
> $$
> 
> Essendo pienamente verificate le ipotesi del Teorema di Derivazione per serie su ciascun compatto $[-R, R]$ con $R < 1$:
> 1. La serie di partenza $\sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1}$ converge **uniformemente** su $[-R, R]$ per ogni $R < 1$.
> 2. Detta $F(x) = \sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1}$ la funzione somma, $F$ è derivabile su $(-1, 1)$ e la sua derivata coincide con la somma della serie geometrica:
>    $$
>    F'(x) = \left[ \sum_{n=0}^{+\infty} \frac{x^{n+1}}{n+1} \right]' = \sum_{n=0}^{+\infty} x^n = \frac{1}{1 - x}, \quad \forall x \in (-1, 1)
>    $$
>
*(Nota: L'integrazione di tale relazione differenziale, $F(x) = \int \frac{1}{1-x} \, dx = -\log(1-x) + C$, con la determinazione della costante $C = 0$ tramite la condizione $F(0) = 0$, conduce alla celebre identità logaritmica $F(x) = -\log(1-x)$, il cui sviluppo e analisi di convergenza proseguono nella pagina successiva).*

### Calcolo della Somma della Serie $\sum_{n=1}^{+\infty} \frac{x^{n+1}}{n+1}$

Si completa lo studio iniziato nella sezione precedente relativo alla serie di funzioni:
$$
F(x) := \sum_{n=1}^{+\infty} \frac{x^{n+1}}{n+1}
$$
definita sull'intervallo $(-1, 1)$. Poiché la serie delle derivate:
$$
\sum_{n=1}^{+\infty} f_n'(x) = \sum_{n=1}^{+\infty} x^n
$$
converge uniformemente su ogni intervallo compatto $[-R, R]$ con $R < 1$, per il Teorema di Derivazione per Serie è lecito scambiare la derivata con il segno di sommatoria:
$$
F'(x) = \sum_{n=1}^{+\infty} f_n'(x) = \sum_{n=1}^{+\infty} x^n = \frac{1}{1-x} - 1, \quad \forall x \in (-R, R), \; \forall R < 1
$$
dove si è riconosciuta la serie geometrica privata del primo termine corrispondente a $n = 0$:
$$
\sum_{n=1}^{+\infty} x^n = \sum_{n=0}^{+\infty} x^n - 1 = \frac{1}{1-x} - 1
$$
Essendo $R < 1$ arbitrario, la relazione vale puntualmente su tutto l'intervallo aperto $(-1, 1)$:
$$
F'(x) = \frac{1}{1-x} - 1 \quad \forall x \in (-1, 1)
$$
Integrando ambo i membri rispetto a $x$, ricordando che per $x \in (-1, 1)$ l'argomento $1-x > 0$ è strettamente positivo:
$$
F(x) = \int \left( \frac{1}{1-x} - 1 \right) dx = -\log(1-x) - x + c, \quad c \in \mathbb{R}, \quad \forall x \in (-1, 1)
$$
Per determinare il valore della costante arbitraria $c$, si valuta la somma $F(x)$ nel punto $x = 0$:
$$
F(0) = \sum_{n=1}^{+\infty} \frac{0^{n+1}}{n+1} = 0
$$
D'altra parte, dall'espressione analitica integrata:
$$
F(0) = -\log(1 - 0) - 0 + c = 0 + c \implies c = 0
$$
Si perviene pertanto all'espressione esplicita della somma della serie:
$$
F(x) = -\log(1-x) - x \quad \forall x \in (-1, 1)
$$
In definitiva:
$$
\sum_{n=1}^{+\infty} \frac{x^{n+1}}{n+1} = -\log(1-x) - x \quad \forall x \in (-1, 1)
$$
con convergenza puntuale su $(-1, 1)$ e convergenza uniforme su ogni sottointervallo chiuso e limitato $[-R, R]$ con $R < 1$.

### Teorema di Integrazione per Serie (Integrazione Termine a Termine)

Il seguente teorema stabilisce le condizioni sotto le quali è lecito scambiare l'operatore di integrazione definita secondo Riemann con l'operatore di sommatoria infinita.

> [!theorem] Teorema di Integrazione per Serie
> Siano $f_n: [a, b] \to \mathbb{R}$ funzioni integrabili secondo Riemann su $[a, b]$ per ogni $n \in \mathbb{N}$, e si assuma che la serie di funzioni:
> $$
> \sum_{n=1}^{+\infty} f_n(x)
> $$
> converga **uniformemente** su $[a, b]$. Sia $F(x) := \sum_{n=1}^{+\infty} f_n(x)$ la sua funzione somma.
> 
> Allora la funzione somma $F(x)$ è integrabile secondo Riemann su $[a, b]$ e vale l'identità di scambio tra integrale e sommatoria:
> $$
> \int_a^b F(x) \, dx := \int_a^b \left( \sum_{n=1}^{+\infty} f_n(x) \right) dx = \sum_{n=1}^{+\infty} \int_a^b f_n(x) \, dx
> $$
>
## 9.4. Serie di potenze: Teorema di Abel, raggio di convergenza e Cauchy-Hadamard

Le serie di potenze rappresentano la classe più importante e versatile di serie di funzioni, costituendo l'estensione naturale dei polinomi all'infinito e la chiave di volta per la teoria delle funzioni analitiche sia in ambito reale che complesso.

> [!definition] Serie di Potenze (Reali e Complesse)
> Si definisce **serie di potenze** centrata nel punto $z_0 \in \mathbb{C}$ una serie di funzioni della forma:
> $$
> \sum_{n=0}^{+\infty} a_n (z - z_0)^n = a_0 + a_1(z - z_0) + a_2(z - z_0)^2 + \dots + a_n(z - z_0)^n + \dots
> $$
> dove:
> - $z_0 \in \mathbb{C}$ è il **centro** della serie;
> - $\{a_n\}_{n=0}^{+\infty} \subset \mathbb{C}$ è la successione dei **coefficienti** della serie;
> - $z \in \mathbb{C}$ è la variabile complessa (qualora $z, z_0, a_n \in \mathbb{R}$, si parla di serie di potenze reale nella variabile reale $x$).

> [!note] Convergenza nel campo complesso
> Nel caso di una serie a termini complessi, la serie converge (nel senso desiderato: puntuale, uniforme, assoluto) se e solo se convergono separatamente le serie delle parti reali e delle parti immaginarie:
> $$
> \sum_{n=0}^{+\infty} a_n (z - z_0)^n = \sum_{n=0}^{+\infty} \mathrm{Re}\left( a_n (z - z_0)^n \right) + i \sum_{n=0}^{+\infty} \mathrm{Im}\left( a_n (z - z_0)^n \right)
> $$
> oppure, in modo equivalente (come si può rigorosamente dimostrare), se converge la serie dei moduli:
> $$
> \sum_{n=0}^{+\infty} \left| a_n (z - z_0)^n \right| < +\infty \quad (\text{Convergenza Assoluta})
> $$
>
### Teorema del Raggio di Convergenza (Primo Teorema di Struttura)

La regione di convergenza di una serie di potenze nel piano complesso non è un insieme arbitrario, bensì possiede una geometria circolare rigidamente determinata.

Si mostrerà che la serie converge sempre all'interno di un opportuno intorno sferico aperto (palla o disco aperto):
$$
B_R(z_0) := \{z \in \mathbb{C} : |z - z_0| < R\}, \quad R \in [0, +\infty]
$$
con le seguenti convenzioni sui valori limite del parametro $R$:
- Se $R = 0$: la serie converge **esclusivamente** nel centro $z = z_0$ (dove tutti i termini con $n \ge 1$ si annullano identicamente, fornendo la somma $a_0$);
- Se $R = +\infty$: la serie converge per ogni punto del piano complesso $\forall z \in \mathbb{C}$.

Inoltre, se $R \in [0, +\infty)$, la serie **non converge** per alcun punto esterno alla palla chiusa:
$$
|z - z_0| > R \implies \text{la serie diverge / non converge}
$$
Sulla circonferenza di frontiera $|z - z_0| = R$, la teoria generale non fornisce risposte univoche: il comportamento (convergenza puntuale, assoluta o divergenza) dipende dalla specifica successione $\{a_n\}$ e va esaminato punto per punto.

> [!example] Esemplificazione dei tre regimi limite
> Ciascuno dei tre scenari per $R$ si realizza concretamente:
> 1. **Raggio finito $R \in (0, +\infty)$:** La serie geometrica complessa:
>    $$
>    \sum_{n=0}^{+\infty} z^n
>    $$
>    ha raggio di convergenza $R = 1$ e converge all'interno del disco unitario $B_1(0) = \{z \in \mathbb{C} : |z| < 1\}$.
> 2. **Raggio infinito $R = +\infty$:** La serie esponenziale:
>    $$
>    \sum_{n=0}^{+\infty} \frac{z^n}{n!}
>    $$
>    converge per ogni $z \in \mathbb{C}$.
> 3. **Raggio nullo $R = 0$:** La serie a coefficienti fattoriali:
>    $$
>    \sum_{n=0}^{+\infty} n! z^n
>    $$
>    converge unicamente per $z = 0$. Infatti, per qualunque $z \ne 0$:
>    $$
>    |n! z^n| = n! |z|^n \xrightarrow{n \to +\infty} +\infty \ne 0
>    $$
>    violando la condizione necessaria di convergenza.
>
Il fondamento teorico di questa proprietà geometrica è sancito dal seguente fondamentale teorema:

> [!theorem] Primo Teorema di Struttura (Teorema di Abel / Convergenza nel Cerchio)
> Sia data una serie di potenze $\sum_{n=0}^{+\infty} a_n (z - z_0)^n$.
> Se la serie **converge** in un punto $z_1 \ne z_0$, allora essa **converge assolutamente** in ogni punto $z \in \mathbb{C}$ tale che:
> $$
> |z - z_0| < |z_1 - z_0|
> $$
> ovvero in ogni punto appartenente al disco aperto $B_{|z_1 - z_0|}(z_0)$.

> [!quote]- Dimostrazione
> Senza perdita di generalità, poniamo $z_0 = 0$ per alleggerire la notazione (la traslazione non altera i moduli né le distanze).
> Per ipotesi la serie converge nel punto $z_1 \ne 0$:
> $$
> \sum_{n=0}^{+\infty} a_n z_1^n \quad \text{converge}
> $$
> In virtù della condizione necessaria per la convergenza di una serie numerica, il termine generale della sommatoria deve essere infinitesimo:
> $$
> \lim_{n \to +\infty} a_n z_1^n = 0
> $$
> Ogni successione convergente è limitata. In particolare, per definizione di limite (fissando ad esempio $\varepsilon = 1$), esiste un indice $n_0 \in \mathbb{N}$ tale che:
> $$
> |a_n z_1^n| \le 1 \quad \forall n \ge n_0 \quad (\text{definitivamente})
> $$
> Sia ora $z \in \mathbb{C}$ un generico punto soddisfacente la disuguaglianza $|z| < |z_1|$, ovvero $z \in B_{|z_1|}(0)$.
> Riscriviamo il modulo del termine generale moltiplicando e dividendo per $z_1^n$:
> $$
> |a_n z^n| = \left| a_n \left( z_1 \frac{z}{z_1} \right)^n \right| = |a_n z_1^n| \left| \frac{z}{z_1} \right|^n
> $$
> Poiché $|a_n z_1^n| \le 1$ definitivamente per ogni $n \ge n_0$:
> $$
> |a_n z^n| \le \left| \frac{z}{z_1} \right|^n \quad \text{definitivamente}
> $$
> Ma il termine a destra è una progressione geometrica:
> $$
> \left| \frac{z}{z_1} \right|^n = \left( \frac{|z|}{|z_1|} \right)^n =: q^n
> $$
> avendo posto la ragione reale:
> $$
> q := \frac{|z|}{|z_1|}
> $$
> Poiché per ipotesi $|z| < |z_1|$, si ha $0 \le q < 1$.
> La serie geometrica di ragione $q$:
> $$
> \sum_{n=0}^{+\infty} q^n
> $$
> è convergente essendo $q \in [0, 1)$.
> Per il Teorema del Confronto per serie a termini non negativi, converge anche la serie dei moduli:
> $$
> \sum_{n=0}^{+\infty} |a_n z^n| < +\infty
> $$
> il che dimostra che la serie originaria $\sum_{n=0}^{+\infty} a_n z^n$ converge assolutamente. $\blacksquare$
>
### Definizione Formale del Raggio di Convergenza

Il Primo Teorema di Struttura consente di formulare rigorosamente la nozione di raggio di convergenza mediante l'estremo superiore delle distanze.

> [!definition] Raggio di Convergenza
> Sia $\sum_{n=0}^{+\infty} a_n (z - z_0)^n$ una serie di potenze assegnata, e sia $C \subset \mathbb{C}$ il suo insieme di convergenza:
> $$
> C := \left\{ z \in \mathbb{C} : \sum_{n=0}^{+\infty} a_n (z - z_0)^n \text{ converge} \right\}
> $$
> L'insieme $C$ non è mai vuoto ($C \ne \emptyset$), poiché ogni serie di potenze converge almeno nel suo centro $z_0$ (infatti per $z = z_0$ la serie assume il valore finito $a_0$).
> 
> Si consideri l'insieme $A \subset [0, +\infty)$ formato dalle distanze dal centro di tutti i punti di convergenza:
> $$
> A := \left\{ |z - z_0| : z \in C \right\}
> $$
> Si definisce **raggio di convergenza** della serie la quantità estesa:
> $$
> R := \sup A \in [0, +\infty]
> $$

> [!proposition] Classificazione del Comportamento Globale
> Dal Primo Teorema di Struttura e dalla definizione di estremo superiore discendono immediatamente le seguenti proprietà:
> 1. Se $R = 0$: la serie converge unicamente per $z = z_0$;
> 2. Se $R \in (0, +\infty)$:
>    - La serie converge assolutamente $\forall z \in B_R(z_0)$ (all'interno del disco aperto di raggio $R$);
>    - La serie non converge per alcun $z$ tale che $|z - z_0| > R$;
> 3. Se $R = +\infty$: la serie converge assolutamente per ogni $z \in \mathbb{C}$.
>
### Teorema di Cauchy-Hadamard (Criterio della Radice)

Il seguente teorema fornisce un metodo generale ed esaustivo per determinare il raggio di convergenza di qualsiasi serie di potenze a partire dal comportamento asintotico dei suoi coefficienti.

> [!theorem] Teorema di Cauchy-Hadamard (Criterio della Radice per Serie di Potenze)
> Sia assegnata la serie di potenze $\sum_{n=0}^{+\infty} a_n (z - z_0)^n$. Si definisca il limite superiore dei moduli dei coefficienti sotto radice $n$-esima:
> $$
> \ell := \limsup_{n \to +\infty} \sqrt[n]{|a_n|} \in [0, +\infty]
> $$
> Allora il raggio di convergenza $R$ della serie di potenze è dato dalla formula:
> $$
> R = \frac{1}{\ell}
> $$
> con le convenzioni standard dell'analisi estesa:
> $$
> \begin{align}
> \ell = 0 &\implies R = +\infty \\
> \ell = +\infty &\implies R = 0
> \end{align}
> $$

> [!quote]- Dimostrazione
> Senza perdita di generalità, poniamo $z_0 = 0$.
> Dimostriamo il teorema nel caso intermedio $\ell \in (0, +\infty)$ (i casi $\ell = 0$ e $\ell = +\infty$ seguono con adattamenti immediati delle definizioni di limite superiore).
>
> Per la caratterizzazione topologica del limite superiore $\limsup_{n \to +\infty} \sqrt[n]{|a_n|} = \ell$, fissato arbitrariamente $\varepsilon > 0$:
> 1. Esiste un indice $n_0 \in \mathbb{N}$ tale che:
>    $$
>    \sqrt[n]{|a_n|} \le \ell + \varepsilon \quad \forall n \ge n_0 \quad (\ell + \varepsilon \text{ è definitivamente un maggiorante})
>    $$
> 2. Esistono infiniti indici distinti $\{n_k\}_{k=1}^{+\infty}$ per i quali:
>    $$
>    \sqrt[n_k]{|a_{n_k}|} > \ell - \varepsilon \quad \forall k \in \mathbb{N}
>    $$
>
> **1. Convergenza all'interno del disco ($|z| < \frac{1}{\ell}$):**
> Sia $z \in \mathbb{C}$ un punto con $|z| < \frac{1}{\ell}$, ovvero $|z|\ell < 1$.
> Poiché la disuguaglianza è stretta, si può scegliere $\varepsilon > 0$ sufficientemente piccolo da garantire:
> $$
> |z|(\ell + \varepsilon) < 1
> $$
> Dalla proprietà (1), per tutti gli $n \ge n_0$ si ha:
> $$
> \sqrt[n]{|a_n|} \le \ell + \varepsilon \implies |a_n| \le (\ell + \varepsilon)^n
> $$
> Poniamo la quantità reale:
> $$
> q := |z|(\ell + \varepsilon) < 1
> $$
> Se $|z| \ne 0$ (nel punto $z = 0$ la serie converge banalmente), possiamo scrivere $\ell + \varepsilon = \frac{q}{|z|}$. Sostituendo:
> $$
> |a_n| \le \left( \frac{q}{|z|} \right)^n \quad \forall n \ge n_0
> $$
> Moltiplicando ambo i membri per $|z|^n$:
> $$
> |a_n| |z|^n = |a_n z^n| \le q^n \quad \forall n \ge n_0
> $$
> Essendo $0 \le q < 1$, la serie geometrica $\sum_{n=0}^{+\infty} q^n$ converge.
> Per il Teorema del Confronto, la serie dei moduli converge:
> $$
> \sum_{n=0}^{+\infty} |a_n z^n| < +\infty \implies \sum_{n=0}^{+\infty} a_n z^n \text{ converge assolutamente } \forall z : |z| < \frac{1}{\ell}
> $$
>
> **2. Non convergenza all'esterno del disco ($|z| > \frac{1}{\ell}$):**
> Sia ora $z \in \mathbb{C}$ tale che $|z| > \frac{1}{\ell}$, da cui $|z|\ell > 1$.
> Scegliamo $\varepsilon > 0$ sufficientemente piccolo in modo che:
> $$
> |z|(\ell - \varepsilon) > 1 \implies \ell - \varepsilon > \frac{1}{|z|}
> $$
> (si noti che $|z| \ne 0$ poiché $|z| > \frac{1}{\ell} > 0$).
> Dalla proprietà (2), per gli infiniti indici $\{n_k\}_{k=1}^{+\infty}$ si ha:
> $$
> \sqrt[n_k]{|a_{n_k}|} > \ell - \varepsilon \implies |a_{n_k}| > (\ell - \varepsilon)^{n_k} > \left( \frac{1}{|z|} \right)^{n_k} \quad \forall k \in \mathbb{N}
> $$
> Moltiplicando per $|z|^{n_k}$:
> $$
> |a_{n_k} z^{n_k}| = |a_{n_k}| |z|^{n_k} > 1 \quad \forall k \in \mathbb{N}
> $$
> Di conseguenza, il termine generale lungo la sottosuccessione non tende a zero:
> $$
> a_{n_k} z^{n_k} \not\xrightarrow{k \to +\infty} 0
> $$
> Non essendo verificata la condizione necessaria di convergenza ($\lim_{n \to +\infty} a_n z^n = 0$), la serie di potenze **non converge**:
> $$
> \sum_{n=0}^{+\infty} a_n z^n \quad \text{non converge } \forall z : |z| > \frac{1}{\ell}
> $$
> Resta così pienamente dimostrato che $R = \frac{1}{\ell}$. $\blacksquare$
>
### Criterio del Rapporto per Serie di Potenze (Formula di D'Alembert)

Qualora i coefficienti della serie siano non nulli e risulti agevole calcolare il limite del loro rapporto consecutivo, si può ricorrere alla formulazione di D'Alembert.

> [!theorem] Criterio del Rapporto per Serie di Potenze (Formula di D'Alembert)
> Sia assegnata la serie di potenze $\sum_{n=0}^{+\infty} a_n (z - z_0)^n$ con $a_n \ne 0$ definitivamente.
> Se esiste il limite del rapporto dei moduli dei coefficienti:
> $$
> \exists \lim_{n \to +\infty} \frac{|a_{n+1}|}{|a_n|} = \ell \in [0, +\infty]
> $$
> allora il raggio di convergenza $R$ della serie è dato da:
> $$
> R = \frac{1}{\ell}
> $$
> con le consuete convenzioni $R = +\infty$ se $\ell = 0$, e $R = 0$ se $\ell = +\infty$.

> [!note] Giustificazione teorica
> Il risultato discende direttamente dal Teorema di Cesàro sulle medie (o lemma di Cauchy sui rapporti e radici), per cui per ogni successione reale positiva se esiste $\lim_{n \to +\infty} \frac{|a_{n+1}|}{|a_n|} = \ell$, allora esiste anche $\lim_{n \to +\infty} \sqrt[n]{|a_n|} = \ell$.

> [!example] Esempi Notevoli di Calcolo del Raggio di Convergenza

> [!example] Esempio 1: Serie esponenziale complessa
> Si consideri la serie:
> $$
> \sum_{n=0}^{+\infty} \frac{z^n}{n!}
> $$
> I coefficienti sono $a_n = \frac{1}{n!}$. Applicando il criterio del rapporto:
> $$
> \lim_{n \to +\infty} \frac{|a_{n+1}|}{|a_n|} = \lim_{n \to +\infty} \frac{\frac{1}{(n+1)!}}{\frac{1}{n!}} = \lim_{n \to +\infty} \frac{n!}{(n+1) n!} = \lim_{n \to +\infty} \frac{1}{n+1} = 0
> $$
> Essendo $\ell = 0$, si conclude:
> $$
> R = \frac{1}{0^+} = +\infty
> $$
> La serie converge assolutamente su tutto il piano complesso $\mathbb{C}$.

> [!example] Esempio 2: Serie armonica generalizzata di potenze
> Si consideri la serie:
> $$
> \sum_{n=1}^{+\infty} \frac{z^n}{n^\alpha}, \quad \alpha \in \mathbb{R}
> $$
> I coefficienti sono $a_n = \frac{1}{n^\alpha}$. Calcoliamo il rapporto:
> $$
> \lim_{n \to +\infty} \frac{|a_{n+1}|}{|a_n|} = \lim_{n \to +\infty} \frac{\frac{1}{(n+1)^\alpha}}{\frac{1}{n^\alpha}} = \lim_{n \to +\infty} \left( \frac{n}{n+1} \right)^\alpha = 1^\alpha = 1, \quad \forall \alpha \in \mathbb{R}
> $$
> Essendo $\ell = 1$, il raggio di convergenza è:
> $$
> R = \frac{1}{1} = 1 \quad \forall \alpha \in \mathbb{R}
> $$
> Il raggio di convergenza è indipendente dal parametro $\alpha$. (Il comportamento sulla frontiera $|z| = 1$ varia invece in base ad $\alpha$: per $\alpha > 1$ vi è convergenza totale su tutto il bordo; per $\alpha \le 0$ non vi è convergenza in alcun punto).

> [!example] Esempio 3: Serie fattoriale divergente
> Si consideri la serie:
> $$
> \sum_{n=1}^{+\infty} n! z^n
> $$
> I coefficienti sono $a_n = n!$. Valutando il rapporto:
> $$
> \lim_{n \to +\infty} \frac{a_{n+1}}{a_n} = \lim_{n \to +\infty} \frac{(n+1)!}{n!} = \lim_{n \to +\infty} (n+1) = +\infty
> $$
> Essendo $\ell = +\infty$, il raggio di convergenza è:
> $$
> R = \frac{1}{+\infty} = 0
> $$
> La serie converge unicamente per $z = 0$.
>
>
## 9.5. Proprietà analitiche delle serie di potenze e regolarità $C^\infty$

Sia data una serie di potenze $\sum_{n=0}^{+\infty} a_n (z - z_0)^n$ con raggio di convergenza $R \in (0, +\infty]$.
Possiamo definire rigorosamente la sua funzione somma sul disco aperto di convergenza:
$$
f(z) := \sum_{n=0}^{+\infty} a_n (z - z_0)^n, \quad \forall z \in B_R(z_0)
$$

> [!note] Richiamo: Continuità in spazi metrici e normati
> Si ricorda la nozione topologica di continuità per una funzione $f: X \to \mathbb{C}$ definita su uno spazio normato $X$:
> Sia $x_0 \in X$ un punto di accumulazione. $f$ è continua in $x_0$ se e solo se:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall x \in X, \quad \|x - x_0\|_X < \delta \implies |f(x) - f(x_0)| < \varepsilon
> $$
> Nel caso standard $X = \mathbb{C}$, la norma $\|x - x_0\|_X$ coincide con il modulo euclideo ordinario $|z - z_0|$.
>
### Convergenza Uniforme e Continuità della Somma

All'interno dell'aperto di convergenza $B_R(z_0)$, la convergenza uniforme è assicurata su ogni compatto concentrico.

> [!theorem] Teorema di Convergenza Uniforme e Continuità
> Sia $f(z) := \sum_{n=0}^{+\infty} a_n (z - z_0)^n$ definita sul disco $B_R(z_0)$ con raggio $R \in (0, +\infty]$.
> Valgono le seguenti proprietà:
> 1. La serie converge **uniformemente** e totalmente sulla chiusura di ogni disco aperto di raggio strettamente inferiore al raggio di convergenza:
>    $$
>    \sum_{n=0}^{+\infty} a_n (z - z_0)^n \quad \text{converge uniformemente su } \overline{B_r(z_0)}, \quad \forall r < R
>    $$
>    dove $\overline{B_r(z_0)} := \{z \in \mathbb{C} : |z - z_0| \le r\}$ denota il disco chiuso concentrico di raggio $r$;
> 2. La funzione somma $f(z)$ è **continua** su tutto il disco aperto di convergenza:
>    $$
>    f \in C^0(B_R(z_0))
>    $$

> [!quote]- Dimostrazione
> **Dimostrazione del punto (1):**
> Sia fissato $r \in [0, R)$. Per definizione di raggio di convergenza, esiste un punto $z^* \in \mathbb{C}$ tale che $|z^* - z_0| = r < R$. In tale punto la serie converge assolutamente:
> $$
> \sum_{n=0}^{+\infty} |a_n| r^n < +\infty
> $$
> Per ogni $z \in \overline{B_r(z_0)}$, si ha per definizione $|z - z_0| \le r$. Di conseguenza:
> $$
> \left| a_n (z - z_0)^n \right| = |a_n| |z - z_0|^n \le |a_n| r^n \quad \forall z \in \overline{B_r(z_0)}
> $$
> La quantità maggiorante $M_n := |a_n| r^n$ è indipendente da $z$, e la serie numerica $\sum_{n=0}^{+\infty} M_n$ è convergente.
> Per il Criterio di Weierstrass (Convergenza Totale), la serie di potenze converge totalmente, e quindi uniformemente, sul disco compatto $\overline{B_r(z_0)}$.
>
> **Dimostrazione del punto (2):**
> Sia $z_1 \in B_R(z_0)$ un punto arbitrario. Essendo $B_R(z_0)$ aperto, $|z_1 - z_0| < R$.
> Possiamo scegliere un raggio intermedio $r$ tale che:
> $$
> |z_1 - z_0| < r < R \implies z_1 \in B_r(z_0) \subset \overline{B_r(z_0)}
> $$
> Ciascun termine della serie $u_n(z) := a_n (z - z_0)^n$ è una funzione polinomiale continua su $\mathbb{C}$.
> Poiché la serie converge uniformemente sul disco chiuso $\overline{B_r(z_0)}$, per il Teorema di Continuità del Limite Uniforme la somma $f(z)$ è continua in $z_1$.
> In termini analitici, è lecito scambiare il limite con la sommatoria:
> $$
> \lim_{z \to z_1} f(z) = \lim_{z \to z_1} \sum_{n=0}^{+\infty} a_n (z - z_0)^n = \sum_{n=0}^{+\infty} \lim_{z \to z_1} \left[ a_n (z - z_0)^n \right] = \sum_{n=0}^{+\infty} a_n (z_1 - z_0)^n = f(z_1)
> $$
> Data l'arbitrarietà di $z_1 \in B_R(z_0)$, ne segue che $f$ è continua su tutto $B_R(z_0)$. $\blacksquare$
>
### Teorema di Derivazione Termine a Termine nel Dominio Reale

Nel campo reale, le serie di potenze godono di proprietà di regolarità eccezionali: esse possono essere derivate e integrate termine a termine infinite volte all'interno del loro intervallo di convergenza.

> [!theorem] Teorema di Derivazione Termine a Termine (Serie Reali)
> Sia $\{a_n\}_{n=0}^{+\infty} \subset \mathbb{R}$, $x_0 \in \mathbb{R}$, e si consideri la serie di potenze reale:
> $$
> f(x) := \sum_{n=0}^{+\infty} a_n (x - x_0)^n
> $$
> avente raggio di convergenza $R \in (0, +\infty]$, definita sull'intervallo aperto di convergenza $(x_0 - R, x_0 + R)$ (con l'intesa che se $R = +\infty$, l'intervallo è $\mathbb{R}$).
> 
> Si consideri la **serie delle derivate formali**:
> $$
> \sum_{n=1}^{+\infty} n a_n (x - x_0)^{n-1} \overset{k := n-1}{=} \sum_{k=0}^{+\infty} (k+1) a_{k+1} (x - x_0)^k
> $$
> (si osservi che per $n = 0$ il termine costante ha derivata nulla, per cui la serie delle derivate è ancora una serie di potenze centrata in $x_0$).
> 
> Valgono le seguenti proprietà:
> 1. La serie delle derivate ha lo **stesso raggio di convergenza** $R$ della serie originaria $f(x)$;
> 2. La funzione somma $f$ è derivabile in ogni punto dell'intervallo $(x_0 - R, x_0 + R)$ e la sua derivata prima coincide con la somma della serie derivata termine a termine:
>    $$
>    f'(x) = \sum_{n=1}^{+\infty} n a_n (x - x_0)^{n-1} = \sum_{k=0}^{+\infty} (k+1) a_{k+1} (x - x_0)^k, \quad \forall x \in (x_0 - R, x_0 + R)
>    $$
>    (è sempre lecito "scambiare" derivata e sommatoria all'interno dell'intervallo di convergenza).

> [!quote]- Dimostrazione
> [Cenno di Dimostrazione]`
> Calcoliamo il raggio di convergenza $R'$ della serie delle derivate applicando il Teorema di Cauchy-Hadamard. Il termine generale della serie derivata è $b_k (x - x_0)^k$ con $b_k = (k+1) a_{k+1}$.
> In modo del tutto equivalente, valutando il coefficiente $n a_n$:
> $$
> \limsup_{k \to +\infty} \left[ \frac{k!}{(k-1)!} |a_k| \right]^{\frac{1}{k}} = \lim_{k \to +\infty} \left[ \frac{k!}{(k-1)!} \right]^{\frac{1}{k}} \cdot \limsup_{k \to +\infty} |a_k|^{\frac{1}{k}}
> $$
> Poiché $\frac{k!}{(k-1)!} = k$, calcoliamo il limite notevole:
> $$
> \lim_{k \to +\infty} k^{\frac{1}{k}} = \lim_{k \to +\infty} e^{\frac{1}{k} \log(k)} = e^0 = 1
> $$
> Ne segue immediatamente:
> $$
> \limsup_{k \to +\infty} |b_k|^{\frac{1}{k}} = 1 \cdot \limsup_{k \to +\infty} |a_k|^{\frac{1}{k}} = \frac{1}{R} \implies R' = R
> $$
> Avendo raggio di convergenza $R$, la serie delle derivate converge uniformemente su ogni compatto $[x_0 - r, x_0 + r] \subset (x_0 - R, x_0 + R)$ con $r < R$.
> Per il Teorema di Derivazione per Serie di Funzioni, la funzione somma $f(x)$ è derivabile e la sua derivata è data dallo scambio termine a termine. $\blacksquare$

> [!note] Conseguenza: Valore della derivata prima nel centro
> Valutando l'espressione di $f'(x)$ nel centro $x = x_0$, tutti i termini con potenza $(x_0 - x_0)^k$ con $k \ge 1$ si annullano identicamente, fornendo:
> $$
> f'(x_0) = a_1
> $$
>
### Regolarità $C^\infty$ e Formula per i Coefficienti di Taylor

Poiché la serie derivata è a sua volta una serie di potenze avente lo stesso raggio di convergenza $R$, il teorema di derivazione termine a termine può essere iterato quante volte si desidera.

> [!theorem] Corollario: Infinità Derivabilità e Identificazione con la Serie di Taylor
> Con le medesime notazioni e ipotesi del teorema precedente:
> 1. La funzione somma $f(x)$ è **indefinitamente derivabile** (di classe $C^\infty$) sull'intervallo aperto di convergenza:
>    $$
>    f \in C^\infty((x_0 - R, x_0 + R))
>    $$
> 2. Per ogni ordine $k \in \mathbb{N}$, la derivata $k$-esima $f^{(k)}(x)$ si ottiene derivando $k$ volte, termine a termine, la serie di partenza:
>    $$
>    \begin{align}
>    f^{(k)}(x) &= \left( \sum_{n=0}^{+\infty} a_n (x - x_0)^n \right)^{(k)} = \sum_{n=0}^{+\infty} [a_n (x - x_0)^n]^{(k)} \\
>    &= \sum_{n=k}^{+\infty} n(n-1)\dots(n-k+1) a_n (x - x_0)^{n-k}
>    \end{align}
>    $$
> 3. Valutando la derivata $k$-esima nel centro $x = x_0$, tutti i termini con $n > k$ si annullano, lasciando unicamente il termine con $n = k$:
>    $$
>    f^{(k)}(x_0) = k! a_k \implies a_k = \frac{f^{(k)}(x_0)}{k!}, \quad \forall k \in \mathbb{N} \cup \{0\}
>    $$
> 4. Ne consegue che la serie di potenze coincide identicamente con la **serie di Taylor** generata dalla funzione somma $f$ nel punto $x_0$:
>    $$
>    f(x) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n, \quad \forall x \in (x_0 - R, x_0 + R)
>    $$
>
## 9.6. Funzioni analitiche reali ($C^\omega$), controesempio di Cauchy e condizioni di analiticità

Il corollario precedente garantisce che se una funzione è generata come somma di una serie di potenze convergente, essa è automaticamente di classe $C^\infty$ e coincide con la propria serie di Taylor.

Si pone ora la questione inversa fondamentale dell'analisi matematica:

> [!note] Questione Inversa
> Sia data una funzione arbitraria $f: (a, b) \to \mathbb{R}$ di classe $C^\infty((a, b))$, ovvero derivabile infinite volte.
> È sempre vero che $f(x)$ è sviluppabile in serie di Taylor, ossia che la sua serie di Taylor centrata in $x_0 \in (a, b)$:
> $$
> \sum_{n=0}^{+\infty} \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n
> $$
> converge ad $f(x)$ almeno in un intorno $(x_0 - R, x_0 + R) \subset (a, b)$?
> 
> **La risposta è categoricamente NEGATIVA!**
>
### Il Controesempio di Cauchy ($C^\infty$ non Analitica)

Per mostrare che la regolarità $C^\infty$ non è sufficiente a garantire la rappresentabilità in serie di Taylor, si esamina il celebre controesempio ideato da Augustin-Louis Cauchy.

> [!warning] Controesempio di Cauchy
> Si consideri la funzione reale definita su tutto $\mathbb{R}$:
> $$
> f(x) = \begin{cases} e^{-\frac{1}{x^2}} & \text{se } x \ne 0 \\ 0 & \text{se } x = 0 \end{cases}
> $$
> 
> Si verificano le seguenti proprietà:
> 1. Per $x \ne 0$, la funzione è composizione di funzioni elementari $C^\infty$, dunque è infinitamente derivabile.
> 2. Nel punto $x = 0$, applicando la definizione di derivata mediante il limite del rapporto incrementale e la gerarchia degli infiniti:
>    $$
>    f'(0) = \lim_{x \to 0} \frac{e^{-\frac{1}{x^2}} - 0}{x} \overset{t = 1/x}{=} \lim_{t \to \pm\infty} \frac{t}{e^{t^2}} = 0
>    $$
>    Iterando per induzione, per ogni ordine $n \in \mathbb{N}$ la derivata $n$-esima per $x \ne 0$ assume la forma:
>    $$
>    f^{(n)}(x) = P_n\left(\frac{1}{x}\right) e^{-\frac{1}{x^2}}
>    $$
>    dove $P_n$ è un opportuno polinomio. Passando al limite per $x \to 0$, l'esponenziale a denominatore domina qualsiasi potenza polinomiale, fornendo:
>    $$
>    f^{(n)}(0) = 0 \quad \forall n \in \mathbb{N} \cup \{0\}
>    $$
>    La funzione $f(x)$ è pertanto infinitamente derivabile su tutta la retta reale ($f \in C^\infty(\mathbb{R})$).
> 
> 3. Costruiamo ora la serie di Taylor di $f(x)$ centrata nel punto $x_0 = 0$:
>    Poiché tutte le derivate si annullano nell'origine ($f^{(n)}(0) = 0$), tutti i coefficienti di Taylor sono nulli:
>    $$
>    \sum_{n=0}^{+\infty} \frac{f^{(n)}(0)}{n!} x^n = \sum_{n=0}^{+\infty} 0 \cdot x^n = 0 \quad \forall x \in \mathbb{R}
>    $$
>    Tale serie converge banalmente su tutto $\mathbb{R}$ (ha raggio di convergenza $R = +\infty$), ma la sua somma è la funzione costante nulla $S(x) \equiv 0$.
> 
> D'altra parte, per ogni $x \ne 0$:
> $$
> f(x) = e^{-\frac{1}{x^2}} > 0 \ne 0
> $$
> Ne consegue che la serie di Taylor non converge alla funzione di partenza in alcun punto diverso dall'origine:
> $$
> f(x) \ne \sum_{n=0}^{+\infty} \frac{f^{(n)}(0)}{n!} x^n \quad \forall x \ne 0
> $$

> [!note] Origine analitica del fallimento: Il Resto di Lagrange
> Il motivo analitico per cui la serie di Taylor fallisce nel convergere ad $f(x)$ risiede nel comportamento del resto di Taylor. Ricordando la formula con resto di Lagrange:
> $$
> f(x) = T_n(x) + R_n(x), \quad R_n(x) = \frac{f^{(n+1)}(\xi)}{(n+1)!} x^{n+1}
> $$
> con $\xi$ compreso tra $0$ e $x$. Affinché la serie di Taylor converga a $f(x)$, è necessario e sufficiente che:
> $$
> \lim_{n \to +\infty} R_n(x) = 0
> $$
> Nella funzione di Cauchy, all'aumentare dell'ordine $n$, le derivate $f^{(n+1)}(\xi)$ nell'intorno di zero crescono con una velocità asintotica superiore a $(n+1)!$, rendendo il resto di Lagrange non infinitesimo per $n \to +\infty$.
>
### Definizione di Funzione Analitica in Senso Reale ($C^\omega$)

Il controesempio di Cauchy impone di introdurre una classe di funzioni più restrittiva ed elevata rispetto a $C^\infty$.

> [!definition] Funzione Analitica in Senso Reale ($C^\omega$)
> Sia $f \in C^\infty((a, b))$ e sia $x_0 \in (a, b)$.
> Si dice che $f$ è **analitica in senso reale nel punto $x_0$** se esistono un raggio $R > 0$ e un intorno $(x_0 - R, x_0 + R) \subset (a, b)$ tale che:
> $$
> f(x) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n \quad \forall x \in (x_0 - R, x_0 + R)
> $$
> Se la condizione di sviluppabilità in serie di Taylor sussiste per **ogni** punto $x_0 \in (a, b)$ (con un raggio opportuno $R = R(x_0) > 0$), allora si dice che la funzione è **analitica in senso reale sull'intervallo $(a, b)$**, e si denota:
> $$
> f \in C^\omega((a, b))
> $$

> [!note] Gerarchia delle classi di regolarità
> L'esempio di Cauchy dimostra rigorosamente che l'inclusione tra le classi di funzioni differenziabili è stretta:
> $$
> C^\omega((a, b)) \subsetneq C^\infty((a, b)) \dots \subsetneq C^2((a, b)) \subsetneq C^1((a, b)) \subsetneq C^0((a, b))
> $$
> Esistono funzioni $C^\infty$ che non sono analitiche in alcun punto del loro dominio.
>
### Condizione Sufficiente per l'Analiticità Reale

Si conclude enunciando il criterio fondamentale che permette di stabilire se una funzione infinitamente derivabile è analitica in senso reale, controllando la crescita asintotica delle derivate di ordine superiore.

> [!theorem] Condizione Sufficiente per l'Analiticità Reale (Controllo delle Derivate)
> Sia $f \in C^\infty((x_0 - R, x_0 + R))$.
> Si supponga che esista una costante positiva $M > 0$ tale che l'estremo superiore del modulo delle derivate su tutto l'intervallo sia controllato dalla crescita fattoriale:
> $$
> \sup_{x \in (x_0 - R, x_0 + R)} \left| f^{(n)}(x) \right| \le \frac{M}{R^n} n! \quad \text{definitivamente (per ogni } n \ge n_0)
> $$
> Allora la serie di Taylor generata da $f$ centrata in $x_0$ converge uniformemente ad $f(x)$ su $(x_0 - R, x_0 + R)$, e la funzione $f$ è **analitica in senso reale**:
> $$
> f \in C^\omega((x_0 - R, x_0 + R))
> $$
>
