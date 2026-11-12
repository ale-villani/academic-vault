---
title: "Spazi di Sobolev"
domain: "math/functional-analysis"
source_course: "Analisi 3 (Cap. 3.3-3.5, 3.9)"
tags:
  - math/functional-analysis/sobolev-spaces
  - math/sobolev/poincare-inequality
  - math/sobolev/trace-theorem
---

# 3.3. Spazi di Sobolev

## 3.3. Spazi di Sobolev

### Definizione in dimensione $n=1$

> [!definition] Spazio di Sobolev $W^{1, p}$ in dimensione $1$
> Siano $\Omega = (a, b) \subset \mathbb{R}$ un intervallo aperto e $p \in [1, +\infty]$.
> Si definisce lo **spazio di Sobolev** $W^{1, p}(\Omega)$ (dove il simbolo $W$ deriva dall'inglese *Weakly differentiable*) come:
> $$
> W^{1, p}(\Omega) = \left\{ u \in L^p(\Omega) : \exists v \in L^p(\Omega) \text{ tale che } v \text{ è la derivata debole di } u \right\}
> $$
> Poiché $\Omega$ è limitato, $u \in L^p(\Omega) \subseteq L^1_{\text{loc}}(\Omega)$, per cui $u$ definisce la distribuzione regolare:
> $$
> \langle T_u, \varphi \rangle = \int_\Omega u(x) \varphi(x)\,dx
> $$
> La condizione che $v = u'$ in senso debole equivale a:
> $$
> (T_u)' = T_v \iff \forall \varphi \in \mathcal{D}(\Omega), \quad \langle T_u', \varphi \rangle = - \langle T_u, \varphi' \rangle = \langle T_v, \varphi \rangle
> $$

> [!note] Inclusione delle funzioni $C_0^1$
> Per ogni aperto $\Omega$, lo spazio delle funzioni $C^1$ a supporto compatto è contenuto in ogni spazio di Sobolev:
> $$
> C_0^1(\Omega) \subset W^{1, p}(\Omega) \quad \forall p \in [1, +\infty]
> $$

> [!example] Appartenenza di potenze $x^\alpha$ agli spazi di Sobolev su $(0, 1)$
> Si consideri la funzione monomia $u(x) = x^\alpha$ con parametro $\alpha \in \mathbb{R}$ sull'intervallo limitato $\Omega = (0, 1)$, al variare di $p \in [1, +\infty]$.
> La funzione è di classe $C^\infty((0, 1))$, per cui la sua derivata debole coincide con la derivata classica:
> $$
> u'(x) = \alpha x^{\alpha - 1} \in L^1_{\text{loc}}((0, 1))
> $$
> Analizziamo l'appartenenza a $W^{1, p}((0, 1))$:
> 
> **Caso $p = +\infty$:**
> - $u \in L^\infty((0, 1))$ se e solo se $x^\alpha$ è limitata in un intorno destro di $0$, ovvero:
>   $$
>   \alpha \ge 0
>   $$
> - La derivata $u'(x) = \alpha x^{\alpha - 1}$ è limitata se e solo se l'esponente è non negativo, $\alpha - 1 \ge 0 \iff \alpha \ge 1$, oppure se il coefficiente si annulla ($\alpha = 0$, da cui $u'(x) \equiv 0$ limitata):
>   $$
>   u' \in L^\infty((0, 1)) \iff \alpha \ge 1 \quad \lor \quad \alpha = 0
>   $$
> Intersecando le due condizioni:
> $$
> u \in W^{1, \infty}((0, 1)) \iff \alpha \ge 1 \quad \lor \quad \alpha = 0
> $$
> 
> **Caso $p \in [1, +\infty)$:**
> - Calcoliamo l'integrabilità $p$-esima di $u$:
>   $$
>   \int_0^1 |u(x)|^p \, dx = \int_0^1 x^{\alpha p} \, dx = \left[ \frac{x^{\alpha p + 1}}{\alpha p + 1} \right]_0^1 < +\infty \iff \alpha p + 1 > 0 \iff \alpha > -\frac{1}{p}
>   $$
> - Calcoliamo l'integrabilità $p$-esima della derivata $u'(x) = \alpha x^{\alpha - 1}$:
>   Se $\alpha = 0$, $u'(x) \equiv 0 \in L^p((0, 1))$ banalmente.
>   Se $\alpha \neq 0$:
>   $$
>   \int_0^1 |u'(x)|^p \, dx = |\alpha|^p \int_0^1 x^{(\alpha - 1)p} \, dx < +\infty \iff (\alpha - 1)p + 1 > 0 \iff \alpha > 1 - \frac{1}{p}
>   $$
> Poiché per ogni $p \ge 1$ si ha $1 - \frac{1}{p} \ge 0 > -\frac{1}{p}$, la condizione sulla derivata è strettamente più restrittiva e implica quella sulla funzione. Concludiamo:
> $$
> u \in W^{1, p}((0, 1)) \iff \alpha > 1 - \frac{1}{p} \quad \lor \quad \alpha = 0
> $$
>
### Spazi di Sobolev di ordine superiore $W^{k, p}$

> [!definition] Spazio di Sobolev di ordine $k$ in dimensione $1$
> Sia $\Omega = (a, b) \subset \mathbb{R}$, $p \in [1, +\infty]$ e $k \in \mathbb{N}$. Si definisce lo **spazio di Sobolev di ordine $k$**:
> $$
> W^{k, p}(\Omega) = \left\{ u \in L^p(\Omega) : \exists v_i \in L^p(\Omega) \text{ derivata } i\text{-esima debole di } u, \; \forall i = 1, \dots, k \right\}
> $$

> [!definition] Spazio di Sobolev $W^{k, p}$ in $\mathbb{R}^n$
> Siano $\Omega \subseteq \mathbb{R}^n$ aperto, $p \in [1, +\infty]$ e $k \in \mathbb{N}$. Si definisce lo spazio di Sobolev $W^{k, p}(\Omega)$ come:
> $$
> W^{k, p}(\Omega) := \left\{ u \in L^p(\Omega) : \forall \boldsymbol{\alpha} \in \mathbb{N}^n \text{ con } |\boldsymbol{\alpha}| \le k, \; \exists v_{\boldsymbol{\alpha}} \in L^p(\Omega) \text{ tale che } v_{\boldsymbol{\alpha}} = D^{\boldsymbol{\alpha}} u \text{ in senso debole} \right\}
> $$

> [!note] Notazione per $p=2$: gli spazi di Hilbert $H^k$
> Nel caso quadratico $p = 2$, lo spazio $W^{k, 2}(\Omega)$ viene universalmente indicato con la notazione $H^k(\Omega)$ (la lettera $H$ ricorda che si tratta di uno **spazio di Hilbert** dotato di prodotto scalare naturale):
> $$
> H^k(\Omega) := W^{k, 2}(\Omega)
> $$

> [!note] Struttura di spazio vettoriale
> Gli insiemi $W^{k, p}(\Omega)$ sono spazi vettoriali su $\mathbb{R}$.
> La proprietà discende direttamente dalla linearità dell'operatore di derivazione debole e dalla struttura di spazio vettoriale di $L^p(\Omega)$.
> Infatti, per ogni $c_1, c_2 \in \mathbb{R}$, per ogni $u_1, u_2 \in W^{k, p}(\Omega)$ e per ogni multi-indice $\boldsymbol{\alpha} \in \mathbb{N}^n$ con $|\boldsymbol{\alpha}| \le k$, si ha:
> $$
> D^{\boldsymbol{\alpha}}(c_1 u_1 + c_2 u_2) = c_1 D^{\boldsymbol{\alpha}} u_1 + c_2 D^{\boldsymbol{\alpha}} u_2
> $$
> Essendo $D^{\boldsymbol{\alpha}} u_1, D^{\boldsymbol{\alpha}} u_2 \in L^p(\Omega)$, la loro combinazione lineare appartiene ad $L^p(\Omega)$, e quindi:
> $$
> c_1 u_1 + c_2 u_2 \in W^{k, p}(\Omega)
> $$
>
### Norme di Sobolev e nozione di convergenza

> [!definition] Norma di Sobolev in $W^{1, p}(\Omega)$
> In $W^{1, p}(\Omega)$, con $\Omega \subseteq \mathbb{R}^n$ aperto e $p \in [1, +\infty]$, si definisce la **norma di Sobolev** $\|\cdot\|_{1, p}$:
> $$
> \|u\|_{1, p} := \|u\|_p + \sum_{j=1}^n \|u_{x_j}\|_p = \|u\|_p + \|\nabla u\|_p
> $$
> dove $u_{x_j} = \frac{\partial u}{\partial x_j}$ indica la derivata debole parziale rispetto alla coordinata $x_j$.

> [!definition] Norma di Sobolev generale in $W^{k, p}(\Omega)$
> In $W^{k, p}(\Omega)$, con $\Omega \subseteq \mathbb{R}^n$ aperto e $k \in \mathbb{N}$, si definisce la norma $\|\cdot\|_{k, p}$:
> $$
> \|u\|_{k, p} := \|u\|_p + \sum_{1 \le |\boldsymbol{\alpha}| \le k} \|D^{\boldsymbol{\alpha}} u\|_p = \sum_{|\boldsymbol{\alpha}| \le k} \|D^{\boldsymbol{\alpha}} u\|_p
> $$
> con $\boldsymbol{\alpha} \in \mathbb{N}^n$ multi-indice.

> [!note] Convergenza in $W^{k, p}(\Omega)$
> Sia $\{u_n\}_{n \in \mathbb{N}} \subset W^{k, p}(\Omega)$ una successione e sia $u \in W^{k, p}(\Omega)$.
> La convergenza della successione a $u$ nella topologia di Sobolev:
> $$
> u_n \xrightarrow{n \to +\infty} u \quad \text{in } W^{k, p}(\Omega)
> $$
> equivale per definizione all'annullarsi della norma della differenza:
> $$
> \|u_n - u\|_{k, p} \xrightarrow{n \to +\infty} 0 \iff \|u_n - u\|_p + \sum_{1 \le |\boldsymbol{\alpha}| \le k} \|D^{\boldsymbol{\alpha}}(u_n - u)\|_p \xrightarrow{n \to +\infty} 0
> $$
> ovvero alla convergenza forte in $L^p(\Omega)$ simultanea della funzione e di tutte le sue derivate deboli fino all'ordine $k$.

> [!note] Norme equivalenti per $W^{1, p}(\Omega)$
> Esplicitando la norma standard per $p \in [1, +\infty)$:
> $$
> \|u\|_{1, p} = \left[ \int_\Omega |u(\mathbf{x})|^p \, d\mathbf{x} \right]^{\frac{1}{p}} + \sum_{i=1}^n \left[ \int_\Omega \left| \frac{\partial u}{\partial x_i}(\mathbf{x}) \right|^p \, d\mathbf{x} \right]^{\frac{1}{p}}
> $$
> Si può alternativamente considerare la norma integrata:
> $$
> |\!|\!| u |\!|\!|_{1, p} := \left[ \int_\Omega \left( |u(\mathbf{x})|^p + \sum_{i=1}^n \left| \frac{\partial u}{\partial x_i}(\mathbf{x}) \right|^p \right) d\mathbf{x} \right]^{\frac{1}{p}}
> $$
> Per le disuguaglianze elementari di equivalenza tra norme $\ell^1$ ed $\ell^p$ su $\mathbb{R}^{n+1}$, $\|\cdot\|_{1, p}$ e $|\!|\!| \cdot |\!|\!|_{1, p}$ sono **norme topologicamente equivalenti**.
>
### Teorema di completezza degli spazi di Sobolev

> [!theorem] Completezza di $W^{k, p}(\Omega)$ (Spazi di Banach e di Hilbert)
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia $p \in [1, +\infty]$.
> Allora, per ogni ordine di derivazione $k \in \mathbb{N} \setminus \{0\}$, lo spazio normato:
> $$
> (W^{k, p}(\Omega), \|\cdot\|_{k, p})
> $$
> è uno **spazio di Banach** (spazio vettoriale normato completo).
> In particolare, per $p = 2$, lo spazio:
> $$
> H^k(\Omega) = (W^{k, 2}(\Omega), \|\cdot\|_{k, 2})
> $$
> è uno **spazio di Hilbert** completo rispetto al prodotto scalare:
> $$
> (u, v)_{H^k} = \sum_{|\boldsymbol{\alpha}| \le k} \int_\Omega D^{\boldsymbol{\alpha}} u(\mathbf{x}) \overline{D^{\boldsymbol{\alpha}} v(\mathbf{x})}\,d\mathbf{x}
> $$

> [!quote]- Dimostrazione
> Dimostriamo dettagliatamente la completezza per il caso fondamentale $H^1(\Omega) = W^{1, 2}(\Omega)$ (la dimostrazione per $W^{k, p}(\Omega)$ con $k \ge 1$ e $p \in [1, +\infty]$ segue per induzione con le identiche stime $L^p$).
> 
> Sia $\{u_k\}_{k \in \mathbb{N}}$ una successione di Cauchy in $H^1(\Omega)$. Ciò significa che:
> $$
> \|u_n - u_m\|_{1, 2} \xrightarrow{n, m \to +\infty} 0
> $$
> Per la definizione della norma di Sobolev $\|\cdot\|_{1, 2}$, ciò equivale alla condizione:
> $$
> \begin{cases}
> \|u_n - u_m\|_2 \xrightarrow{n, m \to +\infty} 0 \\
> \left\| \dfrac{\partial u_n}{\partial x_i} - \dfrac{\partial u_m}{\partial x_i} \right\|_2 \xrightarrow{n, m \to +\infty} 0 \quad \forall i = 1, \dots, n
> \end{cases}
> $$
> Di conseguenza, la successione delle funzioni $\{u_n\}_{n \in \mathbb{N}}$ e ciascuna delle $n$ successioni delle derivate deboli parziali $\left\{ \frac{\partial u_n}{\partial x_i} \right\}_{n \in \mathbb{N}}$ ($i = 1, \dots, n$) sono successioni di Cauchy nello spazio $L^2(\Omega)$.
> 
> Poiché lo spazio $L^2(\Omega)$ è **completo** (teorema di Riesz-Fischer), esistono una funzione limite $f \in L^2(\Omega)$ e $n$ funzioni limite $g_i \in L^2(\Omega)$ per $i = 1, \dots, n$ tali che:
> $$
> \|u_n - f\|_2 \xrightarrow{n \to +\infty} 0, \qquad \left\| \frac{\partial u_n}{\partial x_i} - g_i \right\|_2 \xrightarrow{n \to +\infty} 0 \quad \forall i = 1, \dots, n
> $$
> Resta da dimostrare che per ogni $i = 1, \dots, n$, la funzione limite $g_i$ è proprio la derivata debole di $f$ rispetto a $x_i$, ovvero che $g_i = \frac{\partial f}{\partial x_i}$ nel senso di $\mathcal{D}^*(\Omega)$.
> 
> Fissiamo una generica funzione test $\varphi \in \mathcal{D}(\Omega)$. Poiché per ogni elemento della successione $u_k \in H^1(\Omega)$, la derivata debole parziale soddisfa per definizione:
> $$
> \left\langle u_k, \frac{\partial \varphi}{\partial x_i} \right\rangle = - \left\langle \frac{\partial u_k}{\partial x_i}, \varphi \right\rangle \quad \forall k \in \mathbb{N}
> $$
> Passiamo al limite per $k \to +\infty$ su entrambi i membri:
> - **Membro di destra:** Per la convergenza forte $\frac{\partial u_k}{\partial x_i} \to g_i$ in $L^2(\Omega)$, applicando la disuguaglianza di Cauchy-Schwarz:
>   $$
>   \left| \left\langle \frac{\partial u_k}{\partial x_i}, \varphi \right\rangle - \langle g_i, \varphi \rangle \right| \le \int_\Omega \left| \frac{\partial u_k}{\partial x_i} - g_i \right| |\varphi|\,d\mathbf{x} \le \left\| \frac{\partial u_k}{\partial x_i} - g_i \right\|_2 \|\varphi\|_2 \xrightarrow{k \to +\infty} 0
>   $$
>   Quindi:
>   $$
>   - \left\langle \frac{\partial u_k}{\partial x_i}, \varphi \right\rangle \xrightarrow{k \to +\infty} - \langle g_i, \varphi \rangle
>   $$
> - **Membro di sinistra:** Analogamente, per la convergenza forte $u_k \to f$ in $L^2(\Omega)$, poiché $\frac{\partial \varphi}{\partial x_i} \in \mathcal{D}(\Omega) \subset L^2(\Omega)$:
>   $$
>   \left| \left\langle u_k, \frac{\partial \varphi}{\partial x_i} \right\rangle - \left\langle f, \frac{\partial \varphi}{\partial x_i} \right\rangle \right| \le \|u_k - f\|_2 \left\| \frac{\partial \varphi}{\partial x_i} \right\|_2 \xrightarrow{k \to +\infty} 0
>   $$
>   Quindi:
>   $$
>   \left\langle u_k, \frac{\partial \varphi}{\partial x_i} \right\rangle \xrightarrow{k \to +\infty} \left\langle f, \frac{\partial \varphi}{\partial x_i} \right\rangle
>   $$
> Per l'unicità del limite si ottiene l'identità:
> $$
> \left\langle f, \frac{\partial \varphi}{\partial x_i} \right\rangle = - \langle g_i, \varphi \rangle \quad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> Per la definizione stessa di derivata debole, questo prova che $g_i \in L^2(\Omega)$ coincide con la derivata parziale debole di $f$:
> $$
> g_i = \frac{\partial f}{\partial x_i} \in L^2(\Omega) \quad \forall i = 1, \dots, n
> $$
> Dunque $f \in H^1(\Omega)$, e componendo le stime di convergenza:
> $$
> \|u_k - f\|_{1, 2} = \|u_k - f\|_2 + \sum_{i=1}^n \left\| \frac{\partial u_k}{\partial x_i} - \frac{\partial f}{\partial x_i} \right\|_2 \xrightarrow{k \to +\infty} 0
> $$
> Ciò attesta che ogni successione di Cauchy converge ad un elemento dello spazio, concludendo che $H^1(\Omega)$ è completo. $\blacksquare$
>
## 3.4. Lo spazio $W_0^{1, p}(\Omega)$ e i valori al bordo

### Chiusura delle funzioni test a supporto compatto

> [!definition] Spazio di Sobolev $W_0^{1, p}(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto, $p \in [1, +\infty]$ e $k \in \mathbb{N} \setminus \{0\}$.
> Si definisce lo spazio di Sobolev $W_0^{1, p}(\Omega) \subseteq W^{1, p}(\Omega)$ come la **chiusura** dello spazio delle funzioni test $C_0^\infty(\Omega)$ rispetto alla norma di Sobolev $\|\cdot\|_{1, p}$:
> $$
> W_0^{1, p}(\Omega) := \overline{C_0^\infty(\Omega)}^{\|\cdot\|_{1, p}}
> $$

> [!note] Catena di inclusioni
> Sussistono le inclusioni canoniche:
> $$
> C_0^\infty(\Omega) \subset W_0^{1, p}(\Omega) \subset W^{1, p}(\Omega) \subset L^p(\Omega)
> $$

> [!note] Il problema della traccia al bordo e la misura nulla
> Se l'aperto $\Omega \subseteq \mathbb{R}^n$ possiede una frontiera sufficientemente regolare, la frontiera ha misura di Lebesgue $n$-dimensionale nulla:
> $$
> |\partial \Omega|_n = 0
> $$
> Poiché gli elementi di $W^{k, p}(\Omega)$ non sono funzioni puntuali bensì classi di equivalenza di funzioni coincidenti quasi ovunque (a meno di insiemi di misura nulla), in generale **non ha alcun senso puntuale chiedersi quali valori assuma la funzione sul bordo** $\partial \Omega$.
> 
> Tuttavia, si dimostra che se $\partial \Omega$ è regolare (ad esempio lipschitziano, escludendo geometrie patologiche o frattali) e $u \in W^{1, p}(\Omega) \cap C^0(\overline{\Omega})$, allora l'annullamento classico della funzione sul bordo caratterizza esattamente l'appartenenza allo spazio con indice nullo:
> $$
> u(\mathbf{x}) = 0 \quad \forall \mathbf{x} \in \partial \Omega \iff u \in W_0^{1, p}(\Omega)
> $$
> In generale, senza richiedere la continuità globale fino al bordo, la condizione di appartenenza ad $W_0^{1, p}(\Omega)$ si esprime mediante l'approssimazione tramite successioni di test a supporto compatto:
> $$
> u \in W_0^{1, p}(\Omega) \iff \exists \{\varphi_n\}_{n \in \mathbb{N}} \subset C_0^\infty(\Omega) : \lim_{n \to +\infty} \varphi_n = u \text{ in } W^{1, p}(\Omega) \iff \|u - \varphi_n\|_{1, p} \xrightarrow{n \to +\infty} 0
> $$
>
### Teorema: Disuguaglianza di Poincaré

> [!theorem] Disuguaglianza di Poincaré
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto limitato e sia $p \in [1, +\infty]$.
> Allora esiste una costante finita $C_p = C_p(\Omega, p) > 0$ tale che:
> $$
> \|u\|_p \le C_p \sum_{i=1}^n \left\| \frac{\partial u}{\partial x_i} \right\|_p \quad \forall u \in W_0^{1, p}(\Omega)
> $$

> [!note] Equivalenza con la norma del gradiente su $W_0^{1, p}(\Omega)$
> Dalla disuguaglianza di Poincaré segue che, definendo su $W_0^{1, p}(\Omega)$ la cosiddetta **norma del gradiente**:
> $$
> \|u\|_{W_0^{1, p}} := \sum_{i=1}^n \left\| \frac{\partial u}{\partial x_i} \right\|_p = \|\nabla u\|_p
> $$
> le norme $\|\cdot\|_{1, p}$ e $\|\cdot\|_{W_0^{1, p}}$ **sono equivalenti** su $W_0^{1, p}(\Omega)$.
> Infatti, da un lato è banale che $\|u\|_{W_0^{1, p}} \le \|u\|_{1, p}$; dall'altro, applicando Poincaré:
> $$
> \|u\|_{1, p} = \|u\|_p + \|u\|_{W_0^{1, p}} \le C_p \|u\|_{W_0^{1, p}} + \|u\|_{W_0^{1, p}} = (1 + C_p) \|u\|_{W_0^{1, p}}
> $$
> Riassumendo:
> $$
> \|u\|_{W_0^{1, p}} \le \|u\|_{1, p} \le (1 + C_p) \|u\|_{W_0^{1, p}} \quad \forall u \in W_0^{1, p}(\Omega)
> $$

> [!warning] Mancata validità di Poincaré su tutto $W^{1, p}(\Omega)$
> L'equivalenza tra la norma completa di Sobolev e la norma del solo gradiente **NON vale** sullo spazio $W^{1, p}(\Omega)$.
> Ad esempio, si considerino le funzioni costanti non nulle:
> $$
> u(\mathbf{x}) \equiv \lambda \in \mathbb{R} \setminus \{0\}
> $$
> Poiché $\Omega$ è limitato, $u \in W^{1, p}(\Omega)$ con:
> $$
> \|u\|_{1, p} = \|\lambda\|_p = |\lambda| |\Omega|^{1/p} > 0
> $$
> Tuttavia, tutte le derivate deboli della funzione costante sono identicamente nulle:
> $$
> \left\| \frac{\partial \lambda}{\partial x_i} \right\|_p = 0 \quad \forall i = 1, \dots, n \implies \|u\|_{W_0^{1, p}} = 0
> $$
> Se valesse la disuguaglianza di Poincaré su $W^{1, p}(\Omega)$, si avrebbe $|\lambda| |\Omega|^{1/p} \le C_p \cdot 0 = 0$, assurdo.
> Dunque le costanti non nulle non appartengono a $W_0^{1, p}(\Omega)$ e Poincaré fallisce in assenza del vincolo di annullamento al bordo.
>
### Dimostrazioni della disuguaglianza di Poincaré

> [!quote]- Dimostrazione (Caso unidimensionale elementare in $C^1([a, b])$ con $u(a)=u(b)=0$)
> Dimostriamo la disuguaglianza sull'intervallo limitato $I = (a, b) \subset \mathbb{R}$ per una generica funzione regolare $u \in C^1([a, b])$ che si annulla agli estremi: $u(a) = u(b) = 0$.
> 
> Per il teorema fondamentale del calcolo integrale, per ogni $x \in [a, b]$:
> $$
> u(x) = u(a) + \int_a^x u'(t)\,dt = \int_a^x u'(t)\,dt
> $$
> Passando ai moduli:
> $$
> |u(x)| = \left| \int_a^x u'(t)\,dt \right| \le \int_a^x |u'(t)| \cdot 1 \, dt
> $$
> Applichiamo la disuguaglianza di Hölder con esponenti coniugati $p$ e $p'$, dove $\frac{1}{p} + \frac{1}{p'} = 1 \implies p' = \frac{p}{p-1}$:
> $$
> |u(x)| \le \left[ \int_a^x |u'(t)|^p \, dt \right]^{\frac{1}{p}} \left[ \int_a^x 1 \, dt \right]^{\frac{1}{p'}}
> $$
> Maggiorando l'intervallo di integrazione $[a, x] \subseteq [a, b]$:
> $$
> |u(x)| \le \left[ \int_a^b |u'(t)|^p \, dt \right]^{\frac{1}{p}} \left[ \int_a^b 1 \, dt \right]^{\frac{1}{p'}} = \|u'\|_p (b - a)^{\frac{1}{p'}} = \|u'\|_p (b - a)^{\frac{p - 1}{p}}
> $$
> Elevando entrambi i membri alla potenza $p$:
> $$
> |u(x)|^p \le (b - a)^{p - 1} \|u'\|_p^p
> $$
> Integrando rispetto a $x$ sull'intervallo $[a, b]$:
> $$
> \int_a^b |u(x)|^p \, dx \le \int_a^b (b - a)^{p - 1} \|u'\|_p^p \, dx = (b - a)^{p - 1} \|u'\|_p^p \int_a^b 1 \, dx = (b - a)^p \|u'\|_p^p
> $$
> Estraendo la radice $p$-esima da ambo i membri:
> $$
> \|u\|_p \le (b - a) \|u'\|_p
> $$
> La disuguaglianza è così verificata con costante esplicita $C_p = (b - a)$. $\blacksquare$

