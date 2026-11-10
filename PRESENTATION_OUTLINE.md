# ASTROCARE — 7-slide presentation outline

## Slide 1 — Title & introduction
- ASTROCARE: Intelligent Health Monitoring for the Next Generation of Space Exploration
- NASA Space Apps Challenge: astronaut health monitoring
- Tagline: Observe. Understand. Support crew health.
- Visual: dashboard overview screenshot; show DEMO DATA label.

## Slide 2 — Problem statement
- Long-duration spaceflight presents interconnected health challenges.
- Cardiovascular adaptation, muscle/bone deconditioning, sleep/circadian disruption, stress/isolation and radiation exposure need structured observation.
- Communication delays make local availability and clear reporting important.
- Visual: five challenge icons around an astronaut silhouette.

## Slide 3 — Proposed solution
- One mission-focused dashboard for multi-domain health logs.
- Individual baseline + configurable, explainable rule flags.
- Local history, report export and delayed-communications queue.
- Explicit separation of synthetic telemetry and NASA research evidence.
- Visual: user flow from log → compare → flag → review → export.

## Slide 4 — Application architecture
- HTML/CSS/JavaScript front end.
- Browser localStorage for local records and settings.
- Canvas charts and CSV/TXT export.
- Rule-based threshold engine; no external AI or sensor claims.
- NASA sources appear as research references, not as live vital telemetry.
- Visual: architecture diagram with local-only storage boundary.

## Slide 5 — Main features & screenshots
- Mission overview and vital signs.
- Cardiovascular trend charts.
- Bone/muscle exercise log and sleep/fatigue check-ins.
- Mental wellness and radiation tracker.
- Alert centre, history, references and settings.
- Visual: 3–4 screenshots; annotate synthetic-data badge.

## Slide 6 — Innovation & impact
- Personal baseline comparison and transparent alerts.
- Offline-first behavior and local delayed-comms queue.
- NASA research provenance for scientific rationale.
- Potential to support crew/medical review when integrated with validated data streams.
- Limitations: prototype only, no medical validation, no live sensors, no NASA endorsement.

## Slide 7 — Future scope & conclusion
- Integrate validated wearable and spacecraft medical sensor feeds.
- Import approved OSDR processed datasets after schema/access review.
- Add secure clinician workflows, encryption and mission-approved radiation data.
- ASTROCARE demonstrates a responsible software concept for organizing astronaut health observations.
