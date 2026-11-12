---
title: "Integrali Multipli di Peano-Jordan"
domain: "math/integral-calculus"
source_course: "Analisi 2 (Cap. 8)"
tags:
  - math/calculus/multiple-integrals
  - math/calculus/coordinate-transforms
---

# 8. Integrali Multipli (Doppi e Tripli)

## 8.1. Integrali doppi su rettangoli e formule di riduzione di Fubini-Tonelli

### Partizioni e somme integrali di Riemann

Vogliamo generalizzare la teoria dell'integrazione di Riemann a funzioni di più variabili reali:
$$
f: D \subseteq \mathbb{R}^n \to \mathbb{R}
$$
su insiemi $D$ compatti. Per semplicità espositiva e notazionale, consideriamo il caso bidimensionale $n=2$ e assumiamo inizialmente come dominio $D$ un rettangolo chiuso e limitato:
$$
D := [a,b] \times [c,d] \subset \mathbb{R}^2, \quad a, b, c, d \in \mathbb{R}
$$
con $f: D \to \mathbb{R}$ una funzione **limitata**.

Siano $P_1$ e $P_2$ due partizioni unidimensionali rispettivamente degli intervalli $[a,b]$ e $[c,d]$:
$$
P_1 = \{x_0, x_1, \dots, x_n\} \quad \text{con } a = x_0 < x_1 < \dots < x_n = b
P_2 = \{y_0, y_1, \dots, y_m\} \quad \text{con } c = y_0 < y_1 < \dots < y_m = d
$$
Il prodotto cartesiano delle due partizioni suddivide il dominio $D$ in una famiglia di $n \times m$ sottorettangoli chiusi:
$$
D_{i,j} := [x_{i-1}, x_i] \times [y_{j-1}, y_j], \quad i=1,\dots,n, \quad j=1,\dots,m
$$
L'area di ciascun sottorettangolo elementare $D_{i,j}$ è data da:
$$
|D_{i,j}| := (x_i - x_{i-1})(y_j - y_{j-1})
$$

### Criterio di integrabilità di Riemann-Darboux

In ogni sottorettangolo $D_{i,j}$, scegliamo un valore $\mu_{i,j}$ appartenente all'intervallo tra l'estremo inferiore e l'estremo superiore assunti da $f$:
$$
\mu_{i,j} \in \left[ \inf_{D_{i,j}} f, \, \sup_{D_{i,j}} f \right] \quad \forall i=1,\dots,n, \; j=1,\dots,m
$$
Possiamo quindi definire la **somma integrale di Riemann**:
$$
S(P_1, P_2) := \sum_{i=1}^n \sum_{j=1}^m |D_{i,j}| \, \mu_{i,j}
$$
Definiamo il parametro di ampiezza (finezza) della griglia di partizione:
$$
|P| := \max \left\{ |P_1|, |P_2| \right\} = \max \left\{ \max_{1 \le i \le n} (x_i - x_{i-1}), \, \max_{1 \le j \le m} (y_j - y_{j-1}) \right\}
$$

> [!definition] Funzione Riemann-integrabile su un rettangolo
> Sia $f: D \to \mathbb{R}$ limitata su $D = [a,b] \times [c,d] \subset \mathbb{R}^2$.
> La funzione $f$ si dice **Riemann-integrabile** su $D$ (indicato con $f \in \mathcal{R}(D)$) se esiste finito il limite delle somme integrali al tendere dell'ampiezza $|P|$ a zero:
> $$
> \iint_D f(x,y) \, dx\,dy := \lim_{|P| \to 0} S(P_1, P_2)
> $$
> e tale limite è indipendente dalla particolare scelta dei punti campione $\mu_{i,j}$.

> [!note] Somme superiori e inferiori di Darboux
> Tale limite coincide con il limite comune delle somme superiori di Darboux $S(P_1, P_2)$ e delle somme inferiori di Darboux $s(P_1, P_2)$, definite ponendo rispettivamente $\mu_{i,j} = \sup_{D_{i,j}} f$ e $\mu_{i,j} = \inf_{D_{i,j}} f$.

> [!theorem] Criterio di integrabilità di Riemann-Darboux
> Sia $E = [a,b] \times [c,d]$ un rettangolo chiuso e limitato in $\mathbb{R}^2$ e sia $f: E \to \mathbb{R}$ una funzione limitata.
> Siano $P_1$ una partizione di $[a,b]$ e $P_2$ una partizione di $[c,d]$.
> Allora $f \in \mathcal{R}(E)$ se e solo se è soddisfatta una delle seguenti condizioni equivalenti:
> 1. L'estremo superiore delle somme inferiori coincide con l'estremo inferiore delle somme superiori:
>    $$
>    \sup_{P_1, P_2} s(P_1, P_2) = \inf_{P_1, P_2} S(P_1, P_2) = \iint_E f(x,y) \, dx\,dy
>    $$
> 2. Per ogni $\varepsilon > 0$, esiste un $\delta > 0$ tale che, per ogni coppia di partizioni $P_1, P_2$ con ampiezza $\max\{|P_1|, |P_2|\} < \delta$, si ha:
>    $$
>    0 \le S(P_1, P_2) - s(P_1, P_2) \le \varepsilon
>    $$
>
### Integrabilità delle funzioni continue su rettangoli

> [!theorem] Integrabilità delle funzioni continue su rettangoli compatti
> Sia $f: [a,b] \times [c,d] \to \mathbb{R}$ una funzione continua. Allora $f$ è integrabile secondo Riemann sul rettangolo:
> $$
> f \in \mathcal{R}([a,b] \times [c,d])
> $$

