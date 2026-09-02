# Brief V49 — Neue Seite: Konnektoren.html

**Priorität:** Hoch — Stufentest B1 (3 der 15 Testthemen betreffen Konnektoren)
**Dateien:** Konnektoren.html (NEU), index.html (Link hinzufügen)

---

## Konzept

Eigene Seite für alle Konnektoren, Konjunktionen, Subjunktionen, Konjunktionaladverbien und zweigliedrige Konnektoren. Interaktives DATA-Array mit Filtern, Suche, Raten-Modus und Mischen.

### Warum eine neue Seite?

Die Konnektoren-Tabelle in Nebensaetze.html ist Referenz-Material innerhalb einer Grammatikseite. Alex braucht eine dedizierte Übungsseite mit:
- Raten-Modus (Typ/Position/Bedeutung verdeckt)
- Filtern nach Typ (Konjunktion/Subjunktion/KonAdv/Zweigliedrig)
- Filtern nach Kategorie (kausal/konzessiv/temporal …)
- Spezial-Raten für zweigliedrige Konnektoren (erster Teil → zweiten raten)

**Nebensaetze.html bleibt unverändert** — die Konnektoren-Tabelle dort dient als Syntax-Referenz im Kontext der Nebensatz-Grammatik.

---

## Seiten-Struktur

```
┌─────────────────────────────────────────┐
│ Header: Konnektoren                     │
│ Subtitle, Search, Raten, Mischen        │
│ Filter: Typ-Buttons (4)                 │
│ Filter: Kategorie-Buttons (~10)         │
│ Count                                   │
├─────────────────────────────────────────┤
│ Card Grid                               │
│  ┌──────────┐ ┌──────────┐             │
│  │ KONJ     │ │ SUBJ     │             │
│  │ und      │ │ weil     │             │
│  │ additiv  │ │ kausal   │             │
│  │ Pos 0    │ │ V→Ende   │             │
│  │ and      │ │ because  │             │
│  │ example  │ │ example  │             │
│  └──────────┘ └──────────┘             │
│  ...                                    │
├─────────────────────────────────────────┤
│ Reference Section: Übersichtstabelle    │
│ (static, below cards)                   │
└─────────────────────────────────────────┘
```

---

## DATA-Array

Format: `[word, type, position, category, english, example]`

**type**: `"konj"` | `"subj"` | `"konadv"` | `"zweigl"`
**category**: `"kausal"` | `"konzessiv"` | `"temporal"` | `"konditional"` | `"final"` | `"modal"` | `"adversativ"` | `"konsekutiv"` | `"additiv"` | `"alternativ"` | `"proportional"`

