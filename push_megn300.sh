#!/bin/bash
set -e
echo "=== Extracting ==="
tar xzf MEGN300_all_fixes.tar.gz
rm MEGN300_all_fixes.tar.gz
echo "Chapters: $(ls mrd/chapters/ch*.tex | wc -l)"
git add -A
git commit -m "Ultra-critical review: INA128 error, preface schedule, duplicates, index, layout

CRITICAL technical fix:
- INA128 R_G: 98.8k -> 49.4k (factor-of-2 error in worked example)
- G=603 propagated through 10 refs in ch02/ch03/ch07/ch08/ch15 + quick_ref

CRITICAL structural fix:
- Preface schedule had wrong chapter-to-week mapping from week 5 onward
- 'Signals & Digitization' pointed to Ch 5-6 (Statistics/Sensors) instead of Ch 7-8
- 'Control Systems' pointed to Ch 14-16 (Circuits/Amps) instead of Ch 18-20
- Fixed to match Student Guide checklist (authoritative)

Structural:
- Remove 12 duplicate sections across 8 chapters
- ch01 resizebox on measurement system TikZ
- ch17 shortened chapter title
- ch18 FOPDT parameters to itemized list

Layout (0 overfull):
- ch04 reflowed error budget steps
- ch05 pooled SE to display math
- ch13 shortened filter paragraph

Cross-referencing:
- 26 inline Figure~ref calls (orphaned: 42 -> 16)
- Index: 22 -> 122+ entries

Copy edit:
- 6x 'data is' -> 'data are'
- 2x 'utilize' -> 'use'
- 'opamp' -> 'op-amp', 'real time' -> 'real-time'
- Fix broken '0.\$1' in ch03

Build: 280 pages, 0 errors, 0 overfull, 0 warnings, 43 figures"
git pull --rebase origin main
git push origin main
echo "Done."
