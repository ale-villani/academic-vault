---
title: "La Trasformata di Laplace e la Trasformata Zeta"
domain: "math/harmonic-analysis"
source_course: "Fondamenti di Automatica (Cap. 11)"
tags:
  - math/transforms/laplace
  - math/transforms/z-transform
  - math/transforms/dtft
  - math/distributions/causal
---

## 11.1. La Trasformata di Fourier a Tempo Discreto (DTFT)

La **Discrete-Time Fourier Transform (DTFT)** costituisce il ponte naturale tra le successioni discrete e le funzioni periodiche a frequenza continua.

### Spazi Funzionali di Riferimento

> [!definition] Spazio delle Funzioni Periodiche $L^p_{2\pi}(\mathbb{R})$
> Si definisce $L^p_{2\pi}(\mathbb{R})$ lo spazio delle funzioni complesse misurabili su $\mathbb{R}$, $2\pi$-periodiche quasi ovunque, per le quali è finita la norma sul periodo:
> $$
> \|y\|_{L^p_{2\pi}} := \left( \int_{-\pi}^\pi |y(\omega)|^p \, d\omega \right)^{1/p} < +\infty \quad (1 \le p < +\infty), \qquad \|y\|_{L^\infty_{2\pi}} := \mathrm{ess\,sup}_{\omega \in [-\pi, \pi]} |y(\omega)| < +\infty
> $$

> [!definition] Spazio delle Successioni $\ell^p(\mathbb{Z})$
> Si definisce $\ell^p(\mathbb{Z})$ lo spazio vettoriale delle successioni complesse a indice bilaterale $x = \{x_k\}_{k \in \mathbb{Z}}$ dotate di norma:
> $$
> \|x\|_{\ell^p} := \left( \sum_{k \in \mathbb{Z}} |x_k|^p \right)^{1/p} < +\infty \quad (1 \le p < +\infty), \qquad \|x\|_{\ell^\infty} := \sup_{k \in \mathbb{Z}} |x_k| < +\infty
> $$

> [!note] Inclusioni negli Spazi Funzionali
> - **Domini a misura finita ($L^p_{2\pi}$):** per ogni $1 \le p < q \le +\infty$, vale l'inclusione diretta:
>   $$
>   L^q_{2\pi}(\mathbb{R}) \subset L^p_{2\pi}(\mathbb{R})
>   $$
> - **Spazi di successioni discrete ($\ell^p$):** per ogni $1 \le p < q \le +\infty$, vale l'inclusione inversa:
>   $$
>   \ell^p(\mathbb{Z}) \subset \ell^q(\mathbb{Z})
>   $$

### Definizione e Proprietà Fondamentali della DTFT

> [!definition] Trasformata di Fourier a Tempo Discreto (DTFT)
> Sia $x = \{x_k\}_{k \in \mathbb{Z}} \in \ell^1(\mathbb{Z})$. Si definisce **DTFT** di $x$ l'operatore:
> $$
> \mathcal{F}_{\text{DT}}: \ell^1(\mathbb{Z}) \longrightarrow C_{2\pi}(\mathbb{R}), \qquad X(\omega) := \mathcal{F}_{\text{DT}}[x](\omega) := \sum_{k \in \mathbb{Z}} x_k e^{-i\omega k}
> $$

> [!theorem] Estensione Isometrica di Plancherel su $\ell^2(\mathbb{Z})$
> Per densità di $\ell^1(\mathbb{Z})$ in $\ell^2(\mathbb{Z})$, l'operatore $\mathcal{F}_{\text{DT}}$ si estende in modo unico a un **isomorfismo isometrico** tra spazi di Hilbert:
> $$
> \mathcal{F}_{\text{DT}}: \ell^2(\mathbb{Z}) \longrightarrow L^2_{2\pi}(\mathbb{R})
> $$
> conservando l'energia del segnale (identità di Parseval):
> $$
> \|x\|_{\ell^2}^2 = \sum_{k \in \mathbb{Z}} |x_k|^2 = \frac{1}{2\pi} \|X\|_{L^2_{2\pi}}^2 = \frac{1}{2\pi} \int_{-\pi}^\pi |X(\omega)|^2 \, d\omega
> $$

> [!theorem] Formula di Inversione della DTFT
> L'operatore inverso $\mathcal{F}_{\text{DT}}^{-1}: L^2_{2\pi}(\mathbb{R}) \to \ell^2(\mathbb{Z})$ associa a ogni funzione periodica i suoi coefficienti di Fourier:
> $$
> x_n = \frac{1}{2\pi} \int_{-\pi}^\pi X(\omega) e^{i\omega n} \, d\omega \qquad \forall n \in \mathbb{Z}
> $$

> [!note] Dualità con la Serie di Fourier
> La Serie di Fourier e la DTFT rappresentano la medesima relazione di dualità di Pontryagin tra il gruppo discreto $\mathbb{Z}$ e il gruppo compatto $S^1 \cong \mathbb{R}/2\pi\mathbb{Z}$:
> - **Serie di Fourier:** continua nei tempi $t \in [-\pi, \pi]$, discreta nelle frequenze $k \in \mathbb{Z}$.
> - **DTFT:** discreta nei tempi $k \in \mathbb{Z}$, continua e periodica nelle frequenze $\omega \in [-\pi, \pi]$.
### Trasformata di Fourier a Tempo e Valori Discreti (DFT)

> [!note] Trasformata di Fourier a tempo e valori discreti
> La DTFT associa alla successione discreta $\{x_k\} \in \ell^2(\mathbb{Z})$ una funzione continua $X(\Omega) \in L^2_{2\pi}(\mathbb{R})$. Su un calcolatore numerico la variabile continua $\Omega$ non può essere rappresentata; è necessario campionare anche lo spettro in frequenza.
> L'idea allora è di selezionare le frequenze in $N$ punti equidistanti sulla circonferenza unitaria $$\omega_k = k \frac{2\pi}{N}, \qquad k \in \{0, 1, \dots, N-1\}$$
> Per cui ottengo un'immagine discreta $$ \mathbf{X}:= (X(\omega_{0}), \dots, X(\omega_{N-1}))$$a partire da un dominio discreto $$\left\{ x_{0}, \dots, x_{N-1}  \right\}\subseteq \mathbb{C}^N$$
> Pertanto si ottiene una trasformazione del tipo 
> $$
> X_k := \sum_{n=0}^{N-1} x_n e^{-i \frac{2\pi}{N} k n} \qquad \forall k \in \{0, 1, \dots, N-1\}
> $$
> Essendo lineare, la trasformata di Fourier Discreta è rappresentata da una matrice

