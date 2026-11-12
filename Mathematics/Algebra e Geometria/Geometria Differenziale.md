---
title: "Geometria Differenziale"
domain: "math/differential-geometry"
source_course: "Analisi 2 (Cap. 10.3)"
tags:
  - math/geometry/differential-forms
  - math/geometry/wedge-product
  - math/geometry/stokes-theorem
  - math/geometry/manifolds
---

# 10. Geometria Differenziale: Forme Esterne e Teorema di Stokes

## 10.3. Forme differenziali lineari e Teorema generale di Stokes per varietà con bordo

### Spazio duale, covettori e algebra delle forme differenziali esterne

Si consideri lo spazio vettoriale euclideo standard $\mathbb{R}^3$ dotato della base canonica $\{\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3\}$.

> [!definition] Spazio duale e covettori
> Si definisce spazio duale di $\mathbb{R}^3$, indicato con $(\mathbb{R}^3)^* =: \Lambda^1(\mathbb{R}^3)$, lo spazio vettoriale dei funzionali lineari $L: \mathbb{R}^3 \to \mathbb{R}$.
> La base duale canonica $\{\boldsymbol{\varepsilon}^1, \boldsymbol{\varepsilon}^2, \boldsymbol{\varepsilon}^3\}$ è definita dalla relazione fondamentale:
> $$
> \boldsymbol{\varepsilon}^i(\mathbf{e}_j) = \delta_{ij}
> $$
> Un elemento $\boldsymbol{\omega} \in (\mathbb{R}^3)^*$ prende il nome di **covettore** ed ammette l'espressione:
> $$
> \boldsymbol{\omega} = \omega_1 \boldsymbol{\varepsilon}^1 + \omega_2 \boldsymbol{\varepsilon}^2 + \omega_3 \boldsymbol{\varepsilon}^3
> $$
>
In geometria differenziale e analisi sui collettori, gli elementi della base duale canonica vengono indicati con i differenziali delle funzioni coordinate:
$$
\boldsymbol{\varepsilon}^i =: dx^i
$$
Infatti, interpretando $x^i: \mathbb{R}^3 \to \mathbb{R}$ come l'operatore di proiezione sulla coordinata $i$-esima, il suo differenziale $dx^i$ valutato sul vettore canonico $\mathbf{e}_j = \frac{\partial}{\partial x_j}$ soddisfa:
$$
dx^i(\mathbf{e}_j) = \frac{\partial x_i}{\partial x_j} = \delta_{ij}
$$

> [!definition] 1-forma differenziale
> Una 1-forma differenziale su $\mathbb{R}^3$ (o su un aperto $U \subseteq \mathbb{R}^3$) è un campo di covettori, ovvero una mappa liscia che associa a ciascun punto $\mathbf{x} \in \mathbb{R}^3$ un covettore in $(\mathbb{R}^3)^*$:
> $$
> \boldsymbol{\omega}(\mathbf{x}) = \omega_1(\mathbf{x}) \, dx^1 + \omega_2(\mathbf{x}) \, dx^2 + \omega_3(\mathbf{x}) \, dx^3 = \sum_{i=1}^3 \omega_i(\mathbf{x}) \, dx^i
> $$
> con coefficienti $\omega_i \in C^\infty(\mathbb{R}^3)$. Lo spazio delle 1-forme differenziali su $\mathbb{R}^3$ si denota con $\Omega^1(\mathbb{R}^3)$.
>
### Forme bilineari antisimmetriche e 2-forme differenziali

Si consideri lo spazio delle forme bilineari e antisimmetriche su $\mathbb{R}^3$:
$$
\Lambda^2(\mathbb{R}^3) := \{ L: \mathbb{R}^3 \times \mathbb{R}^3 \to \mathbb{R} : L \text{ bilineare e antisimmetrica} \}
$$
dove l'antisimmetria impone che per ogni coppia di vettori $\mathbf{v}_1, \mathbf{v}_2 \in \mathbb{R}^3$:
$$
L(\mathbf{v}_1, \mathbf{v}_2) = -L(\mathbf{v}_2, \mathbf{v}_1) \implies L(\mathbf{v}, \mathbf{v}) = 0
$$

