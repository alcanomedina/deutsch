# V43 — Vocabulary (7 Substantive + 3 Adjektive + 2 Verben) + Temporale Konnektoren + „werden" Übersicht

**Depends on:** V42 deployed.
**Source:** Bellingua Modul 25 Tag 3–4, Modul 26 Tag 1–2 PDFs.

---

## 1. Substantive.html — append to DATA (7 nouns)

```javascript
// ─── V43 additions ───
["Astronaut", "der", "-en", "astronaut", "general", "Der Astronaut schwebte durch die Raumstation.", "N-Dek"],
["Busse", "die", "-n", "fine, penalty (CH)", "general", "Er musste eine Busse von 200 Franken bezahlen."],
["Eisberg", "der", "-e", "iceberg", "nature", "Die Titanic stiess gegen einen Eisberg."],
["Erderwärmung", "die", "-en", "global warming", "general", "Die Erderwärmung ist ein globales Problem."],
["Kohle", "die", "-n", "coal; (coll.) cash", "general", "Früher wurden Häuser mit Kohle geheizt."],
["Rentner", "der", "-", "retiree, pensioner", "general", "Viele Rentner engagieren sich ehrenamtlich."],
["Schlucht", "die", "-en", "gorge, ravine", "nature", "Die Schlucht war so tief, dass man den Fluss nicht sehen konnte."],
```

**Note on Astronaut:** N-Deklination (den/dem/des Astronauten). If the codebase uses an `"N-Dek"` tag, include it as shown; otherwise drop the last element.

## 2. Adjektive.html — append to DATA (3 adjectives)

```javascript
// ─── V43 additions ───
["fruchtbar", "fruchtbarer", "am fruchtbarsten", "fertile, fruitful", "quality", "regular", "Das Land am Nil ist besonders fruchtbar."],
["künstlich", "künstlicher", "am künstlichsten", "artificial", "quality", "regular", "Die künstliche Intelligenz entwickelt sich schnell."],
["mittelalterlich", "mittelalterlicher", "am mittelalterlichsten", "medieval", "quality", "regular", "Die mittelalterliche Altstadt ist gut erhalten."],
```

## 3. Verben.html — append to DATA (2 verbs)

```javascript
// ─── V43 additions ───
["scheinen", "Ohne", "hat geschienen", "to seem; to shine", "s", "Die Sonne scheint. / Er scheint müde zu sein."],
["sich weigern", "Inf", "hat sich geweigert", "to refuse", "w", "Er weigert sich, die Rechnung zu bezahlen."],
```

Add to IRREGULAR in Verben.html:

```javascript
"scheinen":["scheint","schien"],
```

Add to WEAK in Verben.html (reflexive weak):

```javascript
"sich weigern":["weigert sich","weigerte sich"],
```

---

## 4. Nebensaetze.html — Temporale Konnektoren (expand existing temporal row)

The current Konnektoren-Tabelle has only **während · als · wenn** in the temporal row. This section adds a dedicated **Temporale Konnektoren** reference block showing all temporal Subjunktionen with their Adverb and Präposition equivalents.

### 4a — CSS (add before closing `</style>`)

```css
/* ─── Temporale Konnektoren Referenz ─── */
.temp-section {
  margin-top: 28px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.temp-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 4px;
}
.temp-subtitle {
  font-size: 12px;
  color: #ababba;
  margin-bottom: 14px;
}
.temp-grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  gap: 0;
  font-size: 13px;
  border-radius: 6px;
  overflow: hidden;
  margin-bottom: 16px;
}
.temp-grid .tg-header {
  background: #3a3a42;
  padding: 8px 12px;
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 11px;
  color: #c8c8d0;
  text-align: center;
}
.temp-grid .tg-sub {
  background: #3a3a42;
  padding: 2px 12px 6px;
  font-size: 10px;
  color: #ababba;
  text-align: center;
}
.temp-grid .tg-cell {
  padding: 8px 12px;
  color: #e0e0e4;
  border-bottom: 1px solid #3a3a40;
  line-height: 1.5;
}
.temp-grid .tg-cell em { color: #60d0e8; font-style: normal; font-weight: 600; }
.temp-grid .tg-cell .tg-meaning { color: #ababba; font-size: 11px; display: block; }
.temp-grid .tg-cell .tg-adv { color: #e8a840; font-weight: 600; }
.temp-grid .tg-cell .tg-prep { color: #c8a8ff; font-weight: 600; }
.temp-ex-block {
  margin: 12px 0;
  padding-left: 12px;
  border-left: 2px solid #3a3a40;
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.8;
}
.temp-ex-block em { color: #60d0e8; font-style: normal; }
.temp-ex-block .adv-ex { color: #e8a840; }
.temp-ex-block .prep-ex { color: #c8a8ff; }
.temp-note {
  background: #333338;
  border-left: 3px solid #60d0e8;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.temp-note strong { color: #60d0e8; font-weight: 600; }
```

