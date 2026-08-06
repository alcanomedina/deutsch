# V42 — Vocabulary (10 Substantive + 3 Adjektive + 2 Verben) + Futur I + Nominalisierte Adjektive

**Depends on:** V41 deployed.
**Source:** Bellingua Modul 25–26 PDFs (vocabulary + grammar gaps).

---

## 1. Substantive.html — append to DATA (10 nouns)

```javascript
// ─── V42 additions ───
["Ausrede", "die", "-n", "excuse", "general", "Das ist keine Ausrede für dein Verhalten."],
["Ehepaar", "das", "-e", "married couple", "general", "Das Ehepaar feiert heute seinen 25. Hochzeitstag."],
["Flosse", "die", "-n", "fin, flipper", "animal", "Fische bewegen sich mit ihren Flossen fort."],
["Kruste", "die", "-n", "crust", "food", "Die Kruste des Brotes ist besonders knusprig."],
["Maulwurf", "der", "Maulwürfe", "mole", "animal", "Der Maulwurf gräbt Tunnel unter dem Rasen."],
["Pfütze", "die", "-n", "puddle", "nature", "Die Kinder springen gern in die Pfützen."],
["Portemonnaie", "das", "-s", "wallet, purse", "general", "Ich habe mein Portemonnaie zu Hause vergessen."],
["Schlacht", "die", "-en", "battle", "general", "Die Schlacht bei Waterloo war ein Wendepunkt."],
["Säule", "die", "-n", "column, pillar", "general", "Das Gebäude wird von vier Säulen getragen."],
["Spitze", "die", "-n", "tip, peak; lace", "general", "Von der Spitze des Berges hat man eine tolle Aussicht."],
```

## 2. Adjektive.html — append to DATA (3 adjectives)

```javascript
// ─── V42 additions ───
["abhängig", "abhängiger", "am abhängigsten", "dependent", "quality", "regular", "Der Erfolg ist abhängig von der Vorbereitung."],
["blind", "blinder", "am blindesten", "blind", "quality", "regular", "Er war blind vor Liebe."],
["unschuldig", "unschuldiger", "am unschuldigsten", "innocent", "quality", "regular", "Das Kind schaute mich mit unschuldigen Augen an."],
```

## 3. Verben.html — append to DATA (2 verbs)

```javascript
// ─── V42 additions ───
["drücken", "Akk", "hat gedrückt", "to press, to push; to squeeze", "w", "Drück bitte den Knopf!"],
["kriechen", "Ohne", "ist gekrochen", "to crawl, to creep", "s", "Das Baby kriecht schon durch die ganze Wohnung."],
```

Add to IRREGULAR in Verben.html:

```javascript
"kriechen":["kriecht","kroch"],
```

Add to WEAK in Verben.html:

```javascript
"drücken":["drückt","drückte"],
```

---

## 4. Konjugation.html — new Futur I section

Place **after** the Plusquamperfekt section, as a new `sec-label` block.

### 4a — CSS (add before closing `</style>`)

```css
/* ─── Futur I ─── */
.futur-grid {
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 4px 16px;
  font-size: 14px;
  margin: 12px 0 16px;
  max-width: 420px;
}
.futur-grid .fg-pron { color: #ababba; font-family: 'JetBrains Mono', monospace; font-size: 13px; }
.futur-grid .fg-form { color: #e0e0e4; }
.futur-grid .fg-form em { color: #60d0e8; font-style: normal; font-weight: 600; }
.futur-note {
  background: #2e2e34;
  border-left: 3px solid #60d0e8;
  padding: 12px 16px;
  border-radius: 6px;
  margin: 12px 0;
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.6;
}
.futur-note strong { color: #60d0e8; font-weight: 600; }
.futur-ex {
  margin: 6px 0;
  padding-left: 12px;
  border-left: 2px solid #3a3a40;
  color: #c8c8d0;
  font-size: 13px;
  line-height: 1.7;
}
.futur-ex em { color: #e8a840; font-style: normal; }
```

### 4b — HTML (insert after the Plusquamperfekt section's closing content, before `<script>`)

