# ASTROCARE — NASA Space Apps Challenge Project Description

## Project title
**ASTROCARE: Intelligent Health Monitoring for the Next Generation of Space Exploration**

## Short summary
ASTROCARE is a browser-based astronaut health-monitoring prototype designed for long-duration mission scenarios. It lets a crew member log health observations, review trends against a personal baseline, receive transparent configurable rule-based flags, and prepare local health summaries when communications are delayed. Its dashboard uses clearly labelled synthetic demo telemetry, while a separate research page connects feature rationale to authentic NASA human-spaceflight research and OSDR datasets.

## Problem statement
Spaceflight can affect cardiovascular function, muscle and bone health, sleep and circadian rhythms, psychological well-being and radiation exposure. During exploration missions, crew health information must be organized, interpretable and available even when real-time communication with Earth is limited. A prototype must also avoid presenting uncertain or simulated readings as clinical facts.

## Solution
ASTROCARE provides a responsive offline-first web dashboard with vital-sign logging, cardiovascular trends, exercise/countermeasure records, sleep and fatigue check-ins, mental wellness self-reflection, manual radiation logging, alert history, personal baselines, CSV export and a medical summary. A transparent rule engine explains each flag and its configurable threshold. A delayed-comms queue demonstrates local storage until a simulated communication window.

## Innovation
- Mission-oriented combination of physiological, behavioral and operational health logs.
- Personal baseline comparison rather than relying only on generic thresholds.
- Transparent, explainable alert reasons rather than opaque AI claims.
- Offline-first local storage and delayed-communications demonstration.
- A NASA Research Data explorer that plots the supplied processed OSD-569 CBC data (28 sample rows, four coded participants, seven pre-/post-flight timepoints) separately from synthetic telemetry.
- Scientific provenance page distinguishing NASA research evidence from synthetic dashboard data.

## Technology
HTML5, CSS3, vanilla JavaScript, Canvas charts, browser localStorage, CSV/TXT export. No paid API, backend or external sensor required for the prototype.

## Impact
ASTROCARE demonstrates how a structured local health log could help organize crew observations, surface unusual trends for human review and prepare a concise report. It is an educational prototype, not a medical device, validated clinical tool, official NASA system or replacement for flight surgeons and mission emergency procedures.

## Data sources
- NASA OSDR Inspiration4 OSD-569 whole blood: https://osdr.nasa.gov/bio/repo/data/studies/OSD-569/
- NASA OSDR Inspiration4 OSD-570 PBMC: https://osdr.nasa.gov/bio/repo/data/studies/OSD-570/
- NASA OSDR Inspiration4 OSD-571 plasma: https://osdr.nasa.gov/bio/repo/data/studies/OSD-571/
- NASA OSDR overview and access FAQ: https://science.nasa.gov/biological-physical/data/osdr/ and https://science.nasa.gov/reference/osdr-faq/
- NASA Spaceflight Standard Measures: https://www.nasa.gov/humans-in-space/spaceflight-standard-measures-characterizing-how-humans-adapt-in-space/
- NASA Space Radiation: https://www.nasa.gov/directorates/esdmd/hhp/space-radiation/

**Data caveat:** The project includes the processed OSD-569 CBC transformed CSV and its ISA metadata from the user-supplied NASA archive. The research explorer uses those actual CBC records. Other OSDR studies are referenced but are not locally integrated. The dashboard's live-looking vital signs remain synthetic and labelled. OSD-569 CBC is not heart rate, SpO₂, blood pressure or in-flight telemetry. Dataset variables, processing and limitations are documented in `DATASET_DOCUMENTATION.md`.

See `SCIENTIFIC_BASIS.md` for the scientific rationale and limitations of each monitoring feature.
