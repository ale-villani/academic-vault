---
title: "Teoria delle Distribuzioni"
domain: "math/functional-analysis"
source_course: "Analisi 3 (Cap. 3.1-3.2, 3.6-3.7)"
tags:
  - math/functional-analysis/distributions
  - math/distributions/weak-derivatives
  - math/distributions/convolution
---

# 3. Teoria delle Distribuzioni

# 3. Teoria delle Distribuzioni e Spazi di Sobolev

### Spazio delle funzioni test $\mathcal{D}(\Omega)$

> [!definition] Notazione per multi-indici e derivate parziali
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto, $\varphi \in C^\infty_0(\Omega)$ (spazio delle funzioni infinitamente differenziabili a supporto compatto contenuto in $\Omega$) e sia $\boldsymbol{\alpha} = (\alpha_1, \dots, \alpha_n) \in \mathbb{N}^n$ un multi-indice.
> Si definisce l'operatore differenziale di ordine $\boldsymbol{\alpha}$:
> $$
> D^{\boldsymbol{\alpha}}\varphi(\mathbf{x}) := \frac{\partial^{|\alpha|} \varphi}{\partial x_1^{\alpha_1} \dots \partial x_n^{\alpha_n}}(\mathbf{x}) = \frac{\partial^{\alpha_1 + \dots + \alpha_n} \varphi}{\partial x_1^{\alpha_1} \dots \partial x_n^{\alpha_n}}(\mathbf{x})
> $$
> *(l'ordine delle derivazioni è ininfluente per il Teorema di Schwarz)*.
> Si definisce inoltre la **lunghezza (o modulo)** del multi-indice $\boldsymbol{\alpha}$:
> $$
> |\alpha| := \sum_{i=1}^n \alpha_i
> $$

> [!example] Calcolo di derivata parziale tramite multi-indice
> Sia $\Omega \subseteq \mathbb{R}^3$ e consideriamo il multi-indice $\boldsymbol{\alpha} = (2, 0, 5) \in \mathbb{N}^3$.
> Il suo modulo vale:
> $$
> |\alpha| = 2 + 0 + 5 = 7
> $$
> e la derivata corrispondente risulta:
> $$
> D^{\boldsymbol{\alpha}}\varphi(\mathbf{x}) = \frac{\partial^7 \varphi}{\partial x_1^2 \, \partial x_3^5}(\mathbf{x})
> $$

> [!note] Struttura vettoriale e non normabilità di $C^\infty_0(\Omega)$
> Lo spazio $C^\infty_0(\Omega)$ è uno spazio vettoriale su $\mathbb{R}$ (o $\mathbb{C}$), ma **non è normabile** (non è possibile definire un'unica norma che catturi simultaneamente la convergenza di tutte le infinite derivate preservando la completezza dello spazio e la compattezza dei supporti).
> È necessario quindi introdurre una specifica nozione di convergenza sequenziale su $C^\infty_0(\Omega)$.

> [!definition] Convergenza nello spazio delle funzioni test
> Sia $\{\varphi_n\}_{n \in \mathbb{N}} \subset C^\infty_0(\Omega)$, con $\Omega \subseteq \mathbb{R}^n$ aperto.
> Diciamo che la successione converge a zero in $C^\infty_0(\Omega)$:
> $$
> \varphi_n \xrightarrow{n \to +\infty} 0 \quad \text{in } C^\infty_0(\Omega)
> $$
> se e solo se sono verificate contemporaneamente le due condizioni seguenti:
> 1. **Supporto uniformemente compatto:** Esiste un sottoinsieme compatto $K \subset \Omega$ (indipendente da $n$) tale che:
>    $$
>    \varphi_n(\mathbf{x}) = 0 \quad \forall \mathbf{x} \in \Omega \setminus K, \quad \forall n \in \mathbb{N}
>    $$
>    ovvero:
>    $$
>    \mathrm{supp} \varphi_n \subseteq K \quad \forall n \in \mathbb{N}
>    $$
> 2. **Convergenza uniforme di tutte le derivate:** Per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$:
>    $$
>    D^{\boldsymbol{\alpha}}\varphi_n \xrightarrow{n \to +\infty} 0 \quad \text{uniformemente in } K
>    $$
>    ovvero:
>    $$
>    \max_{\mathbf{x} \in K} |D^{\boldsymbol{\alpha}}\varphi_n(\mathbf{x})| \xrightarrow{n \to +\infty} 0 \quad \forall \boldsymbol{\alpha} \in \mathbb{N}^n
>    $$
> 
> Diciamo inoltre che una successione converge a una generica funzione test $\varphi$:
> $$
> \varphi_n \xrightarrow{n \to +\infty} \varphi \quad \text{in } C^\infty_0(\Omega) \iff \varphi_n - \varphi \xrightarrow{n \to +\infty} 0 \quad \text{in } C^\infty_0(\Omega)
> $$

> [!definition] Spazio delle funzioni test $\mathcal{D}(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto. Lo spazio vettoriale $C^\infty_0(\Omega)$ dotato della nozione di convergenza sopra definita prende il nome di **spazio delle funzioni test** e viene denotato con:
> $$
> \mathcal{D}(\Omega)
> $$

> [!note] Proprietà topologiche di $\mathcal{D}(\Omega)$
> Lo spazio $\mathcal{D}(\Omega)$ è uno spazio vettoriale topologico localmente convesso, definibile formalmente come il limite induttivo stretto degli spazi di Fréchet $\mathcal{D}_K(\Omega) = \{ \varphi \in C^\infty(\Omega) : \mathrm{supp}\varphi \subseteq K \}$ al variare dei compatti $K \subset \Omega$ (spazio LF).

> [!example] Successione scalata a supporto compatto fisso
> Sia $\Omega = (-1, 1) \subset \mathbb{R}$. Sia $\varphi \in \mathcal{D}((-1, 1))$ una funzione test e consideriamo la successione:
> $$
> \varphi_n(x) := \lambda_n \varphi(x) \quad \forall n \in \mathbb{N}, \quad \forall x \in (-1, 1)
> $$
> dove $\{\lambda_n\}_{n \in \mathbb{N}} \subset \mathbb{R}$ è una successione infinitesima: $\lambda_n \xrightarrow{n \to +\infty} 0$.
> Verifichiamo le due condizioni di convergenza in $\mathcal{D}((-1, 1))$:
> 1. Il supporto è identico per ogni termine della successione:
>    $$
>    \mathrm{supp} \varphi_n = \mathrm{supp} \varphi = [-K, K] \subset (-1, 1) \quad \text{compatto (con } K < 1)
>    $$
> 2. Per ogni derivata di ordine $\alpha \in \mathbb{N}$:
>    $$
>    \|D^\alpha \varphi_n\|_\infty = |\lambda_n| \|D^\alpha \varphi\|_\infty \xrightarrow{n \to +\infty} 0
>    $$
> Essendo entrambe le condizioni verificate, deduciamo:
> $$
> \varphi_n \xrightarrow{n \to +\infty} 0 \quad \text{in } \mathcal{D}((-1, 1))
> $$

> [!example] Traslazione all'infinito: convergenza puntuale senza convergenza in $\mathcal{D}(\mathbb{R})$
> Sia $\Omega = \mathbb{R}$ e sia $\varphi \in C^\infty_0(\mathbb{R})$ una funzione test non identicamente nulla.
> Consideriamo la successione ottenuta traslando la funzione lungo l'asse reale:
> $$
> \varphi_n(x) := \varphi(x - n) \quad (\text{traslazione di ampiezza } n)
> $$
> Il supporto di $\varphi_n$ risulta traslato rigidamente:
> $$
> \mathrm{supp} \varphi_n = \{y \in \mathbb{R} : y = n + x, \; x \in \mathrm{supp} \varphi\}
> $$
> All'aumentare di $n$, i supporti si allontanano indefinitamente verso $+\infty$. Di conseguenza:
> $$
> \not\exists K \subset \mathbb{R} \text{ compatto tale che } \mathrm{supp} \varphi_n \subseteq K \quad \forall n \in \mathbb{N}
> $$
> Venendo a mancare l'esistenza di un compatto comune, si ha che:
> $$
> \varphi_n \not\xrightarrow{n \to +\infty} 0 \quad \text{in } \mathcal{D}(\mathbb{R})
> $$
> nonostante puntualmente la successione converga a zero:
> $$
> \lim_{n \to +\infty} \varphi_n(x) = 0 \quad \forall x \in \mathbb{R}
> $$
> *(per ogni $x$ fissato, per $n$ sufficientemente grande $x - n \notin \mathrm{supp}\varphi$, dunque $\varphi_n(x) = 0$ definitivamente)*.
>
### Definizione di distribuzione e spazio duale $\mathcal{D}^*(\Omega)$

> [!definition] Funzionale continuo su $\mathcal{D}(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia $T: \mathcal{D}(\Omega) \to \mathbb{R}$ un funzionale su $\mathcal{D}(\Omega)$ (che non è uno spazio normato).
> Diciamo che $T$ è **continuo** in $\mathcal{D}(\Omega)$ se e solo se per ogni successione $\{\varphi_n\}_{n \in \mathbb{N}} \subset \mathcal{D}(\Omega)$ convergente in $\mathcal{D}(\Omega)$:
> $$
> \varphi_n \xrightarrow{n \to +\infty} \varphi \quad \text{in } \mathcal{D}(\Omega) \implies T(\varphi_n) \xrightarrow{n \to +\infty} T(\varphi)
> $$

> [!definition] Distribuzione
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto. Una **distribuzione** in $\Omega$ è un operatore (o funzionale lineare):
> $$
> T: \mathcal{D}(\Omega) \to \mathbb{R}
> $$
> che risulti **lineare** e **continuo** rispetto alla convergenza di $\mathcal{D}(\Omega)$.
> La famiglia di tutte le distribuzioni su $\Omega$ prende il nome di **spazio delle distribuzioni** (o duale topologico di $\mathcal{D}(\Omega)$) e si denota con:
> $$
> \mathcal{D}^*(\Omega) \quad (\text{oppure } \mathcal{D}'(\Omega))
> $$

> [!note] Equivalenza della continuità con la continuità nell'origine
> Come negli spazi normati, per linearità si verifica immediatamente che:
> $$
> T \text{ è continuo su } \mathcal{D}(\Omega) \iff T \text{ è continuo in } 0
> $$

> [!definition] Notazione di dualità (crochet)
> Sia $T \in \mathcal{D}^*(\Omega)$ una distribuzione e sia $\varphi \in \mathcal{D}(\Omega)$ una funzione test.
> L'azione del funzionale $T$ su $\varphi$ viene denotata con la parentesi di dualità (*crochet*):
> $$
> T(\varphi) =: \langle T, \varphi \rangle
> $$

> [!definition] Uguaglianza tra distribuzioni
> Siano $T_1, T_2 \in \mathcal{D}^*(\Omega)$. Diciamo che le due distribuzioni sono uguali se e solo se coincidono su ogni funzione test:
> $$
> T_1 = T_2 \iff \langle T_1, \varphi \rangle = \langle T_2, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$

> [!definition] Convergenza nello spazio delle distribuzioni (convergenza debole-*)
> Sia $\{T_n\}_{n \in \mathbb{N}} \subset \mathcal{D}^*(\Omega)$ una successione di distribuzioni e sia $T \in \mathcal{D}^*(\Omega)$.
> Diciamo che $T_n$ converge a $T$ nel senso delle distribuzioni:
> $$
> T_n \xrightarrow{n \to +\infty} T \quad \text{in } \mathcal{D}^*(\Omega)
> $$
> se e solo se converge la successione dei valori scalari su ogni funzione test:
> $$
> \langle T_n, \varphi \rangle \xrightarrow{n \to +\infty} \langle T, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
>
### Distribuzioni regolari indotte da funzioni integrabili

> [!example] Distribuzione generata da una funzione $L^1(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia $u \in L^1(\Omega)$.
> Definiamo il funzionale $T_u: \mathcal{D}(\Omega) \to \mathbb{R}$ tramite l'integrale:
> $$
> T_u(\varphi) := \int_\Omega u(\mathbf{x}) \varphi(\mathbf{x}) \, d\mathbf{x} \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> 
> **1. Buona positura del funzionale:**
> Poiché $\varphi \in C^\infty_0(\Omega)$, il prodotto $u\varphi$ è una funzione misurabile. Inoltre, essendo $\varphi$ a supporto compatto:
> $$
> \int_\Omega |u\varphi| \, d\mathbf{x} = \int_{\mathrm{supp}\varphi} |u\varphi| \, d\mathbf{x} \le \max_{\mathrm{supp}\varphi} |\varphi| \int_\Omega |u| \, d\mathbf{x} = \max_{\mathrm{supp}\varphi} |\varphi| \, \|u\|_1 < +\infty
> $$
> Ne segue che $u\varphi \in L^1(\Omega)$ e dunque il funzionale è finito e ben posto.
> 
> **2. Verifica della linearità:**
> Per ogni $a, b \in \mathbb{R}$ e per ogni $\varphi_1, \varphi_2 \in \mathcal{D}(\Omega)$, grazie alla linearità dell'integrale di Lebesgue:
> $$
> \begin{align*}
> \langle T_u, a\varphi_1 + b\varphi_2 \rangle &= \int_\Omega (a\varphi_1 + b\varphi_2) u \, d\mathbf{x} \\
> &= a \int_\Omega u \varphi_1 \, d\mathbf{x} + b \int_\Omega u \varphi_2 \, d\mathbf{x} \\
> &= a \langle T_u, \varphi_1 \rangle + b \langle T_u, \varphi_2 \rangle
> \end{align*}
> $$
> Pertanto $T_u$ è un funzionale lineare.
> 
> **3. Verifica della continuità:**
> Il funzionale $T_u$ è continuo su $\mathcal{D}(\Omega)$ se per ogni successione $\{\varphi_n\}_{n \in \mathbb{N}} \subset \mathcal{D}(\Omega)$ tale che $\varphi_n \xrightarrow{n \to +\infty} 0$ in $\mathcal{D}(\Omega)$, si ha:
> $$
> \langle T_u, \varphi_n \rangle \xrightarrow{n \to +\infty} \langle T_u, 0 \rangle = 0
> $$
> Stimiamo il valore assoluto del crochet:
> $$
> |\langle T_u, \varphi_n \rangle| = \left| \int_\Omega u \varphi_n \, d\mathbf{x} \right| \le \int_\Omega |u \varphi_n| \, d\mathbf{x} = \int_{\mathrm{supp}\varphi_n} |u \varphi_n| \, d\mathbf{x}
> $$
> Essendo $\varphi_n \to 0$ in $\mathcal{D}(\Omega)$, esiste un compatto fisso $K \subset \Omega$ tale che:
> $$
> \mathrm{supp} \varphi_n \subseteq K \quad \forall n \in \mathbb{N} \quad \text{e} \quad \max_{\mathbf{x} \in K} |\varphi_n(\mathbf{x})| \xrightarrow{n \to +\infty} 0
> $$
> Possiamo quindi maggiorare:
> $$
> |\langle T_u, \varphi_n \rangle| \le \int_K |u| |\varphi_n| \, d\mathbf{x} \le \max_{\mathbf{x} \in K} |\varphi_n(\mathbf{x})| \int_K |u| \, d\mathbf{x} \xrightarrow{n \to +\infty} 0
> $$
> Ne consegue:
> $$
> \langle T_u, \varphi_n \rangle \xrightarrow{n \to +\infty} 0 \implies T_u \in \mathcal{D}^*(\Omega)
> $$

> [!proposition] Iniettività dell'inclusione di $L^1(\Omega)$ in $\mathcal{D}^*(\Omega)$
> Consideriamo l'operatore di immersione che associa a ogni funzione integrabile la corrispondente distribuzione regolare:
> $$
> T: L^1(\Omega) \to \mathcal{D}^*(\Omega), \quad u \longmapsto T_u
> $$
> Tale operatore è **iniettivo**.
> Infatti, date due funzioni $u_1, u_2 \in L^1(\Omega)$:
> $$
> T_{u_1} = T_{u_2} \text{ in } \mathcal{D}^*(\Omega) \iff \langle T_{u_1}, \varphi \rangle = \langle T_{u_2}, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> \iff \int_\Omega (u_1 - u_2)\varphi \, d\mathbf{x} = 0 \quad \forall \varphi \in \mathcal{D}(\Omega) \implies u_1 = u_2 \quad \text{q.o. in } \Omega
> $$
> *(la conclusione segue dal Lemma fondamentale del calcolo delle variazioni e dalla densità di $\mathcal{D}(\Omega)$ in $L^p$)*.

> [!note] Immersione canonica e abuso di notazione
> In virtù dell'iniettività dell'immersione, si omette frequentemente la notazione $T_u$ e si scrive direttamente con un formale abuso di notazione:
> $$
> \langle u, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> identificando la funzione $u \in L^1(\Omega)$ con la distribuzione da essa generata. Questo approccio unificato risulterà fondamentale nell'estensione delle operazioni del calcolo infinitesimale.

> [!note] Sufficienza dell'integrabilità locale
> Dalla dimostrazione della continuità di $T_u$ emerge chiaramente che non è necessario che la funzione $u$ sia integrabile sull'intero aperto $\Omega$; è sufficiente che essa sia integrabile su ogni sottoinsieme compatto $K \subset \Omega$:
> $$
> u \in L^1(K) \quad \forall K \subset \Omega \text{ compatto}
> $$

> [!definition] Spazio $L^p_{\text{loc}}(\Omega)$ delle funzioni localmente integrabili
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto e sia $p \in [1, +\infty]$. Diciamo che una funzione $u: \Omega \to \mathbb{R}$ appartiene allo spazio $L^p_{\text{loc}}(\Omega)$ se e solo se è integrabile a potenza $p$ su ogni compatto:
> $$
> u \in L^p_{\text{loc}}(\Omega) \iff \forall K \subset \Omega \text{ compatto}, \quad u \in L^p(K)
> $$
> In particolare, per $p = 1$, la funzione $u$ si dice **localmente integrabile**:
> $$
> u \in L^1_{\text{loc}}(\Omega) \iff \int_K |u(\mathbf{x})| \, d\mathbf{x} < +\infty \quad \forall K \subset \Omega \text{ compatto}
> $$
> A questo punto l'assegnazione della distribuzione regolare si estende a tutte le funzioni localmente integrabili:
> $$
> u \in L^1_{\text{loc}}(\Omega) \longmapsto T_u \in \mathcal{D}^*(\Omega), \quad \langle T_u, \varphi \rangle := \int_\Omega u(\mathbf{x})\varphi(\mathbf{x})\,d\mathbf{x}
> $$

> [!proposition] Inclusione $L^p(\Omega) \subset L^1_{\text{loc}}(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia $p \in [1, +\infty]$. Allora vale l'inclusione:
> $$
> L^p(\Omega) \subset L^1_{\text{loc}}(\Omega)
> $$

> [!quote]- Dimostrazione
> Sia $u \in L^p(\Omega)$ e sia $K \subset \Omega$ un compatto arbitrario.
> Applichiamo la disuguaglianza di Hölder all'integrale di $|u|$ su $K$, considerando la funzione costante $1$:
> $$
> \int_K |u| \, d\mathbf{x} = \int_K |u| \cdot 1 \, d\mathbf{x} \underset{\text{Hölder}}{\le} \|u\|_{L^p(K)} \|1\|_{L^{p'}(K)}
> $$
> dove $p'$ denota l'esponente coniugato di $p$, tale che $\frac{1}{p} + \frac{1}{p'} = 1$.
> Calcolando esplicitamente la norma coniugata della funzione costante $1$:
> $$
> \|1\|_{L^{p'}(K)} = \left[ \int_K 1^{p'} \, d\mathbf{x} \right]^{\frac{1}{p'}} = |K|^{\frac{1}{p'}}
> $$
> Essendo $K$ compatto, la sua misura di Lebesgue $|K|$ è finita, e poiché $\|u\|_{L^p(K)} \le \|u\|_{L^p(\Omega)} < +\infty$, otteniamo:
> $$
> \int_K |u| \, d\mathbf{x} \le |K|^{\frac{1}{p'}} \|u\|_{L^p(K)} < +\infty
> $$
> Dunque $u \in L^1(K)$ per ogni compatto $K \subset \Omega$, ovvero $u \in L^1_{\text{loc}}(\Omega)$. $\blacksquare$
>
### Distribuzioni singolari: la Delta di Dirac

> [!definition] Delta di Dirac
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia fissato un punto $\mathbf{x}_0 \in \Omega$.
> Si definisce la **delta di Dirac** concentrata nel punto $\mathbf{x}_0$, denotata con $\delta_{\mathbf{x}_0}$, il funzionale che associa ad ogni funzione test il suo valore puntuale in $\mathbf{x}_0$:
> $$
> \delta_{\mathbf{x}_0}: \mathcal{D}(\Omega) \to \mathbb{R}, \quad \langle \delta_{\mathbf{x}_0}, \varphi \rangle := \varphi(\mathbf{x}_0) \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$

> [!proposition] Continuità e linearità della delta di Dirac
> Il funzionale $\delta_{\mathbf{x}_0}$ è una distribuzione su $\Omega$, ossia:
> $$
> \delta_{\mathbf{x}_0} \in \mathcal{D}^*(\Omega)
> $$

> [!quote]- Dimostrazione
> Verifichiamo direttamente le proprietà richieste:
> 1. **Linearità:** Per ogni combinazione lineare con coefficienti $\alpha, \beta \in \mathbb{R}$ e per ogni coppia di funzioni test $\varphi_1, \varphi_2 \in \mathcal{D}(\Omega)$:
>    $$
>    \langle \delta_{\mathbf{x}_0}, \alpha\varphi_1 + \beta\varphi_2 \rangle = (\alpha\varphi_1 + \beta\varphi_2)(\mathbf{x}_0) = \alpha \varphi_1(\mathbf{x}_0) + \beta \varphi_2(\mathbf{x}_0) = \alpha \langle \delta_{\mathbf{x}_0}, \varphi_1 \rangle + \beta \langle \delta_{\mathbf{x}_0}, \varphi_2 \rangle
>    $$
>    Dunque $\delta_{\mathbf{x}_0}$ è un funzionale lineare.
> 2. **Continuità:** Sia $\{\varphi_n\}_{n \in \mathbb{N}} \subset \mathcal{D}(\Omega)$ una successione convergente a zero in $\mathcal{D}(\Omega)$, ovvero $\varphi_n \xrightarrow{n \to +\infty} 0$ in $\mathcal{D}(\Omega)$.
>    Per definizione di convergenza in $\mathcal{D}(\Omega)$, $\varphi_n$ converge uniformemente a zero su un compatto contenente $\mathbf{x}_0$. Di conseguenza:
>    $$
>    |\langle \delta_{\mathbf{x}_0}, \varphi_n \rangle| = |\varphi_n(\mathbf{x}_0)| \le \|\varphi_n\|_\infty \xrightarrow{n \to +\infty} 0
>    $$
>    Pertanto:
>    $$
>    \langle \delta_{\mathbf{x}_0}, \varphi_n \rangle = \varphi_n(\mathbf{x}_0) \xrightarrow{n \to +\infty} 0
>    $$
> Il funzionale è continuo nell'origine, e quindi continuo ovunque su $\mathcal{D}(\Omega)$.
> Concludiamo che $\delta_{\mathbf{x}_0} \in \mathcal{D}^*(\Omega)$. $\blacksquare$

> [!note] Natura singolare della Delta di Dirac
> Si dimostra per assurdo che non esiste alcuna funzione localmente integrabile capace di generare la delta di Dirac:
> $$
> \not\exists u \in L^1_{\text{loc}}(\Omega) : \delta_{\mathbf{x}_0} = T_u \quad \text{in } \mathcal{D}^*(\Omega)
> $$
> 
> **Dimostrazione per assurdo:**
> Supponiamo che esista una funzione $u \in L^1_{\text{loc}}(\Omega)$ tale che:
> $$
> \langle T_u, \varphi \rangle = \langle \delta_{\mathbf{x}_0}, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> Tale relazione deve valere in particolare per tutte le funzioni test $\varphi \in \mathcal{D}(\Omega)$ il cui supporto non contiene il punto $\mathbf{x}_0$, ossia:
> $$
> \mathrm{supp} \varphi \subset \Omega \setminus \{\mathbf{x}_0\}
> $$
> Per ciascuna di tali funzioni si ha identicamente:
> $$
> \langle \delta_{\mathbf{x}_0}, \varphi \rangle = \varphi(\mathbf{x}_0) = 0
> $$
> Ne discende che:
> $$
> |\langle T_u, \varphi \rangle| = \left| \int_\Omega u\varphi \, d\mathbf{x} \right| \le \int_\Omega |u\varphi| \, d\mathbf{x} = \int_{\mathrm{supp}\varphi} |u\varphi| \, d\mathbf{x} = 0
> $$
> da cui segue che $u = 0$ quasi ovunque su ogni compatto contenuto in $\Omega \setminus \{\mathbf{x}_0\}$.
> Poiché $\Omega \setminus \{\mathbf{x}_0\}$ è unione numerabile di compatti, deduciamo:
> $$
> u = 0 \quad \text{q.o. in } \Omega \setminus \{\mathbf{x}_0\} \implies u = 0 \quad \text{q.o. in } \Omega
> $$
> *(essendo il punto singolo $\{\mathbf{x}_0\}$ un insieme di misura di Lebesgue nulla)*.
> Ma se $u = 0$ q.o. in $\Omega$, allora per qualsiasi funzione test $\varphi \in \mathcal{D}(\Omega)$ per la quale $\mathbf{x}_0 \in \mathrm{supp}\varphi$ e $\varphi(\mathbf{x}_0) \ne 0$, calcolando il crochet si avrebbe:
> $$
> \langle T_u, \varphi \rangle = \int_\Omega 0 \cdot \varphi \, d\mathbf{x} = 0
> $$
> mentre contemporaneamente:
> $$
> \langle \delta_{\mathbf{x}_0}, \varphi \rangle = \varphi(\mathbf{x}_0) \ne 0
> $$
> il che produce la contraddizione $0 = \varphi(\mathbf{x}_0) \ne 0$.
> Dunque non esiste alcuna funzione $u \in L^1_{\text{loc}}(\Omega)$ rappresentante la delta di Dirac, confermando che $\delta_{\mathbf{x}_0}$ è una **distribuzione singolare**.

> [!theorem] La Delta di Dirac come limite distribuzionale di funzioni $L^1$
> Sebbene non sia rappresentabile da alcuna funzione integrabile, la delta di Dirac $\delta_{\mathbf{x}_0}$ può essere ottenuta come **limite debole** nello spazio $\mathcal{D}^*(\Omega)$ di una successione di distribuzioni regolari associate a funzioni integrabili $\{u_n\}_{n \in \mathbb{N}} \subset L^1(\Omega)$ aventi norma unitaria $\|u_n\|_1 = 1$:
> $$
> T_{u_n} \xrightarrow{n \to +\infty} \delta_{\mathbf{x}_0} \quad \text{in } \mathcal{D}^*(\Omega)
> $$
> Si sottolinea che la successione di funzioni $u_n$ converge a zero quasi ovunque, ma non ammette limite in norma $L^1$:
> $$
> u_n \xrightarrow{n \to +\infty} 0 \quad \text{q.o.}, \quad \text{ma } \|u_n - 0\|_1 = 1 \not\xrightarrow{n \to +\infty} 0
> $$

> [!example] Approssimazione di $\delta_0$ tramite rettangoli in $\mathbb{R}$
> In dimensione $n=1$, consideriamo la successione di funzioni a scatola (*boxcar*):
> $$
> u_n(x) := n \chi_{\left[-\frac{1}{2n}, \frac{1}{2n}\right]}(x) = \begin{cases} n & \text{se } |x| \le \frac{1}{2n} \\ 0 & \text{se } |x| > \frac{1}{2n} \end{cases}
> $$
> 
> **Proprietà della successione $u_n$:**
> - Per ogni $n \in \mathbb{N}$, la massa totale è unitaria:
>   $$
>   \|u_n\|_1 = \int_{-\frac{1}{2n}}^{\frac{1}{2n}} n \, dx = n \cdot \frac{1}{n} = 1
>   $$
> - Convergenza puntuale:
>   Fissato un qualsiasi $x \ne 0$, per $n > \frac{1}{2|x|}$ si ha $|x| > \frac{1}{2n}$, dunque definitivamente:
>   $$
>   u_n(x) = 0 \quad \forall x \ne 0
>   $$
>   Nell'origine, invece, la funzione diverge:
>   $$
>   u_n(0) = n \quad \forall n \in \mathbb{N}
>   $$
>   Pertanto:
>   $$
>   \lim_{n \to +\infty} u_n(x) = \begin{cases} 0 & \text{se } x \ne 0 \\ +\infty & \text{se } x = 0 \end{cases} = 0 \quad \text{quasi ovunque su } \mathbb{R}
>   $$
> 
> **Verifica della convergenza distribuzionale a $\delta_0$:**
> Sia $\varphi \in C^\infty_0(\mathbb{R}) = \mathcal{D}(\mathbb{R})$ una generica funzione test. Valutiamo la differenza tra il crochet di $T_{u_n}$ e quello di $\delta_0$:
> $$
> \begin{align*}
> |\langle T_{u_n}, \varphi \rangle - \langle \delta_0, \varphi \rangle| &= \left| \int_\mathbb{R} u_n(x)\varphi(x) \, dx - \varphi(0) \right| \\
> &= \left| \int_{-\frac{1}{2n}}^{\frac{1}{2n}} n \varphi(x) \, dx - \varphi(0) \right|
> \end{align*}
> $$
> Ricordando che $\int_{-\frac{1}{2n}}^{\frac{1}{2n}} n \, dx = 1$, riscriviamo $\varphi(0) = \int_{-\frac{1}{2n}}^{\frac{1}{2n}} n \varphi(0) \, dx$:
> $$
> |\langle T_{u_n}, \varphi \rangle - \langle \delta_0, \varphi \rangle| = \left| \int_{-\frac{1}{2n}}^{\frac{1}{2n}} n (\varphi(x) - \varphi(0)) \, dx \right| \le n \int_{-\frac{1}{2n}}^{\frac{1}{2n}} |\varphi(x) - \varphi(0)| \, dx
> $$
> Essendo $\varphi$ continua, fissato arbitrariamente $\varepsilon > 0$, esiste un $\delta > 0$ tale che:
> $$
> |x| < \delta \implies |\varphi(x) - \varphi(0)| < \varepsilon
> $$
> Scegliendo $n > \frac{1}{2\delta}$, per ogni $x \in \left[-\frac{1}{2n}, \frac{1}{2n}\right]$ si ha $|x| \le \frac{1}{2n} < \delta$, per cui:
> $$
> |\langle T_{u_n}, \varphi \rangle - \langle \delta_0, \varphi \rangle| \le \varepsilon n \int_{-\frac{1}{2n}}^{\frac{1}{2n}} dx = \varepsilon \cdot 1 = \varepsilon
> $$
> Per l'arbitrarietà di $\varepsilon > 0$, concludiamo che per definizione di limite:
> $$
> \lim_{n \to +\infty} \langle T_{u_n}, \varphi \rangle = \varphi(0) = \langle \delta_0, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\mathbb{R})
> $$
> ovvero:
> $$
> T_{u_n} \xrightarrow{n \to +\infty} \delta_0 \quad \text{in } \mathcal{D}^*(\mathbb{R})
> $$

> [!note] Approssimazione della Delta di Dirac in $\mathbb{R}^n$
> La medesima costruzione vale in dimensione arbitraria $\mathbb{R}^n$, dove la delta di Dirac $\delta_{\mathbf{x}_0}$ è il limite distribuzionale delle funzioni caratteristiche normalizzate sulle palle euclidee centrate in $\mathbf{x}_0$:
> $$
> u_n(\mathbf{x}) := \frac{1}{|B_{\frac{1}{n}}(\mathbf{x}_0)|} \chi_{B_{\frac{1}{n}}(\mathbf{x}_0)}(\mathbf{x})
> $$
> dove $|B_{\frac{1}{n}}(\mathbf{x}_0)|$ indica il volume (misura di Lebesgue) della sfera di raggio $1/n$ in $\mathbb{R}^n$.
>
## 3.1. Operazioni nello spazio delle distribuzioni

### Struttura di spazio vettoriale

> [!definition] Combinazione lineare di distribuzioni
> Lo spazio delle distribuzioni $\mathcal{D}^*(\Omega)$ ammette una naturale struttura di spazio vettoriale reale (o complesso), definendo le operazioni puntualmente su ciascuna funzione test tramite dualità:
> - **Somma di distribuzioni:** Per ogni $T, S \in \mathcal{D}^*(\Omega)$:
>   $$
>   \langle T + S, \varphi \rangle := \langle T, \varphi \rangle + \langle S, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
>   $$
> - **Prodotto per uno scalare:** Per ogni $T \in \mathcal{D}^*(\Omega)$ e per ogni scalare $c \in \mathbb{R}$:
>   $$
>   \langle cT, \varphi \rangle := \langle T, c\varphi \rangle = c \langle T, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
>   $$

> [!proposition] Continuità della somma di distribuzioni
> Siano $\{T_n\}_{n \in \mathbb{N}}, \{S_n\}_{n \in \mathbb{N}} \subset \mathcal{D}^*(\Omega)$ due successioni tali che $T_n \xrightarrow{n \to +\infty} T$ e $S_n \xrightarrow{n \to +\infty} S$ in $\mathcal{D}^*(\Omega)$. Allora:
> $$
> T_n + S_n \xrightarrow{n \to +\infty} T + S \quad \text{in } \mathcal{D}^*(\Omega)
> $$
>
### Prodotto di una distribuzione per una funzione liscia

> [!warning] Impossibilità del prodotto tra distribuzioni arbitrarie
> Non è possibile definire in generale un prodotto bilineare e associativo tra due distribuzioni generiche che estenda il prodotto ordinario delle funzioni continue (Teorema di impossibilità di Schwartz).
> 
> **Controesempio del quadrato della delta di Dirac:**
> Consideriamo la successione di funzioni integrabili:
> $$
> u_k(x) := k \chi_{\left[0, \frac{1}{k}\right]}(x) \quad \text{con } u_k \xrightarrow{k \to +\infty} \delta_0 \quad \text{in } \mathcal{D}^*(\mathbb{R})
> $$
> Provando a calcolare l'azione del termine quadratico $u_k^2$:
> $$
> \int_\mathbb{R} u_k^2(x) \varphi(x) \, dx = \int_0^{\frac{1}{k}} k^2 \varphi(x) \, dx = k \cdot k \int_0^{\frac{1}{k}} \varphi(x) \, dx
> $$
> Per il Teorema della media integrale, esiste $x_k \in \left(0, \frac{1}{k}\right)$ tale che:
> $$
> \langle u_k^2, \varphi \rangle = k^2 \cdot \frac{1}{k} \varphi(x_k) = k \varphi(x_k) \xrightarrow{k \to +\infty} +\infty \quad \text{qualora } \varphi(0) \ne 0
> $$
> La successione diverge e non ammette alcun limite distribuzionale. Questo dimostra che il prodotto tra distribuzioni singolari non è banale né genericamente definibile.

> [!definition] Prodotto di una distribuzione per una funzione $C^\infty(\Omega)$
> Se invece moltiplichiamo una distribuzione per una funzione $\psi$ dotata di regolarità liscia $\psi \in C^\infty(\Omega)$, allora per ogni funzione test $\varphi \in \mathcal{D}(\Omega)$ il prodotto $\psi\varphi$ appartiene ancora a $\mathcal{D}(\Omega)$ (essendo infinitamente differenziabile e a supporto compatto $\mathrm{supp}(\psi\varphi) \subseteq \mathrm{supp}\varphi$).
> Si definisce allora la distribuzione prodotto $T\psi$ trasponendo l'azione della moltiplicazione sulla funzione test:
> $$
> \langle T\psi, \varphi \rangle := \langle T, \psi\varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$

> [!lemma] Buona positura del prodotto per funzione liscia
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto, $T \in \mathcal{D}^*(\Omega)$ e $\psi \in C^\infty(\Omega)$.
> Allora $T\psi$ è un funzionale lineare e continuo su $\mathcal{D}(\Omega)$, ovvero:
> $$
> \exists T\psi \in \mathcal{D}^*(\Omega) : \langle T\psi, \varphi \rangle = \langle T, \psi\varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$

> [!proposition] Convergenza del prodotto per funzione liscia
> Sia $\{T_n\}_{n \in \mathbb{N}} \subset \mathcal{D}^*(\Omega)$ una successione convergente $T_n \xrightarrow{n \to +\infty} T$ in $\mathcal{D}^*(\Omega)$ e sia $\psi \in C^\infty(\Omega)$. Allora:
> $$
> T_n \psi \xrightarrow{n \to +\infty} T\psi \quad \text{in } \mathcal{D}^*(\Omega)
> $$
>
### Composizione di una distribuzione con un diffeomorfismo

> [!warning] Difficoltà della composizione non lineare
> Anche l'operazione di composizione non può essere estesa a mappe arbitrarie.
> 
> **Controesempio con mappa cubica:**
> Consideriamo la successione di approssimanti della delta $u_k(x) := k \chi_{\left[0, \frac{1}{k}\right]}(x)$ e componiamola con la mappa cubica $x \mapsto x^3$:
> $$
> w_k(x) := u_k(x^3) = k \chi_{\left[0, \sqrt[3]{\frac{1}{k}}\right]}(x)
> $$
> Integrando contro una funzione test $\varphi \in \mathcal{D}(\mathbb{R})$:
> $$
> \int_\mathbb{R} w_k(x) \varphi(x) \, dx = k \int_0^{\sqrt[3]{\frac{1}{k}}} \varphi(x) \, dx \underset{\text{t. media}}{=} k \cdot k^{-\frac{1}{3}} \varphi(x_k) = k^{\frac{2}{3}} \varphi(x_k) \xrightarrow{k \to +\infty} +\infty \quad \text{se } \varphi(0) \ne 0
> $$
> Il limite diverge, mostrando che la composizione necessita di condizioni rigorose di invertibilità e regolarità.

> [!note] Motivazione tramite la formula del cambio di variabili
> Per motivare la definizione corretta, consideriamo una funzione integrabile $u \in L^1(\Omega)$ e una mappa invertibile $\mathbf{F}: \Omega' \subseteq \mathbb{R}^n \to \Omega$.
> Applicando la formula multidimensionale del cambio di variabili ponendo $\mathbf{x} = \mathbf{F}(\mathbf{y})$, da cui $\mathbf{y} = \mathbf{F}^{-1}(\mathbf{x})$ e $d\mathbf{y} = |\det D_{\mathbf{F}^{-1}}(\mathbf{x})| \, d\mathbf{x}$:
> $$
> \int_{\Omega'} u(\mathbf{F}(\mathbf{y})) \varphi(\mathbf{y}) \, d\mathbf{y} = \int_\Omega u(\mathbf{x}) \varphi(\mathbf{F}^{-1}(\mathbf{x})) |\det D_{\mathbf{F}^{-1}}(\mathbf{x})| \, d\mathbf{x}
> $$
> Pertanto è naturale richiedere che la mappa $\mathbf{F}$ sia un diffeomorfismo liscio, in modo che la funzione:
> $$
> \psi(\mathbf{x}) := \varphi(\mathbf{F}^{-1}(\mathbf{x})) |\det D_{\mathbf{F}^{-1}}(\mathbf{x})|
> $$
> appartenga ancora allo spazio delle funzioni test $\mathcal{D}(\Omega)$.

> [!lemma] Composizione con un diffeomorfismo
> Siano $\Omega, \Omega' \subseteq \mathbb{R}^n$ aperti, $T \in \mathcal{D}^*(\Omega)$, e sia $\mathbf{F}: \Omega' \to \Omega$ una mappa biiettiva con $\mathbf{F} \in C^\infty(\Omega')$ e inversa $\mathbf{F}^{-1} \in C^\infty(\Omega)$ (un diffeomorfismo di classe $C^\infty$).
> Allora esiste ed è ben definita la distribuzione composta $T \circ \mathbf{F} \in \mathcal{D}^*(\Omega')$ definita da:
> $$
> \langle T \circ \mathbf{F}, \varphi \rangle := \langle T, \psi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega')
> $$
> dove:
> $$
> \psi(\mathbf{x}) := \varphi(\mathbf{F}^{-1}(\mathbf{x})) |\det D_{\mathbf{F}^{-1}}(\mathbf{x})| \in \mathcal{D}(\Omega)
> $$

> [!quote]- Dimostrazione
> Sia $\{\varphi_n\}_{n \in \mathbb{N}} \subset \mathcal{D}(\Omega')$ una successione tale che $\varphi_n \xrightarrow{n \to +\infty} 0$ in $\mathcal{D}(\Omega')$.
> Per mostrare che $T \circ \mathbf{F} \in \mathcal{D}^*(\Omega')$, è sufficiente provare che:
> $$
> \psi_n(\mathbf{x}) := \varphi_n(\mathbf{F}^{-1}(\mathbf{x})) |\det D_{\mathbf{F}^{-1}}(\mathbf{x})| \xrightarrow{n \to +\infty} 0 \quad \text{in } \mathcal{D}(\Omega)
> $$
> Infatti, se ciò vale, per la continuità di $T \in \mathcal{D}^*(\Omega)$ si ha immediatamente:
> $$
> \langle T, \psi_n \rangle \xrightarrow{n \to +\infty} 0 \implies \langle T \circ \mathbf{F}, \varphi_n \rangle \xrightarrow{n \to +\infty} 0
> $$
> Poiché $|\det D_{\mathbf{F}^{-1}}| \in C^\infty(\Omega)$, per il lemma del prodotto per funzioni lisce ci basta dimostrare che:
> $$
> \varphi_n^*(\mathbf{x}) := \varphi_n(\mathbf{F}^{-1}(\mathbf{x})) \xrightarrow{n \to +\infty} 0 \quad \text{in } \mathcal{D}(\Omega)
> $$
> 
> 1. **Supporto compatto uniforme:**
>    Poiché $\varphi_n \to 0$ in $\mathcal{D}(\Omega')$, esiste un compatto fisso $K' \subset \Omega'$ tale che:
>    $$
>    \mathrm{supp} \varphi_n \subseteq K' \quad \forall n \in \mathbb{N}
>    $$
>    Essendo $\mathbf{F}$ continua, l'immagine $K := \mathbf{F}(K')$ è un sottoinsieme compatto di $\Omega$.
>    Ne segue che:
>    $$
>    \mathrm{supp} \varphi_n^* = \mathbf{F}(\mathrm{supp} \varphi_n) \subseteq \mathbf{F}(K') = K \subset \Omega \quad \forall n \in \mathbb{N}
>    $$
> 
> 2. **Convergenza uniforme delle derivate:**
>    Per verificare la convergenza in $\mathcal{D}(\Omega)$, deriviamo $\varphi_n^*$ rispetto a qualsiasi multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$.
>    Applicando la regola della catena multidimensionale, ciascuna derivata parziale $D^{\boldsymbol{\alpha}}\varphi_n^*(\mathbf{x})$ è esprimibile come combinazione lineare finita di derivate di $\varphi_n$ valutate in $\mathbf{F}^{-1}(\mathbf{x})$, con coefficienti costituiti da prodotti di derivate parziali delle componenti di $\mathbf{F}^{-1}(\mathbf{x})$.
>    Essendo $\mathbf{F}^{-1} \in C^\infty(\Omega)$, tali derivate sono continue e quindi ammettono massimo finito sul compatto $K$.
>    Poiché per ipotesi tutte le derivate di $\varphi_n$ convergono uniformemente a zero su $K'$:
>    $$
>    \|D^{\boldsymbol{\alpha}}(\varphi_n \circ \mathbf{F}^{-1})\|_{L^\infty(K)} \le C_{\boldsymbol{\alpha}} \sum_{|\beta| \le |\alpha|} \|D^{\boldsymbol{\beta}} \varphi_n\|_{L^\infty(K')} \xrightarrow{n \to +\infty} 0
>    $$
>    Dunque $\varphi_n^* \to 0$ in $\mathcal{D}(\Omega)$.
> 
> Segue che $\psi_n \to 0$ in $\mathcal{D}(\Omega)$ e pertanto $T \circ \mathbf{F} \in \mathcal{D}^*(\Omega')$. $\blacksquare$

> [!proposition] Continuità della composizione distribuzionale
> Siano $\Omega, \Omega' \subseteq \mathbb{R}^n$ aperti e sia $\mathbf{F}: \Omega' \to \Omega$ una mappa biiettiva liscia con inversa liscia.
> Se $\{T_n\}_{n \in \mathbb{N}} \subset \mathcal{D}^*(\Omega')$ è una successione tale che $T_n \xrightarrow{n \to +\infty} T$ in $\mathcal{D}^*(\Omega')$, allora:
> $$
> T_n \circ \mathbf{F} \xrightarrow{n \to +\infty} T \circ \mathbf{F} \quad \text{in } \mathcal{D}^*(\Omega')
> $$
>
### Restrizione di una distribuzione

> [!definition] Restrizione a un aperto
> Siano $\Omega' \subset \Omega \subset \mathbb{R}^n$ due aperti e sia $T \in \mathcal{D}^*(\Omega)$ una distribuzione su $\Omega$.
> Si definisce la **restrizione** di $T$ all'aperto $\Omega'$, denotata con $\left. T \right|_{\Omega'}$, la distribuzione:
> $$
> \left. T \right|_{\Omega'} \in \mathcal{D}^*(\Omega')
> $$
> definita associando ad ogni funzione test $\varphi \in \mathcal{D}(\Omega')$ il crochet di $T$ con l'estensione banale di $\varphi$:
> $$
> \left\langle \left. T \right|_{\Omega'}, \varphi \right\rangle := \langle T, \widetilde{\varphi} \rangle \quad \forall \varphi \in \mathcal{D}(\Omega')
> $$
> dove $\widetilde{\varphi} \in \mathcal{D}(\Omega)$ è il prolungamento a zero di $\varphi$ all'esterno di $\Omega'$:
> $$
> \widetilde{\varphi}(\mathbf{x}) := \begin{cases} \varphi(\mathbf{x}) & \text{se } \mathbf{x} \in \Omega' \\ 0 & \text{se } \mathbf{x} \in \Omega \setminus \Omega' \end{cases} = \varphi(\mathbf{x}) \chi_{\Omega'}(\mathbf{x}) \quad \forall \mathbf{x} \in \Omega
> $$
> *(Poiché $\mathrm{supp}\varphi$ è compatto e interamente contenuto nell'aperto $\Omega'$, l'estensione $\widetilde{\varphi}$ preserva la regolarità $C^\infty$ e ha supporto compatto in $\Omega$, dunque $\widetilde{\varphi} \in \mathcal{D}(\Omega)$)*.
>
### Prodotto tensoriale di distribuzioni

> [!definition] Prodotto tensoriale di funzioni localmente integrabili
> Siano $\Omega_1 \subseteq \mathbb{R}^{n_1}$ e $\Omega_2 \subseteq \mathbb{R}^{n_2}$ due aperti, e siano $u_1 \in L^1_{\text{loc}}(\Omega_1)$ e $u_2 \in L^1_{\text{loc}}(\Omega_2)$.
> Si definisce il **prodotto tensoriale** $u_1 \otimes u_2$ come la funzione a variabili separate definita sul prodotto cartesiano $\Omega_1 \times \Omega_2$:
> $$
> (u_1 \otimes u_2)(\mathbf{x}, \mathbf{y}) := u_1(\mathbf{x}) u_2(\mathbf{y}) \quad \forall (\mathbf{x}, \mathbf{y}) \in \Omega_1 \times \Omega_2
> $$

> [!note] Integrazione del prodotto tensoriale e Teorema di Fubini
> Sia $u = u_1 \otimes u_2$ e consideriamo una funzione test a due variabili congiunte $\varphi \in \mathcal{D}(\Omega_1 \times \Omega_2)$.
> Per il Teorema di Fubini-Tonelli, l'integrale congiunto può essere calcolato tramite integrazioni iterate:
> $$
> \begin{align*}
> \int_{\Omega_1 \times \Omega_2} u(\mathbf{x}, \mathbf{y}) \varphi(\mathbf{x}, \mathbf{y}) \, d\mathbf{x}\,d\mathbf{y} &= \int_{\Omega_1} u_1(\mathbf{x}) \left[ \int_{\Omega_2} u_2(\mathbf{y}) \varphi(\mathbf{x}, \mathbf{y}) \, d\mathbf{y} \right] d\mathbf{x} \\
> &= \int_{\Omega_2} u_2(\mathbf{y}) \left[ \int_{\Omega_1} u_1(\mathbf{x}) \varphi(\mathbf{x}, \mathbf{y}) \, d\mathbf{x} \right] d\mathbf{y}
> \end{align*}
> $$
> Queste identità integrali costituiscono il fondamento rigoroso per la definizione generale del prodotto tensoriale tra distribuzioni arbitrarie $T_1 \in \mathcal{D}^*(\Omega_1)$ e $T_2 \in \mathcal{D}^*(\Omega_2)$.
>
### Lemma fondamentale sul prodotto tensoriale

> [!lemma] Esistenza e calcolo del prodotto tensoriale di distribuzioni
> Siano $\Omega_1 \subseteq \mathbb{R}^{n_1}$ e $\Omega_2 \subseteq \mathbb{R}^{n_2}$ insiemi aperti, e sia $T_2 \in \mathcal{D}^*(\Omega_2)$. Allora:
> 1. Per ogni funzione test $\varphi \in \mathcal{D}(\Omega_1 \times \Omega_2)$, la funzione $\psi: \Omega_1 \to \mathbb{C}$ definita puntualmente da:
>    $$
>    \psi(\mathbf{x}) = \langle T_2, \varphi(\mathbf{x}, \cdot) \rangle \quad \forall \mathbf{x} \in \Omega_1
>    $$
>    (dove $T_2$ agisce sulla seconda variabile $\mathbf{y} \in \Omega_2$) appartiene allo spazio delle funzioni test $\mathcal{D}(\Omega_1)$.
> 2. Per ogni distribuzione $T_1 \in \mathcal{D}^*(\Omega_1)$, esiste ed è unica la distribuzione $T_1 \otimes T_2 \in \mathcal{D}^*(\Omega_1 \times \Omega_2)$, detta **prodotto tensoriale** di $T_1$ e $T_2$, definita dall'azione:
>    $$
>    \langle T_1 \otimes T_2, \varphi \rangle := \langle T_1, \langle T_2, \varphi \rangle \rangle := \langle T_1, \psi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega_1 \times \Omega_2)
>    $$
> 3. L'azione coincide valutando dapprima su $T_1$ e poi su $T_2$:
>    $$
>    \langle T_1 \otimes T_2, \varphi \rangle = \langle T_2, \langle T_1, \varphi \rangle \rangle
>    $$

> [!note] Non commutatività del prodotto tensoriale
> Sebbene valga l'identità operatoriale tra distribuzioni agenti su variabili separate:
> $$
> \langle T_1, \langle T_2, \varphi \rangle \rangle = \langle T_2, \langle T_1, \varphi \rangle \rangle
> $$
> il prodotto tensoriale **NON è commutativo**:
> $$
> T_1 \otimes T_2 \neq T_2 \otimes T_1
> $$
> poiché scambiando i fattori cambia il ruolo rispettivo delle variabili coordinate dello spazio prodotto.

> [!example] Controesempio sulla mancata commutatività: delta e derivata della delta
> Si considerino in $\mathbb{R}$ le distribuzioni $T_1 = \delta_0$ e $T_2 = \delta_0'$.
> Per ogni $\varphi \in \mathcal{D}(\mathbb{R}^2)$:
> $$
> \begin{aligned}
> \langle T_1 \otimes T_2, \varphi \rangle &= \langle \delta_{x=0}, \langle \delta'_{y=0}, \varphi \rangle \rangle \\
> &= \left\langle \delta_{x=0}, -\frac{\partial \varphi}{\partial y}(x, 0) \right\rangle = -\frac{\partial \varphi}{\partial y}(0, 0) \\
> &= \langle \delta'_{y=0}, \langle \delta_{x=0}, \varphi \rangle \rangle = \langle \delta'_{y=0}, \varphi(0, y) \rangle
> \end{aligned}
> $$
> Calcolando invece l'azione del prodotto tensoriale invertito $T_2 \otimes T_1$:
> $$
> \langle T_2 \otimes T_1, \varphi \rangle = \langle \delta'_{x=0}, \langle \delta_{y=0}, \varphi \rangle \rangle = -\frac{\partial \varphi}{\partial x}(0, 0)
> $$
> Poiché in generale $-\frac{\partial \varphi}{\partial y}(0, 0) \neq -\frac{\partial \varphi}{\partial x}(0, 0)$, si conclude che:
> $$
> T_1 \otimes T_2 \neq T_2 \otimes T_1
> $$

> [!example] Prodotto tensoriale di delta di Dirac
> Siano $T_1 = \delta_{\mathbf{0}} \in \mathcal{D}^*(\mathbb{R}^n)$ e $T_2 = \delta_{\mathbf{0}} \in \mathcal{D}^*(\mathbb{R}^m)$.
> Allora il loro prodotto tensoriale è la delta di Dirac nell'origine dello spazio prodotto $\mathbb{R}^{n+m}$:
> $$
> T_1 \otimes T_2 = \delta_{\mathbf{0}} \quad \text{in } \mathcal{D}^*(\mathbb{R}^{n+m})
> $$
>
### Proposizione sulla continuità sequenziale del prodotto tensoriale

> [!proposition] Continuità rispetto alla convergenza debole-*
> Siano $\Omega_i \subseteq \mathbb{R}^{n_i}$ aperti ($n_i \in \mathbb{N}$) per $i = 1, \dots, N$.
> Se per ogni $i \in \{1, \dots, N\}$ la successione di distribuzioni $\{T_{i, m}\}_{m \in \mathbb{N}} \subset \mathcal{D}^*(\Omega_i)$ converge debolmente a $T_i \in \mathcal{D}^*(\Omega_i)$:
> $$
> T_{i, m} \xrightharpoonup{m \to +\infty} T_i \quad \text{in } \mathcal{D}^*(\Omega_i) \quad \forall i = 1, \dots, N
> $$
> allora il prodotto tensoriale delle successioni converge debolmente al prodotto tensoriale dei limiti:
> $$
> T_{1, m} \otimes \dots \otimes T_{N, m} \xrightharpoonup{m \to +\infty} T_1 \otimes \dots \otimes T_N \quad \text{in } \mathcal{D}^*(\Omega_1 \times \dots \times \Omega_N)
> $$
## 3.2. Derivazione di distribuzioni

Consideriamo inizialmente il caso unidimensionale $n = 1$, con $\Omega \subset \mathbb{R}$ aperto.

### Derivata prima distribuzionale

> [!definition] Derivata prima di una distribuzione
> Sia $\Omega \subset \mathbb{R}$ aperto e sia $T \in \mathcal{D}^*(\Omega)$.
> Si definisce **derivata prima distribuzionale** (o nel senso delle distribuzioni) di $T$ il funzionale lineare $T' \in \mathcal{D}^*(\Omega)$ la cui azione su ogni funzione test $\varphi \in \mathcal{D}(\Omega)$ è data da:
> $$
> \langle T', \varphi \rangle = - \langle T, \varphi' \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$

> [!note] Verifica della buona positura: $T'$ è una distribuzione
> Per dimostrare che $T'$ è a tutti gli effetti un elemento del duale $\mathcal{D}^*(\Omega)$, verifichiamo le tre proprietà fondamentali:
> 1. **Stabilità dello spazio dei test:** Se $\varphi \in \mathcal{D}(\Omega) = C_0^\infty(\Omega)$, allora per le proprietà delle funzioni regolari a supporto compatto si ha $\varphi' \in C^\infty(\Omega)$ e:
>    $$
>    \mathrm{supp}(\varphi') \subseteq \mathrm{supp}(\varphi) \subset \Omega
>    $$
>    Dunque $\varphi' \in \mathcal{D}(\Omega)$, e la valutazione $\langle T, \varphi' \rangle$ è ben definita.
> 2. **Linearità:** Siano $\varphi_1, \varphi_2 \in \mathcal{D}(\Omega)$ e $\alpha, \beta \in \mathbb{R}$. Per la linearità della derivata ordinaria e del funzionale $T$:
>    $$
>    \begin{aligned}
>    \langle T', \alpha \varphi_1 + \beta \varphi_2 \rangle &= - \left\langle T, \frac{d}{dx}(\alpha \varphi_1 + \beta \varphi_2) \right\rangle \\
>    &= - \langle T, \alpha \varphi_1' + \beta \varphi_2' \rangle \\
>    &= - \alpha \langle T, \varphi_1' \rangle - \beta \langle T, \varphi_2' \rangle \\
>    &= \alpha \langle T', \varphi_1 \rangle + \beta \langle T', \varphi_2 \rangle
>    \end{aligned}
>    $$
> 3. **Continuità sequenziale:** Sia $\{\varphi_n\}_{n \in \mathbb{N}} \subset \mathcal{D}(\Omega)$ una successione convergente a zero nella topologia di $\mathcal{D}(\Omega)$ ($\varphi_n \xrightarrow{n \to +\infty} 0$ in $\mathcal{D}(\Omega)$).
>    Poiché la convergenza in $\mathcal{D}(\Omega)$ implica la convergenza uniforme di tutte le derivate sui compatti e l'esistenza di un compatto comune contenente tutti i supporti:
>    $$
>    \varphi_n \xrightarrow{n \to +\infty} 0 \text{ in } \mathcal{D}(\Omega) \implies \varphi_n' \xrightarrow{n \to +\infty} 0 \text{ in } \mathcal{D}(\Omega)
>    $$
>    essendo $\mathrm{supp}(\varphi_n') \subseteq \mathrm{supp}(\varphi_n)$. Dalla continuità di $T \in \mathcal{D}^*(\Omega)$ segue:
>    $$
>    \langle T', \varphi_n \rangle = - \langle T, \varphi_n' \rangle \xrightarrow{n \to +\infty} 0
>    $$
>    Pertanto $T' \in \mathcal{D}^*(\Omega)$.

> [!note] Linearità dell'operatore di derivazione distribuzionale
> L'operatore di derivazione è a sua volta lineare su $\mathcal{D}^*(\Omega)$.
> Infatti, per ogni $T_1, T_2 \in \mathcal{D}^*(\Omega)$, $\alpha_1, \alpha_2 \in \mathbb{R}$ e per ogni $\varphi \in \mathcal{D}(\Omega)$:
> $$
> \begin{aligned}
> \langle (\alpha_1 T_1 + \alpha_2 T_2)', \varphi \rangle &= - \langle \alpha_1 T_1 + \alpha_2 T_2, \varphi' \rangle \\
> &= - \alpha_1 \langle T_1, \varphi' \rangle - \alpha_2 \langle T_2, \varphi' \rangle \\
> &= \alpha_1 \langle T_1', \varphi \rangle + \alpha_2 \langle T_2', \varphi \rangle
> \end{aligned}
> $$

> [!note] Motivazione della definizione tramite integrazione per parti
> Perché definiamo la derivata distribuzionale con il segno meno trasposto sulla funzione test?
> Consideriamo $\Omega = (a, b)$ e una funzione $u \in C^1((a, b)) \subseteq L^1_{\text{loc}}((a, b))$.
> Allora anche la sua derivata classica appartiene allo spazio delle funzioni localmente integrabili: $u' \in C^0((a, b)) \subseteq L^1_{\text{loc}}((a, b))$.
> Identificando $u$ e $u'$ con le corrispondenti distribuzioni regolari $T_u, T_{u'} \in \mathcal{D}^*(\Omega)$, per ogni funzione test $\varphi \in \mathcal{D}((a, b))$ si ha:
> $$
> \langle T_u, \varphi \rangle = \int_a^b u(x) \varphi(x)\,dx, \qquad \langle T_{u'}, \varphi \rangle = \int_a^b u'(x) \varphi(x)\,dx
> $$
> Calcolando ora la derivata distribuzionale del funzionale regolare $T_u$:
> $$
> \langle T_u', \varphi \rangle = - \langle T_u, \varphi' \rangle = - \int_a^b u(x) \varphi'(x)\,dx
> $$
> Essendo $\varphi \in \mathcal{D}((a, b))$, il suo supporto è un compatto contenuto strettamente in $(a, b)$, per cui $\varphi(a) = \varphi(b) = 0$.
> Poiché $u \in C^1((a, b))$ e $\varphi' \in C^\infty((a, b))$, possiamo applicare l'integrazione per parti:
> $$
> \langle T_u', \varphi \rangle = - \left[ u(x)\varphi(x) \right]_a^b + \int_a^b u'(x) \varphi(x)\,dx = - 0 + \int_a^b u'(x) \varphi(x)\,dx = \langle T_{u'}, \varphi \rangle
> $$
> Pertanto la derivata distribuzionale di $T_u$ coincide con la distribuzione generata dalla derivata classica $u'$:
> $$
> (T_u)' = T_{u'}
> $$
>
### Derivata prima in senso debole

> [!definition] Derivata prima debole (o distribuzionale)
> Siano $\Omega \subseteq \mathbb{R}$ un aperto e $u, v \in L^1_{\text{loc}}(\Omega)$.
> Si dice che $v$ è la **derivata prima in senso debole** (o derivata distribuzionale) di $u$ se vale l'uguaglianza tra distribuzioni regolari:
> $$
> T_v = (T_u)' \quad \text{in } \mathcal{D}^*(\Omega)
> $$
> ovvero se per ogni funzione test $\varphi \in \mathcal{D}(\Omega)$:
> $$
> \langle T_v, \varphi \rangle = \langle T_u', \varphi \rangle = - \langle T_u, \varphi' \rangle \iff \int_\Omega v(x) \varphi(x)\,dx = - \int_\Omega u(x) \varphi'(x)\,dx
> $$

> [!note] Coincidenza con la derivata classica
> Se $u \in C^1(\Omega)$, la funzione $u$ è derivabile sia in senso classico sia in senso debole, e la sua derivata debole coincide quasi ovunque con la derivata classica $u'$.
>
### Generalizzazione ad $\mathbb{R}^n$ e derivate di ordine superiore

Possiamo generalizzare la nozione a funzioni e distribuzioni in dimensione $n \ge 1$ tramite il formalismo dei multi-indici.

> [!definition] Derivata distribuzionale di multi-indice
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto, $\boldsymbol{\alpha} = (\alpha_1, \dots, \alpha_n) \in \mathbb{N}^n$ un multi-indice di ordine $|\boldsymbol{\alpha}| = \sum_{j=1}^n \alpha_j$, e sia $T \in \mathcal{D}^*(\Omega)$.
> Si definisce la **derivata distribuzionale di multi-indice $\boldsymbol{\alpha}$** di $T$, denotata con $D^{\boldsymbol{\alpha}} T \in \mathcal{D}^*(\Omega)$, come il funzionale lineare e continuo definito da:
> $$
> \langle D^{\boldsymbol{\alpha}} T, \varphi \rangle = (-1)^{|\boldsymbol{\alpha}|} \langle T, D^{\boldsymbol{\alpha}} \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> dove:
> $$
> D^{\boldsymbol{\alpha}} \varphi = \frac{\partial^{|\boldsymbol{\alpha}|} \varphi}{\partial x_1^{\alpha_1} \dots \partial x_n^{\alpha_n}}
> $$

> [!note] Scarico delle derivate sulla funzione test
> Analogamente al caso unidimensionale, l'azione della derivata distribuzionale scarica l'intero operatore differenziale sulla funzione test $\varphi$, introducendo il prefattore $(-1)^{|\boldsymbol{\alpha}|}$ derivante da $|\boldsymbol{\alpha}|$ integrazioni per parti consecutive con termini di bordo nulli.

> [!definition] Derivata debole di multi-indice per funzioni $L^1_{\text{loc}}$
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto, $\boldsymbol{\alpha} = (\alpha_1, \dots, \alpha_n) \in \mathbb{N}^n$ un multi-indice, e siano $u, v \in L^1_{\text{loc}}(\Omega)$.
> Si dice che $v$ è la **derivata debole di multi-indice $\boldsymbol{\alpha}$** di $u$ se:
> $$
> D^{\boldsymbol{\alpha}} T_u = T_v \quad \text{in } \mathcal{D}^*(\Omega)
> $$
> cioè se per ogni $\varphi \in \mathcal{D}(\Omega)$ vale l'identità integrale:
> $$
> \int_\Omega v(\mathbf{x}) \varphi(\mathbf{x})\,d\mathbf{x} = (-1)^{|\boldsymbol{\alpha}|} \int_\Omega u(\mathbf{x}) D^{\boldsymbol{\alpha}} \varphi(\mathbf{x})\,d\mathbf{x}
> $$

> [!note] Coincidenza q.o. con la derivata parziale forte
> Se esiste la derivata parziale classica continua $D^{\boldsymbol{\alpha}} u \in L^1_{\text{loc}}(\Omega)$, allora essa coincide quasi ovunque con la corrispondente derivata debole.
>
### Esempi notevoli di derivazione debole

> [!example] Derivata debole del valore assoluto
> Sia $u(x) = |x|$ definita sull'intervallo aperto $\Omega = (-1, 1) \subset \mathbb{R}$.
> La funzione $u$ non è derivabile nell'origine nel senso classico dell'analisi matematica.
> La sua derivata debole è data dalla funzione segno $v(x) = \mathrm{sgn}(x)$:
> $$
> v(x) = \mathrm{sgn}(x) = \begin{cases} 1 & \text{se } x > 0 \\ -1 & \text{se } x < 0 \end{cases}
> $$
> ovvero $T_{|x|}' = T_{\mathrm{sgn}(x)}$ in $\mathcal{D}^*((-1, 1))$.
> 
> Verifichiamolo esplicitamente applicando la definizione: per ogni $\varphi \in \mathcal{D}((-1, 1))$:
> $$
> \begin{aligned}
> \langle T_{|x|}', \varphi \rangle &= - \langle T_{|x|}, \varphi' \rangle = - \int_{-1}^1 |x| \varphi'(x)\,dx \\
> &= - \int_0^1 x \varphi'(x)\,dx - \int_{-1}^0 (-x) \varphi'(x)\,dx \\
> &= - \int_0^1 x \varphi'(x)\,dx + \int_{-1}^0 x \varphi'(x)\,dx
> \end{aligned}
> $$
> Integrando per parti ciascun integrale singolarmente:
> $$
> \begin{aligned}
> - \int_0^1 x \varphi'(x)\,dx &= - [x \varphi(x)]_0^1 + \int_0^1 \varphi(x)\,dx = - (1 \cdot \varphi(1) - 0 \cdot \varphi(0)) + \int_0^1 \varphi(x)\,dx = \int_0^1 \varphi(x)\,dx \\
> \int_{-1}^0 x \varphi'(x)\,dx &= [x \varphi(x)]_{-1}^0 - \int_{-1}^0 \varphi(x)\,dx = (0 \cdot \varphi(0) - (-1)\varphi(-1)) - \int_{-1}^0 \varphi(x)\,dx = - \int_{-1}^0 \varphi(x)\,dx
> \end{aligned}
> $$
> poiché $\varphi(1) = \varphi(-1) = 0$ essendo $\mathrm{supp}(\varphi) \subset (-1, 1)$. Sommando i due contributi:
> $$
> \langle T_{|x|}', \varphi \rangle = \int_0^1 \varphi(x)\,dx - \int_{-1}^0 \varphi(x)\,dx = \int_{-1}^1 \mathrm{sgn}(x) \varphi(x)\,dx = \langle T_{\mathrm{sgn}(x)}, \varphi \rangle
> $$
> Pertanto $T_{|x|}' = T_{\mathrm{sgn}(x)}$.

> [!example] Derivata distribuzionale della funzione segno: comparsa della delta di Dirac
> Si consideri la funzione $u(x) = \mathrm{sgn}(x)$ su $\Omega = (-1, 1)$.
> Qual è la sua derivata debole?
> La funzione presenta un salto di ampiezza $2$ in $x = 0$. La sua derivata nel senso delle distribuzioni è:
> $$
> (T_{\mathrm{sgn}(x)})' = 2 \delta_0
> $$
> Infatti, per ogni funzione test $\varphi \in \mathcal{D}((-1, 1))$:
> $$
> \begin{aligned}
> \langle T_{\mathrm{sgn}(x)}', \varphi \rangle &= - \langle T_{\mathrm{sgn}(x)}, \varphi' \rangle = - \int_{-1}^1 \mathrm{sgn}(x) \varphi'(x)\,dx \\
> &= - \left( \int_{-1}^0 (-1) \varphi'(x)\,dx + \int_0^1 (+1) \varphi'(x)\,dx \right) \\
> &= \int_{-1}^0 \varphi'(x)\,dx - \int_0^1 \varphi'(x)\,dx \\
> &= [\varphi(x)]_{-1}^0 - [\varphi(x)]_0^1 \\
> &= (\varphi(0) - \varphi(-1)) - (\varphi(1) - \varphi(0))
> \end{aligned}
> $$
> Ricordando che $\varphi(1) = \varphi(-1) = 0$:
> $$
> \langle T_{\mathrm{sgn}(x)}', \varphi \rangle = \varphi(0) - 0 - (0 - \varphi(0)) = 2\varphi(0) = \langle 2\delta_0, \varphi \rangle
> $$
> Dunque:
> $$
> (T_{\mathrm{sgn}(x)})' = 2\delta_0
> $$
> In particolare, per la funzione gradino di Heaviside $H(x) = \frac{1 + \mathrm{sgn}(x)}{2}$ si ottiene la celebre relazione:
> $$
> H' = \delta_0
> $$

> [!example] Derivata della delta di Dirac e derivate successive
> Sia $T = \delta_0 \in \mathcal{D}^*((-1, 1))$.
> Calcoliamo la sua derivata prima $T' = \delta_0'$: per ogni $\varphi \in \mathcal{D}((-1, 1))$:
> $$
> \langle \delta_0', \varphi \rangle = - \langle \delta_0, \varphi' \rangle = - \varphi'(0)
> $$
> Iterando l'operazione $k$ volte per induzione, la derivata $k$-esima distribuzionale della delta di Dirac agisce come:
> $$
> \langle \delta_0^{(k)}, \varphi \rangle = (-1)^k \langle \delta_0, \varphi^{(k)} \rangle = (-1)^k \varphi^{(k)}(0) \quad \forall \varphi \in \mathcal{D}((-1, 1))
> $$

> [!example] Applicazioni fisiche: carica puntiforme
> La distribuzione $\delta$ di Dirac interviene in modo cruciale nella fisica matematica per modellare sorgenti concentrate.
> Ad esempio, in elettrostatica, la densità volumica di carica $\rho$ generata da una carica puntiforme di entità $q$ collocata nella posizione $\mathbf{x}_0 \in \mathbb{R}^3$ non è una funzione ordinaria bensì la distribuzione:
> $$
> \rho = q \delta_{\mathbf{x}_0}
> $$
> la cui carica totale si ottiene valutando $\rho$ sulla funzione costante unitaria:
> $$
> \langle \rho, 1 \rangle = q \langle \delta_{\mathbf{x}_0}, 1 \rangle = q
> $$
>

## 3.6. Complementi sulla teoria delle distribuzioni

### Supporto di una distribuzione

> [!definition] Supporto di una distribuzione
> Siano $\Omega \subseteq \mathbb{R}^n$ un aperto e $T \in \mathcal{D}^*(\Omega)$ una distribuzione. Si definisce il **supporto** di $T$, denotato con $\text{supp } T$, specificando il suo complementare in $\Omega$:
> $$
> \Omega \setminus \text{supp } T := \left\{ \mathbf{x} \in \Omega : \exists R > 0 \text{ t.c. } T|_{B_R(\mathbf{x})} = 0 \text{ in } \mathcal{D}^*(B_R(\mathbf{x})) \right\}
> $$
> da cui chiaramente:
> $$
> \text{supp } T = \Omega \setminus (\Omega \setminus \text{supp } T)
> $$

> [!example] Esempi notevoli di supporto
> 1. Per la delta di Dirac centrata in $\mathbf{x}_0$:
>    $$
>    \text{supp } \delta_{\mathbf{x}_0} = \{\mathbf{x}_0\}
>    $$
> 2. Per le derivate distribuzionali di ordine qualsiasi $\boldsymbol{\alpha} \in \mathbb{N}^n$:
>    $$
>    \text{supp } D^\alpha T \subseteq \text{supp } T
>    $$
> 3. Per distribuzioni regolari associate a funzioni $u \in L^1_{\text{loc}}(\Omega)$:
>    $$
>    \text{supp } T_u = \text{supp } u
>    $$

> [!proposition] Proprietà topologiche e annullamento sul complementare
> Sia $T \in \mathcal{D}^*(\Omega)$. Allora l'insieme
> $$
> \Omega' := \Omega \setminus \text{supp } T
> $$
> è un aperto di $\mathbb{R}^n$.
> Inoltre, se $\Omega' \ne \emptyset$, allora:
> $$
> T|_{\Omega'} = 0 \quad \text{in } \mathcal{D}^*(\Omega')
> $$
> Infine, se $\varphi \in \mathcal{D}(\Omega)$ ha supporto disgiunto dal supporto di $T$, ovvero:
> $$
> \text{supp } \varphi \cap \text{supp } T = \emptyset
> $$
> allora la valutazione distribuzionale si annulla:
> $$
> \langle T, \varphi \rangle = 0
> $$

> [!note] Dimostrazione della proposizione
> La dimostrazione di questa proprietà è complessa e richiede diversi risultati intermedi della teoria della misura e delle partizioni dell'unità.
>
### Distribuzioni a supporto compatto

> [!definition] Distribuzione a supporto compatto
> Sia $T \in \mathcal{D}^*(\Omega)$. Si dice che $T$ è una **distribuzione a supporto compatto** se:
> $$
> \text{supp } T \subset \Omega \quad \text{è un sottoinsieme compatto}
> $$
> Lo spazio di tali distribuzioni viene tradizionalmente denotato con $\mathcal{E}'(\Omega)$.
>
Tale classe di distribuzioni riveste un'importanza fondamentale in quanto consente di estendere la classe delle funzioni test ammissibili dall'insieme delle funzioni a supporto compatto $\mathcal{D}(\Omega) = C_c^\infty(\Omega)$ alla totalità delle funzioni lisce:
$$
\varphi \in C^\infty(\Omega) =: \mathcal{E}(\Omega)
$$
Infatti, nel caso regolare $u \in L^1_{\text{loc}}(\Omega)$ con $\text{supp } u$ compatto, per qualunque $\varphi \in C^\infty(\Omega)$ vale che:
$$
\|u\varphi\|_{L^1(\Omega)} = \int_\Omega |u \varphi|\,d\mathbf{x} = \int_{\text{supp } u} |u \varphi|\,d\mathbf{x} < +\infty
$$

> [!note] Buona definizione ed indipendenza dal cutoff
> Sia $T \in \mathcal{D}^*(\Omega)$ a supporto compatto, sia $\varphi \in C^\infty(\Omega)$, e siano $\xi_1, \xi_2 \in \mathcal{D}(\Omega)$ due funzioni di cutoff tali che esista un aperto $U \subseteq \mathbb{R}^n$ con $\text{supp } T \subset U$ e:
> $$
> \xi_1(\mathbf{x}) = \xi_2(\mathbf{x}) = 1 \quad \forall \mathbf{x} \in U
> $$
> Allora le valutazioni sono ben definite e coincidono:
> $$
> \langle T, \varphi \xi_1 \rangle = \langle T, \varphi \xi_2 \rangle
> $$
> Infatti, osservando che $\xi_1 - \xi_2$ si annulla identicamente su $U$, si ha:
> $$
> \text{supp}\left[ (\xi_1 - \xi_2)\varphi \right] \cap \text{supp } T = \emptyset \implies \langle T, (\xi_1 - \xi_2)\varphi \rangle = 0
> $$

> [!definition] Azione di distribuzioni a supporto compatto su $C^\infty$
> Siano $T \in \mathcal{D}^*(\Omega)$ una distribuzione a supporto compatto e $\varphi \in C^\infty(\Omega)$. Si definisce:
> $$
> \langle T, \varphi \rangle := \langle T, \xi \varphi \rangle
> $$
> dove $\xi \in \mathcal{D}(\Omega)$ è una qualsiasi funzione test tale che esista un intorno aperto $U \subseteq \mathbb{R}^n$ con $\text{supp } T \subset U \subseteq \Omega$ e:
> $$
> \xi(\mathbf{x}) = 1 \quad \forall \mathbf{x} \in U
> $$

> [!note] Azione sulla funzione identicamente costante ad $1$
> In particolare, scegliendo la funzione liscia $\varphi \equiv 1$, l'azione di $T$ su $1$ è ben definita ponendo:
> $$
> \langle T, 1 \rangle = \langle T, \xi \rangle
> $$
> Ad esempio:
> - Per la delta di Dirac:
>   $$
>   \langle \delta_0, 1 \rangle = \xi(0) = 1
>   $$
> - Per le derivate di ordine superiore della delta:
>   $$
>   \langle \delta_0^{(k)}, 1 \rangle = (-1)^k \xi^{(k)}(0) = 0 \quad \forall k \in \mathbb{N} \setminus \{0\}
>   $$
>   poiché la funzione di cutoff $\xi$ è localmente costante e pari ad $1$ in un intero intorno dell'origine, quindi tutte le sue derivate di ordine $k \ge 1$ si annullano in $x = 0$.
>
## 3.7. Convoluzione di distribuzioni

### Motivazione e derivazione formale

Abbiamo visto in precedenza che se $\{\rho_n\}_{n \in \mathbb{N}} \subset C_c^\infty(\mathbb{R}^n)$ è una successione di mollificatori tale che:
$$
\rho_n \xrightarrow{n \to +\infty} \delta_{\mathbf{0}} \quad \text{in } \mathcal{D}^*(\mathbb{R}^n)
$$
allora per ogni funzione continua $u$ la successione regolarizzata converge uniformemente:
$$
\rho_n * u \xrightarrow{n \to +\infty} u
$$
Appare pertanto naturale voler definire un'operazione di convoluzione tra distribuzioni che mantenga tale proprietà, ovvero tale che:
$$
u * \delta_{\mathbf{0}} = u \quad \text{in } \mathcal{D}^*(\mathbb{R}^n)
$$
e che, ad esempio, soddisfi $\delta_{\mathbf{x}_0} * \delta_{\mathbf{x}_0} = \delta_{2\mathbf{x}_0}$ (oppure $\delta_{\mathbf{0}} * \delta_{\mathbf{0}} = \delta_{\mathbf{0}}$).

Per comprendere come definire tale operazione, procediamo formalmente nel caso di funzioni localmente sommabili $u, v \in L^1_{\text{loc}}(\Omega)$ e di una funzione test $\varphi \in \mathcal{D}(\Omega)$:
$$
\int_\Omega (u * v)(\mathbf{z}) \, \varphi(\mathbf{z})\,d\mathbf{z} = \int_\Omega \left[ \int_\Omega u(\mathbf{z} - \mathbf{y}) v(\mathbf{y})\,d\mathbf{y} \right] \varphi(\mathbf{z})\,d\mathbf{z}
$$
Applicando il teorema di Fubini ed effettuando il cambio di variabili $\mathbf{z} = \mathbf{x} + \mathbf{y}$ (da cui $d\mathbf{z} = d\mathbf{x}$):
$$
\begin{aligned}
&= \int_{\Omega^2} u(\mathbf{z} - \mathbf{y}) v(\mathbf{y}) \varphi(\mathbf{z})\,d\mathbf{z}\,d\mathbf{y} \\
&= \int_{\Omega^2} u(\mathbf{x}) v(\mathbf{y}) \varphi(\mathbf{x} + \mathbf{y})\,d\mathbf{x}\,d\mathbf{y} \\
&= \int_{\Omega^2} (u \otimes v)(\mathbf{x}, \mathbf{y}) \, \varphi(\mathbf{x} + \mathbf{y})\,d\mathbf{x}\,d\mathbf{y}
\end{aligned}
$$
dove $(u \otimes v)(\mathbf{x}, \mathbf{y}) = u(\mathbf{x})v(\mathbf{y})$ denota il prodotto tensoriale.

### L'ostacolo del supporto e la regolarizzazione

Sappiamo che date due distribuzioni generiche $T, S \in \mathcal{D}^*(\Omega)$, il loro prodotto tensoriale $T \otimes S \in \mathcal{D}^*(\Omega^2)$ è sempre ben definito. Tuttavia, per dare senso alla formula di convoluzione tramite il prodotto tensoriale:
$$
\langle T * S, \varphi \rangle \stackrel{?}{=} \langle T \otimes S, \varphi(\mathbf{x} + \mathbf{y}) \rangle
$$
sarebbe necessario che la funzione a due variabili:
$$
\psi(\mathbf{x}, \mathbf{y}) = \varphi(\mathbf{x} + \mathbf{y})
$$
appartenesse allo spazio delle funzioni test $\mathcal{D}(\Omega^2) = C_c^\infty(\Omega^2)$.
**Ciò NON è in generale vero**, anche qualora $\varphi \in \mathcal{D}(\Omega)$ abbia supporto compatto.

> [!example] Mancanza di compattezza del supporto di $\varphi(x+y)$
> Sia $\varphi \in \mathcal{D}(\mathbb{R})$ con supporto compatto $\text{supp } \varphi = [-1, 1]$.
> Allora:
> $$
> \varphi(x + y) \ne 0 \iff |x + y| < 1
> $$
> Nel piano $\mathbb{R}^2$, l'insieme $\{ (x, y) \in \mathbb{R}^2 : |x + y| < 1 \}$ individua una **striscia diagonale illimitata** compresa tra le rette $y = -x - 1$ e $y = -x + 1$.
> Pertanto, $\varphi(x + y)$ non possiede supporto compatto in $\mathbb{R}^2$, dunque:
> $$
> \varphi(x + y) \notin \mathcal{D}(\mathbb{R}^2)
> $$
>
Per risolvere questa difficoltà è necessario imporre un vincolo geometrico sui supporti: supponendo che almeno una delle due distribuzioni (ad esempio $S$) abbia **supporto compatto**, è possibile moltiplicare la funzione $\varphi(\mathbf{x} + \mathbf{y})$ per un'opportuna funzione di cutoff $\xi(\mathbf{y})$ a supporto compatto, ponendo:
$$
\psi(\mathbf{x}, \mathbf{y}) := \xi(\mathbf{y}) \varphi(\mathbf{x} + \mathbf{y})
$$
dove $\xi = 1$ su un intorno aperto del supporto di $S$. In questo modo $\psi$ ha supporto compatto in $\mathbb{R}^{2n}$ rispetto alle variabili congiunte.

### Definizione di convoluzione tra distribuzioni

> [!definition] Convoluzione di distribuzioni (con almeno un fattore a supporto compatto)
> Siano $T, S \in \mathcal{D}^*(\mathbb{R}^n)$, con $S$ a supporto compatto. Sia $\xi \in \mathcal{D}(\mathbb{R}^n)$ una funzione di cutoff tale che:
> $$
> \exists U \subseteq \mathbb{R}^n \text{ aperto}, \; \text{supp } S \subset U \quad \text{con} \quad \xi(\mathbf{x}) = 1 \quad \forall \mathbf{x} \in U
> $$
> Si definisce la **convoluzione** tra $T$ ed $S$, indicata con $T * S \in \mathcal{D}^*(\mathbb{R}^n)$, ponendo per ogni $\varphi \in \mathcal{D}(\mathbb{R}^n)$:
> $$
> \langle T * S, \varphi \rangle := \langle T \otimes S, \psi \rangle
> $$
> dove $\psi(\mathbf{x}, \mathbf{y}) := \xi(\mathbf{y}) \varphi(\mathbf{x} + \mathbf{y}) \in \mathcal{D}(\mathbb{R}^{2n})$.

> [!note] Proprietà commutativa
> Vale l'identità:
> $$
> T * S = S * T
> $$
> anche nell'ipotesi in cui solo una delle due distribuzioni sia a supporto compatto.

> [!example] Convoluzione con la delta di Dirac e traslazioni
> Sia $T \in \mathcal{D}^*(\mathbb{R}^n)$ ed $S = \delta_{\mathbf{x}_0}$. Calcoliamo l'azione su una generica $\varphi \in \mathcal{D}(\mathbb{R}^n)$:
> $$
> \begin{aligned}
> \langle T * \delta_{\mathbf{x}_0}, \varphi \rangle &= \langle T \otimes \delta_{\mathbf{x}_0}, \xi(\mathbf{y})\varphi(\mathbf{x} + \mathbf{y}) \rangle \\
> &= \langle T, \langle \delta_{\mathbf{x}_0}, \xi(\mathbf{y})\varphi(\mathbf{x} + \mathbf{y}) \rangle \rangle \\
> &= \langle T, \underbrace{\xi(\mathbf{x}_0)}_{=1} \varphi(\mathbf{x} + \mathbf{x}_0) \rangle \\
> &= \langle T, \varphi(\mathbf{x} + \mathbf{x}_0) \rangle
> \end{aligned}
> $$
> Se in particolare $T = T_u$ per una funzione localmente integrabile $u \in L^1_{\text{loc}}(\mathbb{R}^n)$, si ha:
> $$
> u(\mathbf{x}) * \delta_{\mathbf{x}_0}(\mathbf{x}) = u(\mathbf{x} - \mathbf{x}_0)
> $$
> il che mostra che la convoluzione con una delta traslata **equivale a una traslazione rigida**.
> In particolare, scegliendo $\mathbf{x}_0 = \mathbf{0}$:
> $$
> T * \delta_{\mathbf{0}} = \delta_{\mathbf{0}} * T = T \quad \forall T \in \mathcal{D}^*(\mathbb{R}^n)
> $$
> La delta di Dirac $\delta_{\mathbf{0}}$ è dunque l'**unità (elemento neutro)** dell'algebra di convoluzione.
>
### Proprietà analitiche della convoluzione

> [!proposition] Continuità della convoluzione per successioni
> Siano $\{T_n\}_{n \in \mathbb{N}}, \{S_n\}_{n \in \mathbb{N}} \subset \mathcal{D}^*(\mathbb{R}^n)$ due successioni tali che:
> $$
> T_n \xrightarrow{n \to +\infty} T \quad \text{in } \mathcal{D}^*(\mathbb{R}^n), \qquad S_n \xrightarrow{n \to +\infty} S \quad \text{in } \mathcal{D}^*(\mathbb{R}^n)
> $$
> Se le distribuzioni $\{S_n\}$ hanno supporti compatti uniformemente limitati (cioè esiste un compatto fisso $K \subset \mathbb{R}^n$ tale che $\text{supp } S_n \subseteq K$ per ogni $n \in \mathbb{N}$), allora:
> $$
> T_n * S_n \xrightarrow{n \to +\infty} T * S \quad \text{in } \mathcal{D}^*(\mathbb{R}^n)
> $$

> [!proposition] Derivazione della convoluzione
> Siano $T, S \in \mathcal{D}^*(\mathbb{R}^n)$, con $S$ a supporto compatto. Allora, per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$:
> $$
> D^\alpha (T * S) = D^\alpha T * S = T * D^\alpha S
> $$

> [!note] La derivata distribuzionale come convoluzione
> Se scegliamo $S = \delta_{\mathbf{0}}$, l'identità precedente si specializza in:
> $$
> D^\alpha T = D^\alpha (T * \delta_{\mathbf{0}}) = T * D^\alpha \delta_{\mathbf{0}}
> $$
> Pertanto l'operazione di derivazione distribuzionale non è altro che un **caso speciale di convoluzione** con la derivata distribuzionale della delta di Dirac.
>
### Convoluzione su semirette e regolarizzazione liscia

È possibile definire la convoluzione tra distribuzioni anche quando i supporti non sono compatti ma soddisfano condizioni di compatibilità geometrica (supporti compatibili).

> [!definition] Convoluzione per distribuzioni supportate su $[0, +\infty)$
> Siano $T, S \in \mathcal{D}^*(\mathbb{R})$ tali che i rispettivi supporti siano contenuti nel semiasse positivo:
> $$
> \text{supp } T \subseteq [0, +\infty), \qquad \text{supp } S \subseteq [0, +\infty)
> $$
> Allora è ben definita la convoluzione $T * S \in \mathcal{D}^*(\mathbb{R})$ ponendo:
> $$
> \langle T * S, \varphi \rangle := \langle T \otimes S, \psi \rangle
> $$
> dove $\psi(x, y) = \xi_1(x)\xi_2(y)\varphi(x + y)$ per ogni $\varphi \in \mathcal{D}(\mathbb{R})$, con $\xi_1, \xi_2 \in C^\infty(\mathbb{R})$ soddisfacenti:
> $$
> \text{supp } \xi_1, \, \text{supp } \xi_2 \subseteq [-M, +\infty) \quad \text{e} \quad \xi_1(x) = \xi_2(y) = 1 \quad \forall x, y \in (-\varepsilon, +\infty)
> $$
> per opportuni valori $\varepsilon, M > 0$.

> [!proposition] Regolarizzazione per convoluzione con funzioni lisce
> Siano $T_u, S \in \mathcal{D}^*(\mathbb{R}^n)$ di cui almeno una a supporto compatto, e supponiamo che $u \in C^\infty(\mathbb{R}^n)$.
> Allora la distribuzione convoluta è una distribuzione regolare generata da una funzione liscia:
> $$
> \exists v \in C^\infty(\mathbb{R}^n) \quad \text{t.c.} \quad T_v = T_u * S \quad \text{in } \mathcal{D}^*(\mathbb{R}^n)
> $$
> ovvero, con il consueto abuso di notazione:
> $$
> v(\mathbf{x}) = (u * S)(\mathbf{x}) \in C^\infty(\mathbb{R}^n)
> $$
>