```js
const DATA = [
// ─── Konjunktionen (Pos 0 — HS, HS) ───
["und",       "konj", "Pos 0 → HS, HS",  "additiv",     "and",         "Ich koche und er deckt den Tisch."],
["oder",      "konj", "Pos 0 → HS, HS",  "alternativ",  "or",          "Kommst du mit oder bleibst du hier?"],
["aber",      "konj", "Pos 0 → HS, HS",  "adversativ",  "but",         "Ich bin müde, aber ich arbeite weiter."],
["denn",      "konj", "Pos 0 → HS, HS",  "kausal",      "because, for","Er bleibt zu Hause, denn er ist krank."],
["sondern",   "konj", "Pos 0 → HS, HS",  "adversativ",  "but rather (nach Negation)", "Er fährt nicht Bus, sondern er geht zu Fuss."],

// ─── Subjunktionen (Verb am Ende — NS) ───
["weil",      "subj", "Verb → Ende (NS)", "kausal",      "because",     "Er bleibt zu Hause, weil er krank ist."],
["obwohl",    "subj", "Verb → Ende (NS)", "konzessiv",   "although",    "Er geht joggen, obwohl es regnet."],
["dass",      "subj", "Verb → Ende (NS)", "deklarativ",  "that",        "Ich glaube, dass er recht hat."],
["ob",        "subj", "Verb → Ende (NS)", "deklarativ",  "whether, if", "Ich weiss nicht, ob er kommt."],
["wenn",      "subj", "Verb → Ende (NS)", "konditional", "if, when(ever)", "Wenn es regnet, bleibe ich zu Hause."],
["als",       "subj", "Verb → Ende (NS)", "temporal",    "when (einmalig, Vergangenheit)", "Als ich Kind war, spielte ich oft draussen."],
["nachdem",   "subj", "Verb → Ende (NS)", "temporal",    "after",       "Nachdem er gegessen hatte, ging er spazieren."],
["bevor",     "subj", "Verb → Ende (NS)", "temporal",    "before",      "Bevor du gehst, ruf mich bitte an."],
["während",   "subj", "Verb → Ende (NS)", "temporal",    "while, during","Während er kocht, lese ich die Zeitung."],
["seitdem",   "subj", "Verb → Ende (NS)", "temporal",    "since (time)","Seitdem er hier wohnt, fährt er Velo."],
["bis",       "subj", "Verb → Ende (NS)", "temporal",    "until",       "Warte, bis ich fertig bin."],
["damit",     "subj", "Verb → Ende (NS)", "final",       "so that (Zweck)", "Ich lerne, damit ich die Prüfung bestehe."],
["sodass",    "subj", "Verb → Ende (NS)", "konsekutiv",  "so that (Folge)", "Es regnete stark, sodass wir zu Hause blieben."],
["falls",     "subj", "Verb → Ende (NS)", "konditional", "in case, if", "Falls du Hilfe brauchst, ruf mich an."],
["indem",     "subj", "Verb → Ende (NS)", "modal",       "by (doing)",  "Man lernt Deutsch, indem man viel übt."],
["sobald",    "subj", "Verb → Ende (NS)", "temporal",    "as soon as",  "Sobald ich fertig bin, rufe ich dich an."],
["solange",   "subj", "Verb → Ende (NS)", "temporal",    "as long as",  "Solange du hier bist, bist du willkommen."],

// ─── Konjunktionaladverbien (Pos 1 / Mittelfeld → Inversion) ───
["deshalb",       "konadv", "Pos 1 oder 3 → Inversion", "kausal",      "therefore",    "Er ist krank. Deshalb bleibt er zu Hause."],
["deswegen",      "konadv", "Pos 1 oder 3 → Inversion", "kausal",      "therefore, because of that", "Es regnet. Deswegen nehme ich den Schirm mit."],
["darum",         "konadv", "Pos 1 oder 3 → Inversion", "kausal",      "therefore",    "Der Zug fällt aus. Darum fahre ich mit dem Auto."],
["daher",         "konadv", "Pos 1 oder 3 → Inversion", "kausal",      "therefore, hence", "Die Strasse ist gesperrt. Daher nehmen wir einen Umweg."],
["nämlich",       "konadv", "NUR Mittelfeld (Pos 3)",   "kausal",      "namely, because", "Er kommt nicht. Er ist nämlich krank."],
["trotzdem",      "konadv", "Pos 1 oder 3 → Inversion", "konzessiv",   "nevertheless", "Es regnet. Trotzdem geht er joggen."],
["dennoch",       "konadv", "Pos 1 oder 3 → Inversion", "konzessiv",   "nevertheless, still", "Die Aufgabe war schwer. Dennoch hat er sie gelöst."],
["jedoch",        "konadv", "Pos 1 oder 3 → Inversion", "adversativ",  "however",      "Die Idee ist gut, jedoch fehlt das Budget."],
["allerdings",    "konadv", "Pos 1 oder 3 → Inversion", "adversativ",  "however, though (weicher)", "Er spricht gut Deutsch, allerdings macht er noch Fehler."],
["ausserdem",     "konadv", "Pos 1 oder 3 → Inversion", "additiv",     "moreover, besides", "Er spricht Deutsch. Ausserdem lernt er Französisch."],
["stattdessen",   "konadv", "Pos 1 → Inversion",        "alternativ",  "instead",      "Er ging nicht ins Kino. Stattdessen blieb er zu Hause."],
["sonst",         "konadv", "Pos 1 oder 3 → Inversion", "konditional", "otherwise",    "Beeil dich, sonst kommen wir zu spät."],
["folglich",      "konadv", "Pos 1 oder 3 → Inversion", "konsekutiv",  "consequently", "Er hat nicht gelernt. Folglich hat er die Prüfung nicht bestanden."],
["also",          "konadv", "Pos 1 oder 0 (umg.)",      "konsekutiv",  "so, therefore","Du bist müde, also geh ins Bett."],
["dann",          "konadv", "Pos 1 → Inversion",        "temporal",    "then",         "Zuerst dusche ich. Dann frühstücke ich."],
["danach",        "konadv", "Pos 1 → Inversion",        "temporal",    "after that",   "Wir essen Mittag. Danach gehen wir spazieren."],
["vorher",        "konadv", "Pos 1 → Inversion",        "temporal",    "before that",  "Die Sitzung ist um drei. Vorher mache ich Pause."],
["gleichzeitig",  "konadv", "Pos 1 oder 3 → Inversion", "temporal",    "at the same time", "Er telefoniert. Gleichzeitig schreibt er eine E-Mail."],
["schliesslich",  "konadv", "Pos 1 oder 3 → Inversion", "temporal",    "finally, after all", "Schliesslich haben wir eine Lösung gefunden."],
["zunächst",      "konadv", "Pos 1 → Inversion",        "temporal",    "first, initially", "Zunächst lesen wir den Text. Dann besprechen wir ihn."],
["anschliessend", "konadv", "Pos 1 → Inversion",        "temporal",    "afterwards",   "Wir machen die Übung. Anschliessend kontrollieren wir die Ergebnisse."],

// ─── Zweigliedrige Konnektoren ───
["entweder … oder",           "zweigl", "entweder: Pos 0/Vorfeld; oder: Pos 0",               "alternativ",   "either … or",      "Entweder fahren wir ans Meer, oder wir bleiben zu Hause."],
["weder … noch",              "zweigl", "weder: Vorfeld/Mittelfeld; noch: Pos 0 (Inversion)",  "alternativ",   "neither … nor",    "Ich spreche weder Französisch noch verstehe ich Italienisch."],
["sowohl … als auch",         "zweigl", "verbindet Elemente (nicht ganze Sätze)",              "additiv",      "both … and",       "Sie spricht sowohl Deutsch als auch Französisch."],
["nicht nur … sondern auch",  "zweigl", "nicht nur: Vorfeld/Mittelfeld; sondern auch: Pos 0",  "additiv",      "not only … but also", "Nicht nur Schweizer, sondern auch Touristen fahren gern ins Tessin."],
["zwar … aber",               "zweigl", "zwar: Mittelfeld; aber: Pos 0",                       "konzessiv",    "indeed … but",     "Ich kann zwar kochen, aber nicht besonders gut."],
["je … desto",                "zweigl", "je: NS (Verb Ende); desto: HS (Verb nach Komparativ)","proportional", "the … the (more)", "Je mehr ich lerne, desto besser spreche ich."],
];
```

