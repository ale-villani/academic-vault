---
title: "Teoria degli Operatori e Teorema Spettrale"
domain: "math/operator-theory"
source_course: "Analisi 3 (Cap. 6-7)"
tags:
  - math/functional-analysis/hilbert-spaces
  - math/operators/self-adjoint
  - math/operators/bounded-unbounded
---

# 6. Teoria degli Operatori e Spazi di Hilbert

## 6.1. Spazi di Hilbert Complessi

> [!definition] Forma Sesquilineare
> Sia $V$ uno spazio vettoriale sul campo complesso $\mathbb{C}$.
> Un'applicazione:
> $$
> a: V \times V \longrightarrow \mathbb{C}
> $$
> è detta **forma sesquilineare** se è antilineare (coniugato-lineare) rispetto al primo argomento e lineare rispetto al secondo argomento, ossia se soddisfa:
> 1. Per il primo argomento:
>    $$
>    a(\alpha v + \beta u, w) = \alpha^* a(v, w) + \beta^* a(u, w) \qquad \forall \alpha, \beta \in \mathbb{C}, \quad \forall u, v, w \in V
>    $$
>    (dove $\alpha^*$ indica il coniugato complesso di $\alpha$).
> 2. Per il secondo argomento:
>    $$
>    a(w, \alpha v + \beta u) = \alpha \, a(w, v) + \beta \, a(w, u) \qquad \forall \alpha, \beta \in \mathbb{C}, \quad \forall u, v, w \in V
>    $$

> [!definition] Proprietà delle Forme Sesquilineari
> Sia $(V, \|\cdot\|)$ uno spazio vettoriale normato su $\mathbb{C}$. Una forma sesquilineare $a: V \times V \to \mathbb{C}$ si dice:
> - **Hermitiana:** se soddisfa la simmetria coniugata:
>   $$
>   \forall v, w \in V, \qquad a(v, w) = a^*(w, v)
>   $$
> - **Continua:** se è limitata rispetto alle norme degli argomenti:
>   $$
>   \exists C > 0 : \quad |a(v, w)| \le C \, \|v\| \, \|w\| \qquad \forall v, w \in V
>   $$
> - **Coerciva:** se la sua parte reale controlla la norma quadratica:
>   $$
>   \exists \alpha > 0 : \quad \mathrm{Re}\left\{ a(v, v) \right\} \ge \alpha \, \|v\|^2 \qquad \forall v \in V
>   $$

> [!definition] Spazio di Hilbert Complesso
> Uno spazio vettoriale normato completo $(\mathcal{H}, \|\cdot\|)$ sul campo $\mathbb{C}$ si dice **spazio di Hilbert** se la sua norma è indotta da una forma sesquilineare continua, hermitiana e definita positiva:
> $$
> \langle \cdot, \cdot \rangle : \mathcal{H} \times \mathcal{H} \longrightarrow \mathbb{C}
> $$
> detta **prodotto scalare hermitiano** (o prodotto interno complesso), che soddisfa:
> 1. **Simmetria hermitiana:** $\langle v, w \rangle = (\langle w, v \rangle)^* \quad \forall v, w \in \mathcal{H}$
> 2. **Positività:** $\langle v, v \rangle \ge 0 \quad \forall v \in \mathcal{H}$, con $\langle v, v \rangle = 0 \iff v = 0$
> 3. **Antilinearità a sinistra:** $\langle \alpha v + \beta u, w \rangle = \alpha^* \langle v, w \rangle + \beta^* \langle u, w \rangle$
> 4. **Linearità a destra:** $\langle w, \alpha v + \beta u \rangle = \alpha \langle w, v \rangle + \beta \langle w, u \rangle$
> 
> La norma indotta su $\mathcal{H}$ è data da:
> $$
> \|v\| := \sqrt{\langle v, v \rangle} \qquad \forall v \in \mathcal{H}
> $$

> [!note] Identità di Polarizzazione Complessa
> Negli spazi di Hilbert complessi, il prodotto scalare è interamente ricostruibile a partire dalla norma tramite l'**identità di polarizzazione**:
> $$
> \langle x, y \rangle = \frac{1}{4} \sum_{k=0}^3 i^k \, \|x + i^k y\|^2 = \frac{1}{4} \left[ \|x + y\|^2 - \|x - y\|^2 + i \|x + iy\|^2 - i \|x - iy\|^2 \right]
> $$

> [!note] Teorema di Proiezione e Teoremi Fondamentali in Campo Complesso
> - **Caratterizzazione della Proiezione:** Sia $K \subseteq \mathcal{H}$ un sottospazio chiuso (o un convesso chiuso). La condizione di caratterizzazione della proiezione $\pi_K(u)$ di un vettore $u \in \mathcal{H}$ sul sottoinsieme $K$ diventa:
>   $$
>   \mathrm{Re}\left\langle u - \pi_K(u), \; v - \pi_K(u) \right\rangle \le 0 \qquad \forall v \in K
>   $$
> - **Estensione dei Teoremi di Riesz e Lax-Milgram:** I celebri teoremi di rappresentazione di Riesz e di Lax-Milgram si estendono immediatamente al setting complesso sostituendo l'ipotesi di simmetria reale con la condizione di simmetria hermitiana:
>   $$
>   a(u, v) = a^*(v, u)
>   $$
>
## 6.2. Esempi di Spazi di Hilbert Complessi e Serie di Fourier

> [!example] Prodotti Scalari Notevoli
> 1. **Spazio $L^2(\Omega)$ a valori complessi:**
>    $$
>    \langle f, g \rangle_{L^2} := \int_\Omega f^*(\mathbf{x}) \, g(\mathbf{x}) \, d\mathbf{x}
>    $$
> 2. **Spazio di Sobolev $H^1(\Omega)$ a valori complessi:**
>    $$
>    \langle f, g \rangle_{H^1} := \int_\Omega \left[ f^*(\mathbf{x}) \, g(\mathbf{x}) + \nabla f^*(\mathbf{x}) \cdot \nabla g(\mathbf{x}) \right] d\mathbf{x}
>    $$
> 3. **Spazio delle successioni a quadrato sommabile $\ell_2(\mathbb{N})$:**
>    $$
>    \langle a, b \rangle_{\ell_2} := \sum_{n \in \mathbb{N}} a_n^* \, b_n
>    $$

> [!note] Basi Ortonormali, Serie di Fourier e Identità di Parseval
> Sia $\{u_n\}_{n \in \mathbb{N}}$ un sistema ortonormale (o.n.) in uno spazio di Hilbert complesso $\mathcal{H}$. Per ogni elemento $v \in \mathcal{H}$, i suoi coefficienti di Fourier sono $c_n = \langle u_n, v \rangle$, e la serie di Fourier associata è:
> $$
> \sum_{n \in \mathbb{N}} \langle u_n, v \rangle \, u_n
> $$
> Tale successione di coefficienti appartiene a $\ell_2(\mathbb{N})$, ossia la mappa che associa a $v$ i coefficienti proietta nel prodotto hermitiano di $\ell_2$:
> $$
> \langle \{u_n\}, v \rangle_{\ell_2} = \sum_{n \in \mathbb{N}} u_n^* \, v
> $$
> Per sistemi ortonormali completi (s.o.n.c.), la disuguaglianza di Bessel diviene un'uguaglianza esatta (**Identità di Parseval**):
> $$
> \|u\|^2 = \sum_{n \in \mathbb{N}} |u_n|^2, \qquad \langle u, v \rangle = \sum_{n \in \mathbb{N}} u_n^* \, v_n
> $$
>
## 6.3. Operatori Lineari su Spazi di Hilbert

> [!definition] Operatore Lineare e Limitazione
> Sia $\mathcal{H}$ uno spazio di Hilbert complesso. Un **operatore lineare** $A$ è un'applicazione lineare definita su un sottospazio vettoriale $D_A \subseteq \mathcal{H}$ (detto **dominio** dell'operatore):
> $$
> A: D_A \subseteq \mathcal{H} \longrightarrow \mathcal{H}
> $$
> tale che:
> $$
> A(\alpha u + \beta v) = \alpha A(u) + \beta A(v) \qquad \forall u, v \in D_A, \quad \forall \alpha, \beta \in \mathbb{C}
> $$
> Si assume comunemente che il dominio $D_A$ sia **denso** in $\mathcal{H}$ ($\overline{D_A} = \mathcal{H}$).
> 
> Un operatore $A$ si dice **limitato** (o equivalentemente **continuo**) se la sua norma operatore è finita:
> $$
> \|A\|_{\mathcal{L}(\mathcal{H}, \mathcal{H})} := \sup_{v \in D_A \setminus \{0\}} \frac{\|Av\|}{\|v\|} < +\infty
> $$
> 
> **Convenzione Notazionale:**
> - Operatori lineari arbitrari (non necessariamente limitati, densamente definiti):
>   $$
>   A \in \mathcal{L}(D_A, \mathcal{H}) \qquad \text{con } A: D_A \subseteq \mathcal{H} \to \mathcal{H}, \quad \overline{D_A} = \mathcal{H}
>   $$
> - Operatori lineari limitati definiti sull'intero spazio:
>   $$
>   A \in \mathcal{L}(\mathcal{H}, \mathcal{H})
>   $$
>
## 6.4. Estensioni, Operatori Chiusi e Chiudibili

> [!definition] Estensione di Operatori
> Siano $A: D_A \subseteq \mathcal{H} \to \mathcal{H}$ e $B: D_B \subseteq \mathcal{H} \to \mathcal{H}$ due operatori lineari. Diciamo che $B$ è un'**estensione** di $A$ (e scriviamo $A \subseteq B$) se il dominio di $B$ contiene quello di $A$ e le loro azioni coincidono su $D_A$:
> $$
> D_A \subseteq D_B \qquad \text{e} \qquad B(u) = A(u) \quad \forall u \in D_A
> $$

> [!proposition] Teorema di Estensione per Operatori Limitati (B.L.T. Theorem)
> Ogni operatore lineare limitato $A \in \mathcal{L}(D_A, \mathcal{H})$ definito su un dominio denso $D_A$ di uno spazio di Hilbert $\mathcal{H}$ ammette un'**unica estensione lineare continua** $\bar{A} \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ con dominio l'intero spazio $\mathcal{H}$. Tale estensione preserva la norma: $\|\bar{A}\|_{\mathcal{L}(\mathcal{H},\mathcal{H})} = \|A\|_{\mathcal{L}(D_A, \mathcal{H})}$.

> [!note] Ipotesi di Separabilità
> D'ora in avanti ometteremo di specificare che $\mathcal{H}$ è uno spazio di Hilbert **separabile**, ovvero che ammette un sistema ortonormale completo numerabile $\{u_n\}_{n \in \mathbb{N}}$ (s.o.n.c.).

> [!definition] Operatore Chiuso e Operatore Chiudibile
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore lineare:
> 1. $A$ si dice **chiuso** se per ogni successione $\{u_n\}_{n \in \mathbb{N}} \subset D_A$ tale che:
>    $$
>    u_n \xrightarrow{n \to +\infty} u \quad \text{in } \mathcal{H} \qquad \text{e} \qquad A u_n \xrightarrow{n \to +\infty} v \quad \text{in } \mathcal{H}
>    $$
>    si ha necessariamente che:
>    $$
>    u \in D_A \qquad \text{e} \qquad A u = v
>    $$
>    (ovvero il grafico di $A$, $\mathrm{Gr}(A) = \{ (u, Au) : u \in D_A \}$, è un sottospazio chiuso in $\mathcal{H} \times \mathcal{H}$).
> 
> 2. $A$ si dice **chiudibile** se ammette un'estensione chiusa. In tal caso, la più piccola estensione chiusa (rispetto all'inclusione dei grafici) prende il nome di **chiusura** di $A$ e si denota con $\bar{A}$.

> [!note] Chiudibilità degli Operatori Limitati
> Ogni operatore lineare limitato densamente definito è automaticamente **chiudibile**, e il dominio della sua chiusura coincide con l'intero spazio:
> $$
> D_{\bar{A}} = \mathcal{H}
> $$
>
## 6.5. Esempi Notevoli di Operatori della Fisica Matematica

> [!example] Esempi Fondamentali di Operatori
> 
> ### 1. Operatore Moltiplicativo
> Sia $\mathcal{H} = L^2(\mathbb{R}^n)$ e sia $F \in L^\infty(\mathbb{R}^n)$ (oppure $F \in L^2(\mathbb{R}^n)$). Consideriamo l'operatore $M_F: C_0^\infty(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ definito da:
> $$
> M_F \varphi(\mathbf{x}) := F(\mathbf{x}) \, \varphi(\mathbf{x})
> $$
> Se $F \in L^\infty(\mathbb{R}^n)$, l'operatore $M_F$ è limitato e la sua norma coincide con la norma essenziale di $F$:
> $$
> \|M_F\| = \|F\|_\infty
> $$
> 
> ### 2. Operatore Integrale (Hilbert-Schmidt)
> Sia $\mathcal{H} = L^2(\mathbb{R}^n)$ e sia $K \in L^2(\mathbb{R}^{2n})$ un nucleo integrale a quadrato sommabile. L'operatore integrale $K: C_0^\infty(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ è definito da:
> $$
> K u(\mathbf{x}) := \int_{\mathbb{R}^n} K(\mathbf{x}, \mathbf{y}) \, u(\mathbf{y}) \, d\mathbf{y}
> $$
> L'operatore è limitato e la sua norma soddisfa:
> $$
> \|K\| \le \|K\|_{L^2(\mathbb{R}^{2n})}
> $$
> 
> ### 3. Operatore Posizione (Meccanica Quantistica)
> Sia $\mathcal{H} = L^2(\mathbb{R})$. L'operatore posizione $Q: C_0^\infty(\mathbb{R}) \to L^2(\mathbb{R})$ è definito da:
> $$
> Q u(x) := x \, u(x)
> $$
> Si noti che $Q$ è un operatore **illimitato**; pertanto non potrà mai essere esteso con continuità a tutto $L^2(\mathbb{R})$. Tuttavia, $Q$ è **chiudibile**, e il dominio della sua chiusura $\bar{Q}$ è dato da:
> $$
> D_{\bar{Q}} = \left\{ u \in L^2(\mathbb{R}) : \int_{\mathbb{R}} |x \, u(x)|^2 \, dx < +\infty \right\} = \left\{ u \in L^2(\mathbb{R}) : x u \in L^2(\mathbb{R}) \right\}
> $$
> 
> ### 4. Operatore Momento (Meccanica Quantistica)
> Sia $\mathcal{H} = L^2(\mathbb{R})$. L'operatore momento $P: C_0^\infty(\mathbb{R}) \to L^2(\mathbb{R})$ è definito da:
> $$
> P u(x) := -i \hbar \, \frac{\partial u}{\partial x}(x)
> $$
> Anche $P$ è un operatore **illimitato** ma **chiudibile**. Il dominio della sua chiusura $\bar{P}$ è esattamente lo spazio di Sobolev:
> $$
> D_{\bar{P}} = H^1(\mathbb{R})
> $$
> 
> ### 5. Operatori di Creazione e Annichilimento (Oscillatore Armonico Quantistico)
> Sia $\{u_n\}_{n \in \mathbb{N}}$ una base ortonormale completa dello spazio di Hilbert $\mathcal{H}$. Si definiscono:
> - **Operatore Creazione ($a^\dagger$):**
>   $$
>   a^\dagger u_n := \sqrt{n+1} \, u_{n+1} \qquad \forall n \ge 0
>   $$
> - **Operatore Annichilimento ($a$):**
>   $$
>   a u_n := \begin{cases} 
>   \sqrt{n} \, u_{n-1} & \text{se } n > 0 \\ 
>   0 & \text{se } n = 0 
>   \end{cases}
>   $$
> Entrambi gli operatori sono **illimitati** e **chiudibili**. Il dominio comune della loro chiusura è caratterizzato dalle successioni a pesi in $\ell_2$:
> $$
> D_{\bar{a}} = D_{\bar{a}^\dagger} = \left\{ v \in \mathcal{H} : \sqrt{n} \, \langle u_n, v \rangle \in \ell_2 \right\} = \left\{ v \in \mathcal{H} : \sum_{n=1}^\infty n \, |\langle u_n, v \rangle|^2 < +\infty \right\}
> $$
>
## 6.6. Operatore Aggiunto

> [!definition] Operatore Aggiunto in Spazi di Hilbert
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore lineare con dominio denso $\overline{D_A} = \mathcal{H}$. L'**operatore aggiunto** di $A$ è l'operatore $A^\dagger: D_{A^\dagger} \subseteq \mathcal{H} \to \mathcal{H}$ il cui dominio è definito da:
> $$
> D_{A^\dagger} := \left\{ v \in \mathcal{H} : \exists w \in \mathcal{H} \text{ tale che } \langle v, A u \rangle = \langle w, u \rangle \quad \forall u \in D_A \right\}
> $$
> Per ogni $v \in D_{A^\dagger}$, il vettore $w \in \mathcal{H}$ è unico (essendo $D_A$ denso in $\mathcal{H}$), e si pone:
> $$
> A^\dagger v := w
> $$
> In tal modo vale la fondamentale relazione di dualità:
> $$
> \langle v, A u \rangle = \langle A^\dagger v, u \rangle \qquad \forall u \in D_A, \quad \forall v \in D_{A^\dagger}
> $$

> [!note] Parallelo con l'Algebra Lineare Finita
> L'operazione di aggiunzione generalizza al contesto infinito-dimensionale e complesso la trasposizione e la coniugazione hermitiana.
> Infatti, se $A \in \mathrm{Mat}_\mathbb{R}(n, n)$ è una matrice reale:
> $$
> \mathbf{v} \cdot (A\mathbf{u}) = \mathbf{v}^T A \mathbf{u} = (\mathbf{v}^T A) \mathbf{u} = (A^T \mathbf{v})^T \mathbf{u} = A^T \mathbf{v} \cdot \mathbf{u}
> $$
> Similmente, nel caso complesso l'operatore aggiunto ${}^\dagger: \mathcal{L}(\mathcal{H}, \mathcal{H}) \to \mathcal{L}(\mathcal{H}, \mathcal{H})$ corrisponde alla combinazione di **trasposizione e coniugazione complessa** (matrice trasposta coniugata $A^\dagger = \overline{A}^T$).

> [!proposition] Proprietà Fondamentali dell'Operatore Aggiunto
> Sia $(\mathcal{H}, \langle \cdot, \cdot \rangle)$ uno spazio di Hilbert e sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore densamente definito. Valgono le seguenti proprietà:
> 1. **Conservazione della norma:** se $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ è limitato, allora anche $A^\dagger$ è limitato e:
>    $$
>    \|A^\dagger\| = \|A\|
>    $$
> 2. **Chiusura automatica:** l'operatore aggiunto $A^\dagger$ è **sempre chiuso**, per qualsiasi operatore densamente definito $A$:
>    $$
>    A^\dagger \text{ è chiuso} \qquad \forall A \in \mathcal{L}(D_A, \mathcal{H})
>    $$
> 3. **Criterio di Chiudibilità:** $A$ è chiudibile se e solo se il dominio dell'aggiunto $D_{A^\dagger}$ è denso in $\mathcal{H}$:
>    $$
>    A \text{ è chiudibile} \iff \overline{D_{A^\dagger}} = \mathcal{H}
>    $$
>    In tal caso, il bi-aggiunto coincide con la chiusura di $A$:
>    $$
>    (A^\dagger)^\dagger = \bar{A}
>    $$
> 4. **Inversione delle inclusioni:** se $A \in \mathcal{L}(D_A, \mathcal{H})$ e $B \in \mathcal{L}(D_B, \mathcal{H})$ soddisfano $A \subseteq B$ (ovvero $D_A \subseteq D_B$ e $B|_{D_A} = A$), allora:
>    $$
>    D_{B^\dagger} \subseteq D_{A^\dagger} \qquad \text{e} \qquad B^\dagger \subseteq A^\dagger
>    $$