```html
<!-- ═══ FUTUR I ═══ -->
<div class="sec-label" style="margin-top:32px"><span class="dot" style="background:#60d0e8"></span> Futur I</div>

<div style="color:#ababba;font-size:13px;margin-bottom:8px">
  Bildung: <strong style="color:#60d0e8">werden</strong> <span style="color:#ababba">(konjugiert)</span> + <strong style="color:#e8a840">Infinitiv</strong> <span style="color:#ababba">(am Satzende)</span>
</div>

<div class="futur-grid">
  <span class="fg-pron">ich</span>     <span class="fg-form"><em>werde</em> … Infinitiv</span>
  <span class="fg-pron">du</span>      <span class="fg-form"><em>wirst</em> … Infinitiv</span>
  <span class="fg-pron">er/sie/es</span> <span class="fg-form"><em>wird</em> … Infinitiv</span>
  <span class="fg-pron">wir</span>     <span class="fg-form"><em>werden</em> … Infinitiv</span>
  <span class="fg-pron">ihr</span>     <span class="fg-form"><em>werdet</em> … Infinitiv</span>
  <span class="fg-pron">sie/Sie</span> <span class="fg-form"><em>werden</em> … Infinitiv</span>
</div>

<div style="color:#c8a8ff;font-size:13px;font-weight:600;margin:16px 0 6px">Verwendung</div>

<div class="futur-ex">
  <strong style="color:#60d0e8;font-size:12px">Zukunft</strong><br>
  Morgen <em>werde</em> ich einkaufen <em>gehen</em>.<br>
  Nächstes Jahr <em>werden</em> wir nach Japan <em>reisen</em>.
</div>

<div class="futur-ex">
  <strong style="color:#60d0e8;font-size:12px">Vermutung</strong><br>
  Er <em>wird</em> wohl krank <em>sein</em>.<br>
  Sie <em>wird</em> wahrscheinlich schon zu Hause <em>sein</em>.
</div>

<div class="futur-ex">
  <strong style="color:#60d0e8;font-size:12px">Versprechen / Vorsatz</strong><br>
  Ich <em>werde</em> das nie <em>vergessen</em>.<br>
  Wir <em>werden</em> unser Bestes <em>tun</em>.
</div>

<div class="futur-note">
  <strong>Gesprochenes Deutsch:</strong> Oft wird <strong>Präsens + Zeitangabe</strong> statt Futur I benutzt:<br>
  <em style="color:#e8a840">Morgen gehe ich einkaufen.</em> = <em style="color:#e8a840">Morgen werde ich einkaufen gehen.</em><br><br>
  <strong>Nebensatz-Wortstellung:</strong> <em>werden</em> geht ans Satzende:<br>
  Ich weiss, dass er morgen <em style="color:#e8a840">kommen wird</em>.
</div>
```

---

## 5. Adjektivendungen.html — new "Nominalisierte Adjektive" section

Place **after** the Spezielle Formen `<div class="special-section">` block, before the closing `</div><!-- /.container -->` (or before `<script>`).

### 5a — CSS (add before closing `</style>`)

```css
/* ─── Nominalisierte Adjektive ─── */
.nom-adj-section {
  margin-top: 28px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.nom-adj-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 12px;
}
.nom-adj-subtitle {
  font-size: 12px;
  color: #ababba;
  margin-bottom: 14px;
  line-height: 1.5;
}
.nom-grid {
  display: grid;
  grid-template-columns: 80px 1fr 1fr;
  gap: 0;
  font-size: 13px;
  margin-bottom: 16px;
  border-radius: 6px;
  overflow: hidden;
  max-width: 520px;
}
.nom-grid .ng-header {
  background: #3a3a42;
  padding: 8px 12px;
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 11px;
  color: #c8c8d0;
  text-align: center;
}
.nom-grid .ng-case {
  background: #333338;
  padding: 8px 12px;
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 12px;
  color: #ababba;
  display: flex;
  align-items: center;
}
.nom-grid .ng-cell {
  padding: 8px 12px;
  color: #e0e0e4;
  border-bottom: 1px solid #3a3a40;
  text-align: center;
}
.nom-grid .ng-cell em { color: #60d0e8; font-style: normal; font-weight: 700; }
.nom-adj-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px;
  font-weight: 600;
  color: #c8a8ff;
  margin: 16px 0 6px;
}
.nom-adj-ex {
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.7;
  margin: 4px 0 4px 12px;
  border-left: 2px solid #3a3a40;
  padding-left: 12px;
}
.nom-adj-ex em { color: #e8a840; font-style: normal; }
.nom-adj-note {
  background: #333338;
  border-left: 3px solid #e8a840;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.nom-adj-note strong { color: #e8a840; font-weight: 600; }
```

