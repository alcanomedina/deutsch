# V6 — Vocabulary Additions: Bellingua B1 Modul 21

**Supersedes:** Previous V6 draft.  
**Depends on:** Nothing (additive data). V5 shuffle/CSS must be
deployed first so common.js is available.

## Source

4 verified PDFs: NK123 B1 Modul 21, Tag 1–4.  
Key sources: Lernwortschatz im Kontext (Tag 2 p6), handwritten
class notes (Tag 2 p7, Tag 4 p2), vocabulary review cards
(Tag 4 p5), Komparativ exercise (Tag 2 p5), exercise sentences
(Tag 3 p7, p9).

All words cross-checked against existing DATA arrays — zero
duplicates.

---

## Part A — Substantive.html (+24 nouns)

Append to `DATA`. Format:
`[word, gender, plural, meaning, category, example]`

```javascript
// ─── B1 Modul 21 ───
["Mikrowelle", "die", "-n", "microwave", "home", "Kannst du die Suppe in der Mikrowelle warm machen?"],
["Chance", "die", "-n", "chance, opportunity", "general", "Jeder hat eine zweite Chance verdient."],
["Wirklichkeit", "die", "-en", "reality", "general", "In der Wirklichkeit ist alles anders."],
["Eimer", "der", "-", "bucket", "home", "Ich brauche einen Eimer Wasser zum Putzen."],
["Windhund", "der", "-e", "greyhound", "nature", "Der Windhund ist schneller als die Schildkröte."],
["Schildkröte", "die", "-n", "turtle, tortoise", "nature", "Die Schildkröte bewegt sich langsam."],
["Schlange", "die", "-n", "snake", "nature", "Die Schlange ist ein längeres Tier als die Raupe."],
["Raupe", "die", "-n", "caterpillar", "nature", "Aus der Raupe wird ein Schmetterling."],
["Spinne", "die", "-n", "spider", "nature", "Dort leben keine Spinnen und Kakerlaken."],
["Kakerlake", "die", "-n", "cockroach", "nature", "Ich putze regelmässig, damit keine Kakerlaken kommen."],
["Badeanzug", "der", "Badeanzüge", "swimsuit", "general", "Für Kuba braucht sie einen neuen Badeanzug."],
["Weltreise", "die", "-n", "world trip", "travel", "Wenn ich doch genug Geld für eine Weltreise hätte!"],
["Spielzeug", "das", "(no pl.)", "toy", "general", "Das Kind hat zu viel Spielzeug."],
["Ernährung", "die", "(no pl.)", "nutrition, diet", "health", "Eine gesunde Ernährung ist wichtig."],
["Kinderarzt", "der", "Kinderärzte", "pediatrician", "health", "Morgen haben wir einen Termin beim Kinderarzt."],
["Kopfhörer", "der", "-", "headphones", "general", "Im Zug höre ich Musik mit Kopfhörern."],
["Mühle", "die", "-n", "mill", "general", "Die alte Mühle steht am Fluss."],
["Windmühle", "die", "-n", "windmill", "general", "In Holland gibt es viele Windmühlen."],
["Leitung", "die", "-en", "management, leadership", "business", "Die Leitung hat die Entscheidung getroffen."],
["Zufall", "der", "Zufälle", "coincidence", "general", "Was für ein Zufall, dich hier zu treffen!"],
["Forschung", "die", "-en", "research", "general", "Die Forschung zeigt positive Ergebnisse."],
["Heimweh", "das", "(no pl.)", "homesickness", "emotion", "Im Ausland hatte ich oft Heimweh."],
["Badewanne", "die", "-n", "bathtub", "home", "Am Abend nehme ich ein Bad in der Badewanne."],
["Nahrungsmittel", "das", "-", "food, foodstuff", "food", "Nahrungsmittel sollte man nicht verschwenden."],
```

---

## Part B — Adjektive.html (+6 adjectives)

Append to `DATA` in the `// === REGULAR ===` section.  
Format: `[adj, Komparativ, Superlativ, meaning, category, type,
example]`

```javascript
["anstrengend", "anstrengender", "am anstrengendsten", "exhausting, tiring", "state", "regular", "Die Wanderung war sehr anstrengend."],
["eifersüchtig", "eifersüchtiger", "am eifersüchtigsten", "jealous", "emotion", "regular", "Er wird eifersüchtig, wenn sie mit anderen spricht."],
["ängstlich", "ängstlicher", "am ängstlichsten", "anxious, fearful", "emotion", "regular", "Das Kind ist ängstlich im Dunkeln."],
["neidisch", "neidischer", "am neidischsten", "envious", "emotion", "regular", "Sei nicht neidisch auf andere!"],
["einsam", "einsamer", "am einsamsten", "lonely", "emotion", "regular", "Im Alter fühlen sich viele Menschen einsam."],
["gemeinsam", "gemeinsamer", "am gemeinsamsten", "shared, together", "quality", "regular", "Wir haben viele gemeinsame Interessen."],
```

---

## Part C — Konjugation.html (+7 strong/irregular verbs)

Append to `V` array, each in its correct pattern group.  
Format: `[inf, Präsens(3.Sg), Prät, Part.II, Aux, meaning,
pattern, extra]`

**Group `ei→ie→ie`:**
```javascript
["beschreiben", "beschreibt", "beschrieb", "beschrieben", "h", "to describe", "ei→ie→ie", ""],
```

