# ASTROCARE — Scientific basis of health-monitoring features

This guide is written for the project demonstration. It explains why each feature exists, what the prototype actually measures, and what it cannot conclude.

## 1. Heart rate and cardiovascular trends

**Scientific basis:** Human spaceflight changes fluid distribution and cardiovascular loading. NASA's Spaceflight Standard Measures describes sensorimotor testing that includes heart rate and blood pressure before and after missions. Tracking trends can help organize observations and identify changes that deserve human review.

**In ASTROCARE:** Heart rate is a synthetic or manually entered bpm value. Blood pressure is a manually entered systolic/diastolic value. The charts show the stored records and compare heart rate with an editable personal baseline.

**Limit:** No ECG, wearable sensor or continuous cardiovascular signal is connected. A simple threshold cannot diagnose arrhythmia or cardiovascular disease.

## 2. SpO₂

**Scientific basis:** Peripheral oxygen saturation is a common physiological monitoring parameter in clinical and operational settings. It is included here as a proposed vital-sign field for a future validated sensor interface.

**In ASTROCARE:** SpO₂ is only synthetic or user-entered. NASA's Inspiration4 blood molecular datasets do not provide a continuous SpO₂ feed.

**Limit:** No pulse oximeter is connected. Motion, perfusion, sensor placement and device quality affect real readings. A displayed percentage is not a diagnosis.

## 3. Body temperature

**Scientific basis:** Temperature is a basic physiological observation that can be useful when interpreted with symptoms and other validated measurements.

**In ASTROCARE:** A manually entered or synthetic °C value with a configurable demonstration flag.

**Limit:** No body-temperature sensor is connected; measurement site and instrument are not specified by this prototype.

## 4. Blood pressure

**Scientific basis:** NASA's Spaceflight Standard Measures describes blood pressure as part of sensorimotor / adaptation-related assessments around missions. Individual trends can be useful context for trained medical staff.

**In ASTROCARE:** Manually entered systolic and diastolic mmHg values, plotted as historical series.

**Limit:** No cuff or validated measurement system is connected. No universal astronaut-specific threshold is asserted.

## 5. Bone and muscle countermeasures

**Scientific basis:** Reduced mechanical loading in microgravity contributes to skeletal unloading and muscle deconditioning. NASA Human Research Program materials discuss bone-fracture risk and countermeasures such as exercise and nutrition. OSDR includes space biology studies of muscle and bone tissues, including model-organism research.

**In ASTROCARE:** Exercise duration, type, perceived effort and optional observations are logged. The app tracks countermeasure participation, not tissue physiology.

**Limit:** It does not measure bone mineral density, bone strength, muscle mass, muscle force or fracture risk. Those require validated clinical / research methods (for example, imaging or dynamometry). Rodent findings must not be presented as direct human outcomes.

## 6. Sleep and fatigue

**Scientific basis:** Mission schedules, light exposure, workload and circadian misalignment can affect sleep and alertness. NASA describes wrist actigraphy and sleep questionnaires in Spaceflight Standard Measures, and studies fatigue countermeasures.

**In ASTROCARE:** Sleep duration, subjective quality and interruptions are logged. The sleep flag is a configurable prompt for review.

**Limit:** No actigraphy, polysomnography, sleep staging or validated fatigue model is integrated. Self-report is not a clinical sleep assessment.

## 7. Mental wellness

**Scientific basis:** Isolation, confinement, workload and team dynamics are relevant to behavioral health and performance during exploration missions. NASA's standard-measures description includes mood, team cohesion, performance and crew-livability questionnaires.

**In ASTROCARE:** Optional mood, stress, connection and energy check-ins. Suggestions are supportive and non-diagnostic.

**Limit:** This is not a validated psychological questionnaire, diagnosis, risk assessment or crisis intervention system. Real mission use must follow approved behavioral-health protocols and provide qualified human support.

## 8. Radiation exposure

