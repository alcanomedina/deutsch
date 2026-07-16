# V33 — Vocabulary (9 Substantive + 6 Verben) + Mask. Akk. Callout-Boxen

**Depends on:** V32 deployed.
**Source:** Manual vocabulary additions.

---

## 1. Substantive.html — append to DATA (9 nouns)

```javascript
// ─── V33 additions ───
["Aussehen", "das", "(no pl.)", "appearance, looks", "general", "Ihr Aussehen hat sich in den letzten Jahren verändert."],
["Brücke", "die", "-n", "bridge", "general", "Die alte Brücke über den Fluss wird gerade repariert."],
["Element", "das", "-e", "element", "general", "Wasser ist ein wichtiges Element des Lebens."],
["Pudding", "der", "-s", "pudding", "food", "Zum Nachtisch gibt es Pudding."],
["Schlaraffenland", "das", "(no pl.)", "land of milk and honey", "general", "Im Schlaraffenland fliegen einem die gebratenen Tauben in den Mund."],
["Turm", "der", "Türme", "tower", "general", "Vom Turm aus kann man die ganze Stadt sehen."],
["Leser", "der", "-", "reader", "general", "Der Leser schrieb einen Brief an die Zeitung."],
["Wutanfall", "der", "Wutanfälle", "tantrum, fit of rage", "general", "Das Kind hatte im Supermarkt einen Wutanfall."],
["Zopf", "der", "Zöpfe", "braid; braided bread", "general", "Sie trägt heute einen Zopf. / Zum Sonntagsbrunch gibt es frischen Butterzopf."],
```

## 2. Verben.html — append to DATA (6 verbs)

```javascript
// ─── V33 additions ───
["abschneiden", "Akk", "hat abgeschnitten", "to cut off", "s", "Schneid bitte ein Stück Brot ab."],
["befestigen", "Akk", "hat befestigt", "to fasten, attach", "w", "Befestige das Schild an der Wand."],
["hassen", "Akk", "hat gehasst", "to hate", "w", "Ich hasse es, früh aufzustehen."],
["kämmen", "Akk", "hat gekämmt", "to comb", "w", "Hast du dir die Haare gekämmt?"],
["klettern", "Ohne", "ist geklettert", "to climb", "w", "Die Kinder klettern gern auf Bäume."],
["streiten", "mit+Dat/über+Akk", "hat gestritten", "to argue, quarrel", "s", "Die Geschwister streiten sich ständig über Kleinigkeiten."],
```

Add to IRREGULAR in Verben.html:

```javascript
"abschneiden":["schneidet ab","schnitt ab"],
"streiten":["streitet","stritt"],
```

Add to WEAK in Verben.html:

```javascript
"befestigen":["befestigt","befestigte"],
"hassen":["hasst","hasste"],
"kämmen":["kämmt","kämmte"],
"klettern":["klettert","kletterte"],
```

---

## 3. Adjektivendungen.html — Maskulin Akkusativ Callout-Boxen

### Ziel

Visuelle Hervorhebung des **Maskulin Akkusativ** in den Tabellen für **unbestimmter Artikel** und **ohne Artikel**. Dies adressiert ein bekanntes Fehlermuster: Defaulting zu -en (Akk) in Nominativ-Kontexten, weil der Nom/Akk-Unterschied nur bei Maskulin existiert.

### Was hervorheben

In diesen beiden Bereichen soll der **Maskulin Akkusativ** eine auffällige Callout-Box/Badge/Highlight bekommen, die den Kontrast Nom ↔ Akk sichtbar macht:

#### Unbestimmter Artikel (gemischte Deklination):

| | Maskulin |
|---|---------|
| **Nom** | ein schwarz**er** Hut |
| **Akk** | einen schwarz**en** Hut ← ⚠️ |

Callout-Box Inhalt:
> **⚠️ Maskulin Akk ≠ Nom!**
> Nom: ein schwarz**er** Hut (Endung = -er, spiegelt *der*)
> Akk: einen schwarz**en** Hut (Endung = -en)
> Bei Fem. und Neut. sind Nom und Akk identisch!

#### Ohne Artikel (starke Deklination):

| | Maskulin |
|---|---------|
| **Nom** | schwarz**er** Kaffee |
| **Akk** | schwarz**en** Kaffee ← ⚠️ |

Callout-Box Inhalt:
> **⚠️ Maskulin Akk: einziges Kasussignal!**
> Nom: schwarz**er** Kaffee (-er, spiegelt *der*)
> Akk: schwarz**en** Kaffee (-en, spiegelt *den*)
> Ohne Artikel trägt die Adjektivendung die gesamte Kasinformation!

### Styling

- Use a distinct warning/attention style — e.g. amber/orange border or background, with ⚠️ icon.
- The boxes should sit directly below or beside the Maskulin column in the respective grid sections.
- Keep them compact — max 3–4 lines each.
- Don't add a box to the **definiter Artikel** section (there, *den* already signals Akk clearly).

---

## Notes

- **klettern** takes *sein* as auxiliary (movement verb): *ist geklettert*.
- **streiten** is typically reflexive: *sich streiten*. Listed as non-reflexive base form since reflexive is optional (man kann auch *für etwas streiten* ohne *sich*).
- **Zopf** has two example sentences separated by " / " to show both meanings (braid + Swiss braided bread).
- **Leser** — masculine only per the established rule (no feminine form added).