### 4b — HTML (insert after the Zweigliedrige Konnektoren section)

```html
<!-- ═══ TEMPORALE KONNEKTOREN ═══ -->
<div class="temp-section">
  <div class="temp-title">Temporale Konnektoren</div>
  <div class="temp-subtitle">Jedes temporale Konzept hat drei Ausdrucksmöglichkeiten: Subjunktion (Nebensatz), Konjunktionaladverb (Hauptsatz), Präposition (+ Nomen).</div>

  <div class="temp-grid">
    <div class="tg-header">Subjunktion</div>
    <div class="tg-header">Konjunktionaladverb</div>
    <div class="tg-header">Präposition</div>

    <div class="tg-sub">Verb am Ende</div>
    <div class="tg-sub">Position 1 oder Angabe</div>
    <div class="tg-sub">+ Nomen</div>

    <div class="tg-cell"><em>nachdem</em> <span class="tg-meaning">after</span></div>
    <div class="tg-cell"><span class="tg-adv">danach · nachher</span></div>
    <div class="tg-cell"><span class="tg-prep">nach</span> + Dat</div>

    <div class="tg-cell"><em>bevor</em> <span class="tg-meaning">before</span></div>
    <div class="tg-cell"><span class="tg-adv">vorher · zuvor · davor</span></div>
    <div class="tg-cell"><span class="tg-prep">vor</span> + Dat</div>

    <div class="tg-cell"><em>während</em> <span class="tg-meaning">while, during</span></div>
    <div class="tg-cell"><span class="tg-adv">gleichzeitig · dabei</span></div>
    <div class="tg-cell"><span class="tg-prep">während</span> + Gen</div>

    <div class="tg-cell"><em>seitdem</em> <span class="tg-meaning">since</span></div>
    <div class="tg-cell"><span class="tg-adv">seitdem · seither</span></div>
    <div class="tg-cell"><span class="tg-prep">seit</span> + Dat</div>

    <div class="tg-cell"><em>bis</em> <span class="tg-meaning">until</span></div>
    <div class="tg-cell"><span class="tg-adv">—</span></div>
    <div class="tg-cell"><span class="tg-prep">bis zu</span> + Dat</div>

    <div class="tg-cell"><em>sobald</em> <span class="tg-meaning">as soon as</span></div>
    <div class="tg-cell"><span class="tg-adv">sofort · gleich</span></div>
    <div class="tg-cell">—</div>

    <div class="tg-cell"><em>solange</em> <span class="tg-meaning">as long as</span></div>
    <div class="tg-cell"><span class="tg-adv">—</span></div>
    <div class="tg-cell">—</div>
  </div>

  <div style="color:#c8a8ff;font-size:13px;font-weight:600;margin:14px 0 6px">Beispiele: nachdem / bevor</div>

  <div class="temp-ex-block">
    <em>Nachdem</em> sie die Pizza gegessen <em>hatte</em>, bezahlte sie die Rechnung.<br>
    Sie ass die Pizza, <span class="adv-ex">danach</span> bezahlte sie die Rechnung.<br>
    <span class="prep-ex">Nach</span> dem Essen bezahlte sie die Rechnung.
  </div>

  <div class="temp-ex-block">
    <em>Bevor</em> er zur Arbeit <em>ging</em>, trank er einen Kaffee.<br>
    Er trank einen Kaffee, <span class="adv-ex">vorher</span> ging er zur Arbeit.<br>
    <span class="prep-ex">Vor</span> der Arbeit trank er einen Kaffee.
  </div>

  <div style="color:#c8a8ff;font-size:13px;font-weight:600;margin:14px 0 6px">Beispiele: seitdem / während / bis</div>

  <div class="temp-ex-block">
    <em>Seitdem</em> er in Zürich <em>wohnt</em>, fährt er jeden Tag Tram.<br>
    <span class="prep-ex">Seit</span> seinem Umzug fährt er jeden Tag Tram.
  </div>

  <div class="temp-ex-block">
    <em>Während</em> sie Deutsch <em>lernte</em>, hörte sie Musik.<br>
    <span class="prep-ex">Während</span> des Unterrichts hörte sie Musik.
  </div>

  <div class="temp-ex-block">
    Ich warte, <em>bis</em> du fertig <em>bist</em>.<br>
    <span class="prep-ex">Bis zu</span> meinem Geburtstag sind es noch drei Wochen.
  </div>

  <div class="temp-note">
    <strong>nachdem + Tempus-Regel:</strong> Im <em>nachdem</em>-Nebensatz steht eine <strong>frühere</strong> Zeitform als im Hauptsatz:<br>
    NS Plusquamperfekt → HS Präteritum/Perfekt<br>
    NS Perfekt → HS Präsens<br><br>
    <strong>Wortstellung:</strong> Alle temporalen Subjunktionen leiten Nebensätze ein → Verb ans Ende.<br>
    <strong>Konjunktionaladverben</strong> stehen im Hauptsatz auf <strong>Position 1</strong> (Inversion) oder in der Angabeposition.
  </div>
</div>
```

