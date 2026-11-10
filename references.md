# ASTROCARE — References and data sources

## NASA OSDR datasets

1. **OSD-569 — Whole Blood Measurements from the SpaceX Inspiration4 Mission (RNA-seq, epitranscriptome, WGS, clonal hematopoiesis, CBC).** NASA Open Science Data Repository. https://osdr.nasa.gov/bio/repo/data/studies/OSD-569/ . The app locally integrates the supplied processed CBC transformed CSV only.
2. **OSD-570 — SpaceX Inspiration4 PBMC Profiling: snRNA-seq, snATAC-seq, and T-cell and B-cell repertoire profiling.** https://osdr.nasa.gov/bio/repo/data/studies/OSD-570/ . Listed for future investigation; not locally integrated.
3. **OSD-571 — SpaceX Inspiration4 Plasma Profiling: Proteomics, EVPs, Metabolomics, cfDNA Sequencing and cfRNA Sequencing.** https://osdr.nasa.gov/bio/repo/data/studies/OSD-571/ . Listed for future investigation; not locally integrated.
4. **OSD-575 — SpaceX Inspiration4 Blood Serum Metabolic Panel and Immune/Cardiac Cytokine Arrays.** https://osdr.nasa.gov/bio/repo/data/studies/OSD-575/ . Listed for future investigation; not locally integrated.
5. **OSD-656 — SpaceX Inspiration4 Urine Inflammation Panel (Multiplex, NULISAseq).** https://osdr.nasa.gov/bio/repo/data/studies/OSD-656/ . Listed for future investigation; not locally integrated.
6. **SpaceX Inspiration4 mission page.** NASA OSDR. https://osdr.nasa.gov/bio/repo/data/missions/SpaceX%20Inspiration4 .

## NASA access and research context

7. **Inspiration4 Mission: Commercial Astronaut Data Now Available on OSDR!** NASA. https://www.nasa.gov/osdr-latest-news-i4-mission-datasets/ . Describes the mission dataset collection and distinction between public processed data and controlled-access raw data.
8. **OSDR Frequently Asked Questions.** NASA Science. https://science.nasa.gov/reference/osdr-faq/ . Explains repository search, file downloads, public processed human data and controlled-access sequence files.
9. **Spaceflight Standard Measures: Characterizing How Humans Adapt in Space.** NASA. https://www.nasa.gov/humans-in-space/spaceflight-standard-measures-characterizing-how-humans-adapt-in-space/ . Supports the research rationale for sleep, activity, mood and physiological monitoring.
10. **Space Radiation.** NASA. https://www.nasa.gov/directorates/esdmd/hhp/space-radiation/ . Operational and research context for astronaut radiation exposure monitoring.
11. **Inspiration4 data access through the NASA Open Science Data Repository.** Nature Portfolio. https://www.nature.com/articles/s41526-024-00393-5 . Describes the multi-omic and clinical dataset release and use considerations.

## Application data provenance

- **Synthetic demonstration data:** generated locally by `script.js`; used only for live-looking dashboard telemetry and clearly labelled as synthetic.
- **NASA processed CBC data:** from `NASA_DATA/OSD-569/LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv`, provided by the user. Browser representation: `nasa-cbc-data.js`.
- **No NASA heart rate, SpO₂, blood pressure, body temperature, sleep or stress measurements are represented in the dashboard.**

NASA names, logos and marks are not used to imply endorsement. ASTROCARE is an independent student prototype.


## Dataset citation and usage guidance

12. **NASA Open Science Data Repository (OSDR), OSD-569 — Whole Blood Measurements from the SpaceX Inspiration4 Mission.** Study DOI recorded in the supplied study metadata: https://doi.org/10.26030/e0rx-sh52. Cite the study using the citation displayed in the OSDR study page at the time of publication; OSDR recommends using the study-page citation export.
13. **NASA OSDR Frequently Asked Questions — How to cite OSDR and datasets.** https://science.nasa.gov/reference/osdr-faq/
14. **NASA OSDR Data Repository Terms and Conditions.** https://science.nasa.gov/reference/osdr-help-terms-and-conditions/
15. **NASA Science Data Licenses.** https://science.data.nasa.gov/about/license
16. **NASA Space Apps Challenge 2026 Participant Terms and Conditions.** https://www.spaceappschallenge.org/legal/
17. **Apache License, Version 2.0.** https://www.apache.org/licenses/LICENSE-2.0

**Citation note:** OSDR recommends using the citation supplied in the individual study page's Citation panel. The DOI above was found in the OSD-569 study metadata bundled with the supplied archive; confirm it against the current study page before final submission.
