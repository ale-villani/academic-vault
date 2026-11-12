---
title: "Successioni Numeriche e Completezza Metrica"
domain: "math/real-analysis"
source_course: "Analisi 1 (Cap. 4)"
tags:
  - math/real-analysis/sequences
  - math/real-analysis/cauchy
---

# 4. Successioni Numeriche e Completezza Metrica

Si introduce lo studio delle successioni numeriche reali come caso particolare di funzioni definite su un dominio discreto.

> [!definition] Successione di numeri reali
> Una funzione $f: \mathbb{N} \to \mathbb{R}$ è detta **successione di numeri reali**.
> Si adotta la medesima terminologia anche nel caso in cui $f$ sia definita definitivamente per ogni $n \geq n_0$ (con $n, n_0 \in \mathbb{N}$) per un opportuno indice di partenza $n_0$.
> 
> Le successioni si indicano convenzionalmente con la notazione indicizzata:
> $$
> \{a_n\}_{n \in \mathbb{N}} \quad \text{oppure} \quad \{a_n, n \in \mathbb{N}\}
> $$
> ove $a_n := f(n) \in \mathbb{R}$ denota il termine generale della successione.
>
**Considerazioni topologiche sul dominio $\mathbb{N}$**
L'insieme dei numeri naturali $\mathbb{N} \subset \overline{\mathbb{R}}$ è privo di punti di accumulazione al finito: l'unico punto di accumulazione di $\mathbb{N}$ (nella retta reale estesa $\overline{\mathbb{R}}$) è $+\infty$.
Ne consegue che per una successione numerica **l'unico limite possibile** è il limite per:
$$
n \to +\infty
$$

## 4.1. Limiti di successioni numeriche

La definizione di limite per una successione ricalca fedelmente la definizione generale di limite di funzione per $x \to +\infty$.

> [!definition] Limite finito e infinito di una successione
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale.
> - **Limite finito:** Si dice che la successione converge a un limite finito $\ell \in \mathbb{R}$, e si scrive $\lim_{n \to +\infty} a_n = \ell$, se:
>   $$
>   \forall \varepsilon > 0, \; \exists K > 0 : n > K \implies |a_n - \ell| < \varepsilon
>   $$
> - **Limite infinito:** Si dice che la successione diverge a $+\infty$ (risp. $-\infty$), e si scrive $\lim_{n \to +\infty} a_n = \pm\infty$, se:
>   $$
>   \begin{align}
>   \lim_{n \to +\infty} a_n = +\infty &\iff \forall M > 0, \; \exists K > 0 : n > K \implies a_n > M \\
>   \lim_{n \to +\infty} a_n = -\infty &\iff \forall M > 0, \; \exists K > 0 : n > K \implies a_n < -M
>   \end{align}
>   $$

> [!note] Eredità delle proprietà generali dei limiti
> Per le successioni valgono integralmente tutti i teoremi generali stabiliti per i limiti di funzioni:
> 1. **Unicità del limite:** se il limite esiste, è unico.
> 2. **Algebra dei limiti:** somma, prodotto, quoziente (ove non si presentino forme indeterminate).
> 3. **Teorema della permanenza del segno.**
> 4. **Teorema del confronto** (teorema dei due carabinieri) e teoremi di confronto a due per divergenza a $\pm\infty$.
>
## 4.2. Successioni monotone e regolarità

> [!definition] Monotonia per successioni
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale. Essa si dice:
> - **Monòtona crescente:** se
>   $$
>   a_n \leq a_{n+1}, \quad \forall n \in \mathbb{N}
>   $$
> - **Monòtona decrescente:** se
>   $$
>   a_n \geq a_{n+1}, \quad \forall n \in \mathbb{N}
>   $$
> Se le disuguaglianze valgono in senso stretto ($a_n < a_{n+1}$ oppure $a_n > a_{n+1}$ per ogni $n \in \mathbb{N}$), la successione si dice rispettivamente **strettamente monòtona crescente** o **strettamente monòtona decrescente**.
>
Il seguente teorema costituisce uno dei pilastri fondamentali dell'analisi reale, garantendo l'esistenza del limite senza necessità di congetturarne a priori il valore.

> [!theorem] Teorema di regolarità delle successioni monotone
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale monòtona.
> Allora $\{a_n\}$ ammette sempre limite (finito o infinito) per $n \to +\infty$:
> $$
> \exists \lim_{n \to +\infty} a_n = \ell \in \mathbb{R} \cup \{\pm\infty\}
> $$
> In particolare:
> $$
> \begin{align}
> \{a_n\}_{n \in \mathbb{N}} \text{ crescente} &\implies \lim_{n \to +\infty} a_n = \sup_{n \in \mathbb{N}} \{a_n\} \\
> \{a_n\}_{n \in \mathbb{N}} \text{ decrescente} &\implies \lim_{n \to +\infty} a_n = \inf_{n \in \mathbb{N}} \{a_n\}
> \end{align}
> $$

> [!note] Monotonia definitiva
> Il teorema mantiene piena validità anche se la successione è solo **definitivamente monòtona**, ossia se la condizione di monotonia è verificata per tutti gli indici $n \geq n_0$, con $n_0 \in \mathbb{N}$ fissato.

