# FigureYa Games

A lightweight collection of browser-based mini games that mix “academia × entertainment.” Every title is designed for quick play sessions with a research twist. The bundle currently includes:

- **Peer Review Defense** — tower defense / strategy
- **Lab Carnival** — party brawler with AI opponents
- **Mario’s CNS Sprint** — platformer tribute
- **FigureYa Flight** — chase & dodge challenge
- **Link Up Ideas** — tile-link puzzler using FigureYa thumbnails
- **Paper Cascade** — typing trainer with FigureYa keyword decks (bilingual, graded, PWA-ready)
- **Snack for Figures** — snake remake with FigureYa imagery and multiple difficulty modes
- **Tetris Remix** — classic falling-block puzzle featuring FigureYa tiles

You can open everything directly in a browser or deploy to GitHub Pages for instant online access.

## Play Online

- Collection home: `index.html`
- Individual entry points:
  - Peer Review Defense: `game_peerreview/index.html`
  - Lab Carnival: `game_eggparty/index.html`
  - Mario’s CNS Sprint: `game_mario/index.html`
  - FigureYa Flight: `game_catmouse/index.html`
  - Link Up Ideas: `game_linkup/index.html`
  - Paper Cascade: `game_typing/index.html`
  - Snack for Figures: `game_snake/index.html`
  - Tetris Remix: `game_tetris/index.html`

- Published builds (GitHub Pages):

| Game | URL |
| --- | --- |
| Collection Home | https://ying-ge.github.io/FigureYa-Games/ |
| Peer Review Defense | https://ying-ge.github.io/FigureYa-Games/game_peerreview/ |
| Lab Carnival | https://ying-ge.github.io/FigureYa-Games/game_eggparty/ |
| Mario’s CNS Sprint | https://ying-ge.github.io/FigureYa-Games/game_mario/ |
| FigureYa Flight | https://ying-ge.github.io/FigureYa-Games/game_catmouse/ |
| Link Up Ideas | https://ying-ge.github.io/FigureYa-Games/game_linkup/ |
| Paper Cascade | https://ying-ge.github.io/FigureYa-Games/game_typing/ |
| Snack for Figures | https://ying-ge.github.io/FigureYa-Games/game_snake/ |
| Tetris Remix | https://ying-ge.github.io/FigureYa-Games/game_tetris/ |

## Run Locally

This repository is a static front-end site:

- Quickest option: double-click `index.html` to launch the hub.
- Recommended: serve the folder via a local static server (enables PWA / Service Worker features used in `game_typing`).

Common approaches:

```bash
# Python 3 built-in
python3 -m http.server 8000
# then open http://localhost:8000

# Node.js (requires http-server)
npx http-server
```

## Repository Layout

```
FigureYa-Games/
├── index.html                 # Game hub (cards link to each title)
├── game_peerreview/           # Peer Review Defense
│   ├── index.html
│   └── README.md
├── game_eggparty/             # Lab Carnival
│   └── index.html
├── game_mario/                # Mario’s CNS Sprint
│   └── index.html
├── game_catmouse/             # FigureYa Flight
│   └── index.html
├── game_linkup/               # Link Up Ideas
│   ├── index.html
│   └── README.md
├── game_snake/                # Snack for Figures
│   ├── index.html
│   ├── README.md
│   └── gallery_compress/      # Artwork assets
├── game_typing/               # Paper Cascade (PWA / SEO / leaderboards)
│   ├── 404.html
│   ├── deploy.sh
│   ├── index.html
│   ├── LICENSE
│   ├── manifest.json
│   ├── PROJECT_SUMMARY.md
│   ├── README.md
│   ├── robots.txt
│   ├── sitemap.xml
│   └── sw.js
├── game_tetris/               # Tetris Remix
│   └── index.html
├── png/                       # Original image assets
└── png_compressed/            # Optimized assets (webp, etc.)
```

## Game Highlights

### Peer Review Defense (`game_peerreview/`)

