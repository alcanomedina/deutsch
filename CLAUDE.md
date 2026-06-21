# Deutsch Cheatsheet-Bibliothek — Claude Code Instructions

## Project Overview

Personal German learning reference library. 13 interactive HTML
cheatsheets covering grammar, vocabulary, and sentence structure at
B1–B2 level, hosted on GitHub Pages. Built for offline use on desktop
and mobile.

## Architecture (critical — never violate)

**Vanilla HTML/CSS/JS only.** No build tools, no frameworks, no npm.
Every `.html` file must open standalone in a browser. All fonts loaded
from Google Fonts CDN. All JS is inline `<script>` at the bottom of
each file.

GitHub Pages serves from **root** (`/`). All `.html` files live in the
project root. `index.html` is the landing page linking all cheatsheets
with relative paths.

## File Structure

```
index.html              — Landing page (links to all 13 cheatsheets)
Substantive.html        — 843 nouns, searchable/filterable, gender-coded
Artikel.html            — Bestimmt/unbestimmt/kein tables, Verschmelzungen
Adjektive.html          — Komparativ/Superlativ, Partizip als Adjektiv
Adjektivendungen.html   — 3 color-coded ending grids (bestimmt/unbestimmt/ohne)
Pronomen.html           — Personal/Possessiv/Demonstrativ/Interrogativ tables
Relativpronomen.html    — Pronoun table, rules, prep combos, wo(r)- compounds
Praepositionen.html     — Akk/Dat/Wechsel/Gen with mnemonics, hover examples
Verben.html             — ~130 verbs with prepositions, Perfekt, case, examples
Konjugation.html        — ~95 strong/irregular verbs by ablaut pattern
Modalverben.html        — Conjugation grids: Präsens/Präteritum/Konj. II
Satzstruktur.html       — V2, Inversion, Satzklammer, TeKaMoLo, Negation
Nebensaetze.html        — dass/damit/um…zu/Infinitivsätze, nom. Infinitiv
Komposita.html          — Compound words: N+N, V+N, Adj+N, Fugenelemente
docs/                   — Briefs and documentation
CLAUDE.md               — This file
make_targz.bat          — Package root HTML + docs into project.tar.gz
```

## Design System

Every cheatsheet shares these conventions. Do NOT deviate without
explicit instruction.

### Colors

```
Background:         #2b2b2f
Header bar bg:      #232327ee (with backdrop-filter: blur(12px))
Header border:      #3e3e44
Card/tile bg:       #343438
Card/tile border:   #44444c (default), #4a4a52 (neutral/hidden)
Text primary:       #f0f0f4
Text secondary:     #e0e0e4
Text muted:         #ababba
Text dimmed:        #8888a0
```

### Gender Colors (used across Substantive, Artikel, Pronomen, etc.)

| Gender | Background | Border   | Text accent |
|--------|-----------|----------|-------------|
| der    | #1e3050   | #3a6ea8  | #8ec4ff     |
| die    | #4a1e35   | #a84070  | #ffa0c8     |
| das    | #3a3510   | #9a7a20  | #f0d060     |
| plural | —         | —        | #70d890     |

### Case Colors (used in Verben)

| Case | Background | Border   | Text accent |
|------|-----------|----------|-------------|
| Akk  | #3a2e10   | #7a6020  | #e8a840     |
| Dat  | #1a3020   | #3a7a50  | #70d890     |

### Purple accent (patterns, filters, active states)

```
Background: #2a1848
Border:     #7a60c0
Text:       #c8a8ff
```

### Typography

```
Body text:    Inter (Google Fonts)
Data/labels:  JetBrains Mono (Google Fonts)
```

Both loaded via:
```html
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
```

### Layout Patterns

- **Sticky header**: `.top-bar` with `position: sticky; top: 0; z-index: 100`
- **Card grids**: `grid-template-columns: repeat(auto-fill, minmax(280px, 1fr))`
- **Search/filter controls**: inside `.top-bar`, centered, max-width ~920px
- **Tooltips**: positioned **below** cards (`top: calc(100% + 8px)`), never above (sticky header hides them on row 1)
- **Mobile breakpoint**: `@media (max-width: 600px)` — single column grid, reduced font sizes, hide non-essential subtitle text

### Swiss German Conventions

Use Swiss German spelling throughout: Strasse (not Straße), heisst
(not heißt), Spital, Velo, Abstimmung, Apéro, etc. No ß — always ss.

## Page Types

### Card-based (searchable/filterable)
Substantive, Verben, Konjugation, Adjektive.
Data lives in a `const DATA = [...]` JS array. A `render()` function
rebuilds the grid HTML from filtered data. Search and filter buttons
modify state variables and call `render()`.

### Table/grid-based
Artikel, Adjektivendungen, Pronomen, Modalverben, Relativpronomen.
Static HTML tables with color-coded cells. Some have hover interactions
but no search/filter.

### Reference/explanation
Satzstruktur, Nebensaetze, Komposita, Praepositionen.
Structured prose with styled sections, rule cards, and examples. Not
searchable — read-through reference material.

## Common Gotchas

- **Tooltips above row 1**: the sticky header covers them. Always
  position tooltips below cards with `top: calc(100% + 8px)`.
- **Mobile card width**: on pages with search/filter + content grids,
  use a `.content-wrap` container div (like Substantive) to avoid
  width conflicts between the header controls and the card grid.
- **`render()` must be idempotent**: any feature that modifies card
  appearance (guess mode, highlights, etc.) must work correctly when
  `render()` is called again by search/filter — don't rely on DOM
  state that gets wiped by `grid.innerHTML = h`.
- **Font loading**: both fonts are loaded in a single `<link>` tag.
  Don't split into separate requests.
- **No localStorage**: these are static pages, no persistence needed
  unless explicitly specified.

## Brief Conventions

- Briefs live in `docs/brief_v{N}_{short_name}.md`
- Each brief documents: problem/goal, design, implementation per file,
  verification steps, and anti-patterns to avoid.

## Post-Implementation

After completing ANY brief:

1. **Test in browser** — open the modified file(s) locally, verify
   desktop and mobile layouts, check that search/filter still work.
2. **Check index.html** — if a new page was added, add a card to the
   landing page in the appropriate section.
3. **Commit and push** — GitHub Pages auto-deploys from root.
