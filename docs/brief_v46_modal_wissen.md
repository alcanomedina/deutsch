# V46 — Vocabulary (5 Substantive + 4 Adjektive + 1 Verb) + Alternativformen Modalverben + wissen vs. kennen

**Depends on:** V45 deployed.
**Source:** Bellingua Modul 26 Tag 4, Modul 27 Tag 3–4 PDFs.

---

## 1. Substantive.html — append to DATA (5 nouns)

```javascript
// ─── V46 additions ───
["Boiler", "der", "-", "boiler, water heater", "general", "Der Hausmeister muss den Boiler regelmässig entkalken."],
["Kassette", "die", "-n", "cassette (tape)", "general", "Früher hat man Musik auf Kassetten gehört."],
["Kutsche", "die", "-n", "carriage, coach", "general", "Früher musste man Pferde haben, um die Kutsche zu benutzen."],
["Reisetasche", "die", "-n", "travel bag", "general", "Ich packe meine Reisetasche für das Wochenende."],
["Schlaufe", "die", "-n", "loop, strap", "general", "Halte dich an der Schlaufe fest!"],
```

## 2. Adjektive.html — append to DATA (4 adjectives)

```javascript
// ─── V46 additions ───
["chaotisch", "chaotischer", "am chaotischsten", "chaotic", "quality", "regular", "Mein Schreibtisch ist ziemlich chaotisch."],
["einmalig", "einmaliger", "am einmaligsten", "unique, one-time", "quality", "regular", "Das war ein einmaliges Erlebnis."],
["giftig", "giftiger", "am giftigsten", "poisonous, toxic", "quality", "regular", "Diese Schlange ist sehr giftig."],
["mühsam", "mühsamer", "am mühsamsten", "tedious, laborious", "quality", "regular", "Die Wanderung war lang und mühsam."],
```

## 3. Verben.html — append to DATA (1 verb)

```javascript
// ─── V46 additions ───
["wissen", "Akk", "hat gewusst", "to know (fact/information)", "m", "Ich weiss, wo das Grossmünster ist."],
```

Add to IRREGULAR in Verben.html:

```javascript
"wissen":["weiss","wusste"],
```

---

## 4. Modalverben.html — new "Alternativformen" section

Place **after** the NUANCEN section as the final section.

### 4a — CSS (add before closing `</style>`)

```css
/* ─── Alternativformen ─── */
.alt-section {
  margin-top: 28px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.alt-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 4px;
}
.alt-subtitle {
  font-size: 12px;
  color: #ababba;
  margin-bottom: 16px;
  line-height: 1.5;
}
.alt-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  margin-bottom: 2px;
}
.alt-row-header {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  background: #3a3a42;
  border-radius: 6px 6px 0 0;
  padding: 8px 14px;
  margin-top: 16px;
}
.alt-row-header span {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px;
  font-weight: 600;
  color: #c8c8d0;
}
.alt-cell {
  padding: 10px 14px;
  font-size: 13px;
  border-bottom: 1px solid #3a3a40;
  line-height: 1.6;
}
.alt-cell.modal { color: #ababba; }
.alt-cell.alt { color: #e0e0e4; }
.alt-cell em { font-style: normal; font-weight: 700; }
.alt-cell .m-verb { color: #70d890; }
.alt-cell .a-verb { color: #60d0e8; }
.alt-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px;
  font-weight: 600;
  color: #c8a8ff;
  margin: 20px 0 4px;
}
.alt-note {
  background: #333338;
  border-left: 3px solid #70d890;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.alt-note strong { color: #70d890; font-weight: 600; }
.alt-note em { color: #60d0e8; font-style: normal; }

@media(max-width:600px){
  .alt-row, .alt-row-header{grid-template-columns:1fr;gap:0}
  .alt-cell{padding:6px 14px}
}
```

### 4b — HTML

