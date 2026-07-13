# V29 — Vocabulary (4 Substantive + 10 Verben + 1 Abbreviation) + Accent-Insensitive Search

**Depends on:** V28 deployed (or at minimum V26 — data-only additions).

---

## 1. Verben.html — append to DATA (10 verbs)

```javascript
// ─── V29 additions ───
["schimpfen", "Ohne", "hat geschimpft", "to scold, to complain", "w", "Die Mutter schimpft mit dem Kind, weil es nicht aufräumt."],
["pinkeln", "Ohne", "hat gepinkelt", "to pee", "w", "Das Kind muss dringend pinkeln."],
["erbrechen", "Akk", "hat sich erbrochen", "to vomit (sich erbrechen)", "s", "Nach dem Essen hat er sich erbrochen."],
["schreiben", "Akk", "hat geschrieben", "to write", "s", "Sie schreibt ihrer Freundin einen Brief."],
["beschreiben", "Akk", "hat beschrieben", "to describe", "s", "Kannst du mir den Weg beschreiben?"],
["vorschreiben", "Dat+Akk", "hat vorgeschrieben", "to prescribe, to dictate", "s", "Das Gesetz schreibt eine Helmpflicht vor."],
["wegräumen", "Akk", "hat weggeräumt", "to clear away, to put away", "w", "Räum bitte die Scherben weg!"],
["unterschreiben", "Akk", "hat unterschrieben", "to sign", "s", "Bitte unterschreiben Sie den Vertrag hier unten."],
["lesen", "Akk", "hat gelesen", "to read", "s", "Sie liest jeden Abend ein Buch."],
["durchlesen", "Akk", "hat durchgelesen", "to read through", "s", "Lies den Vertrag bitte gründlich durch."],
```

## 2. Substantive.html — append to DATA (4 nouns + 1 abbreviation)

```javascript
// ─── V29 additions ───
["Scherbe", "die", "-n", "shard, broken piece", "home", "Pass auf, da liegen Scherben auf dem Boden!"],
["Vogelspinne", "die", "-n", "tarantula", "nature", "Vogelspinnen können bis zu 30 cm gross werden."],
["Boot", "das", "-e", "boat", "travel", "Im Sommer fahren wir mit dem Boot über den See."],
["AGB", "die", "(pl.)", "general terms and conditions", "business", "Bitte lesen Sie die AGB vor dem Kauf."],
["Überfall", "der", "Überfälle", "assault, robbery, raid", "law", "Der Überfall auf die Bank geschah am Morgen."],
```

---

## 3. Accent-Insensitive Search

### Problem

Typing "u" in the search box does NOT match words containing "ü"
(e.g. searching "uber" won't find "Überfall"). Same for ä/a and ö/o.

### Solution

Add a normalizer function and apply it in every search comparison
across all pages that have a search box.

```javascript
function normalize(s) {
  return s.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
}
```

Then change every search filter line from:

```javascript
d[0].toLowerCase().includes(searchTerm)
```

to:

```javascript
normalize(d[0].toLowerCase()).includes(normalize(searchTerm))
```

Also normalize the searchTerm assignment:

```javascript
// No change needed here — just normalize at comparison time
searchTerm = this.value.toLowerCase().trim();
```

### Pages to update

All pages with a search box. At minimum:

- **Substantive.html** — filter line: `d[0].toLowerCase().includes(searchTerm) || d[3].toLowerCase().includes(searchTerm)`
- **Verben.html** — filter line: `d[0].toLowerCase().includes(searchTerm) || d[3].toLowerCase().includes(searchTerm) || d[5].toLowerCase().includes(searchTerm) || d[1].toLowerCase().includes(searchTerm)`
- **Adjektive.html** — check and apply same pattern

Grep all HTML files for `.includes(searchTerm)` to catch any others.

### Performance note

`normalize()` is called per-card per-keystroke, but with <1000 items
and simple string ops this is negligible. No caching needed.
