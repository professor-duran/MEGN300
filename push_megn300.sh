#!/bin/bash
# MEGN 300 Publisher Review Push Script
# Run this from a Codespace on professor-duran/MEGN300

set -e

echo "=== Extracting fixes ==="
tar xzf MEGN300_all_fixes.tar.gz
rm MEGN300_all_fixes.tar.gz

echo ""
echo "=== Verifying ==="
echo "Chapters: $(ls mrd/chapters/ch*.tex | wc -l)"
echo "Appendices: $(ls mrd/appendices/*.tex | wc -l)"
echo "Frontmatter: $(ls mrd/frontmatter/*.tex | wc -l)"
echo "Student Guide: $(ls student_guide/*.tex | wc -l)"

echo ""
echo "=== Committing ==="
git add -A
git commit -m "Publisher review (6 passes): zero errors, zero overfull, 43 figures verified

Rendering fixes:
- Fix 5 \$\\sim\$\$ double-dollar artifacts across 5 chapters
- Fix orphaned \$ before \\end{examplebox} in ch08
- Clean stray punctuation from display math conversions (11 files)

Equations & layout (0 overfull hbox):
- Convert 34 long inline equations to display math (13 chapters)
- Wrap 2 wide TikZ figures in resizebox (ch01, ch17)
- Break wide equations into align* (ch21 radiation, ch09 Fourier)
- Promote FOPDT equation to display math (ch18)
- Narrow key insight box 12cm->10cm (ch08)

Technical accuracy (3 external review rounds):
- Remove 3 duplicate sections in Ch01
- INA128 gain formula clarified (ch15 + quick_reference)
- f_s=2.56 guard band, bearing defect approx, S+T=1 qualifier
- GBW justification, P-only offset, pipeline terminology
- Bridge linearization footnote, half-bridge gradient note
- SNR qualifier, Ch16 self-reference fix, jitter qualifier
- Strain gauge amplification context (ch06)
- IIR instability note (ch13), K=1 explicit (ch19)
- SI prefix table: 10^0 -> 1 for clarity (ch14)

Structure & navigation:
- Add When to Read tipbox to all 22 chapters
- 2 section titles wrapped in texorpdfstring (ch15)
- Missing label on ch07
- Tables: sensor/filter -> tabularx, ABET -> raggedright
- References: 18 citations (updated editions) + 10 online resources"

echo ""
echo "=== Pushing ==="
git push origin main

echo ""
echo "Done. CI will rebuild both PDFs automatically."