**Scientific basis:** Space radiation is a distinct exploration risk. NASA's Space Radiation Analysis Group supports monitoring and radiation safety; NASA describes crew dosimeters used to measure exposure.

**In ASTROCARE:** A manual or synthetic mSv entry and sum of logged entries, with a user-configured demonstration threshold.

**Limit:** The app is not connected to a dosimeter or SRAG feed. A single number cannot capture radiation species, energy, dose rate, shielding, dose equivalent, uncertainty or mission-specific risk. It is not a radiation risk model.

## 9. Rule-based alerts and personal baseline

**Scientific basis:** Individual context matters: a deviation from a person's own usual pattern can be worth reviewing even if a population threshold is not crossed. Transparent thresholds make the logic inspectable.

**In ASTROCARE:** Deterministic JavaScript rules compare selected readings to user-configured flags and a heart-rate baseline. Every alert stores a parameter, reason and suggested general next step.

**Limit:** It is not machine learning, validated AI, a clinical prediction model or a medical triage system. The demonstration thresholds are not NASA standards. A flag means “review this entry,” not “this person is ill.”

## 10. Offline and delayed communications

**Scientific basis:** Deep-space missions can experience communication latency and limited communication windows. Local availability of health records and a queued report concept can support workflow resilience.

**In ASTROCARE:** Browser localStorage persists records on the current device; a local queue represents pending reports. The “Simulate comms available” button clears the queue locally.

**Limit:** Nothing is transmitted to mission control, a clinician or NASA. This is not a secure store-and-forward communications protocol.

## NASA evidence used

- NASA Spaceflight Standard Measures: https://www.nasa.gov/humans-in-space/spaceflight-standard-measures-characterizing-how-humans-adapt-in-space/
- NASA Fatigue Countermeasures Laboratory: https://www.nasa.gov/human-systems-integration-division/human-performance/fatigue-countermeasures-laboratory/
- NASA Human Research Program: https://www.nasa.gov/hrp/
- NASA OSDR: https://science.nasa.gov/biological-physical/data/osdr/
- NASA Space Radiation: https://www.nasa.gov/directorates/esdmd/hhp/space-radiation/
- NASA bone-fracture risk: https://www.nasa.gov/directorates/esdmd/hhp/risk-of-bone-fracture-due-to-spaceflight-induced-changes-to-bone/

## 11. Integrated NASA CBC research data (OSD-569)

**Actual payload integrated:** The project includes the user-supplied processed file `LSDS-7_Complete_Blood_Count_CBC_TRANSFORMED.csv` from NASA OSDR study OSD-569. It contains 28 complete blood count sample rows from four coded Inspiration4 crew participants, with seven ground collection timepoints (L-92, L-44, L-3, R+1, R+45, R+82, R+194).

**Scientific basis:** CBC analytes such as red and white blood cell counts, haemoglobin, haematocrit, platelets and leukocyte differentials are laboratory measures of blood-cell populations. Pre-/post-flight samples can be used in research investigating physiological and immune/haematological responses associated with spaceflight.

**In ASTROCARE:** The NASA Research Data page allows the user to choose one CBC analyte and one coded participant, view the measured values across collection timepoints, compare them with reference bounds supplied in the transformed file, and export a filtered CSV. Missing values are retained as missing.

**Limit:** This CBC subset has no in-flight timepoint and no continuous heart rate, SpO₂, blood pressure, temperature, sleep, stress, activity or radiation data. The cohort is small and observational. Laboratory reference intervals are not astronaut-specific clinical thresholds. These data are never inserted into the synthetic vital-sign dashboard.

**Judges' key point:** NASA research supports the *reason these domains matter*. The dashboard's live-looking values remain synthetic demonstration data. The separate NASA Research Data page displays authentic processed OSD-569 CBC records. Inspiration4 blood-derived laboratory and molecular measurements are not a wearable feed for heart rate, SpO₂ or blood pressure.
