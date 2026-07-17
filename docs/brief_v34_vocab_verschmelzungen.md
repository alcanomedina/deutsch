# V34 — Vocabulary (12 Substantive + 4 Verben + 2 Adjektive) + Verschmelzungen Raten

**Depends on:** V33 deployed.
**Source:** Manual vocabulary additions + UX feature request.

---

## 1. Substantive.html — append to DATA (12 nouns)

```javascript
// ─── V34 additions ───
["Adjektiv", "das", "-e", "adjective", "general", "Deutsche Adjektive verändern ihre Endung je nach Kasus."],
["Betonung", "die", "-en", "stress, emphasis, accentuation", "general", "Die Betonung liegt auf der zweiten Silbe."],
["Lunge", "die", "-n", "lung", "body", "Rauchen schadet der Lunge."],
["Polizeirevier", "das", "-e", "police station, precinct", "law", "Nach dem Unfall mussten wir zum Polizeirevier."],
["Rennen", "das", "-", "race", "sport", "Das Rennen beginnt um 14 Uhr."],
["Rundfunk", "der", "(no pl.)", "broadcasting, radio", "society", "Der Schweizer Rundfunk sendet in vier Sprachen."],
["Schal", "der", "-s", "scarf", "general", "Nimm einen Schal mit, es ist kalt draussen."],
["Schnupfen", "der", "-", "cold, runny nose", "health", "Ich habe einen Schnupfen und muss ständig niesen."],
["Silbe", "die", "-n", "syllable", "general", "Das Wort «unternehmen» hat vier Silben."],
["Tennisschläger", "der", "-", "tennis racket", "sport", "Ich habe meinen Tennisschläger im Auto vergessen."],
["Täter", "der", "-", "perpetrator, offender", "law", "Die Polizei sucht noch nach dem Täter."],
["Zeh", "der", "-en", "toe", "body", "Ich habe mir den kleinen Zeh gestossen."],
```

## 2. Verben.html — append to DATA (4 verbs)

```javascript
// ─── V34 additions ───
["haften", "für+Akk/an+Dat", "hat gehaftet", "to be liable (for); to stick, adhere", "w", "Die Firma haftet für den Schaden."],
["leihen", "Dat+Akk", "hat geliehen", "to lend; to borrow", "s", "Kannst du mir deinen Regenschirm leihen?"],
["plädieren", "für+Akk", "hat plädiert", "to plead (for), to advocate", "w", "Der Anwalt plädiert für einen Freispruch."],
["wegreissen", "Akk", "hat weggerissen", "to tear away, to rip off", "s", "Der Wind hat das Dach weggerissen."],
```

Add to IRREGULAR in Verben.html:

```javascript
"leihen":["leiht","lieh"],
"wegreissen":["reisst weg","riss weg"],
```

Add to WEAK in Verben.html:

```javascript
"haften":["haftet","haftete"],
"plädieren":["plädiert","plädierte"],
```

## 3. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V34 additions ───
["geizig", "geiziger", "am geizigsten", "stingy, miserly", "quality", "regular", "Er ist so geizig, er gibt nie Trinkgeld."],
["lebensmüde", "lebensmüder", "am lebensmüdesten", "tired of life, reckless", "quality", "regular", "Bist du lebensmüde? Fahr nicht so schnell!"],
```

---

## 4. Artikel.html — Verschmelzungen Guess Mode

### Ziel

Extend the existing guess mode (🎯 Raten button) so that it also covers the Verschmelzungen section. When guess mode is active, the contraction results (e.g. *am, ins, zum*) should be hidden, and the user guesses the correct Verschmelzung from the visible components (e.g. *an + dem*).

### Behavior

- When `guessMode` is toggled **on**: hide the `.to` element inside each `.contraction-card` (the fused result). The `.from` (components) and `.ex` (examples) remain visible.
- Clicking a `.contraction-card` reveals/hides its `.to` element, same toggle pattern as the existing tile cells.
- When `guessMode` is toggled **off**: all `.to` elements return to their normal visible state.

### Implementation guidance

- Reuse the existing `guess-cell-hidden` / `guess-cell-revealed` CSS classes on the `.to` elements (they should work since they just toggle background/text visibility).
- Extend `toggleGuess()` to also iterate over `.contraction-card .to` elements alongside the existing `.tile` logic.
- Add a click listener to each `.contraction-card` (not just `.to`) so the tap target is large enough.
- The `.arrow` (↓) should also be hidden when the `.to` is hidden, to avoid giving away the visual structure. Apply the same hidden class to `.arrow` elements.

### CSS additions (if needed)

If `guess-cell-hidden` doesn't visually work on `.to` / `.arrow` elements (since they have different base styles than `.tile`), add:

```css
.contraction-card .to.guess-cell-hidden,
.contraction-card .arrow.guess-cell-hidden {
  color: transparent;
}
.contraction-card .to.guess-cell-revealed,
.contraction-card .arrow.guess-cell-revealed {
  color: inherit;
}
```

---

## Notes

- **Täter** — masculine only per the established rule (no feminine form added).
- **leihen** — bidirectional: *jemandem etwas leihen* = to lend, *sich etwas leihen* = to borrow. Both meanings in one entry.
- **haften** — two meanings: legal (*für+Akk*: to be liable for) and physical (*an+Dat*: to stick/adhere to). Both prepositions listed.
- **lebensmüde** — rarely used comparatively, but comparative forms follow regular pattern. Marked as `regular`.
- **Rennen** — added as base word instead of *Pferderennen* (more versatile: Autorennen, Wettrennen, etc.).
- **wegreissen** — Swiss *ss* convention, consistent with existing *abreissen*, *heissen*.
