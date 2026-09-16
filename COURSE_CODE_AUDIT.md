# Course Code Audit

## Record

- Date: 2026-09-16
- Version: 1.0
- Scope: Hands-on Exercises 1 to 4

## Source comparison

The local Quarto pages were compared with the rendered course pages using normalized code-block signatures. Every instructor block is present in the matching local page.

| Exercise page | Source blocks | Local match |
| --- | ---: | ---: |
| Chapter 1 | 34 | 34/34 |
| Chapter 2 | 37 | 37/37 |
| Chapter 4 | 48 | 48/48 |
| Chapter 5 | 26 | 26/26 |
| Chapter 6 | 33 | 33/33 |
| Chapter 8 | 62 | 62/62 |

Source pages: [Chapter 1](https://r4gdsa.netlify.app/chap01.html), [Chapter 2](https://r4gdsa.netlify.app/chap02.html), [Chapter 4](https://r4gdsa.netlify.app/chap04.html), [Chapter 5](https://r4gdsa.netlify.app/chap05.html), [Chapter 6](https://r4gdsa.netlify.app/chap06.html), and [Chapter 8](https://r4gdsa.netlify.app/chap08.html).

## Findings review

- Chapter 1: the local output gives Tampines East the highest preschool count and Cecil the highest density. The page now reports both values to make the count-density distinction explicit.
- Chapter 2: the area-bias result reports 53.4% of mapped land but 12.5% of population for the least-populated half of subzones. The central-region outlier discussion names the rendered high-ratio locations.
- Chapter 4: the Singapore-wide Clark-Evans result is `R = 0.535`, and the planning-area results are `R = 0.841` for Choa Chu Kang and `R = 0.668` for Tampines. KDE, bandwidth, kernel, and study-window observations remain in place.
- Chapter 5: the G/F/K/L explanations are retained, with an added rendered-plot comparison describing the stronger multi-scale departure visible for Tampines.
- Chapter 6: monthly counts and selected day-of-year density views support the dry-season and later-year concentration observations.
- Chapter 8: Queen/Rook link counts, fixed-distance versus six-nearest-neighbour structure, and row-standardised versus binary lag interpretations are tied to rendered outputs.

## Verification

- `quarto render` completed successfully for the full site.
- All six chapter pages and their generated figure folders exist under `_site/Hands-on_Ex/`.
- No `/Users/sabrina` or `file://` path leaked into the rendered chapter pages.
