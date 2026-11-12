---
title: "Teoria Debole per le PDE"
domain: "math/differential-equations"
source_course: "Analisi 3 (Cap. 3.10-3.11)"
tags:
  - math/pde/elliptic
  - math/pde/weak-solutions
  - math/pde/dirichlet-problem
  - math/pde/neumann-problem
---

# Teoria Debole per le Equazioni a Derivate Parziali Ellittiche

## 3.10. Risoluzione di EDP ellittiche con metodo variazionale

Ci proponiamo di studiare e risolvere equazioni differenziali alle derivate parziali (EDP) ellittiche del secondo ordine in forma di divergenza del tipo:
$$
-a \nabla^2 u(\mathbf{x}) + c(\mathbf{x}) u(\mathbf{x}) = f(\mathbf{x})
$$
sotto le seguenti ipotesi standard:
$$
\begin{cases}
\mathbf{x} \in \Omega \subseteq \mathbb{R}^n \text{ aperto limitato regolare} \\
a > 0 \text{ costante reale positiva} \\
c(\mathbf{x}) \ge 0 \quad \forall \mathbf{x} \in \Omega, \quad c \in L^\infty(\Omega) \\
f \in L^2(\Omega)
\end{cases}
$$

> [!example] Esempio canonico: L'equazione di Poisson
> Nel caso in cui il termine di reazione sia identicamente nullo ($c(\mathbf{x}) \equiv 0$) ed $a = 1$, l'equazione si riduce alla classica equazione di Poisson:
> $$
> -\nabla^2 u = f \quad \text{in } \Omega
> $$
> Affinché l'equazione ammetta un'unica soluzione fisica ben determinata, è necessario accoppiarla con opportune condizioni al contorno su $\partial\Omega$:
> 1. **Condizione di Dirichlet omogenea:**
>    $$
>    u(\mathbf{x}) = 0 \qquad \forall \mathbf{x} \in \partial\Omega
>    $$
>    (la funzione assume valore nullo prescritto sull'intera frontiera del dominio).
> 2. **Condizione di Neumann omogenea:**
>    $$
>    D_{\boldsymbol{\nu}} u(\mathbf{x}) = \nabla u(\mathbf{x}) \cdot \boldsymbol{\nu}(\mathbf{x}) = 0 \qquad \forall \mathbf{x} \in \partial\Omega
>    $$
>    (la derivata normale rispetto al versore normale uscente $\boldsymbol{\nu}$ è nulla, indicando flusso nullo attraverso la frontiera).
>
### Il problema di Dirichlet omogeneo

Definiamo formalmente il problema classico e la corrispondente formulazione debole (variazionale).

> [!definition] Formulazione classica del problema di Dirichlet omogeneo $(D)_c$
> Trovare una funzione classica $u \in C^2(\overline{\Omega})$ tale che:
> $$
> (D)_c \quad \begin{cases}
> -a \nabla^2 u(\mathbf{x}) + c(\mathbf{x}) u(\mathbf{x}) = f(\mathbf{x}) & \text{in } \Omega \\
> u(\mathbf{x}) = 0 & \text{su } \partial\Omega
> \end{cases}
> $$

> [!definition] Formulazione variazionale (debole) del problema di Dirichlet $(D)_v$
> Trovare una funzione debole $u \in H_0^1(\Omega)$ tale che per ogni funzione test $v \in H_0^1(\Omega)$ sia soddisfatta l'equazione integrale:
> $$
> (D)_v \quad \int_\Omega (a \nabla u \cdot \nabla v + c u v) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in H_0^1(\Omega)
> $$
> La condizione al contorno omogenea $u = 0$ su $\partial\Omega$ è incorporata direttamente nella prescrizione dello spazio funzionale $H_0^1(\Omega)$, poiché $\ker \tau_0 = H_0^1(\Omega)$.
>
Per quale ragione si introduce la formulazione variazionale e in che modo le due formulazioni sono collegate? La risposta risiede nel seguente teorema di compatibilità ed equivalenza:

> [!proposition] Equivalenza tra formulazione classica $(D)_c$ e variazionale $(D)_v$
> Siano $\Omega \subseteq \mathbb{R}^n$ un aperto limitato regolare, $a > 0$ una costante positiva, $c \in L^\infty(\Omega)$ con $c(\mathbf{x}) \ge 0$ q.o. in $\Omega$, ed $f \in L^2(\Omega)$.
> Si considerino i problemi $(D)_c$ e $(D)_v$. Allora:
> 1. Se $u$ è una soluzione classica di $(D)_c$, allora $u$ è anche una soluzione debole di $(D)_v$:
>    $$
>    u \text{ risolve } (D)_c \implies u \text{ risolve } (D)_v
>    $$
> 2. Viceversa, se $u$ è una soluzione debole di $(D)_v$ ed ha regolarità classica:
>    $$
>    u \in C^2(\overline{\Omega}), \quad c \in C^0(\Omega), \quad f \in C^0(\Omega)
>    $$
>    allora $u$ è una soluzione classica di $(D)_c$:
>    $$
>    u \text{ risolve } (D)_v \text{ con } u \in C^2(\overline{\Omega}) \implies u \text{ risolve } (D)_c
>    $$
>
Per dimostrare rigorosamente questa equivalenza premettiamo due lemmi fondamentali:

> [!lemma] Lemma (Prima formula di Green / Integrazione per parti in $\mathbb{R}^n$)
> Sia $\Omega \subseteq \mathbb{R}^n$ un dominio ammissibile per il teorema della divergenza, e siano $u \in C^2(\overline{\Omega})$ e $v \in C^1(\overline{\Omega})$. Allora vale:
> $$
> \int_\Omega \nabla u \cdot \nabla v \, d\mathbf{x} + \int_\Omega v \nabla^2 u \, d\mathbf{x} = \int_{\partial\Omega} v (\nabla u \cdot \boldsymbol{\nu}) \, d\sigma
> $$
> dove $\boldsymbol{\nu}$ è il versore normale uscente a $\partial\Omega$.

> [!quote]- Dimostrazione
> Si consideri il campo vettoriale differenziabile:
> $$
> \mathbf{F} := v \nabla u \in C^1(\overline{\Omega}; \mathbb{R}^n)
> $$
> Calcoliamo la divergenza di $\mathbf{F}$ applicando la regola del prodotto per le derivate parziali:
> $$
> \begin{aligned}
> \nabla \cdot \mathbf{F} &= \sum_{i=1}^n \frac{\partial}{\partial x_i} \left( v \frac{\partial u}{\partial x_i} \right) \\
> &= \sum_{i=1}^n \frac{\partial v}{\partial x_i} \frac{\partial u}{\partial x_i} + \sum_{i=1}^n v \frac{\partial^2 u}{\partial x_i^2} \\
> &= \nabla v \cdot \nabla u + v \nabla^2 u
> \end{aligned}
> $$
> Applicando il Teorema della divergenza di Gauss al campo $\mathbf{F}$ sul dominio $\Omega$:
> $$
> \int_\Omega \nabla \cdot \mathbf{F} \, d\mathbf{x} = \int_{\partial\Omega} \mathbf{F} \cdot \boldsymbol{\nu} \, d\sigma
> $$
> Poiché $\mathbf{F} \cdot \boldsymbol{\nu} = (v \nabla u) \cdot \boldsymbol{\nu} = v (\nabla u \cdot \boldsymbol{\nu})$, sostituendo l'espressione della divergenza otteniamo:
> $$
> \int_\Omega (\nabla v \cdot \nabla u + v \nabla^2 u) \, d\mathbf{x} = \int_{\partial\Omega} v (\nabla u \cdot \boldsymbol{\nu}) \, d\sigma
> $$
> che coincide con la prima formula di Green. $\blacksquare$

> [!lemma] Lemma di Du Bois-Reymond (Lemma fondamentale del calcolo delle variazioni)
> Sia $\Omega \subseteq \mathbb{R}^n$ un aperto. Se una funzione continua $w \in C^0(\overline{\Omega})$ soddisfa:
> $$
> \int_\Omega w \varphi \, d\mathbf{x} = 0 \qquad \forall \varphi \in C_0^\infty(\Omega)
> $$
> allora:
> $$
> w(\mathbf{x}) = 0 \qquad \forall \mathbf{x} \in \overline{\Omega}
> $$

> [!note] Osservazione: Interpretazione distribuzionale del Lemma di Du Bois-Reymond
> Poiché $w \in C^0(\Omega) \subset L_{\mathrm{loc}}^1(\Omega)$, essa definisce univocamente una distribuzione regolare $T_w \in \mathcal{D}^*(\Omega)$ mediante la formula:
> $$
> \langle T_w, \varphi \rangle = \int_\Omega w \varphi \, d\mathbf{x} \qquad \forall \varphi \in \mathcal{D}(\Omega)
> $$
> La condizione che l'integrale si annulli per ogni funzione test $\varphi \in \mathcal{D}(\Omega)$ equivale a richiedere che la distribuzione $T_w$ sia la distribuzione nulla in $\mathcal{D}^*(\Omega)$:
> $$
> \langle T_w, \varphi \rangle = 0 \quad \forall \varphi \in \mathcal{D}(\Omega) \implies T_w = 0 \text{ in } \mathcal{D}^*(\Omega)
> $$
> Ma una distribuzione regolare generata da una funzione continua si annulla se e solo se la funzione generatrice si annulla puntualmente: ne consegue $w \equiv 0$ su tutto $\Omega$.

> [!quote]- Dimostrazione
> Dimostriamo ora la Proposizione di equivalenza tra $(D)_c$ e $(D)_v$:
>
> **Parte 1: Dimostriamo che $u \text{ risolve } (D)_c \implies u \text{ risolve } (D)_v$.**
> Sia $u \in C^2(\overline{\Omega})$ una soluzione classica di $(D)_c$.
> - Poiché $\overline{\Omega}$ è limitato e chiuso (compatto in $\mathbb{R}^n$), le funzioni $u$ e $\nabla u$ sono continue su $\overline{\Omega}$ e per il Teorema di Weierstrass risultano limitate. Di conseguenza:
>   $$
>   u \in L^2(\Omega) \quad \text{e} \quad \nabla u \in (L^2(\Omega))^n \implies u \in H^1(\Omega) \cap C^0(\overline{\Omega})
>   $$
> - Inoltre, poiché $u$ soddisfa la condizione classica di Dirichlet al bordo $u = 0$ su $\partial\Omega$, per il Teorema di traccia:
>   $$
>   \tau_0 u = \left. u \right|_{\partial\Omega} = 0 \implies u \in \ker \tau_0 = H_0^1(\Omega)
>   $$
>   Dunque $u$ appartiene allo spazio funzionale proprio della formulazione debole.
> - Dobbiamo mostrare che:
>   $$
>   \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in H_0^1(\Omega)
>   $$
>   Procediamo dapprima sulle funzioni test lisce e successivamente estendiamo per densità:
>   1. **Funzioni test lisce $v \in C_0^\infty(\Omega)$:**
>      Sia $v \in C_0^\infty(\Omega) \subset H_0^1(\Omega)$. Poiché $u$ soddisfa puntualmente l'equazione in $\Omega$:
>      $$
>      -a \nabla^2 u + cu = f \quad \text{in } \Omega
>      $$
>      moltiplichiamo ambo i membri per $v$ e integriamo su $\Omega$:
>      $$
>      \int_\Omega (-a v \nabla^2 u + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in C_0^\infty(\Omega)
>      $$
>      Applicando la prima formula di Green al termine con il laplaciano:
>      $$
>      \int_\Omega -v \nabla^2 u \, d\mathbf{x} = \int_\Omega \nabla u \cdot \nabla v \, d\mathbf{x} - \int_{\partial\Omega} v (\nabla u \cdot \boldsymbol{\nu}) \, d\sigma
>      $$
>      Essendo $v \in C_0^\infty(\Omega)$, il suo supporto è compatto e strettamente contenuto all'interno di $\Omega$, per cui $v \equiv 0$ su $\partial\Omega$ e l'integrale di bordo svanisce:
>      $$
>      \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in C_0^\infty(\Omega)
>      $$
>   2. **Estensione a tutto $H_0^1(\Omega)$ per densità:**
>      Sia ora un generico $v \in H_0^1(\Omega)$. Per la densità di $C_0^\infty(\Omega)$ in $H_0^1(\Omega)$, esiste una successione $\{v_n\}_{n \in \mathbb{N}} \subset C_0^\infty(\Omega)$ tale che:
>      $$
>      v_n \xrightarrow{n \to +\infty} v \quad \text{in } H^1(\Omega)
>      $$
>      Per ogni elemento $v_n$ della successione sussiste l'uguaglianza debole:
>      $$
>      \int_\Omega (a \nabla u \cdot \nabla v_n + cuv_n) \, d\mathbf{x} = \int_\Omega f v_n \, d\mathbf{x} \qquad \forall n \in \mathbb{N}
>      $$
>      Passando al limite per $n \to +\infty$:
>      $$
>      \lim_{n \to +\infty} \int_\Omega (a \nabla u \cdot \nabla v_n + cuv_n) \, d\mathbf{x} = \lim_{n \to +\infty} \int_\Omega f v_n \, d\mathbf{x}
>      $$
>      Verifichiamo la convergenza di ciascun termine:
>      - Per il termine dei gradienti, applicando la disuguaglianza di Cauchy-Schwarz vettoriale e poi la disuguaglianza di Hölder integrale:
>        $$
>        \begin{aligned}
>        \left| \int_\Omega a \nabla u \cdot \nabla v_n \, d\mathbf{x} - \int_\Omega a \nabla u \cdot \nabla v \, d\mathbf{x} \right| &\le \int_\Omega |a \nabla u \cdot (\nabla v_n - \nabla v)| \, d\mathbf{x} \\
>        &\overset{\text{C-S}}{\le} |a| \int_\Omega |\nabla u| |\nabla (v_n - v)| \, d\mathbf{x} \\
>        &\overset{\text{Hölder}}{\le} |a| \|\nabla u\|_{L^2(\Omega)} \|\nabla (v_n - v)\|_{L^2(\Omega)} \\
>        &\le |a| \|u\|_{H^1(\Omega)} \|v_n - v\|_{H^1(\Omega)} \xrightarrow{n \to +\infty} 0
>        \end{aligned}
>        $$
>        perché $v_n \to v$ in $H^1(\Omega)$.
>      - Per il termine di reazione con $c \in L^\infty(\Omega)$:
>        $$
>        \begin{aligned}
>        \left| \int_\Omega c u v_n \, d\mathbf{x} - \int_\Omega c u v \, d\mathbf{x} \right| &\le \int_\Omega |c u (v_n - v)| \, d\mathbf{x} \\
>        &\overset{\text{ess sup}}{\le} \|c\|_{L^\infty(\Omega)} \int_\Omega |u| |v_n - v| \, d\mathbf{x} \\
>        &\overset{\text{Hölder}}{\le} \|c\|_{L^\infty(\Omega)} \|u\|_{L^2(\Omega)} \|v_n - v\|_{L^2(\Omega)} \\
>        &\le \|c\|_{L^\infty(\Omega)} \|u\|_{H^1(\Omega)} \|v_n - v\|_{H^1(\Omega)} \xrightarrow{n \to +\infty} 0
>        \end{aligned}
>        $$
>        perché $v_n \to v$ in $H^1(\Omega)$.
>      - Allo stesso modo per il termine noto con $f \in L^2(\Omega)$:
>        $$
>        \left| \int_\Omega f v_n \, d\mathbf{x} - \int_\Omega f v \, d\mathbf{x} \right| \le \|f\|_{L^2(\Omega)} \|v_n - v\|_{L^2(\Omega)} \le \|f\|_{L^2(\Omega)} \|v_n - v\|_{H^1(\Omega)} \xrightarrow{n \to +\infty} 0
>        $$
>      Pertanto l'uguaglianza passa al limite per $n \to +\infty$:
>      $$
>      \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in H_0^1(\Omega)
>      $$
>      dimostrando che $u$ è soluzione debole di $(D)_v$.
>
> **Parte 2: Dimostriamo che $u \text{ risolve } (D)_v \implies u \text{ risolve } (D)_c$ sotto regolarità classica.**
> Sia $u \in H_0^1(\Omega)$ una soluzione debole di $(D)_v$ e assumiamo per ipotesi che essa possieda regolarità $u \in C^2(\overline{\Omega})$, con $c, f \in C^0(\Omega)$.
> - Poiché $u \in H_0^1(\Omega) \cap C^0(\overline{\Omega})$, per il teorema di traccia:
>   $$
>   \left. u \right|_{\partial\Omega} = \tau_0 u = 0 \implies u = 0 \text{ su } \partial\Omega
>   $$
>   dunque la condizione al contorno classica di Dirichlet è identicamente verificata.
> - Inoltre, la formulazione variazionale:
>   $$
>   \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in H_0^1(\Omega)
>   $$
>   vale in particolare per ogni funzione test $v \in C_0^\infty(\Omega) \subset H_0^1(\Omega)$.
> - Procedendo a ritroso ed integrando per parti il termine dei gradienti (essendo $u \in C^2(\overline{\Omega})$ e $v \equiv 0$ su $\partial\Omega$):
>   $$
>   \int_\Omega (-a v \nabla^2 u + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x}
>   $$
>   portando tutti i termini sotto un unico integrale:
>   $$
>   \int_\Omega (-a \nabla^2 u + cu - f) v \, d\mathbf{x} = 0 \qquad \forall v \in C_0^\infty(\Omega)
>   $$
> - Poiché per ipotesi $u \in C^2(\overline{\Omega})$, $c \in C^0(\Omega)$ ed $f \in C^0(\Omega)$, la funzione integranda tra parentesi:
>   $$
>   w(\mathbf{x}) := -a \nabla^2 u(\mathbf{x}) + c(\mathbf{x}) u(\mathbf{x}) - f(\mathbf{x})
>   $$
>   è continua in $\Omega$ ($w \in C^0(\Omega)$). Applicando il Lemma di Du Bois-Reymond, otteniamo:
>   $$
>   -a \nabla^2 u(\mathbf{x}) + c(\mathbf{x}) u(\mathbf{x}) = f(\mathbf{x}) \qquad \forall \mathbf{x} \in \Omega
>   $$
> Cioè $u$ è un'autentica soluzione classica del problema differenziale $(D)_c$. $\blacksquare$
>
### Teorema di esistenza e unicità per il problema di Dirichlet variazionale

> [!theorem] Teorema di esistenza e unicità di Dirichlet variazionale (Lax-Milgram)
> Si considerino le ipotesi del problema di Dirichlet variazionale $(D)_v$:
> $$
> \begin{cases}
> \Omega \subseteq \mathbb{R}^n \text{ aperto limitato regolare} \\
> a > 0 \text{ costante reale positiva} \\
> c(\mathbf{x}) \ge 0 \text{ in } \Omega, \quad c \in L^\infty(\Omega) \\
> f \in L^2(\Omega)
> \end{cases}
> $$
> Allora il problema variazionale $(D)_v$ ammette un'**unica** soluzione debole, ossia:
> $$
> \exists ! u \in H_0^1(\Omega) : \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega f v \, d\mathbf{x} \qquad \forall v \in H_0^1(\Omega)
> $$
> Inoltre, la soluzione debole $u$ è univocamente caratterizzata dalla proprietà di minimizzare il funzionale dell'energia di Dirichlet sul sottospazio $H_0^1(\Omega)$:
> $$
> E(u) = \min_{v \in H_0^1(\Omega)} E(v)
> $$
> con
> $$
> E(v) = \frac{1}{2} \int_\Omega \left( a |\nabla v|^2 + c v^2 \right) d\mathbf{x} - \int_\Omega f v \, d\mathbf{x}
> $$

> [!quote]- Dimostrazione
> Dimostriamo il teorema applicando il Teorema di rappresentazione di Lax-Milgram nello spazio di Hilbert:
> $$
> \mathcal{H} := H_0^1(\Omega)
> $$
> dotato della norma classica di Sobolev:
> $$
> \|v\|_{H^1(\Omega)} = \|v\|_{1, 2} = \left[ \int_\Omega v^2 \, d\mathbf{x} + \int_\Omega |\nabla v|^2 \, d\mathbf{x} \right]^{1/2}
> $$
> Definiamo la forma bilineare $a : \mathcal{H} \times \mathcal{H} \to \mathbb{R}$:
> $$
> a(u, v) := \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x}
> $$
> e il funzionale lineare $\varphi : \mathcal{H} \to \mathbb{R}$:
> $$
> \varphi(v) := \int_\Omega f v \, d\mathbf{x} \qquad \forall u, v \in H_0^1(\Omega)
> $$
> Verifichiamo che sono pienamente soddisfatte tutte le ipotesi richieste da Lax-Milgram:
>
> 1. **Bilinearità e simmetria:**
>    La bilinearità discende immediatamente dalla linearità dell'operatore gradiente e dell'integrale di Lebesgue. La simmetria è palese:
>    $$
>    a(u, v) = \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} = \int_\Omega (a \nabla v \cdot \nabla u + cvu) \, d\mathbf{x} = a(v, u) \qquad \forall u, v \in \mathcal{H}
>    $$
>
> 2. **Continuità della forma bilineare $a$:**
>    Stimiamo il valore assoluto della forma bilineare sfruttando la disuguaglianza triangolare, la disuguaglianza di Cauchy-Schwarz vettoriale e la disuguaglianza di Hölder integrale:
>    $$
>    \begin{aligned}
>    |a(u, v)| &= \left| \int_\Omega (a \nabla u \cdot \nabla v + cuv) \, d\mathbf{x} \right| \\
>    &\overset{\text{C-S, dis. tri.}}{\le} \int_\Omega |a| |\nabla u| |\nabla v| \, d\mathbf{x} + \int_\Omega |c u v| \, d\mathbf{x} \\
>    &\overset{\text{Hölder}}{\le} |a| \|\nabla u\|_{L^2(\Omega)} \|\nabla v\|_{L^2(\Omega)} + \|c\|_{L^\infty(\Omega)} \|u\|_{L^2(\Omega)} \|v\|_{L^2(\Omega)} \\
>    &\le (|a| + \|c\|_{L^\infty(\Omega)}) \|u\|_{H^1(\Omega)} \|v\|_{H^1(\Omega)}
>    \end{aligned}
>    $$
>    Posto $C := |a| + \|c\|_{L^\infty(\Omega)} < +\infty$, la forma bilineare $a$ è continua su $H_0^1(\Omega) \times H_0^1(\Omega)$.
>
> 3. **Coercività della forma bilineare $a$:**
>    Valutiamo la forma quadratica associata per un generico $u \in H_0^1(\Omega)$. Poiché per ipotesi $c(\mathbf{x}) \ge 0$ q.o. in $\Omega$:
>    $$
>    a(u, u) = \int_\Omega \left( a |\nabla u|^2 + c u^2 \right) d\mathbf{x} \ge a \int_\Omega |\nabla u|^2 \, d\mathbf{x} = a \|\nabla u\|_{L^2(\Omega)}^2 = a \|u\|_{W_0^{1, 2}(\Omega)}^2
>    $$
>    Poiché $\Omega$ è un aperto limitato ed $u \in H_0^1(\Omega)$, possiamo applicare la **disuguaglianza di Poincaré**, la quale garantisce l'esistenza di una costante geometrica $K > 0$ tale che:
>    $$
>    \|\nabla u\|_{L^2(\Omega)}^2 \ge K \|u\|_{H^1(\Omega)}^2
>    $$
>    Ne consegue:
>    $$
>    a(u, u) \ge a K \|u\|_{H^1(\Omega)}^2 \qquad \forall u \in H_0^1(\Omega)
>    $$
>    Poiché $a > 0$ e $K > 0$, la costante di coercività $\alpha := a K > 0$ è strettamente positiva, rendendo $a$ coerciva su $H_0^1(\Omega)$.
>
> 4. **Linearità e continuità del funzionale $\varphi$:**
>    - La linearità di $\varphi$ discende direttamente dalla linearità dell'integrale.
>    - La continuità segue immediatamente dalla disuguaglianza di Hölder su $L^2$:
>      $$
>      |\varphi(v)| \le \int_\Omega |f v| \, d\mathbf{x} \overset{\text{Hölder}}{\le} \|f\|_{L^2(\Omega)} \|v\|_{L^2(\Omega)} \le \|f\|_{L^2(\Omega)} \|v\|_{H^1(\Omega)}
>      $$
>      Dunque $\|\varphi\|_{(H_0^1)^*} \le \|f\|_{L^2(\Omega)} < +\infty$, per cui $\varphi \in (H_0^1(\Omega))^*$.
>
> Essendo verificate tutte le ipotesi, il **Teorema di Lax-Milgram** assicura che esiste un'unica soluzione debole:
> $$
> \exists ! u \in H_0^1(\Omega) : a(u, v) = \varphi(v) \qquad \forall v \in H_0^1(\Omega)
> $$
> Inoltre, poiché la forma bilineare $a$ è simmetrica, la tesi di caratterizzazione del teorema di Lax-Milgram stabilisce che tale soluzione debole $u$ è l'unico minimizzante globale del funzionale dell'energia di Dirichlet $E(v) = \frac{1}{2} a(v, v) - \varphi(v)$ su tutto $H_0^1(\Omega)$. $\blacksquare$
>
## 3.11. Problema di Neumann

