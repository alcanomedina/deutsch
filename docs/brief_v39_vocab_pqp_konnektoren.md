# V39 — Vocabulary (17) + Plusquamperfekt + Zweigliedrige Konnektoren

**Depends on:** V38 deployed.
**Source:** Manual vocab additions + Bellingua B1 Modul 24 Tag 4/5, Modul 25 PDFs.

---

## 1. Substantive.html — append to DATA (3 nouns)

```javascript
// ─── V39 additions ───
["Burg", "die", "-en", "castle, fortress", "general", "Auf dem Hügel steht eine alte Burg aus dem Mittelalter."],
["Einzelheit", "die", "-en", "detail", "general", "Erzähl mir alle Einzelheiten!"],
["Mitglied", "das", "-er", "member", "society", "Um neue Leute kennenzulernen, könnte man in einem Verein Mitglied werden."],
```

## 2. Verben.html — append to DATA (12 verbs)

```javascript
// ─── V39 additions ───
["auffordern", "Akk+zu+Dat", "hat aufgefordert", "to request, to call upon", "w", "Der Busfahrer hat den jungen Mann aufgefordert, seinen Platz freizugeben."],
["aufheben", "Akk", "hat aufgehoben", "to pick up; to cancel; to keep", "s", "Heb bitte die Socken vom Boden auf."],
["blühen", "Ohne", "hat geblüht", "to bloom, to blossom", "w", "Im Frühling blühen die Kirschbäume."],
["einbrechen", "in+Akk", "ist eingebrochen", "to break in; to collapse", "s", "Der Dieb ist in das Haus eingebrochen."],
["festhalten", "Akk/an+Dat", "hat festgehalten", "to hold on to; to record, note", "s", "Halt dich am Geländer fest!"],
["hupen", "Ohne", "hat gehupt", "to honk", "w", "Autofahrer machen durch Hupen auf sich aufmerksam."],
["loben", "Akk", "hat gelobt", "to praise", "w", "Die Lehrerin lobt den fleissigen Schüler."],
["sich umdrehen", "Ohne", "hat sich umgedreht", "to turn around", "w", "Mira drehte sich um und rannte zurück."],
["verschreiben", "Dat+Akk", "hat verschrieben", "to prescribe", "s", "Der Arzt hat mir ein Medikament verschrieben."],
["verwechseln", "Akk+mit+Dat", "hat verwechselt", "to confuse, to mix up", "w", "Ich verwechsle oft die Telefonnummern."],
["wiegen", "Akk", "hat gewogen", "to weigh", "s", "Das Paket wiegt drei Kilogramm."],
["zerreissen", "Akk", "hat zerrissen", "to tear apart, to rip up", "s", "Er hat den Brief zerrissen."],
```

Add to IRREGULAR in Verben.html:

```javascript
"aufheben":["hebt auf","hob auf"],
"einbrechen":["bricht ein","brach ein"],
"festhalten":["hält fest","hielt fest"],
"verschreiben":["verschreibt","verschrieb"],
"wiegen":["wiegt","wog"],
"zerreissen":["zerreisst","zerriss"],
```

Add to WEAK in Verben.html:

```javascript
"auffordern":["fordert auf","forderte auf"],
"blühen":["blüht","blühte"],
"hupen":["hupt","hupte"],
"loben":["lobt","lobte"],
"sich umdrehen":["dreht sich um","drehte sich um"],
"verwechseln":["verwechselt","verwechselte"],
```

## 3. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V39 additions ───
["befriedigend", "befriedigender", "am befriedigendsten", "satisfactory", "quality", "regular", "Das Resultat war befriedigend, aber nicht hervorragend."],
["grundsätzlich", "grundsätzlicher", "am grundsätzlichsten", "fundamental, in principle", "quality", "regular", "Grundsätzlich bin ich einverstanden."],
```

---

## 4. Konjugation.html — Plusquamperfekt Section

### Goal

Add a new section to Konjugation.html explaining the Plusquamperfekt (past perfect), which is not currently covered.

### Content

#### Title: Plusquamperfekt

#### Formation table

| | **haben** | **sein** |
|---|---|---|
| ich | hatte + Partizip II | war + Partizip II |
| du | hattest + Partizip II | warst + Partizip II |
| er/sie/es | hatte + Partizip II | war + Partizip II |
| wir | hatten + Partizip II | waren + Partizip II |
| ihr | hattet + Partizip II | wart + Partizip II |
| sie/Sie | hatten + Partizip II | waren + Partizip II |

Use the same auxiliary rules as Perfekt: movement/state-change verbs → *sein*, everything else → *haben*.

#### Usage explanation

The Plusquamperfekt describes an action that happened **before** another past action (Präteritum/Perfekt). Show with a visual timeline:

```
──────────────────────────────────────────► Zeit
   ▲ PQP (zuerst)          ▲ Prät./Perfekt (danach)