> [!quote]- Dimostrazione
> Si consideri il caso di una successione $\{a_n\}$ **monòtona crescente**. (La dimostrazione per successioni decrescenti si conduce in modo perfettamente speculare, sostituendo l'estremo superiore con l'estremo inferiore e invertendo le disuguaglianze).
>
> Distinguiamo due casi:
>
> **Caso 1: $\{a_n\}$ è limitata superiormente**
> Se l'insieme dei valori $\{a_n : n \in \mathbb{N}\}$ è limitato superiormente, per l'assioma di completezza dei numeri reali esiste finito l'estremo superiore:
> $$
> L := \sup_{n \in \mathbb{N}} \{a_n\} \in \mathbb{R}
> $$
> Essendo $L$ il minimo dei maggioranti:
> 1. $a_n \leq L$ per ogni $n \in \mathbb{N}$;
> 2. Fissato arbitrariamente $\varepsilon > 0$, la quantità $L - \varepsilon$ non è più un maggiorante per $\{a_n\}$. Pertanto:
>    $$
>    \exists n_0 \in \mathbb{N} : a_{n_0} > L - \varepsilon
>    $$
> Essendo la successione monòtona crescente per ipotesi:
> $$
> \forall n \geq n_0 \implies a_n \geq a_{n_0} > L - \varepsilon
> $$
> Combinando con la maggiorazione universale $a_n \leq L < L + \varepsilon$, si ottiene:
> $$
> \forall \varepsilon > 0, \; \exists n_0 \in \mathbb{N} : \forall n \geq n_0 \implies L - \varepsilon < a_n \leq L < L + \varepsilon
> $$
> il che equivale a $|a_n - L| < \varepsilon$ per ogni $n \geq n_0$.
> Per definizione di limite finito, ne consegue:
> $$
> \lim_{n \to +\infty} a_n = L = \sup_{n \in \mathbb{N}} \{a_n\}
> $$
>
> **Caso 2: $\{a_n\}$ è illimitata superiormente**
> Se $\{a_n\}$ è illimitata superiormente, per definizione di estremo superiore in $\overline{\mathbb{R}}$ si ha $\sup_{n \in \mathbb{N}} \{a_n\} = +\infty$.
> Di conseguenza, l'insieme non ammette alcun maggiorante reale:
> $$
> \forall M > 0, \; \exists n_0 \in \mathbb{N} : a_{n_0} > M
> $$
> Essendo $\{a_n\}$ monòtona crescente:
> $$
> \forall n \geq n_0 \implies a_n \geq a_{n_0} > M
> $$
> Per definizione di limite infinito divergente, ciò dimostra che:
> $$
> \lim_{n \to +\infty} a_n = +\infty = \sup_{n \in \mathbb{N}} \{a_n\}
> $$
> $\blacksquare$
>
## 4.3. Proprietà di convergenza e limitatezza

> [!note] Osservazioni complementari
> 1. **Estensione a funzioni su $\mathbb{R}$:** Sussiste un teorema del tutto analogo per funzioni reali monotone $f: \mathbb{R} \to \mathbb{R}$: se $f$ è monotona crescente in un intorno di $+\infty$, allora $\lim_{x \to +\infty} f(x) = \sup f(x)$.
> 2. **Monotonia definitiva:** Se $\{a_n\}$ è monotona crescente soltanto per $n \geq n_0$, il limite coincide con l'estremo superiore dei termini della coda:
>    $$
>    \lim_{n \to +\infty} a_n = \sup \{a_n : n \geq n_0\}
>    $$

> [!proposition] Limitatezza delle successioni convergenti
> Se una successione $\{a_n\}_{n \in \mathbb{N}}$ ammette limite finito $\ell \in \mathbb{R}$, allora essa è **limitata**:
> $$
> \exists M > 0 : |a_n| \leq M, \quad \forall n \in \mathbb{N}
> $$

> [!quote]- Dimostrazione
> Sia $\lim_{n \to +\infty} a_n = \ell \in \mathbb{R}$.
> Scegliendo $\varepsilon = 1$ nella definizione di limite, esiste un indice $n_0 \in \mathbb{N}$ tale che:
> $$
> \forall n \geq n_0 \implies |a_n - \ell| < 1 \iff \ell - 1 < a_n < \ell + 1
> $$
> Dunque tutti gli infiniti termini della successione con indice $n \geq n_0$ appartengono all'intervallo limitato $(\ell - 1, \ell + 1)$, per cui $|a_n| \leq \max\{|\ell - 1|, |\ell + 1|\}$.
> I termini rimanenti costituiscono l'insieme finito $\{a_1, a_2, \dots, a_{n_0-1}\}$, che in quanto finito ammette massimo e minimo.
> Ponendo:
> $$
> M := \max\left\{ |\ell - 1|, |\ell + 1|, |a_1|, |a_2|, \dots, |a_{n_0-1}| \right\}
> $$
> si ottiene $|a_n| \leq M$ per ogni $n \in \mathbb{N}$, dimostrando che la successione è limitata. $\blacksquare$

> [!warning] Falsità del viceversa
> Il viceversa della proposizione precedente **non vale**: una successione limitata non è necessariamente convergente.
> **Controesempio:**
> $$
> a_n = (-1)^n
> $$
> La successione oscilla indefinitamente tra $-1$ e $1$. Essa è chiaramente limitata ($|a_n| = 1 \leq 1, \forall n$), ma non ammette limite per $n \to +\infty$.

> [!proposition] Criterio di convergenza per successioni monotone
> Se $\{a_n\}_{n \in \mathbb{N}}$ è una successione monòtona (ad es. crescente), allora:
> $$
> \lim_{n \to +\infty} a_n = \ell \in \mathbb{R} \iff \{a_n\} \text{ è limitata superiormente}
> $$
> Una successione monòtona è quindi convergente se e solo se è limitata.
>
## 4.4. Il numero di Nepero $e$

Si applica la teoria delle successioni monotone per introdurre rigorosamente la costante fondamentale dell'analisi: il numero $e$.

> [!theorem] Definizione del numero di Nepero $e$
> Si consideri la successione a valori reali:
> $$
> a_n := \left( 1 + \frac{1}{n} \right)^n, \quad n \in \mathbb{N}
> $$
> Allora:
> 1. La successione $\{a_n\}_{n \in \mathbb{N}}$ è **strettamente crescente**;
> 2. La successione $\{a_n\}_{n \in \mathbb{N}}$ è **limitata superiormente**.
> 
> Per il teorema sulle successioni monotone, $\{a_n\}$ ammette limite finito. Tale limite viene definito come il **numero di Nepero** $e$:
> $$
> \lim_{n \to +\infty} \left( 1 + \frac{1}{n} \right)^n = e \in (2, 3)
> $$
> con $e \approx 2.718281828459\dots$

