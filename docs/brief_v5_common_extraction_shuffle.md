# V5 — Common CSS/JS Extraction + Shuffle Feature

**Supersedes:** Nothing (additive refactoring).  
**Depends on:** V1–V4 already implemented.

## Goal

1. Extract duplicated CSS into `css/common.css` — shared by all 14
   HTML files.
2. Create `js/common.js` with a shuffle utility — used by 4
   card-based pages.
3. Add a 🔀 Mischen (shuffle) toggle to all card-based pages.

## Part A — CSS Extraction

### Create `css/common.css`

```css
/* ─── Reset ─── */
* { margin: 0; padding: 0; box-sizing: border-box; }

/* ─── Base ─── */
body {
  font-family: 'Inter', Arial, Helvetica, sans-serif;
  background: #2b2b2f;
  color: #e0e0e4;
  min-height: 100vh;
}

/* ─── Guess Mode — Card variant ─── */
.guess-hidden {
  background: #343438 !important;
  border-color: #4a4a52 !important;
  cursor: pointer;
}
.guess-hidden:hover {
  box-shadow: 0 4px 12px rgba(122, 96, 192, 0.3) !important;
}
.guess-hidden .guess-hide { visibility: hidden; }
.guess-revealed { cursor: default; }

/* ─── Guess Mode — Cell variant ─── */
.guess-cell-hidden {
  cursor: pointer;
  color: transparent !important;
  user-select: none;
}
.guess-cell-hidden * { color: transparent !important; }
.guess-cell-hidden:hover {
  background: rgba(122, 96, 192, 0.15);
}

/* ─── Tooltip (Substantive, Verben, Praepositionen) ─── */
.tooltip {
  display: none;
  position: absolute;
  top: calc(100% + 8px);
  left: 50%;
  transform: translateX(-50%);
  background: #111115;
  color: #e8e8ec;
  padding: 8px 14px;
  border-radius: 8px;
  font-size: 13px;
  font-style: italic;
  white-space: nowrap;
  max-width: 420px;
  font-family: 'Inter', Arial, Helvetica, sans-serif;
  z-index: 200;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.5);
  pointer-events: none;
  line-height: 1.4;
}
.tooltip::before {
  content: '';
  position: absolute;
  bottom: 100%;
  left: 50%;
  transform: translateX(-50%);
  border-left: 6px solid transparent;
  border-right: 6px solid transparent;
  border-bottom: 6px solid #111115;
}
.card:hover .tooltip { display: block; }
```

**Note on tooltip arrow:** Substantive and Praepositionen currently use
`::after`; Verben uses `::before`. Standardize on `::before` in
common.css. Remove the per-page `::after` rules from Substantive and
Praepositionen — the visual result is identical.

### Update all 14 HTML files

Add this line inside `<head>`, after the Google Fonts `<link>` and
before the page `<style>`:

```html
<link rel="stylesheet" href="css/common.css">
```

Then **remove** from each page's `<style>` block:

| Rule(s) to remove | Pages that have it |
|---|---|
| `* { margin:0; ... box-sizing }` | All 14 |
| `body { font-family... background... color... min-height }` | All 14 (keep page-specific additions like `padding: 0 0 48px` where present) |
| `.guess-hidden` + `.guess-hidden:hover` + `.guess-hidden .guess-hide` | Substantive, Verben, Konjugation, Adjektive |
| `.guess-revealed` | Substantive, Verben, Adjektive |
| `.guess-cell-hidden` (base 3 rules) | Adjektivendungen, Artikel, Pronomen, Modalverben, Relativpronomen, Konjugation |
| `.tooltip` + `.tooltip::before` / `::after` + `.card:hover .tooltip` | Substantive, Verben, Praepositionen |

**Keep in each page's `<style>`:**

- All page-specific styles (cards, grids, headers, controls,
  buttons, colors, mobile overrides)
- Page-specific guess extensions like
  `.guess-cell-hidden.tile { background: #343438 !important; ... }`
  in Adjektivendungen and `.guess-cell-hidden.cell { ... }` in
  Relativpronomen
- Page-specific guess button active class (`.guess-active`,
  `.fbtn.guess-active`, `.guess-btn:hover, .guess-btn.active`)
- Any `body` properties beyond what common.css sets (e.g.
  `padding: 0 0 48px` on Adjektive, Artikel, etc.)

**Do NOT remove** headers, controls, search boxes, filter buttons, or
any layout CSS — those stay page-specific. Only the rules listed
above move to common.css.

## Part B — JS Extraction + Shuffle

### Create `js/common.js`

```javascript
/**
 * Fisher-Yates shuffle — returns a new shuffled array.
 * Does NOT mutate the input.
 */
function shuffleArray(arr) {
  const a = [...arr];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}
```

### Add shuffle to 4 card-based pages