```

#### Examples (with hover or inline display)

| Präteritum/Perfekt | Plusquamperfekt (earlier action) |
|---|---|
| Ich kam um 07:01 Uhr zum Bahnhof. | Der Zug **war** schon **abgefahren**. |
| Ich fand meine Geldbörse nicht. | Ich **hatte** sie wahrscheinlich im Bus **verloren**. |

#### Key connectors

- **nachdem** → always triggers Tempuswechsel: *Nachdem er die Zähne **geputzt hatte**, **ging** er ins Bett.*
- **als** → PQP can be in either clause: *Als ich den Brief **gelesen hatte**, **habe** ich angefangen zu lachen.*

### Design

- Same styling as existing Konjugation.html sections
- Conjugation table with color coding matching the existing scheme
- Place after the existing Präteritum content as the logical next tense

---

## 5. Nebensaetze.html — Zweigliedrige Konnektoren Section

### Goal

Add a new section to the existing Konnektoren area in Nebensaetze.html covering paired/two-part connectors.

### Content

#### Title: Zweigliedrige Konnektoren

#### Connector table

| Konnektor | Bedeutung | Beispiel | Satzstellung |
|---|---|---|---|
| **entweder … oder** | either … or | *Entweder fahren wir ans Meer, oder wir bleiben zu Hause.* | entweder: Position 0 oder Vorfeld; oder: Position 0 |
| **nicht nur … sondern auch** | not only … but also | *Nicht nur Schweizer, sondern auch ausländische Touristen fahren gern ins Tessin.* | nicht nur: Vorfeld/Mittelfeld; sondern auch: Position 0 |
| **sowohl … als auch** | both … and | *Im Wallis sind sowohl Deutsch als auch Französisch offizielle Sprachen.* | connects elements (not full clauses) |
| **weder … noch** | neither … nor | *Ich spreche weder Französisch noch verstehe ich Schweizerdeutsch.* | weder: Vorfeld/Mittelfeld; noch: Position 0 (verb inversion) |
| **zwar … aber** | indeed … but / although … but | *Da mein Mann und ich zwar gerne wandern gehen, aber auch gern surfen, wäre Mallorca vielleicht besser.* | zwar: Mittelfeld; aber: Position 0 |

#### Key rules

- These connect **two main clauses** (Hauptsätze) or **two elements** within one clause
- Word order: each part follows its own position rules (Position 0, Vorfeld, or Mittelfeld)
- **sowohl…als auch** typically connects parallel elements (nouns, adjectives, phrases), not full clauses
- **weder…noch** is negative — no additional *nicht* needed

### Design

- Add as a new subsection within the existing `#konnektoren` section
- Use the same table/card styling as the existing Konnektoren table
- Hover examples for each connector pair
- Color-code the paired parts to show they belong together (e.g. both parts in the same accent color)

---

## Notes

- **einbrechen** — auxiliary *ist* (movement/state-change). Two meanings: burglarize (in+Akk) and collapse/cave in (Eis, Boden).
- **aufheben** — three meanings: pick up (from ground), cancel/abolish (ein Gesetz aufheben), keep/save (etwas für später aufheben).
- **verschreiben** — untrennbar (ver-). Also reflexive: *sich verschreiben* = to make a writing error.
- **wiegen** — not to be confused with *wiegen* (to rock/cradle), which is weak: *wiegte*.
- **grundsätzlich** — functions as both adjective and adverb. As adverb: "in principle, fundamentally."
- **befriedigend** — corresponds to Swiss grade ~4 (genügend/passing). Participial adjective.
- **Mitglied** — not a compound to skip: *Glied* alone means "limb" — different semantic field.
- **Plusquamperfekt** — placed in Konjugation.html after existing Präteritum content.
- **Zweigliedrige Konnektoren** — placed in Nebensaetze.html within existing Konnektoren section.
