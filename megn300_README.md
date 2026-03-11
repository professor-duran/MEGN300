# MEGN 300 — Instrumentation & Automation

**Colorado School of Mines · Department of Mechanical Engineering**

[![Build LaTeX PDFs](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml/badge.svg)](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml)

Course notes and reference materials for MEGN 300: Instrumentation & Automation.

## 📄 Latest Documents

| Document | Download |
|----------|----------|
| **Master Reference Document** | [📥 megn300_master_reference.pdf](megn300_master_reference.pdf) |
| **Student Guide** | [📥 MEGN300_Student_Guide.pdf](MEGN300_Student_Guide.pdf) |

> PDFs are automatically rebuilt on every push to `main` via GitHub Actions.

## Repository Contents

```
├── megn300_master_reference.tex      LaTeX source — Master Reference Document
├── MEGN300_Student_Guide.tex         LaTeX source — Student Guide
└── figs/                             All figures (22 PNGs, 2160px wide, 3× resolution)
```

## Document Structure

### Laboratory Safety and Equipment Care

### Part I: Measurement Fundamentals
1. Fundamentals of Measurement Theory
2. Static Measurements
3. Dynamic Measurements
4. Error Analysis and Uncertainty
5. Statistics and Experimental Data Analysis

### Part II: Signals and Signal Processing
6. Analog vs. Digital Systems
7. Signal-to-Noise Ratio
8. Fourier Series and Complex Signal Construction
9. FFT and Complex Signal Decomposition
10. Fundamentals of Digital Signal Processing
11. Analog Filter Design
12. Digital Filter Design

### Part III: Electronics for Instrumentation
13. Amplifiers
14. High-Power Devices and Switches

### Part IV: Control Systems
15. Open-Loop Control
16. Closed-Loop Control
17. PID Control

### Part V: Engineering Science Reference
18. Fundamentals of Heat Transfer

## Building Locally

Requires `pdflatex` with `tcolorbox`, `tikz`, `enumitem`, `booktabs`, `tabularx`, `fancyhdr`, and `hyperref` packages.

```bash
pdflatex megn300_master_reference.tex
pdflatex megn300_master_reference.tex   # run twice for TOC
```

## Author

**Adam Duran** · Assistant Teaching Professor · PE, PMP  
Department of Mechanical Engineering · Colorado School of Mines
