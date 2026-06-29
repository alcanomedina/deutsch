# V16 — Vocabulary Additions: Substantive + Adjektive + Verben

**Supersedes:** Nothing.
**Depends on:** V15 deployed.

## Goal

Add 11 nouns to `Substantive.html`, 1 adjective to
`Adjektive.html`, and 1 verb to `Verben.html`.

## Source

Manual additions from Alex.

---

## File 1: Substantive.html

Append to end of `DATA` array (before closing `];`):

```javascript
// ─── Manual additions (V16) ───
["Duft", "der", "Düfte", "fragrance, scent", "general", "Der Duft von frischem Brot ist wunderbar."],
["Kamin", "der", "-e", "fireplace", "home", "Im Winter sitzen wir gern am Kamin."],
["Bad", "das", "Bäder", "bath, bathroom", "home", "Das Bad muss renoviert werden."],
["Balkon", "der", "-e", "balcony", "home", "Im Sommer frühstücken wir auf dem Balkon."],
["Partner", "der", "-", "partner", "general", "Mein Partner kommt aus Spanien."],
["Niveau", "das", "-s", "level, standard", "general", "Das Niveau des Kurses ist hoch."],
["Dschungel", "der", "-", "jungle", "nature", "Im Dschungel leben viele Tierarten."],
["Saft", "der", "Säfte", "juice", "food", "Möchten Sie einen Orangensaft?"],
["Typ", "der", "-en", "type, guy", "general", "Was für ein Typ ist er?"],
["Husten", "der", "(no pl.)", "cough", "health", "Ich habe seit einer Woche Husten."],
["Joghurt", "das", "-s", "yogurt", "food", "Zum Frühstück esse ich Joghurt mit Früchten."],
```

---

## File 2: Adjektive.html

Append to `DATA` in the `// === REGULAR ===` section:

```javascript
// ─── V16 ───
["knackig", "knackiger", "am knackigsten", "crunchy, crisp", "quality", "regular", "Das Gemüse ist schön knackig."],
```

---

## File 3: Verben.html

Append to the `"Akk"` section of the DATA array:

```javascript
// ─── V16 ───
["erziehen", "Akk", "hat erzogen", "to raise, educate", "s", "Die Eltern erziehen ihre Kinder zweisprachig."],
```

---

## Verification

1. Substantive: search "Duft" → der, Düfte. Search "Joghurt"
   → das, -s. Total count +11.
2. Adjektive: search "knackig" → regular, knackiger,
   am knackigsten.
3. Verben: filter "Akkusativ" → erziehen visible with
   "hat erzogen".
4. Existing entries untouched.

## Anti-patterns

- Do NOT add words already present.
- Do NOT modify existing entries.
- Swiss spelling throughout.
