---
title: "Calcolo Integrale di Riemann e Integrali Impropri"
domain: "math/integral-calculus"
source_course: "Analisi 1 (Cap. 7)"
tags:
  - math/calculus/riemann
  - math/calculus/improper-integrals
---

# 7. Calcolo Integrale secondo Riemann e Integrali Impropri

## 7.1. Somme di Darboux e definizione dell'Integrale di Riemann

### Partizioni di un Intervallo e Raffinamenti

Sia $[a, b] \subset \mathbb{R}$ un intervallo chiuso e limitato, con $a < b$.

> [!definition] Definizione: Partizione di un intervallo
> Si definisce **partizione** (o suddivisione) dell'intervallo $[a, b]$ un insieme finito ed ordinato di punti $\mathcal{P} = \{x_0, x_1, \dots, x_n\} \subset [a, b]$ tali che:
> $$
> a = x_0 < x_1 < x_2 < \dots < x_{n-1} < x_n = b
> $$
> L'intervallo $[a, b]$ risulta così decomposto nell'unione di $n$ sottointervalli contigui privi di punti interni comuni:
> $$
> [a, b] = \bigcup_{i=1}^n [x_{i-1}, x_i]
> $$

> [!definition] Definizione: Raffinamento di una partizione
> Siano $\mathcal{P}_1$ e $\mathcal{P}_2$ due partizioni di $[a, b]$. Si dice che $\mathcal{P}_2$ è **più fine** di $\mathcal{P}_1$ (oppure che $\mathcal{P}_2$ è un *raffinamento* di $\mathcal{P}_1$) se:
> $$
> \mathcal{P}_1 \subset \mathcal{P}_2 \quad \text{e} \quad \mathcal{P}_2 \ne \mathcal{P}_1
> $$
> ovvero se $\mathcal{P}_2$ contiene tutti i punti di suddivisione di $\mathcal{P}_1$ unitamente ad almeno un ulteriore punto.
>
### Somme Inferiori e Somme Superiori di Darboux

Sia $f: [a, b] \to \mathbb{R}$ una funzione **limitata**:
$$
\exists M \in \mathbb{R} : |f(x)| \le M \quad \forall x \in [a, b]
$$
Sia $\mathcal{P} = \{x_0, x_1, \dots, x_n\}$ una partizione di $[a, b]$. Per ogni sottointervallo $[x_{i-1}, x_i]$ (con $i = 1, \dots, n$), essendo $f$ limitata, esistono finiti l'estremo inferiore e l'estremo superiore di $f$:
$$
m_i := \inf_{x \in [x_{i-1}, x_i]} f(x) \in \mathbb{R}, \qquad M_i := \sup_{x \in [x_{i-1}, x_i]} f(x) \in \mathbb{R}
$$

> [!definition] Definizione: Somme Inferiori e Somme Superiori
> Si definiscono rispettivamente la **somma inferiore** $s(\mathcal{P}, f)$ e la **somma superiore** $S(\mathcal{P}, f)$ relative alla funzione $f$ e alla partizione $\mathcal{P}$:
> $$
> s(\mathcal{P}, f) := \sum_{i=1}^n m_i (x_i - x_{i-1})
> S(\mathcal{P}, f) := \sum_{i=1}^n M_i (x_i - x_{i-1})
> $$

> [!note] Significato Geometrico
> Se $f(x) \ge 0$ su $[a, b]$, la quantità $x_i - x_{i-1}$ rappresenta la base dell'$i$-esimo rettangoloide:
> - $s(\mathcal{P}, f)$ è l'area del plurirettangolo inscritto nel sottografico di $f$ (approssimazione dal basso);
> - $S(\mathcal{P}, f)$ è l'area del plurirettangolo circoscritto al sottografico di $f$ (approssimazione dall'alto);
> - La differenza $S(\mathcal{P}, f) - s(\mathcal{P}, f) = \sum_{i=1}^n (M_i - m_i)(x_i - x_{i-1}) \ge 0$ rappresenta l'area della regione di incertezza tra i plurirettangoli circoscritto e inscritto.
>
### Proprietà delle Somme Inferiori e Superiori

> [!proposition] Proprietà 1: Monotonia rispetto al raffinamento
> Sia $f: [a, b] \to \mathbb{R}$ limitata e siano $\mathcal{P}_1, \mathcal{P}_2$ due partizioni di $[a, b]$. Se $\mathcal{P}_2$ è più fine di $\mathcal{P}_1$ ($\mathcal{P}_1 \subseteq \mathcal{P}_2$), allora:
> $$
> s(\mathcal{P}_1, f) \le s(\mathcal{P}_2, f) \qquad \text{e} \qquad S(\mathcal{P}_1, f) \ge S(\mathcal{P}_2, f)
> $$
> *Raffinando la partizione, le somme inferiori crescono (o restano costanti) e le somme superiori decrescono (o restano costanti).*

> [!proposition] Proprietà 2: Separazione delle somme inferiori e superiori
> Sia $f: [a, b] \to \mathbb{R}$ limitata.
> 1. Per una qualunque partizione fissata $\mathcal{P}$, vale:
>    $$
>    s(\mathcal{P}, f) \le S(\mathcal{P}, f)
>    $$
> 2. Più in generale, per ogni coppia di partizioni arbitrarie $\mathcal{P}_1, \mathcal{P}_2$ di $[a, b]$, qualsiasi somma inferiore è minore o uguale a qualsiasi somma superiore:
>    $$
>    s(\mathcal{P}_1, f) \le S(\mathcal{P}_2, f) \quad \forall \mathcal{P}_1, \mathcal{P}_2
>    $$
>    *(Dimostrazione: basta considerare la partizione comune $\mathcal{P}^* = \mathcal{P}_1 \cup \mathcal{P}_2$, da cui $s(\mathcal{P}_1, f) \le s(\mathcal{P}^*, f) \le S(\mathcal{P}^*, f) \le S(\mathcal{P}_2, f)$).*
> 3. Ne consegue che l'insieme delle somme inferiori $\{s(\mathcal{P}, f)\}_{\mathcal{P}}$ è superiormente limitato da ciascuna somma superiore, e l'insieme delle somme superiori $\{S(\mathcal{P}, f)\}_{\mathcal{P}}$ è inferiormente limitato da ciascuna somma inferiore. Dunque:
>    $$
>    \sup_{\mathcal{P}} s(\mathcal{P}, f) \le \inf_{\mathcal{P}} S(\mathcal{P}, f)
>    $$
>
### Definizione di Integrabilità secondo Riemann

Ci si domanda se l'estremo superiore delle somme inferiori coincida con l'estremo inferiore delle somme superiori.

> [!definition] Definizione: Funzione Integrabile secondo Riemann
> Sia $f: [a, b] \to \mathbb{R}$ una funzione **limitata**. La funzione $f$ si dice **integrabile secondo Riemann** su $[a, b]$ se l'estremo inferiore delle somme superiori coincide con l'estremo superiore delle somme inferiori:
> $$
> \inf_{\mathcal{P}} S(\mathcal{P}, f) = \sup_{\mathcal{P}} s(\mathcal{P}, f)
> $$
> In tal caso, il loro valore comune si definisce **integrale definito di Riemann** di $f$ sull'intervallo $[a, b]$, e si denota con il simbolo:
> $$
> \int_a^b f(x) \, dx := \inf_{\mathcal{P}} S(\mathcal{P}, f) = \sup_{\mathcal{P}} s(\mathcal{P}, f)
> $$
>
**Funzioni non Integrabili: La Funzione di Dirichlet**

Non tutte le funzioni limitate sono integrabili secondo Riemann. Il controesempio canonico è fornito dalla funzione di Dirichlet.