> [!quote]- Dimostrazione generale multidimensionale per $p=2$ (Metodo di Bramanti)
> Dimostriamo la disuguaglianza per $p = 2$ su un aperto limitato $\Omega \subseteq \mathbb{R}^n$.
> È sufficiente provare la tesi per le funzioni test regolari a supporto compatto $\varphi \in C_0^\infty(\Omega)$; la validità su tutto $W_0^{1, 2}(\Omega) = H_0^1(\Omega)$ seguirà immediatamente per densità.
> 
> Poiché l'aperto $\Omega$ è limitato in $\mathbb{R}^n$, esso è in particolare limitato lungo una qualsiasi direzione coordinata. Senza perdita di generalità, orientiamo gli assi in modo tale che $\Omega$ sia compreso tra due iperpiani ortogonali all'asse $x_n$:
> $$
> \Omega \subset \mathbb{R}^{n-1} \times (a, b)
> $$
> Indichiamo con $\mathbf{x} = (x_1, \dots, x_{n-1}) \in \mathbb{R}^{n-1}$ le prime $n-1$ coordinate e con $x_n \in (a, b)$ l'ultima coordinata.
> Sia $\varphi \in C_0^\infty(\Omega)$. Estendiamo $\varphi$ a zero all'esterno di $\Omega$, in modo che $\varphi \in C_0^\infty(\mathbb{R}^{n-1} \times (a, b))$.
> Poiché $\varphi(\mathbf{x}, a) = 0$, per ogni $(\mathbf{x}, x_n) \in \Omega$ il teorema fondamentale del calcolo integrale fornisce:
> $$
> \varphi(\mathbf{x}, x_n) = \int_a^{x_n} \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t)\,dt
> $$
> Applichiamo la disuguaglianza di Cauchy-Schwarz all'integrale rispetto a $t$:
> $$
> |\varphi(\mathbf{x}, x_n)| \le \left[ \int_a^{x_n} \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt \right]^{1/2} \left[ \int_a^{x_n} 1 \, dt \right]^{1/2} \le \left\| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, \cdot) \right\|_{L^2((a, b))} \sqrt{x_n - a}
> $$
> Elevando al quadrato:
> $$
> |\varphi(\mathbf{x}, x_n)|^2 \le (x_n - a) \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt \le (b - a) \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt
> $$
> Integriamo entrambi i membri su $\Omega$. Applicando il teorema di Fubini-Tonelli:
> $$
> \begin{aligned}
> \int_\Omega |\varphi(\mathbf{x}, x_n)|^2 \, d\mathbf{x}\,dx_n &= \int_{\mathbb{R}^{n-1}} \left( \int_a^b |\varphi(\mathbf{x}, x_n)|^2 \, dx_n \right) d\mathbf{x} \\
> &\le \int_{\mathbb{R}^{n-1}} \left( \int_a^b (b - a) \left[ \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt \right] dx_n \right) d\mathbf{x}
> \end{aligned}
> $$
> L'integrale interno in $dt$ non dipende dalla variabile di integrazione $x_n$; integrando la costante rispetto a $x_n \in (a, b)$ compare un ulteriore fattore $(b - a)$:
> $$
> \int_a^b (b - a) \left[ \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt \right] dx_n = (b - a)^2 \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt
> $$
> Sostituendo nell'integrale complessivo su $\mathbb{R}^{n-1}$:
> $$
> \begin{aligned}
> \int_\Omega |\varphi(\mathbf{x}, x_n)|^2 \, d\mathbf{x}\,dx_n &\le (b - a)^2 \int_{\mathbb{R}^{n-1}} \int_a^b \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, t) \right|^2 dt \, d\mathbf{x} \\
> &= (b - a)^2 \int_\Omega \left| \frac{\partial \varphi}{\partial x_n}(\mathbf{x}, x_n) \right|^2 d\mathbf{x}\,dx_n
> \end{aligned}
> $$
> Poiché il quadrato della derivata parziale rispetto a $x_n$ è maggiorato puntualmente dal modulo quadro dell'intero gradiente:
> $$
> \left| \frac{\partial \varphi}{\partial x_n} \right|^2 \le \sum_{i=1}^n \left| \frac{\partial \varphi}{\partial x_i} \right|^2 = |\nabla \varphi|^2
> $$
> otteniamo:
> $$
> \int_\Omega |\varphi|^2 \, d\mathbf{x}\,dx_n \le (b - a)^2 \int_\Omega |\nabla \varphi|^2 \, d\mathbf{x}\,dx_n = (b - a)^2 \|\nabla \varphi\|_2^2
> $$
> Estraendo la radice quadrata:
> $$
> \|\varphi\|_2 \le (b - a) \|\nabla \varphi\|_2
> $$
> Per densità di $C_0^\infty(\Omega)$ in $W_0^{1, 2}(\Omega) = H_0^1(\Omega)$, data una qualsiasi funzione $u \in H_0^1(\Omega)$ esiste una successione $\{\varphi_k\} \subset C_0^\infty(\Omega)$ tale che $\varphi_k \to u$ in $H^1(\Omega)$.
> Passando al limite nella disuguaglianza per $\varphi_k$, per la continuità della norma $L^2$:
> $$
> \|u\|_2 \le (b - a) \|\nabla u\|_2 \quad \forall u \in H_0^1(\Omega)
> $$
> La disuguaglianza di Poincaré per $p=2$ è pertanto dimostrata con costante $C_2 = (b - a)$. $\blacksquare$

