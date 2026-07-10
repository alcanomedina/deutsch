# V25 — Maintenance: Corrections + Small Additions

**Depends on:** V20 deployed.

## Goal

Three data corrections and six new vocabulary entries
collected during Session 3.

---

## 1. Corrections (Substantive.html)

### Fix "Ausführung" meaning and example
Find:
```
["Ausführung", "die", "-en", "execution, version", "business", "Es gibt das Modell in verschiedenen Ausführungen."]
```
Replace with:
```
["Ausführung", "die", "-en", "execution, carrying out", "business", "Die Ausführung des Auftrags hat zwei Wochen gedauert."]
```

### Fix "Nagel" category from "home" to "body"
Find:
```
["Nagel", "der", "Nägel", "nail", "home", "Schlag den Nagel in die Wand."]
```
Replace with:
```
["Nagel", "der", "Nägel", "nail (finger/toe)", "body", "Sie lässt sich die Nägel lackieren."]
```

---

## 2. New nouns (Substantive.html)

Append to DATA array:

```javascript
// ─── small additions (V25) ───
["Fett", "das", "-e", "fat, grease", "food", "Zu viel Fett ist ungesund."],
["Schaufenster", "das", "-", "shop window", "business", "Die neue Kollektion ist im Schaufenster ausgestellt."],
["Taxi", "das", "-s", "taxi", "travel", "Wir nehmen ein Taxi zum Flughafen."],
["Ware", "die", "-n", "goods, merchandise", "business", "Die Waren werden per Lieferwagen transportiert."],
```

## 3. New verbs (Verben.html)

Append to DATA array:

```javascript
// ─── small additions (V25) ───
["abreissen", "Akk", "hat abgerissen", "to tear down, demolish", "s", "Das alte Gebäude wird abgerissen."],
["giessen", "Akk", "hat gegossen", "to pour, to water (plants)", "s", "Vergiss nicht, die Blumen zu giessen."],
["schweben", "Ohne", "hat geschwebt", "to float, hover", "w", "Der Ballon schwebt über der Stadt."],
```

---

## 4. Layout change (Satzstruktur.html)

Move the **Syntaxtabelle B1** (the detailed reference table
with Pos. 0 / Vorfeld / Verb 1 / Erg. 1 / Angaben / Erg. 2 /
Verb 2 / Nachfeld) so it appears near the top of the page,
directly below the simplified **SatzModelle** section.

Don't label it as a separate "Syntaxtabelle B1" heading —
integrate it as part of the SatzModelle section, as the
detailed/expanded view of the same concept. The simplified
models introduce the structure, the full table shows all
the fields and what goes in each.