> [!definition] Trasformata di Fourier Discreta (DFT)
> Sia $\mathbf{x} = (x_0, x_1, \dots, x_{N-1}) \in \mathbb{C}^N$. Si definisce **DFT** di $\mathbf{x}$ l'operatore lineare:
> $$ \mathcal{F}_N : \mathbb{C}^N \longrightarrow \mathbb{C}^N, \qquad \mathbf{X} = \mathcal{F}_N(\mathbf{x})$$
> dato da $$ \mathrm{ F}_{N}:= \begin{pmatrix}  1 & 1 & 1 & \dots & 1 \\  1 & W_{N} & W_{N}^2 & \dots & W_{N}^{N-1} \\  1 & W_{N}^2 & W_{N}^4  & \dots & W_{N}^{2(N-1)} \\  \vdots  & \vdots & \vdots  & \ddots  & \vdots \\  1 & W_{N}^{N-1} & W_{N}^{2(N-1)} & \dots & W_{N}^{(N-1)(N-1)}  \end{pmatrix} $$dove $W_{N}:= e^{ -i 2\pi/N }$ è una radice $N$-esima dell'unità

> [!note] Osservazione
> La matrice $\mathrm{F}_{N}$ è simmetrica, infatti gli indici $k$ e $n$ nella sommatoria scritta sopra sono interscambiabili. 

> [!proposition] Formula di Inversione della DFT
> $\mathcal{  F  }_{N}:\mathbb{C}^N \to \mathbb{C}^{N}$ è un isomorfismo lineare invertibile, rappresentato da una matrice simmetrica e ortogonale.  L'operatore inverso è dato da $$x_{n}=(\mathcal{  F  }_{N}^{-1}[\mathbf{X}])_{n}=\frac{1}{N} \sum_{k=0}^{N-1}X_{k}e^{ i \frac{2\pi}{N}kn} =\frac{1}{N} \sum_{k=0}^{N-1}X_{k}W_{N}^{-kn} $$e rappresentato dalla matrice $$\mathrm{F}_{N}^{-1}= \frac{1}{N}\mathrm{F}_{N}^{^{\dagger}}$$

> [!quote]- Dimostrazione
>Sostituendo l'espressione di $X_{k}$ nella sommatoria $$\frac{1}{N} \sum_{k=0}^{N-1}\left[ \sum_{m=0}^{N-1} x_{m} e^{ -i \frac{2\pi}{N} km } \right]e^{ i \frac{2\pi }{N}kn }=\frac{1}{N}\sum_{m=0}^{N-1}x_{m}\left[ \sum_{k=0}^{N-1}e^{ -i  \frac{2\pi}{N}k(m-n)} \right]$$
> Si osservi che nella somma interna:
> 1. Per $k=m$ ottengo $$\sum_{n=0}^{N-1}W_{N}^0=N$$
> 2. Per $k≠n$ ponendo $q=W_{N}^{k-m}$ ottengo $$\sum_{n=0}^{N-1}q^n= \frac{1-q^N}{1-q}= \frac{1-e^{ -i \frac{2\pi}{N}(k-m)N }}{1-q}=0$$siccome $k-m \in \mathbb{Z}$
> 
> Ponendo la sommatoria interna pari a $N \delta_{nm}$ si ottiene $$(\mathcal{  F  } _{N}[\mathbf{X}])_{n}=x_{n}$$
> Inoltre ricordando che $\mathrm{F}_{N}^T=\mathrm{F_{N}}$ vale che $$(\mathrm{F}_{N}^{-1})_{nk}=\frac{1}{N} W_{N}^{-nk}=\frac{1}{N} \left( e^{ -i \frac{2\pi}{N} } \right)^{-nk}=\frac{1}{N}(W_{N}^{nk})^*=\frac{1}{N}(\mathrm{F}_{N}^{\dagger})_{nk}$$
>$\blacksquare$

## 11.2. La Trasformata di Laplace Unilaterale

### Motivazione e Causalità

> [!definition] Segnale Causale
> Una funzione o distribuzione $y$ si definisce **causale** se il suo supporto temporale è confinato nel semiasse non negativo:
> $$
> \mathrm{supp}(y) \subseteq [0, +\infty)
> $$

> [!definition] Trasformata di Laplace Unilaterale
> Sia $y \in L^1_{\text{loc}}([0, +\infty))$. Si definisce **trasformata di Laplace unilaterale** di $y$ la funzione complessa $Y(s)$ della variabile complessa $s = \sigma + i\omega$ data dall'integrale improprio:
> $$
> Y(s) := \mathcal{L}[y(t)] := \int_0^{+\infty} y(t) e^{-st} \, dt = \lim_{A \to +\infty} \int_0^A y(t) e^{-st} \, dt
> $$

> [!note] Connessione con la Trasformata di Fourier
> La trasformata di Laplace coincide con la trasformata di Fourier del segnale moltiplicato per un fattore di smorzamento esponenziale reale $e^{-\sigma t}$:
> $$
> \mathcal{L}[y(t)](\sigma + i\omega) = \mathcal{F}\left[ y(t) e^{-\sigma t} H(t) \right](\omega) = \int_{-\infty}^{+\infty} y(t) e^{-\sigma t} H(t) e^{-i\omega t} \, dt
> $$
> dove $H(t) = \chi_{[0, +\infty)}(t)$ è la funzione gradino di Heaviside.

### Regioni di Convergenza (ROC)

> [!definition] Ascisse di Convergenza Semplice e Assoluta
> Data una funzione causale $y \in L^1_{\text{loc}}([0, +\infty))$, si definiscono:
> 1. **Ascissa di convergenza semplice $\sigma_c$:**
>    $$
>    \sigma_c := \inf \left\{ \sigma \in \mathbb{R} \ \Big| \ \exists \omega \in \mathbb{R} : \lim_{A \to +\infty} \int_0^A y(t) e^{-(\sigma + i\omega)t} \, dt \text{ esiste finito} \right\}
>    $$
> 2. **Ascissa di convergenza assoluta $\sigma_a$:**
>    $$
>    \sigma_a := \inf \left\{ \sigma \in \mathbb{R} \ \Big| \ y(t) e^{-\sigma t} \in L^1([0, +\infty)) \right\} = \inf \left\{ \sigma \in \mathbb{R} \ \Big| \ \int_0^{+\infty} |y(t)| e^{-\sigma t} \, dt < +\infty \right\}
>    $$

