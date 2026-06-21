# V2 — Guess Mode Fixes

**Supersedes:** Nothing (patches V1 guess mode).  
**Depends on:** V1 (guess mode already implemented).

## Fixes

### 1. Click-to-toggle on revealed cards/cells (all guess mode pages)

Currently, clicking a hidden card reveals it (one-way). The user
wants to click a revealed card to hide it again — toggle behavior.

**Card-based pages** (`Substantive.html`, `Verben.html`,
`Konjugation.html`, `Adjektive.html`):

Change the click handler so that clicking a `.guess-revealed` card
re-adds `.guess-hidden` and re-hides the content. The click listener
on the grid should handle both directions:

```javascript
// Clicking a hidden card → reveal it
// Clicking a revealed card → hide it again
const card = e.target.closest('.guess-hidden, .guess-revealed');
if (!card || !guessMode) return;
if (card.classList.contains('guess-hidden')) {
  card.classList.remove('guess-hidden');
  card.classList.add('guess-revealed');
} else {
  card.classList.remove('guess-revealed');
  card.classList.add('guess-hidden');
}
```

**Table-based pages** (`Pronomen.html`, `Artikel.html`,
`Adjektivendungen.html`, `Modalverben.html`,
`Relativpronomen.html`):

Same toggle logic on cells. Clicking a revealed cell re-hides it.

### 2. Neutralize background colors in Adjektivendungen

In guess mode, the `.tile` elements retain their ending-specific
background colors (`.c-e` = blue, `.c-en` = grey, `.c-er` = pink,
`.c-es` = gold, `.c-em` = green). This gives away the answer since
each ending has a unique color.

Add CSS to neutralize tile backgrounds when hidden:

```css
.guess-cell-hidden.tile {
  background: #343438 !important;
  border-color: #4a4a52 !important;
}
```

This overrides the `.c-e`, `.c-er`, `.c-es`, `.c-em` background
colors while the cell is hidden. When the cell is revealed (class
removed), the original tile color class takes effect again.

### 3. Neutralize background colors in Relativpronomen

Same issue: `.cell.same` (grey `#343438`) and `.cell.diff` (purple
`#2e2040`) backgrounds reveal whether the pronoun differs from the
regular article.

Add CSS:

```css
.guess-cell-hidden.cell {
  background: #343438 !important;
  border-color: #4a4a52 !important;
}
```

Since `.cell.same` already uses `#343438`, the visual change only
affects `.cell.diff` cells — but applying it uniformly is cleaner
and future-proof.

### 4. Check other table-based pages for similar color leaks

Review `Artikel.html`, `Pronomen.html`, and `Modalverben.html` for
any cell background colors that could give away answers in guess
mode. If any cells have distinguishing colors, apply the same
neutralization pattern:

```css
.guess-cell-hidden {
  background: #343438 !important;
  border-color: #4a4a52 !important;
}
```

## Verification

1. **Toggle behavior**: click a hidden card → reveals. Click it
   again → hides. Works on both card-based and table-based pages.
2. **Adjektivendungen**: activate guess mode → all tiles are uniform
   neutral grey. No color difference between -e, -er, -es, -en, -em
   tiles. Click to reveal → original color appears. Click again →
   neutral grey.
3. **Relativpronomen**: activate guess mode → all cells are uniform.
   No visual difference between same/diff cells. Click to reveal →
   original same/diff color appears.
4. **No regressions**: normal mode (guess off) is completely
   unaffected. All colors, hovers, tooltips work as before.

## Anti-patterns to avoid

- Do NOT add the neutral background to `.guess-cell-hidden:hover` —
  the hover already has a purple tint (`rgba(122, 96, 192, 0.15)`)
  which is intentional and doesn't leak answer information.
- Do NOT change the reveal transition — keep it instant (no fade/
  animation). The toggle should feel snappy.