> [!note] Rappresentazione in serie del numero $e$
> Esistono definizioni analitiche equivalenti del numero $e$. In particolare si dimostra che:
> $$
> e = \lim_{n \to +\infty} \sum_{k=0}^n \frac{1}{k!} = 1 + 1 + \frac{1}{2!} + \frac{1}{3!} + \dots
> $$
> formula derivata dallo sviluppo in serie di Taylor della funzione esponenziale $e^x = \sum_{k=0}^\infty \frac{x^k}{k!}$ valutata in $x = 1$.

> [!quote]- Dimostrazione
> La dimostrazione si articola in due parti: la verifica della stretta crescenza (punto a) e la verifica della limitatezza (punto b).
>
> **Parte (a): $\{a_n\}$ è strettamente crescente**
> Per mostrare che la successione è strettamente crescente, è sufficiente verificare che per ogni $n \geq 2$ il rapporto tra due termini consecutivi sia strettamente maggiore di $1$:
> $$
> \frac{a_n}{a_{n-1}} > 1 \quad \forall n \geq 2
> $$
> Esplicitando l'espressione di $a_n$ e $a_{n-1}$:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left( 1 + \frac{1}{n} \right)^n}{\left( 1 + \frac{1}{n-1} \right)^{n-1}}
> $$
> Riconducendo a denominatore comune all'interno delle parentesi:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left( \frac{n+1}{n} \right)^n}{\left( \frac{n}{n-1} \right)^{n-1}}
> $$
> Separando le potenze al denominatore mediante la proprietà $\left(\frac{n}{n-1}\right)^{n-1} = \left(\frac{n}{n-1}\right)^n \left(\frac{n}{n-1}\right)^{-1}$:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left( \frac{n+1}{n} \right)^n}{\left( \frac{n}{n-1} \right)^n \left( \frac{n}{n-1} \right)^{-1}}
> $$
> Raccogliendo la potenza $n$-esima a numeratore e invertendo il fattore al denominatore:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left[ \frac{n+1}{n} \cdot \frac{n-1}{n} \right]^n}{\frac{n-1}{n}} = \frac{\left[ \frac{(n+1)(n-1)}{n^2} \right]^n}{\frac{n-1}{n}}
> $$
> Sviluppando il prodotto notevole $(n+1)(n-1) = n^2 - 1$:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left( \frac{n^2 - 1}{n^2} \right)^n}{\frac{n-1}{n}} = \frac{\left( 1 - \frac{1}{n^2} \right)^n}{\frac{n-1}{n}}
> $$
>
> Per stimare il numeratore si richiama la **disuguaglianza di Bernoulli**:
> $$
> (1 + x)^n \geq 1 + nx \quad \forall x \geq -1, \; \forall n \in \mathbb{N}
> $$
> (dimostrata per induzione in Esercitazione 1).
>
> Ponendo $x = -\frac{1}{n^2}$, osserviamo che per ogni $n \geq 2$ si ha:
> $$
> x = -\frac{1}{n^2} \geq -\frac{1}{4} > -1
> $$
> La disuguaglianza di Bernoulli è dunque pienamente applicabile:
> $$
> \left( 1 - \frac{1}{n^2} \right)^n \geq 1 + n \left( -\frac{1}{n^2} \right) = 1 - \frac{1}{n} = \frac{n-1}{n}
> $$
> Sostituendo tale minorazione nel rapporto:
> $$
> \frac{a_n}{a_{n-1}} = \frac{\left( 1 - \frac{1}{n^2} \right)^n}{\frac{n-1}{n}} \geq \frac{\frac{n-1}{n}}{\frac{n-1}{n}} = 1
> $$
> Poiché $x = -\frac{1}{n^2} \ne 0$ e $n \geq 2$, la disuguaglianza di Bernoulli vale in senso stretto:
> $$
> \frac{a_n}{a_{n-1}} > 1 \implies a_n > a_{n-1} \quad \forall n \geq 2
> $$
> Pertanto la successione $\{a_n\}_{n \in \mathbb{N}}$ è **strettamente crescente**.
>
> In virtù del teorema sulle successioni monotone, $\{a_n\}$ ammette limite:
> $$
> \lim_{n \to +\infty} a_n = \ell \in \mathbb{R} \cup \{+\infty\}
> $$
> Tale limite è finito ($\ell \in \mathbb{R}$) se e solo se la successione è limitata superiormente.
>
> **Parte (b): $\{a_n\}$ è limitata superiormente**
> Per dimostrare la limitatezza della successione $\{a_n\}$, si introduce la successione ausiliaria:
> $$
> b_n := \left( 1 + \frac{1}{n} \right)^{n+1}, \quad n \in \mathbb{N}
> $$
> $\blacksquare$
>
Si riprende la dimostrazione della convergenza della successione a termini positivi:
$$
a_n := \left(1 + \frac{1}{n}\right)^n, \quad n \in \mathbb{N}
$$
Avendo già verificato che la successione $\{a_n\}_{n \ge 1}$ è strettamente crescente (ovvero $a_n \ge a_{n-1}$ per ogni $n \ge 2$), per il teorema sulle successioni monotone essa ammette limite $\ell \in \mathbb{R} \cup \{+\infty\}$. Tale limite è finito se e solo se $\{a_n\}$ è superiormente limitata.

**Dimostrazione della limitatezza di $\{a_n\}$**

Per dimostrare la limitatezza, si introduce la successione ausiliaria:
$$
b_n := \left(1 + \frac{1}{n}\right)^{n+1}, \quad n \in \mathbb{N}
$$

