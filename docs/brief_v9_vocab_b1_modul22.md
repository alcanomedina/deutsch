# V9 — Vocabulary Additions: Bellingua B1 Modul 22 Tag 1

**Supersedes:** Nothing.  
**Depends on:** V6 deployed (Ohne category in Verben).

## Source

NK123\_B1\_Modul\_22\_Tag\_1.pdf. Sportarten page (p2),
handwritten class notes (p3, p11, p14, p16, p17).
All words cross-checked — zero duplicates.

---

## Part A — Substantive.html (+36 nouns)

New category needed: `"sport"` — add it to the category filter
buttons if a category filter exists, or just use it in the DATA
(it will appear in search results regardless).

```javascript
// ─── B1 Modul 22: Sportarten ───
["Wasserball", "der", "Wasserb\u00e4lle", "water polo", "sport", "Hast du schon einmal Wasserball gespielt?"],
["Football", "der", "-e", "American football", "sport", "In den USA ist Football sehr populär."],
["Schläger", "der", "-", "racket, club, bat", "sport", "Für Tennis brauchst du einen Schläger."],
["Marathon", "der", "-s", "marathon", "sport", "Sie läuft dieses Jahr ihren ersten Marathon."],
["Lauf", "der", "Läufe", "run, race", "sport", "Der 100-Meter-Lauf beginnt um 10 Uhr."],
["Wettrennen", "das", "-", "race", "sport", "Die Kinder machen ein Wettrennen im Park."],
["Wettkampf", "der", "Wettkämpfe", "competition", "sport", "Der Wettkampf dauert drei Tage."],
["Hürde", "die", "-n", "hurdle", "sport", "Er ist über die Hürde gesprungen."],
["Kajak", "das", "-s", "kayak", "sport", "Wir fahren mit dem Kajak auf dem See."],
["Segel", "das", "-", "sail", "sport", "Der Wind füllt das Segel."],
["Ruder", "das", "-", "oar", "sport", "Man braucht zwei Ruder zum Rudern."],
["Schlittschuh", "der", "-e", "ice skate", "sport", "Im Winter laufe ich gern Schlittschuh."],
["Rollschuh", "der", "-e", "roller skate", "sport", "Als Kind bin ich viel Rollschuh gefahren."],
["Ski", "der", "-er", "ski", "sport", "Ich habe neue Ski gekauft."],
["Fitnessstudio", "das", "-s", "gym", "sport", "Ich gehe dreimal pro Woche ins Fitnessstudio."],
["Krafttraining", "das", "-s", "strength training", "sport", "Krafttraining ist gut für die Muskeln."],
["Hantel", "die", "-n", "dumbbell", "sport", "Er trainiert jeden Tag mit Hanteln."],
["Paddel", "das", "-", "paddle", "sport", "Für Kajak braucht man ein Paddel."],

// ─── B1 Modul 22: Sportarten (Aktivitäten) ───
["Springreiten", "das", "(no pl.)", "show jumping", "sport", "Springreiten ist ein eleganter Sport."],
["Rudern", "das", "(no pl.)", "rowing", "sport", "Rudern trainiert den ganzen Körper."],
["Windsurfen", "das", "(no pl.)", "windsurfing", "sport", "Im Sommer gehe ich gern Windsurfen."],
["Eiskunstlaufen", "das", "(no pl.)", "figure skating", "sport", "Eiskunstlaufen ist Kunst und Sport."],
["Langlaufen", "das", "(no pl.)", "cross-country skiing", "sport", "In der Schweiz ist Langlaufen sehr beliebt."],
["Golfen", "das", "(no pl.)", "golfing", "sport", "Am Wochenende geht er Golfen."],
["Fechten", "das", "(no pl.)", "fencing", "sport", "Beim Fechten braucht man viel Konzentration."],
["Rollschuhfahren", "das", "(no pl.)", "roller skating", "sport", "Rollschuhfahren macht Spass."],
["Gewichtheben", "das", "(no pl.)", "weightlifting", "sport", "Gewichtheben ist anstrengend."],

// ─── B1 Modul 22: andere Nomen ───
["Karate", "das", "(no pl.)", "karate", "sport", "Im Karate braucht man einen Gurt."],
["Fitness", "die", "(no pl.)", "fitness", "sport", "Fitness ist wichtig für die Gesundheit."],
["Baumwolle", "die", "(no pl.)", "cotton", "general", "Dieses T-Shirt ist aus Baumwolle."],
["Gurt", "der", "-e", "strap, belt", "general", "Im Karate hat jeder Gurt eine andere Farbe."],
["Lektion", "die", "-en", "lesson", "general", "Diese Lektion war schwierig."],
["Muskelkater", "der", "(no pl.)", "muscle soreness, DOMS", "health", "Nach dem Training habe ich immer Muskelkater."],
["Geist", "der", "-er", "spirit, ghost", "general", "Sport ist gut für Körper und Geist."],
["Beleidigung", "die", "-en", "insult", "general", "Das war eine schlimme Beleidigung."],
["Schlauchboot", "das", "-e", "inflatable boat", "general", "Er ist mit einem Schlauchboot um die Welt gerudert."],
```

---

## Part B — Adjektive.html (+2 adjectives)

```javascript
["streng", "strenger", "am strengsten", "strict", "quality", "regular", "Der Trainer ist sehr streng."],
["sportlich", "sportlicher", "am sportlichsten", "athletic, sporty", "quality", "regular", "Sie ist sehr sportlich."],
```

---

## Part C — Verben.html (+4 verbs)

```javascript
// ─── B1 Modul 22 ───
["empfehlen", "Dat", "hat empfohlen", "to recommend", "s", "Ich empfehle dir dieses Restaurant."],
["vorbeugen", "Dat", "hat vorgebeugt", "to prevent, preempt", "w", "Man sollte Krankheiten vorbeugen."],
["beleidigen", "Akk", "hat beleidigt", "to insult", "w", "Wer hat den Chef beleidigt?"],
["rudern", "Ohne", "hat gerudert", "to row", "w", "Er ruderte allein um die Welt."],
```

Note: `empfehlen` is already in Konjugation.html (e→a→o group).
No new Konjugation entries needed from this module.

---

## Verification

1. **Substantive**: search "Wasserball" → appears. Filter or search
   "sport" → all sport nouns visible. Count +36.
2. **Adjektive**: search "streng" → appears with correct forms.
3. **Verben**: filter "Dativ" → empfehlen, vorbeugen appear.
   Filter "Ohne" → rudern appears.
4. **Shuffle + Guess**: still work on all modified pages.

## Anti-patterns to avoid

- Do NOT modify existing entries.
- Swiss spelling throughout (ss not ß).
- Do NOT add Golf separately — Golfen (das) covers it as the
  activity noun. Golf as a standalone noun adds no learning value
  beyond Golfen.