**Group `e→a→o`:**
```javascript
["zunehmen", "nimmt zu", "nahm zu", "zugenommen", "h", "to gain weight, increase", "e→a→o", "e→i"],
["übernehmen", "übernimmt", "übernahm", "übernommen", "h", "to take over", "e→a→o", "e→i"],
```

**Group `e→a→e`:**
```javascript
["aufgeben", "gibt auf", "gab auf", "aufgegeben", "h", "to give up", "e→a→e", "e→i"],
```

**Group `a→ie→a`:**
```javascript
["verlassen", "verlässt", "verliess", "verlassen", "h", "to leave, abandon", "a→ie→a", "a→ä"],
["beraten", "berät", "beriet", "beraten", "h", "to advise", "a→ie→a", "a→ä"],
```

**Group `Sonder`:**
```javascript
["besitzen", "besitzt", "besass", "besessen", "h", "to own, possess", "Sonder", ""],
```

Swiss spelling: liess, besass (no ß).

---

## Part D — Verben.html (+7 transitive verbs without preposition)

### D1. Data additions (no code changes needed)

The existing code already handles verbs with bare "Akk" or "Dat"
(no preposition prefix) — the `getCase()` and `getPrep()` functions
return the right values. These verbs get the existing Akk/Dat card
colors and appear under the Akkusativ/Dativ filter buttons.

Append to `DATA`. Place in a new comment section at the end:

```javascript
// ─── ohne Präposition ───
["aufgeben", "Akk", "hat aufgegeben", "to give up", "s", "Er gibt seinen Traum nicht auf."],
["feststellen", "Akk", "hat festgestellt", "to determine, notice", "w", "Wir haben einen Fehler festgestellt."],
["anschaffen", "Akk", "hat angeschafft", "to acquire, purchase", "w", "Du könntest dir ein Auto anschaffen."],
["umtauschen", "Akk", "hat umgetauscht", "to exchange, return", "w", "Hoffentlich kann ich die Schuhe umtauschen."],
["austauschen", "Akk", "hat ausgetauscht", "to exchange, replace", "w", "Wir müssen die alten Lampen austauschen."],
["verpassen", "Akk", "hat verpasst", "to miss", "w", "Ich habe den Zug verpasst."],
["überlegen", "Akk", "hat überlegt", "to consider, think over", "w", "Ich würde mir die Sache noch einmal überlegen."],
```

### D2. UI extension for intransitive verbs (small code change)

The following verbs have no object (intransitive/reflexive) and
need a new case category. This requires a small UI change:

**Verbs to add once UI supports it:**
```javascript
// ─── intransitiv / reflexiv ───
["lächeln", "Ohne", "hat gelächelt", "to smile", "w", "Das Baby lächelt."],
["sich verändern", "Ohne", "hat sich verändert", "to change (oneself)", "w", "Handys haben sich immer wieder verändert."],
["sich ausruhen", "Ohne", "hat sich ausgeruht", "to rest", "w", "Am Wochenende ruhe ich mich aus."],
["sich wohl fühlen", "Ohne", "hat sich wohl gefühlt", "to feel comfortable", "w", "Ich fühle mich hier wohl."],
```

**Code changes needed:**

**1. New filter button** in `.controls`, after the Dativ button:

```html
<button class="fbtn" data-f="Ohne" onclick="setCase(this)">Ohne</button>
```

**2. New card color** in `<style>`:

```css
.card.k-ohne { background: #2a2a38; border-color: #5a5a6a; }
.card.k-ohne:hover { box-shadow: 0 4px 12px #8888a066; }
```

**3. Update `getCase()`** to handle "Ohne":

```javascript
function getCase(pc) {
  if (pc === 'Dat' || pc === 'Akk' || pc === 'Ohne') return pc;
  return pc.split('+')[1] || '';
}
```

**4. Update `getPrep()`** to handle "Ohne":

```javascript
function getPrep(pc) {
  if (pc === 'Dat' || pc === 'Akk' || pc === 'Ohne') return '';
  return pc.split('+')[0];
}
```

**5. Update card class logic** in `render()` — wherever the card
class is assigned from the case, ensure "Ohne" maps to `k-ohne`.

**6. Update filter button active class:**

```css
.fbtn.f-ohne { background: #2a2a38; border-color: #8888a0; color: #c0c0c8; }
```

**7. Prep badge for "Ohne" verbs**: show `—` or hide the badge
entirely.

---

## Verification

1. **Substantive**: search "Mikrowelle" → appears. Search
   "Schildkröte" → appears. Count shows +24 from previous total.
2. **Adjektive**: filter "emotion" → eifersüchtig, ängstlich,
   neidisch, einsam all appear.
3. **Konjugation**: filter "ei→ie→ie" → beschreiben appears.
   Filter "Sonder" → besitzen appears. Pattern counts updated.
4. **Verben**: filter "Akkusativ" → aufgeben, umtauschen etc.
   appear with Akk card color, no prep badge. Filter "Ohne" →
   lächeln, sich verändern etc. appear with neutral card color.
5. **Shuffle + Guess**: still work on all modified pages.
6. **No regressions**: existing entries unchanged.

## Anti-patterns to avoid

- Do NOT modify existing entries — only append.
- Do NOT add weak verbs to Konjugation.
- Maintain Swiss spelling: ss not ß.
- Do NOT create a prep button for "Ohne" verbs — they should
  appear in the case filter only, not the prep-bar.
- Do NOT change the Verben page title/subtitle — it can still be
  about verbs generally, not just "mit Präpositionen".
