# Peer Review Defense

Peer Review Defense is a tower-defense game built around the academic submission process. Deploy different types of evidence to counter relentless Reviewer and Editor “critique projectiles” and keep your Impact Factor climbing.

## Core Gameplay

- **Tower placement**: Select an evidence tower from the control panel, then click a grid cell to deploy it. Every tower costs Funding.
- **Six evidence towers**
  - **Data** (energy 60): Balanced-range damage dealer for steady attrition.
  - **Figure** (energy 60): Fast-firing short-range tower that handles front-line pressure.
  - **Novelty** (energy 120): Long-range, high-impact strikes that lean on originality.
  - **Mechanism** (energy 150): Medium-range chain reactions—triggered by adjacent Data.
  - **Clinical** (energy 90): Slows advancement by anchoring clinical or translational value.
  - **AI** (energy 150): Global scout finisher that pairs with other towers for cleanup.
- **Resource loop**: Defeating critiques refunds Funding and raises Impact Factor, unlocking higher-tier deployments.
- **Difficulty settings**: Standard and Expert; Editors hit twice as hard and endure longer in Expert.
- **Wave survival**: 12 escalating waves—later waves move faster, have more HP, and include more Editors.
- **Impact Factor & Integrity**: Impact Factor represents performance; Integrity is your life total. Hit zero Integrity and the submission fails.

## Controls

- Mouse / touch: click a tower → click an empty grid cell to deploy.
- Keyboard: primarily designed for point-and-click; no dedicated shortcuts yet.
- If Funding runs low, hold the line until existing towers defeat critiques for income.

## Running the Game

This project is a static front-end page; serve it locally or host it anywhere that supports static files:

```bash
python3 -m http.server 8000
# then visit http://localhost:8000/game_peerreview/
```

Or deploy via any static hosting platform (e.g., GitHub Pages).

May your manuscript weather Reviewer #3 and emerge with a triumphant acceptance! 📈