**Einträge total: ~44** (5 Konj + 17 Subj + 16 KonAdv + 6 Zweigl)

---

## Card Design

### Normale Cards (konj/subj/konadv)

```
┌────────────────────────┐
│ [KONJ]        kausal   │  ← type badge (farbig) + category tag
│                        │
│      denn              │  ← Wort (gross, fett)
│                        │
│ Pos 0 → HS, HS        │  ← Position (mono)
│ because, for           │  ← English
│                        │
│ Er bleibt zu Hause,    │  ← Beispielsatz
│ denn er ist krank.     │
└────────────────────────┘
```

### Zweigliedrige Cards

```
┌────────────────────────┐
│ [ZWEIGL]  alternativ   │
│                        │
│   entweder … oder      │  ← beide Teile
│                        │
│ entweder: Pos 0/Vorf.  │
│ oder: Pos 0            │
│ either … or            │
│                        │
│ Entweder fahren wir    │
│ ans Meer, oder wir     │
│ bleiben zu Hause.      │
└────────────────────────┘
```

### Raten-Modus

**Normale Cards:** Wort sichtbar. Versteckt: Typ-Badge, Position, English, Beispiel, Kategorie.
→ Man sieht *«trotzdem»* und muss raten: welcher Typ? welche Position?

**Zweigliedrige Cards:** Erster Teil sichtbar, zweiter Teil versteckt.
→ Man sieht *«entweder …»* und muss raten: *«… oder»* (nicht *«… noch»*!).

