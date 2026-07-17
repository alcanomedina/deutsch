# V35 — Eindeutschung aller UI-Texte + Adjektivendungen Farbvereinfachung

**Depends on:** V34b deployed.
**Source:** UX review — all English-language UI text should be German; Adjektivendungen visual simplification per annotated screenshot.

---

## 1. Adjektivendungen.html — Visual Changes

### 1a. Legend labels

| Current | New |
|---|---|
| `weak` | `schwach` |
| `default` | `Standard` |

### 1b. Color simplification for "ohne Artikel"

**Current:** Strong endings use 4 case-based colors (red=Nom, blue=Akk, green=Dat, gold=Gen).

**New:** Simplified to 2 colors:
- **Blue** (`c-akk` styling) for all strong endings in NOM, AKK, and GEN rows
- **Green** (`c-dat` styling) for all strong endings in DAT row
- Grey (`c-exc-en`) for `-en` cells remains unchanged
- Purple (`c-exc-e`) for weak `-e` remains unchanged

**Implementation:** Modify `classForCell()` (or create a grid-aware variant) so that when rendering the `none` (ohne Artikel) grid, non-`-en` endings that match the article get `c-akk` (blue) instead of their case-specific color — except DAT row, which stays `c-dat` (green).

The `definite` and `indefinite` grids remain unchanged (they already use mostly purple/grey).

### 1c. Remove both Maskulin Akk callout boxes

Delete the two `if (key === "indefinite")` and `if (key === "none")` blocks (lines ~455–472) that create the `.akk-callout` elements.

Also remove the `.akk-callout` CSS rules (lines ~185–209) since they're no longer used.

### 1d. English explanation → German

Replace the English explanation paragraph (lines ~267–291) with the German equivalent:

**Current (English):**
> Colored tiles show where the adjective ending mirrors the definite article… The less article you have, the more colored cells appear — because the adjective must take over the article's job. … ohne Artikel = the adjective mirrors der/die/das endings in almost every cell. Only Gen M and Gen N stay -en because the noun's -(e)s already signals Genitiv. … Purple -e = weak. … Grey -en = the universal default.

**New (German):**
> Farbige Kacheln zeigen, wo die Adjektivendung den bestimmten Artikel spiegelt
> (<span ...>Nominativ</span>, <span ...>Akkusativ</span>, <span ...>Dativ</span>, <span ...>Genitiv</span>).
> Je weniger Artikel vorhanden ist, desto mehr farbige Kacheln erscheinen — weil das Adjektiv die Aufgabe des Artikels übernehmen muss.<br><br>
>
> <strong>ohne Artikel</strong> = das Adjektiv spiegelt die Endungen von <em>der/die/das</em> in fast jeder Zelle. Nur Gen&nbsp;M und Gen&nbsp;N bleiben
> <span ...>-en</span>, weil das <em>-(e)s</em> des Nomens den Genitiv bereits signalisiert.<br><br>
>
> <strong><span ...>Lila -e</span></strong> = schwach. Der Artikel signalisiert bereits Genus und Kasus, also entspannt sich das Adjektiv zu einem weichen <span ...>-e</span>.<br>
> <strong><span ...>Grau -en</span></strong> = der universelle Standard. Kein Kasussignal nötig — einfach <span ...>-en</span>.

Preserve all existing `<span>` elements with their classes (`c-text-nom`, `c-text-exc-e`, etc.) — only change the surrounding text from English to German.

---

## 2. Site-wide UI Text Germanization

### 2a. Adjektive.html

| Line | Current | New |
|---|---|---|
| 252 | `hover for example · search German or English` | `für Beispiel hovern · Deutsch oder Englisch suchen` |

### 2b. Artikel.html

| Line | Current | New |
|---|---|---|
| 290 | `hover for examples` | `für Beispiele hovern` |

### 2c. Praepositionen.html