> [!quote]- Dimostrazione
> Si valuta il rapporto tra due termini consecutivi di $b_n$ per ogni $n \ge 2$:
> $$
> \begin{align}
> \frac{b_n}{b_{n-1}} &= \frac{\left(1 + \frac{1}{n}\right)^{n+1}}{\left(1 + \frac{1}{n-1}\right)^n} = \frac{\left(\frac{n+1}{n}\right)^{n+1}}{\left(\frac{n}{n-1}\right)^n} \\
> &= \frac{\left(\frac{n+1}{n}\right)^n \left(\frac{n+1}{n}\right)}{\left(\frac{n}{n-1}\right)^n} = \frac{\frac{n+1}{n}}{\left[\frac{n}{n-1} \cdot \frac{n}{n+1}\right]^n} \\
> &= \frac{\frac{n+1}{n}}{\left[\frac{n^2}{(n-1)(n+1)}\right]^n} = \frac{\frac{n+1}{n}}{\left[\frac{n^2}{n^2 - 1}\right]^n} \\
> &= \frac{\frac{n+1}{n}}{\left[\frac{n^2 - 1 + 1}{n^2 - 1}\right]^n} = \frac{\frac{n+1}{n}}{\left[1 + \frac{1}{n^2 - 1}\right]^n}
> \end{align}
> $$
> Si applica ora la disequazione di Bernoulli alla quantità a denominatore:
> $$
> (1 + x)^n \ge 1 + n x, \quad \forall x > -1, \; \forall n \in \mathbb{N}
> $$
> Ponendo $x = \frac{1}{n^2 - 1} > 0 > -1$ (valido per ogni $n \ge 2$), si ottiene:
> $$
> \left(1 + \frac{1}{n^2 - 1}\right)^n \ge 1 + \frac{n}{n^2 - 1}
> $$
> Tuttavia, essendo $n^2 - 1 < n^2$, si ha la disuguaglianza stretta:
> $$
> 1 + \frac{n}{n^2 - 1} > 1 + \frac{n}{n^2} = 1 + \frac{1}{n} = \frac{n+1}{n}
> $$
> Pertanto il denominatore soddisfa:
> $$
> \left[1 + \frac{1}{n^2 - 1}\right]^n > \frac{n+1}{n}
> $$
> Ne consegue che il rapporto $\frac{b_n}{b_{n-1}}$ è strettamente minore di $1$:
> $$
> \frac{b_n}{b_{n-1}} = \frac{\frac{n+1}{n}}{\left[1 + \frac{1}{n^2 - 1}\right]^n} < \frac{\frac{n+1}{n}}{\frac{n+1}{n}} = 1, \quad \forall n \ge 2
> $$
> Questo dimostra che la successione ausiliaria $\{b_n\}_{n \in \mathbb{N}}$ è strettamente decrescente:
> $$
> b_n < b_{n-1}, \quad \forall n \ge 2
> $$
> Si confrontano ora i termini generali delle due successioni:
> $$
> a_n = \left(1 + \frac{1}{n}\right)^n < \left(1 + \frac{1}{n}\right)^{n+1} = b_n \quad \left(\text{in quanto } 1 + \frac{1}{n} > 1\right)
> $$
> Dalla decrescenza di $\{b_n\}$ segue che, fissato un qualunque indice $n_0 \in \mathbb{N}$, per ogni $n \ge n_0$ vale:
> $$
> a_n < b_n \le b_{n_0}
> $$
> Valutando esplicitamente $b_{n_0}$ per $n_0 = 6$:
> $$
> b_6 = \left(1 + \frac{1}{6}\right)^7 = \left(\frac{7}{6}\right)^7 = \frac{823543}{279936} \approx 2.7907 < 3
> $$
> Risulta quindi che:
> $$
> a_n < 3, \quad \forall n \in \mathbb{N}
> $$
> La successione $\{a_n\}$ è dunque superiormente limitata da $3$. $\blacksquare$
>
**Conclusione: definizione del numero di Nepero $e$**

Poiché $\{a_n\}$ è monotona crescente e superiormente limitata, essa ammette un limite finito $\ell \in \mathbb{R}$.
Inoltre:
$$
\begin{cases}
a_n < 3, & \forall n \in \mathbb{N} \\
a_n > a_1 = \left(1 + \frac{1}{1}\right)^1 = 2, & \forall n \ge 2
\end{cases}
\implies 2 < a_n < 3, \quad \forall n \ge 2
$$
Passando al limite per $n \to +\infty$:
$$
\lim_{n \to +\infty} a_n = \ell \in (2, 3)
$$

> [!definition] Numero di Nepero $e$
> Si definisce **numero di Nepero** (o costante di Eulero) il limite fondamentale della successione $a_n$:
> $$
> e := \lim_{n \to +\infty} \left(1 + \frac{1}{n}\right)^n \approx 2.718281828459\dots
> $$

> [!theorem] Teorema del limite esponenziale generalizzato
> Sia $\{x_n\}_{n \in \mathbb{N}}$ una qualunque successione reale divergente, ovvero tale che:
> $$
> \lim_{n \to +\infty} x_n = +\infty \quad \lor \quad \lim_{n \to +\infty} x_n = -\infty
> $$
> Allora:
> $$
> \lim_{n \to +\infty} \left(1 + \frac{1}{x_n}\right)^{x_n} = e
> $$

> [!note] Metodo di dimostrazione
> La dimostrazione procede intrappolando la parte intera $[x_n]$ tra potenze successive e sfruttando il teorema del confronto (dei due carabinieri), unitamente al cambio di variabile $y_n = -x_n$ per il caso $-\infty$.
>
## 4.5. Connessione tra successioni e funzioni: Teorema Ponte

Il legame tra il calcolo dei limiti per variabili continue e variabili discrete è sancito dal seguente fondamentale teorema di equivalenza.