> [!note] Ottimalità della costante di Poincaré
> La costante $C_2 = (b - a)$ ottenuta geometricamente non è la costante "ottimale" (ovvero la più piccola possibile) per l'intervallo $(a, b)$ o per il dominio $\Omega$.
> L'analisi spettrale dell'operatore di Laplace con condizioni al contorno di Dirichlet omogenee ($-\Delta u = \lambda u$ su $\Omega$, $u|_{\partial \Omega} = 0$) mostra che la costante ottimale di Poincaré in $L^2$ è legata al primo autovalore $\lambda_1$ del Laplaciano:
> $$
> C_{2, \text{ott}} = \frac{1}{\sqrt{\lambda_1}}
> $$
> Nel caso dell'intervallo unidimensionale $(0, L)$, essendo $\lambda_1 = \left( \frac{\pi}{L} \right)^2$, la costante ottimale è $\frac{L}{\pi} = \frac{b - a}{\pi} < b - a$. Ciononostante, la stima costruttiva $(b - a)$ fornisce un controllo universale valido per qualsiasi geometria limitata.
>
>   Si osservi che $b - a$ non è la costante "migliore" (cioè non è la costante ottimale più piccola possibile per l'intervallo $(a, b)$). In ogni caso, per ogni aperto limitato $\Omega \subseteq \mathbb{R}^n$, una possibile costante di Poincaré è fornita dal diametro dell'insieme:
>   $$
>   \text{diam } \Omega := \sup \left\{ \|\mathbf{x} - \mathbf{y}\| : \mathbf{x}, \mathbf{y} \in \Omega \right\}
>   $$
>   con l'ovvia verifica unidimensionale $\text{diam}(a, b) = b - a$.
>
Ci si può chiedere inoltre se e in quali condizioni l'appartenenza a uno spazio di Sobolev garantisca la continuità quasi ovunque:
$$
H^k(\Omega) \implies \text{continua q.o.}
$$

> [!example] Funzioni discontinue e illimitate in $H^1(\Omega)$
> In $H^1(\Omega)$, con $\Omega \subseteq \mathbb{R}^n$ aperto, esistono funzioni discontinue per opportune dimensioni spaziali $n$. Ad esempio, considerando la funzione radiale:
> $$
> f(\mathbf{x}) = \|\mathbf{x}\|^\alpha
> $$
> sulla palla unitaria $B_1(\mathbf{0}) \subset \mathbb{R}^n$, si verifica che:
> $$
> f \in H^1(B_1(\mathbf{0})) \iff \alpha > 1 - \frac{n}{2}
> $$
> Pertanto, per $n \ge 3$ e per esponenti compresi nell'intervallo:
> $$
> 1 - \frac{n}{2} < \alpha < 0
> $$
> la funzione $f$ appartiene allo spazio di Sobolev $H^1(\Omega)$, pur essendo illimitata e discontinua nell'origine $\mathbf{0}$.
>
## 3.5. Immersioni di Sobolev e regolarità continua

### Teorema di immersione in funzioni continue

> [!proposition] Immersione di Sobolev in $C^0(\Omega)$
> Siano $\Omega \subseteq \mathbb{R}^n$ un aperto ed $m \in \mathbb{N}$. Se
> $$
> m > \frac{n}{2}
> $$
> allora per ogni $u \in H^m(\Omega)$ si ha:
> $$
> u \in C^0(\Omega)
> $$
> (ovvero la funzione $u$ coincide quasi ovunque con una funzione continua).

> [!note] Casi dimensionali notevoli ed esponente infinito
> In particolare:
> - Per $n = 1$: $m = 1 > \frac{1}{2}$, dunque $H^1(I) \subset C^0(I)$, ed anzi le funzioni di $H^1$ risultano assolutamente continue ($H^1 \implies AC$).
> - Per $n = 2, 3$: si ha $\frac{n}{2} < 2$, dunque $H^2(\Omega) \subset C^0(\Omega)$.
> - Per ogni dimensione $n$: se una funzione appartiene ad $H^k(\Omega)$ per ogni ordine $k$, allora essa è infinitamente differenziabile in senso classico:
>   $$
>   u \in H^k(\Omega) \quad \forall k \in \mathbb{N} \implies u \in C^\infty(\Omega)
>   $$
>
Ci chiediamo ora sotto quali condizioni il prodotto puntuale di due funzioni appartenga ancora a uno spazio di Sobolev:
$$
f, g \in H^k(\Omega) \stackrel{?}{\implies} fg \in H^k(\Omega)
$$

### Teorema di Rademacher e prodotto di funzioni Sobolev

> [!theorem] Teorema di Rademacher
> Sia $\Omega \subseteq \mathbb{R}^n$ aperto e sia $f: \Omega \to \mathbb{R}$ una funzione lipschitziana.
> Allora $f$ è derivabile in senso classico quasi ovunque in $\Omega$. Inoltre, tali derivate classiche coincidono con le derivate deboli (distribuzionali) di $f$, e si ha:
> $$
> \frac{\partial f}{\partial x_i} \in L^\infty(\Omega) \quad \forall i = 1, \dots, n
> $$

> [!note] Conseguenze per funzioni lipschitziane e spazi di Sobolev
> Se $\Omega \subseteq \mathbb{R}^n$ è un aperto limitato, dal Teorema di Rademacher discende la catena di inclusioni:
> $$
> \text{Lip}(\Omega) \subseteq W^{1,\infty}(\Omega) \subseteq H^1(\Omega)
> $$
> Inoltre, se $f \in \text{Lip}(\Omega)$ e $g \in H^1(\Omega)$, la regola di Leibniz è valida per le derivate deboli:
> $$
> \frac{\partial}{\partial x_i}(fg) = \underbrace{\frac{\partial f}{\partial x_i}}_{\in L^\infty} \underbrace{g}_{\in L^2} + \underbrace{f}_{\in L^\infty} \underbrace{\frac{\partial g}{\partial x_i}}_{\in L^2} \in L^2(\Omega) \quad \forall i = 1, \dots, n
> $$
> da cui segue immediatamente che il prodotto $fg \in H^1(\Omega)$.
>

## 3.9. Complementi sugli spazi di Sobolev

### Il duale topologico $H^{-1}(\Omega)$ e la sua caratterizzazione distribuzionale

Consideriamo il duale topologico dello spazio di Sobolev a traccia nulla:
$$
(H_0^1(\Omega))^*
$$
Poiché $H_0^1(\Omega)$ è uno spazio di Hilbert dotato del prodotto scalare standard:
$$
(f, g)_{H_0^1} = \int_\Omega f g \, d\mathbf{x} + \sum_{i=1}^n \int_\Omega \frac{\partial f}{\partial x_i} \frac{\partial g}{\partial x_i} \, d\mathbf{x}
$$
per il Teorema di rappresentazione di Riesz-Fréchet, per ogni funzionale lineare continuo $T \in (H_0^1(\Omega))^*$ esiste un unico elemento $f \in H_0^1(\Omega)$ tale che:
$$
T(g) = (f, g)_{H_0^1} \qquad \forall g \in H_0^1(\Omega)
$$
con conservazione delle norme:
$$
\|T\|_{(H_0^1)^*} = \|f\|_{H_0^1}
$$
In particolare, poiché lo spazio delle funzioni test $\mathcal{D}(\Omega) = C_0^\infty(\Omega)$ è denso in $H_0^1(\Omega)$, valutiamo l'azione di $T$ su una generica funzione test $\varphi \in \mathcal{D}(\Omega)$:
$$
T(\varphi) = (f, \varphi)_{H_0^1} = \int_\Omega f \varphi \, d\mathbf{x} + \sum_{i=1}^n \int_\Omega \frac{\partial f}{\partial x_i} \frac{\partial \varphi}{\partial x_i} \, d\mathbf{x}
$$
Esprimendo gli integrali mediante l'accoppiamento di dualità / crochet distribuzionale $\langle \cdot, \cdot \rangle$:
$$
T(\varphi) = \langle f, \varphi \rangle + \sum_{i=1}^n \left\langle \frac{\partial f}{\partial x_i}, \frac{\partial \varphi}{\partial x_i} \right\rangle
$$
Sfruttando la definizione di derivata debole nel senso delle distribuzioni:
$$
\left\langle \frac{\partial f}{\partial x_i}, \frac{\partial \varphi}{\partial x_i} \right\rangle = - \left\langle \frac{\partial^2 f}{\partial x_i^2}, \varphi \right\rangle
$$
otteniamo:
$$
T(\varphi) = \left\langle f - \sum_{i=1}^n \frac{\partial^2 f}{\partial x_i^2}, \varphi \right\rangle
$$
Pertanto, restringendo il funzionale allo spazio delle funzioni test $\mathcal{D}(\Omega)$, la distribuzione associata assume la forma:
$$
\left. T \right|_{\mathcal{D}(\Omega)} = f - \sum_{i=1}^n \frac{\partial^2 f}{\partial x_i^2} = f_0 - \sum_{i=1}^n \frac{\partial f_i}{\partial x_i}
$$
avendo posto:
$$
f_0 := f \in L^2(\Omega), \qquad f_i := \frac{\partial f}{\partial x_i} \in L^2(\Omega) \quad (i = 1, \dots, n)
$$

Viceversa, consideriamo una famiglia qualsiasi di funzioni $\{f_0, f_1, \dots, f_n\} \subset L^2(\Omega)$ e definiamo la distribuzione:
$$
T = f_0 - \sum_{i=1}^n \frac{\partial f_i}{\partial x_i} \in \mathcal{D}^*(\Omega)
$$
Tale distribuzione agisce sulle funzioni test $\varphi \in \mathcal{D}(\Omega)$ tramite:
$$
\langle T, \varphi \rangle = \int_\Omega f_0 \varphi \, d\mathbf{x} + \sum_{i=1}^n \int_\Omega f_i \frac{\partial \varphi}{\partial x_i} \, d\mathbf{x}
$$
Questa espressione è perfettamente ben definita per ogni $\varphi \in H_0^1(\Omega)$, poiché $f_0, f_i \in L^2(\Omega)$ e $\varphi, \frac{\partial \varphi}{\partial x_i} \in L^2(\Omega)$.
Inoltre essa soddisfa la stima di continuità:
$$
|\langle T, \varphi \rangle| \le \|f_0\|_{L^2} \|\varphi\|_{L^2} + \sum_{i=1}^n \|f_i\|_{L^2} \left\|\frac{\partial \varphi}{\partial x_i}\right\|_{L^2} \le \sqrt{\sum_{i=0}^n \|f_i\|_{L^2}^2} \|\varphi\|_{H_0^1}
$$
Essendo $\mathcal{D}(\Omega)$ denso in $H_0^1(\Omega)$, la distribuzione $T$ ammette un unico prolungamento lineare e continuo all'intero spazio $(H_0^1(\Omega))^*$.
Resta così dimostrato il seguente risultato di struttura:

> [!theorem] Teorema (Caratterizzazione distribuzionale del duale $H^{-1}(\Omega)$)
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto. Lo spazio duale topologico $(H_0^1(\Omega))^*$ si identifica canonicamente con lo spazio delle distribuzioni di ordine al più uno:
> $$
> H^{-1}(\Omega) := (H_0^1(\Omega))^* = \left\{ T \in \mathcal{D}^*(\Omega) : T = f_0 - \sum_{i=1}^n \frac{\partial f_i}{\partial x_i}, \quad f_0, f_1, \dots, f_n \in L^2(\Omega) \right\}
> $$

> [!note] Norma duale in $H^{-1}(\Omega)$
> La rappresentazione di una distribuzione $T \in H^{-1}(\Omega)$ tramite le funzioni $f_0, f_1, \dots, f_n \in L^2(\Omega)$ non è unica. Tuttavia, la norma canonica del duale è caratterizzata dalla formula variazionale:
> $$
> \|T\|_{H^{-1}(\Omega)} = \|T\|_{(H_0^1(\Omega))^*} = \inf \left\{ \sqrt{\sum_{i=0}^n \|f_i\|_{L^2(\Omega)}^2} : T = f_0 - \sum_{i=1}^n \frac{\partial f_i}{\partial x_i}, \; f_i \in L^2(\Omega) \right\}
> $$

> [!example] Esempi notevoli di distribuzioni appartenenti a $H^{-1}$
> 1. **Delta di Dirac in dimensione $n = 1$:**
>    Sia $\Omega = (-1, 1) \subset \mathbb{R}$. La delta di Dirac $\delta_0$ centrata nell'origine è la derivata distribuzionale della funzione gradino di Heaviside:
>    $$
>    \delta_0 = H'(x)
>    $$
>    Poiché la funzione gradino di Heaviside è limitata su un intervallo limitato, essa appartiene a $L^2((-1, 1))$:
>    $$
>    H \in L^2((-1, 1)) \implies \delta_0 \in H^{-1}((-1, 1))
>    $$
>    Di conseguenza, per ogni funzione di Sobolev $\varphi \in H_0^1((-1, 1))$ è ben definito l'accoppiamento di dualità puntuale:
>    $$
>    \langle \delta_0, \varphi \rangle = \varphi(0)
>    $$
>    (Si ricordi che in dimensione 1, per il teorema di immersione di Sobolev, $H^1((-1, 1)) \hookrightarrow C^0([-1, 1])$, rendendo la valutazione puntuale continua).
> 2. **Derivate parziali della funzione caratteristica di una palla in $\mathbb{R}^n$:**
>    Si consideri la palla $B_R(\mathbf{0}) \subset \mathbb{R}^n$ e la sua funzione caratteristica $\chi_{B_R(\mathbf{0})}$.
>    Chiaramente $\chi_{B_R(\mathbf{0})} \in L^2(\mathbb{R}^n)$, ma a causa del salto di discontinuità sul bordo sferico $\partial B_R(\mathbf{0})$, essa non ammette derivate deboli che siano funzioni di $L^2$.
>    Tuttavia, calcolando la derivata prima in senso distribuzionale:
>    $$
>    \frac{\partial \chi_{B_R(\mathbf{0})}}{\partial x_i} \in \mathcal{D}^*(\mathbb{R}^n)
>    $$
>    essa è esattamente la derivata prima di una funzione di $L^2(\mathbb{R}^n)$. Pertanto:
>    $$
>    \frac{\partial \chi_{B_R(\mathbf{0})}}{\partial x_i} \in H^{-1}(\mathbb{R}^n)
>    $$
>
### Teoremi di approssimazione per funzioni in $H^1(\Omega)$

Presentiamo i teoremi cardine che consentono di approssimare funzioni dello spazio di Sobolev $H^1(\Omega)$ mediante funzioni lisce ($C^\infty$).

> [!theorem] Teorema di Friedrichs di approssimazione locale
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto qualsiasi e sia $\Omega'$ un aperto limitato relativamente compatto in $\Omega$, ossia tale che:
> $$
> \overline{\Omega'} \subset \Omega \qquad (\Omega' \Subset \Omega)
> $$
> Allora, per ogni funzione $u \in H^1(\Omega)$, esiste una successione di funzioni lisce a supporto compatto $\{u_k\}_{k \in \mathbb{N}} \subset C_0^\infty(\Omega)$ tale che:
> $$
> \|u_k - u\|_{H^1(\Omega')} \xrightarrow{k \to +\infty} 0
> $$

> [!theorem] Teorema di approssimazione globale
> Sia $\Omega \subseteq \mathbb{R}^n$ un dominio a frontiera lipschitziana (non necessariamente limitato).
> Allora, per ogni funzione $u \in H^1(\Omega)$, esiste una successione di funzioni lisce $\{u_k\}_{k \in \mathbb{N}} \subset C_0^\infty(\mathbb{R}^n)$ tale che:
> $$
> \|u_k - u\|_{H^1(\Omega)} \xrightarrow{k \to +\infty} 0
> $$
> Definendo lo spazio delle restrizioni a $\overline{\Omega}$ delle funzioni di $\mathcal{D}(\mathbb{R}^n)$:
> $$
> \mathcal{D}(\overline{\Omega}) := \left\{ f = \left. \varphi \right|_{\overline{\Omega}} : \varphi \in \mathcal{D}(\mathbb{R}^n) = C_0^\infty(\mathbb{R}^n) \right\}
> $$
> il teorema asserisce in modo equivalente che:
> $$
> \mathcal{D}(\overline{\Omega}) \text{ è denso in } H^1(\Omega) \text{ rispetto alla norma } \|\cdot\|_{H^1(\Omega)}, \text{ purché } \Omega \text{ sia lipschitziano}
> $$

> [!corollary] Coincidenza tra $H^1$ e $H_0^1$ su tutto $\mathbb{R}^n$
> Un caso particolare immediato del teorema di approssimazione globale si ha quando $\Omega = \mathbb{R}^n$:
> $$
> H^1(\mathbb{R}^n) = H_0^1(\mathbb{R}^n)
> $$
> Poiché $\mathbb{R}^n$ non ha frontiera, lo spazio $C_0^\infty(\mathbb{R}^n)$ è denso nell'intero $H^1(\mathbb{R}^n)$.
>
### Teorema di traccia e spazio $H^{1/2}(\partial\Omega)$

> [!note] Il problema della traccia al bordo per funzioni in $H^1(\Omega)$
> Data una generica funzione $u \in H^1(\Omega)$, ha senso chiedersi "quanto vale $u$ sulla frontiera $\partial\Omega$"?
> Dal punto di vista della teoria della misura, la risposta è negativa: una funzione di Sobolev $u \in H^1(\Omega)$ è una classe di equivalenza di funzioni coincidenti quasi ovunque rispetto alla misura di Lebesgue $n$-dimensionale.
> Poiché $\Omega$ è un aperto regolare, la sua frontiera $\partial\Omega$ ha misura $n$-dimensionale nulla:
> $$
> |\partial\Omega| = 0
> $$
> Pertanto, modificare il valore di $u$ su $\partial\Omega$ non altera la classe di equivalenza della funzione in $H^1(\Omega)$.
> Per dare un significato rigoroso ai valori assunti da una funzione di Sobolev sul bordo è necessario costruire un apposito operatore limitato, detto **operatore di traccia**.

> [!theorem] Teorema di traccia
> Sia $\Omega \subseteq \mathbb{R}^n$ un dominio limitato con frontiera lipschitziana.
> Allora esiste un operatore lineare e continuo, denominato **operatore di traccia**:
> $$
> \tau_0 : H^1(\Omega) \to L^2(\partial\Omega, d\sigma)
> $$
> (dove $d\sigma$ denota l'usuale misura superficiale $(n-1)$-dimensionale su $\partial\Omega$), che soddisfa le seguenti proprietà fondamentali:
> 1. Per ogni funzione regolare $u \in C^1(\overline{\Omega})$, la traccia coincide con la restrizione classica al bordo:
>    $$
>    \tau_0 u(\mathbf{x}) = u(\mathbf{x}) \qquad \forall \mathbf{x} \in \partial\Omega
>    $$
> 2. Il nucleo dell'operatore di traccia coincide esattamente con lo spazio delle funzioni a traccia nulla:
>    $$
>    \ker \tau_0 = H_0^1(\Omega)
>    $$
>    ovvero:
>    $$
>    \tau_0 u = 0 \text{ su } \partial\Omega \iff u \in H_0^1(\Omega)
>    $$
> 3. L'operatore è continuo (limitato): esiste una costante $C > 0$ tale che:
>    $$
>    \|\tau_0 u\|_{L^2(\partial\Omega)} \le C \|u\|_{H^1(\Omega)} \qquad \forall u \in H^1(\Omega)
>    $$

> [!lemma] Lemma (Integrazione per parti in $H^1(\Omega)$)
> Sia $\Omega \subseteq \mathbb{R}^n$ un dominio limitato a frontiera lipschitziana. Allora per ogni coppia di funzioni $u, v \in H^1(\Omega)$ vale la formula di integrazione per parti:
> $$
> \int_\Omega u \frac{\partial v}{\partial x_i} \, d\mathbf{x} = -\int_\Omega \frac{\partial u}{\partial x_i} v \, d\mathbf{x} + \int_{\partial\Omega} (\tau_0 u) (\tau_0 v) \, \nu_i \, d\sigma \qquad (i = 1, \dots, n)
> $$
> dove $\nu_i$ è la $i$-esima componente del versore normale uscente $\boldsymbol{\nu}$ a $\partial\Omega$.

> [!quote]- Dimostrazione
> Poiché $\Omega$ è un dominio limitato lipschitziano, per il teorema di approssimazione globale esistono due successioni di funzioni lisce $\{u_k\}_{k \in \mathbb{N}}, \{v_k\}_{k \in \mathbb{N}} \subset C_0^\infty(\mathbb{R}^n)$ tali che:
> $$
> u_k \xrightarrow{k \to +\infty} u \quad \text{e} \quad v_k \xrightarrow{k \to +\infty} v \quad \text{in } H^1(\Omega)
> $$
> Per le funzioni regolari $u_k, v_k \in C^\infty(\overline{\Omega})$ è applicabile la classica formula di integrazione per parti del calcolo differenziale:
> $$
> \int_\Omega u_k \frac{\partial v_k}{\partial x_i} \, d\mathbf{x} = -\int_\Omega \frac{\partial u_k}{\partial x_i} v_k \, d\mathbf{x} + \int_{\partial\Omega} u_k v_k \, \nu_i \, d\sigma
> $$
> Studiamo il comportamento asintotico di ciascun integrale al limite per $k \to +\infty$:
> - Per l'integrale a primo membro:
>   $$
>   \begin{aligned}
>   \left| \int_\Omega u_k \frac{\partial v_k}{\partial x_i} \, d\mathbf{x} - \int_\Omega u \frac{\partial v}{\partial x_i} \, d\mathbf{x} \right| &\le \int_\Omega |u_k - u| \left|\frac{\partial v_k}{\partial x_i}\right| d\mathbf{x} + \int_\Omega |u| \left|\frac{\partial v_k}{\partial x_i} - \frac{\partial v}{\partial x_i}\right| d\mathbf{x} \\
>   &\le \|u_k - u\|_{L^2(\Omega)} \left\|\frac{\partial v_k}{\partial x_i}\right\|_{L^2(\Omega)} + \|u\|_{L^2(\Omega)} \left\|\frac{\partial v_k}{\partial x_i} - \frac{\partial v}{\partial x_i}\right\|_{L^2(\Omega)} \\
>   &\le \|u_k - u\|_{H^1(\Omega)} \|v_k\|_{H^1(\Omega)} + \|u\|_{H^1(\Omega)} \|v_k - v\|_{H^1(\Omega)} \xrightarrow{k \to +\infty} 0
>   \end{aligned}
>   $$
>   essendo $\|v_k\|_{H^1}$ uniformemente limitata in virtù della convergenza in norma. Dunque:
>   $$
>   \lim_{k \to +\infty} \int_\Omega u_k \frac{\partial v_k}{\partial x_i} \, d\mathbf{x} = \int_\Omega u \frac{\partial v}{\partial x_i} \, d\mathbf{x}
>   $$
> - In modo perfettamente simmetrico, per il primo termine a secondo membro:
>   $$
>   \lim_{k \to +\infty} \int_\Omega \frac{\partial u_k}{\partial x_i} v_k \, d\mathbf{x} = \int_\Omega \frac{\partial u}{\partial x_i} v \, d\mathbf{x}
>   $$
> - Per l'integrale di bordo su $\partial\Omega$: per le funzioni regolari la traccia coincide con la restrizione, sicché $u_k|_{\partial\Omega} = \tau_0 u_k$ e $v_k|_{\partial\Omega} = \tau_0 v_k$.
>   Dal Teorema di traccia sappiamo che l'operatore $\tau_0 : H^1(\Omega) \to L^2(\partial\Omega)$ è continuo:
>   $$
>   \|\tau_0 u_k - \tau_0 u\|_{L^2(\partial\Omega)} \le C \|u_k - u\|_{H^1(\Omega)} \xrightarrow{k \to +\infty} 0 \implies \tau_0 u_k \xrightarrow{L^2(\partial\Omega)} \tau_0 u
>   \|\tau_0 v_k - \tau_0 v\|_{L^2(\partial\Omega)} \le C \|v_k - v\|_{H^1(\Omega)} \xrightarrow{k \to +\infty} 0 \implies \tau_0 v_k \xrightarrow{L^2(\partial\Omega)} \tau_0 v
>   $$
>   Poiché il prodotto scalare in $L^2(\partial\Omega)$ è continuo rispetto alla convergenza forte:
>   $$
>   \lim_{k \to +\infty} \int_{\partial\Omega} u_k v_k \, \nu_i \, d\sigma = \int_{\partial\Omega} (\tau_0 u) (\tau_0 v) \, \nu_i \, d\sigma
>   $$
> Passando al limite per $k \to +\infty$ su ambo i membri dell'identità per le funzioni lisce, si ottiene la tesi. $\blacksquare$

> [!note] Osservazione: Suriettività dell'operatore di traccia
> Data una funzione arbitraria $g \in L^2(\partial\Omega)$, esiste sempre una funzione $u \in H^1(\Omega)$ tale che $\tau_0 u = g$? In altri termini, l'operatore di traccia $\tau_0$ è suriettivo su $L^2(\partial\Omega)$?
> $\rightsquigarrow$ **NO**: l'immagine di $\tau_0$ è un sottospazio vettoriale proprio:
> $$
> \mathrm{Im} \tau_0 \subsetneq L^2(\partial\Omega)
> $$
> Le tracce al bordo delle funzioni di $H^1(\Omega)$ conservano una frazione di regolarità differenziale ("mezza derivata") che una generica funzione di $L^2(\partial\Omega)$ non possiede.

> [!definition] Spazio di tracce $H^{1/2}(\partial\Omega)$ e operatore di rilevamento
> Sia $\Omega \subseteq \mathbb{R}^n$ un dominio limitato lipschitziano. Si definisce **spazio di tracce** l'immagine dell'operatore di traccia su $H^1(\Omega)$:
> $$
> H^{1/2}(\partial\Omega) := \tau_0\left(H^1(\Omega)\right) \subsetneq L^2(\partial\Omega)
> $$
> Inoltre, dato un qualsiasi profilo al bordo $g \in H^{1/2}(\partial\Omega)$, ogni funzione $u \in H^1(\Omega)$ tale che:
> $$
> \tau_0 u = g \quad \text{su } \partial\Omega
> $$
> viene detta **rilevamento** (lifting) di $g$ su $\Omega$.
> Lo spazio $H^{1/2}(\partial\Omega)$ è munito della norma naturale quoziente:
> $$
> \|g\|_{H^{1/2}(\partial\Omega)} = \|g\|_{2, 1/2} := \inf \left\{ \|u\|_{H^1(\Omega)} : u \in H^1(\Omega), \; \tau_0 u = g \right\}
> $$

> [!note] Osservazione: Connessione con gli spazi di Sobolev frazionari
> Gli spazi $H^{1/2}(\partial\Omega)$ e $H^{-1}(\Omega) = (H_0^1(\Omega))^*$ costituiscono casi notevoli della teoria generale degli **spazi di Sobolev frazionari** $H^s$, definiti analiticamente su $\mathbb{R}^n$ per ogni esponente reale $s \in \mathbb{R}$ mediante la trasformata di Fourier:
> $$
> H^s(\mathbb{R}^n) := \left\{ u \in \mathcal{S}'(\mathbb{R}^n) : (1 + |\boldsymbol{\xi}|^2)^{s/2} \widehat{u}(\boldsymbol{\xi}) \in L^2(\mathbb{R}^n) \right\}
> $$
>