> [!definition] Prodotto esterno (wedge product) di 1-forme
> Siano $L_1, L_2 \in \Lambda^1(\mathbb{R}^3)$ due covettori. Si definisce il prodotto esterno $L_1 \wedge L_2 \in \Lambda^2(\mathbb{R}^3)$ come la forma bilineare alternante data dal determinante:
> $$
> (L_1 \wedge L_2)(\mathbf{v}_1, \mathbf{v}_2) := \begin{vmatrix} L_1(\mathbf{v}_1) & L_1(\mathbf{v}_2) \\ L_2(\mathbf{v}_1) & L_2(\mathbf{v}_2) \end{vmatrix} = L_1(\mathbf{v}_1) L_2(\mathbf{v}_2) - L_1(\mathbf{v}_2) L_2(\mathbf{v}_1)
> $$
>
Dalle proprietà del determinante algebrico discendono immediatamente le proprietà fondanti del prodotto wedge sui differenziali coordinati:
1. **Nilpotenza per elementi identici:**
   $$
   (dx^i \wedge dx^i)(\mathbf{v}_1, \mathbf{v}_2) = \begin{vmatrix} dx^i(\mathbf{v}_1) & dx^i(\mathbf{v}_2) \\ dx^i(\mathbf{v}_1) & dx^i(\mathbf{v}_2) \end{vmatrix} = 0 \implies dx^i \wedge dx^i = 0
   $$
2. **Anticommutatività:**
   $$
   dx^i \wedge dx^j = -dx^j \wedge dx^i
   $$

Ne consegue che una base dello spazio $\Lambda^2(\mathbb{R}^3)$, avente dimensione $\binom{3}{2} = 3$, è data da:
$$
\{ dx^1 \wedge dx^2, \; dx^1 \wedge dx^3, \; dx^2 \wedge dx^3 \}
$$
oppure ordinata ciclicamente come $\{ dx \wedge dy, \; dy \wedge dz, \; dz \wedge dx \}$.

> [!definition] 2-forma differenziale
> Una 2-forma differenziale su $\mathbb{R}^3$ è un'applicazione regolare che associa ad ogni punto un elemento di $\Lambda^2(\mathbb{R}^3)$:
> $$
> \begin{align}
> \boldsymbol{\omega}(\mathbf{x}) &= \omega_{12}(\mathbf{x}) \, dx^1 \wedge dx^2 + \omega_{13}(\mathbf{x}) \, dx^1 \wedge dx^3 + \omega_{23}(\mathbf{x}) \, dx^2 \wedge dx^3 \\
> &= \sum_{1 \le i < j \le 3} \omega_{ij}(\mathbf{x}) \, dx^i \wedge dx^j \in \Omega^2(\mathbb{R}^3)
> \end{align}
> $$
>
### Estensione a $k$-forme differenziali in $\mathbb{R}^n$

Più in generale, per uno spazio euclideo $n$-dimensionale $\mathbb{R}^n$:

> [!definition] Spazio $\Lambda^k(\mathbb{R}^n)$ e $k$-forme
> Si definisce $\Lambda^k(\mathbb{R}^n)$ lo spazio vettoriale dei funzionali $k$-lineari e alternanti:
> $$
> \Lambda^k(\mathbb{R}^n) := \{ L: \underbrace{\mathbb{R}^n \times \dots \times \mathbb{R}^n}_{k \text{ volte}} \to \mathbb{R} : L \text{ è multilineare e alternante} \}
> $$
> ovvero $L$ cambia segno scambiando due argomenti qualsiasi:
> $$
> L(\mathbf{v}_1, \dots, \mathbf{v}_i, \dots, \mathbf{v}_j, \dots, \mathbf{v}_k) = -L(\mathbf{v}_1, \dots, \mathbf{v}_j, \dots, \mathbf{v}_i, \dots, \mathbf{v}_k)
> $$
> Dati $L_1, \dots, L_k \in \Lambda^1(\mathbb{R}^n)$, il loro prodotto wedge $L_1 \wedge \dots \wedge L_k \in \Lambda^k(\mathbb{R}^n)$ è definito da:
> $$
> (L_1 \wedge \dots \wedge L_k)(\mathbf{v}_1, \dots, \mathbf{v}_k) := \det \left( L_i(\mathbf{v}_j) \right)_{i,j=1}^k
> $$
>
Una base canonica di $\Lambda^k(\mathbb{R}^n)$ è data dall'insieme di forme elementari:
$$
\{ dx^{i_1} \wedge dx^{i_2} \wedge \dots \wedge dx^{i_k} : 1 \le i_1 < i_2 < \dots < i_k \le n \}
$$
la cui dimensione corrisponde al coefficiente binomiale:
$$
\dim(\Lambda^k(\mathbb{R}^n)) = \binom{n}{k} \quad (k \le n)
$$
Se $k > n$, lo spazio è degenere: $\Lambda^k(\mathbb{R}^n) = \{0\}$.

