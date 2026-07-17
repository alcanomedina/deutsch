# V34b — Verschmelzungen Raten: Beispiele auch verstecken

**Depends on:** V34 deployed.
**Source:** UX correction — examples contain the answer and must be hidden.

---

## Artikel.html — Verschmelzungen Guess Mode fix

### Problem

When guess mode is active, the `.ex` elements (examples like *am Montag · am See*) remain visible. They contain the contraction result and give away the answer.

### Fix

When `guessMode` is toggled **on**, also hide the `.ex` elements inside each `.contraction-card`, alongside the already-hidden `.to` and `.arrow` elements. Only the `.from` (components, e.g. *an + dem*) should remain visible.

Clicking a `.contraction-card` should reveal/hide `.to`, `.arrow`, and `.ex` together as a group.

When `guessMode` is toggled **off**, all elements return to their normal visible state.

### CSS additions (if needed)

If the existing `guess-cell-hidden` class doesn't work on `.ex` elements:

```css
.contraction-card .ex.guess-cell-hidden {
  color: transparent;
}
.contraction-card .ex.guess-cell-revealed {
  color: inherit;
}
```