> [!quote]- Dimostrazione
> Sia $E = [a,b] \times [c,d] \subset \mathbb{R}^2$. Poiché $E$ è un sottoinsieme chiuso e limitato di $\mathbb{R}^2$, esso è compatto. Per il Teorema di Heine-Cantor, la continuità di $f$ su un compatto implica la sua uniforme continuità su $E$, ovvero:
> $$
> \forall \varepsilon > 0, \; \exists \delta = \delta(\varepsilon) > 0 : \forall \mathbf{x}', \mathbf{x}'' \in E, \; \|\mathbf{x}' - \mathbf{x}''\| < \delta \implies |f(\mathbf{x}') - f(\mathbf{x}'')| < \varepsilon
> $$
> Siano ora $P_1 = \{x_0 = a, x_1, \dots, x_n = b\}$ una partizione dell'intervallo $[a,b]$ e $P_2 = \{y_0 = c, y_1, \dots, y_m = d\}$ una partizione dell'intervallo $[c,d]$ aventi calibro sufficientemente piccolo:
> $$
> |P_1| \le \frac{\delta}{\sqrt{2}}, \quad |P_2| \le \frac{\delta}{\sqrt{2}} \implies \mathrm{diam}(E_{ij}) = \sqrt{(x_i - x_{i-1})^2 + (y_j - y_{j-1})^2} \le \delta
> $$
> Indicando con $E_i$ (oppure $E_{ij} = [x_{i-1}, x_i] \times [y_{j-1}, y_j]$) i sotto-rettangoli indotti dalla partizione prodotto $P = P_1 \times P_2$, per il Teorema di Weierstrass la funzione $f$ assume su ciascun rettangolo compatto $E_i$ il proprio minimo assoluto $m_i$ ed il proprio massimo assoluto $M_i$:
> $$
> \exists \mathbf{x}'_i, \mathbf{x}''_i \in E_i : \quad f(\mathbf{x}'_i) = m_i = \inf_{E_i} f, \quad f(\mathbf{x}''_i) = M_i = \sup_{E_i} f
> $$
> Poiché $\mathbf{x}'_i, \mathbf{x}''_i \in E_i$, si ha $\|\mathbf{x}'_i - \mathbf{x}''_i\| \le \mathrm{diam}(E_i) < \delta$, e per uniforme continuità:
> $$
> M_i - m_i = f(\mathbf{x}''_i) - f(\mathbf{x}'_i) < \varepsilon
> $$
> Valutando la differenza tra le somme superiori e inferiori di Riemann:
> $$
> 0 \le S(f, P) - s(f, P) = \sum_{i=1}^n M_i |E_i| - \sum_{i=1}^n m_i |E_i| = \sum_{i=1}^n \left( f(\mathbf{x}''_i) - f(\mathbf{x}'_i) \right) |E_i| < \sum_{i=1}^n \varepsilon |E_i| = \varepsilon |E|
> $$
> Data l'arbitrarietà di $\varepsilon > 0$, la differenza $S(f, P) - s(f, P)$ può essere resa arbitrariamente piccola; per il criterio di integrabilità di Riemann, segue che $f \in \mathcal{R}([a,b] \times [c,d])$. $\blacksquare$
>
### Formule di riduzione su rettangoli (Teorema di Fubini)

**Problema geometrico:** Come si calcola esplicitamente l'integrale doppio $\iint_R f(x,y) \, dxdy$?

Geometricamente, il volume del sottografico può essere determinato sezionando il solido con piani ortogonali agli assi coordinati:
1. Si fissa una quota $\bar{y} \in [c,d]$ e si calcola l'area della sezione unidimensionale:
   $$
   A(\bar{y}) = \int_a^b f(x, \bar{y}) \, dx
   $$
2. Si integra l'area della fetta $A(y)$ al variare di $y \in [c,d]$:
   $$
   \iint_R f(x,y) \, dxdy = \int_c^d A(y) \, dy = \int_c^d \left[ \int_a^b f(x,y) \, dx \right] dy
   $$

Ci si domanda sotto quali condizioni tale equivalenza sia rigorosamente valida.

> [!theorem] Teorema di Fubini (Formule di riduzione su rettangoli)
> Sia $f \in \mathcal{R}(D)$ integrabile secondo Riemann sul rettangolo $D = [a,b] \times [c,d]$.
> 1. Se per ogni $y \in [c,d]$ esiste l'integrale unidimensionale $\int_a^b f(x,y) \, dx$, allora la funzione $y \mapsto \int_a^b f(x,y) \, dx$ è integrabile su $[c,d]$ e vale:
>    $$
>    \iint_D f(x,y) \, dxdy = \int_c^d \left[ \int_a^b f(x,y) \, dx \right] dy
>    $$
> 2. Se per ogni $x \in [a,b]$ esiste l'integrale unidimensionale $\int_c^d f(x,y) \, dy$, allora la funzione $x \mapsto \int_c^d f(x,y) \, dy$ è integrabile su $[a,b]$ e vale:
>    $$
>    \iint_D f(x,y) \, dxdy = \int_a^b \left[ \int_c^d f(x,y) \, dy \right] dx
>    $$

> [!note] Integrabilità iterata delle funzioni continue
> Se $f$ è continua su $D = [a,b] \times [c,d]$, le sezioni $x \mapsto f(x,y)$ e $y \mapsto f(x,y)$ sono funzioni continue di una variabile reale, e quindi ammettono sempre integrale di Riemann. Ne consegue che entrambe le formule di riduzione sono simultaneamente applicabili, garantendo la commutatività dell'ordine di integrazione:
> $$
> \iint_D f(x,y) \, dxdy = \int_c^d \left[ \int_a^b f(x,y) \, dx \right] dy = \int_a^b \left[ \int_c^d f(x,y) \, dy \right] dx
> $$

> [!example] Esempio 1
> Calcolare l'integrale doppio:
> $$
> \iint_D x e^{xy} \, dxdy, \quad D = [0,1] \times [0,2]
> $$
> Poiché $f(x,y) = x e^{xy} \in C^0(D)$, valgono le formule di riduzione. Risulta più conveniente integrare prima rispetto a $y$, in modo da sfruttare la presenza del fattore $x$ come derivata dell'esponente:
> $$
> \int_0^1 \left[ \int_0^2 x e^{xy} \, dy \right] dx = \int_0^1 \left[ e^{xy} \right]_{y=0}^{y=2} dx = \int_0^1 (e^{2x} - 1) \, dx = \left[ \frac{1}{2} e^{2x} - x \right]_0^1 = \left( \frac{e^2}{2} - 1 \right) - \left( \frac{1}{2} - 0 \right) = \frac{e^2 - 3}{2}
> $$
> *(Nota didattica dal manoscritto: integrando considerando unicamente il termine esponenziale $\int_0^1 e^{2x} dx = \left[ \frac{1}{2}e^{2x} \right]_0^1 = \frac{e^2-1}{2}$, si omette la valutazione dell'estremo inferiore $e^0 = 1$)*.

> [!note] Fattorizzazione per funzioni a variabili separate
> Sia $f(x,y) = g(x) h(y)$ con $g \in C^0([a,b])$ e $h \in C^0([c,d])$ (funzione a variabili separate). L'integrale doppio si fattorizza direttamente nel prodotto di due integrali semplici:
> $$
> \iint_D f(x,y) \, dxdy = \left[ \int_a^b g(x) \, dx \right] \cdot \left[ \int_c^d h(y) \, dy \right]
> $$

> [!example] Esempio 2 (Non integrabilità della funzione di Dirichlet)
> Sia $f: [0,1] \times [0,1] \to \mathbb{R}$ la funzione definita da:
> $$
> f(x,y) = \begin{cases} 1 & x \in \mathbb{Q} \\ 0 & x \in \mathbb{R} \setminus \mathbb{Q} \end{cases}
> $$
> In ogni sotto-rettangolo $E_i$ cadono sia punti a prima coordinata razionale sia punti a prima coordinata irrazionale, per cui $m_i = 0$ e $M_i = 1$. Di conseguenza:
> $$
> s(f, P) = 0, \quad S(f, P) = 1 \quad \forall P
> $$
> La funzione non è integrabile secondo Riemann.
>

## 8.2. Misura di Peano-Jordan e integrabilità su domini generici

### Estensione a un rettangolo contenitore

> [!definition] Integrale di Riemann su insiemi limitati generici
> Sia $D \subset \mathbb{R}^2$ un insieme limitato e sia $R = [a,b] \times [c,d]$ un rettangolo tale che $D \subseteq R$. Sia $f: D \to \mathbb{R}$ una funzione limitata. Si definisce l'estensione $\tilde{f}: R \to \mathbb{R}$ ponendo:
> $$
> \tilde{f}(x,y) = \begin{cases} f(x,y) & (x,y) \in D \\ 0 & (x,y) \in R \setminus D \end{cases}
> $$
> Si dice che $f$ è **integrabile secondo Riemann su $D$** ($f \in \mathcal{R}(D)$) se l'estensione $\tilde{f}$ è integrabile su $R$ nel senso ordinario ($\tilde{f} \in \mathcal{R}(R)$). In tal caso si definisce:
> $$
> \iint_D f(x,y) \, dxdy := \iint_R \tilde{f}(x,y) \, dxdy
> $$

> [!note] Indipendenza dal rettangolo contenitore
> La definizione è ben posta: l'integrabilità di $\tilde{f}$ e il valore dell'integrale non dipendono dalla scelta del rettangolo $R$ contenente $D$.
> 
> Siano infatti $R_1, R_2$ due rettangoli tali che $D \subseteq R_1$ e $D \subseteq R_2$, e siano $\tilde{f}_1, \tilde{f}_2$ le relative estensioni. Poiché $R_1 = (R_1 \cap R_2) \cup (R_1 \setminus R_2)$:
> $$
> \iint_{R_1} \tilde{f}_1 \, dxdy = \iint_{R_1 \cap R_2} \tilde{f}_1 \, dxdy + \iint_{R_1 \setminus R_2} \tilde{f}_1 \, dxdy
> $$
> Poiché $(R_1 \setminus R_2) \cap D = \emptyset$, per costruzione si ha $\tilde{f}_1 \equiv 0$ su $R_1 \setminus R_2$, mentre su $R_1 \cap R_2$ si ha $\tilde{f}_1 = \tilde{f}_2$. Pertanto:
> $$
> \iint_{R_1} \tilde{f}_1 \, dxdy = \iint_{R_1 \cap R_2} \tilde{f}_2 \, dxdy + 0 = \iint_{R_1 \cap R_2} \tilde{f}_2 \, dxdy
> $$
> Replicando specularmente per $R_2$:
> $$
> \iint_{R_2} \tilde{f}_2 \, dxdy = \iint_{R_1 \cap R_2} \tilde{f}_2 \, dxdy \implies \iint_{R_1} \tilde{f}_1 \, dxdy = \iint_{R_2} \tilde{f}_2 \, dxdy
> $$

> [!warning] Discontinuità indotta dalla frontiera $\partial D$
> In generale, anche se $f$ è una funzione $C^\infty(D)$, l'estensione $\tilde{f}$ presenta quasi inevitabilmente salti di discontinuità lungo il bordo $\partial D$.
> Ad esempio, scegliendo $D = \{(x,y) \in [0,1] \times [0,1] : x \in \mathbb{Q}\}$ e la funzione costante $f \equiv 1$, l'estensione $\tilde{f}$ coincide con la funzione di Dirichlet bidimensionale, che non è integrabile su alcun rettangolo, benché $f$ sia costante.
> Il problema della Riemann-integrabilità su domini generici è dunque intimamente legato alla "regolarità metrica" della frontiera $\partial D$.
>
### Misura di Peano-Jordan e insiemi a misura nulla

> [!definition] Insieme misurabile secondo Peano-Jordan
> Un insieme limitato $D \subset \mathbb{R}^2$ si dice **misurabile secondo Peano-Jordan** (o quadribile) se la funzione costante $f(x,y) \equiv 1$ è integrabile secondo Riemann su $D$.
> In tal caso, si definisce **misura (o area)** di $D$ il valore dell'integrale:
> $$
> |D| := \iint_D 1 \, dxdy
> $$

> [!proposition] Criterio di misurabilità della frontiera
> Un insieme limitato $D \subset \mathbb{R}^2$ è misurabile secondo Peano-Jordan se e solo se la sua frontiera $\partial D$ è misurabile ed ha misura bidimensionale nulla:
> $$
> D \text{ misurabile secondo Peano-Jordan} \iff \partial D \text{ misurabile e } |\partial D| = 0
> $$

> [!definition] Insieme a misura nulla
> Un insieme misurabile $\Gamma \subset \mathbb{R}^2$ si dice **a misura nulla** se la sua misura di Peano-Jordan è nulla:
> $$
> |\Gamma| = 0
> $$

> [!theorem] Caratterizzazione degli insiemi a misura nulla
> Un insieme $\Gamma \subset \mathbb{R}^2$ ha misura nulla secondo Peano-Jordan se e solo se per ogni $\varepsilon > 0$ esiste un numero finito di rettangoli $Q_1, \dots, Q_n \subset \mathbb{R}^2$ ($n = n(\varepsilon) \in \mathbb{N}$) tali che:
> 1. $\Gamma \subset \bigcup_{i=1}^n Q_i$ (ricoprimento finito mediante rettangoli);
> 2. $\sum_{i=1}^n |Q_i| < \varepsilon$.

> [!note] Insiemi notevoli a misura nulla in $\mathbb{R}^2$
> Possiedono misura bidimensionale nulla:
> 1. Insiemi finiti o discreti di punti;
> 2. I sostegni di curve regolari $\gamma: [a,b] \to \mathbb{R}^2$ (e curve regolari a tratti);
> 3. I grafici di funzioni integrabili $g: I \subset \mathbb{R} \to \mathbb{R}$, ossia l'insieme $\mathrm{Gr}(g) = \{(x, g(x)) \in \mathbb{R}^2 : x \in I\}$;
> 4. Unioni finite e sottoinsiemi di insiemi a misura nulla: se $|\Gamma_i| = 0$ per $i = 1, \dots, n$, allora $\left| \bigcup_{i=1}^n \Gamma_i \right| = 0$ e per ogni $S \subseteq \Gamma_i$ si ha $|S| = 0$.

> [!definition] Funzione generalmente continua (continua quasi ovunque)
> Sia $D = [a,b] \times [c,d]$ e sia $f: D \to \mathbb{R}$ limitata. Si dice che $f$ è **generalmente continua** (o **continua quasi ovunque**, q.o.) se l'insieme dei suoi punti di discontinuità ha misura nulla:
> $$
> |\mathrm{Discont}(f)| = 0
> $$

> [!theorem] Integrabilità delle funzioni generalmente continue
> Sia $f: D \to \mathbb{R}$ limitata sul rettangolo $D = [a,b] \times [c,d]$. Se $f$ è generalmente continua, allora $f$ è integrabile secondo Riemann:
> $$
> f \text{ generalmente continua} \implies f \in \mathcal{R}(D)
> $$
>
## 8.3. Integrazione su domini normali (semplici) nel piano

> [!definition] Dominio $y$-semplice (normale rispetto all'asse $x$)
> Un insieme $D \subset \mathbb{R}^2$ si dice **$y$-semplice** (o normale rispetto all'asse $x$) se è descritto nella forma:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : x \in [a,b], \; y \in [\alpha(x), \beta(x)] \right\}
> $$
> con $\alpha, \beta \in C^0([a,b])$ e $\alpha(x) \le \beta(x)$ per ogni $x \in [a,b]$.
> 
> Un dominio $y$-semplice è sempre misurabile secondo Peano-Jordan e la sua misura è:
> $$
> |D| = \int_a^b (\beta(x) - \alpha(x)) \, dx
> $$

> [!definition] Dominio $x$-semplice (normale rispetto all'asse $y$)
> Un insieme $D \subset \mathbb{R}^2$ si dice **$x$-semplice** (o normale rispetto all'asse $y$) se è descritto nella forma:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : y \in [c,d], \; x \in [\gamma(y), \delta(y)] \right\}
> $$
> con $\gamma, \delta \in C^0([c,d])$ e $\gamma(y) \le \delta(y)$ per ogni $y \in [c,d]$.
> 
> Un dominio $x$-semplice è sempre misurabile secondo Peano-Jordan e la sua misura è:
> $$
> |D| = \int_c^d (\delta(y) - \gamma(y)) \, dy
> $$

> [!definition] Dominio regolare
> Un insieme $E \subset \mathbb{R}^2$ si dice **regolare** se è unione finita di domini $D_i \subset \mathbb{R}^2$ semplici rispetto ad una delle variabili, aventi interni a due a due disgiunti:
> $$
> E = \bigcup_{i=1}^n D_i, \quad D_i \subseteq E, \quad \mathring{D}_i \cap \mathring{D}_j = \emptyset \quad \forall i \neq j
> $$
> In tal caso $E$ è misurabile e la sua misura coincide con la somma delle misure dei singoli pezzi:
> $$
> |E| = \sum_{i=1}^n |D_i|
> $$

> [!note] Compattezza ed integrabilità
> I domini semplici e i domini regolari sono sottoinsiemi chiusi e limitati di $\mathbb{R}^2$, quindi compatti.
> Inoltre, la loro frontiera è formata da segmenti e grafici di funzioni continue, che hanno misura bidimensionale nulla; pertanto:
> $$
> f \in C^0(D), \; D \text{ regolare} \implies f \in \mathcal{R}(D)
> $$
>
### Formule di riduzione per domini semplici

> [!theorem] Formule di riduzione per domini semplici
> 1. Se $D$ è un dominio $y$-semplice e $f \in C^0(D)$:
>    $$
>    \iint_D f(x,y) \, dxdy = \int_a^b \left[ \int_{\alpha(x)}^{\beta(x)} f(x,y) \, dy \right] dx
>    $$
> 2. Se $D$ è un dominio $x$-semplice e $f \in C^0(D)$:
>    $$
>    \iint_D f(x,y) \, dxdy = \int_c^d \left[ \int_{\gamma(y)}^{\delta(y)} f(x,y) \, dx \right] dy
>    $$

> [!quote]- Dimostrazione
> Sia $R = [a,b] \times [c,d]$ un rettangolo compatto contenente $D$. Per definizione:
> $$
> \iint_D f(x,y) \, dxdy = \iint_R \tilde{f}(x,y) \, dxdy
> $$
> Applicando il Teorema di Fubini su rettangoli all'estensione $\tilde{f}$:
> $$
> \iint_R \tilde{f}(x,y) \, dxdy = \int_a^b \left[ \int_c^d \tilde{f}(x,y) \, dy \right] dx
> $$
> Per ogni $x \in [a,b]$ fissato, la funzione $y \mapsto \tilde{f}(x,y)$ è non nulla esclusivamente per $y \in [\alpha(x), \beta(x)]$, intervallo su cui coincide con $f(x,y)$. Pertanto:
> $$
> \int_c^d \tilde{f}(x,y) \, dy = \int_{\alpha(x)}^{\beta(x)} f(x,y) \, dy
> $$
> Sostituendo nell'integrale esterno si ottiene la tesi (1). La dimostrazione della formula (2) è perfettamente simmetrica. $\blacksquare$

> [!example] Esempio 1 (Integrazione su triangolo)
> Calcolare $\iint_D xy \, dxdy$ sul triangolo $D$ di vertici $(0,0)$, $(1,0)$ e $(1,1)$.
>
> - **Come dominio $y$-semplice:**
>   $$
>   D = \left\{ (x,y) \in \mathbb{R}^2 : 0 \le x \le 1, \; 0 \le y \le x \right\}
>   \iint_D xy \, dxdy = \int_0^1 \left[ \int_0^x xy \, dy \right] dx = \int_0^1 \left[ x \frac{y^2}{2} \right]_0^x dx = \int_0^1 \frac{x^3}{2} \, dx = \left[ \frac{x^4}{8} \right]_0^1 = \frac{1}{8}
>   $$
>
> - **Come dominio $x$-semplice:**
>   $$
>   D = \left\{ (x,y) \in \mathbb{R}^2 : 0 \le y \le 1, \; y \le x \le 1 \right\}
>   \iint_D xy \, dxdy = \int_0^1 \left[ \int_y^1 xy \, dx \right] dy = \int_0^1 \left[ y \frac{x^2}{2} \right]_y^1 dy = \int_0^1 \left( \frac{y}{2} - \frac{y^3}{2} \right) dy = \left[ \frac{y^2}{4} - \frac{y^4}{8} \right]_0^1 = \frac{1}{4} - \frac{1}{8} = \frac{1}{8}
>   $$

> [!example] Esempio 2 (Inversione dell'ordine di integrazione)
> Calcolare l'integrale della funzione $f(x,y) = \sin(y^3)$ sul dominio $D$ delimitato dalle curve $y = 1$, $y = \sqrt{x}$ e dall'asse $y$ ($x = 0$).
>
> Impostando $D$ come dominio $y$-semplice:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : 0 \le x \le 1, \; \sqrt{x} \le y \le 1 \right\} \implies \int_0^1 \left[ \int_{\sqrt{x}}^1 \sin(y^3) \, dy \right] dx
> $$
> La funzione $\sin(y^3)$ non ammette una primitiva elementare in $y$, bloccando il calcolo analitico.
>
> Invertendo l'ordine di integrazione e trattando $D$ come dominio $x$-semplice ($y = \sqrt{x} \iff x = y^2$):
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : 0 \le y \le 1, \; 0 \le x \le y^2 \right\}
> $$
> L'integrale diventa:
> $$
> \int_0^1 \left[ \int_0^{y^2} \sin(y^3) \, dx \right] dy = \int_0^1 y^2 \sin(y^3) \, dy
> $$
> Eseguendo la sostituzione $u = y^3 \implies du = 3y^2 dy$, con $u(0) = 0$ e $u(1) = 1$:
> $$
> \frac{1}{3} \int_0^1 \sin u \, du = \frac{1}{3} \left[ -\cos u \right]_0^1 = \frac{1 - \cos 1}{3} = \frac{1}{3} - \frac{1}{3}\cos 1
> $$
>

## 8.4. Proprietà generali degli integrali doppi e Teorema della Media

> [!theorem] Proprietà fondamentali dell'integrale doppio
> Siano $f, g \in \mathcal{R}(D)$ su un insieme misurabile $D \subset \mathbb{R}^2$, e siano $\alpha, \beta \in \mathbb{R}$.
> 
> 1. **Linearità:**
>    $$
>    (\alpha f + \beta g) \in \mathcal{R}(D) \quad \text{e} \quad \iint_D (\alpha f + \beta g) \, dxdy = \alpha \iint_D f \, dxdy + \beta \iint_D g \, dxdy
>    $$
> 
> 2. **Monotonia e disuguaglianza triangolare:**
>    $$
>    f(\mathbf{x}) \ge g(\mathbf{x}) \quad \forall \mathbf{x} \in D \implies \iint_D f \, dxdy \ge \iint_D g \, dxdy
>    $$
>    In particolare:
>    $$
>    \left| \iint_D f \, dxdy \right| \le \iint_D |f| \, dxdy \le \left( \sup_D |f| \right) \cdot |D|
>    $$
> 
> 3. **Teorema della media integrale:**
>    - (i) Per ogni funzione integrabile:
>      $$
>      \inf_D f \le \frac{1}{|D|} \iint_D f(x,y) \, dxdy \le \sup_D f
>      $$
>    - (ii) Se $D$ è compatto e connesso e $f \in C^0(D)$, per il teorema dei valori intermedi esiste almeno un punto $\mathbf{x}_0 \in D$ tale che:
>      $$
>      f(\mathbf{x}_0) = \frac{1}{|D|} \iint_D f(x,y) \, dxdy
>      $$
>      La quantità $f(\mathbf{x}_0)$ è definita **valore medio** di $f$ su $D$.
>
## 8.5. Cambiamento di variabili negli integrali doppi e coordinate polari

L'obiettivo del cambio di coordinate è deformare un dominio di integrazione complesso $\Omega$ in un dominio di forma elementare $\Omega'$ (rettangolo o dominio semplice), semplificando simultaneamente l'espressione analitica della funzione integranda.

### Teorema del cambiamento di variabili

> [!theorem] Teorema del cambio di coordinate
> Sia $\Omega' \subset \mathbb{R}^2$ un aperto limitato e sia $\Phi: \Omega' \to \Omega \subset \mathbb{R}^2$ una trasformazione:
> $$
> \Phi(u,v) = \begin{pmatrix} x(u,v) \\ y(u,v) \end{pmatrix}
> $$
> tale che:
> 1. $\Phi \in C^1(\overline{\Omega'})$, ovvero le componenti $x(u,v), y(u,v)$ e le derivate parziali $\frac{\partial x}{\partial u}, \frac{\partial x}{\partial v}, \frac{\partial y}{\partial u}, \frac{\partial y}{\partial v}$ sono continue e limitate in $\Omega'$;
> 2. Il determinante jacobiano non si annulla mai su $\Omega'$:
>    $$
>    \det D\Phi(u,v) \neq 0 \quad \forall (u,v) \in \Omega'
>    $$
> 3. La mappa $\Phi$ è biunivoca tra $\Omega'$ e $\Omega$.
> 
> Allora:
> - (a) Un sottoinsieme $S \subseteq \Omega'$ è misurabile se e solo se $\Phi(S) \subseteq \Omega$ è misurabile;
> - (b) Per ogni funzione $f \in C^0(\Omega)$ (o $f \in \mathcal{R}(\Omega)$), vale la formula:
>   $$
>   \iint_\Omega f(x,y) \, dxdy = \iint_{\Omega'} f(\Phi(u,v)) \, |\det D\Phi(u,v)| \, dudv
>   $$

> [!warning] Non eliminabilità della biunivocità globale
> L'ipotesi di iniettività globale (3) non può essere dedotta dalla sola condizione locale di regolarità jacobiana (2):
> $$
> \det D\Phi(u,v) \neq 0 \quad \not\implies \quad \Phi \text{ biunivoca}
> $$
> 
> **Controesempio:**
> Consideriamo la mappa esponenziale complessa in coordinate reali:
> $$
> \Phi(u,v) = \begin{pmatrix} e^u \cos v \\ e^u \sin v \end{pmatrix}
> $$
> La matrice jacobiana è:
> $$
> D\Phi(u,v) = \begin{bmatrix} e^u \cos v & -e^u \sin v \\ e^u \sin v & e^u \cos v \end{bmatrix}
> $$
> Il suo determinante jacobiano vale:
> $$
> \det D\Phi(u,v) = e^{2u} \cos^2 v + e^{2u} \sin^2 v = e^{2u} > 0 \quad \forall (u,v) \in \mathbb{R}^2
> $$
> Ciononostante, $\Phi$ è periodica di periodo $2\pi$ rispetto a $v$:
> $$
> \Phi(u, v + 2k\pi) = \Phi(u,v), \quad k \in \mathbb{Z}
> $$
> Dunque $\Phi$ non è globalmente iniettiva su $\mathbb{R}^2$. Se applicassimo la formula su una regione di ampiezza in $v$ superiore a $2\pi$, l'area verrebbe sovra-conteggiata.

> [!note] Indebolimento delle ipotesi
> Le ipotesi del teorema possono essere rilassate richiedendo che la biunivocità e la condizione $\det D\Phi \neq 0$ valgano **quasi ovunque** in $\Omega'$, ossia ad esclusione di insiemi di misura bidimensionale nulla (come segmenti di bordo, linee di taglio o singoli punti critici, quali l'origine per le coordinate polari).
>
### Giustificazione geometrica del determinante jacobiano

Per comprendere l'origine del fattore $|\det D\Phi|$, consideriamo lo sviluppo di Taylor al primo ordine delle componenti attorno a un punto generico $(u_0, v_0)$:
$$
x(u,v) = x(u_0, v_0) + \nabla x(u_0, v_0) \cdot \begin{pmatrix} u - u_0 \\ v - v_0 \end{pmatrix} + o(\|(u-u_0, v-v_0)\|)
y(u,v) = y(u_0, v_0) + \nabla y(u_0, v_0) \cdot \begin{pmatrix} u - u_0 \\ v - v_0 \end{pmatrix} + o(\|(u-u_0, v-v_0)\|)
$$
Definendo i differenziali $dx = x(u,v) - x(u_0, v_0)$ e $dy = y(u,v) - y(u_0, v_0)$ associati a variazioni infinitesime $(du, dv)$:
$$
dx = \frac{\partial x}{\partial u}(u_0, v_0) du + \frac{\partial x}{\partial v}(u_0, v_0) dv
dy = \frac{\partial y}{\partial u}(u_0, v_0) du + \frac{\partial y}{\partial v}(u_0, v_0) dv
$$
I differenziali $dx$ e $dy$ sono combinazioni lineari di $du$ e $dv$. Un rettangolo infinitesimo di lati $du$ e $dv$ nel piano $(u,v)$ viene trasformato nel piano $(x,y)$ in un parallelogramma generato dai due vettori linearizzati:
$$
\mathbf{t}_u = \begin{pmatrix} \frac{\partial x}{\partial u} du \\ \frac{\partial y}{\partial u} du \\ 0 \end{pmatrix}, \quad \mathbf{t}_v = \begin{pmatrix} \frac{\partial x}{\partial v} dv \\ \frac{\partial y}{\partial v} dv \\ 0 \end{pmatrix}
$$
L'area infinitesima $dA$ del parallelogramma è la norma del prodotto vettoriale tra i due vettori tangenti:
$$
dA = \|\mathbf{t}_u \times \mathbf{t}_v\| = \left\| \det \begin{bmatrix} \hat{i} & \hat{j} & \hat{k} \\ \frac{\partial x}{\partial u}du & \frac{\partial y}{\partial u}du & 0 \\ \frac{\partial x}{\partial v}dv & \frac{\partial y}{\partial v}dv & 0 \end{bmatrix} \right\| = \left| \left( \frac{\partial x}{\partial u} \frac{\partial y}{\partial v} - \frac{\partial x}{\partial v} \frac{\partial y}{\partial u} \right) \hat{k} \right| dudv = |\det D\Phi(u,v)| \, dudv
$$
Il determinante jacobiano rappresenta dunque il **rapporto locale di trasformazione delle aree**.

### Esempi notevoli di cambio di coordinate

> [!example] Esempio 1 (Coordinate polari nel piano e area del cerchio)
> Sia $\Gamma = \{(x,y) \in \mathbb{R}^2 : x^2 + y^2 \le R^2\}$ il cerchio di raggio $R$. L'area è:
> $$
> A = |\Gamma| = \iint_\Gamma dxdy
> $$
> Introducendo le coordinate polari piane:
> $$
> \begin{cases}
> x = \rho \cos\theta \\
> y = \rho \sin\theta
> \end{cases}
> \quad \text{con } \rho \in [0, R], \; \theta \in [0, 2\pi]
> $$
> La matrice jacobiana è:
> $$
> D\Phi(\rho, \theta) = \begin{bmatrix} \cos\theta & -\rho \sin\theta \\ \sin\theta & \rho \cos\theta \end{bmatrix}
> $$
> Il fattore di scala dell'area è dato dal determinante jacobiano:
> $$
> \det D\Phi = \rho \cos^2\theta + \rho \sin^2\theta = \rho \implies |\det D\Phi| = \rho
> $$
> Il cerchio $\Gamma$ corrisponde nel piano $(\rho, \theta)$ al rettangolo $\Gamma' = [0, R] \times [0, 2\pi]$:
> $$
> A = \iint_\Gamma dxdy = \iint_{\Gamma'} \rho \, d\rho d\theta = \int_0^{2\pi} \left[ \int_0^R \rho \, d\rho \right] d\theta = \int_0^{2\pi} \frac{R^2}{2} \, d\theta = \pi R^2
> $$

> [!example] Esempio 2 (Trasformazione lineare / coordinate oblique)
> Calcolare l'integrale doppio:
> $$
> \iint_\Omega \frac{\tan(x+y)}{x+y} \, dxdy
> $$
> sul dominio triangolare:
> $$
> \Omega = \left\{ (x,y) \in \mathbb{R}^2 : x \ge 0, \; y \ge 0, \; x+y \le 1 \right\}
> $$
> Si introduce il cambio di variabili:
> $$
> \begin{cases}
> u = x + y \\
> v = x
> \end{cases}
> \implies
> \begin{cases}
> x = v \\
> y = u - v
> \end{cases}
> $$
> La mappa inversa $\Phi(u,v) = \begin{pmatrix} v \\ u - v \end{pmatrix}$ ha matrice jacobiana:
> $$
> D\Phi(u,v) = \begin{bmatrix} 0 & 1 \\ 1 & -1 \end{bmatrix} \implies \det D\Phi = 0 - 1 = -1 \implies |\det D\Phi| = 1
> $$
> Traducendo i vincoli del dominio:
> - $x \ge 0 \implies v \ge 0$
> - $y \ge 0 \implies u - v \ge 0 \implies u \ge v$
> - $x + y \le 1 \implies u \le 1$
>
> Il nuovo dominio $\Omega'$ nello spazio $(u,v)$ è il dominio semplice:
> $$
> \Omega' = \left\{ (u,v) \in \mathbb{R}^2 : 0 \le u \le 1, \; 0 \le v \le u \right\}
> $$
> L'integrale diventa:
> $$
> \iint_\Omega \frac{\tan(x+y)}{x+y} \, dxdy = \iint_{\Omega'} \frac{\tan u}{u} \cdot 1 \, dudv = \int_0^1 \left[ \int_0^u \frac{\tan u}{u} \, dv \right] du
> $$
> Integrando rispetto a $v$:
> $$
> \int_0^1 \frac{\tan u}{u} \cdot [v]_0^u \, du = \int_0^1 \tan u \, du = \int_0^1 \frac{\sin u}{\cos u} \, du = \left[ -\log(\cos u) \right]_0^1 = -\log(\cos 1) - (-\log(\cos 0)) = -\log(\cos 1)
> $$
>

## 8.6. Integrali tripli: integrazione per fili e per strati

### Costruzione secondo Riemann in $\mathbb{R}^3$

L'integrale triplo di Riemann per funzioni scalari $f: \Omega \subset \mathbb{R}^3 \to \mathbb{R}$ si definisce estendendo in modo rigoroso e simmetrico la costruzione effettuata nel piano.

1. **Integrazione su parallelepipedi rettangoli:**
   Dato un parallelepipedo compatto:
   $$
   E = [a,b] \times [c,d] \times [e,f] \subset \mathbb{R}^3
   $$
   e una partizione tridimensionale $P = P_1 \times P_2 \times P_3$, si definiscono le somme inferiori e superiori di Riemann:
   $$
   s(f, P) = \sum_{i,j,k} m_{ijk} |E_{ijk}|, \quad S(f, P) = \sum_{i,j,k} M_{ijk} |E_{ijk}|
   $$
   dove $|E_{ijk}| = (x_i - x_{i-1})(y_j - y_{j-1})(z_k - z_{k-1})$ è il volume elementare. Se l'estremo superiore delle somme inferiori eguaglia l'estremo inferiore delle somme superiori:
   $$
   \iiint_E f(x,y,z) \, dxdydz = \lim_{|P| \to 0} S(f, P) = \lim_{|P| \to 0} s(f, P)
   $$

2. **Integrazione su domini limitati generici:**
   Dato un dominio limitato $\Omega \subset \mathbb{R}^3$, lo si include in un parallelepipedo compatto $E$ ($\Omega \subseteq E$) e si definisce la funzione estesa mediante la funzione caratteristica:
   $$
   \tilde{f}(x,y,z) = \begin{cases} f(x,y,z) & (x,y,z) \in \Omega \\ 0 & (x,y,z) \in E \setminus \Omega \end{cases}
   $$
   Si pone quindi:
   $$
   \iiint_\Omega f(x,y,z) \, dxdydz := \iiint_E \tilde{f}(x,y,z) \, dxdydz
   $$
   purché $\tilde{f} \in \mathcal{R}(E)$.

Si estende la definizione di integrabilità e misura di Peano-Jordan allo spazio tridimensionale.

> [!definition] Misura di Peano-Jordan in $\mathbb{R}^3$
> Dato un insieme limitato $D \subset \mathbb{R}^3$, se la funzione caratteristica $\chi_D$ è integrabile secondo Riemann su un parallelepipedo compatto $E \supseteq D$, si definisce la **misura tridimensionale di Peano-Jordan** (o volume) di $D$ come:
> $$
> |D|_3 := \iiint_D dx\,dy\,dz
> $$
>
Valgono in $\mathbb{R}^3$ tutti i teoremi generali già enunciati per gli integrali doppi (linearità, monotonia, additività rispetto al dominio, teorema della media).

> [!note] Significato geometrico ed applicazioni
> - **A livello geometrico:** L'integrale triplo $\iiint_D f(x,y,z)\,dx\,dy\,dz$ rappresenta un iper-volume quadridimensionale (in $\mathbb{R}^4$), ossia la misura della regione compresa tra l'iper-superficie del grafico $w = f(x,y,z)$ e l'iper-piano $w = 0$.
> - **Nelle applicazioni fisiche:** Risulta fondamentale per il calcolo della massa di corpi continui, delle coordinate del baricentro e dei momenti d'inerzia di solidi tridimensionali:
>   $$
>   M = \iiint_D \rho(x,y,z)\,dx\,dy\,dz, \quad x_B = \frac{1}{M}\iiint_D x\,\rho(x,y,z)\,dx\,dy\,dz, \quad I_z = \iiint_D (x^2+y^2)\,\rho(x,y,z)\,dx\,dy\,dz
>   $$
>
Per il calcolo esplicito degli integrali tripli si introducono due tecniche duali di riduzione: l'integrazione "per fili" e l'integrazione "per strati".

### Integrazione "per fili"

> [!theorem] Teorema di riduzione per fili
> Sia $\Omega \subset \mathbb{R}^3$ un dominio normale rispetto al piano $xy$, della forma:
> $$
> \Omega = \left\{ (x,y,z) \in \mathbb{R}^3 : (x,y) \in D, \; g(x,y) \le z \le h(x,y) \right\}
> $$
> con $D \subseteq \mathbb{R}^2$ dominio regolare limitato e $g, h \in C^0(\overline{D})$. Se $f \in \mathcal{R}(\Omega)$, allora:
> $$
> \iiint_\Omega f(x,y,z)\,dx\,dy\,dz = \iint_D \left[ \int_{g(x,y)}^{h(x,y)} f(x,y,z)\,dz \right] dx\,dy
> $$

> [!note] Interpretazione geometrica
> L'integrazione per fili consiste nel decomporre il solido $\Omega$ in segmenti verticali paralleli all'asse $z$ (i "fili") di estremi $g(x,y)$ e $h(x,y)$, calcolando prima l'integrale unidimensionale lungo ciascun filo e integrando successivamente il risultato sulla proiezione bidimensionale $D$ nel piano $xy$.

> [!example] Esempio (Calcolo di volume con integrazione per fili)
> Si calcoli il volume del solido $\Omega \subset \mathbb{R}^3$ compreso sotto la superficie parabolica $z = x^2 + 3y^2$, superiormente al piano $z=0$, avente per base nel piano $xy$ il dominio limitato:
> $$
> D = \left\{ (x,y) \in \mathbb{R}^2 : x \ge 0, \; x^2 \le y \le x \right\}
> $$
> Il solido è delimitato inferiormente da $z = 0$ e superiormente da $z = x^2 + 3y^2$:
> $$
> |\Omega|_3 = \iiint_\Omega dx\,dy\,dz = \iint_D \left[ \int_0^{x^2+3y^2} dz \right] dx\,dy = \iint_D (x^2 + 3y^2)\,dx\,dy
> $$
> Integrando sul dominio $D$ per linee verticali ($x \in [0,1]$, $y \in [x^2, x]$):
> $$
> \iint_D (x^2 + 3y^2)\,dx\,dy = \int_0^1 \left[ \int_{x^2}^x (x^2 + 3y^2)\,dy \right] dx
> $$
> Eseguendo la primitiva interna rispetto a $y$:
> $$
> \int_{x^2}^x (x^2 + 3y^2)\,dy = \left[ x^2 y + y^3 \right]_{y=x^2}^{y=x} = (x^3 + x^3) - (x^4 + x^6) = 2x^3 - x^4 - x^6
> $$
> Integrando ora rispetto a $x \in [0,1]$:
> $$
> |\Omega|_3 = \int_0^1 (2x^3 - x^4 - x^6)\,dx = \left[ \frac{x^4}{2} - \frac{x^5}{5} - \frac{x^7}{7} \right]_0^1 = \frac{1}{2} - \frac{1}{5} - \frac{1}{7} = \frac{35 - 14 - 10}{70} = \frac{11}{70}
> $$
> *(Nota: qualora l'integrazione su $y$ venisse formalmente invertita ponendo $\int_x^{x^2}$, il risultato algebrico cambierebbe di segno: $\frac{1}{5} + \frac{1}{7} - \frac{1}{2} = -\frac{11}{70}$).*
>

### Integrazione "per strati"

> [!theorem] Teorema di riduzione per strati
> Sia $\Omega \subset \mathbb{R}^3$ un solido delimitato tra due quote $z = a$ e $z = b$:
> $$
> \Omega = \left\{ (x,y,z) \in \mathbb{R}^3 : z \in [a, b], \; (x,y) \in D(z) \right\}
> $$
> dove ogni sezione orizzontale $D(z) = \left\{ (x,y) \in \mathbb{R}^2 : (x,y,z) \in \Omega \right\}$ è un dominio misurabile in $\mathbb{R}^2$ per ogni quota fissata $z \in [a,b]$. Se $f \in \mathcal{R}(\Omega)$, allora:
> $$
> \iiint_\Omega f(x,y,z)\,dx\,dy\,dz = \int_a^b \left[ \iint_{D(z)} f(x,y,z)\,dx\,dy \right] dz
> $$

> [!note] Interpretazione geometrica
> L'integrazione per strati affetta il solido $\Omega$ con piani ortogonali all'asse $z$ a quota costante. L'integrale bidimensionale interno $\iint_{D(z)} f\,dx\,dy$ calcola il contributo di ciascuna lamina (o "strato"), che viene poi sommato lungo l'intervallo $[a,b]$.

> [!example] Esempio (Volume del cono circolare retto)
> Si calcoli il volume del cono $\Gamma$ avente altezza $h$, raggio di base $R$, vertice nell'origine $\mathbf{0}$ e asse lungo $z \in [0,h]$.
> La sezione trasversale a quota $z \in [0,h]$ è un cerchio $D(z)$ di raggio $y(z)$ dipendente linearmente dalla quota. Per similitudine geometrica:
> $$
> y(z) = R - \frac{R}{h}z = \frac{R}{h}(h - z)
> $$
> L'area dello strato bidimensionale $D(z)$ a quota $z$ vale:
> $$
> |D(z)|_2 = \iint_{D(z)} dx\,dy = \pi y(z)^2 = \pi \left( R - \frac{R}{h}z \right)^2
> $$
> Applicando la riduzione per strati:
> $$
> |\Gamma|_3 = \iiint_\Gamma dx\,dy\,dz = \int_0^h \left[ \iint_{D(z)} dx\,dy \right] dz = \pi \int_0^h \left( R^2 - 2\frac{R^2}{h}z + \frac{R^2}{h^2}z^2 \right) dz
> $$
> Calcolando l'integrale definito:
> $$
> |\Gamma|_3 = \pi \left[ R^2 z - \frac{R^2}{h}z^2 + \frac{R^2}{3h^2}z^3 \right]_0^h = \pi \left[ R^2 h - R^2 h + \frac{1}{3}R^2 h \right] = \frac{1}{3}\pi R^2 h
> $$
>

### Proprietà generali e simmetrie negli integrali tripli

> [!note] Regole operative per integrali multipli
> 1. **Cambiamento di variabili:** Il teorema generale di trasformazione delle coordinate si applica integralmente agli integrali tripli:
>    $$
>    \iiint_\Omega f(\mathbf{x})\,d\mathbf{x} = \iiint_{\Omega'} f(\boldsymbol{\Phi}(\mathbf{u})) \, |\det J_{\boldsymbol{\Phi}}(\mathbf{u})| \, d\mathbf{u}
>    $$
> 2. **Insiemi a misura nulla:** Se $|D|_3 = 0$, allora per ogni funzione limitata $f$ si ha $\iiint_D f\,dx\,dy\,dz = 0$.
> 3. **Additività sul dominio:** Se $\Omega = \Omega_1 \cup \Omega_2$ con $|\Omega_1 \cap \Omega_2|_3 = 0$, allora:
>    $$
>    \iiint_\Omega f = \iiint_{\Omega_1} f + \iiint_{\Omega_2} f
>    $$
> 4. **Sfruttamento delle simmetrie:** Se il dominio $\Omega$ è simmetrico rispetto al piano di una coordinata (ad esempio $(x,y,z) \in \Omega \iff (x,y,-z) \in \Omega$) e la funzione integranda $f$ è dispari rispetto a tale variabile ($f(x,y,-z) = -f(x,y,z)$), l'integrale si annulla identicamente:
>    $$
>    \iiint_\Omega f(x,y,z)\,dx\,dy\,dz = 0
>    $$
>