Una **$k$-forma differenziale** $\omega \in \Omega^k(\mathbb{R}^n)$ (o campo tensoriale alternante di ordine $k$) è espressa nella notazione a multi-indice da:
$$
\omega(\mathbf{x}) = \sum_{1 \le i_1 < \dots < i_k \le n} \omega_{i_1 \dots i_k}(\mathbf{x}) \, dx^{i_1} \wedge \dots \wedge dx^{i_k} = \sum_{\mathbf{i}} \omega_{\mathbf{i}}(\mathbf{x}) \, dx^{\mathbf{i}}
$$
dove $\mathbf{i} = (i_1, \dots, i_k)$ è una sequenza strettamente crescente di indici compresi tra $1$ ed $n$.

> [!note] Convenzione per 0-forme
> Per $k = 0$, lo spazio $\Lambda^0(\mathbb{R}^n)$ si identifica con il campo scalare $\mathbb{R}$. Le 0-forme differenziali corrispondono alle funzioni scalari lisce:
> $$
> \Omega^0(\mathbb{R}^n) := C^\infty(\mathbb{R}^n)
> $$
>
### Operazioni sulle forme differenziali: somma, wedge e derivata esterna

1. **Somma:** Dati $\omega, \eta \in \Omega^k(\mathbb{R}^n)$, la somma componente per componente:
   $$
   \omega + \eta = \sum_{\mathbf{i}} \left( \omega_{\mathbf{i}}(\mathbf{x}) + \eta_{\mathbf{i}}(\mathbf{x}) \right) dx^{\mathbf{i}} \in \Omega^k(\mathbb{R}^n)
   $$
2. **Prodotto wedge tra forme di grado arbitrario:** Date $\omega \in \Omega^k(\mathbb{R}^n)$ ed $\eta \in \Omega^s(\mathbb{R}^n)$, il prodotto esterno $\omega \wedge \eta \in \Omega^{k+s}(\mathbb{R}^n)$ è dato da:
   $$
   \omega \wedge \eta := \left( \sum_{\mathbf{i}} \omega_{\mathbf{i}}(\mathbf{x}) \, dx^{\mathbf{i}} \right) \wedge \left( \sum_{\mathbf{j}} \eta_{\mathbf{j}}(\mathbf{x}) \, dx^{\mathbf{j}} \right) = \sum_{\mathbf{i}, \mathbf{j}} \omega_{\mathbf{i}}(\mathbf{x}) \eta_{\mathbf{j}}(\mathbf{x}) \, dx^{\mathbf{i}} \wedge dx^{\mathbf{j}}
   $$
   Proprietà del prodotto wedge:
   - **Associatività:** $(\omega \wedge \eta) \wedge \theta = \omega \wedge (\eta \wedge \theta)$;
   - **Commutatività graduata (anti-commutatività):**
     $$
     \omega \wedge \eta = (-1)^{ks} \, \eta \wedge \omega
     $$