---

## Farbschema

### Type Badges (Hintergrund + Text)

| Type   | Badge BG   | Badge Text | Beschreibung |
|--------|-----------|-----------|-------------|
| konj   | `#1a3a28` | `#70d890` | Konjunktion |
| subj   | `#1a2848` | `#60d0e8` | Subjunktion |
| konadv | `#3a2e18` | `#e8a840` | KonAdverb |
| zweigl | `#2a1848` | `#c8a8ff` | Zweigliedrig |

### Kategorie-Farben (Border-left der Cards)

| Kategorie    | Farbe     |
|-------------|----------|
| kausal      | `#e87040` |
| konzessiv   | `#c870e0` |
| temporal    | `#60d0e8` |
| konditional | `#e8d040` |
| final       | `#68d8b8` |
| modal       | `#7090e0` |
| adversativ  | `#f08888` |
| konsekutiv  | `#f0b878` |
| additiv     | `#70d890` |
| alternativ  | `#e0e0e4` |
| proportional| `#c8a8ff` |
| deklarativ  | `#ababba` |

Diese Farben sind konsistent mit den Konnektoren-Zeilen in Nebensaetze.html (`konn-row-kausal` etc.).

---

## Filter-Buttons

### Typ-Filter (eine Reihe)

```
[Alle] [Konjunktion] [Subjunktion] [KonAdverb] [Zweigliedrig]
```

### Kategorie-Filter (zweite Reihe, scrollbar auf Mobile)

```
[alle] [kausal] [konzessiv] [temporal] [konditional] [final] [modal] [adversativ] [konsekutiv] [additiv]
```

Kategorien mit nur 1-2 Einträgen (alternativ, proportional, deklarativ) bekommen KEINEN eigenen Filter-Button — sie erscheinen unter "alle".

---

## Statische Referenz-Sektion (unter dem Grid)

### Übersichtstabelle

Nach dem Card-Grid, vor dem `<script>`: eine kompakte Referenztabelle, die die **drei Typen und ihre Wortstellung** zeigt. Kein Duplikat der Nebensaetze-Tabelle, sondern eine kurze Zusammenfassung:

```html
<!-- ═══ REFERENZ ═══ -->
<div style="max-width:920px;margin:32px auto 0;padding:0 16px;">
  <div style="font-family:'JetBrains Mono',monospace;font-size:11px;font-weight:700;text-transform:uppercase;letter-spacing:1.5px;color:#c8a8ff;margin-bottom:12px;">Wortstellung — Kurzreferenz</div>

  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;">
    <table style="width:100%;border-collapse:collapse;">
      <thead>
        <tr>
          <th style="text-align:left;padding:8px 10px;border-bottom:2px solid #3e3e44;color:#8888a0;font-size:12px;font-family:'JetBrains Mono',monospace;">Typ</th>
          <th style="text-align:left;padding:8px 10px;border-bottom:2px solid #3e3e44;color:#8888a0;font-size:12px;font-family:'JetBrains Mono',monospace;">Position</th>
          <th style="text-align:left;padding:8px 10px;border-bottom:2px solid #3e3e44;color:#8888a0;font-size:12px;font-family:'JetBrains Mono',monospace;">Wortstellung</th>
          <th style="text-align:left;padding:8px 10px;border-bottom:2px solid #3e3e44;color:#8888a0;font-size:12px;font-family:'JetBrains Mono',monospace;">Beispiel</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;"><span style="background:#1a3a28;color:#70d890;padding:2px 8px;border-radius:6px;font-size:12px;font-weight:600;">KONJ</span></td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#e0e0e4;font-size:13px;">Pos 0</td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#ababba;font-size:13px;">HS, <strong style="color:#70d890">[konj]</strong> HS</td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#e0e0e4;font-size:13px;">..., <strong style="color:#70d890">denn</strong> er <strong>ist</strong> krank.</td>
        </tr>
        <tr>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;"><span style="background:#1a2848;color:#60d0e8;padding:2px 8px;border-radius:6px;font-size:12px;font-weight:600;">SUBJ</span></td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#e0e0e4;font-size:13px;">Nebensatz</td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#ababba;font-size:13px;">..., <strong style="color:#60d0e8">[subj]</strong> ... Verb<strong>↵</strong></td>
          <td style="padding:8px 10px;border-bottom:1px solid #3e3e44;color:#e0e0e4;font-size:13px;">..., <strong style="color:#60d0e8">weil</strong> er krank <strong>ist</strong>.</td>
        </tr>
        <tr>
          <td style="padding:8px 10px;"><span style="background:#3a2e18;color:#e8a840;padding:2px 8px;border-radius:6px;font-size:12px;font-weight:600;">KONADV</span></td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;">Pos 1 / 3</td>
          <td style="padding:8px 10px;color:#ababba;font-size:13px;"><strong style="color:#e8a840">[KonAdv]</strong> <strong>V</strong> Subj ...</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;"><strong style="color:#e8a840">Deshalb</strong> <strong>bleibt</strong> er zu Hause.</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
```

