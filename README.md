# MEGN 300: Instrumentation & Automation — Course Materials

[![Build MEGN 300 PDFs](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml/badge.svg)](https://github.com/professor-duran/MEGN300/actions/workflows/build-pdfs.yml)

**Author:** Adam Duran, PE, PMP  
**Institution:** Colorado School of Mines, Department of Mechanical Engineering  
**Term:** Spring 2026  

---

## Download PDFs

| Document | Description | Link |
|---|---|---|
| **Master Reference Document** | 350+ page comprehensive reference covering measurement theory, signal processing, electronics, and PID control | [**Download PDF**](megn300_master_reference.pdf) |
| **Student Guide** | 25-page companion with FAQ, tips, common pitfalls, and "Before You Start" checklists for each module | [**Download PDF**](MEGN300_Student_Guide.pdf) |

PDFs are auto-compiled by GitHub Actions on every push and committed to this branch.

---

## Repository Structure

```
MEGN300/
├── mrd/                             Master Reference Document (modular)
│   ├── main.tex                     Build entry point
│   ├── preamble.tex                 Packages, colors, custom environments
│   ├── .latexmkrc                   latexmk config (handles makeindex)
│   ├── frontmatter/
│   │   ├── titlepage.tex
│   │   ├── preface.tex
│   │   ├── triage.tex
│   │   ├── survival_guide.tex
│   │   ├── ai_policy.tex
│   │   └── safety.tex
│   ├── chapters/
│   │   ├── ch01_measurement_theory.tex
│   │   ├── ch02_static_measurements.tex
│   │   ├── ...
│   │   └── ch22_fluid_power.tex
│   └── appendices/
│       ├── projects_fail.tex
│       ├── labview.tex
│       ├── glossary.tex
│       ├── quick_reference.tex
│       ├── abet.tex
│       └── references.tex
├── student_guide/
│   └── MEGN300_Student_Guide.tex
├── .github/workflows/               GitHub Actions auto-build
├── megn300_master_reference.pdf      ← auto-built by CI
└── MEGN300_Student_Guide.pdf         ← auto-built by CI
```

## Editing Workflow

Each chapter is a self-contained `.tex` file. Edit any file under `mrd/` or `student_guide/`, commit, push. GitHub Actions recompiles **both** PDFs automatically.

**Fast local build of a single chapter:**
```bash
# Uncomment this line in mrd/main.tex:
#   \includeonly{chapters/ch15_amplifiers}
cd mrd && latexmk -pdf main.tex    # ~5 seconds instead of ~60
```

Re-comment `\includeonly` before pushing.

## Building Locally

**Prerequisites:** TeX Live (full) or MacTeX, with `latexmk`

```bash
# Build MRD
cd mrd && latexmk -pdf main.tex

# Build Student Guide
cd student_guide && latexmk -pdf MEGN300_Student_Guide.tex
```

## Zero Textbook Cost (ZTC)

All 42 figures are generated inline using TikZ/pgfplots. No external image files are required. The document compiles from source on any system with a standard TeX Live installation.
