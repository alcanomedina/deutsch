# V35b — Adjektivendungen: Kasusfarben wiederherstellen + bestimmter Artikel Fix

**Depends on:** V35 deployed.
**Source:** Visual review — two color issues identified.

---

## Adjektivendungen.html — Fixes

### 1. Revert "ohne Artikel" to original 4-case coloring

V35 changed all strong endings in the `none` grid to blue (`c-akk`). This was wrong — the original case-based coloring should be restored:

- **NOM → rot** (`c-nom`, red)
- **AKK → blau** (`c-akk`, blue) — already correct
- **DAT → grün** (`c-dat`, green) — already correct
- **GEN → gelb** (`c-gen`, gold)

Revert the `classForCell()` logic for the `none` grid to use `CASE_CLASSES[caseIdx]` for all matching endings. This is the original behavior before V35.

### 2. Fix "bestimmter Artikel" — all -e cells must be lila (purple)

**Bug:** `classForCell()` doesn't know which grid it's rendering. When a `-e` ending coincidentally matches the article ending for that position, it gets a case color instead of purple. Examples:

- NOM Fem: `-e` matches `ARTICLE_ENDINGS[0][1]` → gets `c-nom` (red) ✗ — should be `c-exc-e` (purple)
- AKK Fem: `-e` matches `ARTICLE_ENDINGS[1][1]` → gets `c-akk` (blue) ✗ — should be `c-exc-e` (purple)

**Fix:** Make `classForCell()` grid-aware (pass the grid key). For the `definite` grid, ALL non-`-en` endings should be `c-exc-e` (purple/lila) — never case-colored. The definite article always carries the case signal, so all adjective endings are weak.

Logic:
```
if grid === "definite":
    ending === "-en" → c-exc-en (grey)
    ending === "-e"  → c-exc-e  (purple)

if grid === "indefinite" or "none":
    ending === "-en" → c-exc-en (grey)
    ending matches ARTICLE_ENDINGS[case][gender] → CASE_CLASSES[case]
    ending === "-e"  → c-exc-e  (purple)
    else → c-exc-en (grey)
```

### 3. Legend label stays "schwach"

No change needed — "schwach" is correct. (V35 already changed it from "weak" to "schwach".)

---

## Notes

- The other V35 changes (callout removal, explanation translation, site-wide Germanization) remain correct and unchanged.
- The `indefinite` grid is NOT affected — its case-colored cells (NOM M/N, AKK N) are correct because the indefinite article doesn't signal case in those positions.