---

## JavaScript-Logik

### Render-Funktion

```js
function render() {
  const q = searchBox.value.toLowerCase().trim();
  let filtered = DATA.filter(d => {
    if (activeType !== "all" && d[1] !== activeType) return false;
    if (activeCat !== "all" && d[3] !== activeCat) return false;
    if (q) {
      const searchable = (d[0] + " " + d[3] + " " + d[4] + " " + d[5]).toLowerCase();
      if (!searchable.includes(q)) return false;
    }
    return true;
  });

  if (shuffleMode) filtered = shuffleArray(filtered);

  grid.innerHTML = "";
  filtered.forEach(d => {
    const [word, type, position, category, english, example] = d;
    const card = document.createElement("div");

    // type badge
    const typeLabels = {konj:"KONJ", subj:"SUBJ", konadv:"KONADV", zweigl:"ZWEIGL"};
    const typeLabel = typeLabels[type];

    // category color
    const catColors = {kausal:"#e87040", konzessiv:"#c870e0", temporal:"#60d0e8", konditional:"#e8d040", final:"#68d8b8", modal:"#7090e0", adversativ:"#f08888", konsekutiv:"#f0b878", additiv:"#70d890", alternativ:"#e0e0e4", proportional:"#c8a8ff", deklarativ:"#ababba"};
    const catColor = catColors[category] || "#ababba";

    // type badge colors
    const typeBg = {konj:"#1a3a28", subj:"#1a2848", konadv:"#3a2e18", zweigl:"#2a1848"};
    const typeColor = {konj:"#70d890", subj:"#60d0e8", konadv:"#e8a840", zweigl:"#c8a8ff"};

    if (guessMode) {
      if (type === "zweigl") {
        // Zweigliedrig: show first part, hide second
        const parts = word.split(" … ");
        const firstPart = parts[0] + " …";
        card.className = "card guess-hidden";
        card.style.borderLeft = `3px solid ${catColor}`;
        card.innerHTML = `
          <div class="card-top guess-hide"><span class="type-badge" style="background:${typeBg[type]};color:${typeColor[type]}">${typeLabel}</span><span class="cat-tag" style="color:${catColor}">${category}</span></div>
          <div class="card-word">${firstPart} <span class="guess-hide">${parts[1] || ""}</span></div>
          <div class="card-pos guess-hide">${position}</div>
          <div class="card-eng guess-hide">${english}</div>
          <div class="card-ex guess-hide">${example}</div>
        `;
      } else {
        card.className = "card guess-hidden";
        card.style.borderLeft = `3px solid ${catColor}`;
        card.innerHTML = `
          <div class="card-top guess-hide"><span class="type-badge" style="background:${typeBg[type]};color:${typeColor[type]}">${typeLabel}</span><span class="cat-tag" style="color:${catColor}">${category}</span></div>
          <div class="card-word">${word}</div>
          <div class="card-pos guess-hide">${position}</div>
          <div class="card-eng guess-hide">${english}</div>
          <div class="card-ex guess-hide">${example}</div>
        `;
      }
    } else {
      card.className = "card";
      card.style.borderLeft = `3px solid ${catColor}`;
      card.innerHTML = `
        <div class="card-top"><span class="type-badge" style="background:${typeBg[type]};color:${typeColor[type]}">${typeLabel}</span><span class="cat-tag" style="color:${catColor}">${category}</span></div>
        <div class="card-word">${word}</div>
        <div class="card-pos">${position}</div>
        <div class="card-eng">${english}</div>
        <div class="card-ex">${example}</div>
      `;
    }
    grid.appendChild(card);
  });

  countEl.textContent = filtered.length + " Konnektor" + (filtered.length !== 1 ? "en" : "");
}
```