> [!theorem] Teorema ponte (Caratterizzazione sequenziale dei limiti di funzioni)
> Sia $f: X \subseteq \mathbb{R} \to \mathbb{R}$ e sia $x_0 \in \mathbb{R} \cup \{\pm\infty\}$ un punto di accumulazione per $X$. Allora:
> $$
> \lim_{x \to x_0} f(x) = \ell \in \mathbb{R} \cup \{\pm\infty\}
> $$
> se e solo se per ogni successione $\{x_n\}_{n \in \mathbb{N}} \subseteq X \setminus \{x_0\}$ tale che:
> $$
> \lim_{n \to +\infty} x_n = x_0
> $$
> si ha che la successione immagine converge al medesimo valore:
> $$
> \lim_{n \to +\infty} f(x_n) = \ell
> $$
>
```
   y ^
     |           f(x)
   ℓ |--------*-------
     |       /| \
     |      / |  \
     |     /  |   \
     |    /   |    \
   0 +--------+---------> x
             x0
      xn ----> <---- xn
```

> [!note] Significato operativo del Teorema ponte
> 1. **Deduzione di limiti di funzioni:** Consente di trasferire i risultati ottenuti sulle successioni (e.g. limiti notevoli) direttamente alle funzioni a variabile reale continua.
> 2. **Criterio di non esistenza del limite:** Se si individuano due successioni $\{x_n\}$ e $\{y_n\}$, entrambe convergenti a $x_0$, tali che $f(x_n) \to \ell_1$ e $f(y_n) \to \ell_2$ con $\ell_1 \ne \ell_2$, allora il limite $\lim_{x \to x_0} f(x)$ non esiste.
>
Applicando il Teorema ponte al limite notevole della successione generalizzata si ottiene il corrispondente corollario per funzioni continue.

> [!corollary] Limite notevole esponenziale all'infinito
> $$
> \lim_{x \to \pm\infty} \left(1 + \frac{1}{x}\right)^x = e
> $$
>
Da questo risultato discendono a cascata i principali limiti notevoli dell'analisi infinitesimale.

### Limite con parametro $a \in \mathbb{R}$
$$
\lim_{x \to \pm\infty} \left(1 + \frac{a}{x}\right)^x = e^a, \quad \forall a \in \mathbb{R}
$$

> [!quote]- Dimostrazione
> Se $a = 0$, il limite è banalmente $\lim_{x \to \pm\infty} 1^x = 1 = e^0$.
> Sia ora $a \ne 0$. Effettuando la sostituzione:
> $$
> t := \frac{x}{a} \iff x = a t
> $$
> Quando $x \to \pm\infty$, anche $t \to \pm\infty$. Riscrivendo la funzione:
> $$
> \left(1 + \frac{a}{x}\right)^x = \left(1 + \frac{1}{t}\right)^{t a} = \left[\left(1 + \frac{1}{t}\right)^t\right]^a
> $$
> Passando al limite e sfruttando la continuità della funzione potenza $y \mapsto y^a$:
> $$
> \lim_{x \to \pm\infty} \left(1 + \frac{a}{x}\right)^x = \lim_{t \to \pm\infty} \left[\left(1 + \frac{1}{t}\right)^t\right]^a = \left[\lim_{t \to \pm\infty} \left(1 + \frac{1}{t}\right)^t\right]^a = e^a
> $$
> $\blacksquare$
>
### Limite per $x \to 0$
$$
\lim_{x \to 0} (1 + a x)^{\frac{1}{x}} = e^a, \quad \forall a \in \mathbb{R}
$$

> [!quote]- Dimostrazione
> Ponendo la sostituzione $t := \frac{1}{x}$, per $x \to 0$ si ha $t \to \pm\infty$.
> Sostituendo nell'espressione:
> $$
> (1 + a x)^{\frac{1}{x}} = \left(1 + \frac{a}{t}\right)^t
> $$
> Passando al limite:
> $$
> \lim_{x \to 0} (1 + a x)^{\frac{1}{x}} = \lim_{t \to \pm\infty} \left(1 + \frac{a}{t}\right)^t = e^a
> $$
> $\blacksquare$
>
### Limite notevole del logaritmo naturale
$$
\lim_{x \to 0} \frac{\log(1 + x)}{x} = 1
$$

> [!quote]- Dimostrazione
> Sfruttando le proprietà dei logaritmi, il fattore $\frac{1}{x}$ viene portato ad esponente dell'argomento:
> $$
> \frac{\log(1 + x)}{x} = \frac{1}{x} \log(1 + x) = \log\left[(1 + x)^{\frac{1}{x}}\right]
> $$
> Grazie alla continuità della funzione logaritmo naturale, è possibile scambiare il limite con il logaritmo:
> $$
> \lim_{x \to 0} \frac{\log(1 + x)}{x} = \lim_{x \to 0} \log\left[(1 + x)^{\frac{1}{x}}\right] = \log\left(\lim_{x \to 0} (1 + x)^{\frac{1}{x}}\right) = \log(e) = 1
> $$
> $\blacksquare$
>
### Limite notevole dell'esponenziale a base generica
$$
\lim_{x \to 0} \frac{a^x - 1}{x} = \log a, \quad \forall a > 0
$$

> [!quote]- Dimostrazione
> Se $a = 1$, il numeratore è identicamente nullo e il limite vale $0 = \log 1$.
> Sia $a > 0$ con $a \ne 1$. Si effettua il cambio di variabile:
> $$
> t := a^x - 1 \iff a^x = 1 + t \iff x = \log_a(1 + t) = \frac{\log(1 + t)}{\log a}
> $$
> Per $x \to 0$, $t = a^x - 1 \to 0$. Sostituendo:
> $$
> \frac{a^x - 1}{x} = \frac{t}{\frac{\log(1 + t)}{\log a}} = \log a \cdot \frac{t}{\log(1 + t)} = \log a \cdot \frac{1}{\frac{\log(1 + t)}{t}}
> $$
> Passando al limite per $t \to 0$:
> $$
> \lim_{x \to 0} \frac{a^x - 1}{x} = \lim_{t \to 0} \left[ \log a \cdot \frac{1}{\frac{\log(1 + t)}{t}} \right] = \log a \cdot \frac{1}{1} = \log a
> $$
> In particolare, per $a = e$:
> $$
> \lim_{x \to 0} \frac{e^x - 1}{x} = \log e = 1
> $$
> $\blacksquare$
>
### Limite notevole della potenza ad esponente reale
$$
\lim_{x \to 0} \frac{(1 + x)^a - 1}{x} = a, \quad \forall a \in \mathbb{R}
$$

