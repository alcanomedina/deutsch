# V8 — Satzstruktur: Align with Bellingua Syntaxtabelle B1

**Supersedes:** Nothing (extends existing content).  
**Depends on:** Nothing.

## Goal

Align the Satzstruktur page with Bellingua's B1 Syntaxtabelle.
Keep the existing learning sections (V2 rule, Inversion,
Satzklammer, etc.) but enrich them with Bellingua's terminology
and add three missing concepts: Nachfeld, Ergänzungen 1 vs 2,
and Final-Angaben. Replace the Kurzreferenz at the bottom with
a full Syntaxtabelle visual that mirrors Bellingua's structure.

Use Bellingua's German terminology throughout — this is how Alex
learns it in class and the cheatsheet should reinforce that.

## Source

Syntaxtabelle B1, page 9 of NK123\_B1\_Modul\_22\_Tag\_1.pdf.

---

## Change 1 — Expand the Satzmodell diagram

The current model shows 4 fields:
`Vorfeld → Verb → Mittelfeld → Satzende`

Replace with Bellingua's 7-field model. Keep it as the first
section, same visual style (`.satz` with `.pos` columns):

```
Position 0 → Vorfeld → Verb 1 → Mittelfeld → Verb 2 → Nachfeld
```

Where Mittelfeld expands to:
```
Ergänzungen 1 → Angaben (te ka mo lo) → Ergänzungen 2
```

The diagram should show all 7 positions with labels, using
existing color coding. New positions:

| Position | Bellingua term | Color treatment |
|----------|---------------|-----------------|
| Position 0 | Konjunktionen | `.conj` (teal, existing) |
| Vorfeld | Vorfeld | `.subj` (blue, existing) |
| Verb 1 | Verb 1 | `.verb` (red, existing) |
| Erg. 1 | Ergänzungen 1 | `.dat` / `.akk` (green/gold) |
| Angaben | Angaben (te ka mo lo) | existing te/ka/mo/lo colors |
| Erg. 2 | Ergänzungen 2 | `.akk` (gold, existing) |
| Verb 2 | Verb 2 | `.bracket` (red dashed, existing) |
| Nachfeld | Nachfeld | new: neutral grey `#444458` border, `#a0a0b0` text |

Below the diagram, add the legend entry for Nachfeld.

Update the "📌 Das Wichtigste" note to mention all positions.

### Position 0 note

Add a small note under the diagram:

> **Position 0:** Konjunktionen *aber, denn, und, sondern, oder*
> stehen VOR dem Vorfeld — sie zählen nicht als Position 1.

---

## Change 2 — Add Nachfeld section

Add a new section **after** Nebensatz (id="nebensatz"), before
the reference section. Use id="nachfeld".

**Title:** Nachfeld  
**Subtitle:** Was kommt nach dem letzten Verb?

**Content:**

Three things can go in the Nachfeld:

1. **Vergleiche mit *wie* und *als***
   - Diagram: `Vorfeld → Verb 1 → ... → Verb 2 → [Nachfeld: als sein Bruder]`
   - Example: *Er spielt besser **als sein Bruder**.*
   - Example: *Sie ist so gross **wie ihre Mutter**.*

2. **Nebensätze und Infinitivsätze**
   - Example: *Ich freue mich, **dass du kommst**.*
   - Example: *Er hat vergessen, **das Fenster zuzumachen**.*