> [!definition] Derivata esterna (operatore di Cartan)
> La derivata esterna è l'operatore differenziale lineare:
> $$
> d: \Omega^k(\mathbb{R}^n) \to \Omega^{k+1}(\mathbb{R}^n)
> $$
> definito univocamente dalle seguenti prescrizioni:
> 1. Per una 0-forma (funzione scalare $f \in \Omega^0 = C^\infty$):
>    $$
>    df := \sum_{i=1}^n \frac{\partial f}{\partial x_i} \, dx^i
>    $$
> 2. Per una $k$-forma con $k \ge 1$:
>    $$
>    d\omega := \sum_{\mathbf{i}} d\omega_{\mathbf{i}}(\mathbf{x}) \wedge dx^{\mathbf{i}} = \sum_{\mathbf{i}} \left( \sum_{j=1}^n \frac{\partial \omega_{\mathbf{i}}}{\partial x_j} dx^j \right) \wedge dx^{\mathbf{i}} \in \Omega^{k+1}(\mathbb{R}^n)
>    $$

> [!proposition] Proprietà fondamentali della derivata esterna
> L'operatore $d$ soddisfa:
> 1. **Linearità:** $d(\alpha \omega + \beta \eta) = \alpha d\omega + \beta d\eta$, con $\alpha, \beta \in \mathbb{R}$;
> 2. **Regola di Leibniz graduata:** Per $\omega \in \Omega^k$ ed $\eta \in \Omega^s$:
>    $$
>    d(\omega \wedge \eta) = d\omega \wedge \eta + (-1)^k \omega \wedge d\eta
>    $$
> 3. **Nilpotenza (Identità fondamentale di Poincaré):** Per ogni forma differenziale $\omega$:
>    $$
>    d(d\omega) = d^2 \omega = 0 \in \Omega^{k+2}(\mathbb{R}^n)
>    $$
>
### Forme differenziali in $\mathbb{R}^3$, rotore e divergenza

Sia dato un campo vettoriale tridimensionale regolare:
$$
\mathbf{F}(x,y,z) = \begin{pmatrix} P(x,y,z) \\ Q(x,y,z) \\ R(x,y,z) \end{pmatrix}
$$

**1. 1-forma di lavoro e operatore Rotore:**
Associamo a $\mathbf{F}$ la 1-forma differenziale lineare di circuitazione:
$$
\omega = P \, dx + Q \, dy + R \, dz \in \Omega^1(\mathbb{R}^3)
$$
Calcolando la derivata esterna $d\omega \in \Omega^2(\mathbb{R}^3)$:
$$
d\omega = dP \wedge dx + dQ \wedge dy + dR \wedge dz
$$
Sviluppando i singoli differenziali totali:
$$
\begin{align}
dP \wedge dx &= \left( \frac{\partial P}{\partial x} dx + \frac{\partial P}{\partial y} dy + \frac{\partial P}{\partial z} dz \right) \wedge dx \\
&= \frac{\partial P}{\partial y} dy \wedge dx + \frac{\partial P}{\partial z} dz \wedge dx = -\frac{\partial P}{\partial y} dx \wedge dy + \frac{\partial P}{\partial z} dz \wedge dx \\
dQ \wedge dy &= \left( \frac{\partial Q}{\partial x} dx + \frac{\partial Q}{\partial y} dy + \frac{\partial Q}{\partial z} dz \right) \wedge dy \\
&= \frac{\partial Q}{\partial x} dx \wedge dy + \frac{\partial Q}{\partial z} dz \wedge dy = \frac{\partial Q}{\partial x} dx \wedge dy - \frac{\partial Q}{\partial z} dy \wedge dz \\
dR \wedge dz &= \left( \frac{\partial R}{\partial x} dx + \frac{\partial R}{\partial y} dy + \frac{\partial R}{\partial z} dz \right) \wedge dz \\
&= \frac{\partial R}{\partial x} dx \wedge dz + \frac{\partial R}{\partial y} dy \wedge dz = -\frac{\partial R}{\partial x} dz \wedge dx + \frac{\partial R}{\partial y} dy \wedge dz
\end{align}
$$
Raccogliendo rispetto alla base ciclica $\{dx \wedge dy, \; dy \wedge dz, \; dz \wedge dx\}$:
$$
d\omega = \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) dx \wedge dy + \left( \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z} \right) dy \wedge dz + \left( \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x} \right) dz \wedge dx
$$
I coefficienti di $d\omega$ corrispondono esattamente alle componenti del rotore del campo $\mathbf{F}$:
$$
(\nabla \times \mathbf{F}) \cdot \hat{k} = \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y}, \quad (\nabla \times \mathbf{F}) \cdot \hat{i} = \frac{\partial R}{\partial y} - \frac{\partial Q}{\partial z}, \quad (\nabla \times \mathbf{F}) \cdot \hat{j} = \frac{\partial P}{\partial z} - \frac{\partial R}{\partial x}
$$

