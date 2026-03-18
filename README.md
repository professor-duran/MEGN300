# MEGN 300 — Instrumentation & Automation

**Colorado School of Mines · Department of Mechanical Engineering**

[![Build LaTeX PDFs](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml/badge.svg)](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml)

## Latest Documents

| Document | Download |
|----------|----------|
| **Master Reference Document** | [📥 Download PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/megn300_master_reference.pdf) |
| **Student Guide** | [📥 Download PDF](https://raw.githubusercontent.com/professor-duran/MEGN300/main/MEGN300_Student_Guide.pdf) |

> PDFs are automatically rebuilt on every push to `main` via GitHub Actions.

## Repository Structure
```
megn300_master_reference.tex         Master Reference Document (monolithic LaTeX)
MEGN300_Student_Guide.tex            Student Guide

figs/                                Pre-rendered figures (22 PNGs)
├── fig_accuracy_precision.png
├── fig_adc_process.png
├── fig_aliasing.png
├── ...
└── fig_wheatstone_bridge.png
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
```bash
# Master Reference Document (2-pass for TOC)
pdflatex megn300_master_reference.tex && pdflatex megn300_master_reference.tex

# Student Guide (2-pass)
pdflatex MEGN300_Student_Guide.tex && pdflatex MEGN300_Student_Guide.tex
```

## Author

**Adam Duran** · Assistant Teaching Professor · PE, PMP · March 2026