3. **Präpositionalergänzungen und Angaben mit Präposition**
   (when they're long/heavy)
   - Example: *Ich habe mich beschwert **über die langen
     Wartezeiten am Telefon**.*

Use the existing sentence diagram style (`.satz` + `.pos`) with
a new color for the Nachfeld position:

```css
.pos-val.nachfeld {
  border-color: #6a6a80;
  color: #a0a0b0;
  background: #2e2e38;
  border-style: dotted;
}
```

---

## Change 3 — Enrich TeKaMoLo with detailed Fragewörter

Currently each TeKaMoLo column shows one question word. The
Syntaxtabelle lists many more. Expand the `.tk-q` field of each
column to show all question words from the Syntaxtabelle, and
add a fifth column for Final:

| Column | Question words (from Syntaxtabelle) |
|--------|-------------------------------------|
| Te | Wann? Wie oft? Wie lange? Bis wann? Seit wann? |
| Ka | Warum? Grund? |
| Mo | Wie? Womit? Mit wem? Wodurch? Woraus? |
| Lo | Wo? Wohin? Woher? |
| **Fi** | **Wozu?** |

Add a fifth `.tekamolo-col` for **Final**:

```html
<div class="tekamolo-col tk-fi">
  <div class="tk-letter">Fi</div>
  <div class="tk-name">Final</div>
  <div class="tk-q">Wozu?</div>
  <div class="tk-examples">um ... zu<br>damit<br>zum Lernen</div>
</div>
```

New CSS for the Final column:

```css
.tk-fi { background: #1a3038; border-color: #3a8070; color: #68d8b8; }
```

Update the section subtitle from "TeKaMoLo" to **"TeKaMoLoFi"**
or keep "TeKaMoLo" in the title but mention
"+ Final (Wozu?)" in the subtitle. Bellingua includes "final"
in their Angaben, positioned after Lo.

---

## Change 4 — Add Ergänzungen 1 vs 2 to Objekte section

Add a new subsection at the end of the existing Objekte section
(id="objekte"), before the existing Zusammenfassung note.

**Sub-label:** Ergänzungen 1 und 2

**Content:**

Bellingua's Syntaxtabelle splits objects into two zones:

**Ergänzungen 1** (BEFORE Angaben):
- Dativergänzung
- Personalpronomen oder Reflexivpronomen im Akkusativ
- Nomen mit Definitartikel oder Possessivartikel im Akkusativ

**Ergänzungen 2** (AFTER Angaben):
- Akkusativergänzung (indefinit: *einen Ball*, *etwas*)
- Nominativergänzung
- Qualitativergänzung
- Situativergänzung (Wo?)
- Direktivergänzung (Wohin? Woher?)
- Präpositionalergänzung
- Verbativergänzung

Show two example diagrams contrasting definite vs indefinite:

**Definite Akk → before Angaben (Erg. 1):**
```
Ich | gebe | ihm | den Ball | heute | im Park |
     Verb1   Dat   Akk(def)    Te       Lo
                  [Erg.1]   [Angaben]
```

**Indefinite Akk → after Angaben (Erg. 2):**
```
Ich | spiele | heute | im Park | einen neuen Sport |
      Verb1     Te       Lo        Akk(indef)
             [Angaben]            [Erg.2]
```

Add a warning note (`.warn` class):

> ⚠️ Die einfache Regel „Dativ vor Akkusativ vor TeKaMoLo"
> funktioniert meistens. Die Unterscheidung Erg. 1 / Erg. 2
> ist die präzisere B1-Version.

---

## Change 5 — Replace Kurzreferenz with Syntaxtabelle

Replace the existing `#ref` section (the simple summary grid)
with a full **Syntaxtabelle** that mirrors Bellingua's table
layout but uses our color system.

**Title:** Syntaxtabelle B1  
**Subtitle:** Alle Felder auf einen Blick

Build it as a horizontal scrollable table (like our sentence
diagrams but as a full reference). Each column is a sentence
field, color-coded:

```
Pos. 0 | Vorfeld | Verb 1 | Erg. 1 | Angaben | Erg. 2 | Verb 2 | Nachfeld
```

Under each column header, list what goes there (matching
Bellingua's content exactly):

| Column | Content |
|--------|---------|
| Pos. 0 | aber, denn, und, sondern, oder |
| Vorfeld | das Subjekt; eine Ergänzung (stark betont); eine Angabe; ein Nebensatz; oder leer¹⁾ |
| Verb 1 | das konjugierte Verb |
| Erg. 1 | Dativergänzung; Personalpronomen/Reflexivpron. im Akk; Nomen mit Definit-/Possessivartikel im Akk |
| Angaben | te: Wann? Wie oft? ... · ka: Warum? · mo: Wie? Womit? ... · lo: Wo? Wohin? Woher? · fi: Wozu? |
| Erg. 2 | Nominativerg.; Akkusativerg. (indef.); Qualitativerg.; Situativerg. (Wo?); Direktiverg. (Wohin? Woher?); Präpositionalerg.; Verbativerg. |
| Verb 2 | Partizip II; Infinitiv; Präfix |
| Nachfeld | Vergleiche (wie/als); Nebensätze; Infinitivsätze (zu); lange Präp.ergänzungen |

Include Bellingua's footnotes below the table:

1. Bei Satzfragen und Imperativsätzen ist das Vorfeld leer.
2. Wenn das Subjekt ein Nomen ist, steht das Pronomen davor.
   (Pronomen vor Nomen / Namen)

Style the table using our color variables — each column header
gets the matching `.pos-val` color class.

The nav link for this section changes from "Referenz" to
"Syntaxtabelle".

---

## Change 6 — Update nav links

Add a nav link for the new Nachfeld section. Current nav:

```
Modell · V2 · Inversion · Klammer · Objekte · TeKaMoLo ·
Negation · Nebensatz · Referenz
```

New nav:

```
Modell · V2 · Inversion · Klammer · Objekte · TeKaMoLo ·
Negation · Nebensatz · Nachfeld · Syntaxtabelle
```

---

## Verification

1. **Satzmodell**: diagram shows 7 fields including Pos. 0 and
   Nachfeld. Position 0 note mentions aber/denn/und/sondern/oder.
2. **TeKaMoLo**: 5 columns (Te Ka Mo Lo Fi). Each column shows
   expanded question words matching Bellingua.
3. **Objekte**: new Erg. 1 vs 2 subsection with contrasting
   diagrams (definite before Angaben, indefinite after).
4. **Nachfeld**: new section with 3 use cases and examples.
5. **Syntaxtabelle**: replaces old Kurzreferenz. Full horizontal
   table matching Bellingua's structure with our colors.
6. **Nav**: updated with Nachfeld + Syntaxtabelle links.
7. **No regressions**: all existing sections still intact and
   visually unchanged.

## Anti-patterns to avoid

- Do NOT remove existing sections — only extend them.
- Do NOT change color assignments for existing elements.
- Do NOT use Bellingua's school name on the public page.
- The Syntaxtabelle must be horizontally scrollable on mobile.
- Keep the German terminology from Bellingua's table — do not
  translate to English.
