# V36 — Präpositionen: Raten-Modus

**Depends on:** V35b deployed.
**Source:** Feature request — practice guessing which case each preposition takes.

---

## Praepositionen.html — Raten Mode

### Goal

Add a 🎯 Raten toggle button. When active, all preposition cards are pulled out of their case-grouped sections, shuffled randomly, and displayed in a single flat grid. The user must guess the case for each preposition by clicking the card to reveal it.

### Button

Add a `🎯 Raten` button in the subtitle area (below the page hint text, same style as the existing Raten buttons on other pages like Adjektivendungen.html or Artikel.html).

### Behavior when Raten is ON

1. **Hide all section structure:**
   - All `.section-header` elements (badges + titles)
   - All `.section-hint` elements (mnemonics, explanations)
   - The two static info boxes at the bottom ("Wechselpräpositionen Rule" and "Contractions") if present

2. **Merge and shuffle all cards:**
   - Collect all `.prep-card` elements from all four grids (AKK, DAT, WECHSEL, GEN)
   - Shuffle them into random order (Fisher-Yates)
   - Display them in a single `.prep-grid` container

3. **Hide the case signal on each card:**
   - Hide the `.prep-case-tag` (e.g. "Akkusativ", "Dativ")
   - Neutralize the card's case-based background color — use a neutral/grey background (e.g. `#2e2e34`) and border (e.g. `#555`) so color doesn't give away the case
   - The `.prep-word` (preposition) and `.prep-meaning` (translation) remain visible
   - Tooltips (examples) should be disabled in guess mode (they contain case clues like "an die Wand" / "an der Wand")

4. **Reveal on click:**
   - Clicking a card reveals its case: restore the original card color and show the `.prep-case-tag`
   - A second click hides it again (toggle behavior)
   - For Wechselpräpositionen, the tag shows "Akk ↔ Dat"

### Behavior when Raten is OFF

- Restore the original grouped layout: cards return to their respective section grids in original order
- All section headers, hints, and info boxes reappear
- All card colors and tags are visible
- Tooltips are re-enabled

### Re-shuffle

Each toggle ON triggers a fresh shuffle so the order is different every time.

### CSS additions

```css
/* Neutral card for guess mode */
.prep-card.guess-neutral {
  background: #2e2e34;
  border-color: #555;
}

.prep-card.guess-neutral:hover {
  box-shadow: 0 4px 12px #55555566;
}

/* Hide tag */
.prep-case-tag.guess-hidden {
  display: none;
}

/* Disable tooltip in guess mode */
.prep-card.guess-neutral .tooltip {
  display: none !important;
}
```

---

## Implementation guidance

- Store the original grid HTML before any shuffle so it can be restored on toggle off
- The Raten button should use the same CSS class as other pages' Raten buttons (`guess-btn`)
- Use `common.js` shuffle utility if one exists, otherwise inline Fisher-Yates
- Create a temporary `<div class="prep-grid" id="guess-grid">` for the shuffled view, hide the four original grids

---

## Notes

- This is similar in spirit to the Adjektivendungen and Artikel guess modes, but simpler — no table cells, just card reveal.
- The `.prep-meaning` (translation) stays visible because knowing "through, by" doesn't tell you the case — that's the point of the exercise.
- Wechselpräpositionen are the trickiest since they don't have a single case — revealing "Akk ↔ Dat" confirms the user needs to think about direction vs. location.