> [!quote]- Dimostrazione
> Sfruttando lo sviluppo asintotico di Taylor al primo ordine per $x \to 0$:
> $$
> (1 + x)^a = 1 + a x + o(x)
> $$
> Sostituendo:
> $$
> \lim_{x \to 0} \frac{(1 + x)^a - 1}{x} = \lim_{x \to 0} \frac{1 + a x + o(x) - 1}{x} = \lim_{x \to 0} \left(a + \frac{o(x)}{x}\right) = a + 0 = a
> $$
> $\blacksquare$

> [!note] Quadro sinottico degli sviluppi al primo ordine ($x \to 0$)
> I limiti precedenti possono essere riscritti in forma differenziale/asintotica al primo ordine come:
> $$
> \begin{align}
> e^x &= 1 + x + o(x) \\
> a^x &= 1 + x \log a + o(x) \quad (a > 0) \\
> \log(1 + x) &= x + o(x) \\
> (1 + x)^a &= 1 + a x + o(x) \quad (a \in \mathbb{R})
> \end{align}
> $$
>
## 4.6. Scala di infiniti per successioni

Nel calcolo dei limiti di successioni per $n \to +\infty$, le diverse classi di successioni divergenti presentano tassi di crescita asintotica fortemente differenziati.

> [!theorem] Teoremi di confronto asintotico tra infiniti
> Per $n \to +\infty$ valgono i seguenti limiti notevoli:
> 
> 1. **Logaritmo vs Potenza:**
>    $$
>    \lim_{n \to +\infty} \frac{[\log_b n]^c}{n^a} = 0 \quad \forall a > 0, \; b > 0, \; b \ne 1, \; c \in \mathbb{R}
>    $$
>    *(Banalmente nullo per $c \le 0$; non banale per $c > 0$)*.
> 
> 2. **Potenza vs Esponenziale:**
>    $$
>    \lim_{n \to +\infty} \frac{n^a}{b^n} = 0 \quad \forall a \in \mathbb{R}, \; b > 1
>    $$
>    *(Banalmente nullo per $a \le 0$; non banale per $a > 0$)*.
> 
> 3. **Esponenziale vs Fattoriale:**
>    $$
>    \lim_{n \to +\infty} \frac{b^n}{n!} = 0 \quad \forall b > 1
>    $$
> 
> 4. **Fattoriale vs Potenza ad esponente variabile $n^n$:**
>    $$
>    \lim_{n \to +\infty} \frac{n!}{n^n} = 0
>    $$

> [!definition] Gerarchia asintotica della scala di infiniti
> Riassumendo, per $n \to +\infty$ con parametri $a > 0, b > 1, c > 0$:
> $$
> [\log_b n]^c \ll n^a \ll b^n \ll n! \ll n^n
> $$

> [!note] Analogo continuo
> Per i primi due limiti esiste il perfetto analogo continuo per $x \to +\infty$:
> $$
> \lim_{x \to +\infty} \frac{(\log_b x)^c}{x^a} = 0, \qquad \lim_{x \to +\infty} \frac{x^a}{b^x} = 0
> $$
>
## 4.7. Sottosuccessioni, classe limite e Teorema di Bolzano-Weierstrass

> [!definition] Sottosuccessione estratta
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione a valori reali (o in uno spazio metrico).
> Si definisce **sottosuccessione estratta** da $\{a_n\}$ una successione $\{b_n\}_{n \in \mathbb{N}}$ ottenuta componendo $\{a_n\}$ con una successione $\{k_n\}_{n \in \mathbb{N}}$ strettamente crescente di numeri interi positivi:
> $$
> b_n = a_{k_n}
> $$
> con:
> $$
> k_n \in \mathbb{N}, \quad k_1 < k_2 < k_3 < \dots < k_n < k_{n+1} < \dots \implies k_n \ge n, \quad \forall n \in \mathbb{N}
> $$

> [!theorem] Teorema del limite delle estratte
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione. Allora:
> $$
> \lim_{n \to +\infty} a_n = \ell \in \mathbb{R} \cup \{\pm\infty\} \iff \lim_{n \to +\infty} a_{k_n} = \ell, \quad \forall \{a_{k_n}\} \text{ sottosuccessione estratta da } \{a_n\}
> $$

> [!definition] Valore limite e Classe limite
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione reale.
> - Si dice che un elemento $\ell \in \mathbb{R} \cup \{\pm\infty\}$ è un **valore limite** per $\{a_n\}$ se esiste una sottosuccessione estratta $\{a_{k_n}\}$ tale che:
>   $$
>   \lim_{n \to +\infty} a_{k_n} = \ell
>   $$
> - L'insieme formato da tutti i possibili valori limite della successione $\{a_n\}$ prende il nome di **classe limite** di $\{a_n\}$, indicata con $\mathcal{C}(\{a_n\})$.

> [!corollary] Classe limite di successioni convergenti
> Se una successione $\{a_n\}$ ammette limite $\lim_{n \to +\infty} a_n = \ell$, allora la sua classe limite si riduce a un unico elemento:
> $$
> \mathcal{C}(\{a_n\}) = \{\ell\}
> $$

> [!example] Esempi notevoli di classi limite