**2. 2-forma di flusso e operatore Divergenza:**
Associamo ora al campo $\mathbf{F}$ la 2-forma differenziale di flusso:
$$
\eta = P \, dy \wedge dz + Q \, dz \wedge dx + R \, dx \wedge dy \in \Omega^2(\mathbb{R}^3)
$$
Calcolando la derivata esterna $d\eta \in \Omega^3(\mathbb{R}^3)$:
$$
\begin{align}
d\eta &= dP \wedge dy \wedge dz + dQ \wedge dz \wedge dx + dR \wedge dx \wedge dy \\
&= \left( \frac{\partial P}{\partial x} dx + \frac{\partial P}{\partial y} dy + \frac{\partial P}{\partial z} dz \right) \wedge dy \wedge dz + \dots \\
&= \frac{\partial P}{\partial x} dx \wedge dy \wedge dz + \frac{\partial Q}{\partial y} dy \wedge dz \wedge dx + \frac{\partial R}{\partial z} dz \wedge dx \wedge dy
\end{align}
$$
Poiché $dy \wedge dz \wedge dx = dx \wedge dy \wedge dz$ e $dz \wedge dx \wedge dy = dx \wedge dy \wedge dz$, si ottiene:
$$
d\eta = \left( \frac{\partial P}{\partial x} + \frac{\partial Q}{\partial y} + \frac{\partial R}{\partial z} \right) dx \wedge dy \wedge dz = (\nabla \cdot \mathbf{F}) \, dx \wedge dy \wedge dz
$$

> [!note] Traduzione vettoriale dell'identità $d^2 = 0$
> La nilpotenza della derivata esterna unifica i due grandi teoremi differenziali del calcolo vettoriale:
> 1. Applicata a una 0-forma scalare $f \in \Omega^0$:
>    $$
>    d(df) = 0 \iff \nabla \times (\nabla f) = \mathbf{0} \quad (\operatorname{rot}(\operatorname{grad} f) = \mathbf{0})
>    $$
> 2. Applicata alla 1-forma $\omega$ associata a $\mathbf{F}$:
>    $$
>    d(d\omega) = 0 \iff \nabla \cdot (\nabla \times \mathbf{F}) = 0 \quad (\operatorname{div}(\operatorname{rot} \mathbf{F}) = 0)
>    $$
>
### Integrazione di forme e Teorema generale di Stokes

> [!definition] Integrale di una $n$-forma su un dominio di $\mathbb{R}^n$
> Sia $U \subseteq \mathbb{R}^n$ un aperto limitato e regolare e sia $\omega = f(\mathbf{x}) \, dx^1 \wedge \dots \wedge dx^n \in \Omega^n(U)$ una $n$-forma differenziale. Si definisce l'integrale di $\omega$ su $U$ mediante l'integrale multiplo di Lebesgue:
> $$
> \int_U \omega := \int_U f(\mathbf{x}) \, d\mathbf{x}
> $$

