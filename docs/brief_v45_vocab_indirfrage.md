# V45 — Vocabulary (5 Substantive + 2 Adjektive + 4 Verben) + Indirekte Fragesätze

**Depends on:** V44 deployed.
**Source:** Bellingua Modul 26 Tag 4–5, Modul 27 Tag 4–5 PDFs.

---

## 1. Substantive.html — append to DATA (5 nouns)

```javascript
// ─── V45 additions ───
["Fahrkarte", "die", "-n", "ticket (transport)", "general", "Hast du schon eine Fahrkarte für den Zug gekauft?"],
["Kanal", "der", "Kanäle", "channel; canal", "general", "Auf welchem Kanal läuft die Sendung?"],
["Kontaktlinse", "die", "-n", "contact lens", "general", "Ich trage seit drei Jahren Kontaktlinsen."],
["Kupplung", "die", "-en", "clutch (vehicle)", "general", "Bei einem Gangwechsel muss man die Kupplung treten."],
["Schreibtisch", "der", "-e", "desk", "general", "Auf meinem Schreibtisch liegt immer zu viel Papier."],
```

## 2. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V45 additions ───
["durchdacht", "durchdachter", "am durchdachtesten", "well-thought-out", "quality", "regular", "Das ist ein sehr durchdachter Plan."],
["familienfreundlich", "familienfreundlicher", "am familienfreundlichsten", "family-friendly", "quality", "regular", "Die Stadt ist sehr familienfreundlich."],
```

## 3. Verben.html — append to DATA (4 verbs)

```javascript
// ─── V45 additions ───
["aufladen", "Akk", "hat aufgeladen", "to charge; to load up", "s", "Ich muss mein Handy aufladen."],
["einführen", "Akk", "hat eingeführt", "to introduce, to implement", "w", "Die Firma hat ein neues System eingeführt."],
["komponieren", "Akk", "hat komponiert", "to compose (music)", "w", "Beethoven hat neun Sinfonien komponiert."],
["schneien", "Ohne", "hat geschneit", "to snow", "w", "Im Winter schneit es in Zürich selten."],
```

Add to IRREGULAR in Verben.html:

```javascript
"aufladen":["lädt auf","lud auf"],
```

Add to WEAK in Verben.html:

```javascript
"einführen":["führt ein","führte ein"],
"komponieren":["komponiert","komponierte"],
"schneien":["schneit","schneite"],
```

---

## 4. Nebensaetze.html — new "Indirekte Fragesätze" section

Place **after** the Temporale Konnektoren section.

### 4a — CSS (add before closing `</style>`)

```css
/* ─── Indirekte Fragesätze ─── */
.ifr-section {
  margin-top: 28px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.ifr-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 4px;
}
.ifr-subtitle {
  font-size: 12px;
  color: #ababba;
  margin-bottom: 14px;
  line-height: 1.5;
}
.ifr-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px;
  font-weight: 600;
  color: #c8a8ff;
  margin: 16px 0 6px;
}
.ifr-pair {
  margin: 10px 0;
  font-size: 13px;
  line-height: 1.7;
}
.ifr-pair .ifr-direct {
  color: #ababba;
  padding-left: 12px;
  border-left: 2px solid #3a3a40;
}
.ifr-pair .ifr-direct em { color: #e8a840; font-style: normal; font-weight: 600; }
.ifr-pair .ifr-indirect {
  color: #e0e0e4;
  padding-left: 12px;
  border-left: 2px solid #60d0e8;
  margin-top: 2px;
}
.ifr-pair .ifr-indirect em { color: #60d0e8; font-style: normal; font-weight: 600; }
.ifr-pair .ifr-indirect .ifr-verb { color: #e8a840; font-weight: 600; }
.ifr-intro-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4px 20px;
  font-size: 13px;
  margin: 8px 0 14px;
  padding-left: 4px;
}
.ifr-intro-grid span { color: #c8c8d0; }
.ifr-intro-grid em { color: #60d0e8; font-style: normal; font-weight: 600; }
.ifr-note {
  background: #333338;
  border-left: 3px solid #60d0e8;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.ifr-note strong { color: #60d0e8; font-weight: 600; }
.ifr-note em { color: #e8a840; font-style: normal; }
.ifr-wo-grid {
  display: grid;
  grid-template-columns: auto 1fr auto 1fr;
  gap: 4px 16px;
  font-size: 13px;
  margin: 8px 0;
}
.ifr-wo-grid .wo-label { color: #c8a8ff; font-family: 'JetBrains Mono', monospace; font-weight: 600; font-size: 12px; }
.ifr-wo-grid .wo-ex { color: #c8c8d0; }
.ifr-wo-grid .wo-ex em { color: #60d0e8; font-style: normal; }

@media(max-width:600px){
  .ifr-intro-grid{grid-template-columns:1fr;}
  .ifr-wo-grid{grid-template-columns:auto 1fr;gap:2px 12px;}
}
```

### 4b — HTML

```html
<!-- ═══ INDIREKTE FRAGESÄTZE ═══ -->
<div class="ifr-section">
  <div class="ifr-title">Indirekte Fragesätze</div>
  <div class="ifr-subtitle">
    Eine direkte Frage wird zum Nebensatz → das Verb geht <strong style="color:#e8a840">ans Ende</strong>.
  </div>

  <div class="ifr-label">Ja/Nein-Fragen → ob</div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Kommt</em> er morgen? (direkt)</div>
    <div class="ifr-indirect">Ich weiss nicht, <em>ob</em> er morgen <span class="ifr-verb">kommt</span>. (indirekt)</div>
  </div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Haben</em> sie Bananen? (direkt)</div>
    <div class="ifr-indirect">Ich möchte wissen, <em>ob</em> sie Bananen <span class="ifr-verb">haben</span>.</div>
  </div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Gibt</em> es hier eine Apotheke? (direkt)</div>
    <div class="ifr-indirect">Weisst du, <em>ob</em> es hier eine Apotheke <span class="ifr-verb">gibt</span>?</div>
  </div>

  <div class="ifr-label">W-Fragen → W-Wort bleibt</div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Wer</em> ist heute im Urlaub?</div>
    <div class="ifr-indirect">Markus hat gefragt, <em>wer</em> heute im Urlaub <span class="ifr-verb">ist</span>.</div>
  </div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Wo</em> kann ich einsteigen?</div>
    <div class="ifr-indirect">Könnten Sie mir sagen, <em>wo</em> ich einsteigen <span class="ifr-verb">kann</span>?</div>
  </div>

  <div class="ifr-pair">
    <div class="ifr-direct"><em>Warum</em> hat er das gemacht?</div>
    <div class="ifr-indirect">Ich bin nicht sicher, <em>warum</em> er das <span class="ifr-verb">gemacht hat</span>.</div>
  </div>

  <div class="ifr-label">Typische Einleitungen</div>
  <div class="ifr-intro-grid">
    <span>Ich möchte wissen, <em>ob/W</em> …</span>
    <span>Könnten Sie mir sagen, <em>ob/W</em> …?</span>
    <span>Weisst du, <em>ob/W</em> …?</span>
    <span>Ich frage mich, <em>ob/W</em> …</span>
    <span>Ich habe keine Ahnung, <em>W</em> …</span>
    <span>Ich habe vergessen, <em>ob/W</em> …</span>
    <span>Es ist unklar, <em>ob/W</em> …</span>
    <span>Sag mir bitte, <em>ob/W</em> …</span>
  </div>

  <div class="ifr-label">wo- + Präposition (für Sachen)</div>
  <div class="ifr-subtitle" style="margin-bottom:6px">
    Bei Verben mit Präpositionalergänzung: <strong style="color:#c8a8ff">wo(r) + Präposition</strong> für Sachen, <strong style="color:#c8a8ff">Präposition + wen/wem</strong> für Personen.
  </div>

  <div class="ifr-wo-grid">
    <span class="wo-label">worüber</span>  <span class="wo-ex">Sag mir, <em>worüber</em> du gesprochen <em>hast</em>.</span>
    <span class="wo-label">über wen</span> <span class="wo-ex">Sag mir, <em>über wen</em> du gesprochen <em>hast</em>.</span>

    <span class="wo-label">woran</span>   <span class="wo-ex">Ich frage mich, <em>woran</em> er <em>denkt</em>.</span>
    <span class="wo-label">an wen</span>  <span class="wo-ex">Ich frage mich, <em>an wen</em> er <em>denkt</em>.</span>

    <span class="wo-label">worauf</span>  <span class="wo-ex">Weisst du, <em>worauf</em> sie sich <em>freut</em>?</span>
    <span class="wo-label">auf wen</span> <span class="wo-ex">Weisst du, <em>auf wen</em> sie <em>wartet</em>?</span>

    <span class="wo-label">wovon</span>   <span class="wo-ex">Erzähl mir, <em>wovon</em> du <em>träumst</em>.</span>
    <span class="wo-label">wovor</span>   <span class="wo-ex">Er fragt, <em>wovor</em> ich mich <em>fürchte</em>.</span>
  </div>

  <div class="ifr-note">
    <strong>Regel:</strong> Beginnt die Präposition mit einem Vokal, wird <strong>wor-</strong> benutzt (wor<em>an</em>, wor<em>auf</em>, wor<em>über</em>). Sonst <strong>wo-</strong> (wo<em>mit</em>, wo<em>von</em>, wo<em>für</em>, wo<em>vor</em>).<br><br>
    <strong>Satzzeichen:</strong> Wenn der Hauptsatz eine Frage ist, steht am Ende ein Fragezeichen:<br>
    Weisst du, ob er kommt<em>?</em> — Aber: Ich weiss nicht, ob er kommt<em>.</em>
  </div>
</div>
```

---

## Notes

- **Fahrkarte** — Kompositum (Fahrt + Karte), but "Fahrkarte" is idiomatic and more specific than both base words. Swiss context: Billett is also used, but Fahrkarte is standard.
- **Kanal** — dual meaning: (1) TV/radio channel, (2) water canal. Irregular plural: Kanäle.
- **Kupplung** — from kuppeln. Useful car vocab alongside existing Gangwechsel/fahren context.
- **aufladen** — strong verb: lädt auf, lud auf, hat aufgeladen. Same pattern as laden (ä, u, a). Trennbar.
- **durchdacht** — actually a Partizip II of durchdenken, but used as a regular adjective. Regular comparison.
- **Indirekte Fragesätze** — the section bridges two topics: (1) ob/W-Wort as Nebensatz-Einleitungen (standard B1), and (2) wo(r)+Präposition vs. Präp+wen/wem for indirect questions about prepositional complements — ties directly back to V44's Verben mit Präpositionalergänzung. The wo(r)- forms are a common pain point and having them next to each other reinforces the pattern.
- **Placement:** After Temporale Konnektoren in Nebensaetze.html. Natural flow: dass-Sätze → Infinitivsätze → Konnektoren-Tabelle → Zweigliedrige → Temporale → Indirekte Fragesätze.
- **Satzzeichen-Hinweis:** Included because learners often mix up when to use ? vs . in indirect questions — it depends on whether the *Hauptsatz* is a question, not the embedded clause.
