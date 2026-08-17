# V44 — Vocabulary (5 Substantive + 2 Adjektive + 5 Verben) + Verben mit Präpositionalergänzung

**Depends on:** V43 deployed.
**Source:** Bellingua Modul 26 Tag 4, Modul 27 Tag 4–5 PDFs + Alex's verb list.

---

## 1. Substantive.html — append to DATA (5 nouns)

```javascript
// ─── V44 additions ───
["Abgas", "das", "-e", "exhaust fumes", "general", "Autos produzieren viele schädliche Abgase."],
["Erschöpfung", "die", "-en", "exhaustion", "general", "Nach dem Marathon war die Erschöpfung gross."],
["Geldschein", "der", "-e", "banknote, bill", "general", "Er bezahlte mit einem 50-Franken-Geldschein."],
["Sockel", "der", "-", "pedestal, base", "general", "Die Statue steht auf einem hohen Sockel."],
["Ärmel", "der", "-", "sleeve", "general", "Kremple bitte die Ärmel hoch!"],
```

## 2. Adjektive.html — append to DATA (2 adjectives)

```javascript
// ─── V44 additions ───
["sehenswert", "sehenswerter", "am sehenswertesten", "worth seeing", "quality", "regular", "Die Altstadt von Bern ist sehr sehenswert."],
["ungefähr", "—", "—", "approximately", "quantity", "no_comp", "Es dauert ungefähr zwei Stunden."],
```

**Note on ungefähr:** Not meaningfully comparable; mark as `no_comp` or equivalent (handle same way as similar entries). If the code doesn't support `no_comp`, use `"regular"` and leave `"—"` for comparative/superlative.

## 3. Verben.html — append to DATA (5 verbs)

```javascript
// ─── V44 additions ───
["ablenken", "Akk", "hat abgelenkt", "to distract", "w", "Das Handy lenkt mich von der Arbeit ab."],
["leiten", "Akk", "hat geleitet", "to lead, to direct; to conduct", "w", "Sie leitet das Team seit zwei Jahren."],
["schieben", "Akk", "hat geschoben", "to push, to slide", "s", "Er schiebt den Kinderwagen durch den Park."],
["sich anstrengen", "Ohne", "hat sich angestrengt", "to make an effort", "w", "Streng dich ein bisschen mehr an!"],
["sich verabreden", "mit+Dat", "hat sich verabredet", "to arrange to meet", "w", "Ich habe mich mit Freunden zum Abendessen verabredet."],
```

Add to IRREGULAR in Verben.html:

```javascript
"schieben":["schiebt","schob"],
```

Add to WEAK in Verben.html:

```javascript
"ablenken":["lenkt ab","lenkte ab"],
"leiten":["leitet","leitete"],
"sich anstrengen":["strengt sich an","strengte sich an"],
"sich verabreden":["verabredet sich","verabredete sich"],
```

---

## 4. Praepositionen.html — new "Verben mit Präpositionalergänzung" section

Place **after** the Genitiv section, as a new standalone section at the bottom.

### 4a — CSS (add before closing `</style>`)

```css
/* ─── Verben mit Präpositionalergänzung ─── */
.vp-section {
  margin-top: 32px;
  padding: 20px;
  background: #2e2e34;
  border-radius: 8px;
}
.vp-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 16px;
  font-weight: 700;
  color: #f0f0f4;
  margin-bottom: 4px;
}
.vp-subtitle {
  font-size: 12px;
  color: #ababba;
  margin-bottom: 16px;
  line-height: 1.5;
}
.vp-prep-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 14px;
  font-weight: 700;
  margin: 18px 0 6px;
  padding: 4px 10px;
  border-radius: 4px;
  display: inline-block;
}
.vp-akk { background: #1e3a5f; color: #8ec4ff; }
.vp-dat { background: #5a1e3a; color: #ffa0c8; }
.vp-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4px 24px;
  font-size: 13px;
  margin: 6px 0 12px;
  padding-left: 4px;
}
.vp-grid .vp-verb { color: #e0e0e4; font-weight: 600; }
.vp-grid .vp-ex { color: #ababba; font-size: 12px; font-style: italic; }
.vp-grid .vp-ex em { color: #e8a840; font-style: normal; }
.vp-note {
  background: #333338;
  border-left: 3px solid #c8a8ff;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.vp-note strong { color: #c8a8ff; font-weight: 600; }
.vp-note em { color: #e8a840; font-style: normal; }

@media(max-width:600px){
  .vp-grid{grid-template-columns:1fr;gap:2px;}
}
```

### 4b — HTML

