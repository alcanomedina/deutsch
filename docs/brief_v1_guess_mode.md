# V1 — Guess Mode (Ratemodus)

**Supersedes:** Nothing (new feature).  
**Depends on:** Nothing.

## Goal

Turn every applicable cheatsheet into a flashcard quiz. A toggle in
the header hides key information on cards or table cells. The user
clicks/taps individual items to reveal them one at a time. Toggling
off restores normal view.

## Design

### Toggle button

A button in the sticky `.top-bar`, alongside existing controls.
Label: `🎯 Raten` (active: `🎯 Raten ✓` or visually highlighted).
Styled like existing filter buttons — when active, use the purple
accent (`#2a1848` bg, `#7a60c0` border, `#c8a8ff` text).

State: `let guessMode = false;` alongside existing state variables.
No persistence across page loads.

### Card-based pages — hide everything except the main word

When `guessMode = true`:
- Cards get a neutral appearance: background `#343438`, border
  `#4a4a52` (strip gender/case color-coding).
- All fields except the main word are hidden.
- Cards get class `.guess-hidden` and a click/tap handler.
- Clicking a `.guess-hidden` card adds `.guess-revealed`: restores
  the original color and shows all fields.
- A revealed card stays revealed until guess mode is toggled off
  (which triggers `render()` and re-hides everything).

### Table-based pages — hide all inner cells

When `guessMode = true`:
- Row headers (leftmost column) and column headers (`<th>`) remain
  visible.
- All data cells (`<td>` that aren't row headers) show `·` or blank
  instead of their content.
- Clicking a hidden cell reveals just that cell's content.
- Implementation: wrap each cell's content in a `<span>` that gets
  `display:none` when hidden, with a click handler to reveal.

### Interaction with search/filter

On card-based pages, `render()` rebuilds the DOM. When `guessMode`
is true, `render()` must output cards in the hidden state. Revealed
state is lost on re-render (acceptable — the user is filtering to a
new set).

On table-based pages, tables are static HTML. The guess toggle
manipulates existing DOM elements without rebuilding.

## Implementation

### 1. Card-based pages

**Files:** `Substantive.html`, `Verben.html`, `Konjugation.html`,
`Adjektive.html`

**1a.** Add CSS (before the closing `</style>`):

```css
/* ─── Guess Mode ─── */
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
```

The `!important` overrides are needed because gender/case classes
(`.g-der`, `.k-akk`, etc.) set background and border directly.

**1b.** Add the toggle button in `.top-bar .controls` (after the
search box, before other filter buttons):

```html
<button class="filter-btn" id="guess-btn" onclick="toggleGuess()">🎯 Raten</button>
```

Use each page's existing button class (`filter-btn` on Substantive,
`fbtn` on Verben/Konjugation).

**1c.** Add JS (before the existing `render()` function):

```javascript
let guessMode = false;
function toggleGuess() {
  guessMode = !guessMode;
  const btn = document.getElementById('guess-btn');
  // Use each page's active button class pattern
  btn.classList.toggle('active-all', guessMode);
  render();
}
```

The active class should match each page's convention. On Substantive
use `active-all`. On Verben/Konjugation use `active` or create a
`guess-active` class styled with the purple accent.

**1d.** Modify `render()` — wrap hidden fields in `guess-hide` spans:

Per page, the card HTML generation changes. When `guessMode` is true,
add class `guess-hidden` to the card div and wrap the fields to hide
in `<span class="guess-hide">...</span>`. When `guessMode` is false,
output normally (no wrapper spans needed — keep the fast path clean).

On click, toggle the card from `.guess-hidden` to `.guess-revealed`
and show the hidden content. Add the click handler in `render()`:

```javascript
if (guessMode) {
  document.querySelectorAll('.guess-hidden').forEach(c => {
    c.addEventListener('click', function() {
      this.classList.remove('guess-hidden');
      this.classList.add('guess-revealed');
      // Restore original color class (stored as data attribute)
      this.style.background = '';
      this.style.borderColor = '';
      this.querySelectorAll('.guess-hide').forEach(s => s.style.visibility = 'visible');
    });
  });
}
```