> [!theorem] Struttura a Semipiano della ROC
> La regione di convergenza (ROC) della trasformata di Laplace unilaterale è un semipiano aperto destro del piano complesso:
> $$
> \mathrm{ROC} = \mathbb{C}_{\sigma_c} := \{ s \in \mathbb{C} \mid \mathrm{Re}(s) > \sigma_c \}
> $$
> Inoltre, il divario tra le due ascisse è uniformemente limitato:
> $$
> \sigma_c \le \sigma_a \le \sigma_c + 1
> $$

> [!note] Comportamento sulla Frontiera $\mathrm{Re}(s) = \sigma_c$
> - **Divergenza pura:** per $y(t) = 1$, si ha $\sigma_c = 0$; l'integrale $\int_0^\infty e^{-i\omega t} \, dt$ diverge per ogni $\omega \in \mathbb{R}$.
> - **Convergenza semplice ma non assoluta:** per $y(t) = \dfrac{e^{i\omega_0 t}}{1+t}$, si ha $\sigma_c = 0$; converge semplicemente per $\omega \neq \omega_0$ e diverge per $\omega = \omega_0$.
> - **Convergenza assoluta:** per $y(t) = \dfrac{1}{1+t^2}$, si ha $\sigma_c = \sigma_a = 0$; converge assolutamente su tutta la retta $\mathrm{Re}(s) = 0$.

### Teoria Distribuzionale in $\mathcal{D}'_+$

> [!definition] Spazio delle Distribuzioni Causali $\mathcal{D}'_+(\mathbb{R})$
> Si definisce $\mathcal{D}'_+(\mathbb{R})$ il sottospazio delle distribuzioni su $\mathbb{R}$ aventi supporto confinato nel semiasse positivo:
> $$
> \mathcal{D}'_+(\mathbb{R}) := \{ u \in \mathcal{D}'(\mathbb{R}) \mid \mathrm{supp}(u) \subseteq [0, +\infty) \}
> $$
> Dotato dell'operatore di convoluzione distribuzionale, $\mathcal{D}'_+(\mathbb{R})$ è un'algebra commutativa e associativa con elemento neutro $\delta$:
> $$
> u * \delta = u, \qquad u * D^k \delta = D^k u \quad \forall u \in \mathcal{D}'_+(\mathbb{R})
> $$

> [!definition] Trasformata di Laplace Distribuzionale (Gelfand-Schwartz)
> Una distribuzione $u \in \mathcal{D}'_+(\mathbb{R})$ si definisce **trasformabile secondo Laplace** se esiste $\sigma_0 \in \mathbb{R}$ tale che la distribuzione pesata $e^{-\sigma t} u$ appartenga allo spazio delle distribuzioni temperate $\mathcal{S}'(\mathbb{R})$ per ogni $\sigma > \sigma_0$.
> Per ogni $s = \sigma + i\omega$ con $\sigma > \sigma_0$, si definisce:
> $$
> \mathcal{L}[u](s) := \langle e^{-\sigma t} u, \eta(t) e^{-i\omega t} \rangle
> $$
> dove $\eta \in C^\infty(\mathbb{R})$ è una funzione di cutoff liscia con $\eta(t) = 1$ per $t \ge -\varepsilon$ e $\eta(t) = 0$ per $t \le -2\varepsilon$ ($\varepsilon > 0$).

> [!note] Necessità della Funzione di Cutoff Liscia $\eta(t)$
> La presenza del cutoff $\eta(t)$ è essenziale per due ragioni strutturali:
> 1. Per $t < 0$, il fattore $e^{-\sigma t}$ diverge esponenzialmente (essendo $\sigma > \sigma_0 > 0$).
> 2. Non è possibile impiegare un gradino netto $H(t)$, in quanto la funzione di test risulterebbe discontinua e non apparterrebbe allo spazio di Schwartz $\mathcal{S}(\mathbb{R})$. È dunque necessario un raccordatore $C^\infty$ a transizione liscia.

> [!proposition] Trasformata degli Impulsi Distribuzionali
> 1. **Delta di Dirac:**
>    $$
>    \mathcal{L}[\delta(t)] = 1 \qquad (\mathrm{ROC}: \mathbb{C})
>    $$
> 2. **Derivata $k$-esima della Delta:**
>    $$
>    \mathcal{L}[\delta^{(k)}(t)] = s^k \qquad (\mathrm{ROC}: \mathbb{C})
>    $$

> [!quote]- Dimostrazione
> 1. **Delta di Dirac:** applicando la definizione per dualità con la funzione di cutoff $\eta(t)$:
>    $$
>    Y(s) = \langle e^{-\sigma t} \delta(t), \eta(t) e^{-i\omega t} \rangle = \langle \delta(t), e^{-\sigma t} \eta(t) e^{-i\omega t} \rangle = e^0 \cdot \eta(0) \cdot e^0 = 1 \cdot 1 \cdot 1 = 1
>    $$
> 2. **Derivate della Delta:**
>    $$
>    \mathcal{L}[\delta^{(k)}(t)] = \langle \delta^{(k)}(t), e^{-st} \eta(t) \rangle = (-1)^k \langle \delta(t), \frac{d^k}{dt^k}\left( e^{-st} \eta(t) \right) \rangle
>    $$
>    Poiché $\eta(t) = 1$ per ogni $t \in [-\varepsilon, +\infty)$, tutte le sue derivate si annullano nell'origine ($\eta^{(j)}(0) = 0$ per $j \ge 1$). Dunque:
>    $$
>    \left. \frac{d^k}{dt^k}\left( e^{-st} \eta(t) \right) \right|_{t=0} = \left. \frac{d^k}{dt^k}\left( e^{-st} \right) \right|_{t=0} = (-s)^k e^0 = (-1)^k s^k
>    $$
>    Sostituendo nell'accoppiamento:
>    $$
>    \mathcal{L}[\delta^{(k)}(t)] = (-1)^k \left[ (-1)^k s^k \right] = s^k \quad \blacksquare
>    $$

> [!note] Interpretazione Fisica della Delta
> Poiché $\mathcal{L}[\delta(t)] = 1$ per ogni $\omega \in \mathbb{R}$, la delta di Dirac contiene tutte le frequenze dello spettro reale con pari intensità. Ciò manifesta il principio di indeterminazione tempo-frequenza: una localizzazione temporale esatta ($\Delta t = 0$) impone la massima dispersione spettrale ($\Delta \omega = +\infty$).

### Trasformate dei Modi Naturali Continui