---

## 5. Konjugation.html — „werden" Übersicht (after Futur I section)

### 5a — CSS (add before closing `</style>`)

```css
/* ─── werden Übersicht ─── */
.werden-section {
  margin-top: 28px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.werden-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 12px;
}
.werden-grid {
  display: grid;
  grid-template-columns: auto 1fr 1fr 1fr;
  gap: 0;
  font-size: 13px;
  border-radius: 6px;
  overflow: hidden;
}
.werden-grid .wg-header {
  background: #3a3a42;
  padding: 8px 12px;
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 11px;
  color: #c8c8d0;
  text-align: center;
}
.werden-grid .wg-fn {
  background: #333338;
  padding: 10px 12px;
  font-weight: 600;
  color: #e0e0e4;
  border-bottom: 1px solid #3a3a40;
  display: flex;
  align-items: center;
}
.werden-grid .wg-cell {
  padding: 10px 12px;
  color: #c8c8d0;
  border-bottom: 1px solid #3a3a40;
  line-height: 1.5;
}
.werden-grid .wg-cell em { font-style: normal; font-weight: 700; }
.werden-grid .wg-cell .w-cyan { color: #60d0e8; }
.werden-grid .wg-cell .w-gold { color: #e8a840; }
.werden-grid .wg-cell .w-pink { color: #f08888; }
.werden-grid .wg-cell .w-purp { color: #c8a8ff; }
```

### 5b — HTML (insert after the Futur I section)

```html
<!-- ═══ WERDEN ÜBERSICHT ═══ -->
<div class="werden-section">
  <div class="werden-title">Die Funktionen von „werden"</div>

  <div class="werden-grid">
    <div class="wg-header">Funktion</div>
    <div class="wg-header">Struktur</div>
    <div class="wg-header">Beispiel</div>
    <div class="wg-header">Partizip II</div>

    <div class="wg-fn" style="color:#60d0e8">Vollverb</div>
    <div class="wg-cell"><em class="w-cyan">wird</em> + Adjektiv/Nomen</div>
    <div class="wg-cell">Das Klima <em class="w-cyan">wird</em> immer heisser.</div>
    <div class="wg-cell"><em class="w-gold">geworden</em></div>

    <div class="wg-fn" style="color:#e8a840">Futur I</div>
    <div class="wg-cell"><em class="w-cyan">wird</em> + <em class="w-gold">Infinitiv</em></div>
    <div class="wg-cell">Ich <em class="w-cyan">werde</em> morgen <em class="w-gold">kommen</em>.</div>
    <div class="wg-cell">—</div>

    <div class="wg-fn" style="color:#f08888">Passiv</div>
    <div class="wg-cell"><em class="w-cyan">wird</em> + <em class="w-pink">Partizip II</em></div>
    <div class="wg-cell">Das Haus <em class="w-cyan">wird</em> <em class="w-pink">gebaut</em>.</div>
    <div class="wg-cell"><em class="w-gold">worden</em></div>

    <div class="wg-fn" style="color:#c8a8ff">Konjunktiv II</div>
    <div class="wg-cell"><em class="w-purp">würde</em> + <em class="w-gold">Infinitiv</em></div>
    <div class="wg-cell">Ich <em class="w-purp">würde</em> gerne <em class="w-gold">reisen</em>.</div>
    <div class="wg-cell">—</div>
  </div>
</div>
```

---

## Notes

- **Astronaut** — N-Deklination: den/dem/des Astronaut**en**, Pl. die Astronaut**en**. Follows existing N-Dek tagging convention.
- **Busse** — Swiss German for Geldstrafe/Bussgeld. Feminine, die Busse, -n. Important Swiss vocab.
- **Kohle** — dual meaning: (1) coal, (2) colloquial for money/cash.
- **scheinen** — two distinct meanings: (1) Die Sonne scheint (to shine), (2) Er scheint müde zu sein (to seem). Strong verb, ei→ie→ie pattern.
- **sich weigern** — takes zu + Infinitiv: *Er weigert sich, das zu machen.* Reflexive with Akkusativ *sich*.
- **Temporale Konnektoren** — three-column table mirrors the Bellingua reference from M25 Tag 4 page 5. Key teaching point: every temporal concept has a Subjunktion (NS), Adverb (HS), and Präposition (+ Nomen) variant. The *nachdem* Tempus-rule (NS = earlier tense than HS) is critical and ties back to the PQP section from V39.
- **„werden" Übersicht** — the Partizip II column is the quickest way to identify function in Perfekt: *geworden* = Vollverb, *worden* = Passiv, kein P.II = Futur/Konjunktiv. Color-coded to match existing page accents.
