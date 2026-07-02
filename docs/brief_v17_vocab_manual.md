# V17 — Vocabulary Additions: Substantive + Verben

**Supersedes:** Nothing.
**Depends on:** V16 deployed.

## Goal

Add 17 nouns to `Substantive.html` and 3 verbs to
`Verben.html`.

## Source

Manual additions from Alex.

---

## File 1: Substantive.html

Append to end of `DATA` array (before closing `];`):

```javascript
// ─── Manual additions (V17) ───
["Leder", "das", "-", "leather", "general", "Die Tasche ist aus echtem Leder."],
["Schlaf", "der", "(no pl.)", "sleep", "health", "Guter Schlaf ist wichtig für die Gesundheit."],
["Ampel", "die", "-n", "traffic light", "travel", "Die Ampel ist rot, wir müssen warten."],
["Aquarium", "das", "Aquarien", "aquarium", "home", "Im Aquarium schwimmen bunte Fische."],
["Briefkasten", "der", "Briefkästen", "mailbox", "home", "Der Briefkasten ist schon wieder voll."],
["Chaos", "das", "(no pl.)", "chaos", "general", "Nach der Party herrschte totales Chaos."],
["Couch", "die", "-es", "couch, sofa", "home", "Am Abend liege ich gern auf der Couch."],
["Flur", "der", "-e", "hallway", "home", "Die Jacken hängen im Flur."],
["Karton", "der", "-s", "cardboard box", "general", "Die Bücher sind noch im Karton."],
["Keks", "der", "-e", "cookie, biscuit", "food", "Möchtest du einen Keks zum Kaffee?"],
["Wagen", "der", "-", "car, wagon", "travel", "Der Wagen steht in der Garage."],
["Schild", "das", "-er", "sign", "general", "Hast du das Schild an der Tür gelesen?"],
["Sprung", "der", "Sprünge", "jump, crack", "general", "Der Sprung ins kalte Wasser war mutig."],
["Schluss", "der", "Schlüsse", "end, conclusion", "general", "Zum Schluss gibt es noch Fragen."],
["Spalt", "der", "-e", "gap, crack", "general", "Durch den Spalt kommt Licht herein."],
["Türspalt", "der", "-e", "door gap", "home", "Er schaute durch den Türspalt."],
["Versteck", "das", "-e", "hiding place", "general", "Die Kinder suchen ein gutes Versteck."],
```

Already present (skip): Aussicht, Blatt, Schatten, Vorhang.

---

## File 2: Verben.html

Append to the `"Akk"` section of the DATA array:

```javascript
// ─── V17 ───
["hören", "Akk", "hat gehört", "to hear", "w", "Ich höre Musik beim Kochen."],
["sehen", "Akk", "hat gesehen", "to see", "s", "Ich habe ihn gestern im Supermarkt gesehen."],
["lassen", "Akk", "hat gelassen", "to let, leave", "s", "Lass mich bitte in Ruhe."],
```

Note: sehen and lassen are already in Konjugation.html
(strong verbs). These entries add them to Verben.html for
the transitive Akk usage reference.

---

## Verification

1. Substantive: search "Briefkasten" → der, Briefkästen.
   Search "Schild" → das, -er. Total count +17.
2. Verben: filter "Akkusativ" → hören, sehen, lassen visible.
3. Existing entries untouched.

## Anti-patterns

- Do NOT add words already present.
- Do NOT modify existing entries.
- Swiss spelling throughout.