> [!example] Successione oscillante discreta
> Si consideri la successione $a_n = (-1)^n$, per $n \in \mathbb{N}$.
> Estraendo i termini pari e dispari:
> $$
> \begin{align}
> a_{2n} &= (-1)^{2n} = 1 \implies \lim_{n \to +\infty} a_{2n} = 1 \\
> a_{2n+1} &= (-1)^{2n+1} = -1 \implies \lim_{n \to +\infty} a_{2n+1} = -1
> \end{align}
> $$
> La classe limite è pertanto finita e discreta:
> $$
> \mathcal{C}((-1)^n) = \{-1, 1\}
> $$

> [!example] Successione oscillante divergente
> Si consideri $a_n = (-2)^n$, per $n \in \mathbb{N}$.
> I sottotermini pari e dispari divergono con segni opposti:
> $$
> \begin{align}
> a_{2n} &= (-2)^{2n} = 2^{2n} \implies \lim_{n \to +\infty} a_{2n} = +\infty \\
> a_{2n+1} &= (-2)^{2n+1} = -2^{2n+1} \implies \lim_{n \to +\infty} a_{2n+1} = -\infty
> \end{align}
> $$
> La classe limite è:
> $$
> \mathcal{C}((-2)^n) = \{-\infty, +\infty\}
> $$