### 5b — HTML

```html
<div class="nom-adj-section">
  <div class="nom-adj-title">Nominalisierte Adjektive</div>
  <div class="nom-adj-subtitle">
    Nach <strong style="color:#60d0e8">viel · etwas · wenig · nichts</strong> und <strong style="color:#c8a8ff">alles</strong> wird das Adjektiv gross geschrieben und dekliniert wie ein Neutrum Singular.
  </div>

  <div class="nom-adj-label">viel / etwas / wenig / nichts + Adjektiv</div>
  <div class="nom-adj-subtitle">→ Deklination wie Neutrum Singular <strong style="color:#60d0e8">ohne Artikel</strong></div>

  <div class="nom-grid">
    <div class="ng-header"></div>
    <div class="ng-header">Pronomen</div>
    <div class="ng-header">+ Adjektiv</div>

    <div class="ng-case">NOM</div>
    <div class="ng-cell">etwas / nichts / …</div>
    <div class="ng-cell">Schön<em>es</em></div>

    <div class="ng-case">AKK</div>
    <div class="ng-cell">etwas / nichts / …</div>
    <div class="ng-cell">Schön<em>es</em></div>

    <div class="ng-case">DAT</div>
    <div class="ng-cell">(mit) etwas / nichts / …</div>
    <div class="ng-cell">Schön<em>em</em></div>
  </div>

  <div class="nom-adj-label">alles + Adjektiv</div>
  <div class="nom-adj-subtitle">→ Deklination wie Neutrum Singular <strong style="color:#c8a8ff">mit bestimmtem Artikel</strong> (<em>alles</em> ist ein Artikelwort)</div>

  <div class="nom-grid">
    <div class="ng-header"></div>
    <div class="ng-header">Pronomen</div>
    <div class="ng-header">+ Adjektiv</div>

    <div class="ng-case">NOM</div>
    <div class="ng-cell">alles</div>
    <div class="ng-cell">Schön<em>e</em></div>

    <div class="ng-case">AKK</div>
    <div class="ng-cell">alles</div>
    <div class="ng-cell">Schön<em>e</em></div>

    <div class="ng-case">DAT</div>
    <div class="ng-cell">(mit) allem</div>
    <div class="ng-cell">Schön<em>en</em></div>
  </div>

  <div class="nom-adj-label">Beispiele</div>
  <div class="nom-adj-ex">
    Wir haben viel <em>Interessantes</em> erlebt.<br>
    Ist etwas <em>Schlimmes</em> passiert?<br>
    Ich wünsche mir nichts <em>Anderes</em> als einen freien Tag.<br>
    Alles <em>Gute</em> zum Geburtstag!<br>
    Ich freue mich über alles <em>Neue</em> im Leben.<br>
    Von allem <em>Schönen</em> war das der beste Moment.
  </div>

  <div class="nom-adj-note">
    <strong>Merke:</strong> Das nominalisierte Adjektiv wird immer <strong>gross</strong> geschrieben — ausser <em>anders</em> (etwas anderes).<br>
    Genitiv kommt in dieser Konstruktion praktisch nicht vor.
  </div>
</div>
```

---

## Notes

- **Portemonnaie** — French loan word. Swiss spelling with -ai (not Portmonee). Plural -s.
- **Spitze** — dual meaning: (1) tip/peak/top, (2) lace (fabric). Main meaning in example is "peak."
- **kriechen** — strong verb, auxiliary *ist* (Fortbewegung). Ablaut: ei→o→o (kriecht, kroch, ist gekrochen).
- **drücken** — weak. Common in Redensarten: *jemandem die Daumen drücken* (wish luck), *ein Auge zudrücken* (turn a blind eye).
- **abhängig** — typically used with *von + Dat*: *abhängig von etwas/jemandem sein*.
- **Futur I** — placed after PQP section as it's the last major tense gap. Color coding: cyan (#60d0e8) for *werden*, gold (#e8a840) for infinitive — consistent with existing page accents.
- **Nominalisierte Adjektive** — placed after Spezielle Formen as a companion reference. The key teaching point: *etwas/nichts* trigger **ohne-Artikel** declension (-es/-em), while *alles* triggers **bestimmter-Artikel** declension (-e/-en) because *alles* functions as an article word.
