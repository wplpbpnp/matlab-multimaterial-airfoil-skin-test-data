# MATLAB Multimaterial Airfoil Skin Test Data

MATLAB scripts and experimental datasets for multimaterial testing, including airfoil skin shear/skin test data.

## Context

This dataset is associated with the NASA AMuBA (Aeroservoelastic Multifidelity Design of Biomimetic Aircraft) project work described in the resume, completed as undergraduate research in UMD's Aerospace Composites Research Laboratory (summer 2019), not a standard homework project.

This work is documented here as a summer internship/research project (NASA AMuBA with IAI), not a UMD course assignment.

## Contents

- `shear_data/` raw/processed shear test exports and import scripts
- `skin_data/` filtered airfoil skin test data, import scripts, and fit scripts

## Notes

- `skin_data/README.txt` contains original notes about filename suffixes and MATLAB import usage.
- `skin` in this dataset refers to the outer skin of an airfoil, not biomaterials/biological tissue.
- This repo is staged as a portfolio-grade example because it includes both code and real datasets.
- Instrument export metadata files (`.log`, `.mpp`, `.mps`, `.prm`) are currently preserved for completeness.

## Quick Start (MATLAB)

1. Open MATLAB in the repo root.
2. Start with either `skin_data/normal_skin_test_data_filtered/` or `skin_data/parallel_skin_test_data_filtered/`.
3. Run the folder-level import script (`import_datan.m` or `import_datap.m`) to load the filtered skin datasets.
4. Run `fit.m` in the same folder to reproduce the folder's fitting workflow.
5. For shear datasets, use `shear_data/import_shear_data.m` and/or the per-run `import*.m` scripts in `shear_data/dull/*` and `shear_data/shiny/*`.

## Suggested README Upgrades (Later)

- Add 1-2 plots showing strain range / fit behavior for the multimaterial skin demonstrators
- Add a short note describing the test fixture and measurement outputs (`filtered.dat` vs `specimen.dat`)