> [!example] Controesempio: La Funzione di Dirichlet
> Si consideri la funzione $f: [0, 1] \to \mathbb{R}$ definita da:
> $$
> f(x) = \begin{cases} 1 & \text{se } x \in [0, 1] \cap \mathbb{Q} \\ 0 & \text{se } x \in [0, 1] \setminus \mathbb{Q} \end{cases}
> $$
> 
> Tale funzione è:
> - **Limitata:** $0 \le f(x) \le 1$ per ogni $x \in [0, 1]$;
> - **Discontinua in ogni punto:** in ogni intorno di qualsiasi punto cadono sia razionali che irrazionali.
> 
> Sia $\mathcal{P} = \{x_0, x_1, \dots, x_n\}$ una generica partizione di $[0, 1]$. In virtù della densità di $\mathbb{Q}$ e di $\mathbb{R} \setminus \mathbb{Q}$ in $\mathbb{R}$, all'interno di ogni sottointervallo $[x_{i-1}, x_i]$ cadono infiniti punti razionali ed infiniti punti irrazionali. Ne segue che:
> $$
> m_i = \inf_{x \in [x_{i-1}, x_i]} f(x) = 0, \qquad M_i = \sup_{x \in [x_{i-1}, x_i]} f(x) = 1 \qquad \forall i = 1, \dots, n, \; \forall \mathcal{P}
> $$
> Calcolando le somme inferiori e superiori:
> $$
> s(\mathcal{P}, f) = \sum_{i=1}^n m_i (x_i - x_{i-1}) = \sum_{i=1}^n 0 \cdot (x_i - x_{i-1}) = 0
> S(\mathcal{P}, f) = \sum_{i=1}^n M_i (x_i - x_{i-1}) = \sum_{i=1}^n 1 \cdot (x_i - x_{i-1}) = x_n - x_0 = 1 - 0 = 1
> $$
> dove l'ultima uguaglianza discende dal fatto che la sommatoria è telescopica.
> 
> Poiché tale risultato vale per qualsiasi partizione $\mathcal{P}$:
> $$
> \sup_{\mathcal{P}} s(\mathcal{P}, f) = 0 \ne 1 = \inf_{\mathcal{P}} S(\mathcal{P}, f)
> $$
> Dunque $f$ **non è integrabile secondo Riemann** su $[0, 1]$.
> *(La funzione di Dirichlet risulta invece integrabile secondo la più generale teoria dell'integrale di Lebesgue, con integrale nullo essendo $\mathbb{Q}$ un insieme di misura nulla).*
>
### Criterio di Integrabilità di Riemann (Lemma di Integrabilità)

> [!lemma] Lemma: Criterio di Integrabilità di Riemann
> Sia $f: [a, b] \to \mathbb{R}$ una funzione limitata.
> $f$ è integrabile secondo Riemann su $[a, b]$ se e solo se per ogni $\varepsilon > 0$ esiste una partizione $\mathcal{P}$ di $[a, b]$ tale che:
> $$
> 0 \le S(\mathcal{P}, f) - s(\mathcal{P}, f) \le \varepsilon
> $$
>
### Somme Integrali Generiche e Ampiezza di una Partizione

> [!definition] Definizione: Ampiezza (o calibro) di una partizione
> Sia $\mathcal{P} = \{x_0, x_1, \dots, x_n\}$ una partizione di $[a, b]$. Si definisce **ampiezza** (o *mesh*, o *calibro*) della partizione $\mathcal{P}$, denotata con $|\mathcal{P}|$, la massima lunghezza tra i sottointervalli della suddivisione:
> $$
> |\mathcal{P}| := \max_{i=1, \dots, n} (x_i - x_{i-1})
> $$
> Essa rappresenta la distanza massima tra due punti consecutivi della partizione.

> [!definition] Definizione: Somma Integrale di Riemann
> Sia $f: [a, b] \to \mathbb{R}$ limitata e sia $\mathcal{P} = \{x_0, \dots, x_n\}$ una partizione di $[a, b]$.
> Si scelgano per ogni intervallo $[x_{i-1}, x_i]$ dei valori arbitrari $\nu_i$ tali che:
> $$
> m_i \le \nu_i \le M_i \qquad \forall i = 1, \dots, n
> $$
> *(In particolare, si può scegliere un punto campione $\xi_i \in [x_{i-1}, x_i]$ ponendo $\nu_i = f(\xi_i)$).*
> 
> La quantità:
> $$
> \sigma(\mathcal{P}, f) := \sum_{i=1}^n \nu_i (x_i - x_{i-1})
> $$
> viene detta **somma integrale** (o somma di Riemann) relativa a $f$, alla partizione $\mathcal{P}$ e alla scelta dei nodi intermedi $\{\nu_i\}$.
> 
> Per costruzione, per ogni partizione $\mathcal{P}$ e per ogni scelta dei $\nu_i$, vale:
> $$
> s(\mathcal{P}, f) \le \sigma(\mathcal{P}, f) \le S(\mathcal{P}, f)
> $$

> [!definition] Definizione: Limite delle somme integrali per ampiezza tendente a zero
> Sia $f: [a, b] \to \mathbb{R}$ limitata e sia $\ell \in \mathbb{R}$. Si dice che il **limite delle somme integrali** per l'ampiezza della partizione tendente a zero è pari a $\ell$, e si scrive:
> $$
> \lim_{|\mathcal{P}| \to 0} \sigma(\mathcal{P}, f) = \ell
> $$
> se:
> $$
> \forall \varepsilon > 0, \; \exists \delta > 0 : \forall \mathcal{P} \text{ con } |\mathcal{P}| \le \delta, \; \forall \text{ scelta dei } \nu_i \in [m_i, M_i] \implies |\sigma(\mathcal{P}, f) - \ell| \le \varepsilon
> $$
>
### Teorema di Equivalenza di Riemann

> [!theorem] Teorema: Equivalenza tra limite delle somme di Riemann e integrabilità
> Sia $f: [a, b] \to \mathbb{R}$ una funzione limitata.
> La funzione $f$ è integrabile secondo Riemann su $[a, b]$ se e solo se esiste finito il limite delle somme integrali per $|\mathcal{P}| \to 0$:
> $$
> \inf_{\mathcal{P}} S(\mathcal{P}, f) = \sup_{\mathcal{P}} s(\mathcal{P}, f) = \lim_{|\mathcal{P}| \to 0} \sigma(\mathcal{P}, f) = \int_a^b f(x) \, dx
> $$

> [!note] Significato Operativo
> Questo teorema garantisce che, per calcolare o approssimare l'integrale, non è necessario determinare l'estremo inferiore e superiore su ogni intervallo ($m_i, M_i$), bensì è possibile campionare la funzione in un punto arbitrario $\xi_i \in [x_{i-1}, x_i]$: la convergenza all'integrale è assicurata purché il passo massimo della partizione $|\mathcal{P}|$ tenda a $0$.
>
### Integrabilità delle Funzioni Continue

Uno dei risultati cardine dell'analisi infinitesimale garantisce che la continuità su un compatto è condizione sufficiente per l'integrabilità.

> [!theorem] Teorema: Integrabilità delle funzioni continue
> Sia $f: [a, b] \to \mathbb{R}$ una funzione continua su un intervallo chiuso e limitato $[a, b]$.
> Allora $f$ è **integrabile secondo Riemann** su $[a, b]$.
>
**Dimostrazione**

> [!quote]- Dimostrazione
> Sia $f: [a, b] \to \mathbb{R}$ continua.
>
> 1. **Uniforme continuità e limitatezza:**
>    Poiché $[a, b]$ è un insieme compatto (chiuso e limitato), per il **Teorema di Heine-Cantor** $f$ è uniformemente continua su $[a, b]$:
>    $$
>    \forall \varepsilon > 0, \; \exists \delta = \delta(\varepsilon) > 0 : \forall x', x'' \in [a, b], \; |x' - x''| \le \delta \implies |f(x') - f(x'')| \le \frac{\varepsilon}{b - a}
>    $$
>    Inoltre, per il **Teorema di Weierstrass**, $f$ è limitata su $[a, b]$ e su ogni intervallo chiuso e limitato assume valore massimo e valore minimo.
>
> 2. **Scelta della partizione:**
>    Fissato $\varepsilon > 0$, si consideri il $\delta(\varepsilon) > 0$ fornito dall'uniforme continuità (scegliendo come soglia $\varepsilon' = \frac{\varepsilon}{b - a}$).
>    Si scelga una qualunque partizione $\mathcal{P} = \{x_0, x_1, \dots, x_n\}$ di $[a, b]$ avente ampiezza:
>    $$
>    |\mathcal{P}| \le \delta(\varepsilon)
>    $$
>
> 3. **Stima dell'oscillazione:**
>    Per ogni sottointervallo $[x_{i-1}, x_i]$, per il Teorema di Weierstrass esistono punti $x'_i, x''_i \in [x_{i-1}, x_i]$ in cui la funzione realizza rispettivamente il suo massimo assoluto e minimo assoluto locali:
>    $$
>    M_i = \max_{x \in [x_{i-1}, x_i]} f(x) = f(x'_i), \qquad m_i = \min_{x \in [x_{i-1}, x_i]} f(x) = f(x''_i)
>    $$
>    Poiché $x'_i, x''_i \in [x_{i-1}, x_i]$, la loro distanza reciproca è limitata dall'ampiezza dell'intervallo, che a sua volta è controllata dal calibro della partizione:
>    $$
>    |x'_i - x''_i| \le x_i - x_{i-1} \le |\mathcal{P}| \le \delta(\varepsilon)
>    $$
>    Per l'uniforme continuità di $f$, ne discende:
>    $$
>    M_i - m_i = f(x'_i) - f(x''_i) = |f(x'_i) - f(x''_i)| \le \frac{\varepsilon}{b - a}
>    $$
>
> 4. **Valutazione della differenza tra somme superiori e inferiori:**
>    Si valuta la differenza $S(\mathcal{P}, f) - s(\mathcal{P}, f)$:
>    $$
>    \begin{align}
>    0 \le S(\mathcal{P}, f) - s(\mathcal{P}, f) &= \sum_{i=1}^n M_i (x_i - x_{i-1}) - \sum_{i=1}^n m_i (x_i - x_{i-1}) \\
>    &= \sum_{i=1}^n (M_i - m_i)(x_i - x_{i-1}) \\
>    &= \sum_{i=1}^n |f(x'_i) - f(x''_i)|(x_i - x_{i-1}) \\
>    &\le \sum_{i=1}^n \frac{\varepsilon}{b - a} (x_i - x_{i-1}) \\
>    &= \frac{\varepsilon}{b - a} \sum_{i=1}^n (x_i - x_{i-1}) \\
>    &= \frac{\varepsilon}{b - a} (b - a) = \varepsilon
>    \end{align}
>    $$
>
> Essendo $\varepsilon > 0$ arbitrario, per il Criterio di Integrabilità di Riemann ([§ 6.1.6](#616-criterio-di-integrabilit-di-riemann-lemma-di-integrabilit)) la funzione $f$ è integrabile secondo Riemann su $[a, b]$. $\blacksquare$
>
### Classi Notevoli di Funzioni Integrabili

> [!theorem] Teorema: Integrabilità delle funzioni generalmente continue
> Sia $f: [a, b] \to \mathbb{R}$ una funzione **limitata** su $[a, b]$ avente al più un **numero finito di punti di discontinuità**.
> Allora $f$ è **integrabile secondo Riemann** su $[a, b]$.

> [!theorem] Teorema: Integrabilità delle funzioni monotone
> Sia $f: [a, b] \to \mathbb{R}$ una funzione **monotona** (crescente o decrescente) sull'intervallo chiuso e limitato $[a, b]$.
> Allora $f$ è **integrabile secondo Riemann** su $[a, b]$.

> [!note] Dimostrazione sintetica per funzioni monotone
> Si noti che se $f$ è monotona su $[a, b]$, essa è automaticamente limitata: per $f$ crescente si ha $f(a) \le f(x) \le f(b)$ per ogni $x \in [a, b]$.
> Inoltre, scegliendo una partizione equispaziata $\mathcal{P}$ con $n$ sottointervalli di ampiezza costante $x_i - x_{i-1} = \frac{b - a}{n}$:
> $$
> S(\mathcal{P}, f) - s(\mathcal{P}, f) = \sum_{i=1}^n \big(f(x_i) - f(x_{i-1})\big) \frac{b - a}{n} = \frac{b - a}{n} \big(f(b) - f(a)\big)
> $$
> Per $n \to \infty$, tale quantità tende a $0$, verificando il criterio di integrabilità per qualsiasi $\varepsilon > 0$.
>
## 7.2. Proprietà fondamentali dell'integrale e Teorema della Media

Si riprende la discussione sulle classi di funzioni integrabili: nel paragrafo precedente si è stabilito che ogni funzione monotona $f: [a, b] \to \mathbb{R}$ è limitata ed è integrabile secondo Riemann.

> [!note] Generalizzazione sulle funzioni con discontinuità
> Poiché l'insieme dei punti di discontinuità di una funzione monotona $f: [a, b] \to \mathbb{R}$ è al più numerabile (costituito esclusivamente da discontinuità di prima specie a salto), il teorema di integrabilità delle funzioni monotone costituisce una naturale estensione del teorema di integrabilità per funzioni limitate aventi un numero finito di discontinuità. In generale, una funzione limitata su $[a, b]$ è integrabile secondo Riemann se e solo se l'insieme dei suoi punti di discontinuità ha misura di Lebesgue nulla (Criterio di Vitali-Lebesgue).
>
### Proprietà di Linearità, Monotonia e Disuguaglianza Triangolare

> [!theorem] Proprietà fondamentali dell'integrale definito
> Siano $f, g: [a, b] \to \mathbb{R}$ due funzioni integrabili secondo Riemann su $[a, b]$. Valgono le seguenti proprietà:
> 
> 1. **Linearità dell'integrale:** Per ogni combinazione lineare con coefficienti $\lambda, \mu \in \mathbb{R}$, la funzione $\lambda f + \mu g$ è integrabile su $[a, b]$ e vale:
>    $$
>    \int_a^b \big[ \lambda f(x) + \mu g(x) \big] \, dx = \lambda \int_a^b f(x) \, dx + \mu \int_a^b g(x) \, dx
>    $$
> 
> 2. **Monotonia dell'integrale:** Se $f(x) \le g(x)$ per ogni $x \in [a, b]$, allora:
>    $$
>    \int_a^b f(x) \, dx \le \int_a^b g(x) \, dx
>    $$
>    *Caso particolare (Permanenza del segno):* Se $g(x) \ge 0$ per ogni $x \in [a, b]$, allora:
>    $$
>    \int_a^b g(x) \, dx \ge 0
>    $$
> 
> 3. **Integrabilità del valore assoluto e Disuguaglianza triangolare:** La funzione valore assoluto $|f|$ è integrabile su $[a, b]$ e vale:
>    $$
>    \left| \int_a^b f(x) \, dx \right| \le \int_a^b |f(x)| \, dx
>    $$

> [!note] Interpretazione della disuguaglianza triangolare
> La disuguaglianza triangolare per gli integrali definiti:
> $$
> \left| \int_a^b f(x) \, dx \right| \le \int_a^b |f(x)| \, dx
> $$
> rappresenta la naturale generalizzazione al continuo della disuguaglianza triangolare finita per le sommatorie:
> $$
> \left| \sum_{i=1}^n a_i \right| \le \sum_{i=1}^n |a_i|
> $$
> geometricamente, essa esprime il fatto che eventuali compensazioni di segno tra aree positive (al di sopra dell'asse $x$) e aree negative (al di sotto dell'asse $x$) possono solo ridurre il valore assoluto dell'integrale complessivo rispetto all'integrale del valore assoluto (che somma tutte le aree con segno positivo).
>
### Teorema della Media Integrale

> [!theorem] Teorema della stima dell'integrale e Teorema della media integrale
> Sia $f: [a, b] \to \mathbb{R}$ integrabile secondo Riemann su $[a, b]$, e si definiscano l'estremo inferiore e l'estremo superiore di $f$ su $[a, b]$:
> $$
> m := \inf_{x \in [a, b]} f(x), \qquad M := \sup_{x \in [a, b]} f(x)
> $$
> Essendo $f$ limitata, si ha $m, M \in \mathbb{R}$. Allora:
> $$
> m(b - a) \le \int_a^b f(x) \, dx \le M(b - a)
> $$
> o equivalentemente:
> $$
> m \le \frac{1}{b - a} \int_a^b f(x) \, dx \le M
> $$
> **Teorema della media integrale:** Se inoltre la funzione $f$ è **continua** sull'intervallo chiuso e limitato $[a, b]$, allora esiste almeno un punto $c \in [a, b]$ tale che:
> $$
> f(c) = \frac{1}{b - a} \int_a^b f(x) \, dx
> $$
> La quantità $\mu(f) := \frac{1}{b - a} \int_a^b f(x) \, dx$ prende il nome di **media integrale** di $f$ sull'intervallo $[a, b]$.

> [!quote]- Dimostrazione
> Per definizione di estremo inferiore e superiore, per ogni $x \in [a, b]$ vale la catena di disuguaglianze:
> $$
> m \le f(x) \le M, \quad \forall x \in [a, b]
> $$
> Applicando la proprietà di monotonia dell'integrale definito ([§ 6.4.1](#641-proprietà-di-linearità-monotonia-e-disuguaglianza-triangolare)) alle funzioni costanti $g_1(x) = m$ e $g_2(x) = M$:
> $$
> \int_a^b m \, dx \le \int_a^b f(x) \, dx \le \int_a^b M \, dx
> $$
> Poiché per una funzione costante $k$ l'integrale coincide con l'area del rettangolo $k(b - a)$, si ottiene:
> $$
> m(b - a) \le \int_a^b f(x) \, dx \le M(b - a)
> $$
> Dividendo tutti i membri per la lunghezza dell'intervallo $(b - a) > 0$:
> $$
> m \le \frac{1}{b - a} \int_a^b f(x) \, dx \le M
> $$
> Si assuma ora che $f$ sia continua sull'intervallo compatto $[a, b]$.
> 1. Per il Teorema di Weierstrass, la funzione $f$ ammette minimo assoluto e massimo assoluto in $[a, b]$, ovvero esistono due punti $x_1, x_2 \in [a, b]$ tali che:
>    $$
>    f(x_1) = m = \min_{x \in [a, b]} f(x), \qquad f(x_2) = M = \max_{x \in [a, b]} f(x)
>    $$
> 2. Sostituendo nella disuguaglianza precedente:
>    $$
>    f(x_1) \le \frac{1}{b - a} \int_a^b f(x) \, dx \le f(x_2)
>    $$
> 3. Poiché $f$ è continua sull'intervallo $[a, b]$, per il Teorema dei valori intermedi essa assume tutti i valori compresi tra il suo valore minimo $f(x_1)$ e il suo valore massimo $f(x_2)$.
> 4. Essendo la media integrale $\frac{1}{b - a} \int_a^b f(x) \, dx$ un valore reale compreso nell'intervallo $[f(x_1), f(x_2)]$, deve esistere un punto $c \in [a, b]$ (compreso tra $x_1$ e $x_2$) tale che:
>    $$
>    f(c) = \frac{1}{b - a} \int_a^b f(x) \, dx
>    $$
> $\blacksquare$

> [!note] Interpretazione geometrica della media integrale
> Moltiplicando ambo i membri per $(b - a)$, la relazione del teorema della media si riscrive come:
> $$
> f(c)(b - a) = \int_a^b f(x) \, dx
> $$
> Dal punto di vista geometrico (per $f(x) \ge 0$), ciò stabilisce l'esistenza di un rettangolo avente la stessa base $[a, b]$ del trapezoide e altezza pari a $f(c)$ la cui area coincide esattamente con l'area sottesa dal grafico della funzione $f(x)$:
> $$
> \text{Area}(\text{Rettangolo}) = f(c)(b - a) = \int_a^b f(x) \, dx = \text{Area}(\text{Trapezoide})
> $$

> [!warning] Falsità del teorema della media in assenza di continuità
> L'ipotesi di continuità di $f$ su $[a, b]$ è **fondamentale** e non può essere omessa. Se la funzione presenta anche solo una discontinuità a salto, il valore medio integrale calcolato può non appartenere all'immagine della funzione.
> 
> **Controesempio:** Si consideri la funzione a scalino definita su $[-1, 1]$:
> $$
> f(x) = \begin{cases} -a & \text{se } x \in [-1, 0) \\ a & \text{se } x \in [0, 1] \end{cases} \qquad (a > 0)
> $$
> Calcolando l'integrale definito:
> $$
> \int_{-1}^1 f(x) \, dx = \int_{-1}^0 (-a) \, dx + \int_0^1 a \, dx = -a(0 - (-1)) + a(1 - 0) = -a + a = 0
> $$
> La media integrale vale:
> $$
> \mu(f) = \frac{1}{1 - (-1)} \int_{-1}^1 f(x) \, dx = \frac{0}{2} = 0
> $$
> Tuttavia, l'immagine di $f$ è costituita unicamente dai due valori $\{-a, a\}$. Non esiste alcun punto $x \in [-1, 1]$ tale che $f(x) = 0$. Il teorema della media fallisce a causa della mancanza di continuità.
>
### Additività dell'Integrale rispetto all'Intervallo di Integrazione

> [!theorem] Additività rispetto al dominio di integrazione
> Sia $f: [a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su $[a, b]$, e sia $c \in (a, b)$ un punto interno all'intervallo.
> Allora la funzione $f$ è integrabile su $[a, c]$ e su $[c, b]$, e vale la relazione di additività:
> $$
> \int_a^b f(x) \, dx = \int_a^c f(x) \, dx + \int_c^b f(x) \, dx
> $$

> [!definition] Convenzione sugli estremi di integrazione
> Sia data una funzione $f: [\alpha, \beta] \to \mathbb{R}$ integrabile su $[\alpha, \beta]$.
> 1. Per ogni coppia di punti $\gamma, \delta \in [\alpha, \beta]$ con $\gamma > \delta$, si pone per definizione:
>    $$
>    \int_\gamma^\delta f(x) \, dx := - \int_\delta^\gamma f(x) \, dx
>    $$
> 2. Se i due estremi di integrazione coincidono, per ogni $a \in [\alpha, \beta]$ si pone:
>    $$
>    \int_a^a f(x) \, dx := 0
>    $$

> [!proposition] Additività generale per estremi comunque ordinati
> Adottando le convenzioni sopra introdotte, per qualsiasi terna di punti $a, b, c \in [\alpha, \beta]$, **comunque ordinati tra loro**, vale universalmente l'identità:
> $$
> \int_a^b f(x) \, dx = \int_a^c f(x) \, dx + \int_c^b f(x) \, dx
> $$
>
## 7.3. Teoremi Fondamentali del Calcolo Integrale (Torricelli-Barrow)

I Teoremi Fondamentali del Calcolo stabiliscono il ponte concettuale profondo tra il problema geometrico dell'integrazione (calcolo di aree tramite limiti di somme di Darboux) e il problema cinematico/differenziale della derivazione (ricerca delle primitive).

### Primo Teorema Fondamentale del Calcolo Integrale

Il Primo Teorema Fondamentale (noto anche come Formula Fondamentale del Calcolo Integrale o Teorema di Torricelli-Barrow) permette di calcolare l'integrale definito di una funzione mediante la valutazione di una sua qualunque primitiva agli estremi dell'intervallo.

> [!theorem] Primo Teorema Fondamentale del Calcolo Integrale
> Sia $f: [a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su $[a, b]$.
> Si supponga che $f$ ammetta una **primitiva** $F: (a, b) \to \mathbb{R}$, ossia una funzione derivabile su $(a, b)$ tale che:
> $$
> F'(x) = f(x), \quad \forall x \in (a, b)
> $$
> Si assuma inoltre che esistano finiti i limiti agli estremi dell'intervallo:
> $$
> F(a^+) := \lim_{x \to a^+} F(x), \qquad F(b^-) := \lim_{x \to b^-} F(x)
> $$
> Allora vale la formula fondamentale:
> $$
> \int_a^b f(x) \, dx = F(b^-) - F(a^+)
> $$
> In particolare, se $F$ è continua sull'intervallo chiuso $[a, b]$, la formula assume la forma classica:
> $$
> \int_a^b f(x) \, dx = F(b) - F(a) = \big[ F(x) \big]_a^b
> $$

> [!quote]- Dimostrazione
> Si estende la funzione primitiva $F$ agli estremi ponendo per continuità:
> $$
> F(a) := F(a^+), \qquad F(b) := F(b^-)
> $$
> In questo modo $F$ risulta continua su tutto l'intervallo compatto $[a, b]$ e derivabile su $(a, b)$.
>
> Sia ora $P = \{x_0, x_1, \dots, x_n\}$ una generica partizione di $[a, b]$, con:
> $$
> a = x_0 < x_1 < x_2 < \dots < x_{n-1} < x_n = b
> $$
> Si esprime la differenza totale $F(b) - F(a)$ come somma telescopica dei contributi su ciascun sub-intervallo $[x_{i-1}, x_i]$:
> $$
> F(b) - F(a) = \sum_{i=1}^n \big( F(x_i) - F(x_{i-1}) \big)
> $$
> Tutti i termini intermedi si cancellano a coppie consecutive, lasciando unicamente $F(x_n) - F(x_0) = F(b) - F(a)$.
>
> Poiché $F$ è continua su $[x_{i-1}, x_i]$ e derivabile in $(x_{i-1}, x_i)$, per ciascun intervallo $[x_{i-1}, x_i]$ ($i = 1, \dots, n$) è possibile applicare il Teorema del valor medio di Lagrange: esiste un punto $c_i \in (x_{i-1}, x_i)$ tale che:
> $$
> \frac{F(x_i) - F(x_{i-1})}{x_i - x_{i-1}} = F'(c_i) \implies F(x_i) - F(x_{i-1}) = F'(c_i)(x_i - x_{i-1})
> $$
> Poiché per ipotesi $F'(x) = f(x)$ per ogni punto interno $x \in (a, b)$, e ciascun $c_i \in (x_{i-1}, x_i) \subset (a, b)$, si ha $F'(c_i) = f(c_i)$. Sostituendo nella somma telescopica:
> $$
> F(b) - F(a) = \sum_{i=1}^n f(c_i)(x_i - x_{i-1})
> $$
> La quantità a secondo membro è una **somma integrale di Riemann** $\sigma(P, f, \{c_i\})$ associata alla partizione $P$ e ai punti campione di Lagrange $\{c_i\}_{i=1}^n$:
> $$
> \sigma(P, f) := \sum_{i=1}^n f(c_i)(x_i - x_{i-1})
> $$
> Poiché $f$ è per ipotesi integrabile secondo Riemann su $[a, b]$, al tendere a zero del calibro della partizione $|P| := \max_{1 \le i \le n} (x_i - x_{i-1}) \to 0$, le somme di Riemann convergono all'integrale definito:
> $$
> \lim_{|P| \to 0} \sigma(P, f) = \int_a^b f(x) \, dx
> $$
> D'altra parte, il membro sinistro $F(b) - F(a)$ è una costante numerica fissa, del tutto indipendente dalla scelta della partizione $P$ e dal suo calibro $|P|$. Ne segue che anche la somma $\sigma(P, f)$ coincide costantemente con $F(b) - F(a)$ per qualsiasi partizione $P$. Passando al limite per $|P| \to 0$ in ambo i membri:
> $$
> F(b) - F(a) = \lim_{|P| \to 0} \sigma(P, f) = \int_a^b f(x) \, dx
> $$
> ovvero:
> $$
> \int_a^b f(x) \, dx = F(b^-) - F(a^+)
> $$
> $\blacksquare$
>
### Esistenza delle Primitive e Discontinuità a Salto

Il Primo Teorema Fondamentale assume come ipotesi l'esistenza di una primitiva $F$. Sorge spontanea una domanda cruciale: *ogni funzione integrabile ammette una primitiva?*

> [!warning] Non tutte le funzioni integrabili ammettono primitiva!
> L'integrabilità secondo Riemann **non garantisce affatto** l'esistenza di una primitiva. 
> In particolare: **nessuna funzione avente una discontinuità di prima specie (a salto) ammette primitiva**.

> [!note] Dimostrazione dell'impossibilità tramite il Teorema di Darboux
> Si consideri una funzione $f: \mathbb{R} \to \mathbb{R}$ continua su $\mathbb{R} \setminus \{x_0\}$ e avente in $x_0$ una discontinuità a salto:
> $$
> \lim_{x \to x_0^+} f(x) = \ell_+ \neq \ell_- = \lim_{x \to x_0^-} f(x)
> $$
> Si supponga per assurdo che esista una funzione $F: \mathbb{R} \to \mathbb{R}$ derivabile su tutto $\mathbb{R}$ tale che:
> $$
> F'(x) = f(x), \quad \forall x \in \mathbb{R}
> $$
> Allora la funzione derivata prima $F'$ avrebbe in $x_0$ una discontinuità a salto, con:
> $$
> \lim_{x \to x_0^+} F'(x) = \ell_+ \neq \ell_- = \lim_{x \to x_0^-} F'(x)
> $$
> Ma per il **Teorema di Darboux** sulla proprietà dei valori intermedi per le derivate ([§ 5.6.4](#564-proprietà-dei-valori-intermedi-per-le-derivate-teorema-di-darboux)), la derivata di una qualunque funzione derivabile soddisfa sempre la proprietà di Darboux (assume tutti i valori intermedi tra due suoi valori) e non può **mai** possedere discontinuità di prima specie (a salto).
> 
> L'ipotesi che $F$ esista conduce a un assurdo logico. Si conclude che:
> $$
> f \text{ possiede una discontinuità a salto} \implies f \text{ NON ammette alcuna primitiva}
> $$
>
Di fronte a questa limitazione, è necessario individuare quali classi di funzioni garantiscano con certezza l'esistenza di una primitiva. La risposta è data dal Secondo Teorema Fondamentale del Calcolo Integrale.

### Secondo Teorema Fondamentale del Calcolo Integrale (Teorema di Torricelli)

> [!definition] Funzione Integrale
> Sia $f: [a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su $[a, b]$, e sia fissato un punto base $c \in [a, b]$.
> Si definisce **funzione integrale** associata a $f$ con punto iniziale $c$ la funzione $F: [a, b] \to \mathbb{R}$ data da:
> $$
> F(x) := \int_c^x f(t) \, dt, \quad \forall x \in [a, b]
> $$
> Se si sceglie un diverso punto base $c_1, c_2 \in [a, b]$, per la proprietà di additività dell'integrale le rispettive funzioni integrali differiscono unicamente per una costante additiva:
> $$
> F_1(x) - F_2(x) = \int_{c_1}^x f(t) \, dt - \int_{c_2}^x f(t) \, dt = \int_{c_1}^{c_2} f(t) \, dt = \text{costante}
> $$

> [!theorem] Secondo Teorema Fondamentale del Calcolo Integrale
> Sia $f: [a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su $[a, b]$, e sia $F(x) := \int_c^x f(t) \, dt$ la funzione integrale associata ($c \in [a, b]$). Allora:
> 
> 1. **Regolarità globale (Continuità):** La funzione integrale $F$ è **continua** su tutto l'intervallo $[a, b]$ (e in particolare soddisfa una condizione di Lipschitz).
> 
> 2. **Derivabilità puntuale e Formula di Torricelli:** Se $f$ è **continua** in un punto $x_0 \in (a, b)$, allora la funzione integrale $F$ è **derivabile** in $x_0$ e la sua derivata prima coincide con il valore dell'integranda in tale punto:
>    $$
>    F'(x_0) = f(x_0)
>    $$
> 
> **Corollario (Esistenza della primitiva per funzioni continue):** Se $f: [a, b] \to \mathbb{R}$ è continua su tutto l'intervallo compatto $[a, b]$, allora la funzione integrale $F(x) = \int_c^x f(t) \, dt$ è derivabile su tutto $[a, b]$ (con derivata destra in $a$ e derivata sinistra in $b$) e soddisfa:
> $$
> F'(x) = f(x), \quad \forall x \in [a, b]
> $$
> Dunque **ogni funzione continua su un intervallo ammette sempre almeno una primitiva**.

> [!quote]- Dimostrazione
> **Dimostrazione del Punto 1 (Continuità e Lipschitzianità di $F$):**
> Poiché $f$ è integrabile secondo Riemann su $[a, b]$, essa è necessariamente limitata:
> $$
> \exists M > 0 : |f(t)| \le M, \quad \forall t \in [a, b]
> $$
> Siano ora $x, x_0 \in [a, b]$. Si valuta la variazione di $F$ tra $x$ e $x_0$:
> $$
> |F(x) - F(x_0)| = \left| \int_c^x f(t) \, dt - \int_c^{x_0} f(t) \, dt \right|
> $$
> Per la proprietà di additività dell'integrale (§ 6.4.3), per qualunque ordinamento relativo dei punti $x, x_0, c \in [a, b]$ vale:
> $$
> \int_c^x f(t) \, dt - \int_c^{x_0} f(t) \, dt = \int_{x_0}^x f(t) \, dt
> $$
> Supponendo, senza perdita di generalità, che $x > x_0$:
> $$
> |F(x) - F(x_0)| = \left| \int_{x_0}^x f(t) \, dt \right|
> $$
> Applicando la disuguaglianza triangolare per gli integrali e la limitatezza di $f$:
> $$
> \left| \int_{x_0}^x f(t) \, dt \right| \le \int_{x_0}^x |f(t)| \, dt \le \int_{x_0}^x M \, dt = M(x - x_0)
> $$
> In modo del tutto speculare, se $x < x_0$:
> $$
> |F(x) - F(x_0)| \le \int_x^{x_0} |f(t)| \, dt \le M(x_0 - x) = M|x - x_0|
> $$
> In generale, per ogni coppia di punti $x, x_0 \in [a, b]$ vale la stima:
> $$
> |F(x) - F(x_0)| \le M |x - x_0|
> $$
> Ciò dimostra che $F$ è una funzione lipschitziana su $[a, b]$ con costante di Lipschitz $L = M$.
> Poiché per $x \to x_0$ si ha $M|x - x_0| \to 0$, per il Teorema del confronto si deduce:
> $$
> \lim_{x \to x_0} |F(x) - F(x_0)| = 0 \implies \lim_{x \to x_0} F(x) = F(x_0)
> $$
> Dunque $F$ è continua in ogni punto $x_0 \in [a, b]$.
>
> ---
>
> **Dimostrazione del Punto 2 (Derivabilità di $F$ nei punti di continuità di $f$):**
> Sia $x_0 \in (a, b)$ un punto in cui l'integranda $f$ è continua.
> Per definizione di continuità in $x_0$:
> $$
> \forall \varepsilon > 0, \, \exists \delta > 0 : \forall t \in [a, b], \; |t - x_0| < \delta \implies |f(t) - f(x_0)| < \varepsilon
> $$
> Si consideri il rapporto incrementale della funzione $F$ in $x_0$ per un incremento $h \neq 0$:
> $$
> \frac{F(x_0 + h) - F(x_0)}{h} = \frac{1}{h} \left[ \int_c^{x_0+h} f(t) \, dt - \int_c^{x_0} f(t) \, dt \right] = \frac{1}{h} \int_{x_0}^{x_0+h} f(t) \, dt
> $$
> Si vuole dimostrare che:
> $$
> \lim_{h \to 0} \frac{F(x_0 + h) - F(x_0)}{h} = f(x_0)
> $$
> il che equivale a verificare che la differenza tenda a zero:
> $$
> \lim_{h \to 0} \left( \frac{1}{h} \int_{x_0}^{x_0+h} f(t) \, dt - f(x_0) \right) = 0
> $$
> Poiché $f(x_0)$ è una costante numerica rispetto alla variabile di integrazione $t$, sfruttando l'identità:
> $$
> \frac{1}{h} \int_{x_0}^{x_0+h} f(x_0) \, dt = \frac{1}{h} \cdot f(x_0) \cdot h = f(x_0)
> $$
> la differenza si riscrive, per linearità dell'integrale, sotto un unico segno di integrazione:
> $$
> \frac{1}{h} \int_{x_0}^{x_0+h} f(t) \, dt - f(x_0) = \frac{1}{h} \int_{x_0}^{x_0+h} \big[ f(t) - f(x_0) \big] \, dt
> $$
> Si consideri dapprima il limite destro ponendo $h > 0$ con $0 < h < \delta$.
> Per ogni $t \in (x_0, x_0 + h)$ si ha $0 < t - x_0 < h < \delta$, e pertanto, in virtù dell'ipotesi di continuità di $f$ in $x_0$, vale la maggiorazione $|f(t) - f(x_0)| < \varepsilon$.
> Applicando la disuguaglianza triangolare per gli integrali:
> $$
> \begin{align}
> \left| \frac{1}{h} \int_{x_0}^{x_0+h} \big[ f(t) - f(x_0) \big] \, dt \right| &\le \frac{1}{h} \int_{x_0}^{x_0+h} \big| f(t) - f(x_0) \big| \, dt \\
> &< \frac{1}{h} \int_{x_0}^{x_0+h} \varepsilon \, dt = \frac{1}{h} \cdot \varepsilon h = \varepsilon
> \end{align}
> $$
> Dunque, per ogni $0 < h < \delta$:
> $$
> \left| \frac{F(x_0+h) - F(x_0)}{h} - f(x_0) \right| < \varepsilon
> $$
> il che prova l'esistenza del limite destro e l'uguaglianza:
> $$
> F'_+(x_0) = \lim_{h \to 0^+} \frac{F(x_0+h) - F(x_0)}{h} = f(x_0)
> $$
> In maniera del tutto analoga, considerando incrementi negativi $h < 0$ con $-\delta < h < 0$, si dimostra che:
> $$
> F'_-(x_0) = \lim_{h \to 0^-} \frac{F(x_0+h) - F(x_0)}{h} = f(x_0)
> $$
> Essendo la derivata destra e la derivata sinistra esistenti, finite e coincidenti con $f(x_0)$, la funzione integrale $F$ è derivabile in $x_0$ e vale:
> $$
> F'(x_0) = f(x_0)
> $$
> Se infine $f$ è continua in ogni punto di $[a, b]$, la relazione $F'(x) = f(x)$ sussiste per ogni $x \in [a, b]$ (intendendo $F'(a) = F'_+(a)$ e $F'(b) = F'_-(b)$), provando che $F$ è una primitiva di $f$ su $[a, b]$. $\blacksquare$
>
## 7.4. Metodi di integrazione: parti e sostituzione

### Integrale Indefinito e Notazione

In virtù del Secondo Teorema Fondamentale del Calcolo Integrale, ogni funzione continua ammette una famiglia di primitive. Si introduce la notazione formale per indicare la totalità delle primitive di una funzione.

> [!definition] Integrale Indefinito
> Sia $f$ una funzione che ammette primitive su un intervallo $I \subset \mathbb{R}$.
> Si definisce **integrale indefinito** di $f$ l'insieme di tutte le sue primitive su $I$, denotato con:
> $$
> \int f(x) \, dx := \big\{ F: I \to \mathbb{R} \;\big|\; F'(x) = f(x), \; \forall x \in I \big\}
> $$
> Poiché due primitive qualsiasi $F_1, F_2$ di una stessa funzione $f$ su un intervallo connesso $I$ differiscono unicamente per una costante reale additiva ($F_2(x) - F_1(x) = C$), l'integrale indefinito si rappresenta tradizionalmente come:
> $$
> \int f(x) \, dx = F(x) + C, \qquad C \in \mathbb{R}
> $$
> dove $F(x)$ è una specifica primitiva fissata di $f(x)$.

> [!note] Distinzione fondamentale tra Integrale Definito e Indefinito
> È essenziale mantenere chiara la distinzione concettuale:
> - **Integrale indefinito** $\int f(x) \, dx$: è una **classe di funzioni** (una famiglia a un parametro di primitive che differiscono per una costante arbitraria $C \in \mathbb{R}$).
> - **Integrale definito** $\int_a^b f(x) \, dx$: è un **numero reale** univocamente determinato (rappresentante la misura con segno dell'area compresa tra il grafico di $f$ e l'asse delle ascisse).

> [!proposition] Linearità dell'integrale indefinito
> Anche l'operatore di integrazione indefinita è lineare: per ogni coppia di funzioni $f, g$ dotate di primitiva e per ogni $\lambda, \mu \in \mathbb{R}$, vale:
> $$
> \int \big[ \lambda f(x) + \mu g(x) \big] \, dx = \lambda \int f(x) \, dx + \mu \int g(x) \, dx
> $$
>
### Formula di Integrazione per Parti

La formula di integrazione per parti deriva direttamente dalla regola di Leibniz per la derivata del prodotto di due funzioni.

> [!proposition] Formula di integrazione per parti
> Siano $f, g: [a, b] \to \mathbb{R}$ due funzioni derivabili con continuità su $[a, b]$ (o tali che le derivate $f', g'$ siano integrabili secondo Riemann). Valgono le seguenti formule:
> 
> 1. **Per integrali definiti:**
>    $$
>    \int_a^b f(x) g'(x) \, dx = \big[ f(x) g(x) \big]_a^b - \int_a^b f'(x) g(x) \, dx
>    $$
>    dove $\big[ f(x) g(x) \big]_a^b := f(b) g(b) - f(a) g(a)$.
> 
> 2. **Per integrali indefiniti:**
>    $$
>    \int f(x) g'(x) \, dx = f(x) g(x) - \int f'(x) g(x) \, dx
>    $$
> 
> Nella terminologia classica, la funzione $f(x)$ prende il nome di **fattore finito**, mentre il termine $g'(x) \, dx$ prende il nome di **fattore differenziale**.

> [!quote]- Dimostrazione
> Siano $f, g: [a, b] \to \mathbb{R}$ derivabili in $[a, b]$.
> Per la regola di derivazione del prodotto di funzioni (Regola di Leibniz):
> $$
> \big( f(x) g(x) \big)' = f'(x) g(x) + f(x) g'(x)
> $$
> Integrando ambo i membri rispetto a $x$ sull'intervallo $[a, b]$:
> $$
> \int_a^b \big[ f(x) g(x) \big]' \, dx = \int_a^b \big[ f'(x) g(x) + f(x) g'(x) \big] \, dx
> $$
> Per la proprietà di linearità dell'integrale definito:
> $$
> \int_a^b \big[ f(x) g(x) \big]' \, dx = \int_a^b f'(x) g(x) \, dx + \int_a^b f(x) g'(x) \, dx
> $$
> Poiché la funzione $f(x) g(x)$ è una primitiva immediata della propria derivata $\big[ f(x) g(x) \big]'$, applicando il Primo Teorema Fondamentale del Calcolo Integrale ([§ 6.5.1](#651-primo-teorema-fondamentale-del-calcolo-integrale)) al membro sinistro si ottiene:
> $$
> \int_a^b \big[ f(x) g(x) \big]' \, dx = \big[ f(x) g(x) \big]_a^b = f(b) g(b) - f(a) g(a)
> $$
> Sostituendo tale valore nell'uguaglianza:
> $$
> \big[ f(x) g(x) \big]_a^b = \int_a^b f'(x) g(x) \, dx + \int_a^b f(x) g'(x) \, dx
> $$
> Isolando a primo membro l'integrale del termine $f(x) g'(x)$:
> $$
> \int_a^b f(x) g'(x) \, dx = \big[ f(x) g(x) \big]_a^b - \int_a^b f'(x) g(x) \, dx
> $$
> che dimostra l'identità (1) per gli integrali definiti.
> La formula per l'integrale indefinito (2) segue immediatamente derivando ambo i membri e applicando la linearità. $\blacksquare$

> [!example] Esempi Notevoli ed Integrali Ciclici

> [!example] Esempio 1: Integrazione di $\log(x)$ con fattore differenziale fittizio
> Si calcoli l'integrale indefinito:
> $$
> \int \log(x) \, dx
> $$
> Si riscrive l'integrando introducendo il fattore differenziale identicamente unitario $g'(x) = 1$:
> $$
> \int \log(x) \, dx = \int \underbrace{\log(x)}_{f(x)} \cdot \underbrace{1}_{g'(x)} \, dx
> $$
> Si identificano:
> $$
> \begin{align}
> f(x) &= \log(x) &\implies& \quad f'(x) = \frac{1}{x} \\
> g'(x) &= 1 &\implies& \quad g(x) = x
> \end{align}
> $$
> Applicando la formula di integrazione per parti:
> $$
> \begin{align}
> \int \log(x) \, dx &= x \log(x) - \int \frac{1}{x} \cdot x \, dx \\
> &= x \log(x) - \int 1 \, dx \\
> &= x \log(x) - x + C, \qquad C \in \mathbb{R}
> \end{align}
> $$
>
[!example] Esempio 2: Scelta strategica del fattore finito per l'integrale $\int x e^x \, dx$
> Si calcoli l'integrale indefinito:
> $$
> \int x e^x \, dx
> $$
> - **Scelta corretta (riduzione del grado polinomiale):**
>   Si sceglie $f(x) = x$ come fattore finito e $g'(x) = e^x$ come fattore differenziale:
>   $$
>   \begin{align}
>   f(x) &= x &\implies& \quad f'(x) = 1 \\
>   g'(x) &= e^x &\implies& \quad g(x) = e^x
>   \end{align}
>   $$
>   Applicando la formula per parti:
>   $$
>   \begin{align}
>   \int x e^x \, dx &= x e^x - \int 1 \cdot e^x \, dx \\
>   &= x e^x - e^x + C \\
>   &= e^x(x - 1) + C, \qquad C \in \mathbb{R}
>   \end{align}
>   $$

> [!warning] Scelta controproducente del fattore differenziale
> Se si scambiassero i ruoli ponendo:
> $$
> f(x) = e^x \implies f'(x) = e^x, \qquad g'(x) = x \implies g(x) = \frac{x^2}{2}
> $$
> l'applicazione della formula per parti produrrebbe:
> $$
> \int x e^x \, dx = \frac{x^2}{2} e^x - \int \frac{x^2}{2} e^x \, dx
> $$
> L'integrale residuo $\int x^2 e^x \, dx$ presenta un monomio di grado superiore ($x^2$), risultando strettamente più complesso di quello di partenza. La scelta del fattore finito deve mirare alla semplificazione o alla cancellazione algebrica sotto il nuovo segno di integrale.

> [!example] Esempio 3: Integrale per parti ricorsivo (Integrale ciclico per $\cos^2(x)$)
> Si calcoli l'integrale indefinito:
> $$
> \int \cos^2(x) \, dx
> $$
> Si fattorizza l'integrando:
> $$
> \int \cos^2(x) \, dx = \int \underbrace{\cos(x)}_{f(x)} \cdot \underbrace{\cos(x)}_{g'(x)} \, dx
> $$
> Si identificano:
> $$
> \begin{align}
> f(x) &= \cos(x) &\implies& \quad f'(x) = -\sin(x) \\
> g'(x) &= \cos(x) &\implies& \quad g(x) = \sin(x)
> \end{align}
> $$
> Applicando la formula di integrazione per parti:
> $$
> \begin{align}
> \int \cos^2(x) \, dx &= \cos(x) \sin(x) - \int \big( -\sin(x) \big) \sin(x) \, dx \\
> &= \cos(x) \sin(x) + \int \sin^2(x) \, dx
> \end{align}
> $$
> Utilizzando l'identità fondamentale della trigonometria $\sin^2(x) = 1 - \cos^2(x)$:
> $$
> \begin{align}
> \int \cos^2(x) \, dx &= \cos(x) \sin(x) + \int \big( 1 - \cos^2(x) \big) \, dx \\
> &= \cos(x) \sin(x) + \int 1 \, dx - \int \cos^2(x) \, dx \\
> &= \cos(x) \sin(x) + x - \int \cos^2(x) \, dx
> \end{align}
> $$
> L'integrale originario $\int \cos^2(x) \, dx$ ricompare a secondo membro con segno negativo. Trattando l'uguaglianza come un'equazione algebrica lineare e sommando $\int \cos^2(x) \, dx$ a entrambi i membri:
> $$
> 2 \int \cos^2(x) \, dx = \cos(x) \sin(x) + x
> $$
> Dividendo per $2$ e aggiungendo la costante arbitraria di integrazione $C \in \mathbb{R}$:
> $$
> \int \cos^2(x) \, dx = \frac{1}{2} \cos(x) \sin(x) + \frac{1}{2} x + C, \qquad C \in \mathbb{R}
> $$
>
>
### Teorema di Integrazione per Sostituzione (Cambiamento di Variabile)

Il metodo di integrazione per sostituzione traduce a livello integrale la regola di derivazione delle funzioni composte (Chain Rule).

> [!proposition] Teorema di Integrazione per Sostituzione
> Sia $f: [a, b] \to \mathbb{R}$ una funzione continua su $[a, b]$, e sia $\varphi: [\alpha, \beta] \to [a, b]$ una funzione di classe $C^1([\alpha, \beta])$ (ossia derivabile con derivata prima continua) e suriettiva su $[a, b]$.
> Sia $[c, d] \subseteq [a, b]$ un sottointervallo, e siano $\gamma, \delta \in [\alpha, \beta]$ tali che:
> $$
> \varphi(\gamma) = c, \qquad \varphi(\delta) = d
> $$
> Allora valgono le seguenti formule di cambiamento di variabile:
> 
> 1. **Per integrali definiti:**
>    $$
>    \int_c^d f(x) \, dx = \int_\gamma^\delta f(\varphi(t)) \cdot \varphi'(t) \, dt
>    $$
> 
> 2. **Per integrali indefiniti:**
>    $$
>    \int f(x) \, dx = \left( \int f(\varphi(t)) \cdot \varphi'(t) \, dt \right)_{t = \varphi^{-1}(x)}
>    $$
>    operando formalmente la sostituzione $x = \varphi(t) \implies dx = \varphi'(t) \, dt$.

> [!quote]- Dimostrazione
> Si considerino le ipotesi del teorema:
> 1. Poiché $\varphi: [\alpha, \beta] \to [a, b]$ è suriettiva, per ogni coppia di punti $c, d \in [a, b]$ esistono certamente due valori $\gamma, \delta \in [\alpha, \beta]$ tali che:
>    $$
>    \varphi(\gamma) = c, \qquad \varphi(\delta) = d
>    $$
> 2. Essendo la funzione $f: [a, b] \to \mathbb{R}$ continua su $[a, b]$, per il Secondo Teorema Fondamentale del Calcolo Integrale ([§ 6.5.3](#653-secondo-teorema-fondamentale-del-calcolo-integrale-teorema-di-torricelli)) essa ammette una primitiva $F: [a, b] \to \mathbb{R}$ derivabile su $[a, b]$ tale che:
>    $$
>    F'(x) = f(x), \quad \forall x \in [a, b]
>    $$
> 3. Applicando il Primo Teorema Fondamentale del Calcolo Integrale all'integrale definito di $f$ sull'intervallo $[c, d]$:
>    $$
>    \int_c^d f(x) \, dx = F(d) - F(c)
>    $$
> 4. Si consideri ora la funzione composta ausiliaria $H: [\alpha, \beta] \to \mathbb{R}$ definita da:
>    $$
>    H(t) := (F \circ \varphi)(t) = F(\varphi(t))
>    $$
>    Poiché $\varphi$ è derivabile su $[\alpha, \beta]$ e $F$ è derivabile su $[a, b]$, per il Teorema di derivazione delle funzioni composte la funzione $H$ è derivabile su $[\alpha, \beta]$ e la sua derivata prima vale:
>    $$
>    H'(t) = (F \circ \varphi)'(t) = F'(\varphi(t)) \cdot \varphi'(t), \quad \forall t \in [\alpha, \beta]
>    $$
>    Poiché $F'(x) = f(x)$ per ogni $x \in [a, b]$, sostituendo $x = \varphi(t)$ si ottiene:
>    $$
>    (F \circ \varphi)'(t) = f(\varphi(t)) \cdot \varphi'(t), \quad \forall t \in [\alpha, \beta]
>    $$
> 5. La relazione appena ricavata attesta che la funzione composta $(F \circ \varphi)(t)$ è una **primitiva** della funzione $t \mapsto f(\varphi(t))\varphi'(t)$ sull'intervallo $[\alpha, \beta]$.
> 6. Essendo $f(\varphi(t))\varphi'(t)$ continua su $[\alpha, \beta]$ (in quanto prodotto e composizione di funzioni continue), essa è Riemann-integrabile su $[\alpha, \beta]$. Applicando nuovamente il Primo Teorema Fondamentale del Calcolo Integrale sull'intervallo con estremi $\gamma$ e $\delta$:
>    $$
>    \int_\gamma^\delta f(\varphi(t)) \cdot \varphi'(t) \, dt = \big[ (F \circ \varphi)(t) \big]_\gamma^\delta = (F \circ \varphi)(\delta) - (F \circ \varphi)(\gamma)
>    $$
> 7. Esplicitando la definizione della funzione composta e sfruttando le uguaglianze $\varphi(\delta) = d$ e $\varphi(\gamma) = c$:
>    $$
>    (F \circ \varphi)(\delta) - (F \circ \varphi)(\gamma) = F(\varphi(\delta)) - F(\varphi(\gamma)) = F(d) - F(c)
>    $$
> 8. Confrontando il risultato con l'espressione $(\star)$ calcolata al punto 3:
>    $$
>    \int_\gamma^\delta f(\varphi(t)) \cdot \varphi'(t) \, dt = F(d) - F(c) = \int_c^d f(x) \, dx
>    $$
> Ciò stabilisce la validità della formula (1) per gli integrali definiti.
> La formula per l'integrale indefinito (2) discende immediatamente ponendo $x = \varphi(t)$, calcolando la primitiva $H(t) = \int f(\varphi(t)) \varphi'(t) \, dt$ e riesprimendo infine il risultato in termini della variabile originaria $x$ tramite la sostituzione inversa $t = \varphi^{-1}(x)$. $\blacksquare$
>
### Integrazione per Sostituzione (Dimostrazione e Analisi delle Ipotesi)

Si completa la dimostrazione del teorema di integrazione per sostituzione introdotto al termine della sezione precedente.

> [!quote]- Dimostrazione
> Si consideri la composizione $F \circ \varphi$, dove $F$ è una primitiva di $f$ sull'intervallo $[c, d]$ (la cui esistenza è garantita dal Primo Teorema Fondamentale del Calcolo Integrale per ogni funzione continua $f \in C^0([c, d])$), e $\varphi: [\alpha, \beta] \to [c, d]$ è una funzione di classe $C^1([\alpha, \beta])$.
>
> Applicando la regola di derivazione delle funzioni composte (Chain Rule), per ogni $t \in [\alpha, \beta]$ si ha:
> $$
> (F \circ \varphi)'(t) = F'(\varphi(t)) \cdot \varphi'(t) = f(\varphi(t)) \varphi'(t)
> $$
> Ne segue che la funzione composta $(F \circ \varphi)(t)$ è una primitiva della funzione integranda $f(\varphi(t)) \varphi'(t)$ sull'intervallo $[\alpha, \beta]$.
>
> Per ipotesi di suriettività di $\varphi$, esistono due punti $\gamma, \delta \in [\alpha, \beta]$ tali che:
> $$
> \varphi(\gamma) = c, \qquad \varphi(\delta) = d
> $$
> Integrando la derivata $(F \circ \varphi)'(t)$ nell'intervallo $[\gamma, \delta]$, in virtù della formula fondamentale del calcolo integrale (Teorema di Torricelli-Barrow) si ottiene:
> $$
> \begin{align}
> \int_\gamma^\delta f(\varphi(t)) \varphi'(t) \, dt &= \int_\gamma^\delta (F \circ \varphi)'(t) \, dt \\
> &= (F \circ \varphi)(\delta) - (F \circ \varphi)(\gamma) \\
> &= F(\varphi(\delta)) - F(\varphi(\gamma))
> \end{align}
> $$
> Sostituendo per costruzione $\varphi(\delta) = d$ e $\varphi(\gamma) = c$:
> $$
> F(\varphi(\delta)) - F(\varphi(\gamma)) = F(d) - F(c)
> $$
> D'altra parte, applicando nuovamente la formula fondamentale del calcolo integrale all'integrale definito di partenza su $[c, d]$:
> $$
> \int_c^d f(x) \, dx = F(d) - F(c)
> $$
> Confrontando le due espressioni si conclude l'identità per l'integrale definito:
> $$
> \int_c^d f(x) \, dx = \int_\gamma^\delta f(\varphi(t)) \varphi'(t) \, dt
> $$
> In modo del tutto analogo si ottiene la formula per l'integrale indefinito:
> $$
> \left( \int f(x) \, dx \right)\Bigg|_{x = \varphi(t)} = \int f(\varphi(t)) \varphi'(t) \, dt = F(\varphi(t)) + C
> $$
> $\blacksquare$

> [!note] Interpretazione euristica tramite differenziali
> L'identità della formula di integrazione per sostituzione ammette una suggestiva e comoda interpretazione formale mediante il formalismo dei differenziali di Leibniz:
> Ponendo il cambio di variabile $x = \varphi(t)$, calcolando formalmente il differenziale di ambo i membri si ha:
> $$
> dx = \varphi'(t) \, dt \iff \frac{dx}{dt} = \varphi'(t)
> $$
> Il simbolo $dx$ sotto il segno di integrale viene dunque formalmente sostituito dal prodotto della derivata $\varphi'(t)$ per il differenziale $dt$, mentre l'argomento $x$ viene sostituito da $\varphi(t)$.

> [!warning] Non unicità dell'intervallo di integrazione $[\gamma, \delta]$
> Si osservi con attenzione che, nel caso generale in cui si richieda la sola continuità e derivabilità di $\varphi$ (senza l'ipotesi di iniettività), l'intervallo $[\gamma, \delta]$ **non è necessariamente unico**.
> 
> Infatti, se $\varphi$ non è iniettiva, le equazioni:
> $$
> \varphi(\gamma) = c, \qquad \varphi(\delta) = d
> $$
> possono ammettere molteplici soluzioni distinte in $[\alpha, \beta]$. Ciascuna coppia di soluzioni $(\gamma, \delta)$ fornirà comunque lo stesso valore numerico dell'integrale, ma la scelta dei nodi non è univoca.

> [!proposition] Caso di sostituzione con diffeomorfismo (Funzione biunivoca / invertibile)
> Se la funzione di cambio di variabile $\varphi: [\alpha, \beta] \to [c, d]$ è **biunivoca** (strettamente monotona) e di classe $C^1([\alpha, \beta])$ con derivata $\varphi'(t) \neq 0$ (diffeomorfismo), allora la funzione inversa $\varphi^{-1}: [c, d] \to [\alpha, \beta]$ esiste ed è univocamente determinata.
> 
> In tal caso gli estremi di integrazione della nuova variabile $t$ sono unici:
> $$
> \gamma = \varphi^{-1}(c), \qquad \delta = \varphi^{-1}(d)
> $$
> e la formula fondamentale di sostituzione assume la forma standard:
> $$
> \int_c^d f(x) \, dx = \int_{\varphi^{-1}(c)}^{\varphi^{-1}(d)} f(\varphi(t)) \varphi'(t) \, dt
> $$
>
## 7.5. Integrazione delle funzioni razionali e applicazioni geometriche

### Calcolo della Lunghezza di una Curva Regolare ($C^1$)

Una delle applicazioni geometriche più rilevanti dell'integrale di Riemann consiste nella rettificazione delle curve piane, ovvero nel calcolo rigoroso della lunghezza del grafico di una funzione regolare.

> [!theorem] Lunghezza del grafico di una funzione regolare
> Sia $f: [a, b] \to \mathbb{R}$ una funzione di classe $C^1([a, b])$ (ovvero derivabile con derivata prima $f'$ continua su $[a, b]$). Allora il grafico della funzione $\Gamma_f = \{(x, f(x)) \in \mathbb{R}^2 : x \in [a, b]\}$ è una curva rettificabile e la sua lunghezza $\ell$ nell'intervallo $[a, b]$ è data da:
> $$
> \ell = \int_a^b \sqrt{1 + [f'(x)]^2} \, dx
> $$

> [!quote]- Dimostrazione
> L'idea geometrica della dimostrazione consiste nell'approssimare la curva mediante una spezzata poligonale inscritta e calcolarne la lunghezza al tendere a zero del passo della suddivisione.
>
> Sia data una generica partizione $\mathcal{P}$ dell'intervallo $[a, b]$:
> $$
> \mathcal{P} = \{x_0, x_1, x_2, \dots, x_n\} \quad \text{con } a = x_0 < x_1 < x_2 < \dots < x_n = b
> $$
> A ciascun nodo $x_i$ corrisponde sulla curva il punto nel piano:
> $$
> P_i := (x_i, f(x_i)) \in \mathbb{R}^2, \quad \forall i = 0, 1, \dots, n
> $$
> Si congiungano i punti consecutivi $P_{i-1}$ e $P_i$ mediante segmenti rettilinei, ottenendo una spezzata poligonale inscritta nella curva. La lunghezza complessiva $\ell(\mathcal{P})$ di tale spezzata è la somma delle distanze euclidee tra punti consecutivi:
> $$
> \ell(\mathcal{P}) = \sum_{i=1}^n |P_i - P_{i-1}| = \sum_{i=1}^n \sqrt{(x_i - x_{i-1})^2 + [f(x_i) - f(x_{i-1})]^2}
> $$
> Poiché per ipotesi $f$ è derivabile sull'intervallo aperto $(a, b)$ e continua su ciascun sottointervallo chiuso $[x_{i-1}, x_i]$, è possibile applicare il Teorema del Valor Medio di Lagrange alla funzione $f$ in ogni singolo intervallo $[x_{i-1}, x_i]$:
> $$
> \exists c_i \in (x_{i-1}, x_i) : f(x_i) - f(x_{i-1}) = f'(c_i)(x_i - x_{i-1})
> $$
> Sostituendo tale incremento nell'espressione della distanza tra $P_{i-1}$ e $P_i$:
> $$
> \begin{align}
> \ell(\mathcal{P}) &= \sum_{i=1}^n \sqrt{(x_i - x_{i-1})^2 + \left[ f'(c_i)(x_i - x_{i-1}) \right]^2} \\
> &= \sum_{i=1}^n \sqrt{(x_i - x_{i-1})^2 \left( 1 + [f'(c_i)]^2 \right)}
> \end{align}
> $$
> Essendo $x_i > x_{i-1}$ per definizione di partizione ordinata, si ha $|x_i - x_{i-1}| = x_i - x_{i-1} > 0$. Portando fuori dal segno di radice:
> $$
> \ell(\mathcal{P}) = \sum_{i=1}^n (x_i - x_{i-1}) \sqrt{1 + [f'(c_i)]^2}
> $$
> Si consideri ora la funzione ausiliaria $g: [a, b] \to \mathbb{R}$ definita da:
> $$
> g(x) := \sqrt{1 + [f'(x)]^2}
> $$
> L'espressione ottenuta per $\ell(\mathcal{P})$ coincide esattamente con una **somma di Riemann** per la funzione $g(x)$ relativa alla partizione $\mathcal{P}$ con punti campione $c_i \in [x_{i-1}, x_i]$:
> $$
> \ell(\mathcal{P}) = \sum_{i=1}^n g(c_i) \, \Delta x_i, \qquad \Delta x_i := x_i - x_{i-1}
> $$
> Poiché per ipotesi $f \in C^1([a, b])$, la derivata $f'(x)$ è una funzione continua su $[a, b]$. Essendo la composizione di funzioni continue ($t \mapsto \sqrt{1+t^2}$) ancora continua, ne consegue che la funzione integranda $g(x)$ è **continua** sull'intervallo compatto $[a, b]$.
>
> Per il Teorema di integrabilità delle funzioni continue, $g(x)$ è integrabile secondo Riemann su $[a, b]$, e al tendere del diametro della partizione a zero ($|\mathcal{P}| := \max_i \Delta x_i \to 0$) le somme di Riemann convergono all'integrale definito:
> $$
> \ell = \lim_{|\mathcal{P}| \to 0} \ell(\mathcal{P}) = \lim_{|\mathcal{P}| \to 0} \sum_{i=1}^n (x_i - x_{i-1}) g(c_i) = \int_a^b g(x) \, dx
> $$
> Sostituendo la definizione di $g(x)$, si ottiene la tesi:
> $$
> \ell = \int_a^b \sqrt{1 + [f'(x)]^2} \, dx
> $$
> $\blacksquare$

> [!example] Calcolo della lunghezza della circonferenza unitaria
> Si consideri l'equazione della circonferenza goniometrica unitaria con centro nell'origine:
> $$
> x^2 + y^2 = 1
> $$
> Per simmetria rispetto all'asse delle ascisse, è sufficiente calcolare la lunghezza della semicirconferenza superiore ed esplicitare $y$:
> $$
> y = f(x) = \sqrt{1 - x^2}, \quad x \in [-1, 1]
> $$
> La funzione $f$ è continua nell'intervallo chiuso $[-1, 1]$, ed è derivabile nei punti interni $x \in (-1, 1)$. La derivata prima vale:
> $$
> f'(x) = \frac{-2x}{2\sqrt{1-x^2}} = -\frac{x}{\sqrt{1-x^2}}, \quad \forall x \in (-1, 1)
> $$
> Si nota che $f'(x)$ presenta due singolarità agli estremi:
> $$
> \lim_{x \to 1^-} f'(x) = -\infty, \qquad \lim_{x \to -1^+} f'(x) = +\infty
> $$
> Dunque $f$ **non è derivabile** in $x = \pm 1$ e la tangente alla circonferenza è verticale.
> 
> Per applicare la formula della lunghezza evitando le singolarità, si restringe il dominio all'intervallo compatto $[-1+\varepsilon, 1-\varepsilon]$ con $\varepsilon > 0$ sufficientemente piccolo, per poi passare al limite per $\varepsilon \to 0^+$ (introducendo concettualmente il calcolo di un integrale improprio).
> 
> Calcolo del radicando:
> $$
> 1 + [f'(x)]^2 = 1 + \left( -\frac{x}{\sqrt{1-x^2}} \right)^2 = 1 + \frac{x^2}{1-x^2} = \frac{1-x^2 + x^2}{1-x^2} = \frac{1}{1-x^2}
> $$
> La lunghezza della semicirconferenza vale dunque:
> $$
> \begin{align}
> \ell_{\text{semi}} &= \int_{-1}^1 \sqrt{1 + [f'(x)]^2} \, dx \\
> &:= \lim_{\varepsilon \to 0^+} \int_{-1+\varepsilon}^{1-\varepsilon} \sqrt{\frac{1}{1-x^2}} \, dx \\
> &= \lim_{\varepsilon \to 0^+} \int_{-1+\varepsilon}^{1-\varepsilon} \frac{1}{\sqrt{1-x^2}} \, dx
> \end{align}
> $$
> Riconoscendo la derivata fondamentale di $\arcsin x$:
> $$
> \int \frac{1}{\sqrt{1-x^2}} \, dx = \arcsin x + C
> $$
> Si calcola l'integrale definito:
> $$
> \ell_{\text{semi}} = \lim_{\varepsilon \to 0^+} \Big[ \arcsin x \Big]_{-1+\varepsilon}^{1-\varepsilon} = \lim_{\varepsilon \to 0^+} \left( \arcsin(1-\varepsilon) - \arcsin(-1+\varepsilon) \right)
> $$
> Sfruttando la continuità della funzione arcoseno su tutto il dominio $[-1, 1]$:
> $$
> \ell_{\text{semi}} = \arcsin(1) - \arcsin(-1) = \frac{\pi}{2} - \left( -\frac{\pi}{2} \right) = \frac{\pi}{2} + \frac{\pi}{2} = \pi
> $$
> Moltiplicando per $2$ per includere la semicirconferenza inferiore, si ritrova analiticamente la formula classica:
> $$
> \ell_{\text{tot}} = 2 \cdot \ell_{\text{semi}} = 2\pi
> $$
>
**Cenni di Integrazione Numerica**

In innumerevoli problemi applicativi della fisica e dell'ingegneria ci si trova a dover calcolare integrali definiti di funzioni che **non ammettono primitive esprimibili in termini di funzioni elementari** (ad esempio $f(x) = e^{-x^2}$, $\frac{\sin x}{x}$, $\frac{1}{\sqrt{1-x^4}}$), oppure funzioni note soltanto per via campionaria o sperimentale. In tali contesti si ricorre a metodi di approssimazione numerica (quadratura numerica).

**1. Metodo dei Rettangoli (Somme di Riemann a Sinistra)**

Si consideri una funzione $f: [a, b] \to \mathbb{R}$ continua su $[a, b]$. Si suddivide l'intervallo $[a, b]$ in $n$ sottointervalli congruenti di ampiezza uniforme:
$$
h := \frac{b-a}{n} = |\mathcal{P}|
$$
I punti di suddivisione sono dati da $x_i = a + i \cdot \frac{b-a}{n}$ per $i = 0, 1, \dots, n$.

Scegliendo come altezza del rettangolo il valore della funzione nell'estremo sinistro di ciascun sottointervallo $[x_i, x_{i+1}]$, si definisce la somma rettangolare:
$$
S_n := \frac{b-a}{n} \sum_{i=0}^{n-1} f(x_i)
$$
Tale valore approssima l'area sottesa al grafico della funzione $f(x)$.

> [!theorem] Stima dell'errore per il metodo dei rettangoli
> Sia $f: [a, b] \to \mathbb{R}$ una funzione continua e derivabile su $[a, b]$, con derivata prima limitata da una costante $M \in \mathbb{R}$:
> $$
> |f'(x)| \le M, \quad \forall x \in [a, b]
> $$
> Allora l'errore di approssimazione $E_n$ commesso sostituendo l'integrale definito con la somma $S_n$ soddisfa la maggiorazione:
> $$
> E_n := \left| \int_a^b f(x) \, dx - S_n \right| \le \frac{M(b-a)^2}{2n}, \quad \forall n \in \mathbb{N}
> $$

> [!note] Velocità di convergenza del metodo dei rettangoli
> La stima dell'errore mostra che $E_n = \mathcal{O}(1/n)$. Dunque per dimezzare l'errore è necessario raddoppiare il numero $n$ di sottointervalli, rendendo la convergenza asintoticamente lenta.
>
**2. Metodi di Ordine Superiore: Trapezi e Cavalieri-Simpson**

Per velocizzare la convergenza dell'approssimazione numerica si introducono formule di quadratura che sostituiscono la funzione a gradini con interpolazioni polinomiali di grado superiore:

1. **Metodo dei Trapezi (Interpolazione Lineare a Tratti):**
   Invece di approssimare la regione con rettangoli, si approssima il grafico con la corda che congiunge $(x_i, f(x_i))$ a $(x_{i+1}, f(x_{i+1}))$, formando dei trapezi. La formula vale:
   $$
   T_n = \frac{b-a}{2n} \left[ f(x_0) + 2 \sum_{i=1}^{n-1} f(x_i) + f(x_n) \right]
   $$
   Se $f \in C^2([a, b])$ con $|f''(x)| \le M_2$, l'errore decade come $\mathcal{O}(1/n^2)$:
   $$
   E_n^{\text{trap}} \le \frac{M_2 (b-a)^3}{12 n^2}
   $$

2. **Metodo di Cavalieri-Simpson (Interpolazione Parabolica):**
   Si suddivide l'intervallo in un numero pari $n$ di sottointervalli. Su ogni coppia di intervalli consecutivi si interpola la funzione mediante un **arco di parabola** (polinomio di secondo grado) passante per tre punti: i due estremi e il nodo centrale (corrispondente al punto medio).
   
   La formula composita di Cavalieri-Simpson assume la forma:
   $$
   I_n = \frac{b-a}{3n} \left[ f(x_0) + 4 \sum_{i=1, 3, 5, \dots}^{n-1} f(x_i) + 2 \sum_{i=2, 4, 6, \dots}^{n-2} f(x_i) + f(x_n) \right]
   $$
   
   > [!theorem] Stima dell'errore di Cavalieri-Simpson
   > Se $f \in C^4([a, b])$ e $|f^{(4)}(x)| \le M$ per ogni $x \in [a, b]$, l'errore di quadratura soddisfa:
   > $$
   > E_n^{\text{Simpson}} \le \frac{M(b-a)^5}{180 n^4}
   > $$
   > L'errore decade con la quarta potenza di $n$ ($\mathcal{O}(1/n^4)$), garantendo una convergenza straordinariamente rapida.

## 7.6. Integrali impropri (generalizzati) e criteri di convergenza

La teoria dell'integrale di Riemann è stata sviluppata finora sotto due vincoli strutturali irrinunciabili:
1. L'intervallo di integrazione $[a, b]$ deve essere **chiuso e limitato** (compatto);
2. La funzione integranda $f: [a, b] \to \mathbb{R}$ deve essere **limitata** su $[a, b]$.

Quando viene meno almeno una di queste due ipotesi, l'integrale di Riemann standard non è applicabile direttamente. Si introduce pertanto la nozione di **integrale improprio (o generalizzato)**, definita rigorosamente mediante il passaggio al limite di integrali di Riemann ordinari.

### Integrali Impropri su Intervalli Limitati (Funzione Illimitata — Asintoto Verticale)

Si consideri il caso in cui l'intervallo $[a, b]$ è limitato, ma la funzione diverge in corrispondenza di uno degli estremi (presenza di un asintoto verticale).

**Studio del Prototipo Fondamentale in $x \to 0^+$**

Si consideri la famiglia di funzioni:
$$
f(x) = \frac{1}{x^\alpha}, \quad \alpha > 0, \quad x \in (0, 1]
$$
La funzione è continua su ogni intervallo $[\varepsilon, 1]$ con $\varepsilon \in (0, 1)$, ma è illimitata per $x \to 0^+$, poiché $\lim_{x \to 0^+} \frac{1}{x^\alpha} = +\infty$.

Ci si domanda se l'area della regione sottesa al grafico nell'intervallo $(0, 1]$ sia finita. Si calcola l'integrale definito nell'intervallo compatto $[\varepsilon, 1]$ al variare di $\varepsilon > 0$:
$$
Q_\varepsilon := \int_\varepsilon^1 \frac{1}{x^\alpha} \, dx
$$
Si distinguono due casi in base al valore del parametro $\alpha$:

- **Se $\alpha = 1$:**
  $$
  Q_\varepsilon = \int_\varepsilon^1 \frac{1}{x} \, dx = \Big[ \ln|x| \Big]_\varepsilon^1 = \ln(1) - \ln(\varepsilon) = -\ln(\varepsilon)
  $$
- **Se $\alpha \neq 1$:**
  $$
  Q_\varepsilon = \int_\varepsilon^1 x^{-\alpha} \, dx = \left[ \frac{x^{1-\alpha}}{1-\alpha} \right]_\varepsilon^1 = \frac{1^{1-\alpha} - \varepsilon^{1-\alpha}}{1-\alpha} = \frac{1 - \varepsilon^{1-\alpha}}{1-\alpha}
  $$

Si studia ora il comportamento al limite per $\varepsilon \to 0^+$:
$$
Q = \lim_{\varepsilon \to 0^+} Q_\varepsilon = \lim_{\varepsilon \to 0^+} \int_\varepsilon^1 \frac{1}{x^\alpha} \, dx
$$
Analizzando i tre sottocasi:
1. **Se $\alpha > 1$:** l'esponente $1 - \alpha < 0$. Dunque $\varepsilon^{1-\alpha} = \frac{1}{\varepsilon^{\alpha-1}} \to +\infty$ quando $\varepsilon \to 0^+$. Poiché il denominatore $1 - \alpha < 0$, si ha:
   $$
   \lim_{\varepsilon \to 0^+} \frac{1 - \varepsilon^{1-\alpha}}{1-\alpha} = +\infty
   $$
2. **Se $\alpha = 1$:**
   $$
   \lim_{\varepsilon \to 0^+} (-\ln \varepsilon) = -(-\infty) = +\infty
   $$
3. **Se $\alpha < 1$:** l'esponente $1 - \alpha > 0$, pertanto $\lim_{\varepsilon \to 0^+} \varepsilon^{1-\alpha} = 0$. Il limite vale:
   $$
   \lim_{\varepsilon \to 0^+} \frac{1 - \varepsilon^{1-\alpha}}{1-\alpha} = \frac{1}{1-\alpha} \in \mathbb{R}
   $$

Riassumendo:
$$
\int_0^1 \frac{1}{x^\alpha} \, dx = \begin{cases} \dfrac{1}{1-\alpha} & \text{se } \alpha < 1 \quad (\text{Integrale convergente / Area finita}) \\[8pt] +\infty & \text{se } \alpha \ge 1 \quad (\text{Integrale divergente / Area infinita}) \end{cases}
$$

> [!note] Dipendenza dalla velocità di divergenza
> L'area sottesa al grafico nell'intorno dell'origine è finita se e solo se la funzione non cresce troppo rapidamente all'avvicinarsi a zero ($\alpha < 1$). Se l'asintoto è di ordine pari o superiore a $1$ ($\alpha \ge 1$), la regione intrappolata sotto la curva accumula un'area infinita.
>
**Definizioni Formali per Singolarità al Finito**

> [!definition] Integrale improprio su $(a, b]$ (Singolarità all'estremo sinistro)
> Sia $f: (a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su ciascun intervallo $[a+\varepsilon, b]$ per ogni $\varepsilon \in (0, b-a)$.
> Si dice che $f$ è **integrabile in senso improprio (o generalizzato)** su $(a, b]$ se esiste ed è **finito** il limite:
> $$
> \lim_{\varepsilon \to 0^+} \int_{a+\varepsilon}^b f(x) \, dx \in \mathbb{R}
> $$
> In tal caso si definisce l'integrale improprio ponendo:
> $$
> \int_a^b f(x) \, dx := \lim_{\varepsilon \to 0^+} \int_{a+\varepsilon}^b f(x) \, dx
> $$
> Se il limite esiste ed è pari a $\pm\infty$, si dice che l'integrale improprio **diverge**. Se il limite non esiste, si dice che l'integrale è **indeterminato** (o oscillante).

> [!definition] Integrale improprio su $[a, b)$ (Singolarità all'estremo destro)
> Sia $f: [a, b) \to \mathbb{R}$ una funzione integrabile su $[a, b-\varepsilon]$ per ogni $\varepsilon \in (0, b-a)$.
> Si dice che $f$ è integrabile in senso improprio su $[a, b)$ se esiste finito il limite:
> $$
> \int_a^b f(x) \, dx := \lim_{\varepsilon \to 0^+} \int_a^{b-\varepsilon} f(x) \, dx \in \mathbb{R}
> $$

> [!proposition] Generalizzazione del campione fondamentale con polo in $x_0$
> Siano $x_0 < x_1$ numeri reali e sia $\alpha > 0$. L'integrale improprio:
> $$
> \int_{x_0}^{x_1} \frac{1}{(x - x_0)^\alpha} \, dx
> $$
> converge se e solo se $\alpha < 1$, mentre diverge a $+\infty$ se e solo se $\alpha \ge 1$.
> Analogamente, per un polo nell'estremo destro:
> $$
> \int_{x_0}^{x_1} \frac{1}{(x_1 - x)^\alpha} \, dx \quad \text{converge} \iff \alpha < 1, \quad \text{diverge} \iff \alpha \ge 1
> $$
>
### Integrali Impropri su Intervalli Illimitati (Semirette $[a, +\infty)$ e $(-\infty, b]$)

Si consideri ora il secondo tipo fondamentale di integrale improprio, in cui la funzione è integrabile su ogni intervallo limitato, ma l'intervallo di integrazione si estende all'infinito.

**Studio del Prototipo Fondamentale in $[1, +\infty)$**

Si consideri la funzione:
$$
f(x) = \frac{1}{x^\alpha}, \quad \alpha > 0, \quad x \in [1, +\infty)
$$
Per ogni $M > 1$, la funzione è continua sull'intervallo compatto $[1, M]$, e l'area della regione approssimata vale:
$$
Q_M := \int_1^M \frac{1}{x^\alpha} \, dx
$$
Distinguendo i due casi:
- **Se $\alpha = 1$:**
  $$
  Q_M = \int_1^M \frac{1}{x} \, dx = \Big[ \ln|x| \Big]_1^M = \ln M - \ln 1 = \ln M
  $$
- **Se $\alpha \neq 1$:**
  $$
  Q_M = \int_1^M x^{-\alpha} \, dx = \left[ \frac{x^{1-\alpha}}{1-\alpha} \right]_1^M = \frac{M^{1-\alpha} - 1}{1-\alpha}
  $$

Calcolando il limite per $M \to +\infty$:
$$
Q = \lim_{M \to +\infty} \int_1^M \frac{1}{x^\alpha} \, dx
$$
Analizzando i casi al variare di $\alpha$:
1. **Se $\alpha < 1$:** l'esponente $1 - \alpha > 0$, dunque $M^{1-\alpha} \to +\infty$ per $M \to +\infty$. Essendo $1 - \alpha > 0$:
   $$
   \lim_{M \to +\infty} \frac{M^{1-\alpha}-1}{1-\alpha} = +\infty
   $$
2. **Se $\alpha = 1$:**
   $$
   \lim_{M \to +\infty} \ln M = +\infty
   $$
3. **Se $\alpha > 1$:** l'esponente $1 - \alpha < 0$. Riscrivendo la frazione:
   $$
   \frac{M^{1-\alpha} - 1}{1-\alpha} = \frac{1 - M^{-(\alpha-1)}}{\alpha - 1} = \frac{1 - \frac{1}{M^{\alpha-1}}}{\alpha - 1}
   $$
   Poiché $\alpha - 1 > 0$, al tendere di $M \to +\infty$ si ha $\frac{1}{M^{\alpha-1}} \to 0$. Dunque:
   $$
   \lim_{M \to +\infty} \frac{1 - \frac{1}{M^{\alpha-1}}}{\alpha - 1} = \frac{1}{\alpha - 1} \in \mathbb{R}
   $$

Riassumendo:
$$
\int_1^{+\infty} \frac{1}{x^\alpha} \, dx = \begin{cases} \dfrac{1}{\alpha - 1} & \text{se } \alpha > 1 \quad (\text{Integrale convergente / Area finita}) \\[8pt] +\infty & \text{se } \alpha \le 1 \quad (\text{Integrale divergente / Area infinita}) \end{cases}
$$

> [!important] Confronto cruciale tra singolarità al finito e all'infinito
> Si osservi attentamente la perfetta dualità rovesciata tra i due comportamenti:
> - $\int_0^1 \frac{1}{x^\alpha} \, dx$ converge $\iff \alpha < 1$ (la funzione deve divergere sufficientemente piano);
> - $\int_1^{+\infty} \frac{1}{x^\alpha} \, dx$ converge $\iff \alpha > 1$ (la funzione deve decadere a zero sufficientemente in fretta).
> 
> In entrambi i casi, il valore critico di separazione è $\alpha = 1$, corrispondente alla funzione iperbolica $1/x$, il cui integrale diverge **in entrambi i contesti** ($\int_0^1 \frac{1}{x} dx = +\infty$ e $\int_1^{+\infty} \frac{1}{x} dx = +\infty$).
>
**Definizioni Formali su Semirette Illimitate**

> [!definition] Integrale improprio su $[a, +\infty)$
> Sia $f: [a, +\infty) \to \mathbb{R}$ una funzione integrabile secondo Riemann su ogni intervallo limitato $[a, M]$ con $M > a$.
> Si dice che $f$ è **integrabile in senso improprio** su $[a, +\infty)$ se esiste ed è **finito** il limite:
> $$
> \lim_{M \to +\infty} \int_a^M f(x) \, dx \in \mathbb{R}
> $$
> In tal caso si pone:
> $$
> \int_a^{+\infty} f(x) \, dx := \lim_{M \to +\infty} \int_a^M f(x) \, dx
> $$
> Se il limite esiste infinito, si dice che l'integrale **diverge**.

> [!definition] Integrale improprio su $(-\infty, b]$ e su $(-\infty, +\infty)$
> 1. Per una semiretta negativa $(-\infty, b]$:
>    $$
>    \int_{-\infty}^b f(x) \, dx := \lim_{M \to +\infty} \int_{-M}^b f(x) \, dx
>    $$
> 2. Per l'intera retta reale $\mathbb{R} = (-\infty, +\infty)$, fissato un qualsiasi punto intermedio $c \in \mathbb{R}$ (tipicamente $c = 0$):
>    $$
>    \int_{-\infty}^{+\infty} f(x) \, dx := \int_{-\infty}^c f(x) \, dx + \int_c^{+\infty} f(x) \, dx
>    $$
>    L'integrale complessivo converge se e solo se entrambi gli integrali impropri convergono indipendentemente.
>
**Proprietà Notevoli e Controesempi all'Infinito**

> [!warning] La convergenza dell'integrale $\int_a^{+\infty} f(x) dx$ NON implica che $\lim_{x \to +\infty} f(x) = 0$
> Nelle serie numeriche $\sum a_n$, la condizione $\lim_{n \to \infty} a_n = 0$ è una condizione necessaria elementare per la convergenza.
> 
> Per gli integrali impropri su intervalli illimitati, tale condizione **NON è necessaria**: l'esistenza finita dell'integrale improprio:
> $$
> \int_a^{+\infty} f(x) \, dx < +\infty
> $$
> **non garantisce affatto** che la funzione tenda a zero all'infinito, e nemmeno che il limite esista!

> [!example] Controesempio dei picchi triangolari (Denti di sega)
> Si costruisce esplicitamente una funzione $f: [0, +\infty) \to \mathbb{R}$ continua, non negativa, tale che l'integrale improprio $\int_0^{+\infty} f(x) \, dx$ converga, ma per la quale $\lim_{x \to +\infty} f(x)$ non esista.
> 
> Per ogni intero $n \ge 1$, si costruisce attorno al punto $x = n$ un triangolo isoscele con vertice in $(n, 1)$ (altezza costante $h = 1$) e base di lunghezza:
> $$
> b_n = \frac{2}{n^2}
> $$
> Al di fuori di tali intervalli di base $\left[ n - \frac{1}{n^2}, n + \frac{1}{n^2} \right]$ (resi disgiunti scegliendo $n$ sufficientemente grande, ad esempio per ogni $n \ge 2$ essendo $\frac{1}{n^2} < \frac{1}{2}$), si pone la funzione identicamente nulla: $f(x) = 0$.
> 
> L'area $Q_n$ del singolo triangolo $n$-esimo è data dalla formula elementare:
> $$
> Q_n = \frac{b_n \cdot h}{2} = \frac{\frac{2}{n^2} \cdot 1}{2} = \frac{1}{n^2}
> $$
> Dunque:
> $$
> Q_1 = 1, \quad Q_2 = \frac{1}{4}, \quad Q_3 = \frac{1}{9}, \quad \dots, \quad Q_n = \frac{1}{n^2}
> $$
> L'integrale della funzione sull'intervallo $[0, N]$ coincide con la somma delle aree dei primi $N$ triangoli:
> $$
> \int_0^N f(x) \, dx = \sum_{k=1}^N Q_k = \sum_{k=1}^N \frac{1}{k^2}
> $$
> Mandando $N \to +\infty$:
> $$
> \int_0^{+\infty} f(x) \, dx = \lim_{N \to +\infty} \sum_{k=1}^N \frac{1}{k^2} = \sum_{k=1}^\infty \frac{1}{k^2} = \frac{\pi^2}{6} < +\infty
> $$
> L'integrale improprio dunque **esiste ed è finito**.
> 
> Tuttavia, valutando la funzione sui punti interi $x_n = n$:
> $$
> f(n) = 1, \quad \forall n \in \mathbb{N} \implies \limsup_{x \to +\infty} f(x) \ge 1
> $$
> mentre sui punti intermedi tra un triangolo e l'altro la funzione vale $0$. Ne segue che:
> $$
> \lim_{x \to +\infty} f(x) \quad \text{non esiste (e in particolare non tende a 0)}
> $$
>
### Criteri di Convergenza per Funzioni Positive (Criterio del Confronto)

Spesso determinare la primitiva analitica di una funzione integranda è proibitivo o impossibile. Per stabilire se un integrale improprio converge o diverge si utilizzano dei teoremi di confronto, validi per funzioni a **segno costante** (funzioni non negative).

> [!theorem] Teorema del confronto per integrali impropri
> 
> #### 1. Caso di singolarità al finito (Intervallo $(a, b]$)
> Siano $f, g: (a, b] \to \mathbb{R}$ due funzioni integrabili su $[a+\varepsilon, b]$ per ogni $\varepsilon \in (0, b-a)$.
> Si supponga che le funzioni siano a **termini non negativi** e ordinate:
> $$
> 0 \le f(x) \le g(x), \quad \forall x \in (a, x_0)
> $$
> per un opportuno intorno destro $x_0 \in (a, b]$. Allora:
> - **Convergenza del maggiorante $\implies$ Convergenza del minorante:**
>   $$
>   \text{Se } g \text{ è integrabile in senso improprio su } (a, b] \implies f \text{ è integrabile in senso improprio su } (a, b]
>   $$
> - **Divergenza del minorante $\implies$ Divergenza del maggiorante:**
>   $$
>   \text{Se } f \text{ NON è integrabile in senso improprio su } (a, b] \implies g \text{ NON è integrabile in senso improprio su } (a, b]
>   $$
> 
> #### 2. Caso di intervallo illimitato (Semiretta $[a, +\infty)$)
> Siano $f, g: [a, +\infty) \to \mathbb{R}$ due funzioni integrabili su ciascun intervallo compatto $[a, b]$ per ogni $b > a$.
> Si supponga che definitivamente all'infinito:
> $$
> 0 \le f(x) \le g(x), \quad \forall x \ge x_0
> $$
> per un opportuno $x_0 \ge a$. Allora:
> - **Maggiorante convergente:**
>   $$
>   \int_a^{+\infty} g(x) \, dx < +\infty \implies \int_a^{+\infty} f(x) \, dx < +\infty
>   $$
> - **Minorante divergente:**
>   $$
>   \int_a^{+\infty} f(x) \, dx = +\infty \implies \int_a^{+\infty} g(x) \, dx = +\infty
>   $$

> [!quote]- Dimostrazione
> Si dimostra il caso $[a, +\infty)$ (il caso al finito è formalmente identico).
> Si considerino le funzioni integrali:
> $$
> F(M) := \int_a^M f(x) \, dx, \qquad G(M) := \int_a^M g(x) \, dx, \quad \text{per } M \ge a
> $$
> Poiché per ipotesi $f(x) \ge 0$ e $g(x) \ge 0$, le funzioni integrali $F(M)$ e $G(M)$ sono **monotone crescenti** rispetto a $M$. Per il teorema sul limite delle funzioni monotone, il limite per $M \to +\infty$ esiste sempre, finito o pari a $+\infty$:
> $$
> \lim_{M \to +\infty} F(M) = \sup_{M \ge a} F(M), \qquad \lim_{M \to +\infty} G(M) = \sup_{M \ge a} G(M)
> $$
> Per la proprietà di monotonia dell'integrale di Riemann, poiché $f(x) \le g(x)$ per ogni $x \ge x_0$:
> $$
> F(M) \le G(M) + C, \quad \forall M \ge x_0
> $$
> dove $C = \int_a^{x_0} |f(x) - g(x)| dx$ è una costante finita.
> 1. Se $\lim_{M \to +\infty} G(M) = L \in \mathbb{R}$, allora $F(M)$ è superiormente limitata da $L + C$, e dunque ammette limite finito: $\int_a^{+\infty} f(x) dx < +\infty$.
> 2. Se $\lim_{M \to +\infty} F(M) = +\infty$, per il teorema del confronto tra limiti deve necessariamente valere $\lim_{M \to +\infty} G(M) = +\infty$. $\blacksquare$

> [!example] Esempi Applicativi ed Esercizi Guidati sul Criterio del Confronto

> [!example] Esercizio 1: Studio della convergenza con maggiorazione trigonometria
> Si consideri la funzione:
> $$
> f(x) = \frac{4 - 2\sin^2\left(\frac{x^2+3}{x^2+1}\right)}{x^5 + 3x^7}
> $$
> Si verifichi se $f$ è integrabile in senso improprio sull'intervallo illimitato $[1, +\infty)$.
> 
> **Risoluzione:**
> 1. **Verifica della positività della funzione:**
>    Poiché la funzione seno al quadrato assume valori compresi nell'intervallo $[0, 1]$:
>    $$
>    \sin^2\left(\frac{x^2+3}{x^2+1}\right) \in [0, 1] \implies 0 \le 2\sin^2\left(\frac{x^2+3}{x^2+1}\right) \le 2
>    $$
>    Il numeratore è pertanto strettamente positivo:
>    $$
>    4 - 2\sin^2\left(\frac{x^2+3}{x^2+1}\right) \ge 4 - 2 = 2 > 0
>    $$
>    Il denominatore $x^5 + 3x^7 > 0$ per ogni $x \ge 1$. Dunque $f(x) \ge 0$ per ogni $x \ge 1$.
> 
> 2. **Costruzione della catena di disuguaglianze:**
>    Maggiorando il numeratore con il suo valore massimo ($4$) e minorando il denominatore trascurando il termine positivo $x^5$:
>    $$
>    f(x) \le \frac{4}{x^5 + 3x^7} \le \frac{4}{3x^7} =: g(x), \quad \forall x \ge 1
>    $$
> 
> 3. **Conclusione per confronto:**
>    La funzione maggiorante $g(x) = \frac{4}{3} \cdot \frac{1}{x^7}$ è un integrale improprio notevole del tipo $\frac{1}{x^\alpha}$ con $\alpha = 7 > 1$, ed è pertanto integrabile in senso improprio su $[1, +\infty)$:
>    $$
>    \int_1^{+\infty} \frac{4}{3x^7} \, dx = \frac{4}{3} \left[ \frac{1}{7 - 1} \right] = \frac{4}{18} = \frac{2}{9} < +\infty
>    $$
>    Per il Teorema del Confronto, anche la funzione $f(x)$ è **integrabile in senso improprio** su $[1, +\infty)$.

> [!example] Esercizio 2: Scelta oculata del maggiorante e stime inconcludenti
> Si studi l'integrabilità in senso improprio su $[1, +\infty)$ della funzione:
> $$
> f(x) = \frac{1}{\sqrt{x} + x^2}
> $$
> 
> **Analisi del primo tentativo (Inconcludente):**
> Poiché $\sqrt{x} + x^2 > \sqrt{x}$ per ogni $x \ge 1$, si potrebbe tentare la maggiorazione:
> $$
> 0 < f(x) \le \frac{1}{\sqrt{x}}
> $$
> Tuttavia la funzione $\frac{1}{\sqrt{x}} = \frac{1}{x^{1/2}}$ corrisponde al prototipo con $\alpha = 1/2 \le 1$, il cui integrale **diverge**:
> $$
> \int_1^{+\infty} \frac{1}{\sqrt{x}} \, dx = +\infty
> $$
> Maggiorare una funzione positiva con un maggiorante divergente **non fornisce alcuna informazione** sull'integrabilità di $f$!
> 
> **Analisi del secondo tentativo (Risolutivo):**
> Si osserva che all'infinito il termine dominante al denominatore è $x^2$. Essendo $\sqrt{x} + x^2 > x^2$ per ogni $x \ge 1$, si effettua la maggiorazione corretta:
> $$
> 0 < f(x) \le \frac{1}{x^2} =: g(x), \quad \forall x \ge 1
> $$
> Poiché $\alpha = 2 > 1$, la funzione $g(x) = \frac{1}{x^2}$ è integrabile in senso improprio su $[1, +\infty)$:
> $$
> \int_1^{+\infty} \frac{1}{x^2} \, dx = 1 < +\infty
> $$
> Per il Teorema del Confronto, $f(x)$ è **integrabile in senso improprio** su $[1, +\infty)$.

> [!example] Esercizio 3: Funzione con doppia criticità (Origine e Infinito)
> Si studi l'integrabilità in senso improprio su tutto l'intervallo $(0, +\infty)$ della funzione:
> $$
> f(x) = \frac{1}{x^2 + x^3}
> $$
> 
> **Identificazione delle criticità:**
> Il dominio di continuità della funzione è $(0, +\infty)$. La funzione presenta due distinte regioni problematiche:
> 1. Per $x \to 0^+$: asintoto verticale, poiché $\lim_{x \to 0^+} f(x) = +\infty$;
> 2. Per $x \to +\infty$: intervallo di integrazione illimitato (asintoto orizzontale).
> 
> Per la proprietà di additività dell'integrale rispetto all'intervallo, si spezza il dominio in due sottointervalli mediante un punto intermedio arbitrario (ad esempio $x = 1$):
> $$
> \int_0^{+\infty} f(x) \, dx = \int_0^1 \frac{1}{x^2 + x^3} \, dx + \int_1^{+\infty} \frac{1}{x^2 + x^3} \, dx
> $$
> L'integrale complessivo converge se e solo se **entrambi** gli integrali parziali convergono.
> 
> 1. **Comportamento all'infinito ($x \in [1, +\infty)$):**
>    Per $x \ge 1$ si ha $x^2 + x^3 > x^3$, da cui:
>    $$
>    0 < f(x) < \frac{1}{x^3}, \quad \forall x \ge 1
>    $$
>    Poiché $\alpha = 3 > 1$, l'integrale $\int_1^{+\infty} \frac{1}{x^3} dx$ converge. Dunque per confronto:
>    $$
>    \int_1^{+\infty} \frac{1}{x^2 + x^3} \, dx < +\infty \quad (\text{Converge / Area Finita})
>    $$
> 
> 2. **Comportamento nell'intorno dell'origine ($x \in (0, 1]$):**
>    Per $x \in (0, 1]$ si ha $x^3 \le x^2$, da cui:
>    $$
>    x^2 + x^3 \le 2x^2, \quad \forall x \in (0, 1]
>    $$
>    Passando ai reciproci, il verso della disuguaglianza si inverte, fornendo una **minorazione**:
>    $$
>    f(x) = \frac{1}{x^2 + x^3} \ge \frac{1}{2x^2} =: g(x) > 0, \quad \forall x \in (0, 1]
>    $$
>    Si valuta l'integrale improprio del minorante $g(x)$ in un intorno destro di zero:
>    $$
>    \int_0^1 g(x) \, dx = \int_0^1 \frac{1}{2x^2} \, dx = \frac{1}{2} \lim_{\varepsilon \to 0^+} \left[ -\frac{1}{x} \right]_\varepsilon^1 = \frac{1}{2} \lim_{\varepsilon \to 0^+} \left( \frac{1}{\varepsilon} - 1 \right) = +\infty
>    $$
>    Essendo $\alpha = 2 \ge 1$, l'integrale del minorante **diverge** a $+\infty$.
>    
>    Per il Teorema del Confronto, anche l'integrale $\int_0^1 f(x) \, dx$ **diverge**:
>    $$
>    \int_0^1 \frac{1}{x^2 + x^3} \, dx = +\infty \quad (\text{Diverge / Area Infinita})
>    $$
> 
> **Conclusione:**
> Poiché il contributo nell'intorno dell'origine diverge, la funzione $f(x) = \frac{1}{x^2 + x^3}$ **non è integrabile in senso improprio** su $(0, +\infty)$ (l'integrale diverge a $+\infty$).
>
### Teorema del Confronto Asintotico per Integrali Impropri

Quando il confronto puntuale tramite disuguaglianze dirette risulta laborioso, il criterio più potente e rapido sfrutta la nozione di equivalenza asintotica locale ($\sim$) introdotta con i simboli di Landau.

> [!theorem] Teorema del confronto asintotico (Singolarità al finito)
> Siano $f, g: (a, b] \to \mathbb{R}$ due funzioni **non negative** ($f(x) \ge 0$, $g(x) \ge 0$) e integrabili secondo Riemann su ciascun intervallo $[a+\varepsilon, b]$ per ogni $\varepsilon \in (0, b-a)$.
> Si supponga inoltre che per $x \to a^+$ le due funzioni siano asintoticamente equivalenti:
> $$
> f(x) \sim g(x) \quad \text{per } x \to a^+ \quad \left( \text{ovvero } \lim_{x \to a^+} \frac{f(x)}{g(x)} = 1 \right)
> $$
> Allora le due funzioni hanno lo **stesso carattere di integrabilità**:
> $$
> \int_a^b f(x) \, dx \quad \text{converge} \iff \int_a^b g(x) \, dx \quad \text{converge}
> $$
> In modo equivalente, $\int_a^b f(x) \, dx$ diverge a $+\infty$ se e solo se $\int_a^b g(x) \, dx$ diverge a $+\infty$.
>
### Teorema del Confronto Asintotico per Integrali Impropri

> [!theorem] Teorema del confronto asintotico (Singolarità all'infinito / Intervallo illimitato)
> Siano $f, g: [a, +\infty) \to \mathbb{R}$ due funzioni **non negative** ($f(x) \ge 0$, $g(x) \ge 0$) e integrabili secondo Riemann su ciascun intervallo $[a, M]$ per ogni $M > a$ sufficientemente grande.
> Si assuma inoltre che per $x \to +\infty$ le due funzioni siano asintoticamente equivalenti:
> $$
> f(x) \sim g(x) \quad \text{per } x \to +\infty \quad \left( \text{ovvero } \lim_{x \to +\infty} \frac{f(x)}{g(x)} = 1 \right)
> $$
> Allora le due funzioni hanno lo **stesso carattere di integrabilità in senso improprio**:
> $$
> \int_a^{+\infty} f(x) \, dx \quad \text{converge} \iff \int_a^{+\infty} g(x) \, dx \quad \text{converge}
> $$
> Equivalentemente, $\int_a^{+\infty} f(x) \, dx$ diverge a $+\infty$ se e solo se $\int_a^{+\infty} g(x) \, dx$ diverge a $+\infty$.

> [!note] Osservazione: Estensione ad altre tipologie di intervallo
> Il teorema del confronto asintotico vale in modo del tutto speculare:
> - Nel caso di singolarità al finito a sinistra dell'estremo destro in intervalli limitati $[a, b)$, con $x \to b^-$;
> - Nel caso di semirette illimitate a sinistra $(-\infty, b]$, valutando il comportamento asintotico per $x \to -\infty$.

> [!note] Osservazione: Generalizzazione dell'equivalenza asintotica
> L'ipotesi di equivalenza stretta $f(x) \sim g(x)$ (limite del rapporto pari a $1$) per $x \to x_0$ (con $x_0 = a^+$, $b^-$, o $\pm\infty$) può essere generalizzata assumendo semplicemente che il limite del rapporto sia un numero reale finito e strettamente positivo:
> $$
> \lim_{x \to x_0} \frac{f(x)}{g(x)} = \ell \in (0, +\infty)
> $$
> Infatti, per definizione di limite, fissato ad esempio $\varepsilon = \frac{\ell}{2}$, esiste un intorno di $x_0$ nel quale:
> $$
> \frac{\ell}{2} g(x) \le f(x) \le \frac{3\ell}{2} g(x)
> $$
> Per il Teorema del Confronto ordinario, l'integrale improprio di $f$ converge se e solo se converge l'integrale improprio di $g$.

> [!example] Esempio (Rivisitando l'esempio precedente)
> Nell'esempio precedente si considerava nell'intorno destro di zero la funzione:
> $$
> f(x) = \frac{1}{x^2 + x^3}
> $$
> Poiché per $x \to 0^+$ si ha $x^2 + x^3 \sim x^2$, risulta immediatamente:
> $$
> f(x) \sim \frac{1}{x^2} \quad \text{per } x \to 0^+
> $$
> Essendo l'integrale notevole campione divergente:
> $$
> \int_0^1 \frac{1}{x^2} \, dx = +\infty \quad (\alpha = 2 \ge 1)
> $$
> il confronto asintotico conclude istantaneamente che:
> $$
> \int_0^1 \frac{1}{x^2 + x^3} \, dx = +\infty \quad (\text{Diverge})
> $$
>
>
### Teorema della Convergenza Assoluta per Integrali Impropri

Quando la funzione integranda cambia segno sull'intervallo di integrazione, i criteri di confronto diretto o asintotico non sono direttamente applicabili. In tal caso, lo strumento primario è costituito dalla convergenza assoluta.

> [!theorem] Teorema della Convergenza Assoluta per Integrali Impropri
> Sia $f: (a, b] \to \mathbb{R}$ una funzione integrabile secondo Riemann su ciascun intervallo compatto $[a+\varepsilon, b]$ per ogni $\varepsilon > 0$ sufficientemente piccolo.
> Si assuma che $|f(x)|$ sia integrabile in senso improprio su $(a, b]$:
> $$
> \int_a^b |f(x)| \, dx < +\infty \quad (\text{Convergenza Assoluta})
> $$
> Allora anche la funzione $f(x)$ è integrabile in senso improprio su $(a, b]$:
> $$
> \int_a^b f(x) \, dx \quad \text{converge}
> $$
> e sussiste la disuguaglianza triangolare integrale:
> $$
> \left| \int_a^b f(x) \, dx \right| \le \int_a^b |f(x)| \, dx
> $$
> Un analogo risultato sussiste per funzioni definite su intervalli illimitati $[a, +\infty)$, $(-\infty, b]$, o su intervalli limitati con singolarità destra $[a, b)$.

> [!example] Esempio 1
> Stabilire la convergenza in senso improprio su tutto $\mathbb{R}$ del seguente integrale:
> $$
> \int_{-\infty}^{+\infty} \frac{\cos(x^2 - x^3)}{1 + x^4} \, dx
> $$
> Poniamo $f(x) = \frac{\cos(x^2 - x^3)}{1 + x^4}$.
> La funzione $f$ è definita e continua su tutto $\mathbb{R}$ (il denominatore $1 + x^4 \ge 1 > 0$ non si annulla mai). Non vi sono dunque singolarità al finito; le uniche criticità risiedono all'infinito ($x \to \pm\infty$).
> Poiché la funzione coseno è limitata, $|\cos(x^2 - x^3)| \le 1$ per ogni $x \in \mathbb{R}$, otteniamo la maggiorazione in valore assoluto:
> $$
> |f(x)| = \frac{|\cos(x^2 - x^3)|}{1 + x^4} \le \frac{1}{1 + x^4}, \quad \forall x \in \mathbb{R}
> $$
> Per $x \to \pm\infty$, la funzione maggiorante è asintotica a:
> $$
> \frac{1}{1 + x^4} \sim \frac{1}{x^4}
> $$
> Poiché $\alpha = 4 > 1$, l'integrale campione:
> $$
> \int_1^{+\infty} \frac{1}{x^4} \, dx < +\infty \quad (\text{Converge})
> $$
> converge. Per il Teorema del Confronto Asintotico, anche $\int_1^{+\infty} \frac{1}{1 + x^4} \, dx < +\infty$.
> Per il Teorema del Confronto ordinario, $|f(x)|$ è integrabile in senso improprio sia in un intorno di $+\infty$ sia in un intorno di $-\infty$.
> In virtù del **Teorema della Convergenza Assoluta**, anche $f(x)$ è integrabile in senso improprio su $\mathbb{R}$:
> $$
> \int_{-\infty}^{+\infty} \frac{\cos(x^2 - x^3)}{1 + x^4} \, dx \quad \text{converge.}
> $$

> [!example] Esempio 2 (La Convergenza Assoluta è SOLO Condizione Sufficiente)
> Si consideri la funzione:
> $$
> f(x) = \begin{cases} 1 & x = 0 \\ \dfrac{\sin x}{x} & x > 0 \end{cases}
> $$
> Poiché $\lim_{x \to 0^+} \frac{\sin x}{x} = 1 = f(0)$, la funzione è continua su tutto $[0, +\infty)$. L'unico problema di integrabilità impropria è situato all'infinito ($x \to +\infty$).
> Valutando il valore assoluto della funzione:
> $$
> |f(x)| = \left| \frac{\sin x}{x} \right|, \quad \forall x > 0
> $$
> Si osserva che $|f(x)|$ presenta una successione infinita di oscillazioni positive con aree sottese a ciascun lobo proporzionali a $\frac{1}{k}$:
> $$
> \int_0^{+\infty} \left| \frac{\sin x}{x} \right| \, dx = +\infty
> $$
> Dunque $|f(x)|$ **non è integrabile in senso improprio** su $[0, +\infty)$ (non converge assolutamente).
> Tuttavia, integrando per parti si dimostra che:
> $$
> \int_0^{+\infty} \frac{\sin x}{x} \, dx = \frac{\pi}{2} \quad (\text{Integrale di Dirichlet})
> $$
> L'integrale improprio di $f(x)$ **converge** (semplicemente), grazie alle continue cancellazioni algebriche fra le aree positive e negative alternate.

> [!warning] La convergenza assoluta è una condizione SOLO SUFFICIENTE!
> Se $\int |f(x)| \, dx < +\infty$, allora $\int f(x) \, dx$ converge necessariamente.
> Il viceversa è **falso**: possono esistere funzioni non integrabili assolutamente, il cui integrale improprio converge semplicemente grazie all'alternanza di segno.
>
### Studio di un Integrale Improprio con Sviluppi Asintotici di Taylor

**Problema:**
Stabilire se converge il seguente integrale improprio:
$$
I = \int_0^{+\infty} \sqrt{x^2 + 2x + 3} \left[ e^{-\frac{1}{x}} \log\left(\frac{x+1}{x}\right) - \cos\left(\frac{x}{x^2+1}\right) + \frac{x}{x+1} \right] dx
$$

Poniamo l'integranda:
$$
f(x) := \sqrt{x^2 + 2x + 3} \left[ e^{-\frac{1}{x}} \log\left(\frac{x+1}{x}\right) - \cos\left(\frac{x}{x^2+1}\right) + \frac{x}{x+1} \right]
$$

**1. Dominio di Definizione e Continuità**
- Il radicando soddisfa $x^2 + 2x + 3 > 0$ per ogni $x \in \mathbb{R}$, poiché il discriminante $\Delta = 4 - 12 = -8 < 0$ e il coefficiente direttivo è positivo;
- L'argomento del logaritmo soddisfa $\frac{x+1}{x} = 1 + \frac{1}{x} > 1 > 0$ per ogni $x > 0$;
- I denominatori $x^2 + 1 \neq 0$ e $x + 1 \neq 0$ non si annullano per $x \in (0, +\infty)$.

Ne consegue che $f$ è definita e continua su $(0, +\infty)$.
Le regioni problematiche sono dunque due:
1. $x \to 0^+$ (potenziale asintoto verticale);
2. $x \to +\infty$ (intervallo illimitato).

**2. Comportamento Locale per $x \to 0^+$**
Analizziamo ciascun fattore dell'espressione per $x \to 0^+$:
1. $\lim_{x \to 0^+} \sqrt{x^2 + 2x + 3} = \sqrt{3}$;
2. $\lim_{x \to 0^+} \frac{x}{x+1} = \frac{0}{1} = 0$;
3. $\lim_{x \to 0^+} \cos\left(\frac{x}{x^2+1}\right) = \cos(0) = 1$;
4. Per il termine $e^{-\frac{1}{x}} \log\left(\frac{x+1}{x}\right)$:
   ponendo $y = \frac{1}{x} \to +\infty$, si ha $e^{-\frac{1}{x}} = e^{-y}$ e $\log\left(1 + \frac{1}{x}\right) = \log(1+y)$.
   Per la gerarchia degli infiniti:
   $$
   \lim_{x \to 0^+} e^{-\frac{1}{x}} \log\left(\frac{x+1}{x}\right) = \lim_{y \to +\infty} \frac{\log(1+y)}{e^y} = 0^+
   $$
Unendo i singoli limiti:
$$
\lim_{x \to 0^+} f(x) = \sqrt{3} \cdot [0 - 1 + 0] = -\sqrt{3}
$$
Poiché il limite è finito, la funzione $f(x)$ **si può estendere per continuità** in $x = 0$ ponendo $f(0) := -\sqrt{3}$.
Ne consegue che $f$ è limitata nell'intorno destro dell'origine:
$$
\int_0^\varepsilon f(x) \, dx \quad \text{non è improprio per alcun } \varepsilon > 0
$$
(si tratta di un ordinario integrale di Riemann di una funzione continua e limitata).

**3. Comportamento Asintotico per $x \to +\infty$**
Dobbiamo determinare l'ordine di infinitesimo dell'espressione entro le parentesi quadre per $x \to +\infty$.
Effettuiamo la sostituzione:
$$
t := \frac{1}{x} \to 0^+ \quad \text{per } x \to +\infty
$$

- **Primo termine:**
  $$
  e^{-\frac{1}{x}} \log\left(\frac{x+1}{x}\right) = e^{-t} \log(1+t)
  $$
  Utilizzando gli sviluppi di Maclaurin al terzo ordine:
  $$
  e^{-t} = 1 - t + \frac{t^2}{2} + o(t^2)
  \log(1+t) = t - \frac{t^2}{2} + \frac{t^3}{3} + o(t^3)
  $$
  Eseguendo il prodotto termine a termine:
  $$
  \begin{align}
  e^{-t} \log(1+t) &= \left( 1 - t + \frac{t^2}{2} + o(t^2) \right) \left( t - \frac{t^2}{2} + \frac{t^3}{3} + o(t^3) \right) \\
  &= t - \frac{t^2}{2} + \frac{t^3}{3} - t^2 + \frac{t^3}{2} + \frac{t^3}{2} + o(t^3) \\
  &= t - \frac{3}{2}t^2 + \frac{4}{3}t^3 + o(t^3)
  \end{align}
  $$
  Espresso in potenze di $x$:
  $$
  e^{-\frac{1}{x}} \log\left(1 + \frac{1}{x}\right) = \frac{1}{x} - \frac{3}{2x^2} + \frac{4}{3x^3} + o\left(\frac{1}{x^3}\right)
  $$

- **Secondo termine:** $\cos\left(\frac{x}{x^2+1}\right)$
  Riscriviamo l'argomento:
  $$
  \frac{x}{x^2+1} = \frac{x}{x^2\left(1 + \frac{1}{x^2}\right)} = \frac{t}{1 + t^2} = t(1 - t^2 + o(t^2)) = t - t^3 + o(t^3)
  $$
  Sviluppando il coseno:
  $$
  \cos(u) = 1 - \frac{u^2}{2} + o(u^3) \implies \cos\left(t - t^3 + o(t^3)\right) = 1 - \frac{t^2}{2} + o(t^3)
  $$
  In termini di $x$:
  $$
  \cos\left(\frac{x}{x^2+1}\right) = 1 - \frac{1}{2x^2} + o\left(\frac{1}{x^3}\right)
  $$

- **Terzo termine:** $\frac{x}{x+1}$
  $$
  \frac{x}{x+1} = \frac{1}{1 + \frac{1}{x}} = \frac{1}{1+t} = 1 - t + t^2 - t^3 + o(t^3)
  $$
  In termini di $x$:
  $$
  \frac{x}{x+1} = 1 - \frac{1}{x} + \frac{1}{x^2} - \frac{1}{x^3} + o\left(\frac{1}{x^3}\right)
  $$

- **Combinazione entro parentesi quadre:**
  Sostituiamo i tre sviluppi:
  $$
  \begin{align}
  [\dots] &= \left( \frac{1}{x} - \frac{3}{2x^2} + \frac{4}{3x^3} \right) - \left( 1 - \frac{1}{2x^2} \right) + \left( 1 - \frac{1}{x} + \frac{1}{x^2} - \frac{1}{x^3} \right) + o\left(\frac{1}{x^3}\right) \\
  &= (-1 + 1) + \left(\frac{1}{x} - \frac{1}{x}\right) + \left(-\frac{3}{2} + \frac{1}{2} + 1\right)\frac{1}{x^2} + \left(\frac{4}{3} - 1\right)\frac{1}{x^3} + o\left(\frac{1}{x^3}\right) \\
  &= 0 + 0 + 0 \cdot \frac{1}{x^2} + \frac{1}{3x^3} + o\left(\frac{1}{x^3}\right) \\
  &= \frac{1}{3x^3} + o\left(\frac{1}{x^3}\right)
  \end{align}
  $$
  Si ha dunque una cancellazione esatta di tutti i termini di grado $0$, $1$ e $2$!

- **Fattore esterno:**
  Per $x \to +\infty$:
  $$
  \sqrt{x^2 + 2x + 3} = x \sqrt{1 + \frac{2}{x} + \frac{3}{x^2}} \sim x
  $$

Moltiplicando i contributi:
$$
f(x) = x \sqrt{1 + \frac{2}{x} + \frac{3}{x^2}} \left[ \frac{1}{3x^3} + o\left(\frac{1}{x^3}\right) \right] = \frac{1}{3x^2}\sqrt{1 + \frac{2}{x} + \frac{3}{x^2}} + o\left(\frac{1}{x^2}\right)
$$
Poiché $\sqrt{1 + \frac{2}{x} + \frac{3}{x^2}} \to 1$, otteniamo l'equivalenza asintotica:
$$
f(x) \sim \frac{1}{3x^2} \quad \text{per } x \to +\infty
$$
La funzione campione $\frac{1}{3x^2}$ è a valori positivi ed è integrabile in senso improprio all'infinito, poiché $\alpha = 2 > 1$:
$$
\int_1^{+\infty} \frac{1}{3x^2} \, dx < +\infty \quad (\text{Converge})
$$
Per il **Teorema del Confronto Asintotico**, anche $\int_1^{+\infty} f(x) \, dx$ converge.

**Conclusione:**
Poiché l'integrale non presenta singolarità in $x = 0$ e converge all'infinito, l'integrale improprio complessivo:
$$
\int_0^{+\infty} f(x) \, dx \quad \mathbf{CONVERGE.}
$$

### Integrali Impropri Notevoli con Correzione Logaritmica

Si dimostra che per l'integrale improprio campione con termine logaritmico all'infinito:
$$
\int_2^{+\infty} \frac{1}{x^\alpha \log^\beta x} \, dx
$$
sussiste la seguente caratterizzazione completa:
- **CONVERGE** $\iff \alpha > 1 \quad \lor \quad (\alpha = 1 \;\land\; \beta > 1)$
- **DIVERGE** a $+\infty$ $\iff \alpha < 1 \quad \lor \quad (\alpha = 1 \;\land\; \beta \le 1)$

> [!note] Commento euristico
> - Se $\alpha > 1$, la convergenza è dominata dalla potenza algebrica $x^\alpha$, qualunque sia $\beta \in \mathbb{R}$;
> - Se $\alpha < 1$, l'integrale diverge sempre, poiché il logaritmo non è sufficiente a compensare la lentezza dell'infinitesimo;
> - Se $\alpha = 1$, si è nel caso critico: l'esponente $\beta$ funge da discriminante fine, e l'integrale converge se e solo se $\beta > 1$ (si integra elementarmente con la sostituzione $u = \log x$).
>
