# V13 — Adjektivendungen: Case-Based Color Redesign

**Supersedes:** Original color system in Adjektivendungen.html.
**Depends on:** V10 deployed (current codebase).

## Goal

Redesign the color system of the three declension grids to
reflect **whether the adjective ending mirrors the definite
article ending**. Case-colored cells show where the adjective
does the article's job. The visual progression left→right
(more color = more work for the adjective) makes the system
learnable by pattern, not memorization.

---

## Mental model

The adjective ending matches the definite article ending for
each case+gender slot:

```
Article endings (der/die/das reference matrix):
         M      F      N      Pl
NOM     -er    -e     -es    -e
AKK     -en    -e     -es    -e
DAT     -em    -er    -em    -en
GEN     -es    -er    -es    -er
```

For each cell in each grid: if the adjective ending matches the
article ending for that position → **case color**. If it
doesn't → **exception color** (-e or -en).

Note: `das → -es` and `die → -e` are slight stretches (not
literal article endings) but the model works consistently with
these two accepted conventions.

### Mapping results

**bestimmter Artikel** — 4 of 16 match:

```
         M        F        N        Pl
NOM     exc-e    NOM      exc-e    exc-en
AKK     AKK      AKK      exc-e    exc-en
DAT     exc-en   exc-en   exc-en   DAT
GEN     exc-en   exc-en   exc-en   exc-en
```

**unbestimmter Artikel** — 7 of 16 match:

```
         M        F        N        Pl
NOM     NOM      NOM      NOM      exc-en
AKK     AKK      AKK      AKK      exc-en
DAT     exc-en   exc-en   exc-en   DAT
GEN     exc-en   exc-en   exc-en   exc-en
```

**ohne Artikel** — 14 of 16 match:

```
         M        F        N        Pl
NOM     NOM      NOM      NOM      NOM
AKK     AKK      AKK      AKK      AKK
DAT     DAT      DAT      DAT      DAT
GEN     exc-en   GEN      exc-en   GEN
```

Gen M and Gen N are the only exceptions: the noun's -(e)s
already signals Genitiv, so the adjective relaxes to -en.

---

## File: Adjektivendungen.html

### Change 1 — Replace CSS tile color classes

Remove the old five classes (`.c-e`, `.c-en`, `.c-er`, `.c-es`,
`.c-em`). Replace with six new classes:

```css
/* ─── Case colors (ending mirrors article) ─── */
.tile.c-nom  { background: #5a1818; border-color: #a83030; }
.tile.c-nom .ending { color: #f0a0a0; }
.tile.c-nom:hover { box-shadow: 0 4px 16px #a8303066; }

.tile.c-akk  { background: #1e3a5f; border-color: #3a6ea8; }
.tile.c-akk .ending { color: #8ec4ff; }
.tile.c-akk:hover { box-shadow: 0 4px 16px #3a6ea866; }

.tile.c-dat  { background: #1a4a2a; border-color: #40a060; }
.tile.c-dat .ending { color: #80e8a0; }
.tile.c-dat:hover { box-shadow: 0 4px 16px #40a06066; }

.tile.c-gen  { background: #4a3a10; border-color: #9a7a20; }
.tile.c-gen .ending { color: #f0d060; }
.tile.c-gen:hover { box-shadow: 0 4px 16px #9a7a2066; }

/* ─── Exception colors (ending does NOT mirror article) ─── */
.tile.c-exc-e  { background: #36284a; border-color: #6a4a90; }
.tile.c-exc-e .ending { color: #c0a0e0; }
.tile.c-exc-e:hover { box-shadow: 0 4px 16px #6a4a9066; }

.tile.c-exc-en { background: #3a3a42; border-color: #58585e; }
.tile.c-exc-en .ending { color: #c0c0c8; }
.tile.c-exc-en:hover { box-shadow: 0 4px 16px #58585e66; }
```

Also update text color utility classes:

```css
.c-text-nom { color: #f0a0a0; }
.c-text-akk { color: #8ec4ff; }
.c-text-dat { color: #80e8a0; }
.c-text-gen { color: #f0d060; }
.c-text-exc-e { color: #c0a0e0; }
.c-text-exc-en { color: #c0c0c8; }
```

---

### Change 2 — Replace the `classForEnding` function

The current function maps by ending text alone:

```javascript
function classForEnding(e) {
  return "c-" + e.replace("-","");
}
```

Replace with a function that maps by **position**:

```javascript
const ARTICLE_ENDINGS = [
  ["-er", "-e", "-es", "-e"],   // NOM
  ["-en", "-e", "-es", "-e"],   // AKK
  ["-em", "-er", "-em", "-en"], // DAT
  ["-es", "-er", "-es", "-er"]  // GEN
];

const CASE_CLASSES = ["c-nom", "c-akk", "c-dat", "c-gen"];

function classForCell(ending, caseIdx, genderIdx) {
  if (ending === ARTICLE_ENDINGS[caseIdx][genderIdx]) {
    return CASE_CLASSES[caseIdx];
  }
  return ending === "-e" ? "c-exc-e" : "c-exc-en";
}
```

