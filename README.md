# Academic Vault — Mathematics & Physical Systems

[![Repository](https://img.shields.io/badge/Status-Public_Vault-brightgreen.svg)](#)
[![Domain](https://img.shields.io/badge/Domain-Engineering_Physics-blue.svg)](#)
[![Institution](https://img.shields.io/badge/Institution-Politecnico_di_Milano-003366.svg)](#)

---

## Architecture & Epistemic Manifesto

This vault constitutes a rigorous, non-siloed formal knowledge base spanning pure foundational mathematics and physical/engineering dynamical systems.

Rather than fragmenting mathematical knowledge across ad-hoc exam syllabi (*"Analisi 1"*, *"Analisi 2"*, *"Analisi 3"*), the repository is partitioned according to **intrinsic mathematical taxonomy** and **physical system abstraction layers**. Foundational theorems are presented in their full operator-theoretic and measure-theoretic generality, creating direct bridges to state-space control, signal theory, and condensed matter physics.

```
academic-vault/
├── Mathematics/                      # Pure Foundational Mathematics
│   ├── Algebra e Geometria/          # Vector spaces, Jordan forms, Group theory, Spectral theorem
│   ├── Analisi Complessa/            # Holomorphic functions, Residues, Argument Principle, Conformal maps
│   ├── Analisi Funzionale e Armonica/# L^p, Hilbert, Sobolev spaces, Distribution theory, Transforms
│   ├── Analisi Reale/                # Monovariable & Multivariable Calculus, Lebesgue measure
│   ├── Equazioni Differenziali/      # ODEs, Matrix exponentials, Lyapunov stability, Weak PDE theory
│   ├── Logica e Teoria Insiemi/      # Axiomatic set theory, First-order logic
│   ├── Topologia/                    # Topological & metric spaces, compactness, completeness
│   └── _Lista_Corsi/                 # Curricular index & syllabus mapping
│
└── Engineering and Systems/          # Physical & Dynamical Systems
    ├── Automatica/                   # State-space dynamics, LTI control, Frequency domain, Kalman
    ├── Telecomunicazioni/            # Signal analysis, Modulation, Random processes, Information
    ├── Elettronica/                  # Analog circuit analysis, Active networks, Transistor models
    ├── Misure/                       # Metrology, Uncertainty propagation, Instrumentation
    └── Scienza dei Materiali/        # Electronic structure, Crystallography, Quantum materials
```

---

## Core Partitions

### 1. Mathematics (`/Mathematics`)

The pure mathematics partition is constructed from foundational axioms up to advanced functional and complex analysis:

- **Analisi Funzionale e Armonica:**
  - Complete Hilbert and Banach spaces ($L^p(\Omega)$, $\ell^p(\mathbb{Z})$, $H^s(\Omega)$, $W^{k,p}(\Omega)$).
  - Distribution Theory ($\mathcal{D}'$, $\mathcal{S}'$, causal distributions $\mathcal{D}'_+$) and Gelfand-Schwartz integral transforms.
  - Continuous Fourier transform ($\mathcal{F}$ on $L^1$, $L^2$, $\mathcal{S}'$), Discrete-Time Fourier Transform (DTFT), Unilateral Laplace Transform ($\mathcal{L}$), and Complex $\mathcal{Z}$-Transform.
  - Calculus of Variations (Euler-Lagrange, functional extrema, Sobolev embeddings).
- **Equazioni Differenziali e Sistemi Dinamici:**
  - Cauchy-Lipschitz existence and uniqueness theorems for non-linear vector ODEs.
  - Linear dynamical systems: matrix exponential $e^{At}$, Jordan decomposition, variation of constants.
  - Lyapunov stability theory: linear spectrum conditions, Lyapunov matrix equation ($A^T P + P A = -Q$), and non-linear LaSalle invariance.
  - Weak formulations for elliptic and hyperbolic PDEs (Lax-Milgram theorem, energy estimates).
- **Analisi Complessa:**
  - Holomorphic and meromorphic functions, Cauchy-Riemann system.
  - Cauchy integral theorems, Laurent series expansions, and Residue calculus.
  - Cauchy's Argument Principle, Rouché's theorem, and conformal mapping techniques.
- **Algebra Lineare e Geometria:**
  - Spectral decomposition of self-adjoint and unitary operators in Euclidean spaces.
  - Jordan canonical form, minimal polynomials, matrix functions, and Cayley-Hamilton.
  - Introduction to Group Theory, symmetry groups, and representations.
- **Topologia & Analisi Reale:**
  - Metric and topological spaces (Hausdorff separation, compactness, Heine-Borel, completeness).
  - Multivariable differential and integral calculus (differential forms, Stokes and Gauss-Green theorems).
  - Lebesgue measure theory and dominated convergence.

---

### 2. Engineering and Systems (`/Engineering and Systems`)

The physical systems partition applies foundational mathematical abstractions to physical devices, control architectures, and signals:

- **Automatica (Control Theory):**
  - State-space realization: Lagrange evolution formula, impulse response matrix $G(s) = C(sI-A)^{-1}B + D$.
  - Structural properties: Kalman Reachability matrix $\mathcal{R}$, Observability matrix $\mathcal{O}$, PBH spectral test, and Kalman Canonical Decomposition.
  - Frequency response: Bode diagrams, Nyquist stability criterion (via Cauchy's Argument Principle), stability margins (gain and phase margins).
  - Discrete-time LTI systems, difference equations, and pulse-transfer functions $G(z)$.
- **Telecomunicazioni:**
  - Deterministic and stochastic signal processing, power spectral density (Wiener-Khinchin theorem).
  - Sampling theorem (Nyquist-Shannon), aliasing, analog and digital modulations (AM, FM, PSK, QAM).
- **Elettronica & Misure:**
  - Operational amplifier architectures, frequency compensation, pole-zero placement.
  - Metrology: ISO GUM standard, uncertainty budgets, covariance propagation, and A/D conversion architectures.
- **Scienza e Tecnologia dei Materiali:**
  - Quantum mechanics of many-body systems, Born-Oppenheimer separation, and MO-LCAO theory.
  - Crystal lattices, Miller indices, X-ray diffraction, electronic band structure, and semiconductors.

---

## Typesetting & Rigor Standards

All notes adhere to a strict formal Markdown/LaTeX specification:

1. **Callout Taxonomy:**
   - `> [!definition]` — Formal axiomatic definitions and functional space specifications.
   - `> [!theorem]` — Fundamental theorems with exact hypothesis-thesis declarations.
   - `> [!proposition]` — Structural properties and operator identities.
   - `> [!quote]- Dimostrazione` — Full mathematical proofs, collapsed by default to preserve reading flow.
   - `> [!note]` — Physical remarks, boundary behavior analysis, and domain cross-references.
2. **Mathematical Notation:**
   - Imaginary unit denoted strictly as $i$ across pure math notes (engineering notes retain $j$ where circuit ambiguity arises).
   - Display math isolated in strictly balanced `$$ ... $$` delimiters for optimal mobile, desktop, and PDF rendering.
   - Vector quantities indicated via boldface or standard index notation.

---
*Maintained by Alessandro Villani — Ingegneria Fisica, Politecnico di Milano.*
