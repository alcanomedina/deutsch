# V38 — Vocabulary (17 Substantive + 4 Adjektive + 4 Verben)

**Depends on:** V37 deployed.
**Source:** Manual vocabulary additions.

---

## 1. Substantive.html — append to DATA (17 nouns)

```javascript
// ─── V38 additions ───
["Ausfall", "der", "Ausfälle", "outage, failure; cancellation", "general", "Wegen eines Ausfalls der Stromversorgung war das Büro dunkel."],
["Büchse", "die", "-n", "can, tin; rifle", "general", "Kannst du die Büchse öffnen?"],
["Cartoon", "der", "-s", "cartoon, comic strip", "general", "Der Cartoon in der Zeitung war sehr lustig."],
["Floss", "das", "Flösse", "raft", "travel", "Wir fuhren mit dem Floss den Fluss hinunter."],
["Heer", "das", "-e", "army", "society", "Das Heer marschierte durch die Stadt."],
["Humor", "der", "(no pl.)", "humor", "general", "Er hat einen trockenen Humor."],
["Illustrierte", "die", "-n", "illustrated magazine", "general", "Meine Grossmutter liest gerne Illustrierte."],
["Kaninchenbau", "der", "-e", "rabbit burrow", "nature", "Der Fuchs hat den Kaninchenbau entdeckt."],
["Kassierer", "der", "-", "cashier", "business", "Der Kassierer hat mir zu viel Wechselgeld gegeben."],
["Lotto", "das", "-s", "lottery", "general", "Er hat im Lotto gewonnen."],
["Pferch", "der", "-e", "pen, enclosure (for animals)", "nature", "Die Schafe wurden in den Pferch getrieben."],
["Prediger", "der", "-", "preacher", "society", "Der Prediger sprach vor einer grossen Menge."],
["Saal", "der", "Säle", "hall, large room", "general", "Der Saal war bis auf den letzten Platz besetzt."],
["Sand", "der", "(no pl.)", "sand", "nature", "Die Kinder spielen im Sand."],
["Schönling", "der", "-e", "pretty boy (pejorative)", "character", "Er ist ein Schönling, aber nicht besonders klug."],
["Späher", "der", "-", "scout, lookout", "society", "Der Späher beobachtete das feindliche Lager."],
["Wucht", "die", "(no pl.)", "force, impact", "general", "Die Wucht des Aufpralls war enorm."],
```

## 2. Adjektive.html — append to DATA (4 adjectives)

```javascript
// ─── V38 additions ───
["eitel", "eitler", "am eitelsten", "vain, conceited", "character", "regular", "Sie ist so eitel, sie schaut ständig in den Spiegel."],
["ewig", "ewiger", "am ewigsten", "eternal, everlasting", "quality", "regular", "Nichts dauert ewig."],
["schlau", "schlauer", "am schlausten", "clever, cunning", "character", "regular", "Der Fuchs ist schlau."],
["stumm", "stummer", "am stummsten", "mute, silent", "quality", "regular", "Er blieb stumm und sagte kein Wort."],
```

## 3. Verben.html — append to DATA (4 verbs)

```javascript
// ─── V38 additions ───
["anbeten", "Akk", "hat angebetet", "to worship, to adore", "w", "Die Menschen beteten ihre Götter an."],
["einhauen", "Akk", "hat eingehauen", "to smash in; to dig in (food, colloquial)", "s", "Hau rein!"],
["strahlen", "Ohne", "hat gestrahlt", "to shine, to beam, to glow", "w", "Die Sonne strahlt, und sie strahlt vor Freude."],
["umwerfen", "Akk", "hat umgeworfen", "to knock over; to bowl over", "s", "Der Hund hat das Glas umgeworfen."],
```

Add to IRREGULAR in Verben.html:

```javascript
"einhauen":["haut ein","hieb ein"],
"umwerfen":["wirft um","warf um"],
```

Add to WEAK in Verben.html:

```javascript
"anbeten":["betet an","betete an"],
"strahlen":["strahlt","strahlte"],
```

---

## Notes

- **Kassierer, Prediger, Späher** — masculine only per established rule.
- **Illustrierte** — nominalized adjective; declines like an adjective (*eine Illustrierte*, *die Illustrierte*, *keine Illustrierten*). Standard DATA format still works since the card just displays the base form.
- **Büchse** — two meanings: can/tin (daily use, especially Swiss German) and rifle (less common).
- **einhauen** — colloquial *Hau rein!* = dig in / bon appétit. Also: *reinhauen* (variant).
- **umwerfen** — trennbar (Betonung auf *um-*). Also figurative: *Das hat mich umgeworfen* = that blew me away.
- **Schönling** — slightly pejorative connotation.