> [!note] Criterio Operativo di Chiudibilità e Caratterizzazione del Dominio
> - La proprietà (3) costituisce un criterio pratico estremamente potente: per verificare se un operatore illimitato $A$ è chiudibile, è sufficiente calcolare $D_{A^\dagger}$ e dimostrare che esso è denso nello spazio $\mathcal{H}$.
> - Per il Teorema di Rappresentazione di Riesz, il dominio dell'aggiunto può essere individuato come l'insieme dei vettori $v \in \mathcal{H}$ per cui il funzionale lineare $u \mapsto \langle v, Au \rangle$ è limitato su $D_A$:
>   $$
>   D_{A^\dagger} = \left\{ v \in \mathcal{H} : \sup_{u \in D_A, \, \|u\|=1} |\langle v, Au \rangle| < +\infty \right\}
>   $$
>
## 6.7. Calcolo degli Operatori Aggiunti per i Sistemi Fisici

> [!example] Aggiunti degli Operatori Notevoli
> 
> 1. **Operatore Moltiplicativo $M_F$:**
>    Sia $F \in L^\infty(\mathbb{R}^n)$ (o $L^2$). L'aggiunto ha dominio:
>    $$
>    D_{M_F^\dagger} = L^2(\mathbb{R}^n) \qquad \text{e} \qquad M_F^\dagger = M_{F^*}
>    $$
>    dove $M_{F^*} \varphi(\mathbf{x}) = F^*(\mathbf{x}) \, \varphi(\mathbf{x})$.
> 
> 2. **Operatore Integrale $K$:**
>    Sia $K$ l'operatore con nucleo integrale $K(\mathbf{x}, \mathbf{y}) \in L^2(\mathbb{R}^{2n})$. L'operatore aggiunto agisce come:
>    $$
>    K^\dagger u(\mathbf{x}) = \int_{\mathbb{R}^n} K^*(\mathbf{y}, \mathbf{x}) \, u(\mathbf{y}) \, d\mathbf{y}
>    $$
>    con dominio $D_{K^\dagger} = L^2(\mathbb{R}^n)$ (il nucleo viene trasposto e coniugato: $K^\dagger(\mathbf{x}, \mathbf{y}) = K^*(\mathbf{y}, \mathbf{x})$).
> 
> 3. **Operatore Posizione $Q$:**
>    Si dimostra che il dominio dell'aggiunto coincide con il dominio della chiusura:
>    $$
>    D_{Q^\dagger} = \left\{ u \in L^2(\mathbb{R}) : x u \in L^2(\mathbb{R}) \right\} = D_{\bar{Q}}
>    $$
>    e $Q^\dagger u(x) = x u(x)$. Dunque $Q^\dagger = \bar{Q}$ (l'operatore è essenzialmente autoaggiunto).
> 
> 4. **Operatore Momento $P$:**
>    Si dimostra tramite integrazione per parti che:
>    $$
>    D_{P^\dagger} = H^1(\mathbb{R}) = D_{\bar{P}} \qquad \text{e} \qquad P^\dagger u(x) = -i \hbar \, \frac{\partial u}{\partial x}(x)
>    $$
>    Pertanto $P^\dagger = \bar{P}$ (l'operatore momento è essenzialmente autoaggiunto).
>
## 6.8. Nucleo, Immagine e Criterio di Invertibilità

> [!definition] Nucleo e Immagine
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore lineare. Si definiscono:
> - **Nucleo di $A$ (Kernel):**
>   $$
>   \mathrm{Ker} A := \left\{ u \in D_A : A u = 0 \right\}
>   $$
> - **Immagine di $A$ (Image / Range):**
>   $$
>   \mathrm{Im} A := \left\{ v \in \mathcal{H} : \exists u \in D_A \text{ tale che } v = A u \right\}
>   $$

> [!definition] Operatore Invertibile
> Un operatore $A \in \mathcal{L}(D_A, \mathcal{H})$ si dice **invertibile** se esiste un operatore lineare continuo $A^{-1}: \mathcal{H} \to D_A$ tale che:
> $$
> A A^{-1} = I_\mathcal{H} \qquad \text{e} \qquad A^{-1} A = I_{D_A}
> $$
> dove $I$ indica l'operatore identità ($I u = u \; \forall u$).

> [!theorem] Criterio di Invertibilità per Operatori Lineari
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore lineare chiuso. Allora $A$ è **invertibile** (con inverso limitato su tutto $\mathcal{H}$) se e solo se l'immagine di $A$ è densa in $\mathcal{H}$ ed esiste una costante $C > 0$ tale che $A$ sia **limitato dal basso**:
> $$
> A \text{ è invertibile} \iff \overline{\mathrm{Im} A} = \mathcal{H} \quad \text{ed} \quad \exists C > 0 : \; \|A u\| \ge C \, \|u\| \quad \forall u \in D_A
> $$

> [!note] Iniettività Implicata dalla Limitazione dal Basso
> La condizione di limitazione dal basso $\|A u\| \ge C \|u\|$ implica banalmente l'iniettività dell'operatore $A$:
> $$
> u \in \mathrm{Ker} A \implies A u = 0 \implies 0 = \|A u\| \ge C \|u\| \implies \|u\| = 0 \implies u = 0
> $$
> dunque:
> $$
> \mathrm{Ker} A = \{ 0 \}
> $$
>
## 6.9. Operatori Simmetrici, Essenzialmente Autoaggiunti e Autoaggiunti

> [!definition] Classificazione degli Operatori rispetto all'Aggiunto
> Un operatore lineare densamente definito $A: D_A \subseteq \mathcal{H} \to \mathcal{H}$ è detto:
> 1. **Simmetrico:** se $A \subseteq A^\dagger$, ossia:
>    $$
>    D_A \subseteq D_{A^\dagger} \qquad \text{e} \qquad A u = A^\dagger u \quad \forall u \in D_A
>    $$
>    il che equivale a richiedere la simmetria del prodotto scalare:
>    $$
>    \langle v, A u \rangle = \langle A v, u \rangle \qquad \forall u, v \in D_A
>    $$
> 
> 2. **Autoaggiunto (Self-Adjoint):** se coincide esattamente con il suo aggiunto, inclusi i domini:
>    $$
>    D_A = D_{A^\dagger} \qquad \text{e} \qquad A = A^\dagger
>    $$
> 
> 3. **Essenzialmente Autoaggiunto:** se è simmetrico e la sua chiusura $\bar{A}$ è autoaggiunta:
>    $$
>    \bar{A} = A^\dagger
>    $$

> [!note] Distinzione Fondamentale tra Simmetria e Autoaggiunzione
> La distinzione tra operatore simmetrico e operatore autoaggiunto è una peculiarità esclusiva degli **operatori illimitati**.
> Infatti, se $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ è un operatore **limitato** definito su tutto $\mathcal{H}$, la simmetria implica automaticamente l'autoaggiunzione:
> $$
> \mathcal{H} = D_A \subseteq D_{A^\dagger} \subseteq \mathcal{H} \implies D_A = D_{A^\dagger} = \mathcal{H} \implies A = A^\dagger
> $$
> Per operatori illimitati, invece, l'autoaggiunzione è una proprietà immensamente più forte e delicata della semplice simmetria formale, in quanto richiede che il dominio dell'operatore non possa essere ulteriormente esteso senza perdere l'hermiticità.

> [!note] Schema Generale delle Inclusioni
> Ricordando che per ogni operatore densamente definito e chiudibile vale $(A^\dagger)^\dagger = \bar{A}$, sussistono in generale le seguenti relazioni:
> - **$A$ simmetrico:**
>   $$
>   A \subseteq A^{\dagger\dagger} \subseteq A^\dagger
>   $$
> 
> - **$A$ simmetrico chiuso:**
>   $$
>   A = A^{\dagger\dagger} \subseteq A^\dagger
>   $$
> 
> - **$A$ essenzialmente autoaggiunto:**
>   $$
>   A \subseteq A^{\dagger\dagger} = A^\dagger
>   $$
> 
> - **$A$ autoaggiunto:**
>   $$
>   A = A^{\dagger\dagger} = A^\dagger
>   $$
> 
> *(Notazione per operatori autoaggiunti o simmetrici: in fisica quantistica spesso denotati con $A = A^\dagger$ intendendo l'estensione autoaggiunta massimale).*
>
Siccome in $D_A$ l'operatore soddisfa $A = A^\dagger$, si introduce la consueta notazione braket per l'elemento di matrice:
$$
\langle u | A | v \rangle := \langle u, A v \rangle = \langle A u, v \rangle
$$

### Esempi Fondamentali di Autoaggiunzione Essenziale

> [!example] Operatori di Moltiplicazione, Posizione e Laplaciano Libero
> Da quanto stabilito in precedenza discendono immediatamente le seguenti proprietà per gli operatori differenziali e di moltiplicazione classici:
> 
> 1. **Operatore di Moltiplicazione $M_F$:**
>    L'operatore di moltiplicazione $M_F$ definito da $(M_F u)(\mathbf{x}) := F(\mathbf{x}) u(\mathbf{x})$ è essenzialmente autoaggiunto se e solo se la funzione potenziale/moltiplicatore $F$ è a valori reali:
>    $$
>    M_F \text{ è essenzialmente autoaggiunto} \iff F \text{ è reale q.o.}
>    $$
> 
> 2. **Operatore Posizione $Q$:**
>    L'operatore posizione $Q$, definito inizialmente su $D_Q = C_0^\infty(\mathbb{R}^n)$ come $(Q u)(\mathbf{x}) := \mathbf{x} u(\mathbf{x})$, è essenzialmente autoaggiunto. Infatti il dominio della sua chiusura coincide con quello dell'aggiunto:
>    $$
>    D_{\overline{Q}} = D_{Q^\dagger} = \left\{ u \in L^2(\mathbb{R}^n) : \mathbf{x} u \in L^2(\mathbb{R}^n) \right\}
>    $$
>    e sull'intero dominio massimale si ha $\overline{Q} = Q^\dagger$.
>    
>    Si noti una caratterizzazione geometrica di grande interesse: il dominio della chiusura $D_{\overline{Q}}$ coincide con il completamento dello spazio dei dati lisci a supporto compatto rispetto alla norma del grafico:
>    $$
>    D_{\overline{Q}} = \overline{C_0^\infty(\mathbb{R}^n)}^{\|\cdot\|_Q} = \overline{D_Q}^{\|\cdot\|_Q}
>    $$
>    dove la norma del grafico associata a $Q$ è definita da:
>    $$
>    \|u\|_Q^2 := \|u\|_2^2 + \|\mathbf{x} u\|_2^2
>    $$
> 
> 3. **Operatore Laplaciano Libero (Hamiltoniana Libera) $H_0$:**
>    Si consideri l'operatore differenziale del secondo ordine:
>    $$
>    H_0 : C_0^\infty(\mathbb{R}^n) \longrightarrow L^2(\mathbb{R}^n), \qquad H_0 u := -\nabla^2 u
>    $$
>
Innanzitutto, per ogni $u \in H^2(\mathbb{R}^n)$ è ben definito $H_0 u = -\nabla^2 u$. Mostriamo che $H_0$ è un operatore chiuso con dominio $H^2(\mathbb{R}^n)$.

Sia $\{u_n\}_{n \in \mathbb{N}} \subset H^2(\mathbb{R}^n)$ una successione tale che:
$$
u_n \xrightarrow{n \to +\infty} u \quad \text{in } H^2(\mathbb{R}^n) \qquad \text{e} \qquad H_0 u_n \xrightarrow{n \to +\infty} v \quad \text{in } L^2(\mathbb{R}^n)
$$
La convergenza nello spazio di Sobolev $H^2(\mathbb{R}^n)$ significa per definizione che:
$$
\|u_n - u\|_{H^2}^2 = \|u_n - u\|_{2,2}^2 = \|u_n - u\|_2^2 + \sum_{1 \le i \le j \le n} \left\| \frac{\partial^2}{\partial x_i \partial x_j} (u_n - u) \right\|_2^2 \xrightarrow{n \to +\infty} 0
$$
Di conseguenza:
$$
\|H_0(u_n - u)\|_2 = \|\nabla^2(u_n - u)\|_2 \le C \|u_n - u\|_{2,2} \xrightarrow{n \to +\infty} 0
$$
Per l'unicità del limite in $L^2(\mathbb{R}^n)$ si ottiene necessariamente $v = H_0 u$. Ne consegue che il dominio della chiusura è:
$$
D_{\overline{H}_0} = H^2(\mathbb{R}^n)
$$

Verifichiamo ora la simmetria e l'autoaggiunzione di $H_0$ su $H^2(\mathbb{R}^n)$. Per ogni $u, v \in H^2(\mathbb{R}^n)$:
$$
\begin{aligned}
\langle u, H_0 v \rangle &= \int_{\mathbb{R}^n} u^*(\mathbf{x}) (H_0 v)(\mathbf{x}) \, d\mathbf{x} \\
&= \int_{\mathbb{R}^n} u^*(\mathbf{x}) \left( -\nabla^2 v(\mathbf{x}) \right) \, d\mathbf{x} \\
&= -\int_{\mathbb{R}^n} u^*(\mathbf{x}) \nabla^2 v(\mathbf{x}) \, d\mathbf{x}
\end{aligned}
$$
Integrando per parti (i termini di bordo all'infinito si annullano per le funzioni in $H^2(\mathbb{R}^n)$):
$$
\begin{aligned}
-\int_{\mathbb{R}^n} u^* \nabla^2 v \, d\mathbf{x} &= \int_{\mathbb{R}^n} \nabla u^* \cdot \nabla v \, d\mathbf{x} = \int_{\mathbb{R}^n} (\nabla u)^* \cdot \nabla v \, d\mathbf{x} \\
&= \left( \int_{\mathbb{R}^n} (\nabla v)^* \cdot \nabla u \, d\mathbf{x} \right)^* \\
&= \left( -\int_{\mathbb{R}^n} v^* \nabla^2 u \, d\mathbf{x} \right)^* \\
&= \int_{\mathbb{R}^n} (-\nabla^2 u)^* v \, d\mathbf{x} \\
&= \langle H_0 u, v \rangle
\end{aligned}
$$
Essendo simmetrico sul dominio massimale $H^2(\mathbb{R}^n)$, l'operatore $H_0$ è autoaggiunto:
$$
H_0 = H_0^\dagger \qquad \text{su } D_{H_0} = H^2(\mathbb{R}^n)
$$

### Autoaggiunzione Essenziale dell'Operatore Momento e Dipendenza dal Dominio

> [!example] Operatore Momento su $\mathbb{R}^n$ e Mancata Autoaggiunzione sull'Intervallo Limitato
> Si consideri l'operatore momento $P := -i \nabla$.
> 
> 1. **Su tutto lo spazio $\mathbb{R}^n$:**
>    L'operatore momento $P: C_0^\infty(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ è essenzialmente autoaggiunto e si ha:
>    $$
>    D_{\overline{P}} = D_{P^\dagger} = H^1(\mathbb{R}^n)
>    $$
> 
> 2. **Sull'intervallo limitato $(0,1)$:**
>    > [!warning] Il Ruolo Cruciale delle Condizioni al Bordo
>    > L'autoaggiunzione essenziale **NON** è una proprietà puramente differenziale, ma dipende in modo critico dal dominio geometrico e dalle condizioni al contorno.
>    
>    Si consideri l'operatore momento unidimensionale ristretto all'intervallo $(0,1)$:
>    $$
>    P : C_0^\infty((0,1)) \longrightarrow L^2((0,1)), \qquad P u := -i \frac{du}{dx}
>    $$
>    In tal caso si determina esplicitamente il dominio dell'operatore aggiunto:
>    $$
>    D_{P^\dagger} = \left\{ u \in AC((0,1)) : u' \in L^2((0,1)) \right\} = H^1((0,1))
>    $$
>    mentre il dominio della chiusura è dato da:
>    $$
>    D_{\overline{P}} = \left\{ u \in H^1((0,1)) : u(0) = u(1) = 0 \right\} = H_0^1((0,1))
>    $$
>    Si noti che per l'operatore aggiunto $P^\dagger$ **NON** è richiesta alcuna condizione di annullamento della traccia al bordo!
>    Poiché $D_{\overline{P}} = H_0^1((0,1)) \subsetneq H^1((0,1)) = D_{P^\dagger}$, l'operatore momento nella "scatola" $(0,1)$ **non è essenzialmente autoaggiunto**.
>
## 6.10. Isometrie e Operatori Unitari

> [!definition] Isometria e Operatore Unitario
> Siano $(\mathcal{H}, \langle \cdot, \cdot \rangle_\mathcal{H})$ e $(\mathcal{H}', (\cdot, \cdot)_{H'})$ due spazi di Hilbert.
> Un operatore lineare $U: \mathcal{H} \to \mathcal{H}'$ si dice:
> 1. **Isometria**, se conserva il prodotto scalare:
>    $$
>    (U u, U v)_{H'} = \langle u, v \rangle_\mathcal{H} \qquad \forall u, v \in \mathcal{H}
>    $$
>    In particolare, ponendo $u = v$, un'isometria conserva la norma:
>    $$
>    \|U u\|_{H'}^2 = \|u\|_\mathcal{H}^2 \qquad \forall u \in \mathcal{H}
>    $$
> 2. **Operatore Unitario**, se è un'isometria ed è suriettivo:
>    $$
>    \mathrm{Im}(U) = \mathcal{H}'
>    $$

> [!proposition] Caratterizzazione degli Operatori Unitari
> Sia $T: \mathcal{H} \to \mathcal{H}'$ un operatore lineare tra spazi di Hilbert. Allora:
> $$
> T \text{ è unitario} \iff T \text{ è invertibile e } T^{-1} = T^\dagger
> $$

> [!note] Analogia con le Matrici Ortogonali e Unitarie
> Questa proprietà ricalca esattamente la struttura delle matrici ortogonali/unitarie in dimensione finita, per le quali la matrice inversa coincide con la trasposta coniugata:
> $$
> A^{-1} = A^\dagger \quad (\text{ovvero } A^{-1} = A^T \text{ nel caso reale})
> $$

> [!example] Isomorfismo Unitario con $\ell^2$
> Sia $\{u_n\}_{n \in \mathbb{N}}$ un sistema ortonormale completo (base hilbertiana) dello spazio di Hilbert separabile $\mathcal{H}$.
> L'operatore di Fourier generalizzato:
> $$
> U : \mathcal{H} \longrightarrow \ell^2(\mathbb{N}), \qquad U f := \{\widehat{f}_n\}_{n \in \mathbb{N}} = \{\langle u_n, f \rangle\}_{n \in \mathbb{N}}
> $$
> è un operatore unitario tra $\mathcal{H}$ ed $\ell^2(\mathbb{N})$. Infatti, per l'identità di Parseval/Bessel:
> $$
> \|U f\|_{\ell^2}^2 = \sum_{n \in \mathbb{N}} |\widehat{f}_n|^2 = \|f\|_\mathcal{H}^2
> $$
> ed ogni successione a quadrato sommabile in $\ell^2$ individua un elemento di $\mathcal{H}$ per la completezza del sistema ortonormale.
>
### Invarianza dell'Autoaggiunzione per Coniugio Unitario

> [!theorem] Equivalenza Unitaria di Operatori
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore densamente definito e $U: \mathcal{H} \to \mathcal{H}'$ un operatore unitario tra spazi di Hilbert.
> Si definisca l'operatore trasformato $A' \in \mathcal{L}(D_{A'}, \mathcal{H}')$ ponendo:
> $$
> D_{A'} := U(D_A) = \left\{ v' \in \mathcal{H}' : \exists v \in D_A \text{ tale che } v' = U v \right\}
> $$
> con azione:
> $$
> A' v' := U A U^{-1} v' \qquad \forall v' \in D_{A'}
> $$
> Allora:
> $$
> A' \text{ è (essenzialmente) autoaggiunto in } \mathcal{H}' \iff A \text{ è (essenzialmente) autoaggiunto in } \mathcal{H}
> $$

> [!quote]- Dimostrazione
> Calcoliamo l'aggiunto dell'operatore coniugato $A' = U A U^{-1}$. Poiché $U$ è unitario, si ha $U^\dagger = U^{-1}$ e $(U^{-1})^\dagger = (U^\dagger)^\dagger = U$. Sfruttando la regola dell'aggiunto del prodotto di operatori:
> $$
> (A')^\dagger = (U A U^{-1})^\dagger = (U^{-1})^\dagger A^\dagger U^\dagger = U A^\dagger U^{-1}
> $$
> Ne segue immediatamente che:
> $$
> (A')^\dagger = A' \iff U A^\dagger U^{-1} = U A U^{-1} \iff A^\dagger = A
> $$
> La medesima relazione si estende alle chiusure nel caso di autoaggiunzione essenziale: $\overline{A'} = U \overline{A} U^{-1}$, garantendo l'equivalenza.
> $$
> (A')^\dagger = U A^\dagger U^{-1} \qquad \blacksquare
> $$
>
## 6.11. Criteri Fondamentali di Autoaggiunzione

Studiamo ora alcuni potenti criteri operativi per determinare l'autoaggiunzione o l'autoaggiunzione essenziale di un operatore simmetrico.

> [!proposition] Criteri di Autoaggiunzione (Teorema di Von Neumann)
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore simmetrico densamente definito.
> 
> **1. Condizioni per l'autoaggiunzione ($A = A^\dagger$):**
> Sono tra loro equivalenti le seguenti affermazioni:
> - $A$ è autoaggiunto ($A = A^\dagger$);
> - $A$ è chiuso e $\mathrm{Ker}(A^\dagger \pm i I) = \{0\}$;
> - $\mathrm{Im}(A \pm i I) = \mathcal{H}$.
> 
> **2. Condizioni per l'autoaggiunzione essenziale ($\overline{A} = A^\dagger$):**
> Sono tra loro equivalenti le seguenti affermazioni:
> - $A$ è essenzialmente autoaggiunto;
> - $\mathrm{Ker}(A^\dagger \pm i I) = \{0\}$;
> - $\mathrm{Im}(A \pm i I)$ è denso in $\mathcal{H}$ (ovvero $\mathrm{Im}(\overline{A} \pm i I) = \mathcal{H}$).

> [!note] Estensione a Valori Spettrali Complessi Arbitrari
> La proposizione precedente rimane valida sostituendo la costante immaginaria $\pm i$ con un qualsiasi numero complesso non reale $\pm z$ con $z \in \mathbb{C} \setminus \mathbb{R}$ ($\mathrm{Im}(z) \neq 0$).
> 
> Sia infatti $z \in \mathbb{C}$ con $\mathrm{Im}(z) \neq 0$. Valutiamo la norma quadrata dell'operatore $A - z I$:
> $$
> \begin{aligned}
> \|(A - z) u\|^2 &= \langle (A - \mathrm{Re}(z) - i \mathrm{Im}(z)) u, (A - \mathrm{Re}(z) - i \mathrm{Im}(z)) u \rangle \\
> &= \langle (A - \mathrm{Re}(z)) u, (A - \mathrm{Re}(z)) u \rangle + \langle -i \mathrm{Im}(z) u, -i \mathrm{Im}(z) u \rangle \\
> &\quad + \langle (A - \mathrm{Re}(z)) u, -i \mathrm{Im}(z) u \rangle + \langle -i \mathrm{Im}(z) u, (A - \mathrm{Re}(z)) u \rangle
> \end{aligned}
> $$
> Analizzando i termini incrociati, sfruttando la simmetria di $A - \mathrm{Re}(z)$ e l'antilinearità del primo argomento:
> $$
> \langle (A - \mathrm{Re}(z)) u, -i \mathrm{Im}(z) u \rangle = -i \mathrm{Im}(z) \langle (A - \mathrm{Re}(z)) u, u \rangle
> \langle -i \mathrm{Im}(z) u, (A - \mathrm{Re}(z)) u \rangle = (-i \mathrm{Im}(z))^* \langle u, (A - \mathrm{Re}(z)) u \rangle = +i \mathrm{Im}(z) \langle u, (A - \mathrm{Re}(z)) u \rangle
> $$
> I due termini incrociati sono opposti e si cancellano esattamente:
> $$
> -i \mathrm{Im}(z) \langle (A - \mathrm{Re}(z)) u, u \rangle + i \mathrm{Im}(z) \langle u, (A - \mathrm{Re}(z)) u \rangle = 0
> $$
> Pertanto si ottiene la fondamentale stima a priori:
> $$
> \|(A - z) u\|^2 = \|(A - \mathrm{Re}(z)) u\|^2 + |\mathrm{Im}(z)|^2 \|u\|^2 \ge |\mathrm{Im}(z)|^2 \|u\|^2
> $$
> Estraendo la radice quadrata:
> $$
> \|(A - z) u\| \ge |\mathrm{Im}(z)| \|u\| \qquad \forall u \in D_A
> $$
> La costante $C = |\mathrm{Im}(z)| > 0$ assicura che l'operatore $A - z I$ è iniettivo e ammette inverso continuo sul suo rango. Inoltre l'operatore risolvente associato $(A - z I)^{-1}$ è limitato con norma vincolata da:
> $$
> \|(A - z I)^{-1}\| \le \frac{1}{|\mathrm{Im}(z)|}
> $$
> relazione che si ricava ponendo $v = (A - z I) u \implies u = (A - z I)^{-1} v$.
>
### Esempi di Applicazione del Criterio di Autoaggiunzione

> [!example] Autoaggiunzione Essenziale di $Q$ tramite Densità dell'Immagine
> Si consideri l'operatore posizione $(Q u)(x) = x u(x)$ su $D_Q = C_0^\infty(\mathbb{R})$.
> Applichiamo il criterio di densità dell'immagine verificando se $\mathrm{Im}(Q \pm i I)$ è denso in $L^2(\mathbb{R})$.
> Sia $\varphi \in C_0^\infty(\mathbb{R})$; la funzione:
> $$
> \psi(x) := \frac{\varphi(x)}{x \pm i}
> $$
> appartiene ancora a $C_0^\infty(\mathbb{R})$ (in quanto il denominatore non si annulla mai sui reali ed è infinitamente derivabile).
> Applicando l'operatore a $\psi$:
> $$
> (Q \pm i I) \psi(x) = (x \pm i) \frac{\varphi(x)}{x \pm i} = \varphi(x)
> $$
> Di conseguenza $C_0^\infty(\mathbb{R}) \subseteq \mathrm{Im}(Q \pm i I)$. Poiché $C_0^\infty(\mathbb{R})$ è denso in $L^2(\mathbb{R})$, l'immagine $\mathrm{Im}(Q \pm i I)$ è densa in $L^2(\mathbb{R})$, il che dimostra rigorosamente che $Q$ è essenzialmente autoaggiunto.

> [!example] Analisi di $P$ tramite il Nucleo dell'Aggiunto
> Si consideri l'operatore momento $P u = -i \frac{\partial u}{\partial x}$. Applichiamo il criterio del nucleo:
> $$
> \varphi \in \mathrm{Ker}(P^\dagger \pm i I) \iff P^\dagger \varphi = \mp i \varphi
> $$
> Nel senso delle distribuzioni/funzioni assolutamente continue:
> $$
> -i \frac{d\varphi}{dx} = \mp i \varphi \iff \frac{d\varphi}{dx} = \pm \varphi \iff \varphi(x) = C e^{\pm x}
> $$
> 1. **Su $\mathbb{R}$:**
>    Le funzioni esponenziali $\varphi(x) = C e^{\pm x}$ non appartengono a $L^2(\mathbb{R})$ per alcuna costante $C \neq 0$ (divergono esponenzialmente a $+\infty$ o $-\infty$). L'unica soluzione a quadrato sommabile è $\varphi \equiv 0$:
>    $$
>    \mathrm{Ker}(P^\dagger \pm i I) = \{0\}
>    $$
>    Ne segue che $P$ è essenzialmente autoaggiunto su $L^2(\mathbb{R})$ con dominio iniziale $C_0^\infty(\mathbb{R})$.
> 
> 2. **Sull'intervallo $(0,1)$:**
>    Se avessimo scelto $D_P = C_0^\infty((0,1))$, le soluzioni esponenziali $\varphi(x) = C e^{\pm x}$ appartengono perfettamente a $L^2((0,1))$ (e a $H^1((0,1))$) per qualunque costante $C$. Pertanto:
>    $$
>    \mathrm{dim} \mathrm{Ker}(P^\dagger \pm i I) = 1 \neq 0
>    $$
>    e l'operatore $P$ **non è essenzialmente autoaggiunto** su $C_0^\infty((0,1))$.
>
## 6.12. Teoria delle Perturbazioni e Teorema di Kato-Rellich

Un altro metodo estremamente potente per stabilire l'autoaggiunzione di operatori complessi (in particolare hamiltoniane quantistiche con potenziali) è basato sulla teoria delle perturbazioni.

> [!definition] Piccola Perturbazione nel Senso di Kato
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ e $B \in \mathcal{L}(D_B, \mathcal{H})$ due operatori lineari con domini densi tali che:
> $$
> D_A \subseteq D_B
> $$
> L'operatore $B$ è detto **piccola perturbazione nel senso di Kato** rispetto ad $A$ (o $A$-limitato con $A$-limite strettamente minore di $1$) se esistono due costanti reali $a \in [0, 1)$ e $b \in [0, +\infty)$ tali che:
> $$
> \|B \psi\| \le a \|A \psi\| + b \|\psi\| \qquad \forall \psi \in D_A
> $$

> [!note] Operatori Bounded come Piccole Perturbazioni
> Se $B$ è un operatore autoaggiunto e limitato su $\mathcal{H}$ ($B \in \mathcal{B}(\mathcal{H})$), allora esso costituisce banalmente una piccola perturbazione rispetto a qualsiasi operatore non limitato $A$. Infatti basta scegliere:
> $$
> a = 0 < 1 \qquad \text{e} \qquad b = \|B\| < +\infty
> $$
> ottenendo la disuguaglianza valida per ogni $\psi \in D_A$:
> $$
> \|B \psi\| \le 0 \cdot \|A \psi\| + \|B\| \|\psi\| = \|B\| \|\psi\|
> $$

> [!theorem] Teorema di Kato-Rellich
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto e $B \in \mathcal{L}(D_B, \mathcal{H})$ un operatore simmetrico tale da costituire una piccola perturbazione nel senso di Kato per $A$ (con costante $a < 1$).
> Allora l'operatore perturbato:
> $$
> \mathcal{H} := A + B \qquad \text{su } D(A+B) = D_A
> $$
> è autoaggiunto.
> Inoltre, se $A$ è essenzialmente autoaggiunto su un core $D_0 \subseteq D_A$, allora anche $A + B$ è essenzialmente autoaggiunto su $D_0$.

> [!example] Applicazione alla Meccanica Quantistica: Hamiltoniana con Potenziale
> Questo teorema riveste un ruolo di fondamentale importanza in fisica teorica. Si consideri l'operatore Hamiltoniano del sistema quantistico:
> $$
> \mathcal{H} = H_0 + V
> $$
> dove $H_0 = -\nabla^2$ è l'Hamiltoniana libera, essenzialmente autoaggiunta su $C_0^\infty(\mathbb{R}^n)$ con chiusura su $D_{\overline{H}_0} = H^2(\mathbb{R}^n)$.
> L'operatore potenziale di moltiplicazione $V$ in genere non è limitato (ad esempio nel caso del potenziale coulombiano $V(\mathbf{x}) = -\frac{\alpha}{|\mathbf{x}|}$ in dimensione $n=3$).
> Il teorema di Kato-Rellich stabilisce che, se il potenziale $V$ soddisfa la condizione di infinitesimità di Kato:
> $$
> \|V \psi\|_2 \le a \|H_0 \psi\|_2 + b \|\psi\|_2 \qquad \text{con } a < 1
> $$
> allora l'operatore Hamiltoniano totale $\mathcal{H} = -\nabla^2 + V$ è essenzialmente autoaggiunto su $C_0^\infty(\mathbb{R}^3)$ e la sua chiusura è autoaggiunta su $H^2(\mathbb{R}^3)$, garantendo l'unitarità dell'evoluzione temporale quantistica $e^{-i \mathcal{H} t}$.
>
### Operatori Limitati dal Basso e Teorema di Kato-Rellich

> [!definition] Operatore Limitato dal Basso
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore simmetrico. Si dice che $A$ è **limitato dal basso** se esiste una costante $\lambda_0 \in \mathbb{R}$ tale che:
> $$
> A \ge -\lambda_0 I \iff \langle u, A u \rangle \ge -\lambda_0 \|u\|^2 \qquad \forall u \in D_A
> $$

> [!proposition] Conservazione della Limitatezza dal Basso (Conseguenza del Teorema di Kato-Rellich)
> Siano verificate le ipotesi del teorema di Kato-Rellich per la coppia $(A, B)$ con costanti $a < 1$ e $b \ge 0$. Se l'operatore non perturbato $A$ è limitato dal basso con $A \ge -\lambda_0 I$, allora anche l'operatore perturbato $A + B$ è limitato dal basso e soddisfa:
> $$
> A + B \ge -\left( \lambda_0 + \max\left\{ \frac{b}{1-a}, \, a |\lambda_0| + b \right\} \right) I
> $$

> [!definition] Operatore Positivo
> Un operatore simmetrico $A \in \mathcal{L}(D_A, \mathcal{H})$ si dice **positivo** (denotato con $A \ge 0$) se:
> $$
> \langle u, A u \rangle \ge 0 \qquad \forall u \in D_A
> $$

> [!proposition] Autoaggiunzione di Operatori Positivi Chiusi
> Sia $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ un operatore densamente definito, chiuso e positivo ($A \ge 0$). Allora $A$ ammette estensioni autoaggiunte ed è autoaggiunto se il suo codominio è massimale (estensione di Friedrichs).
>
## 6.13. Trasformata di Fourier Unitaria e Operatori Quantistici

> [!example] Formulazione Simmetrica della Trasformata di Fourier in $L^2(\mathbb{R}^n)$
> Ai fini della teoria operatoriale e spettrale, si adotta frequentemente una normalizzazione simmetrica della trasformata di Fourier rispetto a quella consueta, incorporando il fattore $(2\pi)^{-n/2}$ in modo tale da preservare esattamente la norma $L^2$:
> $$
> \mathcal{F} : L^2(\mathbb{R}^n) \longrightarrow L^2(\mathbb{R}^n), \qquad \widehat{f}(\boldsymbol{\xi}) := (\mathcal{F} f)(\boldsymbol{\xi}) = \frac{1}{(2\pi)^{n/2}} \int_{\mathbb{R}^n} f(\mathbf{x}) e^{-i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\mathbf{x}
> $$
> Con tale normalizzazione valgono le identità di isometria perfetta:
> $$
> \|\mathcal{F} u\|_2 = \|u\|_2 \qquad \text{e} \qquad \langle \widehat{f}, \widehat{g} \rangle = \langle f, g \rangle
> $$
> Ne consegue che $\mathcal{F}$ è un **operatore unitario** su $L^2(\mathbb{R}^n)$.
> L'operatore inverso $\mathcal{F}^{-1}$ coincide con l'operatore aggiunto $\mathcal{F}^\dagger$ ed è dato esplicitamente da:
> $$
> \mathcal{F}^{-1} f(\mathbf{x}) := \check{f}(\mathbf{x}) = \frac{1}{(2\pi)^{n/2}} \int_{\mathbb{R}^n} f(\boldsymbol{\xi}) e^{i \boldsymbol{\xi} \cdot \mathbf{x}} \, d\boldsymbol{\xi}
> $$
> Tale operatore soddisfa banalmente:
> $$
> \widehat{\check{f}} = \check{\widehat{f}} = f \qquad \forall f \in L^2(\mathbb{R}^n)
> $$
> 
> Tutte le proprietà algebriche e differenziali si conservano identiche; l'unica modifica compare nelle costanti delle formule di convoluzione e prodotto:
> $$
> \mathcal{F}(f * g) = (2\pi)^{n/2} \widehat{f} \, \widehat{g}
> \mathcal{F}(f \cdot g) = \frac{1}{(2\pi)^{n/2}} \widehat{f} * \widehat{g}
> $$
>
### Coniugio Unitario tra Posizione e Momento

Calcoliamo l'effetto della trasformata di Fourier sull'operatore di moltiplicazione per $x$:
$$
\widehat{x u}(\boldsymbol{\xi}) = -i \frac{\partial}{\partial \boldsymbol{\xi}} (\mathcal{F} u)(\boldsymbol{\xi})
$$
Applicando l'antitrasformata $\mathcal{F}^{-1}$ ad entrambi i membri:
$$
\mathcal{F}^{-1} \mathcal{F} (x u) = \mathcal{F}^{-1} \left( -i \frac{\partial}{\partial \mathbf{x}} \right) \mathcal{F} u
$$
da cui:
$$
x u = Q u = \mathcal{F}^{-1} P \mathcal{F} u \qquad \forall u \in H^1(\mathbb{R}^n)
$$
Ne discende che gli operatori posizione e momento sono **unitariamente equivalenti**:
$$
\overline{Q} = \mathcal{F}^{-1} \overline{P} \mathcal{F}
$$
Poiché l'equivalenza unitaria preserva l'autoaggiunzione, l'autoaggiunzione essenziale di $P$ implica immediatamente quella di $Q$ e viceversa!

## 6.14. Proiettori Ortogonali

Si consideri un sottospazio vettoriale chiuso $K \subseteq \mathcal{H}$ dello spazio di Hilbert $\mathcal{H}$.
Sia $\pi_K: \mathcal{H} \to \mathcal{H}$ l'operatore che associa ad ogni $u \in \mathcal{H}$ la sua proiezione ortogonale su $K$:
$$
\pi_K u = v \in K \qquad \text{tale che } (u - v) \in K^\perp
$$
Abbiamo già mostrato che $\pi_K$ è un operatore lineare limitato ($\|\pi_K\| \le 1$). Vale una caratterizzazione algebrica completa:

> [!proposition] Caratterizzazione degli Operatori di Proiezione Ortogonale
> Sia $P \in \mathcal{L}(D_P, \mathcal{H})$ un operatore lineare. Le seguenti condizioni sono equivalenti:
> 1. $P$ è un proiettore ortogonale su un sottospazio chiuso di $\mathcal{H}$;
> 2. Valgono simultaneamente le tre proprietà:
>    - $P$ è limitato ($P \in \mathcal{B}(\mathcal{H})$);
>    - $P$ è idempotente: $P^2 = P$;
>    - $P$ è autoaggiunto: $P^\dagger = P$.

> [!quote]- Dimostrazione
> **Necessità ($\implies$):**
> Le proprietà di limitatezza e idempotenza ($P^2 = P$) sono già state verificate per la proiezione ortogonale. Mostriamo l'autoaggiunzione.
> Siano $u_1, u_2 \in \mathcal{H}$, e siano $v_1 = P u_1$, $v_2 = P u_2$.
> Per il teorema di decomposizione ortogonale:
> $$
> u_i = v_i + w_i \qquad \text{con } v_i \in K, \, w_i \in K^\perp \implies \langle v_i, w_i \rangle = 0 \quad (i = 1,2)
> $$
> Calcoliamo i prodotti scalari incrociati:
> $$
> \langle u_1, P u_2 \rangle = \langle v_1 + w_1, v_2 \rangle = \langle v_1, v_2 \rangle + \langle w_1, v_2 \rangle = \langle v_1, v_2 \rangle
> $$
> Analogamente:
> $$
> \langle P u_1, u_2 \rangle = \langle v_1, v_2 + w_2 \rangle = \langle v_1, v_2 \rangle + \langle v_1, w_2 \rangle = \langle v_1, v_2 \rangle
> $$
> Uguagliando i risultati si ottiene:
> $$
> \langle u_1, P u_2 \rangle = \langle P u_1, u_2 \rangle \qquad \forall u_1, u_2 \in \mathcal{H} \implies P^\dagger = P
> $$
> 
> **Sufficienza ($\impliedby$):**
> Supponiamo che $P \in \mathcal{B}(\mathcal{H})$ soddisfi $P^2 = P$ e $P^\dagger = P$.
> Definiamo l'operatore complementare $I - P$. Verifichiamo che è autoaggiunto:
> $$
> \begin{aligned}
> \langle u_1, (I - P) u_2 \rangle &= \langle u_1, u_2 - P u_2 \rangle = \langle u_1, u_2 \rangle - \langle u_1, P u_2 \rangle \\
> &= \langle u_1, u_2 \rangle - \langle P u_1, u_2 \rangle = \langle (I - P) u_1, u_2 \rangle \implies (I - P)^\dagger = I - P
> \end{aligned}
> $$
> Verifichiamo l'idempotenza di $I - P$:
> $$
> (I - P)^2 = (I - P)(I - P) = I - P - P + P^2 = I - 2P + P = I - P
> $$
> Inoltre, gli operatori $P$ e $I - P$ sono mutuamente ortogonali:
> $$
> P(I - P) u = (P - P^2) u = (P - P) u = 0
> $$
> Per ogni $u \in \mathcal{H}$, possiamo scrivere banalmente:
> $$
> u = P u + (I - P) u
> $$
> Ponendo $v = P u \in \mathrm{Im}(P)$ e $w = (I - P) u$, verifichiamo la loro ortogonalità:
> $$
> \langle v, w \rangle = \langle P u, (I - P) u \rangle = \langle u, P^\dagger (I - P) u \rangle = \langle u, P(I - P) u \rangle = \langle u, 0 \rangle = 0
> $$
> Dal teorema di decomposizione ortogonale, lo spazio si decompone in somma diretta ortogonale $\mathcal{H} = K \oplus K^\perp$ dove $K = \mathrm{Im}(P)$ è chiuso, e $P$ coincide con il proiettore ortogonale su $K$.
> $$
> P^\dagger = P \quad \text{e} \quad P^2 = P \implies P = \pi_{\mathrm{Im}(P)} \qquad \blacksquare
> $$
>
## 6.15. Incertezza e Teorema di Indeterminazione di Heisenberg

> [!definition] Valore di Aspettazione e Incertezza (Varianza Quantistica)
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Per ogni vettore di stato normalizzato $u \in D_A$ ($\|u\| = 1$), si definiscono:
> 1. **Valore di Aspettazione di $A$:**
>    $$
>    \langle A \rangle_u := \langle u | A | u \rangle = \langle u, A u \rangle = \langle A u, u \rangle
>    $$
> 2. **Incertezza (Deviazione Standard) di $A$:**
>    $$
>    \Delta_u A := \sqrt{\langle A^2 \rangle_u - \langle A \rangle_u^2} = \sqrt{\langle (A - \langle A \rangle_u I)^2 \rangle_u} = \|(A - \langle A \rangle_u I) u\|
>    $$

> [!definition] Commutatore di Due Operatori
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ e $B \in \mathcal{L}(D_B, \mathcal{H})$ due operatori lineari.
> Si definisce **commutatore** di $A$ e $B$ l'operatore:
> $$
> [A, B] : D_A \cap D_B \longrightarrow \mathcal{H}, \qquad [A, B] := AB - BA
> $$
> la cui azione per ogni $u \in D_A \cap D_B$ (tale che $B u \in D_A$ e $A u \in D_B$) è data da:
> $$
> [A, B] u = A B u - B A u
> $$

> [!note] Realtà del Valore di Aspettazione
> Poiché $A$ è autoaggiunto, il valore di aspettazione $\langle A \rangle_u$ è rigorosamente reale:
> $$
> \overline{\langle A \rangle_u} = \overline{\langle u, A u \rangle} = \langle A u, u \rangle = \langle u, A u \rangle = \langle A \rangle_u \implies \langle A \rangle_u \in \mathbb{R}
> $$
>
### Il Teorema di Indeterminazione Generale

> [!theorem] Teorema di Indeterminazione di Heisenberg-Robertson
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ e $B \in \mathcal{L}(D_B, \mathcal{H})$ due operatori autoaggiunti su $\mathcal{H}$, e sia $u \in \mathcal{H}$ un vettore normalizzato ($\|u\| = 1$) tale che:
> $$
> u \in D_A \cap D_B, \qquad A u \in D_B, \qquad B u \in D_A
> $$
> Allora vale la disuguaglianza fondamentale delle incertezze:
> $$
> \Delta_u A \cdot \Delta_u B \ge \frac{1}{2} \left| \langle u | [A, B] | u \rangle \right|
> $$

> [!quote]- Dimostrazione
> Siano definiti gli operatori centrati rispetto ai rispettivi valori medi:
> $$
> A' := A - \langle A \rangle_u I, \qquad B' := B - \langle B \rangle_u I
> $$
> Essendo $A$ e $B$ autoaggiunti e i valori $\langle A \rangle_u, \langle B \rangle_u$ reali, anche gli operatori centrati $A'$ e $B'$ sono autoaggiunti. Infatti, per ogni $v, w \in D_A$:
> $$
> \langle v, (A - \langle A \rangle_u I) w \rangle = \langle v, A w \rangle - \langle A \rangle_u \langle v, w \rangle = \langle A v, w \rangle - \langle \langle A \rangle_u v, w \rangle = \langle A' v, w \rangle
> $$
> Si noti inoltre che per definizione di incertezza:
> $$
> \|A' u\|^2 = \langle u, (A')^2 u \rangle = (\Delta_u A)^2, \qquad \|B' u\|^2 = \langle u, (B')^2 u \rangle = (\Delta_u B)^2
> $$
> 
> Per ogni parametro $\lambda \in \mathbb{R}$, consideriamo il vettore $(A' + i \lambda B') u$. La sua norma quadra è banalmente non negativa:
> $$
> 0 \le \|(A' + i \lambda B') u\|^2 = \langle (A' + i \lambda B') u, (A' + i \lambda B') u \rangle
> $$
> Poiché $A'$ e $B'$ sono autoaggiunti, l'aggiunto di $A' + i \lambda B'$ (con $\lambda \in \mathbb{R}$) è $(A' + i \lambda B')^\dagger = A' - i \lambda B'$. Sviluppando il prodotto scalare:
> $$
> \begin{aligned}
> \|(A' + i \lambda B') u\|^2 &= \langle u, (A' - i \lambda B')(A' + i \lambda B') u \rangle \\
> &= \langle u, \left( (A')^2 + i \lambda A' B' - i \lambda B' A' + \lambda^2 (B')^2 \right) u \rangle \\
> &= \langle u, (A')^2 u \rangle + \lambda \langle u, i [A', B'] u \rangle + \lambda^2 \langle u, (B')^2 u \rangle \\
> &= (\Delta_u A)^2 + \lambda \langle u, i [A', B'] u \rangle + \lambda^2 (\Delta_u B)^2
> \end{aligned}
> $$
> 
> Calcoliamo ora il commutatore $[A', B']$:
> $$
> \begin{aligned}
> [A', B'] &= (A - \langle A \rangle_u)(B - \langle B \rangle_u) - (B - \langle B \rangle_u)(A - \langle A \rangle_u) \\
> &= \left( AB - \langle A \rangle_u B - \langle B \rangle_u A + \langle A \rangle_u \langle B \rangle_u \right) - \left( BA - \langle B \rangle_u A - \langle A \rangle_u B + \langle A \rangle_u \langle B \rangle_u \right) \\
> &= AB - BA = [A, B]
> \end{aligned}
> $$
> Sostituendo nella relazione precedente, per ogni $\lambda \in \mathbb{R}$ si ottiene:
> $$
> \lambda^2 (\Delta_u B)^2 + \lambda \langle u, i [A, B] u \rangle + (\Delta_u A)^2 \ge 0 \qquad (*)
> $$
> 
> Mostriamo che l'operatore $i [A, B]$ è simmetrico. Infatti:
> $$
> (i [A, B])^\dagger = -i (AB - BA)^\dagger = -i (B^\dagger A^\dagger - A^\dagger B^\dagger) = -i (BA - AB) = i (AB - BA) = i [A, B]
> $$
> Essendo $i [A, B]$ simmetrico, il suo valore di aspettazione è puramente reale:
> $$
> \overline{\langle u, i [A, B] u \rangle} = \langle i [A, B] u, u \rangle = \langle u, (i [A, B])^\dagger u \rangle = \langle u, i [A, B] u \rangle \implies \langle u, i [A, B] u \rangle \in \mathbb{R}
> $$
> L'espressione $(*)$ rappresenta dunque un trinomio di secondo grado nella variabile reale $\lambda$ a coefficienti reali, il quale risulta sempre non negativo ($\ge 0$) per ogni $\lambda \in \mathbb{R}$.
> Affinché un trinomio di secondo grado non negativo non cambi mai segno, il suo discriminante $\Delta_\lambda$ deve essere minore o uguale a zero:
> $$
> \Delta_\lambda = b^2 - 4ac = \left( \langle u, i [A, B] u \rangle \right)^2 - 4 (\Delta_u A)^2 (\Delta_u B)^2 \le 0
> $$
> Isolando il prodotto delle varianze:
> $$
> 4 (\Delta_u A)^2 (\Delta_u B)^2 \ge \left( \langle u, i [A, B] u \rangle \right)^2
> $$
> Estraendo la radice quadrata e ricordando che $|i| = 1$:
> $$
> \Delta_u A \cdot \Delta_u B \ge \frac{1}{2} \left| \langle u, i [A, B] u \rangle \right| = \frac{1}{2} \left| \langle u | [A, B] | u \rangle \right| \qquad \blacksquare
> $$

> [!note] Incertezza Nulla e Divergenza Coniugata
> Qualora lo stato quantistico sia un autostato esatto per l'operatore $A$, la dispersione associata si annulla: $\Delta_u A = 0$.
> Dalla relazione di indeterminazione segue che, qualora il valore medio del commutatore non sia nullo, l'incertezza sulla grandezza coniugata $B$ diverge:
> $$
> \Delta_u A = 0 \implies \Delta_u B = +\infty
> $$

> [!definition] Operatori Compatibili (Osservabili Simultanee)
> Due operatori autoaggiunti $A \in \mathcal{L}(D_A, \mathcal{H})$ e $B \in \mathcal{L}(D_B, \mathcal{H})$ si dicono **compatibili** se:
> 1. Il dominio congiunto $D_A \cap D_B$ è denso in $\mathcal{H}$;
> 2. Gli operatori commutano sul loro dominio:
>    $$
>    [A, B] = 0 \qquad \text{su } D_A \cap D_B
>    $$
> In tal caso la disuguaglianza di Heisenberg non pone alcun limite inferiore alla precisione con cui le due grandezze possono essere misurate simultaneamente ($\Delta_u A \cdot \Delta_u B \ge 0$).
>
### Applicazione agli Operatori Quantistici Fondamentali

> [!example] Commutatore Canonico di Posizione e Momento
> Calcoliamo esplicitamente l'azione del commutatore tra le chiusure degli operatori posizione e momento $[\overline{Q}, \overline{P}]$ su una generica funzione di test $u \in \mathcal{S}(\mathbb{R})$:
> $$
> \begin{aligned}
> [\overline{Q}, \overline{P}] u &= \overline{Q}(\overline{P} u) - \overline{P}(\overline{Q} u) \\
> &= x \left( -i \frac{\partial u}{\partial x} \right) - \left( -i \frac{\partial}{\partial x} (x u) \right) \\
> &= -i x \frac{\partial u}{\partial x} + i \left( u + x \frac{\partial u}{\partial x} \right) \\
> &= -i x \frac{\partial u}{\partial x} + i u + i x \frac{\partial u}{\partial x} \\
> &= i u
> \end{aligned}
> $$
> Pertanto sul dominio congiunto vale la celebre **relazione di commutazione canonica**:
> $$
> [\overline{Q}, \overline{P}] = i I
> $$
> Applicando il teorema di Heisenberg, per qualunque stato normalizzato $u$:
> $$
> \Delta_u \overline{Q} \cdot \Delta_u \overline{P} \ge \frac{1}{2} |\langle u | i I | u \rangle| = \frac{1}{2} |i| \langle u, u \rangle = \frac{1}{2}
> $$
> che costituisce l'espressione rigorosa del principio di indeterminazione di Heisenberg per posizione e momento (in unità adimensionali $\hbar = 1$).
>
### Proprietà Algebriche del Commutatore

> [!proposition] Proprietà Strutturali del Commutatore (Algebra di Lie)
> Siano $\widehat{A}, \widehat{B}, \widehat{C}$ operatori lineari con domini appropriati. Il commutatore soddisfa le seguenti identità fondamentali:
> 
> 1. **Bilinearità:**
>    $$
>    [\alpha \widehat{A} + \beta \widehat{B}, \widehat{C}] = \alpha [\widehat{A}, \widehat{C}] + \beta [\widehat{B}, \widehat{C}], \qquad [\widehat{A}, \alpha \widehat{B} + \beta \widehat{C}] = \alpha [\widehat{A}, \widehat{B}] + \beta [\widehat{A}, \widehat{C}]
>    $$
> 2. **Antisimmetria:**
>    $$
>    [\widehat{A}, \widehat{B}] = -[\widehat{B}, \widehat{A}]
>    $$
> 3. **Identità di Jacobi:**
>    $$
>    [\widehat{A}, [\widehat{B}, \widehat{C}]] + [\widehat{B}, [\widehat{C}, \widehat{A}]] + [\widehat{C}, [\widehat{A}, \widehat{B}]] = 0
>    $$
> 4. **Regola di Leibniz (Derivazione):**
>    $$
>    [\widehat{A}, \widehat{B}\widehat{C}] = [\widehat{A}, \widehat{B}] \widehat{C} + \widehat{B} [\widehat{A}, \widehat{C}]
>    $$
>
## 6.16. Spettro e Risolvente degli Operatori Lineari

Come si generalizzano in dimensione infinita i concetti di autovalore, autovettore e il teorema spettrale delle matrici hermitiane?

> [!definition] Spettro e Insieme Risolvente
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore lineare (generalmente non limitato) densamente definito su uno spazio di Hilbert $\mathcal{H}$.
> 
> 1. Si definisce **Insieme Risolvente** di $A$ il sottoinsieme del piano complesso:
>    $$
>    \rho(A) := \left\{ z \in \mathbb{C} : (A - z I) \text{ è biiettivo da } D_A \text{ su } \mathcal{H} \text{ e } (A - z I)^{-1} \in \mathcal{B}(\mathcal{H}) \right\}
>    $$
>    Per ogni $z \in \rho(A)$, l'operatore limitato:
>    $$
>    R_z(A) := (A - z I)^{-1} \in \mathcal{B}(\mathcal{H})
>    $$
>    è detto **Risolvente** di $A$.
> 
> 2. Si definisce **Spettro** di $A$ il complemento dell'insieme risolvente in $\mathbb{C}$:
>    $$
>    \sigma(A) := \mathbb{C} \setminus \rho(A) = \left\{ \lambda \in \mathbb{C} : (A - \lambda I) \text{ NON è invertibile con inverso limitato} \right\}
>    $$

> [!note] Differenza Cruciale tra Dimensione Finita e Infinita
> In dimensione finita ($\mathcal{H} = \mathbb{C}^N$), l'operatore $A - \lambda I$ è rappresentato da una matrice quadrata $N \times N$. Per il teorema del rango-nullità:
> $$
> \det(A - \lambda I) = 0 \iff \mathrm{Ker}(A - \lambda I) \neq \{0\} \iff A - \lambda I \text{ non è iniettivo}
> $$
> In dimensione finita, la mancata invertibilità equivale sempre all'esistenza di autovettori non nulli: l'intero spettro è costituito unicamente da autovalori discreti.
> In dimensione infinita, l'operatore $A - \lambda I$ può essere **iniettivo ma non suriettivo**, oppure può avere immagine densa ma ammettere un inverso **non limitato**. Ne discende una classificazione spettrale più ricca e articolata.
>
### Classificazione dello Spettro: Puntuale, Continuo, Residuo

Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ e sia $\lambda \in \sigma(A)$. Lo spettro si partiziona disgiuntamente in tre classi fondamentali:

> [!definition] Partizione Spettrale
> 
> **1. Spettro Puntuale (Autovalori) $\sigma_p(A)$:**
> L'operatore $A - \lambda I$ **non è iniettivo**:
> $$
> \mathrm{Ker}(A - \lambda I) \neq \{0\} \iff \exists u \in D_A, \, u \neq 0 : A u = \lambda u
> $$
> Il valore $\lambda$ è un **autovalore** e $u$ è il corrispondente **autovettore**. Tale insieme è denotato con:
> $$
> \lambda \in \sigma_p(A) \quad (\text{oppure } \sigma_{pp}(A), \text{ spettro puntuale puro})
> $$
> 
> **2. Spettro Continuo $\sigma_c(A)$:**
> L'operatore $A - \lambda I$ **è iniettivo**, l'immagine $\mathrm{Im}(A - \lambda I)$ **è densa** in $\mathcal{H}$, ma l'inverso $(A - \lambda I)^{-1}$ **non è limitato** (ovvero $A - \lambda I$ non è limitato dal basso):
> $$
> \mathrm{Ker}(A - \lambda I) = \{0\}, \qquad \overline{\mathrm{Im}(A - \lambda I)} = \mathcal{H}, \qquad \mathrm{Im}(A - \lambda I) \neq \mathcal{H}
> $$
> Non essere limitato dal basso significa che:
> $$
> \nexists C > 0 : \|(A - \lambda I) u\| \ge C \|u\| \quad \forall u \in D_A \iff \inf_{\substack{u \in D_A \\ \|u\| = 1}} \|(A - \lambda I) u\| = 0
> $$
> Ciò equivale all'esistenza di una successione di vettori normalizzati $\{u_\varepsilon\}_{\varepsilon > 0} \subset D_A$ ($\|u_\varepsilon\| = 1$) detti **quasi-autovettori** (o successione minimizzante di Weyl) tali che:
> $$
> \|(A - \lambda I) u_\varepsilon\| \xrightarrow{\varepsilon \to 0} 0
> $$
> ovvero:
> $$
> A u_\varepsilon = \lambda u_\varepsilon + R_\varepsilon \qquad \text{con } \|R_\varepsilon\| \le \varepsilon
> $$
> dove $u_\varepsilon$ non ammette alcun limite debole a un autovettore proprio ($u_\varepsilon \not\to u \neq 0$).
> In tal caso si dice che $\lambda$ appartiene allo **spettro continuo**:
> $$
> \lambda \in \sigma_c(A)
> $$
> 
> **3. Spettro Residuo $\sigma_r(A)$:**
> L'operatore $A - \lambda I$ è iniettivo, ma la sua immagine **NON è densa** in $\mathcal{H}$:
> $$
> \mathrm{Ker}(A - \lambda I) = \{0\} \qquad \text{e} \qquad \overline{\mathrm{Im}(A - \lambda I)} \subsetneq \mathcal{H}
> $$
> In tal caso:
> $$
> \lambda \in \sigma_r(A)
> $$

> [!note] Assenza dello Spettro Residuo per Operatori Autoaggiunti
> Se un operatore $A$ è autoaggiunto ($A = A^\dagger$), il suo spettro residuo è rigorosamente vuoto:
> $$
> \sigma_r(A) = \emptyset
> $$
> Infatti vale l'identità fondamentale $\overline{\mathrm{Im}(A - \lambda I)}^\perp = \mathrm{Ker}(A^\dagger - \bar{\lambda} I)$. Poiché per un operatore autoaggiunto gli autovalori sono reali ($\lambda \in \mathbb{R}$) e $A = A^\dagger$, la densità dell'immagine equivale all'iniettività:
> $$
> \mathrm{Ker}(A - \lambda I) = \{0\} \iff \overline{\mathrm{Im}(A - \lambda I)} = \mathcal{H}
> $$
> Pertanto lo spettro di un operatore autoaggiunto si decompone unicamente in spettro puntuale e continuo:
> $$
> \sigma(A) = \sigma_p(A) \cup \sigma_c(A), \qquad \sigma(A) \subset \mathbb{R}
> $$
>
## 6.17. Analisi Spettrale degli Operatori Posizione e Momento

### Spettro dell'Operatore Posizione $\overline{Q}$

> [!example] Spettro Puramente Continuo di $\overline{Q}$
> Si consideri l'operatore posizione autoaggiunto $\overline{Q}$ su $L^2(\mathbb{R})$.
> 
> 1. **Assenza di spettro residuo:**
>    Essendo $\overline{Q}$ autoaggiunto, si ha immediatamente:
>    $$
>    \sigma_r(\overline{Q}) = \emptyset
>    $$
> 
> 2. **Assenza di autovalori (spettro puntuale vuoto):**
>    Cerchiamo eventuali autovettori $u \in D_{\overline{Q}}$ con autovalore $\lambda \in \mathbb{C}$:
>    $$
>    \overline{Q} u(x) = \lambda u(x) \iff x u(x) = \lambda u(x) \iff (x - \lambda) u(x) = 0 \quad \text{q.o.}
>    $$
>    Poiché la funzione $x - \lambda$ si annulla unicamente nel singolo punto isolato $x = \lambda$ (insieme di misura di Lebesgue nulla), deve essere:
>    $$
>    u(x) = 0 \quad \text{q.o. in } \mathbb{R}
>    $$
>    In senso distribuzionale l'unica soluzione sarebbe il delta di Dirac $u(x) = c \, \delta(x - \lambda)$, ma chiaramente $\delta(x - \lambda) \notin L^2(\mathbb{R})$. Ne consegue che non esistono autofunzioni a quadrato sommabile:
>    $$
>    \sigma_p(\overline{Q}) = \emptyset
>    $$
> 
> 3. **Spettro continuo $\sigma_c(\overline{Q}) = \mathbb{R}$ tramite mollificatori:**
>    Possiamo approssimare la distribuzione $\delta(x - \lambda)$ tramite una famiglia di mollificatori lisci normalizzati in $L^2$:
>    Sia $f \in C_0^\infty([-1, 1])$ una funzione test a valori reali normalizzata tale che $\|f\|_2 = 1$. Per ogni $\lambda \in \mathbb{R}$ e ogni $\varepsilon > 0$, definiamo:
>    $$
>    u_{\lambda, \varepsilon}(x) := \frac{1}{\sqrt{\varepsilon}} f\left( \frac{x - \lambda}{\varepsilon} \right)
>    $$
>    Verifichiamo la normalizzazione tramite il cambio di variabile $y = \frac{x - \lambda}{\varepsilon}$ ($dx = \varepsilon dy$):
>    $$
>    \|u_{\lambda, \varepsilon}\|_2^2 = \int_{\lambda - \varepsilon}^{\lambda + \varepsilon} \frac{1}{\varepsilon} f^2\left( \frac{x - \lambda}{\varepsilon} \right) dx = \int_{-1}^1 f^2(y) \, dy = \|f\|_2^2 = 1
>    $$
>    Valutiamo l'azione dell'operatore posizione:
>    $$
>    \overline{Q} u_{\lambda, \varepsilon}(x) = x u_{\lambda, \varepsilon}(x) = \lambda u_{\lambda, \varepsilon}(x) + (x - \lambda) u_{\lambda, \varepsilon}(x) = \lambda u_{\lambda, \varepsilon}(x) + \chi_\varepsilon(x)
>    $$
>    dove il residuo è definito da:
>    $$
>    \chi_\varepsilon(x) := (x - \lambda) u_{\lambda, \varepsilon}(x) = \frac{x - \lambda}{\sqrt{\varepsilon}} f\left( \frac{x - \lambda}{\varepsilon} \right)
>    $$
>    Calcoliamo la norma quadrata del residuo:
>    $$
>    \begin{aligned}
>    \|\chi_\varepsilon\|_2^2 &= \frac{1}{\varepsilon} \int_{\lambda - \varepsilon}^{\lambda + \varepsilon} (x - \lambda)^2 f^2\left( \frac{x - \lambda}{\varepsilon} \right) dx \\
>    &\underset{y = \frac{x - \lambda}{\varepsilon}}{\overset{\downarrow}{=}} \frac{1}{\varepsilon} \int_{-1}^1 (\varepsilon y)^2 f^2(y) (\varepsilon \, dy) \\
>    &= \varepsilon^2 \int_{-1}^1 y^2 f^2(y) \, dy \\
>    &= \varepsilon^2 \|y f(y)\|_2^2 \le C \varepsilon^2 \xrightarrow{\varepsilon \to 0} 0
>    \end{aligned}
>    $$
>    Di conseguenza:
>    $$
>    \|(\overline{Q} - \lambda I) u_{\lambda, \varepsilon}\|_2 = \|\chi_\varepsilon\|_2 = \varepsilon \|y f(y)\|_2 \xrightarrow{\varepsilon \to 0} 0
>    $$
>    La famiglia $\{u_{\lambda, \varepsilon}\}_{\varepsilon > 0}$ costituisce una famiglia esatta di quasi-autovettori per ogni $\lambda \in \mathbb{R}$.
>    Pertanto:
>    $$
>    \sigma(\overline{Q}) = \sigma_c(\overline{Q}) = \mathbb{R}
>    $$
>
### Spettro dell'Operatore Momento $\overline{P}$

> [!example] Spettro Puramente Continuo di $\overline{P}$
> Si consideri l'operatore momento $\overline{P} = -i \frac{d}{dx}$ su $L^2(\mathbb{R})$.
> 
> 1. **Spettro puntuale vuoto:**
>    Abbiamo già dimostrato che l'equazione agli autovalori:
>    $$
>    -i \frac{du}{dx} = \lambda u \iff u(x) = C e^{i \lambda x}
>    $$
>    ammette per $\lambda \in \mathbb{R}$ unicamente onde piane $e^{i \lambda x}$, le quali non appartengono a $L^2(\mathbb{R})$ ($|e^{i \lambda x}| = 1 \implies \int_\mathbb{R} 1 \, dx = +\infty$).
>    Pertanto il nucleo di $\overline{P} - \lambda I$ è banale per ogni $\lambda \in \mathbb{C}$:
>    $$
>    \sigma_p(\overline{P}) = \emptyset
>    $$
> 
> 2. **Assenza di spettro residuo:**
>    Essendo $\overline{P}$ autoaggiunto:
>    $$
>    \sigma_r(\overline{P}) = \emptyset
>    $$
> 
> 3. **Spettro continuo tramite equivalenza unitaria:**
>    Poiché $\overline{P}$ e $\overline{Q}$ sono legati dalla trasformata di Fourier unitaria:
>    $$
>    \overline{P} = \mathcal{F} \overline{Q} \mathcal{F}^{-1}
>    $$
>    e la coniugazione unitaria preserva completamente lo spettro e la sua partizione ($\sigma(U A U^{-1}) = \sigma(A)$ e $\sigma_c(U A U^{-1}) = \sigma_c(A)$), si conclude immediatamente:
>    $$
>    \sigma(\overline{P}) = \sigma_c(\overline{P}) = \mathbb{R}
>    $$
>
Alternativamente, per via diretta tramite pacchetti d'onda (successioni di Weyl), si mostra che scegliendo:
$$
u_{\lambda, \varepsilon}(x) = \frac{1}{\sqrt{\varepsilon}} f\left(\frac{x}{\varepsilon}\right) e^{i\lambda x}
$$
si ottiene $\sigma(\overline{P}) = \sigma_c(\overline{P}) = \mathbb{R}$.

## 6.18. Proprietà dello Spettro e Raggio Spettrale

> [!proposition] Esistenza e Chiusura dello Spettro per Operatori Limitati
> Sia $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ un operatore limitato. Allora lo spettro non è vuoto:
> $$
> \sigma(A) \neq \emptyset
> $$
> In particolare, $\sigma(A)$ è un insieme chiuso in $\mathbb{C}$.

> [!definition] Raggio Spettrale
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$. Si definisce **raggio spettrale** di $A$ la quantità:
> $$
> r(A) := \sup_{\lambda \in \sigma(A)} |\lambda|
> $$

> [!proposition] Formula del Raggio Spettrale di Gelfand
> Sia $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$. Allora vale la formula di Gelfand per il raggio spettrale:
> $$
> r(A) = \lim_{n \to +\infty} \|A^n\|^{\frac{1}{n}}
> $$
> In particolare, se $A$ è un operatore autoaggiunto, si ha:
> $$
> r(A) = \|A\|
> $$
>
### Identità del Risolvente e Operatori Autoaggiunti

> [!proposition] Identità del Risolvente
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ e siano $z, z' \in \rho(A)$.
> 1. **Prima identità del risolvente:**
>    $$
>    (A - z)^{-1} - (A - z')^{-1} = (z - z')(A - z)^{-1}(A - z')^{-1}
>    $$
> 2. **Seconda identità del risolvente (teoria delle perturbazioni):**
>    Se inoltre $A$ è autoaggiunto, $B \in \mathcal{L}(D_B, \mathcal{H})$ è simmetrico e costituisce una piccola perturbazione per $A$, e $z \in \rho(A) \cap \rho(A + B)$:
>    $$
>    (A + B - z)^{-1} = (A - z)^{-1} - (A - z)^{-1} B (A + B - z)^{-1}
>    $$
>
Alcuni risultati più specifici si ottengono per operatori autoaggiunti.

> [!proposition] Proprietà Spettrali degli Operatori Autoaggiunti
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Allora:
> 1. Lo spettro è interamente reale:
>    $$
>    \sigma(A) \subseteq \mathbb{R}
>    $$
> 2. Lo spettro residuo è vuoto:
>    $$
>    \sigma_R(A) = \emptyset
>    $$
> 3. Autovettori relativi ad autovalori distinti sono ortogonali tra loro.

> [!quote]- Dimostrazione
> **Punto 1:**
> In un'osservazione svolta in precedenza avevamo dimostrato che se $A$ è autoaggiunto, allora l'operatore $(A - z)$ è invertibile con inverso limitato per ogni $z \in \mathbb{C} \setminus \mathbb{R}$. Di conseguenza, il risolvente $\rho(A)$ contiene $\mathbb{C} \setminus \mathbb{R}$, il che implica immediatamente:
> $$
> \sigma(A) \subseteq \mathbb{R}
> $$
> 
> **Punto 3:**
> Siano $\lambda, \mu \in \sigma_{pp}(A)$ con $\lambda \neq \mu$, e siano $u_\lambda, u_\mu$ i rispettivi autovettori non nulli ($A u_\lambda = \lambda u_\lambda$, $A u_\mu = \mu u_\mu$). Poiché $A$ è autoaggiunto (e gli autovalori sono reali, $\lambda^* = \lambda$):
> $$
> \lambda \langle u_\lambda, u_\mu \rangle = \langle \lambda u_\lambda, u_\mu \rangle = \langle A u_\lambda, u_\mu \rangle = \langle u_\lambda, A u_\mu \rangle = \langle u_\lambda, \mu u_\mu \rangle = \mu \langle u_\lambda, u_\mu \rangle
> $$
> Portando tutto a primo membro si ottiene:
> $$
> (\lambda - \mu) \langle u_\lambda, u_\mu \rangle = 0
> $$
> Essendo per ipotesi $\lambda \neq \mu$ ($\lambda - \mu \neq 0$), ne segue necessariamente:
> $$
> \langle u_\lambda, u_\mu \rangle = 0 \qquad \blacksquare
> $$
>
### Criterio di Weyl

Un metodo rapido per stabilire se $\lambda \in \sigma(A)$ per operatori autoaggiunti è fornito dal seguente criterio.

> [!theorem] Teorema di Weyl (Criterio delle Successioni Quasi-Proprie)
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Allora:
> $$
> \lambda \in \sigma(A) \iff \exists \{u_n\}_{n \in \mathbb{N}} \subset D_A, \; \|u_n\| = 1 \quad \text{tale che} \quad \|(A - \lambda) u_n\| \xrightarrow{n \to +\infty} 0
> $$

> [!note] Successione di Weyl
> Tale successione normalizzata $\{u_n\}_{n \in \mathbb{N}} \subset D_A$ è detta **successione di Weyl** per l'operatore $A$ relativa al valore spettrale $\lambda$.
>
## 6.19. Equivalenza Unitaria e Diagonalizzazione

> [!note] Invarianza dello Spettro per Similitudine
> In algebra lineare, due matrici simili $A$ e $\tilde{A}$, legate dalla relazione $A = S^{-1} \tilde{A} S$, posseggono esattamente lo stesso spettro. Vale un teorema perfettamente equivalente per operatori lineari in spazi di dimensione infinita.

> [!theorem] Invarianza dello Spettro sotto Trasformazioni Unitarie
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ e sia $U \in \mathcal{L}(\mathcal{H}, \mathcal{H}')$ un operatore unitario ($U^* U = I_\mathcal{H}$, $U U^* = I_{H'}$). Se definiamo:
> $$
> A' := U A U^{-1}
> $$
> con dominio $D_{A'} = U(D_A)$, allora gli spettri coincidono:
> $$
> \sigma(A') = \sigma(A)
> $$

> [!note] Diagonalizzazione in Spazi di Hilbert
> Questo risultato permette, in molte circostanze concrete, di determinare agevolmente lo spettro di un operatore differenziale o integrale.
> Se si conosce un sistema ortonormale completo di autovettori $\{u_n\}_{n \in \mathbb{N}} \subset \mathcal{H}$ per l'operatore $A$, allora l'operatore unitario associato è la trasformata generalizzata di Fourier:
> $$
> U v = \{\langle u_n, v \rangle\}_{n \in \mathbb{N}} \in \ell_2
> $$
> in virtù dell'identità di Bessel-Parseval. Siccome un operatore che agisce diagonalmente su $\ell_2$ rappresenta una "matrice infinita diagonale", ciò che il teorema fornisce è la possibilità concreta di **diagonalizzare** operatori in spazi infinito-dimensionali.

> [!proposition] Spettro di Operatori Autoaggiunti con Base Ortonormale di Autovettori
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Se esiste un sistema ortonormale completo $\{u_n\}_{n \in \mathbb{N}} \subset D_A$ costituito da autovettori di $A$:
> $$
> A u_n = \lambda_n u_n \quad \forall n \in \mathbb{N}
> $$
> allora lo spettro di $A$ coincide con la chiusura dell'insieme degli autovalori:
> $$
> \sigma(A) = \overline{\{\lambda_n\}_{n \in \mathbb{N}}}
> $$

> [!quote]- Dimostrazione
> Poiché $\{u_n\}_{n \in \mathbb{N}}$ costituisce una base hilbertiana completa per $\mathcal{H}$, per ogni vettore $v \in \mathcal{H}$ esiste un'unica successione di coefficienti Fourier $\{\alpha_n\}_{n \in \mathbb{N}} \in \ell_2$ tale che:
> $$
> v = \sum_{n \in \mathbb{N}} \alpha_n u_n
> $$
> Applicando l'operatore $A$ sul suo dominio:
> $$
> A v = \sum_{n \in \mathbb{N}} \alpha_n A u_n = \sum_{n \in \mathbb{N}} \alpha_n \lambda_n u_n
> $$
> Pertanto, tramite l'isometria unitaria di Fourier $U: \mathcal{H} \to \ell_2$ definita da $U v = (\alpha_n)_{n \in \mathbb{N}}$, l'operatore $A$ è unitariamente equivalente all'operatore di moltiplicazione per la successione $\{\lambda_n\}$ in $\ell_2$:
> $$
> U A U^{-1} x = (\lambda_n x_n)_{n \in \mathbb{N}} \quad \forall x = (x_n)_{n \in \mathbb{N}} \in \ell_2
> $$
> Di conseguenza, l'operatore $(A - \lambda)$ non è invertibile con inverso limitato se e solo se $\lambda$ appartiene all'aderenza dell'insieme dei valori moltiplicativi:
> $$
> (A - \lambda) \text{ non è invertibile} \iff \lambda \in \overline{\{\lambda_n\}_{n \in \mathbb{N}}} \qquad \blacksquare
> $$
>
### Esempio: Operatore Laplaciano con Condizioni di Neumann

> [!example] Spettro del Laplaciano 1D con Condizioni al Contorno di Neumann
> Si consideri l'operatore laplaciano monodimensionale $H_N = -\nabla^2 = -\frac{d^2}{dx^2}$ sull'intervallo $(0, \pi)$, con dominio specificato dalle condizioni omogenee di Neumann:
> $$
> D_{H_N} = \left\{ u \in H^2((0, \pi)) : u'(0) = 0, \; u'(\pi) = 0 \right\}
> $$
> È noto che la famiglia di funzioni cosinusoidali normalizzate:
> $$
> \left\{ \sqrt{\frac{2}{\pi}} \cos(nx) \right\}_{n \in \mathbb{N}}
> $$
> costituisce un sistema ortonormale in $L^2((0, \pi))$ formato da elementi appartenenti a $D_{H_N}$, tali che:
> $$
> H_N \left( \sqrt{\frac{2}{\pi}} \cos(nx) \right) = -\nabla^2 \left( \sqrt{\frac{2}{\pi}} \cos(nx) \right) = n^2 \left( \sqrt{\frac{2}{\pi}} \cos(nx) \right)
> $$
> Dunque le funzioni $\sqrt{\frac{2}{\pi}} \cos(nx)$ sono autovettori di $H_N$ con corrispondenti autovalori:
> $$
> \lambda_n = n^2, \quad n \in \mathbb{N}
> $$
> Essendo la famiglia $\{u_n\}_{n \in \mathbb{N}}$ un sistema ortonormale completo per $L^2((0, \pi))$, per la proposizione precedente lo spettro di $H_N$ coincide con quello dell'operatore trasformato unitariamente $H_N'$ agente su $\ell_2$:
> $$
> (x_1, \dots, x_n, \dots) \in \ell_2 \xmapsto{U^{-1}} \sum_{n \in \mathbb{N}} x_n \sqrt{\frac{2}{\pi}} \cos(nx)
> \xmapsto{H_N} \sum_{n \in \mathbb{N}} n^2 x_n \sqrt{\frac{2}{\pi}} \cos(nx) \xmapsto{U} (n^2 x_n)_{n \in \mathbb{N}}
> $$
> Ne consegue che lo spettro è puramente puntuale discreto:
> $$
> \sigma(H_N) = \sigma_{pp}(H_N) = \{n^2 : n \in \mathbb{N}\}
> $$
>

# 7. Il Teorema Spettrale

Il Teorema Spettrale (o meglio, una delle sue formulazioni fondamentali) giustifica rigorosamente dal punto di vista matematico qualsiasi "operazione funzionale" con gli operatori lineari (derivazione, esponenziazione, calcolo di funzioni analitiche e boreliane). 
Questo risultato si ottiene dimostrando che ogni operatore autoaggiunto può essere rappresentato canonicamente mediante **operatori di moltiplicazione** $M_f$ agenti su un opportuno spazio $L^2$.

## 7.1. Operatori di Moltiplicazione e Calcolo Funzionale Continuo

Si consideri l'operatore di moltiplicazione $M_f : L^2(\mathbb{R}^n) \to L^2(\mathbb{R}^n)$ associato a una funzione $f \in C^0(\mathbb{R}^n) \cap L^\infty(\mathbb{R}^n)$, definito da:
$$
M_f u = f u \quad \forall u \in L^2(\mathbb{R}^n)
$$
Poiché la norma operatoriale soddisfa:
$$
\|M_f\| = \|f\|_\infty < +\infty
$$
l'operatore $M_f$ è limitato.
Se la funzione $f$ è a valori reali ($f(x) \in \mathbb{R}$ per quasi ogni $x$), allora l'operatore $M_f$ è anche autoaggiunto su $L^2(\mathbb{R}^n)$.

Per ogni intero $k \in \mathbb{N}$, possiamo definire la potenza $k$-esima dell'operatore:
$$
M_f^k := M_{f^k}
$$
Per ogni $k \in \mathbb{N}$, tali operatori $M_f^k$ sono limitati e autoaggiunti.

Dalle potenze intere è immediato passare ai polinomi. Sia dato un polinomio generico a coefficienti reali:
$$
P(x) = \sum_{k=1}^N a_k x^k, \quad a_k \in \mathbb{R}
$$
Si definisce allora l'operatore polinomiale:
$$
P(M_f) := M_{P(f)}
$$
Vale la fondamentale identità per ogni funzione $u \in L^2(\mathbb{R}^n)$:
$$
\langle u | P(M_f) | u \rangle = \int_{\mathbb{R}^n} u^*(\mathbf{x}) \, P(M_f) u(\mathbf{x}) \, d\mathbf{x} = \int_{\mathbb{R}^n} P(f(\mathbf{x})) \, |u(\mathbf{x})|^2 \, d\mathbf{x} = \langle u | M_{P(f)} | u \rangle
$$

### Misure Spettrali Associate agli Operatori di Moltiplicazione

> [!definition] Misura Spettrale di un Operatore di Moltiplicazione
> Si definisce la **misura spettrale** associata all'operatore di moltiplicazione $M_f$ e allo stato normalizzato $u \in L^2(\mathbb{R}^n)$ la misura differenziale:
> $$
> d\mu_u(\mathbf{x}) := |u(\mathbf{x})|^2 \, d\mathbf{x}
> $$

> [!proposition] Misura di Probabilità Indotta dallo Stato $u$
> Sia $\mathcal{M}$ la $\sigma$-algebra degli insiemi Lebesgue-misurabili di $\mathbb{R}^n$. Allora per ogni $u \in L^2(\mathbb{R}^n)$ normalizzata ($\|u\|_2 = 1$), esiste un'unica misura positiva di probabilità $\mu_u : \mathcal{M} \to [0, 1]$ data da:
> $$
> \mu_u(A) = \int_A |u(\mathbf{x})|^2 \, d\mathbf{x}
> $$
>
La dimostrazione discende direttamente dalle proprietà della misura di Lebesgue standard. Si osservi in particolare la condizione di normalizzazione:
$$
\mu_u(\mathbb{R}^n) = \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x} = \|u\|_2^2 = 1
$$

> [!note] Interpretazione Statistica e Spettro di $M_f$
> La costruzione ha un risvolto probabilistico e quantistico fondamentale:
> L'operatore $M_f$ e i suoi polinomi $P(M_f)$ si comportano come funzioni della variabile aleatoria $\mathbf{x}$, la quale possiede densità di probabilità data da $|u(\mathbf{x})|^2$.
> Pertanto, il valore di aspettazione (media quantistica/statistica) coincide con l'integrale rispetto alla misura indotta:
> $$
> \langle M_f \rangle = \langle u | M_f | u \rangle = \int_{\mathbb{R}^n} f(\mathbf{x}) \, d\mu_u(\mathbf{x})
> $$
> Inoltre vale la caratterizzazione dello spettro:
> $$
> \sigma(M_f) = \overline{\mathrm{Im}(f)}
> $$
> Infatti:
> $$
> \lambda \in \sigma(M_f) \iff (f - \lambda) \text{ non è invertibile in } L^\infty \iff \forall \varepsilon > 0, \; \exists \mathbf{x} \in \mathbb{R}^n : |f(\mathbf{x}) - \lambda| < \varepsilon
> $$

> [!note] Probabilità su Sottoinsiemi dello Spettro
> Sia $I \subseteq \mathrm{Im}(f)$ un intervallo o boreliano dello spettro. Allora la probabilità che l'osservabile associata a $M_f$ assuma valori in $I$ è:
> $$
> \mathbb{P}\{M_f \in I\} = \int_{f^{-1}(I)} |u(\mathbf{x})|^2 \, d\mathbf{x}
> $$
> ovvero occorre integrare la densità di probabilità $|u|^2$ sulla controimmagine $f^{-1}(I)$.
>
## 7.2. Convergenza di Operatori e Proiettori Spettrali

Si dimostra (tramite il teorema di approssimazione di Weierstrass/Stone-Weierstrass) che i polinomi formano un sottospazio denso nello spazio delle funzioni continue dotate della topologia della convergenza uniforme sui compatti. 
Grazie a questo fatto, è possibile estendere la definizione dell'operatore $P(M_f)$ a qualsiasi funzione continua $G \in C^0(\mathbb{R})$:
$$
\forall G \in C^0(\mathbb{R}), \; \exists \{P_n(x)\}_{n \in \mathbb{N}} \subset \mathbb{R}[x] \quad \text{tale che} \quad \sup_{\mathbb{R}} |G(x) - P_n(x)| \xrightarrow{n \to +\infty} 0
$$
ovvero $P_n(x) \to G(x)$ uniformemente su $\mathbb{R}$.

Per poter affermare rigorosamente che la successione di operatori $P_n(M_f)$ converge all'operatore $G(M_f)$, è necessario specificare la nozione di convergenza nello spazio degli operatori.

> [!definition] Convergenza in Norma Operatoriale
> Sia $\{A_n\}_{n \in \mathbb{N}} \subset \mathcal{L}(\mathcal{H}, \mathcal{H})$. Si dice che la successione $A_n$ converge ad $A$ **in norma operatoriale** (o convergenza uniforme di operatori):
> $$
> A_n \xrightarrow{n \to +\infty} A \quad \text{in norma} \iff \|A_n - A\|_{\mathcal{L}(\mathcal{H}, \mathcal{H})} \xrightarrow{n \to +\infty} 0
> $$

> [!lemma] Convergenza Uniforme di Polinomi di Operatori
> Siano $G \in C^0(\mathbb{R})$ e $\{P_n\}_{n \in \mathbb{N}} \subset C^\infty(\mathbb{R})$ una successione di polinomi tali che $P_n \to G$ uniformemente su $\mathbb{R}$. Allora la successione di operatori:
> $$
> \{P_n(M_f)\}_{n \in \mathbb{N}} \subset \mathcal{L}(\mathcal{H}, \mathcal{H})
> $$
> è una successione di Cauchy in $\mathcal{L}(\mathcal{H}, \mathcal{H})$ rispetto alla norma operatoriale.

> [!quote]- Dimostrazione
> Siano $n, m \in \mathbb{N}$. Valutando la norma operatoriale della differenza al quadrato:
> $$
> \|P_n(M_f) - P_m(M_f)\|^2 = \sup_{u \in \mathcal{H}, \, \|u\|=1} \|(P_n(M_f) - P_m(M_f))u\|_2^2
> $$
> Esplicitando la definizione dell'operatore di moltiplicazione:
> $$
> = \sup_{u \in \mathcal{H}, \, \|u\|=1} \int_{\mathbb{R}^n} |P_n(f)(\mathbf{x}) - P_m(f)(\mathbf{x})|^2 |u(\mathbf{x})|^2 \, d\mathbf{x}
> $$
> Maggiorando puntualmente il modulo quadro della differenza con il suo estremo superiore:
> $$
> \le \sup_{\mathbf{x} \in \mathbb{R}^n} |P_n(f(\mathbf{x})) - P_m(f(\mathbf{x}))|^2 \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x}
> $$
> Poiché $\|u\|_2 = 1$ e la successione di polinomi $P_n$ converge uniformemente su $\mathbb{R}$ (quindi soddisfa il criterio di Cauchy uniforme):
> $$
> \le \sup_{y \in \mathbb{R}} |P_n(y) - P_m(y)|^2 \xrightarrow{n, m \to +\infty} 0 \qquad \blacksquare
> $$

> [!theorem] Completezza di $\mathcal{L}(\mathcal{H}, \mathcal{H})$
> Lo spazio degli operatori lineari e limitati $\mathcal{L}(\mathcal{H}, \mathcal{H})$ su uno spazio di Hilbert $\mathcal{H}$ è uno spazio di Banach, ovvero è **completo** rispetto alla topologia indotta dalla norma operatoriale $\|\cdot\|_{\mathcal{L}(\mathcal{H}, \mathcal{H})}$.
>
Di conseguenza, il limite in norma operatoriale esiste sempre in $\mathcal{L}(\mathcal{H}, \mathcal{H})$:
$$
P_n(M_f) \xrightarrow{n \to +\infty} G(M_f) \quad \text{in norma}
$$

È necessario richiedere che la funzione $G$ sia continua ($G \in C^0(\mathbb{R})$)? 
In realtà no: è sufficiente che $G \in L^\infty(\mathbb{R})$.
Infatti, è possibile costruire una successione di funzioni continue $\{G_n\}_{n \in \mathbb{N}} \subset C^0(\mathbb{R}) \cap L^\infty(\mathbb{R})$ tale che $G_n \to G$ puntualmente quasi ovunque. Tuttavia, per funzioni discontinue la convergenza in norma operatoriale risulta una richiesta eccessivamente restrittiva, rendendo necessario introdurre topologie di convergenza più deboli.

### Topologie Forte e Debole per Operatori

> [!definition] Convergenza Forte e Debole di Operatori
> Sia $\{A_n\}_{n \in \mathbb{N}} \subset \mathcal{L}(\mathcal{H}, \mathcal{H})$ una successione di operatori lineari limitati. Si definiscono:
> 1. **Convergenza forte:**
>    $$
>    A_n \xrightarrow[n \to +\infty]{s} A \iff \|(A - A_n) u\|_\mathcal{H} \xrightarrow{n \to +\infty} 0 \quad \forall u \in \mathcal{H}
>    $$
> 2. **Convergenza debole:**
>    $$
>    A_n \xrightarrow[n \to +\infty]{w} A \iff \langle v, (A - A_n) u \rangle \xrightarrow{n \to +\infty} 0 \quad \forall u, v \in \mathcal{H}
>    $$

> [!note] Gerarchia delle Convergenze e Funzioni Limitate
> Si dimostra che per ogni funzione limitata e misurabile $G \in L^\infty(\mathbb{R})$, esiste una successione di funzioni continue limitate $\{G_n\} \subset C^0(\mathbb{R}) \cap L^\infty(\mathbb{R})$ tali che:
> $$
> G_n(M_f) \xrightarrow[n \to +\infty]{s} G(M_f)
> $$
> In questo modo, mediante la convergenza forte, è possibile costruire il calcolo funzionale per virtualmente ogni funzione limitata $G \in L^\infty(\mathbb{R})$.
> Vale inoltre la catena di implicazioni:
> $$
> \text{Convergenza in norma} \implies \text{Convergenza forte} \implies \text{Convergenza debole}
> $$
>
### Proiettori Spettrali

Un esempio di fondamentale importanza applicativa di funzioni discontinue di operatori $M_f$ è costituito dalle **funzioni caratteristiche** di intervalli.

> [!definition] Proiettore Spettrale su Intervalli
> Sia $(a, b) \subseteq \sigma(M_f)$ un intervallo aperto. Si definisce **proiettore spettrale** $E_{M_f}(a, b)$ associato all'intervallo $(a, b)$ l'operatore ottenuto applicando la funzione caratteristica $\chi_{(a, b)}$ all'operatore $M_f$:
> $$
> E_{M_f}(a, b) := \chi_{(a, b)}(M_f)
> $$
> la cui azione su una generica funzione $u \in L^2(\mathbb{R}^n)$ è data da:
> $$
> \chi_{(a, b)}(M_f) u(\mathbf{x}) = \chi_{f^{-1}(a, b)}(\mathbf{x}) \, u(\mathbf{x})
> $$

> [!proposition] Proprietà del Proiettore Spettrale
> L'operatore $E_{M_f}(a, b)$ è un proiettore ortogonale su $L^2(\mathbb{R}^n)$.

> [!quote]- Dimostrazione
> Per dimostrare che $E_{M_f}(a, b)$ è un proiettore ortogonale, occorre verificare che sia limitato, autoaggiunto e idempotente:
> 
> **1. Limitatezza:**
> $$
> \|E_{M_f}(a, b) u\|_2^2 = \int_{\mathbb{R}^n} \chi_{f^{-1}(a, b)}(\mathbf{x}) |u(\mathbf{x})|^2 \, d\mathbf{x} \le \int_{\mathbb{R}^n} |u(\mathbf{x})|^2 \, d\mathbf{x} = \|u\|_2^2
> $$
> Ne segue che $\|E_{M_f}\| \le 1 < +\infty$.
> 
> **2. Autoaggiuntezza:**
> $E_{M_f}(a, b)$ coincide con l'operatore di moltiplicazione per la funzione caratteristica reale limitata $\chi_{f^{-1}(a, b)}(\mathbf{x})$. Essendo la funzione a valori reali, l'operatore di moltiplicazione associato è autoaggiunto:
> $$
> E_{M_f}(a, b)^* = E_{M_f}(a, b)
> $$
> 
> **3. Idempotenza:**
> Poiché per ogni funzione caratteristica vale $\chi^2 = \chi$:
> $$
> E_{M_f}^2 u = E_{M_f} \left( \chi_{f^{-1}(a, b)} u \right) = \chi_{f^{-1}(a, b)}^2 u = \chi_{f^{-1}(a, b)} u = E_{M_f} u
> $$
> Dunque $E_{M_f}^2 = E_{M_f}$. Essendo simmetrico e idempotente, è un proiettore ortogonale. $\blacksquare$
>
## 7.3. Misure Spettrali e Teoria di Lebesgue-Stieltjes

Fissiamo la seguente notazione per ogni $\lambda \in \mathbb{R}$:
$$
E(\lambda) := E_{M_f}(-\infty, \lambda)
$$

> [!note] Famiglia ad un Parametro di Proiettori
> Al variare del parametro continuo $\lambda \in \mathbb{R}$, l'insieme ordinato $\{E(\lambda)\}_{\lambda \in \mathbb{R}}$ rappresenta una famiglia ad un parametro di proiettori ortogonali.

> [!definition] Famiglia Spettrale (Risoluzione dell'Identità)
> Si definisce **famiglia spettrale** (o risoluzione dell'identità) una collezione ad un parametro di proiettori ortogonali $\{E(\lambda)\}_{\lambda \in \mathbb{R}}$ su uno spazio di Hilbert $\mathcal{H}$ tale che, per ogni vettore normalizzato $u \in \mathcal{H}$ ($\|u\| = 1$), siano verificate le seguenti tre proprietà:
> 1. **Condizioni asintotiche:**
>    $$
>    \lim_{\lambda \to -\infty} E(\lambda) u = 0, \qquad \lim_{\lambda \to +\infty} E(\lambda) u = u
>    $$
> 2. **Monotonia:**
>    $$
>    \lambda \le \mu \implies E(\lambda) \le E(\mu) \quad (\text{ovvero } \mathrm{Ran} E(\lambda) \subseteq \mathrm{Ran} E(\mu))
>    $$
> 3. **Continuità forte da destra:**
>    $$
>    \lim_{\varepsilon \to 0^+} E(\lambda + \varepsilon) u = E(\lambda) u \quad \forall \lambda \in \mathbb{R}
>    $$
>    cioè la mappa $\lambda \mapsto E(\lambda)$ è fortemente continua da destra in ogni punto.
>
Questa è una formulazione assiomatica generale che trascende il caso specifico degli operatori di moltiplicazione e si applica ad operatori autoaggiunti arbitrari.

### Teorema di Lebesgue-Stieltjes

Per cogliere appieno il significato matematico e probabilistico delle famiglie spettrali, richiamiamo un risultato cardine della teoria della misura e della probabilità.

> [!theorem] Teorema di Esistenza delle Misure di Lebesgue-Stieltjes
> Sia $F : \mathbb{R} \to \mathbb{R}$ una funzione reale soddisfacente le seguenti proprietà:
> - **Monotonia:** $F$ è monotona non decrescente, ossia:
>   $$
>   F(x) \le F(y) \quad \forall y \ge x
>   $$
> - **Continuità da destra:**
>   $$
>   \lim_{\varepsilon \to 0^+} F(x + \varepsilon) = F(x) \quad \forall x \in \mathbb{R}
>   $$
> Allora esiste un'unica misura positiva $\nu_F$ definita sullo spazio misurabile boreliano $(\mathbb{R}, \mathcal{B})$ tale che, per ogni intervallo semiaperto $(a, b] \subset \mathbb{R}$, valga:
> $$
> \nu_F((a, b]) = F(b) - F(a)
> $$
> Tale misura $\nu_F$ è denominata **misura di Lebesgue-Stieltjes** generata da $F$.

> [!note] Relazione con la Misura di Lebesgue Standard
> La differenza fondamentale con la consueta misura di Lebesgue risiede nel fatto che per quest'ultima la misura dell'intervallo è data semplicemente dalla lunghezza euclidea:
> $$
> |(a, b]| = b - a
> $$
> Pertanto la misura di Lebesgue standard rappresenta il caso particolare della misura di Lebesgue-Stieltjes generata dalla funzione identità:
> $$
> F(x) = x
> $$
>
### Costruzione della Misura Spettrale per Operatori

> [!note] Costruzione della Misura Spettrale tramite Lebesgue-Stieltjes
> Fissato un vettore di stato $u \in L^2(\mathbb{R}^n)$ con $\|u\| = 1$, al variare del parametro spettrale $\lambda \in \mathbb{R}$ la funzione a valori reali:
> $$
> \lambda \longmapsto \langle u | E(\lambda) | u \rangle
> $$
> è monotona non decrescente e continua da destra, rispettando tutte le ipotesi del teorema di Lebesgue-Stieltjes.
> Pertanto, esiste un'unica misura di Borel $\nu_u$ su $(\mathbb{R}, \mathcal{B})$ tale che per ogni intervallo $(a, b] \subset \mathbb{R}$:
> $$
> \nu_u((a, b]) = \langle u | E(b) | u \rangle - \langle u | E(a) | u \rangle
> $$

> [!definition] Misura Spettrale Scalare
> Tale misura $\nu_u$ è detta **misura spettrale** relativa alla famiglia di proiettori $\{E(\lambda)\}_{\lambda \in \mathbb{R}}$ e al vettore $u \in L^2(\mathbb{R}^n)$ (con $\|u\| = 1$), e si denota formalmente con l'elemento di misura:
> $$
> d\nu_u(\lambda) := d\langle u | E(\lambda) | u \rangle
> $$

> [!note] Supporto della Misura Spettrale e Cambio di Variabile
> Si noti che se un insieme $I \in \mathcal{B}$ non interseca lo spettro dell'operatore moltiplicativo, $I \cap \sigma(M_f) = \emptyset$, allora la sua controimmagine è vuota $f^{-1}(I) = \emptyset$, da cui:
> $$
> \nu_u(I) = 0 \implies \mathrm{supp}(\nu_u) \subseteq \sigma(M_f)
> $$
> La misura spettrale $\nu_u$ realizza un rigoroso "cambio di variabile" rispetto alla misura Lebesgue originaria nello spazio fisico:
> $$
> \underbrace{\int_{f^{-1}(a, b)} |u(\mathbf{x})|^2 \, d\mathbf{x}}_{\text{integrazione sul dominio fisico di } f} \quad \xleftrightarrow[\lambda = f(\mathbf{x})]{} \quad \underbrace{\int_a^b d\nu_u(\lambda)}_{\text{integrazione sullo spettro dell'operatore}}
> $$
>
### Connessione con la Statistica e Misura Spettrale Complessa

> [!note] Connessione con la Teoria della Probabilità
> Il formalismo spettrale si mappa esattamente nei concetti fondanti del calcolo delle probabilità:
> - **Funzione di ripartizione (CDF):**
>   $$
>   F_u(\lambda) := \langle u | E(\lambda) | u \rangle
>   $$
> - **Funzione densità di probabilità (PDF):**
>   $$
>   d\nu_u = dF_u(\lambda)
>   $$
>   interpretata come:
>   - densità in senso classico se $F_u$ è assolutamente continua (AC):
>     $$
>     d\nu_u(\lambda) = F_u'(\lambda) \, d\lambda
>     $$
>   - densità nel senso delle distribuzioni (misure con masse concentrate / delta di Dirac) altrimenti.
>
> Esattamente come accade in statistica, esiste sempre una funzione densità cumulata, che può essere continua, singolare, oppure a salti (spettro discreto).

> [!note] Misura Spettrale Complessa tramite Identità di Polarizzazione
> Poiché per un singolo vettore $u$ vale:
> $$
> d\nu_u(\lambda) = \|E(\lambda) u\|^2 = \langle u | E(\lambda) | u \rangle
> $$
> dati due vettori distinti $u, v \in \mathcal{H}$ possiamo definire la **misura spettrale complessa**:
> $$
> d\nu_{u, v}(\lambda) := d\langle u | E(\lambda) | v \rangle
> $$
> Tale misura è ottenuta formalmente mediante l'identità di polarizzazione (identità del parallelogramma in forma complessa):
> $$
> \nu_{u, v}(\lambda) := \frac{1}{4} \nu_{u+v}(\lambda) - \frac{1}{4} \nu_{u-v}(\lambda) + \frac{i}{4} \nu_{u-iv}(\lambda) - \frac{i}{4} \nu_{u+iv}(\lambda)
> $$
> Questo consente di esprimere gli elementi di matrice di $M_f$ mediante un integrale spettrale:
> $$
> \langle u | M_f | v \rangle = \int_{\sigma(M_f)} \lambda \, d\nu_{u, v}(\lambda)
> $$
> e più in generale, per qualsiasi funzione limitata e misurabile $G \in L^\infty(\mathbb{R})$:
> $$
> \langle u | G(M_f) | v \rangle = \int_{\sigma(M_f)} G(\lambda) \, d\nu_{u, v}(\lambda)
> $$
>
## 7.4. Rappresentazione Spettrale e Isomorfismo con Spazi $L^2$

> [!definition] Spazio di Hilbert Spettrale $L^2(\sigma(M_f), d\nu_u)$
> Per ogni misura spettrale $d\nu_u(\lambda)$, si definisce lo spazio di Hilbert pesato sullo spettro:
> $$
> L^2(\sigma(M_f), d\nu_u) := \left\{ v : \sigma(M_f) \to \mathbb{C} : \int_{\sigma(M_f)} |v(\lambda)|^2 \, d\nu_u(\lambda) < +\infty \right\}
> $$
> munito del prodotto scalare standard:
> $$
> \langle u, v \rangle_{L^2} := \int_{\sigma(M_f)} u^*(\lambda) \, v(\lambda) \, d\nu_u(\lambda)
> $$
>
Grazie alla misura spettrale, è possibile mappare isometricamente lo spazio di Hilbert originario $\mathcal{H}$ in uno spazio di funzioni a quadrato integrabile sullo spettro $L^2(\sigma(M_f), \nu_u)$.

> [!note] Isomorfismo Spettrale per un Singolo Vettore Ciclico
> Fissato $u_0 \in \mathcal{H}$ con $\|u_0\| = 1$, consideriamo il sottospazio chiuso generato dall'azione dei polinomi dell'operatore $M_f$ su $u_0$ (sottospazio ciclico):
> $$
> H_0 := \overline{\mathrm{Span}\{M_f^k u_0\}_{k \in \mathbb{N}}} = \overline{P(M_f) u_0}
> $$
> Un elemento generico $v \in H_0$ è caratterizzato dalla proprietà:
> $$
> v \in H_0 \iff \exists G \in C^0(\mathbb{R}) \cap L^\infty(\mathbb{R}) : v = G(M_f) u_0
> $$
> A tale vettore $v \in H_0$ associamo biunivocamente la funzione spettrale $G(\lambda) \in L^2(\sigma(M_f), \nu_u)$:
> $$
> G(M_f) u_0(\mathbf{x}) \longleftrightarrow G(\lambda)
> $$
> Questa corrispondenza preserva il prodotto scalare. Siano infatti $v_1, v_2 \in H_0$, con $v_1 = G_1(M_f) u_0$ e $v_2 = G_2(M_f) u_0$:
> $$
> \begin{align}
> \langle v_1, v_2 \rangle &= \langle G_1(M_f) u_0, G_2(M_f) u_0 \rangle \\
> &= \langle u_0 | G_1(M_f)^\dagger G_2(M_f) | u_0 \rangle \\
> &= \langle u_0 | (G_1^* G_2)(M_f) | u_0 \rangle \\
> &\overset{\text{def. misura spettrale}}{=} \int_{\sigma(M_f)} G_1^*(\lambda) \, G_2(\lambda) \, d\nu_u(\lambda) \\
> &= \langle G_1, G_2 \rangle_{L^2(\sigma(M_f), \nu_u)}
> \end{align}
> $$
> Si dimostra che la mappa è sia iniettiva che suriettiva, costituendo un isomorfismo unitario:
> $$
> H_0 \simeq L^2(\sigma(M_f), \nu_u)
> $$
>
### Decomposizione Ortogonale e Teorema di Rappresentazione Spettrale

> [!note] Decomposizione in Somma Diretta per Spazi Separabili
> Non sempre un singolo vettore $u_0$ genera l'intero spazio di Hilbert (ovvero, in generale $H_0 \subsetneq \mathcal{H}$). Per ottenere un isomorfismo globale tra $\mathcal{H}$ e spazi $L^2$, si procede induttivamente mediante il processo di ortogonalizzazione:
> - Si sceglie $u_0 \in \mathcal{H}$ normalizzato ($\|u_0\| = 1$), determinando $H_0 = \overline{P(M_f) u_0}$.
> - Se $H_0 \neq \mathcal{H}$, si sceglie $u_1 \in H_0^\perp$ con $\|u_1\| = 1$, determinando $H_1 = \overline{P(M_f) u_1}$.
> - Si itera il procedimento.
>
> Essendo lo spazio di Hilbert $\mathcal{H}$ separabile per ipotesi, il processo si arresta al più per un insieme numerabile di vettori ortogonali $\{u_n\}_{n \in \mathbb{N}}$, ottenendo la decomposizione in somma diretta ortogonale di sottospazi invarianti ciclici:
> $$
> \mathcal{H} = \bigoplus_{n \in \mathbb{N}} H_n
> $$
> Poiché per ciascun sottospazio ciclico vale l'isomorfismo $H_n \simeq L^2(\sigma(M_f), \mu_n)$ (dove $\mu_n = \nu_{u_n}$), si ricava l'isomorfismo spettrale globale:
> $$
> \mathcal{H} \simeq \bigoplus_{n \in \mathbb{N}} L^2(\sigma(M_f), \mu_n)
> $$
>
Abbiamo ottenuto questo risultato per gli operatori di moltiplicazione. Ci si domanda se una rappresentazione analoga sussista per operatori autoaggiunti generali. La risposta affermativa è data dal seguente teorema fondamentale.

> [!theorem] Teorema di Rappresentazione Spettrale (Interpretazione Probabilistica Locale)
> Sia $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ un operatore autoaggiunto e sia $u \in \mathcal{H}$ un vettore normalizzato.
> Se per ogni polinomio $P$ esiste una misura di Borel regolare $\nu_u$ tale che:
> $$
> \langle u | P(A) | u \rangle = \int_{\sigma(A)} P(\lambda) \, d\nu_u(\lambda)
> $$
> allora il sottospazio ciclico generato da $u$:
> $$
> \overline{\{P(A) u : P \text{ polinomio}\}} \simeq L^2(\sigma(A), \nu_u)
> $$
> è unitariamente equivalente a $L^2(\sigma(A), \nu_u)$, e sotto tale isomorfismo l'operatore $A$ è rappresentato canonicamente come l'operatore di moltiplicazione per la variabile indipendente $\lambda$:
> $$
> (A v)(\lambda) = \lambda v(\lambda)
> $$

> [!note] Formalizzazione del Sottospazio Ciclico
> Il teorema formalizza e chiude la catena deduttiva precedentemente costruita:
> $$
> H_0 = \overline{\{P(A) u_0\}} \simeq L^2(\sigma(A), \nu_u)
> $$
> confermando che l'azione di qualunque operatore autoaggiunto è localmente e globalmente indistinguibile dall'azione di una moltiplicazione per la variabile spettrale su un opportuno spazio $L^2$.
>
Questo risultato vale per un singolo stato $u_0$. Per l'isomorfismo globale vale il seguente teorema generale:

> [!theorem] Interpretazione Probabilistica Globale
> Sia $A \in \mathcal{L}(\mathcal{H}, \mathcal{H})$ un operatore autoaggiunto. Se per ogni $u \in \mathcal{H}$ vale l'interpretazione probabilistica locale, allora esistono una misura di probabilità $\mu$ su $\mathbb{R}$, una funzione misurabile $F: \mathbb{R} \to \mathbb{R}$ e un operatore unitario $U: \mathcal{H} \to L^2(\mathbb{R}, \mu)$ tali che:
> $$
> U \mathcal{H} = L^2(\mathbb{R}, \mu) \quad \text{dove} \quad \left(U A U^{-1} u\right)(x) = F(x) u(x)
> $$
>
Ora resta da chiedersi: per un operatore $A$ autoaggiunto quando sono soddisfatte le ipotesi dell'interpretazione probabilistica?
Vale il seguente, fondamentale, risultato:

### Teorema Spettrale nella Forma dell'Operatore di Moltiplicazione

> [!theorem] Teorema Spettrale — Operatore di Moltiplicazione
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto e $\mathcal{H}$ uno spazio di Hilbert separabile. Allora esistono una misura di probabilità $\mu$ su $\mathbb{R}$, una funzione reale $F \in L^\infty_{\mathrm{loc}}(\mathbb{R}, \mu)$ e un operatore unitario $U: \mathcal{H} \to L^2(\mathbb{R}, \mu)$ tali che:
> 1. $u \in D_A \iff F(x) (Uu)(x) \in L^2(\mathbb{R}, \mu)$
> 2. Per ogni $u \in U(D_A)$:
> $$
> \left(U A U^{-1} u\right)(x) = F(x) u(x)
> $$

> [!note] Significato Fondamentale del Teorema Spettrale
> Il teorema è fondamentale per due aspetti strutturali:
> - Il dominio $D_A$ dell'operatore $A$ è interamente caratterizzato dall'appartenenza a $L^2$ del prodotto con la funzione $F$;
> - L'operatore unitario $U$ permette a qualsiasi operatore autoaggiunto (anche non limitato) di essere «diagonalizzato», trasformandosi in un semplice operatore di moltiplicazione.
>
### Esempio: Operatore Momento e Dominio di Definizione

> [!example] Dominio dell'Operatore Momento $\overline{P}$
> Si consideri l'operatore momento $\overline{P}$ con dominio $D_{\overline{P}} = H^1(\mathbb{R})$.
> Si noti che:
> $$
> \overline{P} = U^{-1} Q U
> $$
> dove $U = \mathcal{F}$ è la trasformata di Fourier e $Q$ è l'operatore di posizione moltiplicativo (con misura $d\mu = dx$ per $Q$). Pertanto:
> $$
> u \in D_{\overline{P}} \iff x \, \mathcal{F}u \in L^2(\mathbb{R}, dx) \iff x \, \hat{u} \in L^2(\mathbb{R}, dx) \iff u \in H^1(\mathbb{R}, dx)
> $$

> [!note] Dimostrazione ed Estensione ad Operatori Compatibili
> La dimostrazione del teorema spettrale nella forma di moltiplicazione è assai tecnica ed è basata sul teorema di rappresentazione di Riesz-Markov.
> Un'importante generalizzazione si ottiene considerando un insieme di $n$ operatori tra loro compatibili, ossia che commutano a coppie:
> $$
> [A_i, A_j] = 0 \quad \forall i \ne j
> $$
>
### Teorema Spettrale per Operatori Compatibili (Rappresentazione Congiunta)

> [!theorem] Teorema Spettrale — Rappresentazione Congiunta
> Siano $A_i \in \mathcal{L}(D_{A_i}, \mathcal{H})$, con $i = 1, \dots, n < +\infty$, operatori autoaggiunti tra loro compatibili ($[A_i, A_j] = 0 \quad \forall i \ne j$). Allora esistono una misura di probabilità $\mu$ su $\mathbb{R}^n$, $n$ funzioni reali $F_i \in L^\infty_{\mathrm{loc}}(\mathbb{R}^n, d\mu)$ e un operatore unitario $U: \mathcal{H} \to L^2(\mathbb{R}^n, d\mu)$ tali che:
> 1. $u \in D_{A_i} \iff F_i(\mathbf{x}) (Uu)(\mathbf{x}) \in L^2(\mathbb{R}^n, d\mu)$
> 2. Per ogni $u \in U(D_{A_i})$ e per ogni $i = 1, \dots, n$:
> $$
> \left(U A_i U^{-1} u\right)(\mathbf{x}) = F_i(\mathbf{x}) u(\mathbf{x})
> $$

> [!note] Utilità in Fisica: Posizione e Momento Vettoriali
> Questo risultato è di primaria importanza in meccanica quantistica per rappresentare simultaneamente gli operatori vettoriali di posizione $\mathbf{Q}$ e di momento $\mathbf{P}$:
> $$
> \mathbf{Q} u = \mathbf{x} \, u, \qquad \mathbf{P} u = -i \nabla u
> $$
> tramite operatori moltiplicativi congiunti.
>
### Operatori che Commutano e Calcolo Funzionale

> [!proposition] Base Comune di Autovettori per Operatori Commutanti
> Se due operatori autoaggiunti $A$ e $B$ hanno spettro puramente puntuale ($\sigma(A)$ e $\sigma(B)$ puntuali) e commutano ($[A, B] = 0$), allora $A$ e $B$ ammettono una base hilbertiana di autovettori in comune.

> [!quote]- Dimostrazione
> Sia $u_n$ un autovettore di $A$ relativo all'autovalore $\alpha_n$, ossia $A u_n = \alpha_n u_n$.
> Moltiplicando a sinistra per $B$ e sfruttando l'ipotesi di commutazione $[A, B] = 0$ (ovvero $AB = BA$):
> $$
> A (B u_n) = (A B) u_n = (B A) u_n = B (A u_n) = B (\alpha_n u_n) = \alpha_n (B u_n)
> $$
> Ne segue che $B u_n$ appartiene all'autospazio di $A$ relativo all'autovalore $\alpha_n$. Se tale autospazio ha dimensione uno (oppure diagonalizzando $B$ su ciascun autospazio comune):
> $$
> B u_n \propto u_n \implies \exists \beta_n \in \mathbb{R} : B u_n = \beta_n u_n \qquad \blacksquare
> $$
>
Un'altra conseguenza fondamentale del teorema spettrale è la possibilità di definire in modo rigoroso le **funzioni di operatori**.
Infatti, per gli operatori di moltiplicazione $M_f$ sono naturalmente definite tutte le loro funzioni limitate $G(M_f)$. Grazie al teorema spettrale, questa costruzione si estende a qualsiasi operatore autoaggiunto.

### Teorema Spettrale: Calcolo Funzionale di Borel

> [!theorem] Teorema Spettrale — Funzioni di Operatori
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Allora esiste un'applicazione $\mathcal{O}: L^\infty(\mathbb{R}) \to \mathcal{L}(\mathcal{H}, \mathcal{H})$ tale che:
> 1. $\mathcal{O}$ è un $*$-omomorfismo di algebre:
>    - (1a) $\mathcal{O}$ è lineare: $\mathcal{O}(G_1 + G_2) = \mathcal{O}(G_1) + \mathcal{O}(G_2)$ e $\mathcal{O}(\alpha G) = \alpha \mathcal{O}(G)$ per ogni $\alpha \in \mathbb{C}$;
>    - (1b) $\mathcal{O}(G_1 G_2) = \mathcal{O}(G_1) \mathcal{O}(G_2)$;
>    - (1c) $\mathcal{O}(\overline{G}) = \mathcal{O}(G)^\dagger$;
>    - (1d) $\mathcal{O}(1) = I$ (preserva l'operatore identità: $I u = u$).
> 2. È continuo e limitato in norma di operatori:
> $$
> \|\mathcal{O}(G)\|_{\mathcal{L}(\mathcal{H}, \mathcal{H})} = \|G\|_\infty
> $$
> 3. Continuità per convergenza dominata: se $\{G_n\}_{n \in \mathbb{N}} \subset L^\infty(\mathbb{R})$ soddisfa:
> $$
> G_n(x) \xrightarrow{n \to +\infty} x \quad \text{q.o.}, \qquad |G_n(x)| \le |x| \quad \forall n \in \mathbb{N}
> $$
> allora per ogni $u \in D_A$:
> $$
> \lim_{n \to +\infty} \mathcal{O}(G_n) u = A u
> $$
> 4. Continuità debole-forte:
> $$
> G_n \xrightarrow[n \to +\infty]{w} G \implies \mathcal{O}(G_n) \xrightarrow[n \to +\infty]{s} \mathcal{O}(G)
> $$
> 5. Conservazione degli autovettori: se $A u = \lambda u$ con $\lambda \in \mathbb{R}$, allora:
> $$
> \mathcal{O}(G) u = G(\lambda) u
> $$
> 6. Positività: se $G \ge 0$, allora $\mathcal{O}(G) \ge 0$ (operatore semi-definito positivo).
>
### Definizione di Funzioni di Operatori e Proprietà

> [!definition] Funzioni di Operatori Autoaggiunti
> In virtù del teorema del calcolo funzionale appena enunciato, per ogni funzione limitata di Borel $G \in L^\infty(\mathbb{R})$ si definisce l'operatore:
> $$
> G(A) := \mathcal{O}(G)
> $$
> Questa definizione consente di assegnare un senso rigoroso a operatori della forma $\cos(A)$, $e^{i A}$, $\sin(A)$, ecc.

> [!proposition] Proprietà del Calcolo Funzionale
> Siano $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto e $F, G \in L^\infty(\sigma(A))$. Allora valgono le seguenti proprietà:
> 1. Teorema di mappatura spettrale:
> $$
> \sigma(F(A)) = F(\sigma(A))
> $$
> 2. Norma dell'operatore:
> $$
> \|F(A)\| = \sup_{\lambda \in \sigma(A)} |F(\lambda)|
> $$
> 3. Operatore aggiunto:
> $$
> F(A)^\dagger = F^*(A)
> $$
> in particolare, se $F$ è reale, $F(A)$ è autoaggiunto.
> 4. Prodotto:
> $$
> (FG)(A) = F(A) G(A)
> $$

> [!note] Norma e Raggio Spettrale
> La proprietà 2 mostra in particolare che per un operatore limitato e autoaggiunto $A$:
> $$
> \|A\| = \sup_{\lambda \in \sigma(A)} |\lambda| = r(A)
> $$
> cioè la norma operatoriale coincide con il raggio spettrale $r(A)$.
>
### Famiglia Spettrale e Proiettori Spettrali

Ripercorrendo fin qui la struttura logica sviluppata:
$$
\begin{array}{ccccc}
M_f & \longmapsto & G(M_f) & \xrightarrow{\text{caso particolare}} & E_{M_f}(a, b) \\
\Updownarrow U & & \Updownarrow U & & \\
A & \longmapsto & G(A) & &
\end{array}
$$
dove abbiamo formulato:
- 2 teoremi per l'esistenza di $\mu, U, F$ tale che $\mathcal{H} \simeq L^2$;
- 2 teoremi che stabiliscono la decomposizione $A = U M_F U^{-1}$;
- Il teorema per costruire il calcolo funzionale $G(A)$.

$\rightsquigarrow$ *Come si individua operativamente la misura $\mu$ per un generico operatore $A$?*
$\implies$ Possiamo definire i proiettori ortogonali associati ad ogni intervallo $(a, b) \subset \mathbb{R}$:
$$
E_A(a, b) := \chi_{(a, b)}(A)
$$
dove la famiglia spettrale cumulativa è definita da:
$$
E_A(\lambda) := E_A(-\infty, \lambda]
$$

### Teorema Spettrale: Risoluzione Spettrale dell'Identità

> [!theorem] Teorema Spettrale — Risoluzione Spettrale
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Allora esiste un'unica famiglia spettrale di proiettori ortogonali $\{E_A(\lambda)\}_{\lambda \in \mathbb{R}}$.
> Definite per ogni $u, v \in \mathcal{H}$ le misure:
> $$
> d\mu_u(\lambda) := d\langle u | E_A(\lambda) | u \rangle, \qquad d\mu_{u, v}(\lambda) := d\langle u | E_A(\lambda) | v \rangle
> $$
> si ha che:
> 1. Il dominio dell'operatore è caratterizzato da:
> $$
> D_A = \left\{ u \in \mathcal{H} : \int_{\sigma(A)} \lambda^2 \, d\mu_u(\lambda) < +\infty \right\}
> $$
> 2. Gli elementi di matrice soddisfano:
> $$
> \langle u | A | v \rangle = \int_{\sigma(A)} \lambda \, d\mu_{u, v}(\lambda) \quad \forall v \in D_A, \; \forall u \in \mathcal{H}
> $$
> 3. La misura dell'intervallo $[a, b]$ è data da:
> $$
> \mu_u([a, b]) = \langle u | E_A(b) | u \rangle - \langle u | E_A(a) | u \rangle
> $$
>
### Calcolo della Misura Spettrale per Posizione e Momento

Come si ottiene la famiglia spettrale per i concreti operatori quantistici?

> [!example] Operatore di Posizione $Q$
> L'operatore $Q$ è già un operatore di moltiplicazione ($Q u(x) = x u(x)$), per cui:
> $$
> E_Q(\lambda) u(x) = \chi_{(-\infty, \lambda]}(x) \, u(x)
> $$
> Ne segue che per un intervallo limitato $[a, b]$:
> $$
> \mu_u([a, b]) = \langle u | E_{[a, b]} | u \rangle = \int_{\mathbb{R}} u^*(x) \, \chi_{[a, b]}(x) \, u(x) \, dx = \int_a^b |u(x)|^2 \, dx
> $$
> da cui la misura differenziale spettrale è data da:
> $$
> d\mu_u(x) = |u(x)|^2 \, dx
> $$

> [!example] Operatore Momento $P$
> Ricordando che $P = \mathcal{F}^{-1} Q \mathcal{F}$, si ha:
> $$
> E_P(\lambda) = \mathcal{F}^{-1} \left( \chi_{(-\infty, \lambda]} \right) \mathcal{F}
> $$
> Applicando il proiettore spettrale all'intervallo $[a, b]$:
> $$
> E_P([a, b]) u(x) = \mathcal{F}^{-1} \left( \chi_{[a, b]} \hat{u} \right)(x)
> $$
> Pertanto, per la misura spettrale:
> $$
> \begin{align}
> \mu_u([a, b]) &= \langle u | E_P([a, b]) | u \rangle \\
> &= \langle u, \mathcal{F}^{-1} \chi_{[a, b]} \hat{u} \rangle \overset{\mathcal{F}^{-1} = \mathcal{F}^\dagger}{=} \langle \mathcal{F}u, \chi_{[a, b]} \hat{u} \rangle \\
> &= \int_a^b |\hat{u}(\xi)|^2 \, d\xi
> \end{align}
> $$
> da cui:
> $$
> d\mu_u(\xi) = |\hat{u}(\xi)|^2 \, d\xi
> $$
>
### Misura Spettrale per l'Energia Cinetica e Notazione Integrale

> [!example] Operatori Quadratici $P^2$ e $X^2$
> - Per l'operatore $P^2$, il proiettore spettrale è:
> $$
> P^2 \longmapsto E_{P^2}(\lambda) = \chi_{(-\infty, \lambda]}(\sqrt{P})
> $$
> La controimmagine dell'intervallo $[a, b] \subset [0, +\infty)$ tramite la mappa quadratica è data da $[-\sqrt{b}, -\sqrt{a}] \cup [\sqrt{a}, \sqrt{b}]$, dunque:
> $$
> \mu_u([a, b]) = \mu_u\left( [-\sqrt{b}, -\sqrt{a}) \cup (\sqrt{a}, \sqrt{b}] \right) = \int_{\sqrt{a}}^{\sqrt{b}} |\hat{u}(\xi)|^2 \, d\xi + \int_{-\sqrt{b}}^{-\sqrt{a}} |\hat{u}(\xi)|^2 \, d\xi
> $$
> - Analogamente per $X^2$:
> $$
> X^2 \longmapsto \mu_u([a, b]) = \int_{\sqrt{a}}^{\sqrt{b}} |u(x)|^2 \, dx + \int_{-\sqrt{b}}^{-\sqrt{a}} |u(x)|^2 \, dx
> $$

> [!note] Notazione Integrale della Rappresentazione Spettrale
> Essendo $d\mu_u(\lambda) = d\langle u | E(\lambda) | u \rangle$ e $d\mu_{u, v}(\lambda) = d\langle u | E(\lambda) | v \rangle$, si adotta la notazione sintetica:
> $$
> A = \int_{\sigma(A)} \lambda \, dE(\lambda) \qquad \text{(Rappresentazione Spettrale)}
> $$
> con cui si intende rigorosamente:
> $$
> \langle u | A | v \rangle = \int_{\sigma(A)} \lambda \, d\langle u | E(\lambda) | v \rangle \quad \forall v \in D_A, \; u \in \mathcal{H}
> $$
>
### Caso a Spettro Discreto e Funzioni di Operatori

**1. Operatori a Spettro Discreto**
Se l'operatore autoaggiunto $A$ possiede un sistema ortonormale completo (s.o.n.c.) di autovettori $\{u_n\}_{n \in \mathbb{N}} \subset \mathcal{H}$:
$$
A u_n = \lambda_n u_n \quad \forall n \in \mathbb{N}
$$
allora la sua famiglia spettrale è espressa dalla serie:
$$
E_A(\lambda) := \sum_{\lambda_n \le \lambda} |u_n\rangle \langle u_n|
$$
dove $|u_n\rangle \langle u_n| u := u_n \langle u_n, u \rangle$.
Ne segue che la misura spettrale concentrata sul punto isolato $\lambda_k$ vale:
$$
\mu_u(\{\lambda_k\}) = \langle u | |u_k\rangle \langle u_k| | u \rangle = |\langle u_k, u \rangle|^2
$$
e l'operatore $A$ si scompone nella serie spettrale:
$$
A = \sum_{n \in \mathbb{N}} \lambda_n |u_n\rangle \langle u_n|
$$

**2. Funzioni di Operatori via Integrale Spettrale**
Se $B = G(A)$ con $G \in L^\infty(\mathbb{R})$, allora:
$$
G(A) = \int_{\sigma(A)} G(\lambda) \, dE(\lambda)
$$
In particolare, per operatori a spettro discreto con $A u_n = \lambda_n u_n$:
$$
G(A) u_n = G(\lambda_n) u_n \quad \forall n \in \mathbb{N}
$$

### Caratterizzazione dello Spettro e Misure di Borel

> [!definition] Classificazione delle Misure di Borel
> Sia $\mu: \mathcal{M} \to [0, +\infty]$ una misura di Borel su $\mathbb{R}$. Si definiscono:
> - **Puramente puntuale (PP):** $\mu$ è puramente puntuale se esiste un insieme al più numerabile $P = \{x_1, \dots, x_n, \dots\}$ con $\mu(\{x_i\}) \ne 0$ per ogni $i$, tale che:
> $$
> \forall S \in \mathcal{M}, \quad \mu(S) = \sum_{x_i \in S \cap P} \mu(\{x_i\})
> $$
> - **Continua (CONT):** $\mu$ è continua se non ha atomi, ossia $\mu(\{x\}) = 0$ per ogni $x \in \mathbb{R}$ (non ammette parti puramente puntuali: $\mu = \mu - \mu_{PP}$);
> - **Assolutamente continua (AC):** $\mu$ è assolutamente continua rispetto alla misura di Lebesgue ($\mu \ll \lambda_{\mathrm{Leb}}$) se esiste una densità $f \in L^1_{\mathrm{loc}}(\mathbb{R})$ tale che:
> $$
> \forall A \in \mathcal{M}, \quad \mu(A) = \int_A f(x) \, dx
> $$
> - **Singolare (SING):** $\mu$ è singolare rispetto alla misura di Lebesgue ($\mu \perp \lambda_{\mathrm{Leb}}$) se esiste un insieme misurabile $A \in \mathcal{M}$ tale che:
> $$
> \mu(A) = 0 \quad \text{mentre} \quad |\mathbb{R} \setminus A| = 0
> $$
>
La classificazione delle misure in queste categorie è fondamentale per il risultato di decomposizione strutturale dello spettro che segue:

### Teorema di Decomposizione di Lebesgue e Sottospazi Spettrali

> [!theorem] Teorema di Decomposizione di Lebesgue
> Sia $\mu: \mathcal{M} \to [0, +\infty]$ una misura di Borel. Allora essa si decompone in modo unico in:
> $$
> \mu = \mu_{PP} + \mu_{CONT} = \mu_{PP} + \mu_{AC} + \mu_{SING}
> $$
> dove $\mu_{PP}$ è una misura puramente puntuale, $\mu_{CONT}$ è una misura continua, $\mu_{AC}$ è assolutamente continua e $\mu_{SING}$ è singolare continua.

> [!definition] Sottospazi Spettrali di uno Spazio di Hilbert
> Sia $A$ un operatore autoaggiunto su $\mathcal{H}$ e sia $\mu_u$ la sua misura spettrale associata al vettore $u \in \mathcal{H}$. Si definiscono i seguenti sottospazi:
> - Sottospazio puramente puntuale:
> $$
> H_{PP} := \{ u \in \mathcal{H} : \mu_u \text{ è puramente puntuale} \}
> $$
> - Sottospazio continuo:
> $$
> H_{CONT} := \{ u \in \mathcal{H} : \mu_u \text{ è continua} \}
> $$
> - Sottospazio assolutamente continuo:
> $$
> H_{AC} := \{ u \in \mathcal{H} : \mu_u \text{ è assolutamente continua} \}
> $$
> - Sottospazio singolare:
> $$
> H_{SING} := \{ u \in \mathcal{H} : \mu_u \text{ è singolare} \}
> $$
>
Questo permette una decomposizione ortogonale di $\mathcal{H}$ nei rispettivi sottospazi invarianti:

### Decomposizione di $\mathcal{H}$ e Caratterizzazione dello Spettro

> [!proposition] Decomposizione Ortogonale dello Spazio di Hilbert
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Allora per $\mathcal{H}$ si ha la decomposizione in somma diretta ortogonale:
> $$
> \mathcal{H} = H_{PP} \oplus H_{CONT} = H_{PP} \oplus H_{AC} \oplus H_{SING}
> $$
>
Questa decomposizione consente una definizione rigorosa delle componenti dello spettro:

> [!definition] Spettro Puntuale, Continuo, Assolutamente Continuo e Singolare
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto. Si definiscono:
> - Spettro puntuale di $A$:
> $$
> \sigma_{PP}(A) := \{ \lambda \in \mathbb{R} : \exists u \in \mathcal{H} \setminus \{0\} : A u = \lambda u \}
> $$
> - Spettro continuo di $A$:
> $$
> \sigma_{CONT}(A) := \sigma\left(\left.A\right|_{H_{CONT}}\right)
> $$
> - Spettro assolutamente continuo di $A$:
> $$
> \sigma_{AC}(A) := \sigma\left(\left.A\right|_{H_{AC}}\right)
> $$
> - Spettro singolare di $A$:
> $$
> \sigma_{SING}(A) := \sigma\left(\left.A\right|_{H_{SING}}\right)
> $$

> [!example] Spettro di Posizione
> $\sigma(Q) = \sigma_{AC}(Q)$, poiché per ogni $u \in L^2(\mathbb{R})$ esiste una densità $|u|^2 \in L^1(\mathbb{R})$ tale che $d\mu_u = |u|^2 \, dx$.
>
### Spettro Puntuale, Continuo e Autovalori Immersi

> [!example] Spettro dell'Operatore Momento
> Analogamente, $\sigma(P) = \sigma_{AC}(P) = \mathbb{R}$.

> [!example] Operatore Laplaciano con Condizioni di Neumann
> Si consideri l'operatore $H_N = -\frac{\partial^2}{\partial x^2}$ definito su:
> $$
> D_{H_N} = \{ u \in H^2([0, L]) : u'(0) = u'(L) = 0 \}
> $$
> In tal caso lo spettro è puramente puntuale:
> $$
> \sigma(H_N) = \sigma_{PP}(H_N) = \left\{ \frac{n^2 \pi^2}{L^2} : n \in \mathbb{N} \right\}
> $$

> [!note] Autovalori Immersi nello Spettro Continuo
> Si osservi che, in generale:
> $$
> \sigma_{PP}(A) \ne \sigma\left(\left.A\right|_{H_{PP}}\right)
> $$
> Possono infatti esistere autovalori immersi nello spettro continuo:
> $$
> \lambda \in \sigma_{PP}(A) \cap \sigma_{AC}(A)
> $$
> Tra gli spettri sussiste la relazione di decomposizione topologica:
> $$
> \sigma(A) = \overline{\sigma_{PP}(A)} \cup \sigma_{CONT}(A) = \overline{\sigma_{PP}(A)} \cup \sigma_{AC}(A) \cup \sigma_{SING}(A)
> $$
>
Come si possono «separare» gli autovalori immersi nel continuo da quelli isolati? A tal fine, è opportuno classificare i punti $\lambda \in \sigma(A)$ in base alla loro natura topologica (isolati o di accumulazione).

### Spettro Discreto e Spettro Essenziale

> [!definition] Spettro Discreto ed Essenziale
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto e $\{E_A(\lambda)\}_{\lambda \in \mathbb{R}}$ la sua famiglia spettrale. Per ogni $\lambda \in \sigma(A)$ si definisce:
> - $\lambda \in \sigma_{\mathrm{disc}}(A)$ (spettro discreto di $A$) se:
> $$
> \exists \varepsilon > 0 : \dim\left( \mathrm{Im}\big(E_A(\lambda + \varepsilon) - E_A(\lambda - \varepsilon)\big) \right) < +\infty
> $$
> - $\lambda \in \sigma_{\mathrm{ess}}(A)$ (spettro essenziale di $A$) se:
> $$
> \forall \varepsilon > 0 : \dim\left( \mathrm{Im}\big(E_A(\lambda + \varepsilon) - E_A(\lambda - \varepsilon)\big) \right) = +\infty
> $$

> [!proposition] Caratterizzazione di $\sigma_{\mathrm{disc}}$ e $\sigma_{\mathrm{ess}}$
> Sia $A \in \mathcal{L}(D_A, \mathcal{H})$ un operatore autoaggiunto su $\mathcal{H}$. Allora lo spettro si decompone come:
> $$
> \sigma(A) = \sigma_{\mathrm{disc}}(A) \cup \sigma_{\mathrm{ess}}(A)
> $$
> Inoltre:
> 1. $\lambda \in \sigma_{\mathrm{disc}}(A)$ se e solo se:
>    - (a) $\exists \varepsilon > 0 : (\lambda - \varepsilon, \lambda + \varepsilon) \cap \sigma(A) = \{\lambda\}$ (autovalore isolato);
>    - (b) $\dim \{ u \in \mathcal{H} : A u = \lambda u \} < +\infty$ (molteplicità geometrica finita).
>
### Proprietà dello Spettro Essenziale e Autovettori Distribuzionali

2. $\lambda \in \sigma_{\mathrm{ess}}(A)$ se si verifica una delle seguenti condizioni:
   - (a) $\lambda \in \sigma_{CONT}(A)$;
   - (b) $\lambda$ è un punto di accumulazione di $\sigma_{PP}(A)$;
   - (c) $\lambda$ è un autovalore di molteplicità infinita ($\dim \ker(A - \lambda I) = +\infty$).

### Autovettori Distribuzionali

Fino a questo momento abbiamo descritto gli operatori a spettro continuo mediante una successione di quasi-autovettori. Per le applicazioni fisiche, tuttavia, risulta assai più comodo determinare (se possibile) degli **autovettori distribuzionali**, cioè, qualora $\sigma(A) = \sigma_{CONT}(A)$, individuare una famiglia $\{u_\lambda\}_{\lambda \in \mathbb{R}} \subset \mathcal{D}'(\mathbb{R})$ tale che:
$$
A u_\lambda = \lambda u_\lambda \quad \forall \lambda \in \sigma(A)
$$
in un opportuno senso distribuzionale.
Come si può formalizzare rigorosamente tale concetto? L'idea fondamentale consiste nell'«allargare» lo spazio di Hilbert.

### Terne di Gelfand (Rigged Hilbert Spaces)

> [!definition] Spazio di Hilbert Allargato (Terna di Gelfand)
> Sia $\mathcal{H}$ uno spazio di Hilbert separabile. Si definisce **spazio di Hilbert allargato** (o **terna di Gelfand**) una terna di spazi vettoriali:
> $$
> (\Phi, \mathcal{H}, \Phi^*) \quad \text{con} \quad \Phi \subseteq \mathcal{H} \subseteq \Phi^*
> $$
> dove:
> 1. $\Phi \subseteq \mathcal{H}$ è un sottospazio denso di $\mathcal{H}$ dotato di una nozione di convergenza più forte di quella di $\mathcal{H}$;
> 2. $\Phi^*$ è lo spazio duale continuo di $\Phi$. L'inclusione $\Phi^* \supseteq \mathcal{H}$ è da intendersi nel senso del teorema di Riesz.

> [!note] Scelta Standard per $L^2(\mathbb{R}^n)$
> Se $\mathcal{H} = L^2(\mathbb{R}^n)$, si sceglie quasi sempre la terna di Gelfand:
> $$
> \left( \mathcal{S}(\mathbb{R}^n), \, L^2(\mathbb{R}^n), \, \mathcal{S}'(\mathbb{R}^n) \right)
> $$
> con cui si «allarga» $L^2$ accogliendo le distribuzioni temperate.
>
Si consideri ora una terna di Gelfand $(\Phi, \mathcal{H}, \Phi^*)$.
Si suppone inoltre che l'operatore $A$ preservi lo spazio test $\Phi$, ossia:
$$
A(\Phi) \subseteq \Phi
$$
(cioè gli operatori applicati a funzioni test di $\mathcal{D}, \mathcal{S}$, ecc., rimangono confinati in tali spazi).

### Autovettori Generalizzati e Operatore di Posizione

> [!definition] Autovettore Generalizzato
> Sia $\lambda \in \sigma(A)$. Un funzionale $T_\lambda \in \Phi^*$ è detto **autovalore generalizzato** (o autovettore generalizzato) di $A$ relativo all'autovalore $\lambda$ se soddisfa:
> $$
> \langle T_\lambda, A \varphi \rangle = \lambda \langle T_\lambda, \varphi \rangle \quad \forall \varphi \in \Phi
> $$

> [!example] Autovettori Generalizzati di $\overline{Q}$
> Si consideri l'operatore di posizione $\overline{Q}$. Si noti che:
> $$
> \langle \delta_\lambda, \overline{Q} \varphi \rangle = \langle \delta_\lambda, x \varphi \rangle = \lambda \varphi(\lambda) = \lambda \langle \delta_\lambda, \varphi \rangle
> $$
> Ne consegue che $\{\delta_\lambda\}_{\lambda \in \mathbb{R}}$ è una famiglia di autovettori generalizzati di $\overline{Q}$.
> 
> Si noti inoltre che la famiglia di quasi-autovettori $\{u_{\lambda, \varepsilon}\}$ definita da:
> $$
> u_{\lambda, \varepsilon}(x) = \frac{1}{\sqrt{\varepsilon}} \rho\left(\frac{x - \lambda}{\varepsilon}\right)
> $$
> con $\rho \in C_c^\infty([-1, 1])$ e $\|\rho\|_2 = 1$, tende in senso distribuzionale a $\delta_\lambda$ per $\varepsilon \to 0$:
> $$
> \langle u_{\lambda, \varepsilon}, \varphi \rangle \xrightarrow{\varepsilon \to 0^+} \langle \delta_\lambda, \varphi \rangle
> $$
>
### Autovettori Generalizzati per l'Operatore Momento

> [!example] Autovettori Generalizzati di $\overline{P}$
> Per l'operatore momento $\overline{P}$, una famiglia di autovettori generalizzati è data dalle onde piane $\{e^{i \lambda x}\}_{\lambda \in \mathbb{R}}$, poiché:
> $$
> P e^{i \lambda x} = -i \frac{\partial}{\partial x} e^{i \lambda x} = (-i) i \lambda e^{i \lambda x} = \lambda e^{i \lambda x}
> $$
> Qui sono stati omessi formalmente i crochet distribuzionali poiché $e^{i \lambda x}$ è una funzione localmente integrabile $L^1_{\mathrm{loc}}(\mathbb{R})$ che agisce come distribuzione temperata regolare.

> [!note] Generalizzazioni del Teorema Spettrale
> Esistono generalizzazioni formali del teorema spettrale (teorema di Gelfand-Kostyuchenko / Gelfand-Maurin) che assicurano la completezza delle famiglie di autovettori distribuzionali per operatori autoaggiunti su terne di Gelfand.
>