> [!proposition] Trasformata dei Modi Elementari Continui
> 1. **Modo esponenziale ($\lambda \in \mathbb{C}$):**
>    $$
>    \mathcal{L}[e^{\lambda t} H(t)] = \frac{1}{s - \lambda} \qquad (\mathrm{ROC}: \mathrm{Re}(s) > \mathrm{Re}(\lambda))
>    $$
> 2. **Modo polinomiale-esponenziale ($m \in \mathbb{N}$):**
>    $$
>    \mathcal{L}\left[ \frac{t^{m-1}}{(m-1)!} e^{\lambda t} H(t) \right] = \frac{1}{(s - \lambda)^m} \qquad (\mathrm{ROC}: \mathrm{Re}(s) > \mathrm{Re}(\lambda))
>    $$
> 3. **Modi trigonometrici reali ($\lambda = \pm i\omega_0$):**
>    $$
>    \mathcal{L}[\cos(\omega_0 t) H(t)] = \frac{s}{s^2 + \omega_0^2}, \qquad \mathcal{L}[\sin(\omega_0 t) H(t)] = \frac{\omega_0}{s^2 + \omega_0^2} \qquad (\mathrm{ROC}: \mathrm{Re}(s) > 0)
>    $$

> [!quote]- Dimostrazione
> 1. **Modo esponenziale:**
>    $$
>    Y(s) = \int_0^{+\infty} e^{\lambda t} e^{-st} \, dt = \int_0^{+\infty} e^{-(s-\lambda)t} \, dt = \left[ -\frac{e^{-(s-\lambda)t}}{s-\lambda} \right]_0^{+\infty} = \frac{1}{s-\lambda} \quad (\text{per } \mathrm{Re}(s) > \mathrm{Re}(\lambda))
>    $$
> 2. **Modo polinomiale-esponenziale:**
>    Si dimostra per induzione su $m$ integrando per parti, oppure differenziando ripetutamente rispetto al parametro $\lambda$:
>    $$
>    \mathcal{L}\left[ \frac{t^{m-1}}{(m-1)!} e^{\lambda t} \right] = \frac{1}{(m-1)!} \frac{d^{m-1}}{d\lambda^{m-1}} \mathcal{L}[e^{\lambda t}] = \frac{1}{(m-1)!} \frac{d^{m-1}}{d\lambda^{m-1}} \left( \frac{1}{s-\lambda} \right) = \frac{1}{(s-\lambda)^m}
>    $$
> 3. **Modi trigonometrici:**
>    Applicando la formula di Eulero per proiettare sui modi esponenziali complessi coniugati ($\lambda = \pm i\omega_0$):
>    $$
>    \mathcal{L}[\cos(\omega_0 t)] = \mathcal{L}\left[ \frac{e^{i\omega_0 t} + e^{-i\omega_0 t}}{2} \right] = \frac{1}{2}\left( \frac{1}{s - i\omega_0} + \frac{1}{s + i\omega_0} \right) = \frac{s}{s^2 + \omega_0^2}
>    $$
>    $$
>    \mathcal{L}[\sin(\omega_0 t)] = \mathcal{L}\left[ \frac{e^{i\omega_0 t} - e^{-i\omega_0 t}}{2i} \right] = \frac{1}{2i}\left( \frac{1}{s - i\omega_0} - \frac{1}{s + i\omega_0} \right) = \frac{\omega_0}{s^2 + \omega_0^2} \quad \blacksquare
>    $$

> [!note] Caso Particolare: Gradino Unitario di Heaviside
> Per $\lambda = 0$ nel modo esponenziale si ottiene immediatamente la trasformata del gradino unitario:
> $$
> \mathcal{L}[H(t)] = \frac{1}{s} \qquad (\mathrm{ROC}: \mathrm{Re}(s) > 0)
> $$

### Proprietà Operatoriali della Trasformata di Laplace

> [!proposition] Linearità
> $$
> \mathcal{L}[\alpha_1 y_1(t) + \alpha_2 y_2(t)] = \alpha_1 Y_1(s) + \alpha_2 Y_2(s) \quad \forall \alpha_1, \alpha_2 \in \mathbb{C}
> $$

> [!theorem] Teorema di Lerch (Iniettività)
> Siano $y_1, y_2 \in L^1_{\text{loc}}([0, +\infty))$ le cui trasformate $Y_1(s), Y_2(s)$ coincidono su un semipiano comune $\mathrm{Re}(s) > \sigma_0$. Allora:
> $$
> Y_1(s) = Y_2(s) \quad \forall s \in \mathbb{C}_{\sigma_0} \implies y_1(t) = y_2(t) \quad \text{per quasi ogni } t \ge 0
> $$

> [!theorem] Teorema di Olomorfia della Trasformata di Laplace
> Sia $y \in L^1_{\text{loc}}([0, +\infty))$ con ascissa $\sigma_c$. Allora la trasformata $Y(s)$ è **olomorfa** nel semipiano aperto $\mathrm{ROC} = \{\mathrm{Re}(s) > \sigma_c\}$, e la sua derivata complessa è data da:
> $$
> Y'(s) = -\int_0^{+\infty} t y(t) e^{-st} \, dt = -\mathcal{L}[t y(t)]
> $$

> [!theorem] Trasformata della Convoluzione
> Per ogni coppia di funzioni causali $g, u \in L^1_{\text{loc}}([0, +\infty))$, oppure distribuzioni $g, u \in \mathcal{D}'_+(\mathbb{R})$, vale:
> $$
> \mathcal{L}[g * u] = \mathcal{L}[g] \cdot \mathcal{L}[u] = G(s) U(s)
> $$