```html
<!-- ═══ VERBEN MIT PRÄPOSITIONALERGÄNZUNG ═══ -->
<div class="vp-section">
  <div class="vp-title">Verben mit Präpositionalergänzung</div>
  <div class="vp-subtitle">Viele Verben haben eine feste Präposition mit festem Kasus. Diese muss man lernen.<br>
  <strong style="color:#8ec4ff">blau</strong> = Akkusativ &nbsp;&nbsp; <strong style="color:#ffa0c8">rosa</strong> = Dativ</div>

  <!-- ── an ── -->
  <div class="vp-prep-label vp-akk">an + Akk</div>
  <div class="vp-grid">
    <span class="vp-verb">denken an</span>     <span class="vp-ex">Er denkt nur noch <em>an sie</em>.</span>
    <span class="vp-verb">sich erinnern an</span> <span class="vp-ex">Ich erinnere mich <em>an den Urlaub</em>.</span>
    <span class="vp-verb">glauben an</span>    <span class="vp-ex">Glaubst du <em>an ein Leben nach dem Tod</em>?</span>
    <span class="vp-verb">sich gewöhnen an</span> <span class="vp-ex">Ich gewöhne mich <em>an das Klima</em>.</span>
  </div>

  <div class="vp-prep-label vp-dat">an + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">leiden an</span>     <span class="vp-ex">Er leidet <em>an einer Allergie</em>.</span>
    <span class="vp-verb">sterben an</span>    <span class="vp-ex">Viele starben <em>an der Krankheit</em>.</span>
    <span class="vp-verb">teilnehmen an</span> <span class="vp-ex">Alle nehmen <em>am Kurs</em> teil.</span>
    <span class="vp-verb">zweifeln an</span>   <span class="vp-ex">Ich zweifle <em>an seiner Ehrlichkeit</em>.</span>
  </div>

  <!-- ── auf ── -->
  <div class="vp-prep-label vp-akk">auf + Akk</div>
  <div class="vp-grid">
    <span class="vp-verb">achten auf</span>      <span class="vp-ex">Achte <em>auf die Aussprache</em>!</span>
    <span class="vp-verb">aufpassen auf</span>    <span class="vp-ex">Kannst du <em>auf die Kinder</em> aufpassen?</span>
    <span class="vp-verb">sich freuen auf</span>  <span class="vp-ex">Ich freue mich <em>auf die Ferien</em>. (Zukunft)</span>
    <span class="vp-verb">hoffen auf</span>       <span class="vp-ex">Wir hoffen <em>auf besseres Wetter</em>.</span>
    <span class="vp-verb">reagieren auf</span>    <span class="vp-ex">Sie hat <em>auf meine E-Mail</em> reagiert.</span>
    <span class="vp-verb">sich vorbereiten auf</span> <span class="vp-ex">Ich bereite mich <em>auf die Prüfung</em> vor.</span>
    <span class="vp-verb">verzichten auf</span>   <span class="vp-ex">Er verzichtet <em>auf Alkohol</em>.</span>
    <span class="vp-verb">warten auf</span>       <span class="vp-ex">Ich warte <em>auf den Bus</em>.</span>
  </div>

  <!-- ── für ── -->
  <div class="vp-prep-label vp-akk">für + Akk</div>
  <div class="vp-grid">
    <span class="vp-verb">danken für</span>       <span class="vp-ex">Ich danke dir <em>für deine Hilfe</em>.</span>
    <span class="vp-verb">sich entscheiden für</span> <span class="vp-ex">Wir entscheiden uns <em>für das Restaurant</em>.</span>
    <span class="vp-verb">sich interessieren für</span> <span class="vp-ex">Ich interessiere mich <em>für Geschichte</em>.</span>
    <span class="vp-verb">sorgen für</span>       <span class="vp-ex">Wir sorgen <em>für die Getränke</em>.</span>
  </div>

  <!-- ── mit ── -->
  <div class="vp-prep-label vp-dat">mit + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">anfangen mit</span>     <span class="vp-ex">Wir fangen <em>mit der Aufgabe</em> an.</span>
    <span class="vp-verb">aufhören mit</span>     <span class="vp-ex">Hör <em>mit dem Lärm</em> auf!</span>
    <span class="vp-verb">sich beschäftigen mit</span> <span class="vp-ex">Er beschäftigt sich <em>mit Lego</em>.</span>
    <span class="vp-verb">sprechen mit</span>     <span class="vp-ex">Ich spreche <em>mit meinem Chef</em>.</span>
    <span class="vp-verb">sich verabreden mit</span>  <span class="vp-ex">Ich verabrede mich <em>mit Freunden</em>.</span>
    <span class="vp-verb">vergleichen mit</span>  <span class="vp-ex">Man kann Zürich <em>mit Wien</em> vergleichen.</span>
  </div>

  <!-- ── nach ── -->
  <div class="vp-prep-label vp-dat">nach + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">fragen nach</span>      <span class="vp-ex">Er fragt <em>nach dem Weg</em>.</span>
    <span class="vp-verb">sich erkundigen nach</span> <span class="vp-ex">Sie erkundigt sich <em>nach dem Preis</em>.</span>
    <span class="vp-verb">riechen nach</span>     <span class="vp-ex">Es riecht <em>nach Kaffee</em>.</span>
    <span class="vp-verb">suchen nach</span>      <span class="vp-ex">Ich suche <em>nach einer Lösung</em>.</span>
  </div>

  <!-- ── über ── -->
  <div class="vp-prep-label vp-akk">über + Akk</div>
  <div class="vp-grid">
    <span class="vp-verb">berichten über</span>     <span class="vp-ex">Die Zeitung berichtet <em>über die Wahl</em>.</span>
    <span class="vp-verb">sich beschweren über</span> <span class="vp-ex">Er beschwert sich <em>über den Lärm</em>.</span>
    <span class="vp-verb">diskutieren über</span>   <span class="vp-ex">Wir diskutieren <em>über Politik</em>.</span>
    <span class="vp-verb">sich freuen über</span>   <span class="vp-ex">Ich freue mich <em>über das Geschenk</em>. (Gegenwart)</span>
    <span class="vp-verb">nachdenken über</span>    <span class="vp-ex">Ich denke <em>über dein Angebot</em> nach.</span>
    <span class="vp-verb">sprechen über</span>      <span class="vp-ex">Wir sprechen <em>über das Problem</em>.</span>
  </div>

  <!-- ── um ── -->
  <div class="vp-prep-label vp-akk">um + Akk</div>
  <div class="vp-grid">
    <span class="vp-verb">bitten um</span>        <span class="vp-ex">Ich bitte dich <em>um einen Gefallen</em>.</span>
    <span class="vp-verb">sich kümmern um</span>  <span class="vp-ex">Wer kümmert sich <em>um die Katze</em>?</span>
    <span class="vp-verb">sich sorgen um</span>   <span class="vp-ex">Ich sorge mich <em>um seine Gesundheit</em>.</span>
  </div>

  <!-- ── von ── -->
  <div class="vp-prep-label vp-dat">von + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">abhängen von</span>      <span class="vp-ex">Es hängt <em>vom Wetter</em> ab.</span>
    <span class="vp-verb">erzählen von</span>      <span class="vp-ex">Erzähl mir <em>von deiner Reise</em>!</span>
    <span class="vp-verb">sich erholen von</span>  <span class="vp-ex">Ich erhole mich <em>vom Stress</em>.</span>
    <span class="vp-verb">träumen von</span>       <span class="vp-ex">Ich träume <em>von einer Weltreise</em>.</span>
  </div>

  <!-- ── vor ── -->
  <div class="vp-prep-label vp-dat">vor + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">sich fürchten vor</span> <span class="vp-ex">Er fürchtet sich <em>vor Spinnen</em>.</span>
    <span class="vp-verb">warnen vor</span>        <span class="vp-ex">Experten warnen <em>vor der Hitze</em>.</span>
  </div>

  <!-- ── zu ── -->
  <div class="vp-prep-label vp-dat">zu + Dat</div>
  <div class="vp-grid">
    <span class="vp-verb">gehören zu</span>       <span class="vp-ex">Das gehört <em>zum Leben</em>.</span>
    <span class="vp-verb">gratulieren zu</span>   <span class="vp-ex">Ich gratuliere dir <em>zum Geburtstag</em>!</span>
    <span class="vp-verb">einladen zu</span>      <span class="vp-ex">Wir laden euch <em>zur Hochzeit</em> ein.</span>
    <span class="vp-verb">passen zu</span>        <span class="vp-ex">Die Bluse passt <em>zu deinem Rock</em>.</span>
  </div>

  <div class="vp-note">
    <strong>sich freuen auf vs. über:</strong><br>
    <em>auf</em> + Akk = Vorfreude (Zukunft): Ich freue mich <em>auf</em> den Urlaub.<br>
    <em>über</em> + Akk = Freude (Gegenwart/Vergangenheit): Ich freue mich <em>über</em> das Geschenk.<br><br>
    <strong>sprechen / erzählen / berichten:</strong><br>
    <em>über</em> + Akk = Thema: Wir sprechen <em>über</em> Politik.<br>
    <em>von</em> + Dat = Thema (informeller): Wir sprechen <em>von</em> Politik.<br>
    <em>mit</em> + Dat = Gesprächspartner: Ich spreche <em>mit</em> meinem Chef.
  </div>
</div>
```

---

## Notes

- **Geldschein** — Kompositum (Geld + Schein), but both meanings are distinct enough to justify the compound. Schein = note/certificate, Geldschein = banknote specifically.
- **Abgas** — das Abgas, -e. Common in Umwelt/Transport context.
- **schieben** — strong verb: schiebt, schob, hat geschoben. Ablaut ie→o→o.
- **ungefähr** — functions as adverb and adjective. No meaningful comparative. Used as adjective predicatively: *Die ungefähre Anzahl.*
- **Verben mit Präpositionalergänzung** — curated 50 most important combos from the Bellingua A2-B1 list (pages 15-17 of M27 Tag 4). Organized by preposition for lookup, color-coded Akk (blau) / Dat (rosa) matching existing Praepositionen.html badges. The auf/über freuen distinction and sprechen variants are highlighted in a note box — both are common B1 traps.
- **Placement:** After Genitiv section in Praepositionen.html as the final reference block. Natural extension: the page already teaches which prepositions take which case; this section shows which verbs demand which preposition.