---

### Change 3 — Update the grid rendering loop

The current loop (line ~280):

```javascript
table.data[ri].forEach((ending, ci) => {
  const cls = classForEnding(ending);
  const ex = table.examples[ri][ci];
  html += `<div class="tile ${cls}">...`;
});
```

Change `classForEnding(ending)` to
`classForCell(ending, ri, ci)`:

```javascript
table.data[ri].forEach((ending, ci) => {
  const cls = classForCell(ending, ri, ci);
  const ex = table.examples[ri][ci];
  html += `<div class="tile ${cls}"><span class="ending">${ending}</span><div class="tooltip">${ex}</div></div>`;
});
```

---

### Change 4 — Update the legend

Replace the current 5-item legend with 6 items using the new
classes and labels:

```html
<div class="legend">
  <div class="legend-item">
    <div class="legend-swatch tile c-nom" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#f0a0a0;font-family:'JetBrains Mono',monospace;">N</span>
    </div>
    <span class="legend-label">Nominativ</span>
  </div>
  <div class="legend-item">
    <div class="legend-swatch tile c-akk" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#8ec4ff;font-family:'JetBrains Mono',monospace;">A</span>
    </div>
    <span class="legend-label">Akkusativ</span>
  </div>
  <div class="legend-item">
    <div class="legend-swatch tile c-dat" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#80e8a0;font-family:'JetBrains Mono',monospace;">D</span>
    </div>
    <span class="legend-label">Dativ</span>
  </div>
  <div class="legend-item">
    <div class="legend-swatch tile c-gen" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#f0d060;font-family:'JetBrains Mono',monospace;">G</span>
    </div>
    <span class="legend-label">Genitiv</span>
  </div>
  <div class="legend-item">
    <div class="legend-swatch tile c-exc-e" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#c0a0e0;font-family:'JetBrains Mono',monospace;">-e</span>
    </div>
    <span class="legend-label">weak</span>
  </div>
  <div class="legend-item">
    <div class="legend-swatch tile c-exc-en" style="height:20px;width:20px;">
      <span style="font-size:10px;font-weight:700;color:#c0c0c8;font-family:'JetBrains Mono',monospace;">-en</span>
    </div>
    <span class="legend-label">default</span>
  </div>
</div>
```

---

### Change 5 — Update the "How to read this" notes

Replace the entire content of `.notes` div:

```html
<div class="notes">
  <div class="notes-title">How to read this</div>

  <strong>Case colors</strong> = the adjective ending mirrors
  the definite article ending
  (<span class="mono c-text-nom">Nominativ</span>,
  <span class="mono c-text-akk">Akkusativ</span>,
  <span class="mono c-text-dat">Dativ</span>,
  <span class="mono c-text-gen">Genitiv</span>).
  The less article you have, the more colored cells appear —
  because the adjective must take over the article's
  job.<br><br>

  <strong>ohne Artikel</strong> = the adjective mirrors
  <em>der/die/das</em> endings in almost every cell. Only
  Gen&nbsp;M and Gen&nbsp;N stay
  <span class="mono c-text-exc-en">-en</span> because the
  noun's <em>-(e)s</em> already signals Genitiv.<br><br>

  <strong><span class="mono c-text-exc-e">Purple -e</span></strong>
  = weak. The article already signals gender and case, so the
  adjective relaxes to a soft
  <span class="mono c-text-exc-e">-e</span>.<br>
  <strong><span class="mono c-text-exc-en">Grey -en</span></strong>
  = the universal default. No case signal needed — just
  <span class="mono c-text-exc-en">-en</span>.
</div>
```

---

## Verification

1. **bestimmter grid**: 4 case-colored cells (NOM F red,
   AKK M blue, AKK F blue, DAT Pl green). 3 purple -e cells
   (NOM M, NOM N, AKK N). Rest grey -en.
2. **unbestimmter grid**: 7 case-colored cells (NOM M/F/N red,
   AKK M/F/N blue, DAT Pl green). Rest grey -en.
3. **ohne Artikel grid**: 14 case-colored cells. Only GEN M
   and GEN N are grey -en.
4. **Visual progression**: left grid mostly grey/purple →
   middle grid more color in top rows → right grid almost
   entirely colored. More color = more work for the adjective.
5. **Legend**: 6 items (4 case colors + 2 exception colors)
   with clear labels.
6. **Hover tooltips**: still work, unaffected by color change.
7. **Guess mode**: still works — hidden cells override with
   the existing `.guess-cell-hidden` class.

## Anti-patterns

- Do NOT change the grid data arrays or example sentences.
- Do NOT change the tile size, spacing, or hover behavior.
- Do NOT change the guess mode logic.
- Keep all existing CSS that isn't color-related.
