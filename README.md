# ASTROCARE

**Intelligent Health Monitoring for the Next Generation of Space Exploration**

ASTROCARE is an independent student prototype for astronaut health monitoring concepts. It combines a clearly labelled synthetic mission dashboard with a separate explorer for authentic NASA OSDR Inspiration4 CBC research data.

> **Scientific and safety boundary:** Synthetic/demo readings are not astronaut telemetry. NASA OSDR CBC records are biological research samples, not live wearable readings. ASTROCARE is not a medical device, emergency system, NASA product or NASA-endorsed application.

## What's included

- Mission overview with synthetic vital-sign cards and trends.
- Vital signs and cardiovascular history with manually entered/demo readings.
- Bone/muscle exercise logging, sleep/fatigue check-ins, mental wellness check-ins and manual/demo radiation entries.
- Transparent, configurable rule-based flags (not a validated AI model or medical threshold set).
- Alert centre, local delayed-communications queue, mission profile and personal baseline.
- Health-history search, delete, CSV export and text medical-summary export.
- **NASA Research Data page:** interactive exploration of 28 actual processed OSD-569 CBC sample rows across four coded participants and seven pre-/post-flight collection timepoints.
- NASA source references, dataset documentation, judge-facing scientific basis, presentation outline, demo script and deployment guide.
- Browser localStorage persistence and offline operation after files are downloaded.

## Project structure

```text
ASTROCARE/
├── index.html
├── style.css
├── script.js
├── nasa-cbc-data.js
├── START_ASTROCARE.bat
├── OPEN_IN_CHROME.bat
├── NASA_DATA/
│   └── OSD-569/
│       ├── LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv
│       ├── LSDS-7_Complete_Blood_Count_CBC.upload_SUBMITTED.csv
│       ├── OSD-569_metadata_OSD-569-ISA.zip
│       └── metadata/
├── DATASET_DOCUMENTATION.md
├── SCIENTIFIC_BASIS.md
├── references.md
├── LICENSE
├── THIRD_PARTY_NOTICES.md
├── NASA_SPACE_APPS_DESCRIPTION.md
├── PRESENTATION_OUTLINE.md
├── DEMO_SCRIPT.md
└── DEPLOYMENT.md
```

## Run on Windows / Chrome

**Recommended:**

1. Download and extract the complete `ASTROCARE.zip` folder. Do not try to open `index.html` while it is still inside the ZIP preview.
2. Open the extracted `ASTROCARE` folder.
3. Double-click **`START_ASTROCARE.bat`**. It starts a small local web server using Python and opens Chrome at `http://127.0.0.1:8765`.
4. Keep the server terminal window open while using the app. Close that terminal window to stop the server.

If Python is not installed, double-click `OPEN_IN_CHROME.bat` to open `index.html` directly in Chrome. The app uses no backend and no paid API. The NASA CBC data is bundled locally.

## Run manually

Open PowerShell in the extracted folder:

```powershell
py -3 -m http.server 8765 --bind 127.0.0.1
```

Then visit `http://127.0.0.1:8765` in Chrome. If `py` is not available, try `python -m http.server 8765 --bind 127.0.0.1`.

## NASA research integration

The local CBC explorer is built from the user-supplied NASA OSDR OSD-569 archive. The integrated transformed CSV is `NASA_DATA/OSD-569/LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv`; `nasa-cbc-data.js` is its offline browser-ready representation. Values, missing values and supplied reference bounds are retained. The app does not mix these data with demo vital signs. See `DATASET_DOCUMENTATION.md` for variables, processing, provenance and limitations.

Official study: https://osdr.nasa.gov/bio/repo/data/studies/OSD-569/

## Data persistence and privacy

Health entries, profile settings, alerts and check-ins are saved in this browser's localStorage. Data stays on the local device; no account, server upload or medical-team transmission is implemented. Browser storage is not encrypted. Avoid entering real sensitive medical information on shared devices. Use exports to keep a copy before clearing browser data.

## Testing notes

The JavaScript is plain browser JavaScript and can be syntax-checked with `node --check script.js`. Use the NASA Research Data page to verify that CBC records load and that selecting a parameter/participant updates the graph and table. The app should be demonstrated using its synthetic-data banner and explicit NASA-data provenance labels.

## Future improvements

- Add vetted wearable/medical device interfaces using validated protocols and sensor provenance.
- Add additional NASA datasets only after checking their actual file manifests, units, metadata and access terms.
- Implement authenticated, encrypted data transfer and role-based medical review in a properly secured backend.
- Conduct usability, accessibility, cybersecurity and clinical validation before any operational use.

## Credits

NASA OSDR and the Inspiration4 research teams are acknowledged as data sources. ASTROCARE is an independent educational prototype and is not affiliated with or endorsed by NASA.

## Licensing and attribution

### Original ASTROCARE work
The original ASTROCARE application code and project documentation are offered under the Apache License, Version 2.0. See `LICENSE`. This licence applies only to original material for which the ASTROCARE contributors have the rights to grant it. Each contributor should agree before the project is published under this licence.

### NASA research data
The NASA OSDR OSD-569 processed CBC data and associated metadata are third-party research materials, not original ASTROCARE code. They are **not relicensed under Apache 2.0 by this repository**. Their use and redistribution remain subject to the source repository's terms, study-level notices and any file-specific licence or restrictions. See `THIRD_PARTY_NOTICES.md`, `references.md` and `DATASET_DOCUMENTATION.md`. Verify the study's current file-level terms before redistributing the data archive.

### NASA non-endorsement
ASTROCARE is an independent student prototype. It is not affiliated with, sponsored by, reviewed by, or endorsed by NASA. NASA names and marks are used only to identify the research sources and do not imply endorsement.

### Third-party materials
Any third-party materials added in future must retain their own licences and required notices. See `THIRD_PARTY_NOTICES.md`.
