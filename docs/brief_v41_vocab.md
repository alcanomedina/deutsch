# V41 — Vocabulary (5 Substantive + 12 Verben + 2 Adjektive)

**Depends on:** V40 deployed.
**Source:** Manual vocabulary notes (Wortschazt.txt + Wortschazt II.txt).

---

## 1. Substantive.html — append to DATA (5 nouns)

```javascript
// ─── V41 additions ───
["Flagge", "die", "-n", "flag", "general", "Die Schweizer Flagge ist rot mit einem weissen Kreuz."],
["Fruchtbarkeit", "die", "(no pl.)", "fertility", "nature", "Die Fruchtbarkeit des Bodens hängt vom Klima ab."],
["Ritter", "der", "-", "knight", "general", "Im Mittelalter kämpften die Ritter mit Schwertern."],
["Schuhabdruck", "der", "Schuhabdrücke", "footprint, shoe print", "general", "Die Polizei fand einen Schuhabdruck am Tatort."],
["Wahrsager", "der", "-", "fortune teller", "general", "Der Wahrsager hat mir die Zukunft vorausgesagt."],
```

## 2. Verben.html — append to DATA (12 verbs)

```javascript
// ─── V41 additions ───
["anfordern", "Akk", "hat angefordert", "to request, to order", "w", "Wir haben neue Materialien angefordert."],
["anschnallen", "Akk", "hat angeschnallt", "to buckle up, to fasten", "w", "Bitte schnallen Sie sich an!"],
["auseinandernehmen", "Akk", "hat auseinandergenommen", "to take apart, to disassemble", "s", "Er hat den Motor auseinandergenommen."],
["betragen", "Akk", "hat betragen", "to amount to", "s", "Die Kosten betragen 500 Franken."],
["erfordern", "Akk", "hat erfordert", "to require", "w", "Diese Aufgabe erfordert viel Geduld."],
["erscheinen", "Ohne", "ist erschienen", "to appear; to be published", "s", "Plötzlich erschien ein Mann an der Tür."],
["sich handeln um", "Akk", "hat sich gehandelt", "to be about, to concern", "w", "Es handelt sich um ein Missverständnis."],
["sich verschlechtern", "Ohne", "hat sich verschlechtert", "to deteriorate, to worsen", "w", "Das Wetter hat sich verschlechtert."],
["sich weigern", "Ohne", "hat sich geweigert", "to refuse", "w", "Er weigert sich, das zu unterschreiben."],
["veröffentlichen", "Akk", "hat veröffentlicht", "to publish", "w", "Die Zeitung hat den Artikel veröffentlicht."],
["versäumen", "Akk", "hat versäumt", "to miss, to fail to do", "w", "Versäume nicht den letzten Zug!"],
["zerfallen", "Ohne", "ist zerfallen", "to decay, to disintegrate", "s", "Die alte Burg ist langsam zerfallen."],
```

Add to IRREGULAR in Verben.html:

```javascript
"auseinandernehmen":["nimmt auseinander","nahm auseinander"],
"betragen":["beträgt","betrug"],
"erscheinen":["erscheint","erschien"],
"zerfallen":["zerfällt","zerfiel"],
```

Add to WEAK in Verben.html:

```javascript
"anfordern":["fordert an","forderte an"],
"anschnallen":["schnallt an","schnallte an"],
"erfordern":["erfordert","erforderte"],
"sich handeln um":["handelt sich","handelte sich"],
"sich verschlechtern":["verschlechtert sich","verschlechterte sich"],
"sich weigern":["weigert sich","weigerte sich"],
"versäumen":["versäumt","versäumte"],
"veröffentlichen":["veröffentlicht","veröffentlichte"],
```

## 3. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V41 additions ───
["unfruchtbar", "unfruchtbarer", "am unfruchtbarsten", "infertile, barren", "quality", "regular", "Der Boden in der Wüste ist unfruchtbar."],
["vergeblich", "vergeblicher", "am vergeblichsten", "futile, in vain", "quality", "regular", "Alle Versuche waren vergeblich."],
```

---

## Notes

- **sich handeln um** — impersonal: always *es handelt sich um + Akk*. "Worum handelt es sich?" = "What is it about?"
- **betragen** — untrennbar, like *rechnen* but more formal. *Die Flasche kostet 2 Fr.* = casual, *Der Preis beträgt 2 Fr.* = formal.
- **erscheinen** — auxiliary *ist* (Zustandsänderung). Two meanings: to appear (physically) and to be published (ein Buch erscheint).
- **zerfallen** — untrennbar (*zer-* ist immer untrennbar). Auxiliary *ist*.
- **auseinandernehmen** — trennbar. Betonung auf *aus-*: *nimmt auseinander*.
- **Schuhabdruck** — compound: *Schuh* (already in) + *Abdruck* (not in). Added as compound since *Abdruck* alone is less useful than the specific compound.
- **Wahrsager, Ritter** — masculine only per rule.
- **Segelboot** übersprungen — *Segel* und *Boot* beide schon drin.
