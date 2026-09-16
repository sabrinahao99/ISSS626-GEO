# Hands-on Exercise 3 Development Record

## Version

- Date: 2026-09-16
- Version: 1.0
- Page: `chap06.qmd`

## Scope

Exercise 3 extends spatial point pattern analysis into a space-time fire detection case study for the Bangka-Belitung Islands.

## Implemented workflow

- Audited the local fire detection extract and detection dates.
- Prepared the Bangka-Belitung boundary and transformed it to EPSG:32748.
- Created `ppp` and `owin` objects with month and day-of-year marks.
- Recreated monthly and day-of-year density views for a readable static Quarto render.
- Preserved the course `sparr`, `stpp`, and `STIKhat()` reference code as visible chunks.
- Added bandwidth comparison, space-time pair counts, a heatmap, and student observations.
- Added local data provenance in `data/rawdata/README.md`.
- Archived the supplied `data3.zip` Hunan package under `data/hunan/` for validation without changing the fire case study inputs.

## Render notes

The local page uses `forestfires.csv` for rendered outputs. The specialised `sparr` and `stpp` calls remain visible as reference code with evaluation disabled because the current local system does not provide their graphical dependencies.

## Verification

- `quarto render Hands-on_Ex/Hands-on_Ex03/chap06.qmd`
- Confirmed the rendered page and figure assets are created in `_site/Hands-on_Ex/Hands-on_Ex03/`.
- Confirmed the page keeps visible R code and student observation callouts.
