# V47 — New Schreiben.html Page + Vocabulary (2 Substantive + 1 Adjektiv + 2 Verben)

**Depends on:** V46 deployed.
**Source:** Bellingua Modul 27 Tag 1 (Goethe-Prüfung B1 Schreiben Redemittel), Modul 27 Tag 5 (Kommaregeln), Alex's word list.

---

## 1. Substantive.html — append to DATA (2 nouns)

```javascript
// ─── V47 additions ───
["Aufenthaltsbewilligung", "die", "-en", "residence permit (CH)", "general", "Für die Aufenthaltsbewilligung braucht man einen Arbeitsvertrag."],
["Fahrer", "der", "-", "driver", "general", "Der Fahrer musste plötzlich bremsen."],
```

## 2. Adjektive.html — append to DATA (1 adjective)

```javascript
// ─── V47 additions ───
["sinnlos", "sinnloser", "am sinnlosesten", "pointless, senseless", "quality", "regular", "Es ist sinnlos, darüber zu diskutieren."],
```

## 3. Verben.html — append to DATA (2 verbs)

```javascript
// ─── V47 additions ───
["sinken", "Ohne", "ist gesunken", "to sink, to decrease", "s", "Die Temperaturen sind unter null gesunken."],
["steigen", "Ohne", "ist gestiegen", "to climb, to rise", "s", "Die Preise steigen jedes Jahr."],
```

Add to IRREGULAR in Verben.html:

```javascript
"sinken":["sinkt","sank"],
"steigen":["steigt","stieg"],
```

---

## 4. New file: Schreiben.html

Create a new HTML page following the app's design patterns (dark theme, Inter + JetBrains Mono, sticky header, back-link). This is a reference/cheatsheet page — no DATA arrays or JS logic, just styled HTML content.

### 4a — index.html: add nav card

Insert after the Komposita card (last card in the grid):

```html
    <a class="card a-gold" href="Schreiben.html">
      <span class="badge badge-ref">Referenz</span>
      <span class="emoji">✉️</span>
      <div class="title">Schreiben</div>
      <div class="desc">E-Mail-Register (informell, halbformell, formell), Anrede, Grussformeln, Redemittel und Kommaregeln.</div>
    </a>
```

### 4b — Schreiben.html (full file)

