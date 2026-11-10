# ASTROCARE — Dataset documentation

## Dataset 1: Whole Blood Measurements from the SpaceX Inspiration4 Mission (OSD-569)

- **Official NASA study name:** *Whole Blood Measurements from the SpaceX Inspiration4 Mission (RNA-seq, epitranscriptome, WGS, clonal hematopoiesis, CBC)*.
- **Accession:** OSD-569.
- **Original NASA source:** https://osdr.nasa.gov/bio/repo/data/studies/OSD-569/
- **Mission source:** https://osdr.nasa.gov/bio/repo/data/missions/SpaceX%20Inspiration4
- **NASA announcement:** https://www.nasa.gov/osdr-latest-news-i4-mission-datasets/
- **Study DOI in supplied ISA metadata:** 10.26030/e0rx-sh52.
- **Public access:** NASA says processed astronaut data are publicly available; some raw human sequence data are controlled-access and require an application. This ASTROCARE integration uses the processed CBC CSV supplied by the user, not restricted sequence data.

### What this dataset measures

OSD-569 is a multi-assay whole-blood study. The supplied CBC subset is a clinical laboratory complete blood count, not a wearable stream. It contains 28 sample rows: four anonymised participant codes (C001–C004) at seven ground collection timepoints: L-92, L-44, L-3 (pre-flight) and R+1, R+45, R+82, R+194 (post-flight). The study metadata describes the three-day Inspiration4 mission in September 2021 and notes that CBC collection was performed at ground timepoints.

### Variables available in the supplied transformed CBC CSV

The original file `LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv` contains 61 columns: `Sample Name`, followed by 20 measured CBC variables and their supplied reference minimum/maximum columns. Variables are:

- Absolute basophils (cells/µL)
- Absolute eosinophils (cells/µL)
- Absolute lymphocytes (cells/µL)
- Absolute monocytes (cells/µL)
- Absolute neutrophils (cells/µL)
- Basophils (%), eosinophils (%), lymphocytes (%), monocytes (%), neutrophils (%)
- Hematocrit (%), haemoglobin (g/dL; source transformed column is labelled `hemoglobin_value_percent`, while the companion submitted table labels the unit g/dL)
- MCH (pg), MCHC (g/dL), MCV (fL), MPV (fL), RDW (%)
- Platelet count (thousand/µL)
- Red blood cell count (million/µL)
- White blood cell count (thousand/µL)

The CSV includes laboratory reference minima and maxima for these analytes. Missing measurements remain missing; they are not imputed.

### File format and local files

- `NASA_DATA/OSD-569/LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv` — original transformed CBC CSV from the user-provided OSD-569 download.
- `NASA_DATA/OSD-569/LSDS-7_Complete_Blood_Count_CBC.upload_SUBMITTED.csv` — companion submitted-format CBC table.
- `NASA_DATA/OSD-569/OSD-569_metadata_OSD-569-ISA.zip` — original ISA metadata archive.
- `NASA_DATA/OSD-569/metadata/` — extracted ISA metadata text files, including study, investigation, sample and assay metadata.
- `nasa-cbc-data.js` — compact, browser-ready JSON representation of the 28 transformed CBC rows and the 20 measured analytes with reference bounds. It was generated from the transformed CSV for offline use in the app.

The uploaded archive also contained large processed RNA-seq and epitranscriptomic XLSX files and MultiQC ZIP reports. Those files are not loaded into the live app because they are large and require a separate bioinformatics interpretation workflow; they are not needed for the CBC explorer. The app does not infer gene-expression values from them.

### Processing method

1. Extracted the transformed CBC CSV and ISA metadata from the user-supplied archive.
2. Parsed the 28 CSV rows and retained the coded sample identifier, participant code, collection timepoint and phase.
3. Parsed the 20 analytes as numeric values, retaining each source-supplied lower and upper reference bound.
4. Kept blank cells as `null`; no interpolation, imputation, smoothing or unit conversion was applied.
5. Embedded the resulting records in `nasa-cbc-data.js` so the explorer works offline and when the app is opened locally.
6. Sorted the display by the documented collection order L-92, L-44, L-3, R+1, R+45, R+82, R+194.

### Application module

**NASA Research Data** page. It allows selection of an analyte and coded participant, plots the measured values with the supplied reference bounds, displays the collection phase and reference-range comparison, and exports the selected subset as CSV. The NASA records are not fed into synthetic heart rate, SpO₂, blood pressure, temperature, sleep, stress or radiation cards.

### Scientific relevance

CBC measurements provide information about blood-cell populations and indices relevant to general haematological and immune-system research. Comparing pre- and post-flight samples can support research into biological responses associated with spaceflight. This is supporting research context, not a real-time clinical monitor and not proof of causation.

### Limitations

- Only four coded crew members and seven ground CBC collection timepoints are present in this supplied subset.
- The CBC subset contains no in-flight CBC timepoint.
- It does not contain heart rate, SpO₂, blood pressure, temperature, sleep, mood, activity or radiation dose.
- Participant identifiers are coded; the app does not attempt re-identification.
- Reference intervals are supplied laboratory ranges, not astronaut-specific clinical thresholds or diagnostic cutoffs.
- This small observational cohort is not suitable for validating a predictive medical model.
- ASTROCARE is an educational prototype, not a medical device and not affiliated with or endorsed by NASA.

## Other NASA research studies listed for future investigation (not integrated as local payloads)

These studies are listed in NASA's Inspiration4 mission catalogue. Their exact downloadable files, variables and access status must be checked at the study file level before integrating any additional values:

- **OSD-570:** SpaceX Inspiration4 PBMC Profiling: snRNA-seq, snATAC-seq, and T-cell and B-cell repertoire profiling. https://osdr.nasa.gov/bio/repo/data/studies/OSD-570/
- **OSD-571:** SpaceX Inspiration4 Plasma Profiling: Proteomics, EVPs, Metabolomics, cfDNA Sequencing and cfRNA Sequencing. https://osdr.nasa.gov/bio/repo/data/studies/OSD-571/
- **OSD-575:** SpaceX Inspiration4 Blood Serum Metabolic Panel and Immune/Cardiac Cytokine Arrays. https://osdr.nasa.gov/bio/repo/data/studies/OSD-575/
- **OSD-656:** SpaceX Inspiration4 Urine Inflammation Panel (Multiplex, NULISAseq). https://osdr.nasa.gov/bio/repo/data/studies/OSD-656/

NASA OSDR access guidance: https://science.nasa.gov/reference/osdr-faq/.
