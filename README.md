# MEGN 300 — Instrumentation & Automation

**Colorado School of Mines · Department of Mechanical Engineering**

[![Build LaTeX PDFs](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml/badge.svg)](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml)

## Latest Documents

| Document | Download |
|----------|----------|
| **Master Reference Document** | [Download PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/megn300_master_reference.pdf) |
| **Student Guide** | [Download PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/MEGN300_Student_Guide.pdf) |

> PDFs are automatically rebuilt on every push to `main` via GitHub Actions.

## Repository Structure

```
MEGN300/
├── megn300_master_reference.pdf        Pre-built MRD (committed by CI)
├── MEGN300_Student_Guide.pdf           Pre-built Student Guide (committed by CI)
├── README.md
├── .github/
│   └── workflows/
│       └── build-pdfs.yml              GitHub Actions CI workflow
├── mrd/                                Master Reference Document source
│   ├── main.tex                        Top-level document
│   ├── preamble.tex                    Shared preamble / packages
│   ├── frontmatter/                    (6 files)
│   │   ├── titlepage.tex
│   │   ├── preface.tex
│   │   ├── ai_policy.tex
│   │   ├── safety.tex
│   │   ├── survival_guide.tex
│   │   └── triage.tex
│   ├── chapters/                       ch01 – ch22 (see below)
│   └── appendices/                     (6 files)
│       ├── glossary.tex
│       ├── quick_reference.tex
│       ├── projects_fail.tex
│       ├── abet.tex
│       ├── labview.tex
│       └── references.tex
└── student_guide/
    └── MEGN300_Student_Guide.tex       Standalone student guide
```

All figures are generated inline with TikZ / pgfplots — there is no separate figures directory.

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

## Building Locally

```bash
# Master Reference Document
cd mrd && latexmk -pdf main.tex

# Student Guide (run twice for TOC / cross-references)
cd student_guide && pdflatex MEGN300_Student_Guide.tex && pdflatex MEGN300_Student_Guide.tex
```

## Author

**Adam Duran** · Assistant Teaching Professor · Colorado School of Mines
