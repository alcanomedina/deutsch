# V15 — Substantive: Manual Vocabulary Additions

**Supersedes:** Nothing.
**Depends on:** V14 deployed.

## Goal

Add 11 nouns to `Substantive.html` DATA array. Luft is already
present — skip it.

## Source

Manual additions from Alex (chat request).

---

## File: Substantive.html

Append to the end of the `DATA` array (before the closing `];`):

```javascript
// ─── Manual additions (V15) ───
["Rhabarber", "der", "-", "rhubarb", "food", "Rhabarberkuchen schmeckt am besten im Frühling."],
["Pfirsich", "der", "-e", "peach", "food", "Der Pfirsich ist schön reif."],
["Mango", "die", "-s", "mango", "food", "Die Mango kommt aus Indien."],
["Pfeffer", "der", "-", "pepper (spice)", "food", "Gib bitte noch etwas Pfeffer dazu."],
["Himbeere", "die", "-n", "raspberry", "food", "Im Sommer pflücken wir Himbeeren im Garten."],
["Basilikum", "das", "(no pl.)", "basil", "food", "Frisches Basilikum passt gut zu Tomaten."],
["Rosmarin", "der", "-e", "rosemary", "food", "Das Fleisch wird mit Rosmarin gewürzt."],
["Kraut", "das", "Kräuter", "herb", "food", "Frische Kräuter machen jedes Gericht besser."],
["Wohnmobil", "das", "-e", "camper van, RV", "travel", "Mit dem Wohnmobil fahren wir durch die Schweiz."],
["Whisky", "der", "-s", "whisky", "food", "Ein guter Whisky braucht keine Cola."],
["Luxus", "der", "(no pl.)", "luxury", "general", "Ein eigenes Büro ist heutzutage ein Luxus."],
```

---

## Verification

1. Search "Rhabarber" → appears with der, -.
2. Search "Kraut" → appears with das, Kräuter.
3. Search "Himbeere" → appears with die, -n.
4. Filter by "food" → all food items visible.
5. Filter by "travel" → Wohnmobil visible.
6. Total noun count increases by 11.

## Anti-patterns

- Do NOT add "Luft" — already present.
- Do NOT modify existing entries.