```html
<!-- ═══ ALTERNATIVFORMEN ═══ -->
<div class="section" id="alternativformen">
  <div class="section-title"><span class="dot" style="background:#70d890"></span> Alternativformen</div>
  <div class="section-sub">Formellere Ausdrücke statt Modalverben</div>

<div class="alt-section">

  <!-- ── brauchen + zu ── -->
  <div class="alt-label">brauchen … nicht/kein/nur + zu + Infinitiv → statt „müssen (nicht)"</div>

  <div class="alt-row-header">
    <span>Modalverb</span>
    <span>Alternative</span>
  </div>

  <div class="alt-row">
    <div class="alt-cell modal">Man <em class="m-verb">muss</em> keine Verkehrsregeln <em class="m-verb">befolgen</em>.</div>
    <div class="alt-cell alt">Man <em class="a-verb">braucht</em> keine Verkehrsregeln <em class="a-verb">zu befolgen</em>.</div>
  </div>
  <div class="alt-row">
    <div class="alt-cell modal">Du <em class="m-verb">musst</em> nicht so früh <em class="m-verb">aufstehen</em>.</div>
    <div class="alt-cell alt">Du <em class="a-verb">brauchst</em> nicht so früh <em class="a-verb">aufzustehen</em>.</div>
  </div>
  <div class="alt-row">
    <div class="alt-cell modal">Man <em class="m-verb">muss</em> nur einen Knopf <em class="m-verb">drücken</em>.</div>
    <div class="alt-cell alt">Man <em class="a-verb">braucht</em> nur einen Knopf <em class="a-verb">zu drücken</em>.</div>
  </div>

  <!-- ── haben + zu ── -->
  <div class="alt-label">haben + zu + Infinitiv → statt „müssen" (aktiv)</div>

  <div class="alt-row-header">
    <span>Modalverb</span>
    <span>Alternative</span>
  </div>

  <div class="alt-row">
    <div class="alt-cell modal">Man <em class="m-verb">muss</em> die Verkehrsregeln <em class="m-verb">befolgen</em>.</div>
    <div class="alt-cell alt">Man <em class="a-verb">hat</em> die Verkehrsregeln <em class="a-verb">zu befolgen</em>.</div>
  </div>
  <div class="alt-row">
    <div class="alt-cell modal">Die Angestellten <em class="m-verb">müssen</em> viel <em class="m-verb">erledigen</em>.</div>
    <div class="alt-cell alt">Die Angestellten <em class="a-verb">haben</em> viel <em class="a-verb">zu erledigen</em>.</div>
  </div>

  <!-- ── sein + zu ── -->
  <div class="alt-label">sein + zu + Infinitiv → statt „können" / „müssen" (passiv)</div>

  <div class="alt-row-header">
    <span>Modalverb + Passiv</span>
    <span>Alternative</span>
  </div>

  <div class="alt-row">
    <div class="alt-cell modal">Das Klima <em class="m-verb">kann</em> beeinflusst <em class="m-verb">werden</em>.</div>
    <div class="alt-cell alt">Das Klima <em class="a-verb">ist</em> <em class="a-verb">zu beeinflussen</em>.</div>
  </div>
  <div class="alt-row">
    <div class="alt-cell modal">Hunde <em class="m-verb">müssen</em> an der Leine geführt <em class="m-verb">werden</em>.</div>
    <div class="alt-cell alt">Hunde <em class="a-verb">sind</em> an der Leine <em class="a-verb">zu führen</em>.</div>
  </div>
  <div class="alt-row">
    <div class="alt-cell modal">Das Jungfraujoch <em class="m-verb">kann</em> nicht mit dem Fahrrad erreicht <em class="m-verb">werden</em>.</div>
    <div class="alt-cell alt">Das Jungfraujoch <em class="a-verb">ist</em> nicht mit dem Fahrrad <em class="a-verb">zu erreichen</em>.</div>
  </div>

  <div class="alt-note">
    <strong>brauchen + zu</strong> → immer mit <em>nicht</em>, <em>kein</em> oder <em>nur</em>. Ohne Negation/Einschränkung benutzt man <em>müssen</em>.<br><br>
    <strong>haben + zu</strong> → formell, aktive Pflicht. Subjekt = Person, die handeln muss.<br><br>
    <strong>sein + zu</strong> → formell, passive Möglichkeit/Pflicht. Subjekt = Sache. Ob <em>können</em> oder <em>müssen</em> gemeint ist, ergibt sich aus dem Kontext.
  </div>
</div>
</div>
```