- Tower-defense take on manuscript submission:
  - Place evidence pillars—core figures, datasets, tools—to repel Reviewer and Editor “critique projectiles.”
  - FigureYa charts drop like sunshine; tap them to refill Funding and boost Impact Factor.
  - Two difficulty tiers (Standard / Expert); Editors hit twice as hard in Expert.
  - 12 escalating waves with rising Editor spawn rates.
  - Funding & Impact Factor economy—defeating critiques fuels upgrades.
  - Mouse and touch friendly with live canvas status updates.
- Docs: see `game_peerreview/README.md`
- Entry: `game_peerreview/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_peerreview/" target="_blank">
  <img src="png_compressed/game_peerreview.webp" alt="Peer Review Defense" width="520" />
</a>

---

### Link Up Ideas (`game_linkup/`)

- Casual link-matching puzzle using FigureYa thumbnails.
- Entry: `game_linkup/index.html`
- Note: README is a placeholder—contributions welcome for rules and level design.

<a href="https://ying-ge.github.io/FigureYa-Games/game_linkup/" target="_blank">
  <img src="png_compressed/game_linkup.webp" alt="Link Up Ideas" width="520" />
</a>

---

### Snack for Figures (`game_snake/`)

- Snake remake featuring FigureYa thumbnails as food.
- Four difficulty levels (Intro, Easy, Normal, Hard).
- Adjustable simultaneous food count (1–5).
- Dynamic speed-up every 5 snacks.
- Local high-score tracking and responsive design.
- Gradient UI with subtle animation polish.
- Docs: `game_snake/README.md`
- Entry: `game_snake/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_snake/" target="_blank">
  <img src="png_compressed/game_snake.webp" alt="Snack for Figures" width="520" />
</a>

---

### Lab Carnival (`game_eggparty/`)

- 90-second party brawler for score chasers.
- Compete for FigureYa artifacts against multiple AI rivals.
- Entry: `game_eggparty/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_eggparty/" target="_blank">
  <img src="png_compressed/game_eggparty.webp" alt="Lab Carnival" width="520" />
</a>

---

### Mario’s CNS Sprint (`game_mario/`)

- Platformer homage infused with research humor.
- Classic Mario-style level flow with FigureYa callbacks.
- Entry: `game_mario/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_mario/" target="_blank">
  <img src="png_compressed/game_mario.webp" alt="Mario’s CNS Sprint" width="520" />
</a>

---

### FigureYa Flight (`game_catmouse/`)

- Chase-and-dodge gameplay with FigureYa imagery as set dressing.
- Entry: `game_catmouse/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_catmouse/" target="_blank">
  <img src="png_compressed/game_catmouse.webp" alt="FigureYa Flight" width="520" />
</a>

---

### Tetris Remix (`game_tetris/`)

- Classic falling-block action with FigureYa tiles.
- Chain clears and combo scoring.
- Entry: `game_tetris/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_tetris/" target="_blank">
  <img src="png_compressed/game_tetris.webp" alt="Tetris Remix" width="520" />
</a>

---

### Paper Cascade (`game_typing/`)

- Vocabulary sourced from college / graduate-level FigureYa keywords (see “Citation”).
- Retro terminal theme with CRT scanline effect.
- Bilingual (Chinese / English) modes and four education tiers.
- Live stats (WPM, accuracy, score, timer) plus local leaderboards.
- Responsive design, audio feedback, dark / light themes.
- 100% front-end, PWA-ready, GitHub Pages friendly.
- Docs: `game_typing/README.md`, `game_typing/PROJECT_SUMMARY.md`
- Entry: `game_typing/index.html`

<a href="https://ying-ge.github.io/FigureYa-Games/game_typing/" target="_blank">
  <img src="png_compressed/game_typing.webp" alt="Paper Cascade" width="520" />
</a>

## Citation

- Xiaofan Lu, et al. (2025). *FigureYa: A Standardized Visualization Framework for Enhancing Biomedical Data Interpretation and Research Efficiency*. iMetaMed.  
  DOI: https://doi.org/10.1002/imm3.70005

## License

- The root project and all subgames are released under the MIT License.
- See the root `LICENSE` file (subdirectories referencing their own `LICENSE` mirror the same terms).
