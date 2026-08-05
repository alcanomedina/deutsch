# V40 — Vocabulary (15 Substantive)

**Depends on:** V39 deployed.
**Source:** Manual vocabulary additions (music-themed cluster + mixed).

---

## Substantive.html — append to DATA (15 nouns)

```javascript
// ─── V40 additions ───
["Behandlungsraum", "der", "Behandlungsräume", "treatment room, examination room", "health", "Der Arzt wartet im Behandlungsraum auf Sie."],
["Ernst", "der", "(no pl.)", "seriousness, gravity", "general", "Das war mein voller Ernst."],
["Geige", "die", "-n", "violin", "general", "Sie spielt seit zehn Jahren Geige."],
["Gepäckstück", "das", "-e", "piece of luggage", "travel", "Wie viele Gepäckstücke haben Sie?"],
["Instrument", "das", "-e", "instrument", "general", "Sie spielt drei verschiedene Instrumente."],
["Notenpapier", "das", "-e", "sheet music paper", "general", "Der Komponist schrieb die Melodie auf Notenpapier."],
["Organist", "der", "-en", "organist", "general", "Der Organist spielte während des Gottesdienstes."],
["Passant", "der", "-en", "passerby, pedestrian", "general", "Ein Passant hat den Unfall beobachtet."],
["Philharmoniker", "der", "-", "philharmonic musician", "general", "Die Wiener Philharmoniker sind weltberühmt."],
["Pianist", "der", "-en", "pianist", "general", "Der Pianist gab ein beeindruckendes Konzert."],
["Süsse", "das", "(no pl.)", "sweets, sweet things", "food", "Ich kann dem Süssen nicht widerstehen."],
["Verbot", "das", "-e", "ban, prohibition", "law", "Hier gilt ein striktes Rauchverbot."],
["Verhalten", "das", "(no pl.)", "behavior, conduct", "general", "Sein Verhalten war sehr respektvoll."],
["Verwarnung", "die", "-en", "warning, caution", "law", "Der Spieler hat eine gelbe Verwarnung bekommen."],
["Weile", "die", "(no pl.)", "while, a while", "time", "Es dauert eine Weile, bis man sich daran gewöhnt."],
```

---

## Notes

- **Organist, Passant, Pianist** — N-Deklination (Endungen -ist, -ant). Akk/Dat/Gen Singular: -en. Flagged inline with plural -en.
- **Philharmoniker** — NOT N-Deklination (Endung -er, reguläre Deklination).
- **Süsse** — nominalisiertes Adjektiv, Neutrum (*das Süsse*). Dekliniert wie ein Adjektiv: *das Süsse, ein Süsses, dem Süssen*. Entry uses *das* per Alex's specification.
- **Ernst** — nominalisiertes Adjektiv als eigenständiges Nomen (*der Ernst* ≠ *ernst* Adjektiv, schon in Adjektive.html).
- **Verhalten** — nominalisierter Infinitiv. Added per Alex's explicit request despite *sich verhalten* not being in Verben.html.
- **Musik-Cluster**: Geige, Instrument, Notenpapier, Organist, Philharmoniker, Pianist.
- Masculine-only rule applied: Organist, Passant, Pianist, Philharmoniker.
