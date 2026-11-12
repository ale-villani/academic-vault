---
title: "Spazi di Hilbert Reali e Teoria Variazionale"
domain: "math/functional-analysis"
source_course: "Analisi 3 (Cap. 3.8)"
tags:
  - math/functional-analysis/real-hilbert
  - math/functional-analysis/riesz-representation
  - math/functional-analysis/lax-milgram
---

# 3.8. Spazi di Hilbert Reali e Teoria Variazionale

## 3.8. Spazi di Hilbert

### Prodotto scalare e norma indotta

Si ricordi che se $\mathcal{H}$ è uno spazio vettoriale su $\mathbb{R}$ ($\mathbb{R}$-spazio vettoriale), un **prodotto scalare** (o **prodotto interno**) su $\mathcal{H}$ è un'applicazione:
$$
(\cdot, \cdot): \mathcal{H} \times \mathcal{H} \to \mathbb{R}
$$
che soddisfa i tre assiomi fondamentali:
1. **Positività:**
   $$
   (x, x) \ge 0 \quad \forall x \in \mathcal{H}, \qquad (x, x) = 0 \iff x = 0_\mathcal{H}
   $$
2. **Simmetria:**
   $$
   (x, y) = (y, x) \quad \forall x, y \in \mathcal{H}
   $$
3. **Bilinearità (linearità nel primo argomento per simmetria):**
   $$
   (\alpha_1 x_1 + \alpha_2 x_2, y) = \alpha_1 (x_1, y) + \alpha_2 (x_2, y) \quad \forall x_1, x_2, y \in \mathcal{H}, \; \forall \alpha_1, \alpha_2 \in \mathbb{R}
   $$

Si ricordi inoltre che dato un qualsiasi spazio vettoriale reale dotato di prodotto scalare $(\mathcal{H}, (\cdot, \cdot))$, la quantità:
$$
\|x\|_\mathcal{H} := \sqrt{(x, x)} \quad \forall x \in \mathcal{H}
$$
prende il nome di **norma indotta** dal prodotto scalare $(\cdot, \cdot)$.

### Disuguaglianza di Cauchy-Schwarz

> [!theorem] Disuguaglianza di Cauchy-Schwarz
> Sia $(\mathcal{H}, (\cdot, \cdot))$ un $\mathbb{R}$-spazio vettoriale dotato di prodotto scalare $(\cdot, \cdot)$. Allora:
> $$
> |(x, y)| \le \|x\| \|y\| \quad \forall x, y \in \mathcal{H}
> $$
> dove il segno di uguaglianza sussiste se e solo se $x$ ed $y$ sono linearmente dipendenti:
> $$
> |(x, y)| = \|x\| \|y\| \iff x = \lambda y \quad \text{per qualche } \lambda \in \mathbb{R} \quad (\text{oppure } y = 0_\mathcal{H})
> $$

> [!quote]- Dimostrazione
> Siano $x, y \in \mathcal{H}$ e sia $t \in \mathbb{R}$ un parametro reale.
> In virtù dell'assioma di positività del prodotto scalare, per ogni $t \in \mathbb{R}$ si ha:
> $$
> 0 \le (x - ty, x - ty) = (x, x) - 2t(y, x) + t^2 (y, y) = t^2 \|y\|^2 - 2t(x, y) + \|x\|^2
> $$
> Tale quantità è un trinomio di secondo grado nella variabile reale $t$:
> $$
> P(t) = a t^2 + b t + c \ge 0 \quad \forall t \in \mathbb{R}
> $$
> avente coefficienti $a = \|y\|^2$, $b = -2(x, y)$, $c = \|x\|^2$.
> Poiché il trinomio $P(t) \ge 0$ assume valori non negativi per ogni $t \in \mathbb{R}$, il suo discriminante ridotto $\frac{\Delta}{4}$ deve essere non positivo:
> $$
> \frac{\Delta}{4} \le 0 \iff (x, y)^2 - \|x\|^2 \|y\|^2 \le 0 \iff (x, y)^2 \le \|x\|^2 \|y\|^2
> $$
> Estraendo la radice quadrata di ambo i membri:
> $$
> |(x, y)| \le \|x\| \|y\|
> $$
> Esaminiamo ora la condizione di uguaglianza $|(x, y)| = \|x\| \|y\|$.
> In questo caso $\Delta = 0$, il che implica che il polinomio ammette un'unica radice reale $t_0 \in \mathbb{R}$ in cui si annulla:
> $$
> 0 = \|x\|^2 - 2t_0(x, y) + t_0^2 \|y\|^2 = (x - t_0 y, x - t_0 y)
> $$
> Per la positività del prodotto scalare, $(x - t_0 y, x - t_0 y) = 0$ se e solo se l'argomento è il vettore nullo:
> $$
> x - t_0 y = 0 \iff x = t_0 y \quad \text{per } t_0 \in \mathbb{R}
> $$
> Il che dimostra che i vettori $x$ ed $y$ sono proporzionali. $\blacksquare$
>
### Teorema sulla norma indotta

> [!theorem] La norma indotta è una norma
> Sia $(\mathcal{H}, (\cdot, \cdot))$ un $\mathbb{R}$-spazio vettoriale con prodotto interno $(\cdot, \cdot)$. Allora la funzione
> $$
> \|x\| = \sqrt{(x, x)}
> $$
> definisce una norma su $\mathcal{H}$.

> [!quote]- Dimostrazione
> Dimostriamo la validità dei tre assiomi di norma:
>
> **1. Positività:**
> Dalla positività del prodotto scalare:
> $$
> \|x\| = \sqrt{(x, x)} \ge 0 \quad \forall x \in \mathcal{H}
> $$
> Inoltre:
> $$
> \|x\| = 0 \iff \sqrt{(x, x)} = 0 \iff (x, x) = 0 \iff x = 0
> $$
>
> **2. Omogeneità assoluta:**
> Per ogni $\lambda \in \mathbb{R}$ e ogni $x \in \mathcal{H}$:
> $$
> \|\lambda x\| = \sqrt{(\lambda x, \lambda x)} = \sqrt{\lambda^2 (x, x)} = |\lambda|\sqrt{(x, x)} = |\lambda| \|x\|
> $$
>
> **3. Disuguaglianza triangolare:**
> Siano $x, y \in \mathcal{H}$. Calcolando il quadrato della somma:
> $$
> \|x + y\|^2 = (x + y, x + y) = \|x\|^2 + 2(x, y) + \|y\|^2
> $$
> Applicando la disuguaglianza di Cauchy-Schwarz al termine misto $(x, y) \le |(x, y)| \le \|x\|\|y\|$:
> $$
> \|x + y\|^2 \le \|x\|^2 + 2\|x\|\|y\| + \|y\|^2 = (\|x\| + \|y\|)^2
> $$
> Estraendo la radice quadrata di entrambi i membri positivi:
> $$
> \|x + y\| \le \|x\| + \|y\|
> $$
> Il che conclude la verifica degli assiomi. $\blacksquare$
>
### Esempi di spazi con prodotto scalare