| Line | Current | New |
|---|---|---|
| 122 | `hover for example sentences · highlighted words show the case in action` | `für Beispielsätze hovern · hervorgehobene Wörter zeigen den Kasus` |
| 131 | `These always take Akkusativ — no exceptions. Mnemonic: …` | `Immer Akkusativ — ohne Ausnahme. Eselsbrücke: …` |
| 141 | `These always take Dativ. Mnemonic: …` | `Immer Dativ. Eselsbrücke: …` |
| 151 | `Wohin? (motion toward) → Akkusativ · Wo? (location, no motion) → Dativ. These 9 are the ones you really need to internalize.` | `Wohin? (Bewegung/Richtung) → Akkusativ · Wo? (Ort/Position) → Dativ. Diese 9 muss man verinnerlichen.` |

### 2d. Pronomen.html

| Line | Current | New |
|---|---|---|
| 321 | `hover for examples` | `für Beispiele hovern` |

### 2e. Relativpronomen.html

| Line | Current | New |
|---|---|---|
| 230 | `hover any cell or card for example sentences` | `Zelle oder Karte hovern für Beispielsätze` |
| 310 | `Look at what the pronoun does inside the relative clause: Is it the subject (Nom)? Direct object (Akk)? Indirect object (Dat)? Or showing possession (Gen)?` | `Was macht das Pronomen innerhalb des Relativsatzes? Ist es das Subjekt (Nom)? Direktes Objekt (Akk)? Indirektes Objekt (Dat)? Oder zeigt es Besitz (Gen)?` |
| 318 | `Preposition → determines the case` | `Präposition → bestimmt den Kasus` |
| 319 | `If the verb needs a preposition, it goes before the relative pronoun. The preposition determines the case, just like it always does.` | `Wenn das Verb eine Präposition braucht, steht sie vor dem Relativpronomen. Die Präposition bestimmt den Kasus — wie immer.` |
| 328 | `In the relative clause, the conjugated verb always moves to the last position. This is the standard rule for all German subclauses.` | `Im Relativsatz steht das konjugierte Verb immer am Ende. Das ist die Standardregel für alle deutschen Nebensätze.` |
| 339 | `Verbs that need a preposition carry it into the relative clause. The preposition determines the case. Hover for examples.` | `Verben mit Präposition nehmen sie in den Relativsatz mit. Die Präposition bestimmt den Kasus. Für Beispiele hovern.` |
| 397–401 | `Step 1: Find the noun… Step 2: Look at the verb… Step 3: Cross-reference…` | `Schritt 1: Finde das Bezugsnomen → bestimme sein Genus (m/f/n/pl). Schritt 2: Schau dir das Verb im Relativsatz an → braucht es eine Präposition?   • JA → schreibe die Präposition zuerst, dann bestimme den Kasus   • NEIN → bestimme die Rolle des Pronomens: Subjekt (Nom), direktes Objekt (Akk), indirektes Objekt (Dat), Besitz (Gen). Schritt 3: Kreuze Genus + Kasus in der Tabelle oben ab → fertig!` |

### 2f. Substantive.html

| Line | Current | New |
|---|---|---|
| 148 | `hover for example phrase · search German or English · filter by gender or category` | `für Beispielsatz hovern · Deutsch oder Englisch suchen · nach Genus oder Kategorie filtern` |
| 153 | `>All</button>` | `>Alle</button>` |
| ~1190 | `data-cat="all" onclick="setCat(this)">all</button>` | `data-cat="all" onclick="setCat(this)">Alle</button>` |

---

## Notes

- English **translations** in vocabulary DATA arrays (e.g. `"to lend; to borrow"`) are NOT changed — only UI chrome (labels, hints, explanations).
- The `data-` attribute values (e.g. `data-gender="all"`, `data-cat="all"`) remain `"all"` in the code logic — only the visible button text changes.
- The Adjektivendungen color change only affects the `none` grid; `definite` and `indefinite` grids keep their current coloring.
- Preserve all `<span>`, `<em>`, `<strong>` tags and their CSS classes when translating explanation sections.
- "Hovern" is accepted as a Germanized verb form (widely used in Swiss/German tech contexts).
