# V31 — Vocabulary (14 Substantive + 4 Verben + 2 Adjektive) + Zustandspassiv

**Depends on:** V30 deployed (data-only vocab additions are independent of the Passiv.html change).
**Source:** NK123 B1 Modul 23 Tag 2 + Tag 3 (Existenzgründer, Zustandspassiv, Nominalisierung vocabulary) + manual addition (nähen).

---

## 1. Substantive.html — append to DATA (14 nouns)

```javascript
// ─── V31 additions ───
["Filiale", "die", "-n", "branch (store)", "business", "Sie haben gerade die erste Filiale in der Nachbarstadt eröffnet."],
["Lizenz", "die", "-en", "license", "business", "Für diese Software braucht man eine Lizenz."],
["Ausrüstung", "die", "-en", "equipment, gear", "general", "Für die Wanderung brauchen wir die richtige Ausrüstung."],
["Kapital", "das", "-e", "capital (money)", "business", "Ohne Kapital kann man kein Unternehmen gründen."],
["Personal", "das", "(no pl.)", "staff, personnel", "business", "Das Personal wird über die Änderungen informiert."],
["Reaktion", "die", "-en", "reaction", "general", "Seine Reaktion auf den Vorschlag war positiv."],
["Ankunft", "die", "Ankünfte", "arrival", "travel", "Bis zur Ankunft des Zuges dauert es noch zehn Minuten."],
["Eröffnung", "die", "-en", "opening, inauguration", "business", "Zur Eröffnung des neuen Cafés kamen viele Leute."],
["Produktion", "die", "-en", "production", "business", "Die Produktion ist um 23% zurückgegangen."],
["Erhöhung", "die", "-en", "increase, raise", "business", "Wegen des tiefen Eurokurses erwartet man eine Erhöhung der Zinsen."],
["Nachfrage", "die", "-n", "demand, inquiry", "business", "Wegen der hohen Nachfrage macht Stefan P. einen zweiten Imbiss-Stand auf."],
["Vorschrift", "die", "-en", "regulation, rule", "business", "Man muss überall im Gebäude Hausschuhe tragen. Das ist Vorschrift."],
["Umgang", "der", "(no pl.)", "handling, dealings, interaction", "general", "Im Verkauf muss man gut im Umgang mit Kunden sein."],
["Vermittlung", "die", "-en", "mediation, placement, brokerage", "business", "Die Firma bietet Vermittlung von Sonderkrediten an."],
```

## 2. Verben.html — append to DATA (4 verbs)

```javascript
// ─── V31 additions ───
["nähen", "Akk", "hat genäht", "to sew", "w", "Sie näht sich ein Kleid."],
["anwenden", "Akk", "hat angewandt", "to apply (a method)", "s", "Man kann diese Technik in vielen Bereichen anwenden."],
["streiken", "Ohne", "hat gestreikt", "to strike (labor)", "w", "Die Arbeiter der Gepäckabteilung haben am Flughafen gestreikt."],
["frankieren", "Akk", "hat frankiert", "to put postage on, to stamp", "w", "Die Briefe sind geschrieben, aber leider noch nicht frankiert."],
```

Add to IRREGULAR in Verben.html:

```javascript
"anwenden":["wendet an","wandte an"],
```

Add to WEAK in Verben.html:

```javascript
"nähen":["näht","nähte"],
"streiken":["streikt","streikte"],
"frankieren":["frankiert","frankierte"],
```

## 3. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V31 additions ───
["zahm", "tame", "Ein zahmes Huhn kann man überallhin mitnehmen.", "zahmer", "am zahmsten"],
["legal", "legal, lawful", "Ist das überhaupt legal?", "legaler", "am legalsten"],
```

---

## 4. Passiv.html — add Zustandspassiv section

### Placement
Insert as a **new section after "Passiv ohne Subjekt"** (the current last section). This is the logical place: the page covers Vorgangspassiv in full, then the Zustandspassiv comes as the complementary concept.

### New section structure

**Section title:** `Zustandspassiv`

**Subtitle / key concept:**
> Das Resultat ist wichtiger als die Aktion.

**Contrast box** — side-by-side comparison:
| | Vorgangspassiv (Prozess) | Zustandspassiv (Resultat) |
|---|---|---|
| Hilfsverb | **werden** | **sein** |
| Fokus | Die Aktion / der Vorgang | Das Ergebnis / der Zustand |
| Beispiel | Das Auto **wird** gewaschen. | Das Auto **ist** gewaschen. |

**Tempus table** — only two rows (Zustandspassiv exists only in Präsens and Präteritum):

| Tempus | Formel | Beispiel |
|--------|--------|----------|
| Präsens | **ist** + Partizip II | Die Tür **ist** geschlossen. |
| Präteritum | **war** + Partizip II | Die Tür **war** geschlossen. |

Note under table: *Das Zustandspassiv existiert nur im Präsens und im Präteritum.*

**Examples section** — 4–5 practical examples showing the Zustandspassiv in context:

- Alle Fenster sind **geschlossen**. (Das habe ich gemacht.)
- Die Beträge sind **überwiesen**. (Ich war vorhin auf der Bank.)
- Die Alarmanlage ist **eingeschaltet**. (Keine Sorge.)
- Die Zimmerpflanzen sind **gegossen**.
- Die Briefe sind **geschrieben**, aber leider noch nicht **frankiert**.

### Styling notes

- Use the same card / rule-card pattern as the other sections on the page.
- Highlight **sein/ist/war** with a distinct color (suggestion: use a warm color like amber/gold to contrast with the teal/green used for "werden" in the Vorgangspassiv sections — this visually reinforces the distinction).
- The contrast box should make the Vorgangspassiv ↔ Zustandspassiv difference immediately visible.

---

## Notes

- **anwenden** has a mixed conjugation: both *angewandt* and *angewendet* are acceptable as Partizip II, but *angewandt* is more common. Präteritum: *wandte an* (also *wendete an*). Listed as strong ("s") because of the vowel change pattern.
- **Transparent compounds skipped:** Geschäftsidee (Geschäft+Idee), Arbeitsbedingung (Arbeit+Bedingung), Seeüberquerung (niche).
- **Base word substitutions:** Startkapital → Kapital, Pflegepersonal → Personal.
- **frankieren** comes from the Zustandspassiv exercise "Endlich Feierabend!" — appropriate context.