### Formulazione classica e debole

> [!definition] Problema di Neumann: formulazione classica e variazionale
> - **Formulazione classica $(N)_c$:**
>   $$
>   (N)_c : \begin{cases}
>   -a \nabla^2 u + cu = f & \text{in } \Omega \\
>   D_{\boldsymbol{\nu}} u = 0 & \text{su } \partial\Omega
>   \end{cases}
>   $$
>   dove $D_{\boldsymbol{\nu}} u = \frac{\partial u}{\partial \nu} = \nabla u \cdot \boldsymbol{\nu}$ denota la derivata normale uscente lungo il bordo $\partial\Omega$.
> - **Formulazione variazionale (debole) $(N)_v$:**
>   Determinare $u \in H^1(\Omega)$ tale che:
>   $$
>   (N)_v : \int_\Omega a \nabla u \cdot \nabla v \, d\mathbf{x} + \int_\Omega cuv \, d\mathbf{x} = \int_\Omega fv \, d\mathbf{x} \quad \forall v \in H^1(\Omega)
>   $$
>   *(si noti che lo spazio funzionale dei test è l'intero $H^1(\Omega)$ e **non** lo spazio a traccia nulla $H_0^1(\Omega)$).*
> 
> Le ipotesi sui coefficienti e sul dominio $\Omega$ sono le stesse assunte per il problema di Dirichlet ($a, c \in L^\infty(\Omega)$, $a(\mathbf{x}) \ge a_0 > 0$, $f \in L^2(\Omega)$, con $\Omega$ aperto connesso a bordo sufficientemente regolare).

> [!proposition] Equivalenza tra formulazione classica e variazionale
> Sotto le consuete ipotesi di regolarità:
> 1. Se $u$ è soluzione classica di $(N)_c$, allora $u$ è soluzione variazionale di $(N)_v$;
> 2. Se $u$ è soluzione variazionale di $(N)_v$ e si verifica l'ulteriore regolarità:
>    $$
>    \begin{cases}
>    u \in C^2(\overline{\Omega}) \\
>    c, f \in C^0(\overline{\Omega})
>    \end{cases}
>    $$
>    allora $u$ è soluzione classica di $(N)_c$.

> [!note] Codifica del dato al contorno nello spazio funzionale
> Nella formulazione variazionale, il dato al bordo è codificato direttamente nella scelta dello spazio delle funzioni ammissibili:
> - Nel problema di **Dirichlet** $(D)_v$, le funzioni test appartengono a $H_0^1(\Omega)$, imponendo la condizione al contorno omogenea per via essenziale (incorporata nella definizione dello spazio):
>   $$
>   (D)_v \implies v \in H_0^1(\Omega)
>   $$
> - Nel problema di **Neumann** $(N)_v$, le funzioni test appartengono all'intero spazio $H^1(\Omega)$:
>   $$
>   (N)_v \implies v \in H^1(\Omega)
>   $$
>   La condizione omogenea sul flusso normale $D_{\boldsymbol{\nu}} u = 0$ emerge in modo naturale dal termine di bordo nell'integrazione per parti (condizione al contorno naturale).
> 
> La proposizione si dimostra in maniera del tutto analoga a quella relativa al problema di Dirichlet.
>
### Esistenza e unicità della soluzione debole

> [!theorem] Esistenza ed unicità per il problema di Neumann
> Sotto le ipotesi della formulazione variazionale $(N)_v$, se:
> $$
> c(\mathbf{x}) \ge c_0 > 0 \quad \text{per q.o. } \mathbf{x} \in \Omega \quad (\operatorname{ess}\inf_\Omega c > 0)
> $$
> allora esiste un'unica soluzione debole $u \in H^1(\Omega)$ tale che:
> $$
> \int_\Omega a \nabla u \cdot \nabla v \, d\mathbf{x} + \int_\Omega cuv \, d\mathbf{x} = \int_\Omega fv \, d\mathbf{x} \quad \forall v \in H^1(\Omega)
> $$
> Inoltre, la soluzione debole $u$ è univocamente caratterizzata dal principio variazionale di minimo:
> $$
> E(u) = \min_{v \in H^1(\Omega)} E(v)
> $$
> dove il funzionale dell'energia $E : H^1(\Omega) \to \mathbb{R}$ è definito da:
> $$
> E(v) = \frac{1}{2} \int_\Omega \left( a \|\nabla v\|^2 + c v^2 \right) d\mathbf{x} - \int_\Omega fv \, d\mathbf{x}
> $$

> [!quote]- Dimostrazione
> La dimostrazione discende dall'applicazione del Teorema di Lax-Milgram.
> Si consideri lo spazio di Hilbert:
> $$
> \mathcal{H} = H^1(\Omega), \qquad \|v\|_{1, 2} = \left[ \int_\Omega \left( \|\nabla v\|^2 + v^2 \right) d\mathbf{x} \right]^{\frac{1}{2}}
> $$
> unitamente alla forma bilineare $a : H^1(\Omega) \times H^1(\Omega) \to \mathbb{R}$ e al funzionale lineare $\varphi : H^1(\Omega) \to \mathbb{R}$:
> $$
> a(u, v) = \int_\Omega a \nabla u \cdot \nabla v \, d\mathbf{x} + \int_\Omega cuv \, d\mathbf{x}, \qquad \varphi(v) = \int_\Omega fv \, d\mathbf{x}
> $$
> per ogni $u, v \in H^1(\Omega)$.
> 
> La continuità di $a(\cdot, \cdot)$ e la continuità del funzionale $\varphi(\cdot)$ su $H^1(\Omega)$ seguono direttamente dalla disuguaglianza di Cauchy-Schwarz, esattamente come nel caso del problema di Dirichlet.
> 
> L'unica differenza sostanziale rispetto al problema di Dirichlet risiede nella verifica della **coercività** della forma bilineare $a(u, v)$, dal momento che su $H^1(\Omega)$ non è possibile applicare la classica disuguaglianza di Poincaré per stimare la norma $L^2$ tramite il solo gradiente.
> Valutando la forma bilineare sulla diagonale:
> $$
> a(u, u) = \int_\Omega a \|\nabla u\|^2 \, d\mathbf{x} + \int_\Omega cu^2 \, d\mathbf{x}
> $$
> ed usufruendo dell'ipotesi di positività uniforme $c(\mathbf{x}) \ge c_0 > 0$ quasi ovunque in $\Omega$:
> $$
> a(u, u) \ge \int_\Omega a \|\nabla u\|^2 \, d\mathbf{x} + c_0 \int_\Omega u^2 \, d\mathbf{x} = \int_\Omega a \|\nabla u\|^2 \, d\mathbf{x} + c_0 \|u\|_{L^2(\Omega)}^2
> $$
> Assumendo la consueta ellitticità uniforme $a(\mathbf{x}) \ge a > 0$:
> $$
> \begin{align*}
> a(u, u) &\ge \min\{a, c_0\} \left( \int_\Omega \|\nabla u\|^2 \, d\mathbf{x} + \int_\Omega u^2 \, d\mathbf{x} \right) \\
> &= \min\{a, c_0\} \underbrace{\left[ \|u\|_{W_0^{1, 2}}^2 + \|u\|_{L^2}^2 \right]}_{\|u\|_{1, 2}^2} \\
> &= \min\{a, c_0\} \|u\|_{H^1(\Omega)}^2
> \end{align*}
> $$
> Poiché $\min\{a, c_0\} > 0$, la forma bilineare $a(\cdot, \cdot)$ è strettamente coerciva su $H^1(\Omega)$.
> La conclusione della tesi e la caratterizzazione del minimo dell'energia seguono pertanto in maniera identica a quanto visto per il problema di Dirichlet. $\blacksquare$
>