> [!theorem] Trasformata della Derivata e dell'Integrazione
> 1. **Derivata distribuzionale in $\mathcal{D}'_+$:**
>    $$
>    \mathcal{L}[u'] = s \mathcal{L}[u] \qquad \forall u \in \mathcal{D}'_+(\mathbb{R})
>    $$
> 2. **Derivata classica con salto:**
>    Sia $y$ differenziabile con $y' \in L^1_{\text{loc}}([0, +\infty))$ e ascissa $\sigma_0$. Allora:
>    $$
>    \mathcal{L}[y'] = s \mathcal{L}[y](s) - \lim_{t \to 0^+} y(t)
>    $$
> 3. **Integrazione temporale:**
>    $$
>    \mathcal{L}\left[ \int_0^t y(\tau) \, d\tau \right] = \frac{Y(s)}{s}
>    $$

> [!quote]- Dimostrazione
> 1. **Derivata distribuzionale:**
>    $$
>    \mathcal{L}[u'](s) = \langle u', e^{-st}\eta(t) \rangle = -\langle u, -s e^{-st}\eta(t) + e^{-st}\dot{\eta}(t) \rangle
>    $$
>    Poiché $u$ ha supporto in $[0, +\infty)$ e $\dot{\eta}(t) = 0$ per ogni $t \ge -\varepsilon$ (e quindi identicamente nulla su $\mathrm{supp}(u)$):
>    $$
>    \mathcal{L}[u'] = s \langle u, e^{-st}\eta(t) \rangle = s \mathcal{L}[u]
>    $$
> 2. **Derivata classica:**
>    Essendo $y' \in L^1_{\text{loc}}([0, +\infty))$, si ha $y \in AC([0, T])$ per ogni $T > 0$. Integrando per parti:
>    $$
>    \int_0^T y'(t) e^{-st} \, dt = [y(t)e^{-st}]_0^T - \int_0^T y(t)(-s e^{-st}) \, dt = s \int_0^T y(t) e^{-st} \, dt + y(T)e^{-sT} - \lim_{t \to 0^+} y(t)
>    $$
>    Passando al limite per $T \to +\infty$, nella regione di convergenza $\mathrm{Re}(s) > \sigma_0$ il termine al bordo converge a zero ($y(T)e^{-sT} \to 0$), ottenendo:
>    $$
>    \mathcal{L}[y'] = s \mathcal{L}[y] - \lim_{t \to 0^+} y(t)
>    $$
> 3. **Derivata con salto tramite estensione causale:**
>    Definendo la distribuzione causale $u_y(t) = y(t) H(t) \in \mathcal{D}'_+(\mathbb{R})$, la derivata nel senso delle distribuzioni è $u_y' = \dot{y}(t)H(t) + y(0^+)\delta(t)$. Applicando la linearità:
>    $$
>    \mathcal{L}[u_y'] = s Y(s) = \mathcal{L}[\dot{y}(t)H(t)] + y(0^+) \mathcal{L}[\delta(t)] = \mathcal{L}[\dot{y}(t)H(t)] + y(0^+) \implies \mathcal{L}[\dot{y}(t)H(t)] = s Y(s) - y(0^+)
>    $$
> 4. **Integrazione:**
>    Nel dominio distribuzionale, l'integrazione corrisponde alla convoluzione $u * H(t)$. Poiché $\mathcal{L}[H] = \frac{1}{s}$, dal teorema di convoluzione segue:
>    $$
>    \mathcal{L}[u * H] = \mathcal{L}[u] \cdot \mathcal{L}[H] = \frac{U(s)}{s} \quad \blacksquare
>    $$

> [!note] Convenzione Ingegneristica $y(0^-)$
> Nei sistemi dinamici fisici soggetti a forzamenti impulsivi a $t = 0$, si utilizza la convenzione con limite sinistro:
> $$
> \mathcal{L}[\dot{y}(t)] = s \mathcal{L}[y] - y(0^-)
> $$
> Ciò consente di inserire le condizioni iniziali prima dell'applicazione della forzante impulsiva, evitando che il salto istantaneo a $t = 0^+$ corrompa il dato iniziale del problema.

> [!proposition] Trasformata di Traslazioni e Riscalamenti
> Sia $y \in L^1_{\text{loc}}([0, +\infty))$. Allora:
> 1. **Traslazione temporale (ritardo causale):**
>    $$
>    \mathcal{L}[y(t - \tau) H(t - \tau)] = e^{-s\tau} Y(s) \qquad (\tau > 0)
>    $$
> 2. **Riscalamento:**
>    $$
>    \mathcal{L}[y(at)] = \frac{1}{a} Y\left(\frac{s}{a}\right) \qquad (a > 0)
>    $$

> [!quote]- Dimostrazione
> Entrambe si ricavano per sostituzione diretta nell'integrale:
> 1. $\mathcal{L}[y(t-\tau)H(t-\tau)] = \int_\tau^{+\infty} y(t-\tau) e^{-st} \, dt = \int_0^{+\infty} y(\eta) e^{-s(\eta+\tau)} \, d\eta = e^{-s\tau} \int_0^{+\infty} y(\eta) e^{-s\eta} \, d\eta = e^{-s\tau} Y(s)$.
> 2. $\mathcal{L}[y(at)] = \int_0^{+\infty} y(at) e^{-st} \, dt = \frac{1}{a} \int_0^{+\infty} y(\eta) e^{-s\eta/a} \, d\eta = \frac{1}{a} Y\left(\frac{s}{a}\right)$. $\blacksquare$

### Teoremi Asintotici (Valore Iniziale e Finale)

> [!theorem] Teorema del Valore Iniziale (TVI)
> Sia $y \in L^1_{\text{loc}}([0, +\infty))$ causale con derivata debole $y' \in L^1_{\text{loc}}([0, +\infty))$ e ascissa $\sigma_0$. Allora:
> $$
> \lim_{t \to 0^+} y(t) = \lim_{\sigma \to +\infty} \sigma Y(\sigma)
> $$

> [!quote]- Dimostrazione
> Dalla formula della trasformata della derivata $\mathcal{L}[y'] = s Y(s) - \lim_{t \to 0^+} y(t)$, valutando lungo l'asse reale $s = \sigma$:
> $$
> \lim_{t \to 0^+} y(t) = \lim_{\sigma \to +\infty} \sigma Y(\sigma) - \lim_{\sigma \to +\infty} \int_0^{+\infty} y'(t) e^{-\sigma t} e^{-i\omega t} \, dt
> $$
> Portando il limite sotto l'integrale tramite il Teorema di Convergenza Dominata di Lebesgue:
> $$
> \lim_{\sigma \to +\infty} \int_0^{+\infty} y'(t) e^{-\sigma t} e^{-i\omega t} \, dt = \int_0^{+\infty} y'(t) \left( \lim_{\sigma \to +\infty} e^{-\sigma t} \right) e^{-i\omega t} \, dt = 0
> $$
> da cui segue l'asserto. $\blacksquare$

> [!note] Validità per Funzioni Razionali Fratte nel TVI
> Per funzioni razionali fratte $Y(s) = \frac{N(s)}{D(s)}$, il Teorema del Valore Iniziale è valido se il grado relativo soddisfa:
> $$
> r_y := \deg(D) - \deg(N) \ge 1
> $$
> Per $r_y = 0$, la divisione polinomiale fornisce $Y(s) = \alpha + \frac{\beta(s)}{D(s)}$; antitrasformando, $y(t)$ contiene una componente impulsiva $\alpha \delta(t) \notin L^1_{\text{loc}}([0, +\infty))$ e il limite per $t \to 0^+$ diverge.

> [!theorem] Teorema del Valore Finale (TVF)
> Sotto l'ipotesi aggiuntiva che esista finito il limite asintotico $\lim_{t \to +\infty} y(t)$ (oppure che $y' \in L^1([0, +\infty))$):
> $$
> \lim_{t \to +\infty} y(t) = \lim_{\sigma \to 0^+} \sigma Y(\sigma)
> $$

> [!note] Condizione di Convergenza per Funzioni Razionali Fratte nel TVF
> Per funzioni razionali fratte $Y(s)$, la condizione per l'esistenza finita del limite equivale a richiedere che tutti i poli di $sY(s)$ abbiano parte reale strettamente negativa:
> $$
> \mathrm{Re}(\lambda_i) < 0 \quad \forall \lambda_i \in \mathrm{Poli}(sY(s))
> $$
> ovvero che $Y(s)$ abbia poli a parte reale strettamente negativa, con al più un polo semplice nell'origine $s = 0$.

### Metodi di Inversione della Trasformata di Laplace

> [!theorem] Formula di Inversione di Bromwich-Mellin
> Sia $Y(s)$ olomorfa nel semipiano $\mathrm{Re}(s) > \sigma_c$, con $\omega \mapsto Y(\gamma + i\omega) \in L^1(\mathbb{R})$ per un fissato $\gamma > \sigma_c$. Allora per ogni $t > 0$:
> $$
> y(t) = \text{v.p.} \frac{1}{2\pi i} \int_{\gamma - i\infty}^{\gamma + i\infty} Y(s) e^{st} \, ds = \lim_{\Omega \to +\infty} \frac{1}{2\pi i} \int_{\gamma - i\Omega}^{\gamma + i\Omega} Y(s) e^{st} \, ds
> $$

> [!quote]- Dimostrazione
> Si richiama la relazione con la trasformata di Fourier continua: $Y(\gamma + i\omega) = \mathcal{F}[y(t)e^{-\gamma t} H(t)](\omega)$. Poiché per ipotesi $Y(\gamma + i\omega) \in L^1(\mathbb{R})$, applicando l'inversione classica di Fourier a $g(t) = y(t)e^{-\gamma t} H(t)$:
> $$
> g(t) = y(t) e^{-\gamma t} H(t) = \frac{1}{2\pi} \int_{-\infty}^{+\infty} Y(\gamma + i\omega) e^{i\omega t} \, d\omega
> $$
> Moltiplicando per $e^{\gamma t}$ per $t > 0$:
> $$
> y(t) = \frac{1}{2\pi} \int_{-\infty}^{+\infty} Y(\gamma + i\omega) e^{(\gamma + i\omega)t} \, d\omega
> $$
> Eseguendo il cambio di variabile complesso $s = \gamma + i\omega$, per cui $ds = i \, d\omega \implies d\omega = \frac{ds}{i}$, gli estremi $\omega \in (-\infty, +\infty)$ tracciano la retta verticale $\mathrm{Re}(s) = \gamma$ da $\gamma - i\infty$ a $\gamma + i\infty$:
> $$
> y(t) = \frac{1}{2\pi i} \int_{\gamma - i\infty}^{\gamma + i\infty} Y(s) e^{st} \, ds \quad \blacksquare
> $$

> [!proposition] Inversione di Funzioni Razionali via Fratti Semplici e Residui di Laurent
> Sia $Y(s) = \frac{N(s)}{D(s)}$ con $\deg(N) < \deg(D)$. Fattorizzando il denominatore con radici distinte $\lambda_1, \dots, \lambda_d$ di molteplicità algebrica $a_1, \dots, a_d$:
> $$
> Y(s) = \frac{N(s)}{(s - \lambda_1)^{a_1} \dots (s - \lambda_d)^{a_d}} = \sum_{k=1}^d \sum_{j=1}^{a_k} \frac{\gamma_{kj}}{(s - \lambda_k)^j}
> $$
> dove i coefficienti $\gamma_{kj}$ corrispondono ai coefficienti della serie di Laurent calcolati analiticamente come:
> - Per poli semplici ($a_k = 1$):
>   $$
>   \gamma_{k, 1} = \mathrm{Res}(Y(s), \lambda_k) = \lim_{s \to \lambda_k} (s - \lambda_k) Y(s)
>   $$
> - Per poli multipli ($a_k > 1$):
>   $$
>   \gamma_{k, a_k} = \lim_{s \to \lambda_k} (s - \lambda_k)^{a_k} Y(s), \qquad \gamma_{k, j} = \frac{1}{(a_k - j)!} \lim_{s \to \lambda_k} \frac{d^{a_k - j}}{ds^{a_k - j}} \left[ (s - \lambda_k)^{a_k} Y(s) \right] \quad (1 \le j < a_k)
>   $$
> Antitrasformando termine a termine per linearità:
> $$
> y(t) = \sum_{k=1}^d \sum_{j=1}^{a_k} \gamma_{kj} \frac{t^{j-1}}{(j-1)!} e^{\lambda_k t} H(t)
> $$

> [!note] Residui Analitici e Coefficienti di Laurent
> Il residuo analitico $\mathrm{Res}(Y(s), \lambda_k)$ coincide sempre con il coefficiente del fratto semplice a potenza unitaria $\gamma_{k, 1}$. La formula con derivata estende tale operazione per generare in modo univoco tutti i coefficienti $\gamma_{k, j}$ ($1 \le j \le a_k$) della serie di Laurent.

## 11.3. La Trasformata $\mathcal{Z}$

### Definizione e Connessione con le Serie di Laurent

> [!definition] Trasformata $\mathcal{Z}$ Bilaterale e Unilaterale
> Sia $x = \{x_k\}_{k \in \mathbb{Z}}$ una successione complessa. Si definisce **trasformata $\mathcal{Z}$ bilaterale** la serie di potenze complesse:
> $$
> X(z) := \mathcal{Z}[x_k] := \sum_{k=-\infty}^{+\infty} x_k z^{-k} \qquad (z = \rho e^{i\omega} \in \mathbb{C})
> $$
> Se la successione è causale ($x_k = 0$ per ogni $k < 0$), si definisce **trasformata $\mathcal{Z}$ unilaterale**:
> $$
> X(z) := \sum_{k=0}^{+\infty} x_k z^{-k}
> $$

> [!definition] Regione di Convergenza (ROC) della Trasformata Zeta
> Si definisce **ROC** della trasformata Zeta la corona circolare aperta del piano complesso:
> $$
> \mathrm{ROC} = \{ z \in \mathbb{C} \mid R_- < |z| < R_+ \}
> $$
> dove:
> $$
> R_- := \limsup_{k \to +\infty} |x_k|^{1/k}, \qquad R_+ := \frac{1}{\limsup_{k \to +\infty} |x_{-k}|^{1/k}}
> $$
> All'interno della ROC, $X(z)$ è una funzione olomorfa.

> [!quote]- Dimostrazione della Struttura Anulare della ROC
> Scomponendo la serie di Laurent bilaterale in parte causale (regolare in $w = z^{-1}$) e parte anticausale (serie di potenze classica in $z$):
> $$
> X(z) = \sum_{k=0}^{+\infty} x_k z^{-k} + \sum_{k=1}^{+\infty} x_{-k} z^k
> $$
> 1. **Parte causale:** ponendo $w = z^{-1}$, si ottiene la serie di potenze $\sum_{k=0}^\infty x_k w^k$. Dal teorema di Cauchy-Hadamard, il raggio di convergenza nel piano $w$ è dato da $\rho_w = \frac{1}{\limsup_{k \to +\infty} |x_k|^{1/k}} = \frac{1}{R_-}$. Dunque la serie converge per $|w| < \frac{1}{R_-} \iff |z| > R_-$.
> 2. **Parte anticausale:** è una serie di potenze classica $\sum_{k=1}^\infty x_{-k} z^k$, con raggio di convergenza $R_+ = \frac{1}{\limsup_{k \to +\infty} |x_{-k}|^{1/k}}$, convergente per $|z| < R_+$.
> 
> Intersecando i due domini, l'insieme di convergenza non vuoto esiste se e solo se $R_- < R_+$, generando la corona circolare aperta $\mathrm{ROC} = \{ z \in \mathbb{C} \mid R_- < |z| < R_+ \}$. $\blacksquare$

> [!note] ROC per Segnali Causali
> Per successioni causali ($x_k = 0$ per ogni $k < 0$), si ha $R_+ = +\infty$, quindi la ROC coincide con l'esterno del disco chiuso:
> $$
> \mathrm{ROC} = \{z \in \mathbb{C} \mid |z| > R_-\}
> $$

> [!note] Connessione Radiale con la DTFT
> Se la successione causale $\{x_k\}$ appartiene a $\ell^1(\mathbb{Z})$ ($R_- < 1$) o $\ell^2(\mathbb{Z})$ ($R_- \le 1$), calcolando il limite radiale per $\rho \to 1^+$:
> $$
> \lim_{\rho \to 1^+} \mathcal{Z}[x_k] = \lim_{\rho \to 1^+} X(\rho e^{i\omega}) = X(e^{i\omega}) = \sum_{k=0}^{+\infty} x_k e^{-i\omega k} = \mathcal{F}_{\text{DT}}[x_k]
> $$
> La DTFT è la traccia al bordo unitario $|z| = 1$ della trasformata $\mathcal{Z}$.

### Trasformate dei Modi Naturali Discreti

> [!proposition] Trasformate dei Modi Elementari Discreti
> 1. **Modo esponenziale geometrico ($\lambda \in \mathbb{C}$):**
>    $$
>    \mathcal{Z}[\lambda^k H(k)] = \frac{z}{z - \lambda} \qquad (\mathrm{ROC}: |z| > |\lambda|)
>    $$
> 2. **Modo esponenziale-polinomiale (rampa discreta):**
>    $$
>    \mathcal{Z}[k \lambda^{k-1} H(k)] = \frac{z}{(z - \lambda)^2} \qquad (\mathrm{ROC}: |z| > |\lambda|)
>    $$
>    e per un modo polinomiale generico di ordine $n$: $\mathcal{Z}[x_{\text{pol}, n}(k)] = \frac{z}{(z - \lambda)^n}$.
> 3. **Modi trigonometrici discreti ($\lambda = e^{\pm i\omega_0}$):**
>    $$
>    \mathcal{Z}[\cos(\omega_0 k) H(k)] = \frac{z(z - \cos\omega_0)}{z^2 - 2\cos\omega_0 z + 1}, \qquad \mathcal{Z}[\sin(\omega_0 k) H(k)] = \frac{z \sin\omega_0}{z^2 - 2\cos\omega_0 z + 1} \qquad (|z| > 1)
>    $$
> 4. **Delta di Kronecker:**
>    $$
>    \mathcal{Z}[\delta(k)] = 1 \qquad (\mathrm{ROC}: \mathbb{C} \setminus \{0\})
>    $$

> [!quote]- Dimostrazione
> 1. **Modo esponenziale:**
>    $$
>    X(z) = \sum_{k=0}^{+\infty} \lambda^k z^{-k} = \sum_{k=0}^{+\infty} (\lambda z^{-1})^k
>    $$
>    che è la serie geometrica di ragione $q = \lambda z^{-1}$. Essa converge se e solo se $|q| < 1 \iff |z| > |\lambda|$, con somma $\frac{1}{1 - \lambda z^{-1}} = \frac{z}{z - \lambda}$.
> 2. **Modo esponenziale polinomiale:**
>    Si osserva che $k \lambda^{k-1} = \frac{d}{d\lambda} (\lambda^k)$. Invertendo serie e derivata:
>    $$
>    \mathcal{Z}[k \lambda^{k-1} H(k)] = \sum_{k=0}^{+\infty} \frac{d}{d\lambda}(\lambda^k) z^{-k} = \frac{d}{d\lambda} \left( \sum_{k=0}^{+\infty} \lambda^k z^{-k} \right) = \frac{d}{d\lambda}\left( \frac{z}{z - \lambda} \right) = \frac{z}{(z - \lambda)^2}
>    $$
> 3. **Modi trigonometrici:**
>    Applicando la formula di Eulero con $\lambda = e^{\pm i\omega_0}$ e sommando le frazioni algebriche.
> 4. **Delta di Kronecker:**
>    $$
>    \mathcal{Z}[\delta(k)] = \sum_{k=0}^{+\infty} \delta(k) z^{-k} = 1 \cdot z^0 = 1 \quad \blacksquare
>    $$

> [!note] Caso Particolare: Gradino Unitario Discreto
> Per $\lambda = 1$ nel modo esponenziale discreto si ottiene la trasformata del gradino unitario:
> $$
> \mathcal{Z}[H(k)] = \frac{z}{z - 1} \qquad (\mathrm{ROC}: |z| > 1)
> $$

### Proprietà Operatoriali della Trasformata $\mathcal{Z}$

> [!proposition] Linearità ed Olomorfia
> 1. $\mathcal{Z}[\alpha x + \beta y] = \alpha \mathcal{Z}[x] + \beta \mathcal{Z}[y] \quad \forall \alpha, \beta \in \mathbb{C}$.
> 2. $X(z)$ è olomorfa in tutto l'interno della sua regione di convergenza (ROC) per la convergenza totale delle serie di Laurent sui compatti.

> [!definition] Convoluzione Discreta Causale
> Si definisce **convoluzione discreta** di due successioni causali $x, y$ la successione:
> $$
> (x * y)_n := \sum_{k=0}^n x_k y_{n-k}
> $$

> [!theorem] Teorema della Convoluzione Discreta
> Se $X(z)$ e $Y(z)$ hanno raggi di convergenza $\rho_x$ e $\rho_y$, allora:
> $$
> \mathcal{Z}[(x * y)_n] = X(z) \cdot Y(z) \qquad (\mathrm{ROC}: |z| > \max(\rho_x, \rho_y))
> $$

> [!definition] Operatori di Shift Temporale
> Sia data una successione causale $x = \{x_k\}_{k=0}^\infty$. Si definiscono:
> 1. **Operatore di shift destro (ritardo causale $S_R$):**
>    $$
>    S_R x_k := x_{k-1} H(k-1) = (0, x_0, x_1, x_2, \dots)
>    $$
> 2. **Operatore di shift sinistro (anticipo temporale $S_L$):**
>    $$
>    S_L x_k := x_{k+1} = (x_1, x_2, x_3, \dots)
>    $$

> [!theorem] Trasformata dello Shift Temporale
> 1. **Shift destro:**
>    $$
>    \mathcal{Z}[S_R x] = \mathcal{Z}[x_{k-1} H(k-1)] = z^{-1} X(z)
>    $$
> 2. **Shift sinistro:**
>    $$
>    \mathcal{Z}[S_L x] = \mathcal{Z}[x_{k+1}] = z X(z) - z x_0
>    $$

> [!quote]- Dimostrazione
> 1. **Shift destro:**
>    $$
>    \mathcal{Z}[x_{k-1} H(k-1)] = \sum_{k=1}^{+\infty} x_{k-1} z^{-k} = z^{-1} \sum_{m=0}^{+\infty} x_m z^{-m} = z^{-1} X(z)
>    $$
> 2. **Shift sinistro:**
>    $$
>    \mathcal{Z}[x_{k+1}] = \sum_{k=0}^{+\infty} x_{k+1} z^{-k} = z \sum_{m=1}^{+\infty} x_m z^{-m} = z \left( \sum_{m=0}^{+\infty} x_m z^{-m} - x_0 \right) = z X(z) - z x_0 \quad \blacksquare
>    $$

> [!proposition] Funzione di Trasferimento dell'Integratore a Tempo Discreto
> Un accumulatore/integratore a tempo discreto soddisfa l'equazione dinamica $x(k+1) = x(k) + u(k)$ con uscita $y(k) = x(k)$. A condizioni iniziali nulle ($x_0 = 0$):
> $$
> z X(z) - X(z) = U(z) \implies (z - 1)X(z) = U(z) \implies G(z) = \frac{X(z)}{U(z)} = \frac{1}{z - 1}
> $$

> [!note] Confronto tra Integratori Continuo e Discreto
> A tempo continuo l'integratore ideale ammette funzione di trasferimento $G(s) = \frac{1}{s}$ con polo critico sull'asse immaginario $\mathrm{Re}(s) = 0$.
> A tempo discreto l'accumulatore ideale ammette funzione di trasferimento $G(z) = \frac{1}{z-1}$ con polo critico sulla circonferenza unitaria al punto $z = 1$.

### Metodi di Inversione Discreta

> [!theorem] Formula di Inversione di Bromwich Discreta (Residui di Laurent)
> I coefficienti della successione temporale $\{x_k\}_{k \in \mathbb{Z}}$ si ricavano mediante l'integrale curvilineo lungo una curva chiusa semplice $\Gamma \subset \mathrm{ROC}$ che racchiude l'origine:
> $$
> x_k = \frac{1}{2\pi i} \oint_{\Gamma} X(z) z^{k-1} \, dz = \sum_{\lambda_j \in \mathrm{Int}(\Gamma)} \mathrm{Res}\left( X(z) z^{k-1}, \lambda_j \right)
> $$
> In particolare, al variare di $k$:
> - per $k > 0$, il fattore $z^{k-1}$ è regolare in $z = 0$;
> - per $k = 0$, $X(z)z^{-1} = \frac{X(z)}{z}$ introduce un polo nell'origine (se $X(0) \neq 0$);
> - per $k < 0$, il termine $z^{k-1} = z^{-(|k|+1)}$ introduce un polo di ordine elevato nell'origine.

> [!quote]- Dimostrazione
> Sostituendo la serie di Laurent $X(z) = \sum_{m=-\infty}^{+\infty} x_m z^{-m}$, uniformemente convergente su $\Gamma$:
> $$
> \oint_\Gamma X(z) z^{k-1} \, dz = \sum_{m=-\infty}^{+\infty} x_m \oint_\Gamma z^{k - m - 1} \, dz
> $$
> Per il teorema di integrazione complessa dei monomi, $\oint_\Gamma z^p \, dz = 2\pi i \delta_{p,-1}$. L'unico termine non nullo è per $k - m - 1 = -1 \iff m = k$:
> $$
> \oint_\Gamma X(z) z^{k-1} \, dz = 2\pi i x_k \implies x_k = \frac{1}{2\pi i} \oint_\Gamma X(z) z^{k-1} \, dz \quad \blacksquare
> $$

> [!proposition] Antitrasformazione via Decomposizione in Fratti di $X(z)/z$
> Sia $X(z) = \frac{N(z)}{D(z)} = \frac{N(z)}{(z - \lambda_1)^{a_1} \dots (z - \lambda_d)^{a_d}}$ una funzione razionale fratta causale.
> Per evitare la comparsa di termini ritardati $H(k-1)$ nell'antitrasformata, si decompone in fratti semplici la funzione ausiliaria $F(z) := \frac{X(z)}{z}$:
> $$
> \frac{X(z)}{z} = \frac{B_0}{z} + \sum_{i=1}^d \frac{B_i}{z - \lambda_i}
> $$
> dove $B_i = \mathrm{Res}\left( \frac{X(z)}{z}, \lambda_i \right) = \lim_{z \to \lambda_i} (z - \lambda_i) \frac{X(z)}{z}$.
> Moltiplicando ambo i membri per $z$:
> $$
> X(z) = B_0 + \sum_{i=1}^d B_i \frac{z}{z - \lambda_i}
> $$
> Antitrasformando termine a termine per linearità:
> $$
> x_k = B_0 \delta(k) + \sum_{i=1}^d B_i \lambda_i^k H(k)
> $$
