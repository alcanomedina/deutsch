# V12 — Komparation: Remaining Adjectives

**Supersedes:** Nothing.
**Depends on:** V10 deployed.

## Goal

Add the 6 adjectives from the Komparation PDF that are not yet
in `Adjektive.html`. The PDF contains 68 total; 62 are already
present. This is a data-only addition.

## Source

Komparation.pdf (project document) — cross-checked against
existing DATA array.

---

## File: Adjektive.html

Append to `DATA` in the `// === REGULAR ===` section.
Format: `[adj, Komparativ, Superlativ, meaning, category, type,
example]`

```javascript
// ─── Komparation PDF (remaining) ───
["herrlich", "herrlicher", "am herrlichsten", "wonderful, splendid", "quality", "regular", "Das Wetter ist heute herrlich."],
["herzlich", "herzlicher", "am herzlichsten", "warm, cordial", "quality", "regular", "Er hat uns herzlich empfangen."],
["mild", "milder", "am mildesten", "mild", "quality", "regular", "Das Klima hier ist mild."],
["originell", "origineller", "am originellsten", "original, creative", "quality", "regular", "Das ist eine originelle Idee."],
["sauer", "saurer", "am sauersten", "sour, angry", "quality", "regular", "Die Zitrone ist sauer."],
["sozial", "sozialer", "am sozialsten", "social", "quality", "regular", "Soziale Kontakte sind wichtig."],
```

Note on `sauer`: same -er elision pattern as `teuer` (teurer)
and `sauber` (sauberer) — the `e` before the final `r` drops
when adding `-er`. All three are already classified as
`"regular"` which is correct for the existing type system.

---

## Verification

1. Search "herrlich" → appears with correct forms.
2. Search "sauer" → appears; Komparativ shows "saurer" (not
   "sauerer").
3. Total count increases by 6.
4. Shuffle and guess mode still work.

## Anti-patterns

- Do NOT modify existing entries.
- Swiss spelling throughout.
