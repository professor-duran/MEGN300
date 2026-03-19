#!/bin/bash
set -e
echo "=== Extracting ==="
tar xzf MEGN300_all_fixes.tar.gz
rm MEGN300_all_fixes.tar.gz
echo "Chapters: $(ls mrd/chapters/ch*.tex | wc -l)"
git add -A
git commit -m "Ultra-critical review: fix INA128 factor-of-2 error, duplicates, index, copy edit

CRITICAL technical fix:
- INA128 R_G used 98.8k instead of 49.4k (factor-of-2 error)
- Corrected R_G=82ohm, G=603 (was R_G=165ohm, G=611)
- Propagated through 10 refs in ch02/ch03/ch07/ch08/ch15 + quick_reference

Structural:
- Remove 12 duplicate sections across 8 chapters
- ch10: triple DFT/FFT/PSD block; ch18: triple Feedforward

Cross-referencing:
- Add 26 inline Figure~ref calls (orphaned: 42 -> 16)
- Expand index from 22 to 122+ entries
- Wrap ch01 measurement system TikZ in resizebox

Copy edit:
- 6x 'data is' -> 'data are'
- 'opamp' -> 'op-amp', 'real time' -> 'real-time'
- Fix broken '0.\$1^circ' in ch03

Build: 278 pages, 0 errors, 0 overfull, 0 warnings, 43 figures"
git pull --rebase origin main
git push origin main
echo "Done."
