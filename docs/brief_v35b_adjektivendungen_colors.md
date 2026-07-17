# V35b — Adjektivendungen: Color Fixes

**Depends on:** V35 deployed.
**Source:** Visual review — two color issues.

---

## Adjektivendungen.html — Fixes

### 1. Fix "bestimmter Artikel" — all -e cells must be lila (purple)

**Bug:** `classForCell()` doesn't know which grid it's rendering. When a `-e` ending coincidentally matches the article ending for that position, it gets a case color instead of purple.

**Fix:** Make `classForCell()` grid-aware (pass the grid key). For the `definite` grid, ALL non-`-en` endings are `c-exc-e` (purple). ALL `-en` endings are `c-exc-en` (grey). Never case-colored.

### 2. Fix "ohne Artikel" — AKK Mask. and DAT Pl. must be case-colored, not grey

**Bug:** The function short-circuits ALL `-en` to grey (`c-exc-en`) before checking whether the ending matches the article. This is wrong for the `none` grid, where `-en` CAN be a meaningful case signal:

- **AKK Mask. -en** mirrors *den* → should be **blue** (`c-akk`), not grey
- **DAT Pl. -en** mirrors *den* (Dat. Pl.) → should be **green** (`c-dat`), not grey
- **GEN Mask. -en** does NOT mirror *-es* → stays **grey** (true exception)
- **GEN Neut. -en** does NOT mirror *-es* → stays **grey** (true exception)

**Fix:** For the `none` grid, remove the `-en` short-circuit. Check article match FIRST for all endings — if the ending matches `ARTICLE_ENDINGS[caseIdx][genderIdx]`, apply `CASE_CLASSES[caseIdx]`. Only fall through to grey if there's no match.

### Combined logic

```
function classForCell(ending, caseIdx, genderIdx, gridKey) {
  // Definite: everything is weak — purple or grey, never case-colored
  if (gridKey === "definite") {
    return ending === "-en" ? "c-exc-en" : "c-exc-e";
  }

  // None: check article match FIRST (even for -en)
  if (gridKey === "none") {
    if (ending === ARTICLE_ENDINGS[caseIdx][genderIdx]) {
      return CASE_CLASSES[caseIdx];
    }
    return "c-exc-en"; // Gen M. and Gen N. fall here
  }

  // Indefinite: -en is always grey, then check article match
  if (ending === "-en") return "c-exc-en";
  if (ending === ARTICLE_ENDINGS[caseIdx][genderIdx]) {
    return CASE_CLASSES[caseIdx];
  }
  return ending === "-e" ? "c-exc-e" : "c-exc-en";
}
```

Result for "ohne Artikel" grid (only 2 grey cells instead of 4):

```
NOM:  rot    rot    rot    rot
AKK:  BLAU   blau   blau   blau    ← M. -en now blue (was grey)
DAT:  grün   grün   grün   GRÜN    ← Pl. -en now green (was grey)
GEN:  grau   gelb   grau   gelb    ← M. and N. stay grey (true exceptions)
```

---

## Notes

- The other V35 changes (callout removal, explanation translation, site-wide Germanization) remain correct and unchanged.
- Legend label "schwach" stays as-is.
- Pass `gridKey` from the `Object.entries(DATA).forEach()` loop — the key is already available (`key` variable: "definite", "indefinite", "none").