```html
<!DOCTYPE html>
<html lang="de">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="assets/favicon.ico" sizes="16x16 32x32 48x48">
<link rel="icon" href="assets/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="apple-touch-icon" href="assets/apple-touch-icon.png">
<title>Schreiben — E-Mail, Register, Redemittel</title>
<link href="https://fonts.googleapis.com/css2?family=JetBrains+Mono:wght@400;500;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/common.css">
<style>
body { padding: 0 0 48px; }

header {
  position: sticky; top: 0; z-index: 100;
  background: #232327ee;
  backdrop-filter: blur(12px);
  border-bottom: 1px solid #3e3e44;
  padding: 14px 20px;
  display: flex; align-items: center; justify-content: space-between;
  flex-wrap: wrap; gap: 8px;
}
h1 {
  font-family: 'JetBrains Mono', monospace;
  font-size: 26px; font-weight: 700;
  color: #f0f0f4; letter-spacing: -0.5px;
}
.subtitle {
  font-size: 13px; color: #ababba; font-style: italic;
}
.back-link {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px; font-weight: 500;
  padding: 5px 9px; border-radius: 8px;
  background: #343438; color: #8888a0;
  text-decoration: none; border: 1px solid #44444c;
  transition: all .15s;
}
.back-link:hover {
  background: #2a1848; color: #c8a8ff;
  border-color: #7a60c0;
}

.container { max-width: 880px; margin: 0 auto; padding: 0 16px; }

/* ─── Sections ─── */
.section { margin-top: 32px; }
.sec-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 18px; font-weight: 700;
  color: #f0f0f4;
  display: flex; align-items: center; gap: 8px;
  margin-bottom: 4px;
}
.sec-label .dot { width: 10px; height: 10px; border-radius: 50%; display: inline-block; }
.sec-sub { font-size: 12px; color: #ababba; margin-bottom: 14px; font-style: italic; }

/* ─── Register cards ─── */
.reg-card {
  background: #2e2e34;
  border-radius: 8px;
  padding: 18px 20px;
  margin-bottom: 12px;
  border-left: 4px solid;
}
.reg-card.informell { border-color: #70d890; }
.reg-card.halbformell { border-color: #e8a840; }
.reg-card.formell { border-color: #c8a8ff; }

.reg-tag {
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px; font-weight: 700;
  padding: 2px 8px; border-radius: 4px;
  display: inline-block; margin-bottom: 10px;
}
.reg-card.informell .reg-tag { background: #1a3a28; color: #70d890; }
.reg-card.halbformell .reg-tag { background: #3a2e18; color: #e8a840; }
.reg-card.formell .reg-tag { background: #2a1848; color: #c8a8ff; }

.reg-context {
  font-size: 11px; color: #ababba; margin-bottom: 10px;
}

.reg-row {
  display: grid;
  grid-template-columns: 90px 1fr;
  gap: 4px 12px;
  font-size: 13px;
  margin: 4px 0;
}
.reg-row .reg-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 11px; font-weight: 600;
  color: #ababba;
}
.reg-row .reg-value {
  color: #e0e0e4;
  line-height: 1.6;
}
.reg-row .reg-value em { color: #60d0e8; font-style: normal; font-weight: 600; }
.reg-row .reg-value .alt { color: #ababba; }

/* ─── Kommaregeln ─── */
.komma-block {
  background: #2e2e34;
  border-radius: 8px;
  padding: 18px 20px;
  margin-bottom: 12px;
}
.komma-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 13px; font-weight: 600;
  margin-bottom: 8px;
}
.komma-label.ja { color: #70d890; }
.komma-label.nein { color: #f08888; }
.komma-ex {
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.8;
  padding-left: 12px;
  border-left: 2px solid #3a3a40;
}
.komma-ex em { color: #e8a840; font-style: normal; font-weight: 600; }
.komma-ex .komma { color: #f08888; font-weight: 700; font-size: 15px; }
.komma-ex .no-komma { color: #70d890; font-weight: 700; }

/* ─── Redemittel ─── */
.redem-card {
  background: #2e2e34;
  border-radius: 8px;
  padding: 16px 20px;
  margin-bottom: 8px;
}
.redem-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px; font-weight: 600;
  color: #c8a8ff;
  margin-bottom: 6px;
}
.redem-list {
  font-size: 13px;
  color: #c8c8d0;
  line-height: 1.8;
}
.redem-list em { color: #60d0e8; font-style: normal; }

/* ─── Note ─── */
.sch-note {
  background: #333338;
  border-left: 3px solid #e8a840;
  padding: 10px 14px;
  border-radius: 6px;
  margin: 14px 0;
  font-size: 12px;
  color: #ababba;
  line-height: 1.6;
}
.sch-note strong { color: #e8a840; font-weight: 600; }

@media(max-width:600px) {
  h1 { font-size: 22px; }
  .reg-row { grid-template-columns: 1fr; gap: 0; }
  .reg-row .reg-label { margin-top: 6px; }
}
</style>
</head>
<body>
<header>
  <div>
    <h1>✉️ Schreiben</h1>
    <div class="subtitle">E-Mail-Register, Redemittel und Kommaregeln</div>
  </div>
  <a class="back-link" href="index.html">← Übersicht</a>
</header>

<div class="container">

<!-- ═══ E-MAIL REGISTER ═══ -->
<div class="section">
  <div class="sec-label"><span class="dot" style="background:#70d890"></span> E-Mail-Register</div>
  <div class="sec-sub">Drei Formalitätsstufen mit ihren Anrede- und Grussformeln</div>

  <!-- Informell -->
  <div class="reg-card informell">
    <div class="reg-tag">INFORMELL</div>
    <div class="reg-context">An Freunde, Familie, enge Bekannte → du / dein</div>

    <div class="reg-row">
      <span class="reg-label">Anrede</span>
      <span class="reg-value"><em>Liebe</em> Anne / <em>Lieber</em> Markus<br><span class="alt">oder: Liebe Anne, lieber Markus</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Pronomen</span>
      <span class="reg-value"><em>du</em> / <em>dir</em> / <em>dein</em> <span class="alt">(gross oder klein)</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Gruss</span>
      <span class="reg-value"><em>Viele Grüsse</em> / <em>Liebe Grüsse</em></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Unterschrift</span>
      <span class="reg-value">Vorname</span>
    </div>
  </div>

  <!-- Halbformell -->
  <div class="reg-card halbformell">
    <div class="reg-tag">HALBFORMELL</div>
    <div class="reg-context">An Lehrkräfte, Bekannte, Nachbarn → Sie / Ihnen</div>

    <div class="reg-row">
      <span class="reg-label">Anrede</span>
      <span class="reg-value"><em>Liebe Frau</em> Meier / <em>Lieber Herr</em> Schmidt<br><span class="alt">oder: Liebe Frau Meier, lieber Herr Meier</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Pronomen</span>
      <span class="reg-value"><em>Sie</em> / <em>Ihnen</em> / <em>Ihr</em> <span class="alt">(immer gross)</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Gruss</span>
      <span class="reg-value"><em>Freundliche Grüsse</em></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Unterschrift</span>
      <span class="reg-value">Vorname Nachname</span>
    </div>
  </div>

  <!-- Formell -->
  <div class="reg-card formell">
    <div class="reg-tag">FORMELL</div>
    <div class="reg-context">Bewerbungen, Behörden, unbekannte Empfänger → Sie / Ihnen</div>

    <div class="reg-row">
      <span class="reg-label">Anrede</span>
      <span class="reg-value"><em>Sehr geehrte Damen und Herren</em><br><em>Sehr geehrte Frau</em> Müller / <em>Sehr geehrter Herr</em> Neuner<br><span class="alt">oder: Sehr geehrte Frau Müller, sehr geehrter Herr Müller</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Pronomen</span>
      <span class="reg-value"><em>Sie</em> / <em>Ihnen</em> / <em>Ihr</em> <span class="alt">(immer gross)</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Gruss</span>
      <span class="reg-value"><em>Freundliche Grüsse</em> <span class="alt">/ Mit freundlichen Grüssen</span></span>
    </div>
    <div class="reg-row">
      <span class="reg-label">Unterschrift</span>
      <span class="reg-value">Vorname Nachname</span>
    </div>
  </div>
</div>

<!-- ═══ KOMMAREGEL BEI ANREDE ═══ -->
<div class="section">
  <div class="sec-label"><span class="dot" style="background:#e8a840"></span> Kommaregel bei Anrede</div>
  <div class="sec-sub">Beide Varianten sind korrekt — aber das erste Wort nach der Anrede ändert sich</div>

  <div class="komma-block">
    <div class="komma-label nein">Ohne Komma → nächstes Wort gross</div>
    <div class="komma-ex">
      Liebe Anna<br>
      <em>I</em>ch danke dir für deine E-Mail.
    </div>
  </div>

  <div class="komma-block">
    <div class="komma-label ja">Mit Komma → nächstes Wort klein</div>
    <div class="komma-ex">
      Liebe Anna<span class="komma">,</span><br>
      <em>i</em>ch danke dir für deine E-Mail.
    </div>
  </div>

  <div class="sch-note">
    <strong>Grussformel:</strong> Kein Komma nach der Grussformel, kein Punkt.<br>
    Freundliche Grüsse<br>
    Marco
  </div>
</div>

<!-- ═══ REDEMITTEL ═══ -->
<div class="section">
  <div class="sec-label"><span class="dot" style="background:#c8a8ff"></span> Redemittel</div>
  <div class="sec-sub">Nützliche Formulierungen für Diskussionen und Meinungsäusserungen</div>

  <div class="redem-card">
    <div class="redem-label">Meinung äussern</div>
    <div class="redem-list">
      <em>Ich denke, dass</em> …<br>
      <em>Ich finde es wichtig,</em> … + Infinitivsatz / dass-Satz<br>
      <em>Meiner Meinung nach</em> …<br>
      <em>Meiner Ansicht nach</em> …<br>
      <em>Ich bin der Meinung / Ansicht, dass</em> …
    </div>
  </div>

  <div class="redem-card">
    <div class="redem-label">Zustimmen</div>
    <div class="redem-list">
      <em>Ich stimme dir / Ihnen (nicht) zu.</em><br>
      <em>Das finde ich auch.</em> / Das finde ich nicht.<br>
      <em>Ich teile deine Meinung (nicht).</em><br>
      <em>Ich bin mit dir / Lea einverstanden.</em>
    </div>
  </div>

  <div class="redem-card">
    <div class="redem-label">Widersprechen</div>
    <div class="redem-list">
      <em>Da bin ich anderer Meinung.</em><br>
      <em>Das sehe ich anders.</em><br>
      <em>Das stimmt meiner Meinung nach nicht.</em>
    </div>
  </div>

  <div class="redem-card">
    <div class="redem-label">Formelle E-Mail-Einstiege</div>
    <div class="redem-list">
      <em>Mit grossem Interesse habe ich Ihre Stellenanzeige gelesen.</em><br>
      <em>Leider muss ich Ihnen mitteilen, dass</em> …<br>
      <em>Ich schreibe Ihnen, weil</em> …<br>
      <em>Hiermit möchte ich mich für … bewerben.</em>
    </div>
  </div>
</div>

<!-- ═══ TEMPUS ═══ -->
<div class="section">
  <div class="sec-label"><span class="dot" style="background:#60d0e8"></span> Tempus in E-Mails</div>

  <div class="sch-note">
    <strong>Grundregel:</strong> In E-Mails und Briefen verwendet man hauptsächlich das <strong>Perfekt</strong> für Vergangenes — nicht das Präteritum (ausser bei sein, haben, Modalverben).<br><br>
    ✅ Gestern <em>habe</em> ich mich im Theater bestens <em>amüsiert</em>.<br>
    ❌ Gestern <em>amüsierte</em> ich mich im Theater bestens. <span style="color:#ababba">(zu literarisch)</span>
  </div>
</div>

</div><!-- /.container -->
</body>
</html>
```