> [!example] Successione dei numeri razionali ordinati
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una successione biunivoca contenente tutti i numeri razionali di $\mathbb{Q}$ (costruita mediante il procedimento di diagonalizzazione di Cantor che dimostra la numerabilità di $\mathbb{Q}$, cfr. #1.02).
> Per la proprietà di densità di $\mathbb{Q}$ in $\mathbb{R}$:
> $$
> \forall \ell \in \mathbb{R}, \; \forall \varepsilon > 0, \quad (\ell - \varepsilon, \ell + \varepsilon) \cap \mathbb{Q} \text{ contiene infiniti elementi}
> $$
> E.g., per $\ell = 2$ ed $\varepsilon = \frac{1}{2}$, nell'intorno $\left(\frac{3}{2}, \frac{5}{2}\right)$ cadono infiniti termini della successione $\{a_n\}$ (quali $\frac{7}{4}, \frac{9}{8}, \frac{17}{16}, \dots$).
> Dunque ogni punto reale $\ell \in \mathbb{R}$, nonché $\pm\infty$, è punto di accumulazione per la successione:
> $$
> \forall \ell \in \mathbb{R} \cup \{\pm\infty\}, \; \exists \{a_{k_n}\} \subseteq \{a_n\} : \lim_{n \to +\infty} a_{k_n} = \ell
> $$
> La classe limite coincide con l'intera retta reale estesa:
> $$
> \mathcal{C}(\{a_n\}) = \mathbb{R} \cup \{\pm\infty\}
> $$

> [!theorem] Teorema (Proprietà della classe limite)
> Sia $\{a_n\}_{n \in \mathbb{N}}$ una qualunque successione reale. Allora:
> 1. La sua classe limite **non è mai vuota**:
>    $$
>    \mathcal{C}(\{a_n\}) \ne \emptyset
>    $$
> 2. La classe limite $\mathcal{C}(\{a_n\}) \subseteq \mathbb{R} \cup \{\pm\infty\}$ è un **insieme chiuso**, ovvero contiene tutti i propri punti di accumulazione: ogni punto di accumulazione di elementi di $\mathcal{C}(\{a_n\})$ è a sua volta un valore limite della successione $\{a_n\}$.
>
## 4.8. Limite superiore e limite inferiore ($\limsup$ e $\liminf$)

La non-vacuità e la chiusura della classe limite garantiscono l'esistenza di un estremo superiore ed inferiore appartenenti alla classe stessa (anche se estesi ad infinito).

> [!definition] Limite superiore e Limite inferiore
> Sia $\{a_n\}_{n \in \mathbb{N}} \subset \mathbb{R}$ una successione reale.
> - Si definisce **limite superiore** di $\{a_n\}$ il massimo elemento della sua classe limite:
>   $$
>   \limsup_{n \to +\infty} a_n := \overline{\lim_{n \to +\infty}} a_n = \max \mathcal{C}(\{a_n\}) \in \mathbb{R} \cup \{\pm\infty\}
>   $$
> - Si definisce **limite inferiore** di $\{a_n\}$ il minimo elemento della sua classe limite:
>   $$
>   \liminf_{n \to +\infty} a_n := \mathbf{\lim_{n \to +\infty}} a_n = \min \mathcal{C}(\{a_n\}) \in \mathbb{R} \cup \{\pm\infty\}
>   $$

> [!example] Esempi
> - Per $a_n = (-1)^n$:
>   $$
>   \limsup_{n \to +\infty} (-1)^n = 1, \qquad \liminf_{n \to +\infty} (-1)^n = -1
>   $$
> - Per $a_n = (-2)^n$:
>   $$
>   \limsup_{n \to +\infty} (-2)^n = +\infty, \qquad \liminf_{n \to +\infty} (-2)^n = -\infty
>   $$
>
>
## 4.9. Successioni in spazi metrici e compattezza sequenziale

Le nozioni di limite e convergenza si generalizzano a qualsiasi spazio metrico astratto $(X, d)$.

> [!definition] Successione in uno spazio metrico
> Sia $(X, d)$ uno spazio metrico. Una **successione a valori in $X$** è una funzione:
> $$
> a: \mathbb{N} \to X, \quad n \mapsto a_n
> $$
> indicata con $\{a_n\}_{n \in \mathbb{N}} \subseteq X$.

> [!note] Accumulazione e sottosuccessioni in $\mathbb{R}^m$
> Sia $X = \mathbb{R}^m$ con $m \in \mathbb{N}$. Dire che una successione di vettori $\{\mathbf{a}_n\}_{n \in \mathbb{N}}$ ammette un punto di accumulazione $\mathbf{\ell} \in \mathbb{R}^m$ equivale ad affermare che esiste una sottosuccessione estratta $\{\mathbf{a}_{k_n}\}$ convergente ad $\mathbf{\ell}$:
> $$
> \lim_{n \to +\infty} \mathbf{a}_{k_n} = \mathbf{\ell}
> $$

> [!definition] Insieme sequenzialmente compatto (Compatto per successioni)
> Sia $(X, d)$ uno spazio metrico e sia $K \subseteq X$.
> $K$ si dice **compatto per successioni** (o **sequenzialmente compatto**) se da ogni successione $\{a_n\}_{n \in \mathbb{N}} \subseteq K$ è possibile estrarre una sottosuccessione $\{a_{k_n}\}$ convergente a un elemento $\ell \in K$:
> $$
> \forall \{a_n\} \subseteq K, \; \exists \{a_{k_n}\} \subseteq \{a_n\} \land \exists \ell \in K : \lim_{n \to +\infty} a_{k_n} = \ell
> $$

> [!theorem] Teorema di equivalenza della compattezza negli spazi metrici
> Sia $(X, d)$ uno spazio metrico e sia $K \subseteq X$. Allora:
> $$
> K \text{ è compatto (per ricoprimenti aperti)} \iff K \text{ è compatto per successioni}
> $$

> [!note] Legame con il Teorema di Bolzano-Weierstrass
> In virtù di tale equivalenza, in $\mathbb{R}^m$ ogni sottoinsieme chiuso e limitato è compatto, e pertanto per ogni successione definita al suo interno esiste una sottosuccessione convergente ad un punto dell'insieme stesso.
>
## 4.10. Successioni di Cauchy e completezza metrica

La nozione di successione di Cauchy consente di caratterizzare la convergenza intrinseca di una successione senza dover presupporre a priori la conoscenza del suo limite.

> [!definition] Successione di Cauchy
> Sia $(X, d)$ uno spazio metrico e sia $\{x_n\}_{n \in \mathbb{N}} \subseteq X$.
> Si dice che $\{x_n\}$ è una **successione di Cauchy** se i suoi termini si avvicinano arbitrariamente tra loro all'infinito:
> $$
> \forall \varepsilon > 0, \; \exists n_0 \in \mathbb{N} : d(x_n, x_m) \le \varepsilon, \quad \forall n, m \ge n_0
> $$
>
Si richiama la definizione di convergenza:
$$
\lim_{n \to +\infty} x_n = \ell \in X \iff \forall \varepsilon > 0, \; \exists n_0 \in \mathbb{N} : d(x_n, \ell) \le \varepsilon, \quad \forall n \ge n_0
$$

> [!lemma] Lemma: Convergenza implica Cauchy
> Sia $(X, d)$ uno spazio metrico e sia $\{a_n\}_{n \in \mathbb{N}} \subseteq X$. Se $\{a_n\}$ converge a un limite $\ell \in X$, allora $\{a_n\}$ è una successione di Cauchy in $X$.

> [!quote]- Dimostrazione
> Poiché per ipotesi $\{a_n\}$ converge ad $\ell \in X$, per definizione di limite:
> $$
> \forall \varepsilon > 0, \; \exists n_0 \in \mathbb{N} : d(a_n, \ell) \le \varepsilon, \quad \forall n \ge n_0
> $$
> Siano ora $n, m \ge n_0$. Applicando la disuguaglianza triangolare della funzione distanza $d$:
> $$
> d(a_n, a_m) \le d(a_n, \ell) + d(\ell, a_m) = d(a_n, \ell) + d(a_m, \ell) \le \varepsilon + \varepsilon = 2\varepsilon
> $$
> Data l'arbitrarietà di $\varepsilon > 0$, la distanza reciproca $d(a_n, a_m)$ può essere resa arbitrariamente piccola. Di conseguenza la successione $\{a_n\}$ è di Cauchy in $X$. $\blacksquare$

> [!warning] Il viceversa non vale in generale
> In un generico spazio metrico non è vero che ogni successione di Cauchy sia convergente.

> [!example] Controesempio fondamentale nello spazio razionale $\mathbb{Q}$
> Si consideri lo spazio metrico $(\mathbb{Q}, d)$ dotato della metrica euclidea standard $d(x, y) = |x - y|$.
> Si consideri la successione delle approssimazioni razionali per troncamento decimale di $\sqrt{2}$:
> $$
> x_1 = 1, \quad x_2 = 1.4, \quad x_3 = 1.41, \quad x_4 = 1.414, \quad x_5 = 1.4142, \dots
> $$
> Ciascun elemento $x_n \in \mathbb{Q}$.
> La successione $\{x_n\}$ è di Cauchy: infatti per ogni $n > m$, poiché le prime $m$ cifre decimali coincidono, si ha:
> $$
> |x_n - x_m| \le 10^{-(m - 1)} \xrightarrow{m \to +\infty} 0
> $$
> Tuttavia, $\{x_n\}$ **non converge in $\mathbb{Q}$**, poiché l'unico candidato limite è $\sqrt{2}$, ma come dimostrato in precedenza $\sqrt{2} \notin \mathbb{Q}$. Dunque il limite "cade in un buco" dello spazio $\mathbb{Q}$.

> [!definition] Spazio metrico completo
> Uno spazio metrico $(X, d)$ si dice **completo** se ogni successione di Cauchy in $X$ ammette limite in $X$:
> $$
> \{x_n\} \subseteq X \text{ di Cauchy} \implies \exists \ell \in X : \lim_{n \to +\infty} x_n = \ell
> $$

> [!theorem] Teorema di completezza
> - Lo spazio metrico razionale $\mathbb{Q}$ (con la distanza euclidea) **non è completo**.
> - Lo spazio euclideo reale $\mathbb{R}$ (e più in generale $\mathbb{R}^n$ con la distanza euclidea) **è completo**.
>