---

## 5. Verben.html — „wissen vs. kennen" Callout

Place as a callout note near the end of the page, after the DATA section, or as a small HTML block before `</body>`.

### 5a — CSS (add before closing `</style>`, if not already present)

```css
/* ─── wissen vs kennen ─── */
.wk-callout {
  background: #2e2e34;
  border-left: 3px solid #e8a840;
  padding: 14px 18px;
  border-radius: 6px;
  margin: 20px 0;
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.7;
  max-width: 640px;
}
.wk-callout .wk-title {
  font-family: 'JetBrains Mono', monospace;
  font-weight: 700;
  font-size: 14px;
  color: #e8a840;
  margin-bottom: 8px;
}
.wk-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 8px 20px;
  margin: 8px 0;
}
.wk-grid .wk-col-title {
  font-family: 'JetBrains Mono', monospace;
  font-weight: 700;
  font-size: 13px;
  margin-bottom: 2px;
}
.wk-grid em { font-style: normal; font-weight: 600; }
.wk-grid .wk-wissen { color: #60d0e8; }
.wk-grid .wk-kennen { color: #c8a8ff; }
```

### 5b — HTML (place after the special-section / before `<script>`)

```html
<div class="wk-callout">
  <div class="wk-title">wissen vs. kennen</div>
  <div class="wk-grid">
    <div>
      <div class="wk-col-title wk-wissen">wissen</div>
      <div>abstrakt: Informationen, Fakten</div>
      <div style="margin-top:4px;color:#ababba;font-size:12px">+ Nebensatz / Fragewort</div>
      <div style="margin-top:6px"><em class="wk-wissen">Ich weiss</em>, wo das Grossmünster <em class="wk-wissen">ist</em>.</div>
      <div><em class="wk-wissen">Weisst</em> du, wie spät es <em class="wk-wissen">ist</em>?</div>
    </div>
    <div>
      <div class="wk-col-title wk-kennen">kennen</div>
      <div>konkret: Personen, Orte, Dinge</div>
      <div style="margin-top:4px;color:#ababba;font-size:12px">+ Akkusativobjekt</div>
      <div style="margin-top:6px"><em class="wk-kennen">Ich kenne</em> Stephan seit dem Kindergarten.</div>
      <div><em class="wk-kennen">Kennst</em> du ein gutes Restaurant?</div>
    </div>
  </div>
</div>
```

---

## Notes

- **wissen** — mixed conjugation verb (like Modalverben): ich weiss, du weisst, er weiss, wir wissen, ihr wisst, sie wissen. Präteritum: wusste. Added to Verben.html DATA plus the callout for the wissen/kennen distinction.
- **Alternativformen** — three patterns from the Bellingua grammar (M27 Tag 3 page 16): brauchen+zu, haben+zu, sein+zu. All replace Modalverben in formal/written German. The section uses the existing dot-color (#70d890 green, matching Modalverben page) and contrasts modal (grey) with alternative (cyan) for visual clarity.
- **brauchen + zu** — the most common alternative; critically, it ONLY works with nicht/kein/nur. Without negation/restriction → use müssen.
- **sein + zu** — ambiguous between können and müssen; context determines which. This is a classic B1/B2 reading comprehension point.
- **Kassette, Kutsche** — from M26 Tag 4 "Mein erstes Auto, mein erster Computer" reading. Retro/historical vocab.
- **Schlaufe** — from M27 Tag 3 handwritten notes. Swiss German also uses this for "loop" in transit (Endlosschlaufe = infinite loop).