### Guess-Mode Click Handler

Verwende den Standard-Handler aus common.css/common.js:

```js
document.getElementById('grid').addEventListener('click', function(e) {
  const card = e.target.closest('.guess-hidden, .guess-revealed');
  if (!card || !guessMode) return;
  if (card.classList.contains('guess-hidden')) {
    card.classList.remove('guess-hidden');
    card.classList.add('guess-revealed');
  } else {
    card.classList.remove('guess-revealed');
    card.classList.add('guess-hidden');
  }
});
```

---

## CSS (page-specific)

```css
.card {
  background: #343438;
  border: 1px solid #44444c;
  border-radius: 12px;
  padding: 16px;
  position: relative;
}
.card-top {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 10px;
}
.type-badge {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px;
  font-weight: 700;
  padding: 2px 8px;
  border-radius: 6px;
  letter-spacing: 0.5px;
}
.cat-tag {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px;
  font-weight: 500;
}
.card-word {
  font-family: 'Inter', sans-serif;
  font-size: 20px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 8px;
}
.card-pos {
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px;
  color: #8888a0;
  margin-bottom: 6px;
}
.card-eng {
  font-size: 13px;
  color: #ababba;
  margin-bottom: 8px;
}
.card-ex {
  font-size: 13px;
  color: #e0e0e4;
  font-style: italic;
  line-height: 1.5;
  padding-top: 8px;
  border-top: 1px solid #3e3e44;
}
.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 12px;
  max-width: 920px;
  margin: 0 auto;
  padding: 0 16px;
}
```

Filter-Buttons: gleicher Stil wie Adjektive.html (`.filter-btn`, `.filter-btn.active-*`).
Guess-Mode: Styles kommen aus `css/common.css`.

---

## index.html — Neuer Link

Nach dem Nebensaetze-Link, neuen Card einfügen:

```html
    <a class="card a-gold" href="Konnektoren.html">
      <span class="badge badge-int">Interaktiv</span>
      <span class="emoji">🔗</span>
      <div class="title">Konnektoren</div>
      <div class="desc">Konjunktionen, Subjunktionen, Konjunktionaladverbien, zweigliedrige Konnektoren — mit Raten-Modus für Typ und Wortstellung.</div>
    </a>
```

---

## Verifizierung

1. Seite lädt, alle 44 Konnektoren erscheinen als Cards
2. Typ-Filter funktionieren (5 Konj, 17 Subj, 16 KonAdv, 6 Zweigl)
3. Kategorie-Filter funktionieren
4. Suche findet nach Wort, Kategorie, Englisch, Beispiel
5. Raten-Modus: nur Wort sichtbar, Klick zeigt alles
6. Raten + Zweigliedrig: *«entweder …»* sichtbar, *«oder»* versteckt
7. Mischen randomisiert die Reihenfolge
8. Referenz-Tabelle unter dem Grid korrekt dargestellt
9. Mobile: 1-Spalten-Grid, alles lesbar auf 375px
10. index.html: neuer Link erscheint korrekt
11. Nav-Links: Bestehende Seiten nicht verändert

## Anti-Patterns

- Nebensaetze.html **NICHT** verändern — die Tabelle dort bleibt als Syntax-Referenz
- Keine Präpositionen in den DATA-Array (die haben ihre eigene Seite: Praepositionen.html)
- Swiss *ss* Schreibweise durchgehend (anschliessend, schliesslich, ausserdem)