**Per-page field mapping:**

| Page | Main word (keep visible) | Fields to wrap in `.guess-hide` |
|------|------------------------|---------------------------------|
| Substantive | `.word` | `.article`, `.plural`, `.meaning`, `.cat-tag`, `.tooltip` |
| Verben | `.verb-name` | `.prep-badge`, `.perfekt`, `.meaning`, `.type-tag`, `.tooltip` |
| Konjugation | `.v-inf` | `.v-pres`, `.v-prat`, `.v-part`, `.v-aux`, `.v-mean`, `.v-pat` |
| Adjektive | adjective word | translation, comparative, superlative (check exact class names) |

For **Konjugation** specifically: it uses a `<table>` layout that
switches to card-like layout on mobile. The guess mode should hide
the conjugation columns (Präsens vowel change, Präteritum, Partizip,
Aux, Meaning) while keeping the Infinitive column visible. This
works like the table-based approach but applied to the verb table
rows.

### 2. Table-based pages

**Files:** `Pronomen.html`, `Artikel.html`, `Adjektivendungen.html`,
`Modalverben.html`, `Relativpronomen.html`

**2a.** Add CSS:

```css
/* ─── Guess Mode ─── */
.guess-cell-hidden {
  cursor: pointer;
  color: transparent !important;
  user-select: none;
}
.guess-cell-hidden * {
  color: transparent !important;
}
.guess-cell-hidden:hover {
  background: rgba(122, 96, 192, 0.15);
}
```

**2b.** Add toggle button in the header. These pages may not have a
`.controls` div — add one if needed, or place the button after the
subtitle.

**2c.** Add JS to toggle cells:

```javascript
let guessMode = false;
function toggleGuess() {
  guessMode = !guessMode;
  document.getElementById('guess-btn').classList.toggle('active', guessMode);
  const cells = document.querySelectorAll('td:not(.row-header)');
  cells.forEach(td => {
    if (guessMode) {
      td.classList.add('guess-cell-hidden');
      td.onclick = function() {
        this.classList.remove('guess-cell-hidden');
        this.onclick = null;
      };
    } else {
      td.classList.remove('guess-cell-hidden');
      td.onclick = null;
    }
  });
}
```

**Important:** the selector `td:not(.row-header)` assumes that row
header cells have a distinguishing class. Check each file — some use
`<th>` for row headers (which are excluded automatically), some use
styled `<td>`. If row headers are `<td>`, add a class like
`.row-header` or `.case-label` to exclude them from hiding.

### 3. Skip (no changes)

- `index.html` — landing page, not quizzable
- `Komposita.html` — compound word explanations, not quizzable
- `Satzstruktur.html` — sentence structure rules, not quizzable
- `Nebensaetze.html` — subordinate clause rules, not quizzable

## Verification

For each modified page:

1. **Normal mode**: page loads normally, no visual changes, all
   existing search/filter/hover behavior intact.
2. **Activate guess mode**: click 🎯 button. Cards go neutral gray,
   only the main word visible. Tables hide cell contents.
3. **Reveal**: click/tap a card or cell. Only that item reveals,
   with its original color restored.
4. **Search/filter in guess mode** (card pages): results render in
   hidden state. Previously revealed cards reset (acceptable).
5. **Deactivate**: click 🎯 again. Everything returns to normal.
6. **Mobile**: test on phone or narrow viewport. Button fits in
   header. Cards/cells are tappable. Revealed state works on touch.

## Anti-patterns to avoid

- Do NOT add guess mode state to `localStorage` — no persistence
  needed. A fresh page load = guess mode off.
- Do NOT use `render()` side effects for table-based pages — tables
  are static HTML, toggle via DOM manipulation only.
- Do NOT hide row/column headers in table-based pages — they're the
  "question" the user needs to see.
- Do NOT break the existing tooltip behavior — in normal mode,
  tooltips should still appear on hover exactly as before.
- Do NOT change the `DATA` arrays or any data structures — guess
  mode is purely a presentation layer.
- Do NOT add a separate "reveal all" button — toggling guess mode
  off IS reveal all.