> [!example] Esempi notevoli
> 1. **Spazio euclideo $\mathcal{H} = \mathbb{R}^n$:**
>    Tutte le norme $\|\cdot\|_p$ con $p \in [1, +\infty]$ sono norme lecite su $\mathbb{R}^n$, ma l'unica norma indotta da un prodotto interno è la norma euclidea standard $\|\cdot\|_2 = \sqrt{\mathbf{x} \cdot \mathbf{x}}$ associata al prodotto scalare euclideo standard.
> 2. **Spazio $\mathcal{H} = L^2(\Omega)$ ($\Omega \subseteq \mathbb{R}^n$ misurabile):**
>    La forma bilineare:
>    $$
>    (f, g) := \int_\Omega f(\mathbf{x}) g(\mathbf{x})\,d\mathbf{x}
>    $$
>    è un prodotto scalare che induce la norma quadratica:
>    $$
>    \|f\|_2 = \left( \int_\Omega |f|^2\,d\mathbf{x} \right)^{1/2}
>    $$
> 3. **Spazio di Sobolev $\mathcal{H} = W^{1,2}(\Omega) = H^1(\Omega)$ ($\Omega \subseteq \mathbb{R}^n$ misurabile):**
>    La forma bilineare:
>    $$
>    (f, g) := \int_\Omega fg\,d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g\,d\mathbf{x}
>    $$
>    (dove $\cdot$ denota il prodotto interno vettoriale di $\mathbb{R}^n$) è un prodotto scalare che induce la norma di Sobolev standard:
>    $$
>    \|f\|_{1,2} = \|f\|_{H^1} = \left( \|f\|_{L^2}^2 + \|\nabla f\|_{L^2}^2 \right)^{1/2}
>    $$
> 4. **Spazio $\mathcal{H} = W_0^{1,2}(\Omega) = H_0^1(\Omega)$ ($\Omega \subseteq \mathbb{R}^n$ aperto):**
>    Essendo $W_0^{1,2}(\Omega) \subset W^{1,2}(\Omega)$, esso eredita il medesimo prodotto scalare di $H^1(\Omega)$:
>    $$
>    (f, g) = \int_\Omega fg\,d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g\,d\mathbf{x}
>    $$
>    Se inoltre l'aperto $\Omega$ è **limitato**, in virtù della disuguaglianza di Poincaré anche la sola forma cinetica:
>    $$
>    (f, g) := \int_\Omega \nabla f \cdot \nabla g\,d\mathbf{x}
>    $$
>    è un prodotto scalare su $W_0^{1,2}(\Omega)$, che induce la norma equivalente:
>    $$
>    \|f\|_{W_0^{1,2}} = \left( \int_\Omega \|\nabla f\|_{\mathbb{R}^n}^2\,d\mathbf{x} \right)^{1/2} = \|\nabla f\|_{L^2}
>    $$
>    Si noti che l'annullamento della norma implica l'annullamento della funzione:
>    $$
>    f = 0 \text{ in } W_0^{1,2} \iff \|\nabla f\|_{L^2} = 0 \underset{\text{(Poincaré)}}{\iff} \|f\|_{L^2} = 0 \iff f = 0 \text{ q.o.}
>    $$
> 5. **Spazio $\mathcal{  H  }=l^2$**:
> Dalla definizione [[Serie di Fourier#^5e88cf|qui]], per $p=2$ lo spazio $l^2$ è dotato del prodotto $$(x, y)=\sum_{n=1}^{+\infty}x_{n}y_{n}$$estensione del prodotto scalare di $\mathbb{R}^n$, per $n\to+\infty$, che induce la norma $$\lvert\lvert x \rvert\rvert = \sqrt{ \sum_{n=1}^{+\infty}x_{n}^2 }$$
>
### Legge del parallelogramma (Teorema di Jordan-von Neumann)

> [!theorem] Legge del parallelogramma (Identità del parallelogramma)
> Sia $(\mathcal{H}, \|\cdot\|)$ uno spazio vettoriale reale normato.
> Esiste un prodotto scalare $(\cdot, \cdot)$ su $\mathcal{H}$ che induce la norma $\|\cdot\|$ se e solo se vale la **legge del parallelogramma**:
> $$
> \|x + y\|^2 + \|x - y\|^2 = 2\left( \|x\|^2 + \|y\|^2 \right) \quad \forall x, y \in \mathcal{H}
> $$

> [!quote]- Dimostrazione
> La dimostrazione consta delle due implicazioni:
>
> **Implicazione $(\Leftarrow)$ [Necessità]:**
> Supponiamo che $\|\cdot\|$ sia indotta da un prodotto scalare $(\cdot, \cdot)$, cioè $\|v\|^2 = (v, v)$. Sviluppando per bilinearità e simmetria:
> $$
> \begin{aligned}
> \|x + y\|^2 + \|x - y\|^2 &= (x+y, x+y) + (x-y, x-y) \\
> &= \left( \|x\|^2 + 2(x, y) + \|y\|^2 \right) + \left( \|x\|^2 - 2(x, y) + \|y\|^2 \right) \\
> &= 2\left( \|x\|^2 + \|y\|^2 \right)
> \end{aligned}
> $$
>
> **Implicazione $(\implies)$ [Sufficienza]:**
> Supponiamo che nello spazio normato $(\mathcal{H}, \|\cdot\|)$ valga la legge del parallelogramma:
> $$
> \|x + y\|^2 + \|x - y\|^2 = 2\left( \|x\|^2 + \|y\|^2 \right) \quad \forall x, y \in \mathcal{H}
> $$
> Mostriamo che esiste un prodotto scalare che induce la norma $\|\cdot\|$. A tal fine definiamo il candidato prodotto scalare tramite l'**identità di polarizzazione**:
> $$
> (x, y) := \frac{1}{4} \left( \|x + y\|^2 - \|x - y\|^2 \right)
> $$
> Dimostriamo che tale forma $(\cdot, \cdot)$ soddisfa gli assiomi di prodotto interno:
>
> **1. Simmetria:**
> Utilizzando l'omogeneità della norma $\|y - x\| = \|-(x - y)\| = |-1|\|x - y\| = \|x - y\|$:
> $$
> (y, x) = \frac{1}{4} \left( \|y + x\|^2 - \|y - x\|^2 \right) = \frac{1}{4} \left( \|x + y\|^2 - \|x - y\|^2 \right) = (x, y)
> $$
>
> **2. Additività:**
> Vogliamo verificare che per ogni $x, y, z \in \mathcal{H}$ sussista l'uguaglianza:
> $$
> (x, z) + (y, z) = (x + y, z)
> $$
> Esplicitando la definizione:
> $$
> (x, z) + (y, z) = \frac{1}{4} \left( \|x + z\|^2 - \|x - z\|^2 + \|y + z\|^2 - \|y - z\|^2 \right)
> $$
> Aggiungendo e sottraendo il termine $\|x\|^2 + \|y\|^2$:
> $$
> = \frac{1}{4} \left( \|x + z\|^2 + \|y\|^2 - \|x - z\|^2 - \|y\|^2 + \|x\|^2 + \|y + z\|^2 - \|x\|^2 - \|y - z\|^2 \right)
> $$
> Applicando la legge del parallelogramma ai rispettivi accoppiamenti di termini:
> $$
> \begin{aligned}
> = \frac{1}{8} \Big( &\|x + y + z\|^2 - \|x - y + z\|^2 - \|x + y - z\|^2 + \|x - y - z\|^2 \\
> &+ \|x + y + z\|^2 - \|x - y - z\|^2 - \|x + y - z\|^2 + \|x - y + z\|^2 \Big)
> \end{aligned}
> $$
> Semplificando i termini opposti:
> $$
> \begin{aligned}
> &= \frac{1}{8} \left( 2\|x + y + z\|^2 - 2\|x + y - z\|^2 \right) \\
> &= \frac{1}{4} \left( \|x + y + z\|^2 - \|x + y - z\|^2 \right) = (x + y, z)
> \end{aligned}
> $$
>
> **3. Omogeneità per scalari reali:**
> Vogliamo provare che $(\alpha x, y) = \alpha (x, y)$ per ogni $\alpha \in \mathbb{R}$.
> - **Passo 3a (Interi naturali $\alpha \in \mathbb{N}$):**
>   Procediamo per induzione su $n \in \mathbb{N}$ per verificare la proposizione $P(n): (nx, y) = n(x, y)$:
>   - Base induttiva $n = 0$:
>     $$
>     (0, y) = \frac{1}{4} \left( \|y\|^2 - \|-y\|^2 \right) = \frac{1}{4} \left( \|y\|^2 - \|y\|^2 \right) = 0 = 0 \cdot (x, y)
>     $$
>   - Caso $n = 1$: $(1 \cdot x, y) = (x, y)$ è banale.
>   - Passo induttivo $P(n) \implies P(n+1)$:
>     $$
>     ((n+1)x, y) = (nx + x, y) \underset{\text{additività}}{=} (nx, y) + (x, y) \underset{P(n)}{=} n(x, y) + (x, y) = (n+1)(x, y)
>     $$
> - **Passo 3b (Interi relativi $\alpha \in \mathbb{Z}$):**
>   Verifichiamo prima il caso $\alpha = -1$:
>   $$
>   (-x, y) = \frac{1}{4} \left( \|-x + y\|^2 - \|-x - y\|^2 \right) = \frac{1}{4} \left( \|x - y\|^2 - \|x + y\|^2 \right) = -(x, y)
>   $$
>   Ne segue immediatamente che per ogni $m \in \mathbb{N}$:
>   $$
>   (-mx, y) = - (mx, y) = -m(x, y) \implies (\alpha x, y) = \alpha (x, y) \quad \forall \alpha \in \mathbb{Z}
>   $$
> - **Passo 3c (Numeri razionali $\alpha \in \mathbb{Q}$):**
>   Sia $q \in \mathbb{N} \setminus \{0\}$. Sfruttando la linearità per interi:
>   $$
>   (x, y) = \left( q \frac{x}{q}, y \right) = q \left( \frac{x}{q}, y \right) \implies \left( \frac{x}{q}, y \right) = \frac{1}{q} (x, y)
>   $$
>   Dunque, per ogni $\alpha = \frac{p}{q} \in \mathbb{Q}$:
>   $$
>   \left( \frac{p}{q} x, y \right) = p \left( \frac{x}{q}, y \right) = \frac{p}{q} (x, y) \implies (\alpha x, y) = \alpha (x, y) \quad \forall \alpha \in \mathbb{Q}
>   $$
> - **Passo 3d (Numeri reali $\alpha \in \mathbb{R}$ per continuità):**
>   Sia $\alpha \in \mathbb{R}$ e sia $\{\alpha_n\}_{n \in \mathbb{N}} \subset \mathbb{Q}$ una successione di numeri razionali tale che $\alpha_n \to \alpha$ per $n \to +\infty$.
>   Da una parte:
>   $$
>   \lim_{n \to +\infty} (\alpha_n x, y) = \lim_{n \to +\infty} \alpha_n (x, y) = \alpha (x, y)
>   $$
>   Dall'altra parte, per la continuità della norma:
>   $$
>   \begin{aligned}
>   \lim_{n \to +\infty} (\alpha_n x, y) &= \frac{1}{4} \lim_{n \to +\infty} \left( \|\alpha_n x + y\|^2 - \|\alpha_n x - y\|^2 \right) \\
>   &= \frac{1}{4} \left( \|\alpha x + y\|^2 - \|\alpha x - y\|^2 \right) = (\alpha x, y)
>   \end{aligned}
>   $$
>   Di conseguenza:
>   $$
>   (\alpha x, y) = \alpha (x, y) \quad \forall \alpha \in \mathbb{R}
>   $$
>
> **4. Positività e norma indotta:**
> Valutando il prodotto di un vettore con se stesso:
> $$
> (x, x) = \frac{1}{4} \left( \|x + x\|^2 - \|x - x\|^2 \right) = \frac{1}{4} \|2x\|^2 = \frac{1}{4} \cdot 4 \|x\|^2 = \|x\|^2
> $$
> Da ciò segue immediatamente che:
> - $(x, x) = \|x\|^2 \ge 0$, con $(x, x) = 0 \iff \|x\|^2 = 0 \iff x = 0$.
> - La norma indotta coincide con la norma originale:
>   $$
>   \sqrt{(x, x)} = \sqrt{\|x\|^2} = \|x\|
>   $$
>
> Concludiamo che $(\mathcal{H}, (\cdot, \cdot))$ è uno spazio vettoriale dotato di prodotto interno che induce esattamente la norma $\|\cdot\|$. $\blacksquare$
>
### Non-hilbertianità degli spazi di Banach con $p \ne 2$

> [!note] Mancanza di struttura hilbertiana per $p \ne 2$
> Siano $\Omega \subseteq \mathbb{R}^n$ un aperto e $p \in [1, +\infty] \setminus \{2\}$.
> Gli spazi:
> - $(\mathbb{R}^n, \|\cdot\|_p)$
> - $(L^p(\Omega), \|\cdot\|_p)$
> - $(W_0^{1,p}(\Omega), \|\cdot\|_p)$
> - $(W^{1,p}(\Omega), \|\cdot\|_{1,p})$
> - $(W^{k,p}(\Omega), \|\cdot\|_{k,p})$
> - $(C^k(\Omega), \|\cdot\|_{C^k})$
> sono tutti **spazi di Banach**, ma **non ammettono alcun prodotto interno** che generi le rispettive norme, in quanto la legge del parallelogramma non è soddisfatta.

> [!example] Violazione esplicita della legge del parallelogramma in $L^p(\Omega)$ ($p \ne 2$)
> Mostriamo esplicitamente che per ogni $p \in [1, +\infty] \setminus \{2\}$ esistono funzioni $f, g \in L^p(\Omega)$ per le quali l'identità del parallelogramma fallisce.
> Fissato $t \in (0, 1)$, consideriamo le due funzioni indicatrici a supporto disgiunto:
> $$
> f = \chi_{(0, t)}, \qquad g = \chi_{(t, 1)}
> $$
> Somma e differenza valgono:
> $$
> f + g = \chi_{(0, 1)} = 1 \quad \text{q.o. in } (0, 1)
> f - g = \begin{cases} 1 & x \in (0, t) \\ -1 & x \in (t, 1) \end{cases} \implies |f - g| = 1 \quad \text{q.o. in } (0, 1)
> $$
>
> **Caso $1 \le p < +\infty$ (con $p \ne 2$):**
> Calcolando le norme $L^p$:
> $$
> \|f\|_p = \left( \int_0^1 |f|^p \,dx \right)^{1/p} = \left( \int_0^t 1\,dx \right)^{1/p} = t^{1/p}
> \|g\|_p = \left( \int_0^1 |g|^p \,dx \right)^{1/p} = \left( \int_t^1 1\,dx \right)^{1/p} = (1 - t)^{1/p}
> $$
> D'altra parte:
> $$
> \|f + g\|_p = \left( \int_0^1 1\,dx \right)^{1/p} = 1, \qquad \|f - g\|_p = \left( \int_0^1 1\,dx \right)^{1/p} = 1
> $$
> Pertanto il primo membro della legge del parallelogramma vale:
> $$
> \|f + g\|_p^2 + \|f - g\|_p^2 = 1^2 + 1^2 = 2
> $$
> Il secondo membro vale invece:
> $$
> 2\left( \|f\|_p^2 + \|g\|_p^2 \right) = 2\left( t^{2/p} + (1 - t)^{2/p} \right)
> $$
> Poiché per $p \ne 2$ l'esponente $\frac{2}{p} \ne 1$, la quantità $t^{2/p} + (1 - t)^{2/p}$ non è identicamente uguale a $1$ per ogni $t \in (0, 1)$ (ad esempio, per $t = \frac{1}{2}$, si ha $2 \cdot 2 \cdot (1/2)^{2/p} = 2^{2 - 2/p} \ne 2$). Di conseguenza:
> $$
> \|f + g\|_p^2 + \|f - g\|_p^2 \ne 2\left( \|f\|_p^2 + \|g\|_p^2 \right)
> $$
>
> **Caso $p = +\infty$:**
> Per la norma essenzialmente limitata si ha:
> $$
> \|f\|_\infty = 1, \qquad \|g\|_\infty = 1
> $$
> e similmente:
> $$
> \|f + g\|_\infty = 1, \qquad \|f - g\|_\infty = 1
> $$
> Valutando i due membri dell'identità:
> $$
> \|f + g\|_\infty^2 + \|f - g\|_\infty^2 = 1 + 1 = 2
> 2\left( \|f\|_\infty^2 + \|g\|_\infty^2 \right) = 2(1 + 1) = 4
> $$
> Poiché $2 \ne 4$, l'identità del parallelogramma fallisce anche in $L^\infty$.
>
> **Conclusione:** Tra tutti gli spazi di Lebesgue $L^p(\Omega)$, **solamente $L^2(\Omega)$ ammette un prodotto interno** che ne induce la norma.
>
### Definizione di Spazio di Hilbert

> [!definition] Spazio di Hilbert
> Si dice **spazio di Hilbert** uno spazio vettoriale reale (o complesso) $\mathcal{H}$ dotato di prodotto interno $(\cdot, \cdot)$ che sia **completo** rispetto alla norma indotta dal prodotto interno stesso:
> $$
> \|x\| := \sqrt{(x, x)}
> $$
> In altre parole, uno spazio di Hilbert è uno **spazio di Banach la cui norma è indotta da un prodotto scalare** (e che pertanto soddisfa l'identità del parallelogramma).
> Si indica convenzionalmente con la coppia:
> $$
> (\mathcal{H}, (\cdot, \cdot))
> $$
>
### Esempi canonici di spazi di Hilbert

> [!example] Esempi notevoli di spazi di Hilbert
> Sia $\Omega \subseteq \mathbb{R}^n$ un sottoinsieme aperto. I seguenti spazi sono spazi di Hilbert fondamentali:
> 1. **Spazio euclideo a dimensione finita $(\mathbb{R}^n, \cdot)$:**
>    Munito dell'usuale prodotto scalare canonico $\mathbf{u} \cdot \mathbf{v} = \sum_{i=1}^n u_i v_i$.
> 2. **Spazio delle successioni a quadrato sommabile $(\ell^2, (\cdot, \cdot))$:**
>    Munito del prodotto interno $(x,y)=\sum_{n=1}^{+\infty}x_{n}y_{n}$
> 3. **Spazio delle funzioni a quadrato integrabile $(L^2(\Omega), (\cdot, \cdot))$:**
>    Dotato del prodotto interno integrale $L^2$:
>    $$
>    (f, g) = \int_\Omega f g \, d\mathbf{x}, \qquad \|f\|_{L^2} = \sqrt{\int_\Omega |f|^2 \, d\mathbf{x}}
>    $$
>    la cui completezza è sancita dal [[Misura e Integrazione di Lebesgue#Teorema di Riesz-Fischer (Completezza di $L^p$)|Teorema di Riesz-Fischer]].
> 4. **Spazi di Sobolev di ordine $k$ $(H^k(\Omega), (\cdot, \cdot)) = (W^{k, 2}(\Omega), (\cdot, \cdot))$:**
>    Per ogni ordine di derivazione debole $k \ge 1$, muniti del prodotto interno delle derivate deboli fino all'ordine $k$.
> 5. **Spazio di Sobolev con traccia nulla $(H_0^1(\Omega), (\cdot, \cdot)) = (W_0^{1, 2}(\Omega), (\cdot, \cdot))$:**
>    Dotato del prodotto interno standard:
>    $$
>    (f, g) = \int_\Omega f g \, d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
>    $$
>    Se inoltre $\Omega$ è **limitato**, grazie alla [[Spazi di Sobolev#3.4. Lo spazio $W_0^{1, p}(\Omega)$ e i valori al bordo|disuguaglianza di Poincaré]], lo spazio $H_0^1(\Omega)$ è uno spazio di Hilbert anche se munito del solo prodotto interno dei gradienti:
>    $$
>    (f, g) = \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
>    $$
>
### Ortogonalità e complemento ortogonale

> [!definition] Vettori ortogonali
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio vettoriale dotato di prodotto scalare. Due elementi $x, y \in \mathcal{H}$ si dicono **ortogonali** (e si scrive $x \perp y$) se e solo se il loro prodotto scalare si annulla:
> $$
> x \perp y \iff (x, y) = 0
> $$

> [!example] Ortogonalità negli spazi funzionali canonici
> - **In $\mathbb{R}^n$:**
>   $$
>   \mathbf{u} \perp \mathbf{v} \iff \mathbf{u} \cdot \mathbf{v} = 0
>   $$
> - **In $\ell^2$:**
>   $$
>   x \perp y \iff (x, y) = \sum_{n=1}^{+\infty} x_n y_n = 0
>   $$
> - **In $L^2(\Omega)$:**
>   $$
>   f \perp g \iff \int_\Omega f g \, d\mathbf{x} = 0
>   $$
> - **In $H^1(\Omega)$:**
>   $$
>   f \perp g \iff \int_\Omega f g \, d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x} = 0
>   $$
> - **In $H_0^1(\Omega)$:**
>   - Se $\Omega$ è un generico aperto:
>     $$
>     f \perp g \iff \int_\Omega f g \, d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x} = 0
>     $$
>   - Se $\Omega$ è un aperto **limitato**:
>     $$
>     f \perp g \iff \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x} = 0 \iff \sum_{i=1}^n \int_\Omega \frac{\partial f}{\partial x_i} \frac{\partial g}{\partial x_i} \, d\mathbf{x} = 0
>     $$

> [!definition] Complemento ortogonale
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio vettoriale dotato di prodotto interno e sia $K \subseteq \mathcal{H}$ un sottoinsieme.
> Si definisce **complemento ortogonale** di $K$ il sottoinsieme:
> $$
> K^\perp := \{x \in \mathcal{H} : (x, y) = 0 \quad \forall y \in K\}
> $$
> Se $K$ è un sottospazio vettoriale di $\mathcal{H}$, allora anche $K^\perp$ è un sottospazio vettoriale di $\mathcal{H}$.

> [!example] Complemento ortogonale delle funzioni costanti in $L^2(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e consideriamo il sottospazio delle funzioni costanti quasi ovunque:
> $$
> K = \{f \in L^2(\Omega) : f \text{ costante q.o.}\}
> $$
> Esso è un sottospazio vettoriale di $L^2(\Omega)$. Determiniamo $K^\perp$:
> $$
> g \in K^\perp \iff (g, f) = 0 \quad \forall f \in K \iff \int_\Omega g \, c \, d\mathbf{x} = 0 \quad \forall c \in \mathbb{R}
> $$
> Portando la costante $c$ fuori dall'integrale:
> $$
> c \int_\Omega g \, d\mathbf{x} = 0 \quad \forall c \in \mathbb{R} \iff \int_\Omega g \, d\mathbf{x} = 0
> $$
> Ne consegue che il complemento ortogonale delle funzioni costanti è l'insieme delle funzioni a media integrale nulla:
> $$
> K^\perp = \left\{ g \in L^2(\Omega) : \int_\Omega g \, d\mathbf{x} = 0 \right\}
> $$

> [!note] Teorema di Pitagora in spazi con prodotto scalare
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio con prodotto interno e siano $x, y \in \mathcal{H}$ due elementi ortogonali ($x \perp y$).
> Allora vale l'identità di Pitagora:
> $$
> \|x + y\|^2 = \|x\|^2 + \|y\|^2
> $$
> Infatti:
> $$
> \|x + y\|^2 = (x + y, x + y) = \|x\|^2 + 2(x, y) + \|y\|^2 = \|x\|^2 + \|y\|^2
> $$
>
### Funzionali lineari continui indotti dal prodotto interno

> [!theorem] Funzionale lineare associato a un vettore fissato
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio vettoriale dotato di prodotto scalare. Sia $v \in \mathcal{H}$ fissato. Allora l'applicazione:
> $$
> \varphi_v : \mathcal{H} \longrightarrow \mathbb{R}, \qquad \varphi_v(u) := (u, v) \quad \forall u \in \mathcal{H}
> $$
> è un funzionale **lineare e continuo** (ossia $\varphi_v \in \mathcal{H}^*$). Inoltre la sua norma duale coincide con la norma di $v$:
> $$
> \|\varphi_v\|_{H^*} = \|v\|_\mathcal{H}
> $$

> [!note] Inclusione isometrica nel duale
> Pertanto lo spazio $\mathcal{H}$ può essere canonicamente pensato come un **sottoinsieme** dello spazio duale topologico $\mathcal{H}^*$, identificando ogni vettore $v \in \mathcal{H}$ con il funzionale associato:
> $$
> \varphi_v \approx v
> $$
> Mostreremo in seguito (Teorema di Riesz) che tale immersione canonica $\mathcal{H} \hookrightarrow \mathcal{H}^*$ è in realtà un **isomorfismo isometrico suriettivo** (quindi una biiezione).

> [!quote]- Dimostrazione
> **Linearità:**
> Per ogni $\alpha, \beta \in \mathbb{R}$ e per ogni $u_1, u_2 \in \mathcal{H}$, sfruttando la linearità da sinistra del prodotto interno:
> $$
> \varphi_v(\alpha u_1 + \beta u_2) = (\alpha u_1 + \beta u_2, v) = \alpha (u_1, v) + \beta (u_2, v) = \alpha \varphi_v(u_1) + \beta \varphi_v(u_2)
> $$
> Dunque $\varphi_v$ è lineare.
>
> **Limitatezza e continuità:**
> Applicando la disuguaglianza di Cauchy-Schwarz:
> $$
> |\varphi_v(u)| = |(u, v)| \le \|v\|_\mathcal{H} \|u\|_\mathcal{H} = M \|u\|_\mathcal{H} \qquad (\text{con } M = \|v\|_\mathcal{H})
> $$
> Ne segue che il funzionale lineare $\varphi_v$ è limitato, e dunque continuo ($\varphi_v \in \mathcal{H}^*$), con stima della norma:
> $$
> \|\varphi_v\|_{H^*} = \sup_{u \in \mathcal{H} \setminus \{0_\mathcal{H}\}} \frac{|\varphi_v(u)|}{\|u\|_\mathcal{H}} \le \|v\|_\mathcal{H}
> $$
>
> **Isometria della norma ($\|\varphi_v\|_{H^*} = \|v\|_\mathcal{H}$):**
> - Se $v = 0_\mathcal{H}$, allora $\varphi_{0}(u) = (u, 0) = 0 \le 0 = \|0_\mathcal{H}\|_\mathcal{H}$ per ogni $u \in \mathcal{H}$, da cui $\|\varphi_{0}\|_{H^*} = 0 = \|0_\mathcal{H}\|_\mathcal{H}$.
> - Se $v \ne 0_\mathcal{H}$, consideriamo il versore:
>   $$
>   w := \frac{v}{\|v\|_\mathcal{H}} \in \mathcal{H}
>   $$
>   Valutando $\varphi_v$ su $w$:
>   $$
>   \varphi_v(w) = \left( \frac{v}{\|v\|_\mathcal{H}}, v \right) = \frac{1}{\|v\|_\mathcal{H}} (v, v) = \frac{1}{\|v\|_\mathcal{H}} \|v\|_\mathcal{H}^2 = \|v\|_\mathcal{H}
>   $$
>   Inoltre la norma del versore vale:
>   $$
>   \|w\|_\mathcal{H} = \left\| \frac{v}{\|v\|_\mathcal{H}} \right\|_\mathcal{H} = \frac{\|v\|_\mathcal{H}}{\|v\|_\mathcal{H}} = 1
>   $$
>   Dalla definizione di estremo superiore della norma duale:
>   $$
>   \|\varphi_v\|_{H^*} = \sup_{u \in \mathcal{H} \setminus \{0_\mathcal{H}\}} \frac{|\varphi_v(u)|}{\|u\|_\mathcal{H}} \ge \frac{|\varphi_v(w)|}{\|w\|_\mathcal{H}} = \frac{\|v\|_\mathcal{H}}{1} = \|v\|_\mathcal{H}
>   $$
>   Avendo dimostrato contemporaneamente $\|\varphi_v\|_{H^*} \le \|v\|_\mathcal{H}$ e $\|\varphi_v\|_{H^*} \ge \|v\|_\mathcal{H}$, si conclude:
>   $$
>   \|\varphi_v\|_{H^*} = \|v\|_\mathcal{H}
>   $$
>   $\blacksquare$
>
### Chiusura topologica del complemento ortogonale

> [!theorem] Chiusura di $K^\perp$
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio vettoriale dotato di prodotto scalare e sia $K \subseteq \mathcal{H}$ un qualunque sottoinsieme.
> Allora il complemento ortogonale $K^\perp$ è un **sottospazio vettoriale chiuso** di $\mathcal{H}$ (anche se $K$ non è un sottospazio o non è un insieme chiuso).

> [!quote]- Dimostrazione
> **Struttura di sottospazio vettoriale:**
> Siano $f, g \in K^\perp$. Per definizione:
> $$
> (f, h) = 0 \quad \text{e} \quad (g, h) = 0 \qquad \forall h \in K
> $$
> Per ogni $\alpha, \beta \in \mathbb{R}$:
> $$
> (\alpha f + \beta g, h) = \alpha (f, h) + \beta (g, h) = \alpha \cdot 0 + \beta \cdot 0 = 0 \qquad \forall h \in K
> $$
> Pertanto $\alpha f + \beta g \in K^\perp$, il che prova che $K^\perp$ è un sottospazio vettoriale di $\mathcal{H}$.
>
> **Chiusura topologica:**
> Sia $\{x_n\}_{n \in \mathbb{N}} \subseteq K^\perp$ una successione convergente in $\mathcal{H}$, con limite:
> $$
> \exists \lim_{n \to +\infty} x_n =: x \in \mathcal{H}
> $$
> Dobbiamo verificare che $x \in K^\perp$.
> Fissato un generico $y \in K$, consideriamo il funzionale lineare continuo $\varphi_y \in \mathcal{H}^*$ definito da:
> $$
> \varphi_y(z) := (z, y) \qquad \forall z \in \mathcal{H}
> $$
> Essendo $\varphi_y$ continuo, commuta con il limite:
> $$
> (x, y) = \varphi_y(x) = \varphi_y\left( \lim_{n \to +\infty} x_n \right) = \lim_{n \to +\infty} \varphi_y(x_n)
> $$
> Poiché $x_n \in K^\perp$ per ogni $n \in \mathbb{N}$, si ha $\varphi_y(x_n) = (x_n, y) = 0$. Quindi:
> $$
> (x, y) = \lim_{n \to +\infty} (x_n, y) = \lim_{n \to +\infty} 0 = 0
> $$
> Poiché l'uguaglianza $(x, y) = 0$ vale per ogni $y \in K$, ne deduciamo:
> $$
> x \in K^\perp
> $$
> Pertanto $K^\perp$ contiene tutti i propri punti di aderenza, ossia $K^\perp$ è chiuso. $\blacksquare$

> [!note] Proprietà dell'intersezione e del doppio ortogonale
> Se $M \subseteq \mathcal{H}$ è un sottospazio vettoriale, allora:
> 1. **Intersezione banale:**
>    $$
>    M^\perp \cap M = \{0\}
>    $$
>    Infatti, se $x \in M^\perp \cap M$, il vettore $x$ deve essere ortogonale a se stesso:
>    $$
>    (x, x) = 0 \iff \|x\|^2 = 0 \iff x = 0
>    $$
> 2. **Doppio ortogonale:**
>    Se $\mathcal{H}$ è di Hilbert ed $M$ è un sottospazio **chiuso**, allora:
>    $$
>    (M^\perp)^\perp = M
>    $$
>
### Teorema di proiezione su un convesso chiuso

> [!theorem] Teorema di proiezione su un convesso chiuso
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $K \subseteq \mathcal{H}$ un sottoinsieme **convesso e chiuso**. Allora:
> $$
> \forall u \in \mathcal{H}, \quad \exists! \, \pi_K(u) \in K : \quad \|u - \pi_K(u)\| = \min_{v \in K} \|u - v\|
> $$
> L'elemento $\pi_K(u)$ prende il nome di **proiezione** di $u$ su $K$, e la quantità:
> $$
> d(u, K) := \|u - \pi_K(u)\|
> $$
> è detta **distanza minima** di $u$ da $K$.
> Inoltre, la proiezione $\pi_K(u)$ è univocamente caratterizzata dalla disuguaglianza variazionale:
> $$
> (u - \pi_K(u), v - \pi_K(u)) \le 0 \qquad \forall v \in K
> $$

> [!note] Osservazioni e controesempi geometrici
> - Se $u \in K$, allora banalmente $\pi_K(u) = u \in K$ e la distanza minima è nulla:
>   $$
>   d(u, K) = 0
>   $$
> - Se l'insieme $K$ non è chiuso o non è convesso, il teorema fallisce:
>   - Se $K$ non è chiuso, l'estremo inferiore delle distanze potrebbe non essere raggiunto (non esiste minimo);
>   - Se $K$ non è convesso, possono esistere più punti distinti $\pi_1, \pi_2 \in K$ che realizzano la stessa distanza minima da un punto esterno $u$ (perdita di unicità).
>

### Proiezione su sottospazi chiusi e decomposizione ortogonale

> [!note] Convessità dei sottospazi vettoriali
> Ogni sottospazio vettoriale $K \subseteq \mathcal{H}$ è automaticamente un insieme **convesso**.
> Infatti, per definizione di sottospazio, per ogni $f, g \in K$ e per ogni combinazione lineare con scalari $\alpha, \beta \in \mathbb{R}$ si ha $\alpha f + \beta g \in K$; in particolare, per ogni $\lambda \in [0, 1]$, ponendo $\alpha = \lambda$ e $\beta = 1 - \lambda$, il segmento congiungente $\lambda f + (1 - \lambda) g$ appartiene interamente a $K$.

> [!corollary] Teorema di proiezione su un sottospazio chiuso
> Sia $K \subseteq \mathcal{H}$ un **sottospazio vettoriale chiuso** di uno spazio di Hilbert $\mathcal{H}$.
> Allora per ogni $u \in \mathcal{H}$ esiste un'unica proiezione $\pi_K(u) \in K$ tale che:
> $$
> \|\pi_K(u) - u\| = \min_{v \in K} \|v - u\| \tag{1}
> $$
> Inoltre, $\pi_K(u)$ è univocamente caratterizzato dalla condizione di ortogonalità:
> $$
> (\pi_K(u) - u, v) = 0 \qquad \forall v \in K \tag{2}
> $$
> ovvero:
> $$
> \pi_K(u) - u \in K^\perp
> $$

> [!quote]- Dimostrazione dell'equivalenza $(1) \iff (2)$
> **Implicazione $(\Leftarrow)$:**
> Supponiamo che valga la condizione di ortogonalità (2), ovvero $\pi_K(u) - u \in K^\perp$, cioè:
> $$
> (u - \pi_K(u), w) = 0 \qquad \forall w \in K
> $$
> Per ogni $v \in K$, sviluppiamo il prodotto interno presente nella caratterizzazione variazionale dei convessi:
> $$
> (u - \pi_K(u), v - \pi_K(u)) = \underbrace{(u - \pi_K(u), v)}_{= 0 \text{ poiché } v \in K} - \underbrace{(u - \pi_K(u), \pi_K(u))}_{= 0 \text{ poiché } \pi_K(u) \in K} = 0 - 0 = 0 \le 0
> $$
> Poiché la disuguaglianza $(u - \pi_K(u), v - \pi_K(u)) \le 0$ è verificata per ogni $v \in K$, dal teorema di proiezione su convessi chiusi deduciamo che $\pi_K(u)$ è l'unico elemento di minima distanza (1).
>
> **Implicazione $(\Rightarrow)$:**
> Supponiamo che $\pi_K(u)$ sia l'elemento di minima distanza (1). Allora, per il teorema di proiezione su convessi chiusi, soddisfa:
> $$
> (u - \pi_K(u), v - \pi_K(u)) \le 0 \qquad \forall v \in K
> $$
> Vogliamo mostrare che $(u - \pi_K(u), w) = 0$ per ogni $w \in K$.
> Sia $w \in K$ un qualunque vettore fissato. Poiché $K$ è un sottospazio vettoriale, il vettore $v := \pi_K(u) + w$ appartiene ancora a $K$. Sostituendo tale $v$:
> $$
> (u - \pi_K(u), (\pi_K(u) + w) - \pi_K(u)) = (u - \pi_K(u), w) \le 0 \qquad \forall w \in K
> $$
> Poiché $K$ è un sottospazio vettoriale, se $w \in K$ anche l'opposto $-w \in K$. Sostituendo $-w$ al posto di $w$:
> $$
> (u - \pi_K(u), -w) \le 0 \implies -(u - \pi_K(u), w) \le 0 \implies (u - \pi_K(u), w) \ge 0
> $$
> Avendo dimostrato contemporaneamente $(u - \pi_K(u), w) \le 0$ e $(u - \pi_K(u), w) \ge 0$, ne segue necessariamente:
> $$
> (u - \pi_K(u), w) = 0 \qquad \forall w \in K
> $$
> ovvero $(\pi_K(u) - u, w) = 0$ per ogni $w \in K$, il che equivale a $\pi_K(u) - u \in K^\perp$. $\blacksquare$

> [!theorem] Teorema di decomposizione ortogonale
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $K \subseteq \mathcal{H}$ un sottospazio vettoriale chiuso.
> Allora per ogni $x \in \mathcal{H}$ esiste un'**unica decomposizione** di $x$ su $K$ e su $K^\perp$:
> $$
> \exists! \, y \in K, \; z \in K^\perp : \qquad x = y + z
> $$
> In altri termini, $\mathcal{H}$ si decompone in somma diretta ortogonale:
> $$
> \mathcal{H} = K \oplus K^\perp
> $$
> Inoltre, le applicazioni di proiezione ortogonale:
> $$
> \pi_K : \mathcal{H} \longrightarrow \mathcal{H}, \qquad \pi_{K^\perp} : \mathcal{H} \longrightarrow \mathcal{H}
> $$
> sono **operatori lineari limitati** di norma unitaria:
> $$
> \|\pi_K\| = \|\pi_{K^\perp}\| = 1
> $$
> e vale l'identità energetica (teorema di Pitagora):
> $$
> \|x\|^2 = \|y\|^2 + \|z\|^2
> $$

> [!quote]- Dimostrazione
> **Passo 1 (Esistenza e unicità della decomposizione):**
> Sia $x \in \mathcal{H}$. Poniamo:
> $$
> y := \pi_K(x) \in K, \qquad z := x - y = x - \pi_K(x)
> $$
> Per il corollario di proiezione su un sottospazio chiuso, si ha:
> $$
> (x - \pi_K(x), v) = 0 \quad \forall v \in K \implies z \in K^\perp
> $$
> Quindi $x = y + z$ è una decomposizione ammissibile con $y \in K$ e $z \in K^\perp$.
>
> Mostriamo ora che tale decomposizione è unica. Supponiamo che esistano due decomposizioni:
> $$
> x = y_1 + z_1 = y_2 + z_2, \qquad \text{con } y_1, y_2 \in K, \; z_1, z_2 \in K^\perp
> $$
> Riorganizzando i termini:
> $$
> y_1 - y_2 = z_2 - z_1
> $$
> Poiché $K$ è un sottospazio vettoriale, il membro di sinistra appartiene a $K$:
> $$
> y_1 - y_2 \in K
> $$
> Poiché $K^\perp$ è un sottospazio vettoriale, il membro di destra appartiene a $K^\perp$:
> $$
> z_2 - z_1 \in K^\perp
> $$
> Pertanto tale vettore appartiene all'intersezione $K \cap K^\perp$:
> $$
> y_1 - y_2 = z_2 - z_1 \in K \cap K^\perp = \{0\}
> $$
> Ne deduciamo:
> $$
> y_1 - y_2 = 0 \implies y_1 = y_2, \qquad z_2 - z_1 = 0 \implies z_1 = z_2
> $$
> Dunque la decomposizione ortogonale è unica.
>
> **Passo 2 (Linearità dei proiettori):**
> Mostriamo che $\pi_K : \mathcal{H} \to \mathcal{H}$ è un operatore lineare.
> Siano $x_1, x_2 \in \mathcal{H}$, con relative decomposizioni:
> $$
> x_1 = y_1 + z_1, \qquad x_2 = y_2 + z_2 \qquad (y_1, y_2 \in K, \; z_1, z_2 \in K^\perp)
> $$
> Per ogni combinazione lineare con scalari $\alpha, \beta \in \mathbb{R}$:
> $$
> \alpha x_1 + \beta x_2 = \underbrace{(\alpha y_1 + \beta y_2)}_{\in K} + \underbrace{(\alpha z_1 + \beta z_2)}_{\in K^\perp}
> $$
> Poiché $\alpha y_1 + \beta y_2 \in K$ e $\alpha z_1 + \beta z_2 \in K^\perp$, per l'unicità della decomposizione ortogonale la proiezione di $\alpha x_1 + \beta x_2$ su $K$ deve coincidere esattamente con il primo addendo:
> $$
> \pi_K(\alpha x_1 + \beta x_2) = \alpha y_1 + \beta y_2 = \alpha \pi_K(x_1) + \beta \pi_K(x_2) \qquad \forall \alpha, \beta \in \mathbb{R}
> $$
> Dunque $\pi_K$ è un operatore lineare. Con lo stesso identico ragionamento si deduce che anche $\pi_{K^\perp}$ è lineare.
>
> **Passo 3 (Norma unitaria degli operatori di proiezione):**
> Poiché $y \in K$ e $z \in K^\perp$, si ha $y \perp z$. Applicando il teorema di Pitagora:
> $$
> \|x\|^2 = \|y + z\|^2 = \|y\|^2 + \|z\|^2
> $$
> Essendo $\|z\|^2 \ge 0$, ricaviamo:
> $$
> \|y\|^2 = \|\pi_K(x)\|^2 \le \|x\|^2 \qquad \forall x \in \mathcal{H}
> $$
> Estraendo la radice quadrata:
> $$
> \|\pi_K(x)\| \le \|x\| \qquad \forall x \in \mathcal{H}
> $$
> Dalla definizione di norma operatoriale:
> $$
> \|\pi_K\| = \sup_{x \in \mathcal{H} \setminus \{0\}} \frac{\|\pi_K(x)\|}{\|x\|} \le 1
> $$
> Similmente, scambiando il ruolo di $y$ e $z$, si ottiene $\|\pi_{K^\perp}\| \le 1$.
>
> Per mostrare che la norma vale esattamente $1$, consideriamo un generico elemento non nullo appartenente a $K$, ossia $x \in K \setminus \{0\}$. Per la proprietà della proiezione:
> $$
> \pi_K(x) = x \implies \|\pi_K(x)\| = \|x\|
> $$
> Di conseguenza:
> $$
> \|\pi_K\| = \sup_{x \in \mathcal{H} \setminus \{0\}} \frac{\|\pi_K(x)\|}{\|x\|} \ge \sup_{x \in K \setminus \{0\}} \frac{\|\pi_K(x)\|}{\|x\|} = \sup_{x \in K \setminus \{0\}} \frac{\|x\|}{\|x\|} = 1
> $$
> Avendo dimostrato che $\|\pi_K\| \le 1$ e $\|\pi_K\| \ge 1$, concludiamo:
> $$
> \|\pi_K\| = 1, \qquad \|\pi_{K^\perp}\| = 1
> $$
> $\blacksquare$
>
### Teorema di rappresentazione di Riesz-Fréchet

> [!note] Motivazione e problema inverso
> Abbiamo mostrato precedentemente che per ogni $v \in \mathcal{H}$ fissato, il funzionale:
> $$
> \varphi(u) := (u, v) \qquad \forall u \in \mathcal{H}
> $$
> è un operatore lineare e continuo, cioè $\varphi \in \mathcal{H}^*$.
> Ci poniamo ora la questione inversa fondamentale:
> **Quali funzionali lineari continui $\varphi \in \mathcal{H}^*$ possiedono questa forma?**
> Il Teorema di Riesz stabilisce che **tutti** i funzionali continui hanno questa forma.

> [!theorem] Teorema di rappresentazione di Riesz (Fréchet-Riesz)
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia $\varphi \in \mathcal{H}^*$ un funzionale lineare continuo arbitrario.
> Allora esiste un **unico** elemento $v \in \mathcal{H}$ tale che:
> $$
> \varphi(u) = (u, v) \qquad \forall u \in \mathcal{H}
> $$
> In altri termini, ogni funzionale continuo su uno spazio di Hilbert è rappresentato univocamente da un vettore $v \in \mathcal{H}$ tramite il prodotto scalare.

> [!note] Isomorfismo canonico tra Hilbert e il suo duale
> Dal teorema di Riesz segue che l'applicazione canonica:
> $$
> \mathcal{R} : \mathcal{H} \longrightarrow \mathcal{H}^*, \qquad v \longmapsto \varphi_v
> $$
> è una **biezione lineare isometrica**:
> 1. $\forall v \in \mathcal{H}, \; \exists! \, \varphi_v \in \mathcal{H}^*$ tale che $\varphi_v(u) = (u, v) \quad \forall u \in \mathcal{H}$;
> 2. $\forall \varphi \in \mathcal{H}^*, \; \exists! \, v \in \mathcal{H}$ tale che $\varphi = \varphi_v$;
> 3. $\|\varphi_v\|_{H^*} = \|v\|_\mathcal{H}$.
>
> Pertanto:
> $$
> \mathcal{H} \cong \mathcal{H}^* \quad \land \quad \mathcal{H} \subseteq \mathcal{H}^* \implies \mathcal{H} \approx \mathcal{H}^*
> $$
> tramite le identificazioni canoniche $u \approx \varphi_u$.
> In sintesi, la corrispondenza $v \mapsto \varphi_v$ è:
> - lineare;
> - continua;
> - limitata;
> - isometrica ($\|\varphi_v\|_{H^*} = \|v\|_\mathcal{H}$).

> [!example] Identificazioni duali notevoli
> - **Spazio Euclideo $\mathcal{H} = \mathbb{R}^n$:**
>   $$
>   \mathcal{H}^* \approx \mathbb{R}^n
>   $$
>   Ogni funzionale lineare su $\mathbb{R}^n$ è il prodotto scalare contro un vettore fissato:
>   $$
>   \mathbf{v} \longmapsto \varphi_{\mathbf{v}}(\mathbf{u}) = \mathbf{u} \cdot \mathbf{v} \qquad \forall \mathbf{u} \in \mathbb{R}^n
>   $$
> - **Spazio di Lebesgue $\mathcal{H} = L^2(\Omega)$:**
>   $$
>   (L^2(\Omega))^* \approx L^2(\Omega)
>   $$
>   Ogni funzionale continuo su $L^2(\Omega)$ è rappresentato da una funzione $f \in L^2(\Omega)$:
>   $$
>   f \longmapsto \varphi_f(g) = \int_\Omega f g \, d\mathbf{x} \qquad \forall g \in L^2(\Omega)
>   $$
> - **Spazio di Sobolev $\mathcal{H} = H^1(\Omega)$ ($\Omega \subseteq \mathbb{R}^n$ aperto):**
>   $$
>   (H^1(\Omega))^* \approx H^1(\Omega)
>   $$
>   Ogni funzionale continuo su $H^1(\Omega)$ è rappresentato da una funzione $f \in H^1(\Omega)$:
>   $$
>   f \longmapsto \varphi_f(g) = \int_\Omega f g \, d\mathbf{x} + \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x} \qquad \forall g \in H^1(\Omega)
>   $$
>
### Teorema di dualità negli spazi di Lebesgue $L^p$

> [!note] Estensione della dualità agli spazi non di Hilbert
> Un risultato di rappresentazione analogo a quello di Riesz vale anche per gli spazi di Lebesgue $L^p(\Omega)$, nonostante essi **non siano spazi di Hilbert per $p \ne 2$** (poiché per $p \ne 2$ la norma non soddisfa l'identità del parallelogramma).

> [!theorem] Rappresentazione del duale di $L^p(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto e sia $\varphi \in (L^p(\Omega))^*$ un funzionale lineare continuo, con $p \in (1, +\infty)$.
> Allora esiste un **unico** elemento $v \in L^q(\Omega)$, con esponente coniugato $q \in (1, +\infty)$ tale che $\frac{1}{p} + \frac{1}{q} = 1$, tale che:
> $$
> \varphi(u) = \int_\Omega u v \, d\mathbf{x} \qquad \forall u \in L^p(\Omega)
> $$
> Inoltre, la norma duale del funzionale coincide con la norma $L^q$ del generatore:
> $$
> \|\varphi\|_{(L^p(\Omega))^*} = \|v\|_{L^q(\Omega)}
> $$

> [!note] Identificazione standard
> Di conseguenza, mediante l'isomorfismo isometrico canonico:
> $$
> (L^p(\Omega))^* \simeq L^q(\Omega) \qquad \forall p \in (1, +\infty), \quad \frac{1}{p} + \frac{1}{q} = 1
> $$
>
### Forme bilineari: continuità e coercività

> [!definition] Forma bilineare
> Sia $\mathcal{H}$ uno spazio vettoriale reale. Una **forma bilineare** è una funzione:
> $$
> a : \mathcal{H} \times \mathcal{H} \longrightarrow \mathbb{R}
> $$
> tale che:
> 1. **Linearità a sinistra:**
>    $$
>    a(\alpha_1 x_1 + \alpha_2 x_2, y) = \alpha_1 a(x_1, y) + \alpha_2 a(x_2, y) \qquad \forall \alpha_1, \alpha_2 \in \mathbb{R}, \; x_1, x_2, y \in \mathcal{H}
>    $$
> 2. **Linearità a destra:**
>    $$
>    a(x, \alpha_1 y_1 + \alpha_2 y_2) = \alpha_1 a(x, y_1) + \alpha_2 a(x, y_2) \qquad \forall \alpha_1, \alpha_2 \in \mathbb{R}, \; x, y_1, y_2 \in \mathcal{H}
>    $$

> [!example] Esempi notevoli di forme bilineari
> 1. Il prodotto scalare $(\cdot, \cdot)$ su uno spazio prehilbertiano è una forma bilineare;
> 2. In $\mathcal{H} = \mathbb{R}^n$, data una matrice $A \in \mathrm{Mat}_\mathbb{R}(n, n)$ con elementi $A = (a_{ij})$, l'applicazione:
>    $$
>    a(\mathbf{u}, \mathbf{v}) = \mathbf{u}^T A \mathbf{v}
>    $$
>    è bilineare;
> 3. In $\mathcal{H} = H^1(\Omega)$, con $\Omega \subseteq \mathbb{R}^n$ aperto, le funzioni:
>    $$
>    a(f, g) = \int_\Omega f g \, d\mathbf{x}, \qquad b(f, g) = \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
>    $$
>    sono forme bilineari.

> [!definition] Proprietà analitiche di una forma bilineare
> Sia $\mathcal{H}$ uno spazio normato e sia $a : \mathcal{H} \times \mathcal{H} \to \mathbb{R}$ una forma bilineare. Allora $a$ si dice:
> - **Simmetrica** se:
>   $$
>   a(x, y) = a(y, x) \qquad \forall x, y \in \mathcal{H}
>   $$
> - **Continua** se esiste una costante $C > 0$ tale che:
>   $$
>   |a(x, y)| \le C \|x\|_\mathcal{H} \|y\|_\mathcal{H} \qquad \forall x, y \in \mathcal{H}
>   $$
> - **Coerciva** (o **ellittica**) se esiste una costante $\alpha > 0$ tale che:
>   $$
>   a(x, x) \ge \alpha \|x\|_\mathcal{H}^2 \qquad \forall x \in \mathcal{H}
>   $$

> [!note] Interpretazione geometrica della coercività
> In dimensione finita ($\mathcal{H} = \mathbb{R}^2$), una forma bilineare è coerciva se il grafico della forma quadratica associata sta superiormente al paraboloide circolare $\alpha (x_1^2 + x_2^2)$:
> $$
> a(\mathbf{x}, \mathbf{x}) \ge \alpha \|\mathbf{x}\|^2 \ge 0, \qquad a(\mathbf{x}, \mathbf{x}) = 0 \iff \mathbf{x} = \mathbf{0}
> $$

> [!example] Proprietà analitiche del prodotto scalare
> Il prodotto interno $(\mathcal{H}, (\cdot, \cdot))$ è bilineare, simmetrico, continuo e coercivo.
> Infatti:
> - $(x, x) = \|x\|^2 \implies \text{coercivo con } \alpha = 1$;
> - Per la disuguaglianza di Cauchy-Schwarz, $|(x, y)| \le \|x\| \|y\| \implies \text{continuo con } C = 1$.

> [!example] Forme bilineari in $\mathbb{R}^n$ e matrici simmetriche
> Sia $\mathcal{H} = \mathbb{R}^n$ e consideriamo la forma $a(\mathbf{u}, \mathbf{v}) = \mathbf{u}^T A \mathbf{v}$ associata a una matrice quadrata $A \in \mathrm{Mat}_\mathbb{R}(n, n)$.
> - La forma $a$ è sempre **continua**.
> - La forma $a$ è **simmetrica** se e solo se la matrice $A$ è simmetrica ($A = A^T$).
>
> In tal caso, per il teorema spettrale, la matrice $A$ è ortogonalmente diagonalizzabile:
> $$
> A = D^T \Lambda D
> $$
> dove $D$ è una matrice ortogonale e $\Lambda = \operatorname{diag}(\lambda_1, \dots, \lambda_n)$ è la matrice diagonale degli autovalori reali.
> Se $\lambda_1, \dots, \lambda_n$ sono gli autovalori di $A$, allora la forma è **coerciva** se e solo se tutti gli autovalori sono strettamente positivi:
> $$
> a \text{ coerciva} \iff \min_{i=1,\dots,n} \lambda_i =: \alpha > 0 \iff A \text{ è definita positiva}
> $$
> In tal caso si ha:
> $$
> a(\mathbf{u}, \mathbf{u}) = \mathbf{u}^T A \mathbf{u} \ge \alpha \|\mathbf{u}\|^2 \qquad \forall \mathbf{u} \in \mathbb{R}^n
> $$
>
### Coercività su $H^1$ vs $H_0^1$ e disuguaglianza di Poincaré

> [!example] Studio della forma dei gradienti su $H^1(\Omega)$
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto limitato e consideriamo la forma bilineare su $\mathcal{H} = H^1(\Omega)$:
> $$
> a(f, g) := \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
> $$
> 1. **Simmetria:** $a$ è simmetrica per la commutatività del prodotto scalare puntuale in $\mathbb{R}^n$:
>    $$
>    \nabla f \cdot \nabla g = \nabla g \cdot \nabla f
>    $$
> 2. **Continuità:** applicando Cauchy-Schwarz vettoriale e Hölder/Cauchy-Schwarz integrale:
>    $$
>    |a(f, g)| \le \int_\Omega |\nabla f \cdot \nabla g| \, d\mathbf{x} \le \int_\Omega \|\nabla f\|_{\mathbb{R}^n} \|\nabla g\|_{\mathbb{R}^n} \, d\mathbf{x} \le \|\nabla f\|_{L^2} \|\nabla g\|_{L^2} \le \|f\|_{H^1} \|g\|_{H^1}
>    $$
>    Quindi $a$ è continua con costante $C = 1$.
> 3. **Non-coercività su $H^1(\Omega)$:**
>    La forma $a$ **NON è coerciva** su tutto $H^1(\Omega)$.
>    Infatti, sia $g(\mathbf{x}) \equiv c \in \mathbb{R} \setminus \{0\}$ una funzione costante non nulla. Chiaramente $g \in W^{1,2}(\Omega) = H^1(\Omega)$ e la sua norma vale:
>    $$
>    \|g\|_{1,2}^2 = \|g\|_{L^2}^2 + \|\nabla g\|_{L^2}^2 = \int_\Omega c^2 \, d\mathbf{x} + 0 = c^2 |\Omega| > 0
>    $$
>    Tuttavia, essendo $\nabla g = \mathbf{0}$, si ha:
>    $$
>    a(g, g) = \int_\Omega \nabla g \cdot \nabla g \, d\mathbf{x} = \int_\Omega 0 \, d\mathbf{x} = 0
>    $$
>    Dunque non può esistere alcuna costante $\alpha > 0$ per cui $a(g, g) \ge \alpha \|g\|_{1,2}^2$.

> [!example] Coercività della forma dei gradienti su $H_0^1(\Omega)$
> Sia ora $\mathcal{H} = H_0^1(\Omega)$ con $\Omega \subseteq \mathbb{R}^n$ aperto limitato.
> Poiché $H_0^1(\Omega) \subseteq H^1(\Omega)$ è un sottospazio vettoriale chiuso, esso è a sua volta uno spazio di Hilbert.
> Consideriamo la medesima forma bilineare:
> $$
> a(f, g) := (f, g)_{H_0^1(\Omega)} = \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
> $$
> Essa è bilineare, simmetrica e continua.
> **Inoltre, su $H_0^1(\Omega)$, la forma $a$ è anche COERCIVA!**
>
> Infatti, essendo $\Omega$ limitato, per ogni $f \in H_0^1(\Omega)$ vale la **disuguaglianza di Poincaré**:
> $$
> \int_\Omega f^2 \, d\mathbf{x} \le C_P^2 \int_\Omega \|\nabla f\|^2 \, d\mathbf{x} = C_P^2 \| \|\nabla f\|_{\mathbb{R}^n} \|_{L^2}^2 \qquad \forall f \in H_0^1(\Omega)
> $$
> Valutando la norma Sobolev completa $\|f\|_{1,2}^2$:
> $$
> \|f\|_{1,2}^2 = \int_\Omega f^2 \, d\mathbf{x} + \int_\Omega \|\nabla f\|^2 \, d\mathbf{x} \le (1 + C_P^2) \int_\Omega \|\nabla f\|^2 \, d\mathbf{x} = (1 + C_P^2) a(f, f)
> $$
> Isolando la forma $a(f, f)$:
> $$
> a(f, f) \ge \frac{1}{C_P^2 + 1} \|f\|_{1,2}^2
> $$
> Ponendo $\alpha := \frac{1}{C_P^2 + 1} > 0$, la coercività è pienamente dimostrata.

> [!note] Norma equivalente su $H_0^1(\Omega)$
> Essendo $a$ simmetrica, bilineare e definita positiva su $H_0^1(\Omega)$, l'espressione:
> $$
> (f, g)_{H_0^1(\Omega)} := \int_\Omega \nabla f \cdot \nabla g \, d\mathbf{x}
> $$
> definisce un prodotto scalare su $H_0^1(\Omega)$ che induce la norma del gradiente:
> $$
> \|f\|_{H_0^1} := \sqrt{a(f, f)} = \left( \int_\Omega \|\nabla f\|^2 \, d\mathbf{x} \right)^{1/2}
> $$
> Inoltre, per coercività e continuità si ha:
> $$
> \alpha \|f\|_{1,2}^2 \le \|f\|_{H_0^1}^2 \le \|f\|_{1,2}^2 \qquad \forall f \in H_0^1(\Omega)
> $$
> da cui segue che la norma del gradiente $\|\cdot\|_{H_0^1} = \|\cdot\|_{W_0^{1,2}}$ e la norma Sobolev standard $\|\cdot\|_{W^{1,2}}$ sono **topologicamente equivalenti** sullo spazio $H_0^1(\Omega)$ per domini aperti limitati.
>
### Teorema di rappresentazione di Lax-Milgram

> [!theorem] Teorema di rappresentazione di Lax-Milgram
> Sia $(\mathcal{H}, (\cdot, \cdot))$ uno spazio di Hilbert e sia:
> $$
> a : \mathcal{H} \times \mathcal{H} \longrightarrow \mathbb{R}
> $$
> una forma bilineare, **continua** (con costante $C > 0$) e **coerciva** (con costante $\alpha > 0$).
> Allora per ogni funzionale lineare continuo $\varphi \in \mathcal{H}^*$ esiste un **unico** elemento $u \in \mathcal{H}$ tale che:
> $$
> \varphi(v) = a(u, v) \qquad \forall v \in \mathcal{H}
> $$
> Inoltre, vale la seguente stima di stabilità:
> $$
> \|\varphi\|_{H^*} \ge \alpha \|u\|_\mathcal{H}
> $$
> con $\alpha > 0$ costante di coercività di $a$.
>
> Se la forma $a$ è inoltre **simmetrica**, tale elemento unico $u \in \mathcal{H}$ è caratterizzato come l'unico punto di minimo del funzionale quadratico di energia:
> $$
> E(u) = \min_{v \in H} E(v)
> $$
> dove $E : \mathcal{H} \to \mathbb{R}$ è definito da:
> $$
> E(v) := \frac{1}{2} a(v, v) - \varphi(v)
> $$

> [!quote]- Dimostrazione
> Mostriamo la dimostrazione assumendo l'ipotesi aggiuntiva che la forma $a$ sia **simmetrica**:
> $$
> a(u, v) = a(v, u) \qquad \forall u, v \in \mathcal{H}
> $$
> poiché ai fini delle applicazioni nei metodi variazionali essa rappresenta un'ipotesi del tutto ragionevole e standard.
>
> **Passo 1 (Costruzione del prodotto scalare indotto su $\mathcal{H}$):**
> Mostriamo che $a(u, v)$ definisce un autentico prodotto scalare su $\mathcal{H}$:
> - $a$ è bilineare;
> - $a$ è simmetrica;
> - Per coercività:
>   $$
>   a(u, u) \ge \alpha \|u\|_\mathcal{H}^2 \ge 0 \qquad \forall u \in \mathcal{H}
>   $$
>   Dunque $a$ è semidefinita positiva, ed inoltre:
>   $$
>   a(u, u) = 0 \implies \alpha \|u\|_\mathcal{H}^2 \le 0 \implies \|u\|_\mathcal{H} = 0 \implies u = 0_\mathcal{H}
>   $$
>   Dunque $a$ è strettamente definita positiva ($a(u, u) = 0 \iff u = 0$).
>
> Pertanto:
> $$
> \|u\|_{H_a} := \sqrt{a(u, u)}
> $$
> è una norma prehilbertiana ben definita su $\mathcal{H}$.
>
> **Passo 2 (Equivalenza tra $\|\cdot\|_{H_a}$ e $\|\cdot\|_\mathcal{H}$):**
> Mostriamo che la norma prehilbertiana indotta $\|\cdot\|_{H_a}$ è topologicamente equivalente alla norma naturale $\|\cdot\|_\mathcal{H}$ dello spazio di Hilbert $\mathcal{H}$:
> - Per continuità della forma bilineare $a$:
>   $$
>   \|u\|_{H_a} = \sqrt{a(u, u)} \le \sqrt{C \|u\|_\mathcal{H}^2} = \sqrt{C} \|u\|_\mathcal{H}
>   $$
> - Per coercività della forma bilineare $a$:
>   $$
>   \|u\|_{H_a} = \sqrt{a(u, u)} \ge \sqrt{\alpha \|u\|_\mathcal{H}^2} = \sqrt{\alpha} \|u\|_\mathcal{H}
>   $$
> Combinando le due disuguaglianze otteniamo:
> $$
> \sqrt{\alpha} \|u\|_\mathcal{H} \le \|u\|_{H_a} \le \sqrt{C} \|u\|_\mathcal{H} \qquad \forall u \in \mathcal{H}
> $$
> il che stabilisce l'equivalenza topologica delle norme $\|\cdot\|_{H_a}$ e $\|\cdot\|_\mathcal{H}$.
>
> **Passo 3 (Completezza di $(\mathcal{H}, a)$):**
> Dimostriamo che lo spazio vettoriale $\mathcal{H}$ dotato del prodotto scalare indotto $a(\cdot, \cdot)$ e della norma associata $\|\cdot\|_{H_a}$ è completo, ossia che $(\mathcal{H}, a(\cdot, \cdot))$ è uno spazio di Hilbert.
> Sia $\{u_n\}_{n \in \mathbb{N}} \subset \mathcal{H}$ una successione di Cauchy rispetto alla norma $\|\cdot\|_{H_a}$, ossia:
> $$
> \|u_n - u_m\|_{H_a} \xrightarrow{n, m \to +\infty} 0
> $$
> Sfruttando la disuguaglianza di equivalenza ottenuta al Passo 2:
> $$
> \|u_n - u_m\|_\mathcal{H} \le \frac{1}{\sqrt{\alpha}} \|u_n - u_m\|_{H_a} \xrightarrow{n, m \to +\infty} 0
> $$
> Pertanto $\{u_n\}_{n \in \mathbb{N}}$ è una successione di Cauchy anche nello spazio di Hilbert originario $(\mathcal{H}, (\cdot, \cdot)_\mathcal{H})$. Poiché $\mathcal{H}$ è completo rispetto a $\|\cdot\|_\mathcal{H}$, esiste un limite forte:
> $$
> \exists u \in \mathcal{H} : \|u_n - u\|_\mathcal{H} \xrightarrow{n \to +\infty} 0
> $$
> Applicando nuovamente l'equivalenza delle norme:
> $$
> \|u - u_n\|_{H_a} \le \sqrt{C} \|u_n - u\|_\mathcal{H} \xrightarrow{n \to +\infty} 0
> $$
> Ne consegue che la successione converge a $u$ anche rispetto alla norma $\|\cdot\|_{H_a}$, dimostrando che $(\mathcal{H}, a(\cdot, \cdot))$ è uno spazio di Hilbert.
>
> **Passo 4 (Applicazione del teorema di rappresentazione di Riesz):**
> Verifichiamo che il funzionale lineare $\varphi \in \mathcal{H}^*$ è continuo anche rispetto alla nuova norma $\|\cdot\|_{H_a}$.
> Infatti, per la continuità di $\varphi$ su $(\mathcal{H}, \|\cdot\|_\mathcal{H})$ e l'equivalenza delle norme:
> $$
> |\varphi(v)| \le \|\varphi\|_{H^*} \|v\|_\mathcal{H} \le \|\varphi\|_{H^*} \frac{1}{\sqrt{\alpha}} \|v\|_{H_a} \qquad \forall v \in \mathcal{H}
> $$
> Dunque $\varphi$ appartiene al duale topologico di $(\mathcal{H}, a(\cdot, \cdot))$, con norma duale stimata da:
> $$
> \|\varphi\|_{(\mathcal{H}, a)^*} \le \frac{1}{\sqrt{\alpha}} \|\varphi\|_{H^*}
> $$
> Poiché $(\mathcal{H}, a(\cdot, \cdot))$ è uno spazio di Hilbert e $\varphi \in (\mathcal{H}, a)^*$, possiamo applicare il Teorema di rappresentazione di Riesz-Fréchet: esiste un unico elemento $u \in \mathcal{H}$ tale che:
> $$
> a(u, v) = \varphi(v) \qquad \forall v \in \mathcal{H}
> $$
> Inoltre, per la stima isometrica di Riesz e l'equivalenza delle norme:
> $$
> \sqrt{\alpha} \|u\|_\mathcal{H} \le \|u\|_{H_a} = \|\varphi\|_{(\mathcal{H}, a)^*} \le \frac{1}{\sqrt{\alpha}} \|\varphi\|_{H^*}
> $$
> da cui si deduce la stima a priori di stabilità:
> $$
> \|u\|_\mathcal{H} \le \frac{1}{\alpha} \|\varphi\|_{H^*}
> $$
>
> **Passo 5 (Caratterizzazione variazionale come minimo dell'energia):**
> Dimostriamo infine che la soluzione $u$ trovata minimizza il funzionale dell'energia quadratica:
> $$
> E(v) := \frac{1}{2} a(v, v) - \varphi(v)
> $$
> Per ogni direzione $v \in \mathcal{H}$ e per ogni parametro scalare $\varepsilon \in \mathbb{R}$, calcoliamo l'energia della perturbata $u + \varepsilon v$:
> $$
> \begin{aligned}
> E(u + \varepsilon v) &= \frac{1}{2} a(u + \varepsilon v, u + \varepsilon v) - \varphi(u + \varepsilon v) \\
> &= \frac{1}{2} \left[ a(u, u) + 2\varepsilon a(u, v) + \varepsilon^2 a(v, v) \right] - \varphi(u) - \varepsilon \varphi(v) \\
> &= \left( \frac{1}{2} a(u, u) - \varphi(u) \right) + \varepsilon \left( a(u, v) - \varphi(v) \right) + \frac{\varepsilon^2}{2} a(v, v) \\
> &= E(u) + \varepsilon \left( a(u, v) - \varphi(v) \right) + \frac{\varepsilon^2}{2} a(v, v)
> \end{aligned}
> $$
> da cui otteniamo l'identità fondamentale dell'incremento:
> $$
> E(u + \varepsilon v) - E(u) = \varepsilon \left( a(u, v) - \varphi(v) \right) + \frac{\varepsilon^2}{2} a(v, v)
> $$
> - Se $u$ è la soluzione debole, allora $a(u, v) - \varphi(v) = 0$ per ogni $v \in \mathcal{H}$. Pertanto:
>   $$
>   E(u + \varepsilon v) - E(u) = \frac{\varepsilon^2}{2} a(v, v) \ge 0 \qquad \forall v \in \mathcal{H}, \; \forall \varepsilon \in \mathbb{R}
>   $$
>   poiché $a(v, v) \ge \alpha \|v\|_\mathcal{H}^2 \ge 0$. Ponendo $\varepsilon = 1$ e variando $w = u + v \in \mathcal{H}$, segue che $E(w) \ge E(u)$ per ogni $w \in \mathcal{H}$, ossia $u$ è punto di minimo globale per $E$ su $\mathcal{H}$.
> - Viceversa, se $u$ è un punto di minimo globale per $E$, allora per ogni $v \in \mathcal{H}$ ed ogni $\varepsilon \in \mathbb{R}$ deve valere:
>   $$
>   E(u + \varepsilon v) - E(u) \ge 0 \implies \varepsilon \left( a(u, v) - \varphi(v) \right) + \frac{\varepsilon^2}{2} a(v, v) \ge 0
>   $$
>   Affinché questa disuguaglianza sussista per ogni $\varepsilon \in \mathbb{R}$ (sia positivo che negativo), il coefficiente del termine lineare in $\varepsilon$ deve necessariamente annullarsi:
>   $$
>   a(u, v) - \varphi(v) = 0 \implies a(u, v) = \varphi(v) \qquad \forall v \in \mathcal{H}
>   $$
>   Infatti, se fosse $a(u, v) - \varphi(v) \ne 0$, scegliendo $\varepsilon$ concorde in modulo sufficientemente piccolo e di segno opposto ad $a(u, v) - \varphi(v)$, il termine lineare dominerebbe quello quadratico rendendo l'espressione strettamente negativa, in palese contraddizione con la minimalità di $u$. $\blacksquare$
>