**Files:** `Substantive.html`, `Verben.html`, `Konjugation.html`,
`Adjektive.html`

**B1.** Add script tag in `<head>` or just before the inline
`<script>`:

```html
<script src="js/common.js"></script>
```

Place it **before** the page's inline `<script>` so that
`shuffleArray` is available.

**B2.** Add state variable alongside existing ones:

```javascript
let shuffleMode = false;
```

**B3.** Add toggle function:

```javascript
function toggleShuffle() {
  shuffleMode = !shuffleMode;
  document.getElementById('shuffle-btn')
    .classList.toggle(ACTIVE_CLASS, shuffleMode);
  render();
}
```

Where `ACTIVE_CLASS` matches each page's existing guess-mode active
class pattern:

| Page | ACTIVE_CLASS |
|------|-------------|
| Substantive | `'guess-active'` |
| Verben | `'guess-active'` |
| Konjugation | `'guess-active'` |
| Adjektive | `'guess-active'` |

(Same purple accent styling already used for guess mode buttons.)

**B4.** Add button in the controls bar, right after the guess mode
button:

```html
<button class="BTN_CLASS" id="shuffle-btn" onclick="toggleShuffle()">🔀 Mischen</button>
```

Where `BTN_CLASS` matches each page's existing button class:

| Page | BTN_CLASS |
|------|-----------|
| Substantive | `filter-btn` |
| Verben | `fbtn` |
| Konjugation | `fbtn` |
| Adjektive | `filter-btn` |

**B5.** Modify `render()` — add shuffle after filtering, before
building HTML:

In each page's `render()` function, find the point where the
filtered array `f` (or equivalent variable name) is fully filtered
and about to be iterated for HTML generation. Insert:

```javascript
if (shuffleMode) f = shuffleArray(f);
```

This must go AFTER all `.filter()` calls and BEFORE the loop that
builds card/row HTML.

**Per-page insertion points:**

- **Substantive:** after the `if (searchTerm)` filter line, before
  `stats.textContent = f.length;`
- **Verben:** after all filter chains, before the HTML building loop
- **Konjugation:** after the pattern/search filter, before building
  the table HTML. Note: Konjugation groups verbs by ablaut pattern
  with group headers. When shuffle is ON, flatten into a single
  ungrouped list (skip group headers). When OFF, keep the grouped
  display.
- **Adjektive:** after category/search filters, before card HTML loop

### Konjugation special handling

Konjugation renders verbs grouped by ablaut pattern with
`.group-header` separator rows. When `shuffleMode` is true:

1. Collect ALL verbs from all patterns into a single flat array
2. Shuffle that array
3. Render as a plain table without group header rows
4. When shuffleMode turns OFF, `render()` restores the grouped view

This means the shuffle path in Konjugation's render needs its own
HTML generation that skips the pattern grouping logic.

## Part C — Housekeeping

### Update `make_targz.bat`

Add `css` and `js` to the collected directories:

```bat
for %%d in (docs assets css js) do if exist "%%d" set "DIRS=!DIRS! %%d"
```

### Update `CLAUDE.md`

Update the file structure section:

```
css/common.css          — Shared base styles (reset, guess mode, tooltip)
js/common.js            — Shared utilities (shuffle)
```

Add under Common Gotchas:

```
- **common.css load order**: must be linked BEFORE the page's
  <style> block so page-specific rules can override.
- **common.js load order**: must be loaded BEFORE the page's inline
  <script> so functions are available.
```

## Verification

1. **Normal mode**: open every page. No visual changes from before.
   All colors, hover effects, tooltips, filters work exactly as
   before.
2. **Guess mode**: still works on all 9 pages. Toggle, reveal,
   re-hide all work.
3. **Shuffle** (4 card-based pages): click 🔀 → cards/rows appear in
   random order. Click again → default order restored. Works with
   search/filter active. Works with guess mode active simultaneously.
4. **Konjugation shuffle**: shuffled view shows ungrouped flat list.
   Unshuffle restores pattern groups.
5. **Mobile**: shuffle button fits in controls bar. No overflow.
6. **Offline**: open any HTML file from filesystem (no server). CSS
   and JS load correctly via relative paths.

## Anti-patterns to avoid

- Do NOT change any HTML structure (header tags, div nesting,
  class names) — this brief only extracts CSS and adds shuffle.
  Structural standardization is a separate effort.
- Do NOT put page-specific styles in common.css — it should only
  contain rules used by 3+ pages identically.
- Do NOT persist shuffle state to localStorage.
- Do NOT mutate the original DATA arrays — `shuffleArray` returns
  a copy.
- Do NOT combine shuffle and guess into one button — they are
  independent toggles.
- Do NOT add shuffle to table-based or reference pages — only the
  4 card-based pages with DATA arrays and render() functions.
