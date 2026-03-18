# Capstone — EDNS 491/492 Capstone Design I & II

**Colorado School of Mines · Interdisciplinary Engineering Design**

[![Build LaTeX PDFs](https://github.com/professor-duran/Capstone/actions/workflows/build.yml/badge.svg)](https://github.com/professor-duran/Capstone/actions/workflows/build.yml)

Course materials for the two-semester, multi-disciplinary capstone design sequence.

## 📄 Latest Documents

| Document | Download |
|----------|----------|
| **Student Course Text** | [📥 main.pdf](main.pdf) |
| **Student Guide** | [📥 student_guide.pdf](student_guide.pdf) |

> PDFs are automatically rebuilt on every push to `main` via GitHub Actions.

## Document Structure

### Front Matter
- How to Use This Document (three-document ecosystem, reading by role)
- What Should I Be Reading Right Now? (triage table, sprint-to-chapter mapping)
- Laboratory and Workshop Safety

### Part I: The Design Process
1. Engineering Design as a Professional Practice
2. Understanding Your Client and Defining the Problem
3. Requirements Engineering
4. Concept Generation, Selection, and Early Design
5. Sustainability, Equity, and Societal Impact Assessment
6. Verification, Validation, and Test Planning

### Part II: Major Project Milestones
7. The Statement of Work and Project Plan
8. Preliminary Design Review (PDR)
9. Critical Design Review (CDR)
10. Final Design Review (FDR) and Design Showcase

### Part III: Project Management and Operations
11. Hybrid Project Management for Capstone
12. Fabrication Spaces, Resources, and Manufacturing
13. Team Dynamics, Leadership, and Professional Conduct
14. Budgeting and Financial Management
15. Purchasing Procedures
16. Travel Planning and Policies

### Part IV: Professional Skills
17. Client Engagement and Management
18. Professional Communication — Written
19. Professional Communication — Oral
20. Resumes, Interviews, and Career Preparation

### Part V: Safety, Compliance, and Professional Practice
21. Environmental Health and Safety (EHS)
22. Professional Ethics, Licensure, and Course Policies

### Appendices
- A: Glossary of Key Terms (40 entries)
- B: Why Capstone Projects Fail (12 patterns + Project Health Check)
- C: Quick Reference Checklists (Sprint 0, SOW, PDR, CDR, FDR, Final Checkout)

## Building Locally

Requires `pdflatex` with `tcolorbox`, `tikz`, `enumitem`, `booktabs`, `tabularx`, `longtable`, `fancyhdr`, and `hyperref` packages.

```bash
# Course Text (3 passes for TOC/references)
pdflatex main.tex && pdflatex main.tex && pdflatex main.tex

# Student Guide
pdflatex student_guide.tex && pdflatex student_guide.tex && pdflatex student_guide.tex
```

## Author

**Adam Duran** · Assistant Teaching Professor · PE, PMP  
Department of Mechanical Engineering · Colorado School of Mines
