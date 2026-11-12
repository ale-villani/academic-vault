---
title: "Equazioni Differenziali Ordinarie Scalari"
domain: "math/differential-equations"
source_course: "Analisi 2 (Cap. 5)"
tags:
  - math/ode/scalar-ode
  - math/ode/cauchy-lipschitz
---

# 5. Equazioni Differenziali Ordinarie (ODE)

## 5.1. Introduzione e classificazione delle ODE

### Classificazione generale

Le equazioni differenziali ordinarie esprimono relazioni di uguaglianza tra una funzione incognita reale $y(t)$ e un numero finito di sue derivate:
$$
F(t, y(t), y'(t), y''(t), \dots, y^{(n)}(t)) = 0
$$
dove:
- $t \in I \subseteq \mathbb{R}$ è la variabile indipendente,
- $y: I \to \mathbb{R}$ è la funzione incognita,
- $F: \Omega \subseteq \mathbb{R}^{n+2} \to \mathbb{R}$ è una funzione assegnata.

> [!definition] Equazione differenziale ordinaria (ODE)
> Un'equazione differenziale si dice **ordinaria** (O.D.E., *Ordinary Differential Equation*) se la funzione incognita dipende da una sola variabile reale indipendente, implicando che compaiano esclusivamente derivate ordinarie.

> [!definition] Ordine dell'equazione differenziale
> Si definisce **ordine** dell'equazione differenziale il massimo ordine di derivazione della funzione incognita che compare nell'equazione.

> [!definition] Forma normale
> Un'equazione differenziale ordinaria di ordine $n$ si dice in **forma normale** se la derivata di ordine massimo $y^{(n)}$ è esplicitata in funzione delle derivate di ordine inferiore e della variabile indipendente:
> $$
> y^{(n)}(t) = f(t, y(t), y'(t), \dots, y^{(n-1)}(t))
> $$

> [!definition] Soluzione classica
> Una funzione $y: I \subseteq \mathbb{R} \to \mathbb{R}$, con $y \in C^n(I)$, è detta **soluzione classica** dell'equazione differenziale se soddisfa identicamente l'equazione per ogni $t \in I$:
> $$
> F(t, y(t), y'(t), \dots, y^{(n)}(t)) = 0, \quad \forall t \in I
> $$

> [!definition] Integrale generale e integrale particolare
> - Si definisce **integrale generale** dell'equazione differenziale l'insieme $\mathcal{I}$ di tutte e sole le sue soluzioni:
>   $$
>   \mathcal{I} = \left\{ y: I \to \mathbb{R} : F(t, y(t), \dots, y^{(n)}(t)) = 0, \; \forall t \in I \right\}
>   $$
> - Si dice **integrale particolare** una specifica funzione appartenente all'integrale generale $\mathcal{I}$.

> [!example] Esempi
> 1. Consideriamo l'equazione del primo ordine:
>    $$
>    y' = 0 \implies y(t) = c, \quad c \in \mathbb{R}
>    $$
>    Si ha $\mathrm{card}(\mathcal{I}) = \mathrm{card}(\mathbb{R})$, ossia una famiglia $\infty^1$ di soluzioni dipendente da una costante arbitraria. La funzione $y(t) = 2$ è una soluzione particolare.
> 2. Consideriamo l'equazione del secondo ordine:
>    $$
>    y'' = 0 \implies y'(t) = c \implies y(t) = c t + d, \quad c, d \in \mathbb{R}
>    $$
>    L'integrale generale dipende da 2 parametri liberi, fornendo $\infty^2$ soluzioni.

> [!theorem] Dipendenza dai parametri dell'integrale generale
> In generale, l'integrale generale di un'equazione differenziale ordinaria di ordine $n$ dipende da $n$ parametri arbitrari indipendenti, determinando una famiglia di soluzioni a $\infty^n$ gradi di libertà.
>
### Problema di Cauchy

> [!definition] Problema di Cauchy
> Sia $y^{(n)}(t) = f(t, y, y', \dots, y^{(n-1)})$ un'equazione differenziale ordinaria di ordine $n$ in forma normale. Fissato un punto $t_0 \in I$ e assegnati i valori iniziali $y_0, y_1, \dots, y_{n-1} \in \mathbb{R}$, si definisce **problema di Cauchy** (o problema ai valori iniziali) il sistema composto dall'equazione differenziale e da $n$ condizioni iniziali:
> $$
> \begin{cases}
> y^{(n)}(t) = f(t, y(t), y'(t), \dots, y^{(n-1)}(t)) \\
> y(t_0) = y_0 \\
> y'(t_0) = y_1 \\
> \vdots \\
> y^{(n-1)}(t_0) = y_{n-1}
> \end{cases}
> $$

> [!example] Esempio fisico: Caduta di un grave nel vuoto senza attrito
> Consideriamo la caduta verticale di un punto materiale di massa $m$ soggetto alla sola forza di gravità, rilasciato da fermo da una quota iniziale $h$ al tempo $t = 0$:
> $$
> \begin{cases}
> m y'' = m g \\
> y(0) = h \\
> y'(0) = 0
> \end{cases}
> $$
> Semplificando la massa $m$ e integrando successivamente:
> $$
> y'(t) = g t + c_1 \implies y(t) = \frac{1}{2} g t^2 + c_1 t + c_2
> $$
> Imponendo le condizioni iniziali a $t = 0$:
> $$
> \begin{cases}
> y(0) = c_2 = h \\
> y'(0) = c_1 = 0
> \end{cases}
> \implies y(t) = h + \frac{1}{2} g t^2
> $$
>

## 5.2. Equazioni differenziali a variabili separabili

> [!definition] ODE a variabili separabili
> Si dice equazione differenziale ordinaria del primo ordine a **variabili separabili** un'equazione in forma normale della forma:
> $$
> y'(t) = f(t) g(y)
> $$
> dove $f: I \subseteq \mathbb{R} \to \mathbb{R}$ e $g: J \subseteq \mathbb{R} \to \mathbb{R}$ sono funzioni continue sui rispettivi intervalli $I$ e $J$.

> [!example] Esempio motivazionale: Caduta con attrito viscoso
> Dalla seconda legge della dinamica per un corpo di massa $m$ in caduta soggetto alla gravità e a una forza di resistenza aerodinamica viscosa proporzionale alla velocità ($F_{\text{attrito}} = -\lambda \dot{x}$):
> $$
> m \ddot{x} = m g - \lambda \dot{x}
> $$
> Ponendo la velocità $v := \dot{x}$, l'equazione del secondo ordine si riduce a un'ODE del primo ordine per $v(t)$:
> $$
> \dot{v} = g - \frac{\lambda}{m} v
> $$
> Tale equazione è a variabili separabili ponendo $g(v) = g - \frac{\lambda}{m} v$ e $f(t) = 1$ per ogni $t$.
>

### Metodo di risoluzione per equazioni a variabili separabili

Data l'equazione differenziale $y'(t) = f(t) g(y)$:

**Passo 1: Ricerca delle soluzioni costanti (stazionarie)**
Cerchiamo eventuali soluzioni stazionarie della forma $y(t) = c$ costanti per ogni $t \in I$:
$$
y(t) = c \iff y'(t) = 0 \iff f(t) g(c) = 0, \; \forall t \iff g(c) = 0
$$
Dunque, ogni radice reale $c$ dell'equazione algebrica $g(c) = 0$ genera una soluzione costante $y(t) = c$ identicamente valida per ogni $t \in I$.

**Passo 2: Ricerca delle soluzioni non costanti (separazione delle variabili)**
Sia $y_0 \in J$ tale che $g(y_0) \ne 0$. Per il teorema di permanenza del segno, $g(y) \ne 0$ in un intorno di $y_0$. Possiamo quindi dividere entrambi i membri per $g(y)$:
$$
\frac{y'(t)}{g(y(t))} = f(t)
$$
Integrando ambo i membri rispetto a $t$:
$$
\int \frac{y'(t)}{g(y(t))} \, dt = \int f(t) \, dt
$$
Effettuando il cambio di variabile $y = y(t)$ a primo membro (per cui $dy = y'(t) \, dt$):
$$
\int \frac{1}{g(y)} \, dy = \int f(t) \, dt
$$
Sia $G(y)$ una primitiva di $\frac{1}{g(y)}$ e $F(t)$ una primitiva di $f(t)$. L'integrazione porta all'equazione in forma implicita:
$$
G(y) = F(t) + c
$$
Se la funzione $G$ è invertibile, si esplicita la soluzione $y(t)$:
$$
y(t) = G^{-1}(F(t) + c)
$$

**Risoluzione analitica del moto con attrito viscoso:**
Riprendiamo l'equazione differenziale $\dot{v} = g - \frac{\lambda}{m} v$:
1. **Soluzione stazionaria:**
   $$
   \dot{v} = 0 \iff g - \frac{\lambda}{m} v = 0 \implies v(t) = \frac{m g}{\lambda}, \quad \forall t
   $$
   che rappresenta la velocità limite di regime.
2. **Soluzioni non costanti:**
   Separando le variabili:
   $$
   \int \frac{dv}{g - \frac{\lambda}{m} v} = \int dt
   $$
   Calcolando l'integrale a primo membro:
   $$
   -\frac{m}{\lambda} \log \left| g - \frac{\lambda}{m} v \right| = t + c
   $$
   Moltiplicando per $-\frac{\lambda}{m}$:
   $$
   \log \left| g - \frac{\lambda}{m} v \right| = -\frac{\lambda}{m} (t + c) = -\frac{\lambda}{m} t + c'
   $$
   Passando all'esponenziale:
   $$
   \left| g - \frac{\lambda}{m} v \right| = e^{-\frac{\lambda}{m} t + c'} = k e^{-\frac{\lambda}{m} t}, \quad k > 0
   $$
   Sciogliendo il valore assoluto ponendo $\pm k = h \ne 0$:
   $$
   g - \frac{\lambda}{m} v = h e^{-\frac{\lambda}{m} t} \implies \frac{\lambda}{m} v = g - h e^{-\frac{\lambda}{m} t}
   $$
   Moltiplicando per $\frac{m}{\lambda}$ e ridefinendo la costante $C = -\frac{m}{\lambda} h \in \mathbb{R} \setminus \{0\}$:
   $$
   v(t) = \frac{m g}{\lambda} + C e^{-\frac{\lambda}{m} t}
   $$
   Notiamo che per $C = 0$ si ritrova esattamente la soluzione stazionaria $v(t) = \frac{m g}{\lambda}$, che viene quindi inglobata nella famiglia generale per ogni $C \in \mathbb{R}$.

Imponendo la condizione iniziale del problema di Cauchy con velocità iniziale $v(0) = v_0$:
$$
v(0) = v_0 \implies v_0 = \frac{m g}{\lambda} + C \implies C = v_0 - \frac{m g}{\lambda}
$$
Sostituendo il valore di $C$, si ricava la legge di velocità per ogni istante $t \ge 0$:
$$
v(t) = \frac{m g}{\lambda} + \left( v_0 - \frac{m g}{\lambda} \right) e^{-\frac{\lambda}{m} t}
$$

> [!example] Esempio di studio dell'intervallo massimale
> Risolvere l'equazione differenziale a variabili separabili:
> $$
> y' = \frac{4t^3}{y}
> $$
> 1. **Soluzioni costanti:**
>    $$
>    y' = 0 \iff \frac{4t^3}{y} = 0, \quad \forall t
>    $$
>    Non esistono valori costanti di $y$ che annullino l'espressione identicamente per ogni $t$, dunque non vi sono soluzioni costanti.
> 2. **Separazione delle variabili:**
>    Moltiplicando per $y$ (sotto l'ipotesi $y \ne 0$):
>    $$
>    y y' = 4t^3 \implies \int y y' \, dt = \int 4t^3 \, dt \implies \int y \, dy = \int 4t^3 \, dt
>    $$
>    Eseguendo le integrazioni:
>    $$
>    \frac{y^2}{2} = t^4 + c_1 \implies y^2(t) = 2t^4 + c, \quad c \in \mathbb{R}
>    $$
>    Estraendo la radice quadrata e distinguendo il segno della funzione $y$:
>    $$
>    y(t) = \begin{cases}
>    \sqrt{2t^4 + c} & \text{se } y > 0 \\
>    -\sqrt{2t^4 + c} & \text{se } y < 0
>    \end{cases}
>    $$

> [!warning] Intervallo massimale di esistenza e condizione di realtà
> Poiché l'equazione originaria impone la condizione $y \ne 0$, entrambe le famiglie di rami di soluzione sono definite esclusivamente per i valori di $t \in \mathbb{R}$ tali per cui il radicando sia strettamente positivo:
> $$
> 2t^4 + c > 0 \iff t^4 > -\frac{c}{2}
> $$
> L'intervallo di definizione (intervallo massimale) dipende dal valore della costante $c$:
> - **Caso $c > 0$:** la condizione $2t^4 + c > 0$ è verificata $\forall t \in \mathbb{R}$. La soluzione è globale su tutto l'asse reale $\mathbb{R}$.
> - **Caso $c = 0$:** si richiede $2t^4 > 0 \iff t \ne 0$. Le soluzioni sono definite separatamente su $(-\infty, 0)$ oppure su $(0, +\infty)$.
> - **Caso $c < 0$:** ponendo $c = -|c|$, la disequazione diventa $t^4 > \frac{|c|}{2} \iff |t| > \sqrt[4]{\frac{|c|}{2}}$. Le soluzioni sono definite su ciascuno dei due semiasse aperti $\left(-\infty, -\sqrt[4]{\frac{|c|}{2}}\right)$ o $\left(\sqrt[4]{\frac{|c|}{2}}, +\infty\right)$.
>
Nel caso di un problema di Cauchy associato all'equazione a variabili separabili considerata in precedenza:

$$
\begin{cases}
y' = \dfrac{4t^3}{y} \\
y(0) = y_0 = 2
\end{cases}
$$

Poiché $y_0 = 2 > 0$, il dato iniziale seleziona univocamente il ramo positivo della famiglia di soluzioni:
$$
y(t) = \sqrt{2t^4 + C}
$$
Imponendo la condizione iniziale:
$$
2 = y(0) = \sqrt{C} \implies C = 4
$$
Si ottiene la soluzione locale del problema di Cauchy:
$$
y(t) = \sqrt{2t^4 + 4}
$$
Poiché $2t^4 + 4 \ge 4 > 0$ per ogni $t \in \mathbb{R}$, l'argomento della radice non si annulla mai e la soluzione è prolungabile globalmente su tutto $\mathbb{R}$:
$$
t \in (-\infty, +\infty)
$$

## 5.3. Equazioni differenziali lineari del primo ordine e circuiti RL

### Definizione e forma canonica

> [!definition] Equazione differenziale ordinaria lineare del I ordine
> Un'equazione differenziale ordinaria del primo ordine si dice **lineare** se si presenta nella forma:
> $$
> y'(t) = p(t) y(t) + q(t)
> $$
> o equivalentemente:
> $$
> y'(t) - p(t) y(t) = q(t)
> $$
> dove $p, q: I \to \mathbb{R}$ sono funzioni continue sull'intervallo $I \subseteq \mathbb{R}$ ($p, q \in C^0(I)$).
> - Se $q(t) \equiv 0$ per ogni $t \in I$, l'equazione è detta **omogenea**.
> - Se $q(t) \not\equiv 0$, l'equazione è detta **completa** (o non omogenea), e $q(t)$ è detto termine noto o forzante.

> [!example] Esempio fisico (Circuito RL serie)
> Consideriamo un circuito elettrico costituito da un'induttanza $L$ e da una resistenza $R$ collegate in serie ad un generatore di tensione $E(t)$. Applicando la legge di Kirchhoff alle maglie:
> $$
> L \frac{dI}{dt} + R I = E(t)
> $$
> dove $I(t)$ è l'intensità di corrente. Posto $p(t) = -\frac{R}{L}$ e $q(t) = \frac{E(t)}{L}$, l'equazione rientra esattamente nella classe delle ODE lineari del primo ordine.
>

### Metodo risolutivo e fattore integrante

Come si risolve un'equazione differenziale lineare del primo ordine?

**Passo 1: Definizione dell'operatore differenziale lineare**
Possiamo definire l'operatore differenziale:
$$
\mathcal{L}: C^1(I) \longrightarrow C^0(I)
$$
tale che:
$$
\mathcal{L}(y) = y'(t) - p(t) y(t)
$$
L'operatore $\mathcal{L}$ è lineare, ovvero per ogni $\alpha, \beta \in \mathbb{R}$ e per ogni $y, z \in C^1(I)$:
$$
\mathcal{L}(\alpha y + \beta z) = \alpha \mathcal{L}(y) + \beta \mathcal{L}(z)
$$

**Passo 2: Risoluzione dell'equazione omogenea associata**
Consideriamo l'equazione omogenea ($q(t) \equiv 0$ per ogni $t \in I$):
$$
y'(t) = p(t) y(t)
$$
Questa è un'equazione a variabili separabili (che ammette sempre la soluzione stazionaria $y(t) \equiv 0$).
Sia $P(t)$ una primitiva di $p(t)$, ossia:
$$
P(t) = \int p(t) \, dt \implies P'(t) = p(t)
$$
Allora, dall'Analisi 1, una soluzione particolare non banale dell'equazione omogenea è data da:
$$
y(t) = e^{P(t)}
$$
Infatti, derivando:
$$
y'(t) = \frac{d}{dt}\left( e^{P(t)} \right) = P'(t) e^{P(t)} = p(t) e^{P(t)} = p(t) y(t)
$$

**Passo 3: Metodo del fattore integrante per l'equazione completa**
Riscriviamo l'equazione completa nella forma:
$$
y'(t) - p(t) y(t) = q(t)
$$
Moltiplichiamo entrambi i membri dell'equazione per la quantità non nulla:
$$
\frac{1}{e^{P(t)}} = e^{-P(t)} \ne 0
$$
Si ottiene:
$$
e^{-P(t)} y'(t) - p(t) e^{-P(t)} y(t) = q(t) e^{-P(t)}
$$
Riconosciamo al primo membro l'esatta derivata del prodotto di funzioni:
$$
\frac{d}{dt} \left[ e^{-P(t)} y(t) \right] = e^{-P(t)} y'(t) + \left( -P'(t) e^{-P(t)} \right) y(t) = e^{-P(t)} y'(t) - p(t) e^{-P(t)} y(t)
$$
L'equazione si riscrive dunque in forma esatta:
$$
\left( e^{-P(t)} y(t) \right)' = q(t) e^{-P(t)}
$$
Integrando entrambi i membri rispetto a $t$:
$$
e^{-P(t)} y(t) = \int q(t) e^{-P(t)} \, dt + C, \quad C \in \mathbb{R}
$$
Moltiplicando ambo i membri per $e^{P(t)}$, otteniamo l'**integrale generale** dell'equazione lineare:
$$
y(t) = e^{P(t)} \left[ C + \int q(t) e^{-P(t)} \, dt \right]
$$

### Formula per il problema di Cauchy

**Passo 4: Applicazione delle condizioni iniziali di Cauchy**
Consideriamo il problema di Cauchy:
$$
\begin{cases}
y'(t) = p(t) y(t) + q(t) \\
y(t_0) = y_0
\end{cases}
$$
con $t_0 \in I$. Scegliamo come primitiva specifica la funzione integrale con punto base fissato in $t_0$:
$$
P(t) = \int_{t_0}^t p(\tau) \, d\tau \implies P(t_0) = \int_{t_0}^{t_0} p(\tau) \, d\tau = 0
$$
Scrivendo l'integrale definito da $t_0$ a $t$:
$$
y(t) = e^{P(t)} \left[ y_0 + \int_{t_0}^t q(\tau) e^{-P(\tau)} \, d\tau \right]
$$
Infatti, valutando la soluzione in $t = t_0$:
$$
y(t_0) = e^{P(t_0)} \left[ y_0 + \int_{t_0}^{t_0} q(\tau) e^{-P(\tau)} \, d\tau \right] = e^0 [ y_0 + 0 ] = y_0
$$

> [!theorem] Formula risolutiva generale per ODE lineari del I ordine
> La soluzione unica del problema di Cauchy:
> $$
> \begin{cases}
> y'(t) = p(t) y(t) + q(t) \\
> y(t_0) = y_0
> \end{cases}
> $$
> con $p, q \in C^0(I)$ e $t_0 \in I$, è data esplicitamente da:
> $$
> y(t) = e^{P(t)} \left\{ y_0 + \int_{t_0}^t q(\tau) e^{-P(\tau)} \, d\tau \right\}
> $$
> con:
> $$
> P(t) = \int_{t_0}^t p(\tau) \, d\tau
> $$

> [!note] Osservazione sull'intervallo massimale di definizione
> Per le equazioni differenziali lineari del primo ordine con coefficienti continui su un intervallo $I \subseteq \mathbb{R}$, la soluzione $y(t)$ è definita su **tutto** l'intervallo $I$. In particolare, se $p$ e $q$ sono continue su tutto $\mathbb{R}$, la soluzione è definita per ogni $t \in \mathbb{R}$ (non si verifica mai il fenomeno di blow-up in tempo finito).
>
### Esempi applicativi: Circuiti RL

> [!example] Esempio 1 (Circuito RL con forzante costante)
> Consideriamo l'equazione del circuito RL con tensione continua:
> $$
> L \dot{I} + R I = E_0 R, \quad I(0) = I_0
> $$
> dove $E_0 R$ rappresenta la tensione applicata (tarata in modo che la corrente asintotica a regime sia $E_0$).
> Esplicitiamo la derivata prima in forma normale:
> $$
> \dot{I} = -\frac{R}{L} I + \frac{E_0 R}{L}
> $$
> 1. Risolviamo l'omogenea associata:
>    $$
>    \dot{I} = -\frac{R}{L} I
>    $$
>    Calcoliamo la funzione integrale esponente:
>    $$
>    P(t) = \int_0^t \left( -\frac{R}{L} \right) d\tau = -\frac{R}{L} t
>    $$
>    La soluzione dell'omogenea è proporzionale a $e^{-\frac{R}{L} t}$.
> 2. Moltiplichiamo l'equazione completa per il fattore integrante $e^{-P(t)} = e^{\frac{R}{L} t}$:
>    $$
>    e^{\frac{R}{L} t} \dot{I} + \frac{R}{L} e^{\frac{R}{L} t} I = \frac{E_0 R}{L} e^{\frac{R}{L} t}
>    $$
>    Riconosciamo la derivata del prodotto:
>    $$
>    \left( e^{\frac{R}{L} t} I \right)' = \frac{E_0 R}{L} e^{\frac{R}{L} t}
>    $$
> 3. Integriamo ambo i membri:
>    $$
>    e^{\frac{R}{L} t} I(t) = \int_0^t \frac{E_0 R}{L} e^{\frac{R}{L} \tau} \, d\tau + C = E_0 \int_0^t \frac{R}{L} e^{\frac{R}{L} \tau} \, d\tau + C = E_0 e^{\frac{R}{L} t} + C
>    $$
>    Moltiplicando per $e^{-\frac{R}{L} t}$:
>    $$
>    I(t) = E_0 + C e^{-\frac{R}{L} t}
>    $$
> 4. Imponiamo la condizione iniziale $I(0) = I_0$:
>    $$
>    I(0) = E_0 + C = I_0 \implies C = I_0 - E_0
>    $$
>    La soluzione finale è:
>    $$
>    I(t) = E_0 + (I_0 - E_0) e^{-\frac{R}{L} t}
>    $$
>
[!example] Esempio 2 (Circuito RL con forzante sinusoidale alternata)
> Consideriamo l'equazione:
> $$
> L \dot{I} + R I = E_0 R \cos(\omega t)
> $$
> Riscriviamo in forma normale:
> $$
> \dot{I} + \frac{R}{L} I = \frac{E_0 R}{L} \cos(\omega t)
> $$
> Moltiplicando per il fattore integrante $e^{\frac{R}{L} t}$:
> $$
> e^{\frac{R}{L} t} \dot{I} + \frac{R}{L} e^{\frac{R}{L} t} I = \frac{E_0 R}{L} e^{\frac{R}{L} t} \cos(\omega t)
> \left( e^{\frac{R}{L} t} I \right)' = \frac{E_0 R}{L} e^{\frac{R}{L} t} \cos(\omega t)
> $$
> Integrando:
> $$
> e^{\frac{R}{L} t} I(t) = C + E_0 \int \frac{R}{L} e^{\frac{R}{L} t} \cos(\omega t) \, dt
> $$
> Calcoliamo l'integrale per parti due volte in modo ciclico:
> $$
> \int \frac{R}{L} e^{\frac{R}{L} t} \cos(\omega t) \, dt
> $$
> Poniamo:
> - $f(t) = \cos(\omega t) \implies f'(t) = -\omega \sin(\omega t)$
> - $g'(t) = \frac{R}{L} e^{\frac{R}{L} t} \implies g(t) = e^{\frac{R}{L} t}$
>
> Dunque:
> $$
> \int \frac{R}{L} e^{\frac{R}{L} t} \cos(\omega t) \, dt = e^{\frac{R}{L} t} \cos(\omega t) + \omega \int e^{\frac{R}{L} t} \sin(\omega t) \, dt
> $$
> Integrando per parti il secondo integrale con:
> - $f_1(t) = \sin(\omega t) \implies f'_1(t) = \omega \cos(\omega t)$
> - $g'_1(t) = e^{\frac{R}{L} t} \implies g_1(t) = \frac{L}{R} e^{\frac{R}{L} t}$
>
> Otteniamo:
> $$
> \int e^{\frac{R}{L} t} \sin(\omega t) \, dt = \frac{L}{R} e^{\frac{R}{L} t} \sin(\omega t) - \frac{\omega L}{R} \int e^{\frac{R}{L} t} \cos(\omega t) \, dt
> $$
> Sostituendo all'indietro:
> $$
> \int \frac{R}{L} e^{\frac{R}{L} t} \cos(\omega t) \, dt = e^{\frac{R}{L} t} \cos(\omega t) + \frac{\omega L}{R} e^{\frac{R}{L} t} \sin(\omega t) - \frac{\omega^2 L}{R} \int e^{\frac{R}{L} t} \cos(\omega t) \, dt
> $$
> Raccogliendo a primo membro:
> $$
> \left( \frac{R}{L} + \frac{\omega^2 L}{R} \right) \int e^{\frac{R}{L} t} \cos(\omega t) \, dt = e^{\frac{R}{L} t} \left[ \cos(\omega t) + \frac{\omega L}{R} \sin(\omega t) \right]
> $$
> Poiché:
> $$
> \frac{R}{L} + \frac{\omega^2 L}{R} = \frac{R^2 + \omega^2 L^2}{RL}
> $$
> ricaviamo:
> $$
> \int e^{\frac{R}{L} t} \cos(\omega t) \, dt = \frac{RL}{R^2 + \omega^2 L^2} e^{\frac{R}{L} t} \left[ \cos(\omega t) + \frac{\omega L}{R} \sin(\omega t) \right]
> $$
> Moltiplicando per $\frac{R}{L}$:
> $$
> \int \frac{R}{L} e^{\frac{R}{L} t} \cos(\omega t) \, dt = \frac{R^2}{R^2 + \omega^2 L^2} e^{\frac{R}{L} t} \left[ \cos(\omega t) + \frac{\omega L}{R} \sin(\omega t) \right]
> $$
> Sostituendo nell'equazione per $I(t)$:
> $$
> e^{\frac{R}{L} t} I(t) = C + E_0 \frac{R^2}{R^2 + \omega^2 L^2} e^{\frac{R}{L} t} \left[ \cos(\omega t) + \frac{\omega L}{R} \sin(\omega t) \right]
> $$
> Moltiplicando per $e^{-\frac{R}{L} t}$:
> $$
> I(t) = C e^{-\frac{R}{L} t} + E_0 \frac{R}{R^2 + \omega^2 L^2} \left[ R \cos(\omega t) + \omega L \sin(\omega t) \right]
> $$
>

## 5.4. Teoremi di esistenza e unicità di Peano e Cauchy-Lipschitz (Picard-Lindelöf)

### Teorema di Peano (Esistenza locale)

> [!theorem] Teorema di Peano (Esistenza locale)
> Sia $\Omega \subseteq \mathbb{R}^2$ un aperto e sia $(t_0, y_0) \in \Omega$.
> Sia data l'equazione differenziale in forma normale:
> $$
> y' = f(t, y)
> $$
> Se $f: \Omega \to \mathbb{R}$ è **continua** su $\Omega$ ($f \in C^0(\Omega)$), allora **esiste almeno una soluzione locale** al problema di Cauchy:
> $$
> \begin{cases}
> y' = f(t, y) \\
> y(t_0) = y_0
> \end{cases}
> $$
> Ovvero, esiste un intorno aperto $I \subseteq \mathbb{R}$ di $t_0$ ed una funzione derivabile $y: I \to \mathbb{R}$ tale che $(t, y(t)) \in \Omega$ per ogni $t \in I$ e:
> $$
> y'(t) = f(t, y(t)) \quad \forall t \in I, \quad y(t_0) = y_0
> $$

> [!note] Osservazioni sul Teorema di Peano
> 1. La continuità $f \in C^0(\Omega)$ è intesa nel senso delle funzioni di due variabili.
> 2. Il Teorema di Peano è un risultato di esistenza puramente debole: garantisce l'esistenza di almeno una soluzione, ma **non garantisce affatto l'unicità**.
>
### Esempio: Il Problema di Peano e la perdita di unicità

Consideriamo il problema di Cauchy:
$$
\begin{cases}
y' = y^{2/3} \\
y(0) = a \in \mathbb{R}
\end{cases}
$$
La funzione al secondo membro è $f(t, y) = y^{2/3}$, che è continua su tutto $\mathbb{R}^2$ ($f \in C^0(\mathbb{R}^2)$). Per il Teorema di Peano, esiste almeno una soluzione locale per ogni $a \in \mathbb{R}$.

1. **Soluzioni costanti (stazionarie):**
   $$
   y' = 0 \implies y^{2/3} = 0 \implies y(t) \equiv 0
   $$
   La funzione identicamente nulla $y(t) \equiv 0$ è soluzione del problema di Cauchy se e solo se $a = 0$.
2. **Soluzioni non costanti ($y \ne 0$):**
   Separando le variabili:
   $$
   \frac{y'}{y^{2/3}} = 1 \implies y^{-2/3} y' = 1
   $$
   Integrando tra $0$ e $t$ (con $y(0) = a$):
   $$
   \int_a^y \eta^{-2/3} \, d\eta = \int_0^t d\tau
   \left[ 3 \eta^{1/3} \right]_a^y = t \implies 3 y^{1/3} - 3 a^{1/3} = t
   $$
   Esplicitando $y(t)$:
   $$
   y^{1/3} = \frac{t}{3} + a^{1/3} \implies y(t) = \left( \frac{t}{3} + \sqrt[3]{a} \right)^3
   $$
3. **Analisi del caso $a = 0$:**
   Se il dato iniziale è $a = y(0) = 0$, la formula precedente restituisce:
   $$
   y(t) = \frac{1}{27} t^3
   $$
   Tuttavia, anche la funzione identicamente nulla $y(t) \equiv 0$ è soluzione!
   Dunque **la soluzione non è unica**.
   
   Addirittura, poiché nell'origine si ha:
   $$
   \lim_{t \to 0} 0 = \lim_{t \to 0} \frac{1}{27} t^3 = 0
   $$
   e per le derivate prime:
   $$
   y'(t) = \frac{1}{9} t^2 \xrightarrow{t \to 0} 0
   $$
   i rami si raccordano con classe $C^1(\mathbb{R})$. Possiamo costruire ben quattro soluzioni distinte di classe $C^1$:
   - $y_1(t) = 0, \quad \forall t \in \mathbb{R}$
   - $y_2(t) = \frac{1}{27} t^3, \quad \forall t \in \mathbb{R}$
   - $y_3(t) = \begin{cases} \frac{1}{27} t^3 & \text{se } t \le 0 \\ 0 & \text{se } t > 0 \end{cases}$
   - $y_4(t) = \begin{cases} 0 & \text{se } t \le 0 \\ \frac{1}{27} t^3 & \text{se } t > 0 \end{cases}$

> [!warning] Causa analitica della perdita di unicità
> Il fenomeno della non unicità si manifesta perché la funzione $f(t, y) = y^{2/3}$ non è derivabile rispetto a $y$ nell'origine:
> $$
> \frac{\partial f}{\partial y}(t, y) = \frac{2}{3} y^{-1/3} = \frac{2}{3 \sqrt[3]{y}} \xrightarrow{y \to 0} \infty
> $$
> La derivata parziale rispetto a $y$ non è continua (anzi diverge), e di conseguenza $f$ non è localmente lipschitziana rispetto a $y$ nell'intorno di $y = 0$.
>
### Teorema di Cauchy (Unicità locale)

> [!theorem] Teorema di Cauchy / Picard-Lindelöf (Unicità locale)
> Sia $\Omega \subseteq \mathbb{R}^2$ aperto e sia $(t_0, y_0) \in \Omega$.
> Sia data l'equazione $y' = f(t, y)$.
> Se:
> 1. $f \in C^0(\Omega)$
> 2. $\dfrac{\partial f}{\partial y} \in C^0(\Omega)$
> 
> allora **esiste ed è unica** la soluzione locale $y(t)$ del problema di Cauchy:
> $$
> \begin{cases}
> y' = f(t, y) \\
> y(t_0) = y_0
> \end{cases}
> $$
> definita in un opportuno intervallo $I = (t_0 - \delta, t_0 + \delta)$.

> [!note] Ipotesi debole: Lipschitzianità locale
> Il teorema sussiste anche sotto un'ipotesi più debole rispetto a $\frac{\partial f}{\partial y} \in C^0(\Omega)$: è sufficiente che la funzione $f(t, y)$ sia **localmente lipschitziana in $y$ in $\Omega$, uniformemente rispetto a $t$**.
> Ossia, per ogni sottoinsieme compatto $K \subseteq \Omega$ esiste una costante $L > 0$ (costante di Lipschitz) tale che:
> $$
> |f(t, y_1) - f(t, y_2)| \le L |y_1 - y_2|, \quad \forall (t, y_1), (t, y_2) \in K
> $$
> Dal teorema di Lagrange sul valor medio, è evidente che:
> $$
> \frac{\partial f}{\partial y} \in C^0(\Omega) \implies f \text{ lipschitziana in } y \text{ uniformemente rispetto a } t \text{ localmente}
> $$
>
### Teorema di unicità ed esistenza globale

> [!theorem] Teorema di Cauchy globale (Esistenza e unicità globale)
> Sia data la striscia $S = (a, b) \times \mathbb{R}$, con $-\infty \le a < b \le +\infty$.
> Sia $f: \overline{S} \to \mathbb{R}$ con $f \in C^0(\overline{S})$ e $\frac{\partial f}{\partial y} \in C^0(\overline{S})$.
> Supponiamo che $f$ soddisfi l'ipotesi di **sublinearità in $y$** (crescita al più lineare), uniformemente rispetto a $t$: esistono due costanti $h, K \ge 0$ tali che:
> $$
> |f(t, y)| \le h + K |y|, \quad \forall (t, y) \in \overline{S}
> $$
> Allora ogni soluzione locale del problema di Cauchy:
> $$
> \begin{cases}
> y' = f(t, y) \\
> y(t_0) = y_0, & (t_0, y_0) \in S
> \end{cases}
> $$
> è prolungabile univocamente ed è **definita su tutto l'intervallo $[a, b]$** (o $(a, b)$).
>
**Interpretazione qualitativa:**
La condizione di sublinearità impedisce la divergenza all'infinito delle traiettorie in tempo finito (*blow-up*). Di conseguenza, la curva integrale può essere estesa con continuità dal punto iniziale $(t_0, y_0)$ fino a raggiungere gli estremi $t = a$ e $t = b$ della striscia.

> [!note] Osservazioni sul teorema globale
> - Vale la medesima variante ipotetica: la condizione di regolarità su $\frac{\partial f}{\partial y}$ può essere sostituita dalla lipschitzianità locale in $y$ uniformemente rispetto a $t$.
> - Le **ODE lineari** $y' = p(t) y + q(t)$ soddisfano automaticamente l'ipotesi di sublinearità su qualunque intervallo limitato $[a, b] \subseteq I$:
>   $$
>   |f(t, y)| = |p(t) y + q(t)| \le |q(t)| + |p(t)| |y| \le \max_{t \in [a, b]} |q(t)| + \left( \max_{t \in [a, b]} |p(t)| \right) |y| = h + K |y|
>   $$
>   Pertanto, per le equazioni lineari le soluzioni sono sempre globali sull'intero intervallo di continuità dei coefficienti.
>
## 5.5. Analisi qualitativa delle soluzioni di equazioni differenziali

### Esempio 1: Studio qualitativo di $y' = \sin(y^2)$

Consideriamo il problema di Cauchy:
$$
\begin{cases}
y' = \sin(y^2) \\
y(0) = a \in \mathbb{R}
\end{cases}
$$
L'equazione è autonoma e a variabili separabili, ma la funzione non è integrabile per via analitica elementare. Procediamo con uno studio qualitativo completo:

1. **Regolarità ed esistenza locale:**
   La funzione $f(t, y) = \sin(y^2)$ è di classe $C^\infty(\mathbb{R}^2)$.
   Poiché $f$ e $\frac{\partial f}{\partial y} = 2y \cos(y^2)$ sono continue su tutto $\mathbb{R}^2$, il Teorema di Cauchy locale assicura che per ogni dato iniziale $(0, a)$ **esiste ed è unica** la soluzione locale.
2. **Esistenza globale:**
   La funzione seno è intrinsecamente limitata:
   $$
   |f(t, y)| = |\sin(y^2)| \le 1 \le 1 + 0 \cdot |y|
   $$
   La condizione di sublinearità uniforme rispetto a $t$ è soddisfatta su qualsiasi striscia $(a, b) \times \mathbb{R}$ con $h = 1$ e $K = 0$.
   Pertanto la soluzione è unica ed è **definita su tutto $\mathbb{R}$** ($t \in \mathbb{R}$).
3. **Soluzioni costanti (stazionarie):**
   Annullando la derivata prima:
   $$
   y' = 0 \iff \sin(y^2) = 0 \iff y^2 = k\pi, \quad k \in \mathbb{N}
   \implies y(t) = \pm\sqrt{k\pi}, \quad k \in \mathbb{N}
   $$
   Tutte le rette orizzontali $y = 0, \pm\sqrt{\pi}, \pm\sqrt{2\pi}, \dots$ sono soluzioni stazionarie globali dell'equazione differenziale.
4. **Proprietà di non intersezione e confinamento:**
   Per il Teorema di unicità di Cauchy, i grafici di due soluzioni distinte non possono mai intersecarsi.
   Di conseguenza, le soluzioni che partono con dato iniziale $a \ne \pm\sqrt{k\pi}$ **non possono mai attraversare** le rette orizzontali stazionarie.
   Ogni soluzione non costante resta perennemente confinata all'interno della striscia orizzontale in cui risiede il dato iniziale:
   $$
   \text{ad es., se } a \in (0, \sqrt{\pi}) \implies 0 < y(t) < \sqrt{\pi}, \quad \forall t \in \mathbb{R}
   $$
5. **Segno della derivata prima e monotonia:**
   All'interno della striscia $y \in (0, \sqrt{\pi})$:
   $$
   y^2 \in (0, \pi) \implies y'(t) = \sin(y^2) > 0
   $$
   Non vi sono punti stazionari intermedi: la soluzione $y(t)$ è **strettamente crescente** su tutto $\mathbb{R}$.
6. **Comportamento asintotico per $t \to \pm\infty$:**
   Separando formalmente le variabili tra $0$ e $t$:
   $$
   \int_a^{y(t)} \frac{d\eta}{\sin(\eta^2)} = \int_0^t d\tau = t
   $$
   Facendo tendere $t \to \pm\infty$:
   $$
   \lim_{t \to \pm\infty} t = \lim_{t \to \pm\infty} \int_a^{y(t)} \frac{d\eta}{\sin(\eta^2)}
   $$
   Poiché $y(t)$ è limitata e monotòna, ammette limite finito per $t \to +\infty$: $\lim_{t \to +\infty} y(t) = L \in (a, \sqrt{\pi}]$.
   Affinché l'integrale a primo membro diverga positivamente per $t \to +\infty$, l'estremo superiore $y(t)$ deve tendere ad un punto in cui l'integrando non è integrabile.
   In prossimità di $\eta = \sqrt{\pi}$, tramite lo sviluppo di Taylor:
   $$
   \sin(\eta^2) = \sin(\pi + 2\sqrt{\pi}(\eta - \sqrt{\pi}) + o(\eta - \sqrt{\pi})) \sim -2\sqrt{\pi}(\eta - \sqrt{\pi})
   $$
   L'integrando diverge con ordine di polo $1$:
   $$
   \frac{1}{\sin(\eta^2)} \sim \frac{1}{-2\sqrt{\pi}(\eta - \sqrt{\pi})}
   $$
   L'integrale improprio diverge logaritmicamente per $y \to \sqrt{\pi}^-$.
   Pertanto:
   $$
   \lim_{t \to +\infty} y(t) = \sqrt{\pi}, \quad \lim_{t \to -\infty} y(t) = 0
   $$
   Tutte le rette $y = \pm\sqrt{k\pi}$ ($k \in \mathbb{N}$) costituiscono **asintoti orizzontali** per le soluzioni al tendere di $t \to \pm\infty$.

### Esempio 2: Studio qualitativo di $y' = \sqrt[3]{\sin y}$ e tempo di arresto finito

Consideriamo il problema di Cauchy:
$$
\begin{cases}
y' = \sqrt[3]{\sin y} \\
y(0) = \frac{\pi}{2}
\end{cases}
$$
1. **Regolarità ed esistenza locale:**
   La funzione $f(t, y) = \sqrt[3]{\sin y}$ è continua su tutto $\mathbb{R}^2$ ($f \in C^0(\mathbb{R})$).
   Calcoliamo la derivata parziale rispetto a $y$:
   $$
   \frac{\partial f}{\partial y}(t, y) = \frac{\cos y}{3 \sqrt[3]{\sin^2 y}}
   $$
   Tale derivata parziale è continua sull'intervallo aperto $(0, \pi)$, contenente il dato iniziale $y(0) = \frac{\pi}{2}$.
   Pertanto, il Teorema di Cauchy locale garantisce **esistenza e unicità locale** attorno al dato $(0, \frac{\pi}{2})$.
   Tuttavia, $\frac{\partial f}{\partial y}$ non è continua nei punti $(t, k\pi)$ dove $\sin y = 0$: in tali punti non vale il teorema di unicità globale!
2. **Soluzioni costanti:**
   $$
   y' = 0 \iff \sqrt[3]{\sin y} = 0 \iff y(t) = k\pi, \quad k \in \mathbb{Z}
   $$
   sono soluzioni stazionarie dell'equazione differenziale.
3. **Monotonia:**
   Per $y \in (0, \pi)$, $\sin y > 0 \implies y'(t) > 0$: la soluzione è strettamente crescente.
4. **Raggiungimento della soglia in tempo finito:**
   Separando le variabili tra il dato iniziale e $y$:
   $$
   \int_{\pi/2}^y \frac{d\eta}{\sqrt[3]{\sin\eta}} = \int_0^t d\tau = t
   $$
   Esaminiamo la convergenza dell'integrale quando l'estremo superiore tende a $\pi$:
   Ponendo $\eta = \pi - u$, per $u \to 0^+$ si ha $\sin\eta = \sin(\pi - u) = \sin u \sim u$. Dunque:
   $$
   \frac{1}{\sqrt[3]{\sin\eta}} \sim \frac{1}{u^{1/3}}
   $$
   Poiché l'esponente di singolarità è $\alpha = \frac{1}{3} < 1$, l'integrale improprio **converge**:
   $$
   T^* = \int_{\pi/2}^\pi \frac{d\eta}{\sqrt[3]{\sin\eta}} < +\infty
   $$
   La soluzione raggiunge la retta stazionaria $y = \pi$ in un **istante finito** $t = T^*$.
   A partire da $t = T^*$, per via della perdita di lipschitzianità in $\sin y = 0$, si perde l'unicità della continuazione della traiettoria (analogo al problema di Peano).

## 5.6. Equazioni differenziali lineari del secondo ordine: struttura dello spazio delle soluzioni

### Definizione e forma normale

> [!definition] Equazione differenziale ordinaria lineare del II ordine
> Un'equazione differenziale ordinaria lineare del secondo ordine ha la forma generale:
> $$
> a(t) y''(t) + b(t) y'(t) + c(t) y(t) = f(t)
> $$
> con coefficienti $a, b, c, f \in C^0(I)$, definiti su un intervallo $I \subseteq \mathbb{R}$.
> - Se $f(t) \equiv 0$ per ogni $t \in I$, l'equazione è detta **omogenea** e la sua soluzione è comunemente denotata con $z(t)$.
> - Se $a(t) \ne 0$ per ogni $t \in I$, possiamo dividere per $a(t)$ ottenendo la **forma normale**:
>   $$
>   y''(t) = \alpha(t) y'(t) + \beta(t) y(t) + g(t)
>   $$
>   oppure:
>   $$
>   y''(t) + a_1(t) y'(t) + a_0(t) y(t) = f(t)
>   $$
> - Se i coefficienti $\alpha$ e $\beta$ sono costanti indipendenti da $t$, l'equazione è detta **a coefficienti costanti**.
>
### Il problema di Cauchy del II ordine

> [!definition] Problema di Cauchy del II ordine
> Trattandosi di un'equazione del secondo ordine, la determinazione univoca dello stato del sistema richiede l'assegnazione simultanea di **due dati iniziali** allo stesso istante $t_0 \in I$: il valore iniziale della funzione e della sua derivata prima:
> $$
> \begin{cases}
> y'' = \alpha(t) y' + \beta(t) y + \gamma(t) \\
> y(t_0) = y_0 \in \mathbb{R} \\
> y'(t_0) = y_1 \in \mathbb{R}
> \end{cases}
> $$

> [!example] Esempi notevoli di ODE del II ordine
> 1. **Moto armonico forzato e smorzato:**
>    Dalla legge di Newton per un oscillatore armonico con smorzamento viscoso e forzante sinusoidale:
>    $$
>    \ddot{x} + \frac{\lambda}{m} \dot{x} + \frac{k}{m} x = F_0 \sin(\omega t)
>    $$
>    con $\lambda, m, k$ costanti reali. È un'equazione lineare del II ordine a coefficienti costanti.
> 2. **Equazione di Eulero:**
>    $$
>    t^2 y'' + a t y' + b y = 0
>    $$
>    È un'equazione lineare a coefficienti variabili in cui il grado della potenza di $t$ corrisponde all'ordine di derivazione.
> 3. **Equazione di Hermite:**
>    $$
>    y'' - 2t y' + 2n y = 0, \quad n \in \mathbb{N}
>    $$
>    Equazione differenziale fondamentale nella meccanica quantistica dell'oscillatore armonico.
>

### Teorema di esistenza e unicità per ODE lineari del II ordine

> [!theorem] Teorema di esistenza e unicità globale per ODE lineari del II ordine
> Siano $a, b, f: I \subseteq \mathbb{R} \to \mathbb{R}$ funzioni continue su un intervallo $I$ ($a, b, f \in C^0(I)$), e sia $t_0 \in I$.
> Allora, per ogni scelta dei dati iniziali $(y_0, y_1) \in \mathbb{R}^2$, il problema di Cauchy:
> $$
> \begin{cases}
> y'' + a(t) y' + b(t) y = f(t) \\
> y(t_0) = y_0 \\
> y'(t_0) = y_1
> \end{cases}
> $$
> ammette **un'unica soluzione** $y(t)$ di classe $C^2(I)$, definita su **tutto** l'intervallo $I$.

> [!note] Osservazione sulla prolungabilità e sui sistemi lineari
> L'enunciato del teorema include direttamente la **prolungabilità globale** della soluzione sull'intero intervallo $I$ in cui i coefficienti sono continui (non vi è possibilità di esplosione in tempo finito).
> La dimostrazione di questo teorema si fonda sulla riconduzione dell'equazione del secondo ordine a un **sistema di due equazioni differenziali del primo ordine**:
> ponendo $\mathbf{Y}(t) = \begin{pmatrix} y(t) \\ y'(t) \end{pmatrix}$, l'equazione equivale a $\mathbf{Y}'(t) = A(t) \mathbf{Y}(t) + \mathbf{F}(t)$.
>
### Struttura algebrica dello spazio delle soluzioni

Le equazioni differenziali lineari si chiamano *lineari* perché possono essere espresse tramite un operatore lineare tra spazi di funzioni:

Definiamo l'operatore:
$$
L: C^2(I) \longrightarrow C^0(I)
$$
agente su una generica funzione $y \in C^2(I)$ come:
$$
L(y) = a(t) y'' + b(t) y' + c(t) y
$$
L'operatore $L$ soddisfa la proprietà di linearità:
$$
L(\alpha f + \beta g) = \alpha L(f) + \beta L(g), \quad \forall \alpha, \beta \in \mathbb{R}, \; \forall f, g \in C^2(I)
$$
L'equazione omogenea associata si scrive in forma compatta come:
$$
L(y) = 0
$$
Di conseguenza, l'insieme delle soluzioni dell'equazione omogenea coincide con il **nucleo** (o *kernel*) dell'operatore lineare $L$:
$$
V_0 = \big\{ y \in C^2(I) : L(y) = 0 \big\} = \ker L
$$

> [!proposition] Struttura dello spazio vettoriale delle soluzioni
> Poiché il nucleo di un operatore lineare è un sottospazio vettoriale del dominio, l'insieme $\ker L$ di tutte le soluzioni dell'equazione omogenea del II ordine è uno **spazio vettoriale reale**.
> Inoltre, l'applicazione che ad ogni soluzione $y \in \ker L$ associa il vettore dei dati iniziali $(y(t_0), y'(t_0)) \in \mathbb{R}^2$ è un isomorfismo di spazi vettoriali garantito dal Teorema di Cauchy.
> Ne consegue che:
> $$
> \dim(\ker L) = 2
> $$
> Conoscendo due soluzioni linearmente indipendenti $z_1(t), z_2(t) \in \ker L$ (dette **base** o **sistema fondamentale di soluzioni**), la soluzione generale dell'omogenea è data da tutte e sole le combinazioni lineari:
> $$
> z(t) = c_1 z_1(t) + c_2 z_2(t), \quad c_1, c_2 \in \mathbb{R}
> $$
>
Dal teorema di struttura delle soluzioni di un sistema lineare si deriva il seguente risultato fondamentale per le equazioni differenziali lineari del secondo ordine:

### Teorema di struttura delle soluzioni di ODE lineari del II ordine

> [!theorem] Teorema di struttura delle soluzioni di ODE lineari del II ordine
> Sia $I \subseteq \mathbb{R}$ un intervallo e sia $L: C^2(I) \to C^0(I)$ l'operatore differenziale lineare:
> $$
> L(y) = a(t) y'' + b(t) y' + c(t) y
> $$
> con coefficienti continui $a, b, c \in C^0(I)$ e $a(t) \ne 0$ per ogni $t \in I$.
> Allora:
> 1. Lo spazio vettoriale delle soluzioni dell'equazione omogenea associata $L(y) = 0$ ha dimensione 2:
>    $$
>    \dim(\ker L) = 2
>    $$
> 2. Una funzione $y(t)$ è soluzione dell'equazione completa $L(y) = f(t)$ se e solo se è della forma:
>    $$
>    y(t) = z(t) + y_p(t)
>    $$
>    dove $z \in \ker L$ è una generica soluzione dell'omogenea associata ($L(z) = 0$) e $y_p(t)$ è una fissata soluzione particolare dell'equazione completa ($L(y_p) = f$).

> [!quote]- Dimostrazione
> **Punto 1:** Devo mostrare che esistono $z_1, z_2 \in \ker L$ linearmente indipendenti e generatori di $\ker L$ (ovvero una base di $\ker L$).
> 
> Ricordiamo che $z \in \ker L \iff L(z) = 0$. Fissato un punto $t_0 \in I$, considero i due problemi di Cauchy con dati iniziali canonici:
> - Scelgo $z_1(t)$ come la soluzione del problema di Cauchy:
>   $$
>   \begin{cases}
>   L(z) = 0 \\
>   z(t_0) = 1 \\
>   z'(t_0) = 0
>   \end{cases}
>   $$
>   Per il teorema di esistenza e unicità globale per ODE lineari, tale soluzione $z_1 \in \ker L$ esiste ed è unica su tutto $I$.
> - Analogamente, scelgo $z_2(t)$ come la soluzione del problema di Cauchy:
>   $$
>   \begin{cases}
>   L(z) = 0 \\
>   z(t_0) = 0 \\
>   z'(t_0) = 1
>   \end{cases}
>   $$
>   Anche in questo caso, per il teorema di esistenza e unicità, la soluzione $z_2 \in \ker L$ esiste ed è unica su tutto $I$.
> 
> Mostriamo ora che $z_1$ e $z_2$ sono linearmente indipendenti.
> Procediamo per assurdo: supponiamo che siano linearmente dipendenti. Allora esiste una costante $\lambda \in \mathbb{R}$ tale che:
> $$
> z_1(t) = \lambda z_2(t), \quad \forall t \in I
> $$
> Valutando questa identità in $t = t_0$:
> $$
> z_1(t_0) = \lambda z_2(t_0) = \lambda \cdot 0 = 0
> $$
> Ma per costruzione $z_1(t_0) = 1 \ne 0$, il che conduce a un assurdo ($1 = 0$). Di conseguenza, $z_1$ e $z_2$ sono linearmente indipendenti.
> 
> Dimostriamo ora che $z_1$ e $z_2$ generano l'intero nucleo, ovvero che $\ker L = \mathrm{Span}\{z_1, z_2\}$.
> Sia $z \in \ker L$ una generica soluzione dell'omogenea. Valutando $z$ e la sua derivata prima nel punto iniziale $t_0$, siano:
> $$
> z(t_0) = c_1 \in \mathbb{R}, \quad z'(t_0) = c_2 \in \mathbb{R}
> $$
> Definiamo la funzione combinazione lineare:
> $$
> \tilde{z}(t) := c_1 z_1(t) + c_2 z_2(t)
> $$
> Poiché $\ker L$ è uno spazio vettoriale, $\tilde{z} \in \ker L$. Valutiamo $\tilde{z}$ e $\tilde{z}'$ in $t_0$:
> $$
> \tilde{z}(t_0) = c_1 z_1(t_0) + c_2 z_2(t_0) = c_1 \cdot 1 + c_2 \cdot 0 = c_1
> \tilde{z}'(t_0) = c_1 \underbrace{z_1'(t_0)}_{=0} + c_2 \underbrace{z_2'(t_0)}_{=1} = c_2
> $$
> Le funzioni $z(t)$ e $\tilde{z}(t)$ sono entrambe soluzioni della medesima equazione differenziale omogenea $L(y) = 0$ e verificano le medesime condizioni iniziali di Cauchy in $t_0$:
> $$
> \begin{cases}
> y(t_0) = c_1 \\
> y'(t_0) = c_2
> \end{cases}
> $$
> Per il teorema di unicità della soluzione del problema di Cauchy, deve necessariamente valere:
> $$
> z(t) = \tilde{z}(t), \quad \forall t \in I
> $$
> Pertanto:
> $$
> \forall z \in \ker L, \; \exists c_1, c_2 \in \mathbb{R} : z(t) = c_1 z_1(t) + c_2 z_2(t)
> $$
> il che prova che $\ker L = \mathrm{Span}\{z_1, z_2\}$, e dunque $\dim(\ker L) = 2$.
> 
> **Punto 2:**
> - $(\Leftarrow)$ Sia $y(t) = z(t) + y_p(t)$, con $z \in \ker L$ e $y_p$ tale che $L(y_p) = f(t)$. Applicando l'operatore $L$ e sfruttandone la linearità:
>   $$
>   L(y) = L(z + y_p) = \underbrace{L(z)}_{=0} + \underbrace{L(y_p)}_{=f} = f(t)
>   $$
>   Quindi $y(t)$ è soluzione dell'equazione completa.
> 
> - $(\Rightarrow)$ Siano $y_1, y_2$ due soluzioni dell'equazione completa, cioè tali che $L(y_1) = f$ e $L(y_2) = f$.
>   Definiamo la loro differenza $v(t) = y_1(t) - y_2(t)$. Applicando l'operatore $L$:
>   $$
>   L(v) = L(y_1 - y_2) = L(y_1) - L(y_2) = f(t) - f(t) = 0, \quad \forall t \in I
>   $$
>   Dunque $v \in \ker L$. Ne segue che:
>   $$
>   y_1(t) = y_2(t) + v(t)
>   $$
>   Fissando una qualsiasi soluzione particolare $y_2 = y_p$, ogni altra soluzione $y_1$ si esprime come somma di $y_p$ e di un elemento $v \in \ker L$. $\blacksquare$
>
### Principio di sovrapposizione

> [!theorem] Teorema di sovrapposizione
> Siano $y_1, y_2 \in C^2(I \subseteq \mathbb{R})$ e sia $L$ l'operatore differenziale lineare definito in precedenza. Se:
> $$
> L(y_1) = f_1(t), \quad L(y_2) = f_2(t)
> $$
> allora per ogni coppia di costanti $\alpha, \beta \in \mathbb{R}$:
> $$
> L(\alpha y_1 + \beta y_2) = \alpha f_1(t) + \beta f_2(t)
> $$
> In particolare, per $\alpha = \beta = 1$, la funzione somma $y_1 + y_2$ è soluzione dell'equazione differenziale avente per termine noto la somma delle singole forzanti $f_1(t) + f_2(t)$:
> $$
> L(y_1 + y_2) = f_1(t) + f_2(t)
> $$

> [!quote]- Dimostrazione
> Segue immediatamente dalla linearità dell'operatore $L$:
> $$
> L(y_1 + y_2) = L(y_1) + L(y_2) = f_1 + f_2
> $$
> $\blacksquare$
>
## 5.7. Equazioni lineari del secondo ordine a coefficienti costanti (oscillatore armonico smorzato)

### Risoluzione dell'equazione omogenea e polinomio caratteristico

Studiamo ora le equazioni differenziali ordinarie omogenee del secondo ordine a coefficienti costanti reali:
$$
a y'' + b y' + c y = 0, \quad a, b, c \in \mathbb{R}, \; a \ne 0
$$
Proviamo a cercare soluzioni esponenziali del tipo:
$$
y(t) = e^{\lambda t}, \quad \lambda \in \mathbb{C}
$$
Calcolando le derivate:
$$
y'(t) = \lambda e^{\lambda t}, \quad y''(t) = \lambda^2 e^{\lambda t}
$$
Sostituendo nell'equazione differenziale:
$$
a \lambda^2 e^{\lambda t} + b \lambda e^{\lambda t} + c e^{\lambda t} = 0, \quad \forall t \in I
$$
Raccogliendo il fattore comune $e^{\lambda t}$:
$$
(a \lambda^2 + b \lambda + c) e^{\lambda t} = 0, \quad \forall t \in I
$$
Poiché la funzione esponenziale non si annulla mai ($e^{\lambda t} \ne 0$ per ogni $t \in \mathbb{R}$), l'equazione differenziale è soddisfatta se e solo se $\lambda$ è radice dell'equazione algebrica:
$$
a \lambda^2 + b \lambda + c = 0
$$
detta **equazione caratteristica**.

> [!definition] Polinomio caratteristico
> Si definisce **polinomio caratteristico** associato all'equazione differenziale omogenea a coefficienti costanti il polinomio di secondo grado:
> $$
> P(\lambda) = a \lambda^2 + b \lambda + c
> $$
> La struttura dello spazio delle soluzioni $\ker L$ è determinata dal segno del discriminante dell'equazione caratteristica:
> $$
> \Delta = b^2 - 4ac
> $$
>
**Analisi dei tre casi per il discriminante $\Delta$:**

1. **Caso $\Delta = b^2 - 4ac > 0$ (Due radici reali distinte):**
   L'equazione caratteristica ammette due radici reali distinte:
   $$
   \lambda_1, \lambda_2 \in \mathbb{R}, \quad \lambda_1 \ne \lambda_2
   $$
   Le corrispondenti soluzioni esponenziali:
   $$
   z_1(t) = e^{\lambda_1 t}, \quad z_2(t) = e^{\lambda_2 t}
   $$
   sono soluzioni dell'equazione omogenea e sono linearmente indipendenti (il loro rapporto $\frac{z_1(t)}{z_2(t)} = e^{(\lambda_1 - \lambda_2)t}$ non è costante).
   Pertanto, la soluzione generale dell'omogenea è:
   $$
   z(t) = c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t}, \quad c_1, c_2 \in \mathbb{R}
   $$

2. **Caso $\Delta = b^2 - 4ac = 0$ (Una radice reale doppia):**
   L'equazione caratteristica ammette una sola radice reale di molteplicità algebrica 2:
   $$
   \lambda = -\frac{b}{2a} \in \mathbb{R}
   $$
   Una prima soluzione è data da $z_1(t) = e^{\lambda t}$. Si può verificare direttamente che anche la funzione:
   $$
   z_2(t) = t e^{\lambda t}
   $$
   è soluzione dell'equazione omogenea. Infatti:
   $$
   z_2'(t) = e^{\lambda t} + \lambda t e^{\lambda t} = (1 + \lambda t) e^{\lambda t}
   z_2''(t) = \lambda e^{\lambda t} + \lambda(1 + \lambda t) e^{\lambda t} = (2\lambda + \lambda^2 t) e^{\lambda t}
   $$
   Sostituendo nell'equazione:
   $$
   a z_2'' + b z_2' + c z_2 = \big[ t (a \lambda^2 + b \lambda + c) + (2a \lambda + b) \big] e^{\lambda t}
   $$
   Poiché $a \lambda^2 + b \lambda + c = P(\lambda) = 0$ e $\lambda = -\frac{b}{2a} \implies 2a\lambda + b = 0$, l'espressione è identicamente nulla.
   Le due soluzioni $e^{\lambda t}$ e $t e^{\lambda t}$ sono linearmente indipendenti. La soluzione generale dell'omogenea è:
   $$
   z(t) = c_1 e^{\lambda t} + c_2 t e^{\lambda t} = (c_1 + c_2 t) e^{\lambda t}, \quad c_1, c_2 \in \mathbb{R}
   $$

3. **Caso $\Delta = b^2 - 4ac < 0$ (Radici complesse coniugate):**
   L'equazione caratteristica ammette due radici complesse coniugate:
   $$
   \lambda = \alpha + i\beta, \quad \lambda^* = \alpha - i\beta, \quad \alpha, \beta \in \mathbb{R}, \; \beta \ne 0
   $$
   dove:
   $$
   \alpha = -\frac{b}{2a}, \quad \beta = \frac{\sqrt{4ac - b^2}}{2a}
   $$
   In campo complesso, le soluzioni sono esponenziali complesse:
   $$
   e^{\lambda t} = e^{(\alpha + i\beta)t} = e^{\alpha t} (\cos(\beta t) + i \sin(\beta t))
   $$
   Prendendo la parte reale e la parte immaginaria, si ottengono due soluzioni reali linearmente indipendenti dell'equazione omogenea:
   $$
   z_1(t) = e^{\alpha t} \cos(\beta t), \quad z_2(t) = e^{\alpha t} \sin(\beta t)
   $$
   La soluzione generale reale dell'omogenea è:
   $$
   z(t) = e^{\alpha t} \big( c_1 \cos(\beta t) + c_2 \sin(\beta t) \big), \quad c_1, c_2 \in \mathbb{R}
   $$

**Riepilogo delle soluzioni dell'omogenea:**

| Segno di $\Delta$ | Radici di $P(\lambda)$ | Base di $\ker L$ | Soluzione generale $z(t)$ |
| :--- | :--- | :--- | :--- |
| $\Delta > 0$ | $\lambda_1 \ne \lambda_2 \in \mathbb{R}$ | $e^{\lambda_1 t}, \; e^{\lambda_2 t}$ | $c_1 e^{\lambda_1 t} + c_2 e^{\lambda_2 t}$ |
| $\Delta = 0$ | $\lambda_1 = \lambda_2 = \lambda \in \mathbb{R}$ | $e^{\lambda t}, \; t e^{\lambda t}$ | $(c_1 + c_2 t) e^{\lambda t}$ |
| $\Delta < 0$ | $\lambda = \alpha \pm i\beta \in \mathbb{C}$ | $e^{\alpha t}\cos(\beta t), \; e^{\alpha t}\sin(\beta t)$ | $e^{\alpha t}(c_1 \cos(\beta t) + c_2 \sin(\beta t))$ |

### Esempio fisico: Pendolo smorzato per piccole oscillazioni

Consideriamo un oscillatore armonico smorzato (ad esempio un pendolo semplice in regime di piccole oscillazioni in presenza di attrito viscoso). L'equazione del moto si scrive per opportuni parametri $\delta > 0$ (coefficiente di smorzamento) e $\omega > 0$ (pulsazione propria):
$$
\ddot{x} + 2\delta \dot{x} + \omega^2 x = 0
$$
Il polinomio caratteristico associato è:
$$
P(\lambda) = \lambda^2 + 2\delta \lambda + \omega^2
$$
Il discriminante vale:
$$
\Delta = (2\delta)^2 - 4\omega^2 = 4(\delta^2 - \omega^2)
$$
Distinguiamo i tre regimi dinamici in funzione del confronto tra $\delta$ e $\omega$:

- **Smorzamento forte (Sovrasmorzamento, $\Delta > 0 \iff \delta > \omega$):**
  Le radici sono reali e distinte:
  $$
  \lambda_{1,2} = -\delta \pm \sqrt{\delta^2 - \omega^2}
  $$
  Poiché $\sqrt{\delta^2 - \omega^2} < \delta$, entrambe le radici sono strettamente negative ($\lambda_2 < \lambda_1 < 0$).
  La legge oraria è:
  $$
  x(t) = c_1 e^{(-\delta - \sqrt{\delta^2 - \omega^2})t} + c_2 e^{(-\delta + \sqrt{\delta^2 - \omega^2})t}
  $$
  Essendo gli esponenti entrambi negativi, per $t \to +\infty$ si ha:
  $$
  x(t) \xrightarrow{t \to +\infty} 0
  $$
  Il moto è anaelastico e il sistema ritorna alla posizione di equilibrio senza compiere alcuna oscillazione.

- **Smorzamento critico ($\Delta = 0 \iff \delta = \omega$):**
  Si ha una sola radice reale di molteplicità 2:
  $$
  \lambda = -\delta < 0
  $$
  La legge oraria è:
  $$
  x(t) = c_1 e^{-\delta t} + c_2 t e^{-\delta t} = (c_1 + c_2 t) e^{-\delta t}
  $$
  Anche in questo caso:
  $$
  x(t) \xrightarrow{t \to +\infty} 0
  $$
  Questo regime rappresenta la transizione al moto oscillatorio e assicura il ritorno all'equilibrio nel minor tempo possibile senza oscillazioni.

- **Smorzamento debole (Sottosmorzamento, $\Delta < 0 \iff \delta < \omega$):**
  Le radici sono complesse coniugate:
  $$
  \lambda = -\delta \pm i \sqrt{\omega^2 - \delta^2}
  $$
  La legge oraria è:
  $$
  x(t) = c_1 e^{-\delta t} \cos\left(\sqrt{\omega^2 - \delta^2} \, t\right) + c_2 e^{-\delta t} \sin\left(\sqrt{\omega^2 - \delta^2} \, t\right)
  $$
  Raccogliendo l'ampiezza geometrica $A = \sqrt{c_1^2 + c_2^2}$:
  $$
  x(t) = \sqrt{c_1^2 + c_2^2} \, e^{-\delta t} \left[ \frac{c_1}{\sqrt{c_1^2 + c_2^2}} \cos\left(\sqrt{\omega^2 - \delta^2} \, t\right) + \frac{c_2}{\sqrt{c_1^2 + c_2^2}} \sin\left(\sqrt{\omega^2 - \delta^2} \, t\right) \right]
  $$
  Definendo lo sfasamento $\varphi$ tale che $\cos\varphi = \frac{c_1}{\sqrt{c_1^2 + c_2^2}}$ e $\sin\varphi = -\frac{c_2}{\sqrt{c_1^2 + c_2^2}}$, si ottiene:
  $$
  x(t) = A e^{-\delta t} \cos\left(\sqrt{\omega^2 - \delta^2} \, t + \varphi\right)
  $$
  che descrive un **moto armonico smorzato** (oscillazioni pseudo-periodiche di pulsazione $\omega_d = \sqrt{\omega^2 - \delta^2}$ con inviluppo esponenzialmente decrescente a zero).

## 5.8. Metodi di risoluzione per equazioni complete: somiglianza e variazione delle costanti di Lagrange

Per determinare l'integrale generale dell'equazione completa:
$$
a y'' + b y' + c y = f(t)
$$
occorre affiancare all'integrale generale dell'omogenea $z(t)$ una soluzione particolare $y_p(t)$.

### Metodo di somiglianza (o dei coefficienti indeterminati)

Si applica quando la forzante $f(t)$ assume forme analitiche elementari. Si cerca una soluzione particolare $y_p(t)$ di struttura analoga alla forzante $f(t)$:

1. **Forzante esponenziale: $f(t) = e^{\lambda t}$**
   - Se $\lambda$ **non è radice** del polinomio caratteristico ($P(\lambda) \ne 0$):
     $$
     y_p(t) = C e^{\lambda t}
     $$
   - Se $\lambda$ **è radice semplice** del polinomio caratteristico ($P(\lambda) = 0$ e $P'(\lambda) \ne 0$):
     $$
     y_p(t) = C t e^{\lambda t}
     $$
   - Se $\lambda$ **è radice doppia** del polinomio caratteristico ($P(\lambda) = 0$ e $P'(\lambda) = 0$):
     $$
     y_p(t) = C t^2 e^{\lambda t}
     $$
   dove la costante incognita $C \in \mathbb{R}$ si determina sostituendo $y_p(t)$ nell'equazione completa.

2. **Forzante polinomiale: $f(t) = P_r(t)$ (polinomio di grado $r$)**
   Consideriamo $a y'' + b y' + c y = P_r(t)$:
   - Se $c \ne 0$ ($\lambda = 0$ non è radice del polinomio caratteristico):
     $$
     y_p(t) = Q_r(t)
     $$
     dove $Q_r(t) \in \mathbb{R}[t]_{\le r}$ è un generico polinomio di grado $r$ a coefficienti indeterminati.
   - Se $c = 0$ e $b \ne 0$ ($\lambda = 0$ è radice semplice del polinomio caratteristico):
     $$
     y_p(t) = t Q_r(t)
     $$
   - Se $c = 0$ e $b = 0$ ($\lambda = 0$ è radice doppia del polinomio caratteristico, $a y'' = P_r(t)$):
     $$
     y_p(t) = t^2 Q_r(t)
     $$

3. **Forzante trigonometrica o esponenziale-trigonometrica:**
   $$
   f(t) = e^{\alpha t} \big( A \cos(\beta t) + B \sin(\beta t) \big), \quad A, B, \alpha, \beta \in \mathbb{R}
   $$
   - Se $\alpha \pm i\beta$ **non sono radici** del polinomio caratteristico ($P(\alpha \pm i\beta) \ne 0$):
     $$
     y_p(t) = e^{\alpha t} \big( C \cos(\beta t) + D \sin(\beta t) \big)
     $$
   - Se $\alpha \pm i\beta$ **sono radici** del polinomio caratteristico ($P(\alpha \pm i\beta) = 0$, fenomeno di **risonanza**):
     $$
     y_p(t) = t e^{\alpha t} \big( C \cos(\beta t) + D \sin(\beta t) \big)
     $$
   dove le costanti $C, D \in \mathbb{R}$ si ricavano per sostituzione diretta.

4. **Somma di forzanti:**
   Se la forzante $f(t)$ è somma di più funzioni dei tipi elementari considerati ($f(t) = f_1(t) + f_2(t) + \dots$), si applica il **principio di sovrapposizione**: si determinano le soluzioni particolari $y_{p,1}, y_{p,2}, \dots$ per ciascuna singola forzante e si pone:
   $$
   y_p(t) = y_{p,1}(t) + y_{p,2}(t) + \dots
   $$

> [!note] Necessità di un metodo generale
> Il metodo di somiglianza è applicabile solo se la forzante ha una forma analitica particolare. Quando la forzante è una funzione generica (es. $f(t) = \tan t$, $f(t) = \frac{1}{\cos t}$ oppure $f(t) = \frac{e^t}{t}$), occorre ricorrere a un metodo universale.
>
### Metodo di variazione delle costanti (Lagrange)

Sia nota una base dello spazio delle soluzioni dell'omogenea:
$$
\ker L = \mathrm{Span}\{z_1, z_2\}
$$
dove $z_1(t), z_2(t)$ sono due soluzioni linearmente indipendenti di $L(z) = 0$.
L'integrale generale dell'omogenea è $z(t) = c_1 z_1(t) + c_2 z_2(t)$ con $c_1, c_2 \in \mathbb{R}$.

Cerchiamo una soluzione particolare dell'equazione completa avente una forma analoga all'integrale generale, ma facendo dipendere le costanti dal tempo:
$$
y_p(t) = c_1(t) z_1(t) + c_2(t) z_2(t)
$$
Calcoliamo la derivata prima:
$$
y_p'(t) = c_1'(t) z_1(t) + c_1(t) z_1'(t) + c_2'(t) z_2(t) + c_2(t) z_2'(t)
$$
Avendo introdotto due funzioni incognite $c_1(t)$ e $c_2(t)$ a fronte di una sola equazione differenziale, abbiamo un grado di libertà. Per evitare la comparsa di derivate seconde di $c_1$ e $c_2$, imponiamo arbitrariamente la condizione:
$$
c_1'(t) z_1(t) + c_2'(t) z_2(t) = 0
$$
Grazie a tale condizione, la derivata prima si riduce a:
$$
y_p'(t) = c_1(t) z_1'(t) + c_2(t) z_2'(t)
$$
Calcoliamo ora la derivata seconda:
$$
y_p''(t) = c_1'(t) z_1'(t) + c_1(t) z_1''(t) + c_2'(t) z_2'(t) + c_2(t) z_2''(t)
$$
Inseriamo $y_p, y_p', y_p''$ nell'equazione differenziale completa in forma normale $y'' + a(t) y' + b(t) y = f(t)$:
$$
\big( c_1' z_1' + c_1 z_1'' + c_2' z_2' + c_2 z_2'' \big) + a(t) \big( c_1 z_1' + c_2 z_2' \big) + b(t) \big( c_1 z_1 + c_2 z_2 \big) = f(t)
$$
Raggruppando i termini in $c_1(t)$ e $c_2(t)$:
$$
c_1 \underbrace{\big( z_1'' + a(t) z_1' + b(t) z_1 \big)}_{= L(z_1) = 0} + c_2 \underbrace{\big( z_2'' + a(t) z_2' + b(t) z_2 \big)}_{= L(z_2) = 0} + c_1'(t) z_1'(t) + c_2'(t) z_2'(t) = f(t)
$$
Poiché per definizione $z_1, z_2 \in \ker L$, i termini tra parentesi sono identicamente nulli, e rimane:
$$
c_1'(t) z_1'(t) + c_2'(t) z_2'(t) = f(t)
$$
Unendo questa equazione con la condizione ausiliaria posta in precedenza, l'equazione differenziale si traduce nel sistema lineare algebrico nelle derivate $c_1'(t)$ e $c_2'(t)$:
$$
\begin{cases}
c_1'(t) z_1(t) + c_2'(t) z_2(t) = 0 \\
c_1'(t) z_1'(t) + c_2'(t) z_2'(t) = f(t)
\end{cases}
$$
La matrice dei coefficienti del sistema è la matrice Wronskiana associata alla base $\{z_1, z_2\}$:
$$
W(t) = \begin{pmatrix} z_1(t) & z_2(t) \\ z_1'(t) & z_2'(t) \end{pmatrix}
$$
Il cui determinante è il determinante Wronskiano:
$$
w(t) = \det W(t) = z_1(t) z_2'(t) - z_2(t) z_1'(t)
$$
Poiché $z_1$ e $z_2$ sono linearmente indipendenti, $w(t) \ne 0$ per ogni $t \in I$.
Risolvendo il sistema lineare tramite la regola di Cramer:
$$
c_1'(t) = -\frac{z_2(t) f(t)}{w(t)}, \quad c_2'(t) = \frac{z_1(t) f(t)}{w(t)}
$$
Integrando rispetto a $t$:
$$
c_1(t) = -\int \frac{z_2(t) f(t)}{w(t)} \, dt, \quad c_2(t) = \int \frac{z_1(t) f(t)}{w(t)} \, dt
$$
Si ricava così la soluzione particolare esplicita:
$$
y_p(t) = -z_1(t) \int \frac{z_2(t) f(t)}{w(t)} \, dt + z_2(t) \int \frac{z_1(t) f(t)}{w(t)} \, dt
$$

## 5.9. Equazioni differenziali di Eulero

> [!definition] Equazione di Eulero del II ordine
> Si definisce **equazione di Eulero del secondo ordine** un'equazione differenziale ordinaria lineare a coefficienti variabili della forma:
> $$
> t^2 z'' + a t z' + b z = 0, \quad t > 0, \; a, b \in \mathbb{R}
> $$
> Pur essendo a coefficienti variabili, le equazioni di Eulero possono essere integrate analiticamente cercando soluzioni sotto forma di funzioni potenza:
> $$
> z(t) = t^r, \quad r \in \mathbb{C}
> $$
>
Calcoliamo le derivate di $z(t) = t^r$:
$$
z'(t) = r t^{r-1}, \quad z''(t) = r(r-1) t^{r-2}
$$
Sostituendo nell'equazione differenziale:
$$
t^2 \cdot r(r-1) t^{r-2} + a t \cdot r t^{r-1} + b t^r = 0, \quad \forall t > 0
r(r-1) t^r + a r t^r + b t^r = 0, \quad \forall t > 0
$$
Raccogliendo $t^r \ne 0$:
$$
t^r \big( r^2 - r + a r + b \big) = 0 \implies r^2 + (a - 1)r + b = 0
$$
che costituisce l'**equazione caratteristica per l'equazione di Eulero**.

Posto $\Delta = (a - 1)^2 - 4b$, procedendo con lo stesso schema delle equazioni a coefficienti costanti si distinguono tre casi:

**Analisi dei tre casi per il discriminante $\Delta$:**

1. **Caso $\Delta > 0$ (Radici reali distinte $r_1 \ne r_2$):**
   Due soluzioni linearmente indipendenti sono:
   $$
   z_1(t) = t^{r_1}, \quad z_2(t) = t^{r_2}
   $$
   La soluzione generale è:
   $$
   z(t) = c_1 t^{r_1} + c_2 t^{r_2}, \quad c_1, c_2 \in \mathbb{R}
   $$

2. **Caso $\Delta = 0$ (Radice reale doppia $r_1 = r_2 = r = \frac{1-a}{2}$):**
   Due soluzioni linearmente indipendenti sono:
   $$
   z_1(t) = t^r, \quad z_2(t) = t^r \log t
   $$
   La soluzione generale è:
   $$
   z(t) = c_1 t^r + c_2 t^r \log t = t^r (c_1 + c_2 \log t), \quad c_1, c_2 \in \mathbb{R}
   $$

3. **Caso $\Delta < 0$ (Radici complesse coniugate $r = \alpha \pm i\beta$):**
   Poiché $t^{\alpha \pm i\beta} = t^\alpha e^{\pm i\beta \log t} = t^\alpha \big( \cos(\beta \log t) \pm i \sin(\beta \log t) \big)$, estraendo la parte reale e la parte immaginaria si ottengono due soluzioni reali linearmente indipendenti:
   $$
   z_1(t) = t^\alpha \cos(\beta \log t), \quad z_2(t) = t^\alpha \sin(\beta \log t)
   $$
   La soluzione generale reale è:
   $$
   z(t) = t^\alpha \big( c_1 \cos(\beta \log t) + c_2 \sin(\beta \log t) \big), \quad c_1, c_2 \in \mathbb{R}
   $$

**Riepilogo delle soluzioni delle equazioni di Eulero ($t > 0$):**

| Segno di $\Delta$ | Radici dell'equazione caratteristica | Base dello spazio delle soluzioni |
| :--- | :--- | :--- |
| $\Delta > 0$ | $r_1 \ne r_2 \in \mathbb{R}$ | $t^{r_1}, \; t^{r_2}$ |
| $\Delta = 0$ | $r_1 = r_2 = r \in \mathbb{R}$ | $t^r, \; t^r \log t$ |
| $\Delta < 0$ | $r = \alpha \pm i\beta \in \mathbb{C}$ | $t^\alpha \cos(\beta \log t), \; t^\alpha \sin(\beta \log t)$ |
