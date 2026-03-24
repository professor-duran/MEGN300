# MEGN 300 — Instrumentation & Automation

**Colorado School of Mines | Department of Mechanical Engineering**

[![Build LaTeX PDFs](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml/badge.svg)](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml)

---

## Course Overview

MEGN 300 develops the practical instrumentation and measurement skills every mechanical engineer needs. Students work hands-on with sensors, signal conditioning, data acquisition, and control systems while building a rigorous foundation in measurement theory, error analysis, and digital signal processing. The course bridges theory and practice — from circuit fundamentals and filter design to PID control and real-time automation — giving students the tools to design, build, and debug instrumented systems in any engineering domain.

---

## Documents

All documents are open educational resources and are automatically rebuilt on every push to `main` via GitHub Actions.

| Document | Description | Download |
|----------|-------------|----------|
| **Master Reference Document** | 22-chapter technical reference spanning measurement theory, signal processing, electronics, control systems, and engineering science | [PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/megn300_master_reference.pdf) |
| **Student Guide** | Course logistics, lab schedules, assignment details, rubrics, and operational reference | [PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/MEGN300_Student_Guide.pdf) |

---

## Repository Structure

```
MEGN300/
├── .github/workflows/
│   └── build-pdfs.yml                  GitHub Actions CI workflow
│
├── mrd/                                Master Reference Document (modular LaTeX)
│   ├── main.tex                           Top-level document
│   ├── preamble.tex                       Shared preamble / packages
│   ├── frontmatter/                       6 files (title, preface, AI policy, safety, survival guide, triage)
│   ├── chapters/                          ch01 – ch22 (see chapter listing below)
│   └── appendices/                        6 files (glossary, quick reference, failure patterns, ABET, LabVIEW, references)
│
├── student_guide/                      Student Guide (modular LaTeX)
│   └── MEGN300_Student_Guide.tex          Standalone student guide
│
├── megn300_master_reference.pdf        Pre-built MRD (committed by CI)
├── MEGN300_Student_Guide.pdf           Pre-built Student Guide (committed by CI)
└── README.md
```

All figures are generated inline with TikZ / pgfplots — there is no separate figures directory.

---

## Document Structure (22 Chapters)

### Laboratory Safety and Equipment Care

### Part I: Measurement Fundamentals
1. Fundamentals of Measurement Theory
2. Static Measurements
3. Dynamic Measurements
4. Error Analysis and Uncertainty
5. Statistics and Experimental Data Analysis

### Part II: Signals and Signal Processing
6. Sensors & Actuators
7. Analog vs. Digital Systems
8. Signal-to-Noise Ratio
9. Fourier Series and Complex Signal Construction
10. FFT and Complex Signal Decomposition
11. Fundamentals of Digital Signal Processing
12. Analog Filter Design
13. Digital Filter Design

### Part III: Electronics for Instrumentation
14. Circuit Fundamentals
15. Amplifiers
16. High-Power Devices and Switches
17. Debugging

### Part IV: Control Systems
18. Open-Loop Control
19. Closed-Loop Control
20. PID Control

### Part V: Engineering Science Reference
21. Fundamentals of Heat Transfer
22. Fluid Power

---

## Building Locally

Requires a TeX Live or MiKTeX installation with `latexmk` and `pdflatex`.

```bash
# Master Reference Document
cd mrd && latexmk -pdf main.tex

# Student Guide (2-pass for TOC and cross-references)
cd student_guide && pdflatex MEGN300_Student_Guide.tex && pdflatex MEGN300_Student_Guide.tex
```

---

## Built With

- **LaTeX** — Typesetting and document preparation, with TikZ/pgfplots for inline figure generation
- **GitHub Actions** — Continuous integration; PDFs rebuild automatically on every push to `main`
- **Modular document architecture** — Each chapter and section is an independent `.tex` file for parallel authoring

---

## License and Use

These materials are open educational resources developed at Colorado School of Mines. Documents are living resources that evolve each semester as the course is refined.

---

## Author

**Adam Duran** | Assistant Teaching Professor, PE, PMP | Department of Mechanical Engineering | Colorado School of Mines