> [!theorem] Teorema generale di Stokes
> Sia $U$ una varietà orientata compatta di dimensione $n$ con bordo $\partial U$ differenziabile a tratti (dotato dell'orientazione indotta), e sia $\omega \in \Omega^{n-1}(U)$ una forma differenziale di grado $n-1$ di classe $C^1$. Allora vale l'identità:
> $$
> \int_{\partial U} \omega = \int_U d\omega
> $$

> [!note] Orientazione del bordo
> La correttezza del segno algebrico nell'uguaglianza richiede che l'orientazione del bordo $\partial U$ sia indotta canonicamente dall'orientazione interna di $U$ secondo la convenzione del versore normale uscente.
### Derivazione del Teorema della divergenza (Gauss-Ostrogradskij)

Si consideri un dominio solido tridimensionale $U \subset \mathbb{R}^3$ con bordo chiuso $\partial U$, e sia $\mathbf{F} = (P, Q, R)^T$ un campo vettoriale di classe $C^1(U)$.

Applichiamo il Teorema generale di Stokes per $n = 3$ alla 2-forma di flusso:
$$
\omega = P \, dy \wedge dz + Q \, dz \wedge dx + R \, dx \wedge dy \in \Omega^2(U)
$$
Come precedentemente calcolato:
$$
d\omega = (\nabla \cdot \mathbf{F}) \, dx \wedge dy \wedge dz
$$
Il membro destro del Teorema di Stokes porge:
$$
\int_U d\omega = \iiint_U (\nabla \cdot \mathbf{F}) \, d\mathbf{x}
$$
Valutiamo ora il membro sinistro $\int_{\partial U} \omega$.
Sia $\boldsymbol{\varphi}: D \subset \mathbb{R}^2 \to \partial U$ una parametrizzazione locale orientata della superficie di bordo $\partial U$, data da $(u,v) \mapsto (x(u,v), y(u,v), z(u,v))$. I differenziali coordinati si trasformano secondo la matrice Jacobiana:
$$
\begin{align}
dx &= \frac{\partial \varphi_1}{\partial u} du + \frac{\partial \varphi_1}{\partial v} dv \\
dy &= \frac{\partial \varphi_2}{\partial u} du + \frac{\partial \varphi_2}{\partial v} dv \\
dz &= \frac{\partial \varphi_3}{\partial u} du + \frac{\partial \varphi_3}{\partial v} dv
\end{align}
$$
Valutando il prodotto wedge dei differenziali coordinati sulla superficie:
$$
\begin{align}
dy \wedge dz &= \left( \frac{\partial \varphi_2}{\partial u} du + \frac{\partial \varphi_2}{\partial v} dv \right) \wedge \left( \frac{\partial \varphi_3}{\partial u} du + \frac{\partial \varphi_3}{\partial v} dv \right) \\
&= \left( \frac{\partial \varphi_2}{\partial u} \frac{\partial \varphi_3}{\partial v} - \frac{\partial \varphi_2}{\partial v} \frac{\partial \varphi_3}{\partial u} \right) du \wedge dv = \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_1 du \wedge dv
\end{align}
$$
Analogamente per le altre componenti cicliche:
$$
dz \wedge dx = \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_2 du \wedge dv
dx \wedge dy = \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_3 du \wedge dv
$$
Sostituendo nell'integrale di bordo:
$$
\begin{align}
\int_{\partial U} \omega &= \iint_D \left[ P \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_1 + Q \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_2 + R \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right)_3 \right] du dv \\
&= \iint_D \begin{pmatrix} P \\ Q \\ R \end{pmatrix} \cdot \left( \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right) du dv \\
&= \iint_{\partial U} \mathbf{F} \cdot \boldsymbol{\nu} \, d\sigma
\end{align}
$$
dove $\boldsymbol{\nu} = \mathbf{u}_n$ è il versore normale uscente da $\partial U$ e $d\sigma = \left\| \frac{\partial \boldsymbol{\varphi}}{\partial u} \times \frac{\partial \boldsymbol{\varphi}}{\partial v} \right\| du dv$ è l'elemento d'area superficiale.

Uguagliando i due membri del Teorema di Stokes:
$$
\int_U \nabla \cdot \mathbf{F} \, d\mathbf{x} = \int_{\partial U} \mathbf{F} \cdot \boldsymbol{\nu} \, d\sigma
$$
Si ritrova esattamente la formulazione classica tridimensionale del **Teorema della Divergenza** (o di Gauss-Ostrogradskij). $\blacksquare$