---

## Notes

- **Schreiben.html** — standalone reference page, no JS or DATA arrays. Pure styled HTML. Follows existing page patterns (sticky header, back-link, container, section structure). Color scheme: grün = informell, gold = halbformell, lila = formell.
- **Content source:** M27 Tag 1 page 3 (Goethe B1 Schreiben Redemittel) + M27 Tag 5 pages 11 (Kommaregeln Anrede section) + M27 Tag 1 page 4 (Redemittel für Diskussionsbeiträge).
- **Erweiterbar:** Seite ist bewusst einfach gehalten für spätere Ergänzungen (z.B. Beschwerdebrief-Template, Bewerbungsanschreiben, Zusammenfassung schreiben, Textsortenvergleich).
- **steigen / sinken** — Gegensatzpaar. Beide stark, beide mit *ist* (Fortbewegung/Zustandsänderung). steigen: ei→ie→ie; sinken: i→a→u.
- **Aufenthaltsbewilligung** — Swiss-specific term (DE: Aufenthaltserlaubnis/Aufenthaltsgenehmigung). Long compound but very relevant for Alex's context in Zürich.
- **Fahrer** — base word instead of Taxifahrer (Komposita rule: Taxi already in app, Fahrer is the more useful component).
- **sinnlos** — from M27 Tag 3 adjective grid. Productive prefix *-los* (sinnlos, arbeitslos, obdachlos).
