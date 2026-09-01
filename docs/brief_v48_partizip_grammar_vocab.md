# Brief V48 — Partizip als Adjektiv · KonjunktivII-Ergänzungen · Modul-28-Grammatik · Vocab

**Priorität:** Hoch — Stufentest B1 am Freitag
**Dateien:** Adjektive.html, KonjunktivII.html, Nebensaetze.html, Substantive.html, Verben.html

---

## Übersicht

Fünf Lücken schliessen:

1. **Partizip I und II als Adjektiv** → neue Reference-Sektion in Adjektive.html (Testthema)
2. **Irreale Wunschsätze mit doch/bloss/nur + Vorschläge** → Cards in KonjunktivII.html ergänzen (Testthema)
3. **je … desto + Konsekutivsatz (sodass)** → neue Sektion in Nebensaetze.html (Modul 28, Repetition in Modul 30)
4. **Vocab aus Wortschatz.txt / Wortschatz II.txt** → DATA-Einträge
5. **Korrekturen** an Alex' Notizen (Hammel ≠ mask. Huhn; zögern ≠ to doubt)

---

## Teil 1 — Partizip I und II als Adjektiv (Adjektive.html)

### Design

Neue statische Reference-Sektion **unterhalb** des bestehenden Card-Grids (`</div><!-- grid -->` nach dem `<script>` Block wäre falsch — stattdessen NACH dem `<div id="grid">` Container aber VOR dem `<script>` Block). 

Besser: Sektion direkt **vor** `<script>` einfügen, nach dem schliessenden `</div>` des Grid-Containers.

Stil: dunklere Section-Cards wie in KonjunktivII.html (Verwendung-Cards). Kein JS nötig — rein statisches HTML.

### Insertion point

Finde die Zeile:
```html
<div class="grid" id="grid"></div>
```

Füge **danach** (vor `<script>`) ein:

### HTML einzufügen

```html
<!-- ═══ PARTIZIP ALS ADJEKTIV ═══ -->
<div style="max-width:920px;margin:32px auto 0;padding:0 16px;">
  <div style="font-family:'JetBrains Mono',monospace;font-size:11px;font-weight:700;text-transform:uppercase;letter-spacing:1.5px;color:#c8a8ff;margin-bottom:12px;">Partizip I und II als Adjektiv</div>
  <div style="font-size:14px;color:#ababba;margin-bottom:20px;">Partizipien können wie Adjektive verwendet werden — <strong style="color:#e0e0e4">adverbial</strong> (ohne Endung) oder <strong style="color:#e0e0e4">attributiv</strong> (mit Adjektivendung).</div>

  <!-- Partizip I -->
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;margin-bottom:16px;">
    <div style="font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:700;color:#e8a840;margin-bottom:10px;">Partizip I — Bildung: Infinitiv + <span style="color:#f0f0f4">-d</span></div>
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:8px;margin-bottom:14px;">
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#e8a840;font-weight:600;">spielen</span> → spielen<strong style="color:#f0f0f4">d</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#e8a840;font-weight:600;">schlafen</span> → schlafen<strong style="color:#f0f0f4">d</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#e8a840;font-weight:600;">lachen</span> → lachen<strong style="color:#f0f0f4">d</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#e8a840;font-weight:600;">wachsen</span> → wachsen<strong style="color:#f0f0f4">d</strong></div>
    </div>
    <div style="font-family:'JetBrains Mono',monospace;font-size:12px;color:#70d890;margin-bottom:6px;">Bedeutung: aktiv + gleichzeitig</div>
    <div style="font-size:13px;color:#ababba;">Das Partizip I beschreibt eine <strong style="color:#e0e0e4">laufende Handlung</strong> — wie «-ing» im Englischen oder «-ando/-iendo» im Spanischen.</div>
  </div>

  <!-- Partizip II -->
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;margin-bottom:16px;">
    <div style="font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:700;color:#60d0e8;margin-bottom:10px;">Partizip II — Bildung: ge- + Stamm + <span style="color:#f0f0f4">-t/-en</span></div>
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:8px;margin-bottom:14px;">
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#60d0e8;font-weight:600;">schliessen</span> → <strong style="color:#f0f0f4">ge</strong>schloss<strong style="color:#f0f0f4">en</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#60d0e8;font-weight:600;">öffnen</span> → <strong style="color:#f0f0f4">ge</strong>öffn<strong style="color:#f0f0f4">et</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#60d0e8;font-weight:600;">brechen</span> → <strong style="color:#f0f0f4">ge</strong>broch<strong style="color:#f0f0f4">en</strong></div>
      <div style="font-size:13px;color:#e0e0e4;"><span style="color:#60d0e8;font-weight:600;">waschen</span> → <strong style="color:#f0f0f4">ge</strong>wasch<strong style="color:#f0f0f4">en</strong></div>
    </div>
    <div style="font-family:'JetBrains Mono',monospace;font-size:12px;color:#70d890;margin-bottom:6px;">Bedeutung: passiv + abgeschlossen</div>
    <div style="font-size:13px;color:#ababba;">Das Partizip II beschreibt ein <strong style="color:#e0e0e4">Resultat</strong> — wie «cerrado», «roto» im Spanischen.</div>
  </div>

  <!-- Adverbial vs Attributiv -->
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;margin-bottom:16px;">
    <div style="font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:700;color:#c8a8ff;margin-bottom:12px;">Adverbial vs. Attributiv</div>
    <table style="width:100%;border-collapse:collapse;">
      <thead>
        <tr>
          <th style="text-align:left;padding:6px 10px;border-bottom:2px solid #3e3e44;color:#8888a0;font-size:12px;font-family:'JetBrains Mono',monospace;"></th>
          <th style="text-align:left;padding:6px 10px;border-bottom:2px solid #3e3e44;color:#e8a840;font-size:12px;font-family:'JetBrains Mono',monospace;">Adverbial (ohne Endung)</th>
          <th style="text-align:left;padding:6px 10px;border-bottom:2px solid #3e3e44;color:#60d0e8;font-size:12px;font-family:'JetBrains Mono',monospace;">Attributiv (+ Adj.endung)</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;">P. I</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">Das Kind spielt <strong style="color:#e8a840">lachend</strong>.</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">das <strong style="color:#60d0e8">lachende</strong> Kind</td>
        </tr>
        <tr>
          <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;">P. I</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">Er geht <strong style="color:#e8a840">singend</strong> durch den Park.</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">der <strong style="color:#60d0e8">singende</strong> Mann</td>
        </tr>
        <tr>
          <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;">P. II</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">Die Tür ist <strong style="color:#e8a840">geschlossen</strong>.</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">die <strong style="color:#60d0e8">geschlossene</strong> Tür</td>
        </tr>
        <tr>
          <td style="padding:8px 10px;color:#ababba;font-size:12px;">P. II</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;">Das Bein ist <strong style="color:#e8a840">gebrochen</strong>.</td>
          <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;">das <strong style="color:#60d0e8">gebrochene</strong> Bein</td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Regel-Box -->
  <div style="background:#2a1848;border:1px solid #7a60c0;border-radius:12px;padding:16px;margin-bottom:16px;">
    <div style="font-family:'JetBrains Mono',monospace;font-size:12px;font-weight:700;color:#c8a8ff;margin-bottom:6px;">⚡ Merkregel</div>
    <div style="font-size:13px;color:#e0e0e4;line-height:1.6;">
      <strong>Attributiv</strong> = vor dem Nomen → <strong>braucht Adjektivendung</strong> (wie jedes Adjektiv)<br>
      <strong>Adverbial</strong> = ohne Nomen / prädikativ → <strong>keine Endung</strong><br><br>
      Partizip I: <span style="color:#e8a840">aktiv + gleichzeitig</span> → «der schlafend<strong>e</strong> Hund» = der Hund, <em>der gerade schläft</em><br>
      Partizip II: <span style="color:#60d0e8">passiv + abgeschlossen</span> → «die geschlossen<strong>e</strong> Tür» = die Tür, <em>die geschlossen worden ist</em>
    </div>
  </div>

  <!-- Weitere Beispiele -->
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;">
    <div style="font-family:'JetBrains Mono',monospace;font-size:13px;font-weight:700;color:#f0f0f4;margin-bottom:10px;">Weitere Beispiele</div>
    <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px;font-size:13px;">
      <div>
        <div style="color:#e8a840;font-weight:600;font-size:12px;margin-bottom:4px;">Partizip I (aktiv)</div>
        <div style="color:#e0e0e4;">die <strong>brennende</strong> Kerze</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← die Kerze brennt</div>
        <div style="color:#e0e0e4;">das <strong>weinende</strong> Kind</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← das Kind weint</div>
        <div style="color:#e0e0e4;">ein <strong>fliessender</strong> Übergang</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← der Übergang fliesst</div>
        <div style="color:#e0e0e4;">die <strong>steigenden</strong> Preise</div>
        <div style="color:#ababba;font-size:12px;">← die Preise steigen</div>
      </div>
      <div>
        <div style="color:#60d0e8;font-weight:600;font-size:12px;margin-bottom:4px;">Partizip II (passiv/Resultat)</div>
        <div style="color:#e0e0e4;">der <strong>gekochte</strong> Reis</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← der Reis wurde gekocht</div>
        <div style="color:#e0e0e4;">eine <strong>geschriebene</strong> Nachricht</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← die Nachricht wurde geschrieben</div>
        <div style="color:#e0e0e4;">das <strong>reservierte</strong> Zimmer</div>
        <div style="color:#ababba;font-size:12px;margin-bottom:6px;">← das Zimmer wurde reserviert</div>
        <div style="color:#e0e0e4;">die <strong>empfohlenen</strong> Bücher</div>
        <div style="color:#ababba;font-size:12px;">← die Bücher wurden empfohlen</div>
      </div>
    </div>
  </div>
</div>
```

### CSS

Kein zusätzliches CSS nötig — alles inline gestylt wie die bestehenden Sektionen.

---

## Teil 2 — KonjunktivII.html Ergänzungen

### 2a. Irreale Wunschsätze mit Partikeln

In der Sektion "Verwendung — vier Muster", innerhalb der bestehenden Card "Irreale Wünsche & Situationen" (line ~296):

**Ergänze** nach den bestehenden `<li>`-Elementen und vor dem `<div class="structure">`:

```html
        <li style="margin-top:8px;border-top:1px solid #3e3e44;padding-top:8px;color:#c8a8ff;font-weight:600;font-size:12px;">Wunschsätze mit Partikeln (doch / bloss / nur):</li>
        <li>Wenn ich <span class="kii">doch</span> mehr Geld <span class="kii">hätte</span>!</li>
        <li>Wenn er <span class="kii">bloss</span> hier <span class="kii">wäre</span>!</li>
        <li>Wenn wir <span class="kii">doch nur</span> früher angefangen <span class="kii">hätten</span>!</li>
        <li><span class="kii">Hätte</span> ich <span class="kii">nur</span> besser zugehört!</li>
        <li><span class="kii">Wäre</span> ich <span class="kii">doch</span> zu Hause geblieben!</li>
```

**Ergänze** den `<div class="structure">` Inhalt um:

```html
      <div class="structure">
        Wenn + Konjunktiv II, ... Konjunktiv II<br>(Verb → Ende im wenn-Satz = Nebensatz)<br><br>
        <strong style="color:#c8a8ff">Wunschsätze:</strong> Wenn + <em>doch / bloss / nur</em> + ... + Konj. II <strong>!</strong><br>
        Oder invertiert: Konj. II + <em>doch / nur</em> + ... <strong>!</strong><br>
        <span style="font-size:12px;color:#ababba">(Immer mit Ausrufezeichen — drücken starke Sehnsucht aus)</span>
      </div>
```

### 2b. Vorschläge

Neue Card **zwischen** "Irreale Wünsche" und "Ratschläge" (nach line ~304):

```html
    <div class="usage-card">
      <div class="card-emoji">&#128172;</div>
      <h3>Vorschläge</h3>
      <ul class="ex-list">
        <li>Wir <span class="kii">könnten</span> ins Kino gehen.</li>
        <li><span class="kii">Sollen</span> wir Pizza bestellen?</li>
        <li>Was <span class="kii">hältst</span> du davon, wenn wir spazieren gehen?</li>
        <li>Ich <span class="kii">würde</span> vorschlagen, dass wir morgen anfangen.</li>
        <li>Wie <span class="kii">wäre</span> es mit einem Kaffee?</li>
      </ul>
      <div class="key-phrase"><strong>Wie wäre es mit …?</strong> / <strong>Wir könnten …</strong> = sanfte Vorschläge (weicher als «Lass uns …»)</div>
    </div>
```

---

## Teil 3 — Nebensaetze.html: je…desto + Konsekutivsatz

### Insertion point

Einfügen **nach** dem Zweigliedrige-Konnektoren-Block (nach line ~1614, vor `<!-- ═══ TEMPORALE KONNEKTOREN ═══ -->`).

### Nav ergänzen

In der `<nav>` Zeile, einen neuen Link hinzufügen (nach "Konnektoren"):

```html
    <a href="#modul28">Modul 28</a>
```

### HTML einzufügen

```html
<!-- ═══ MODUL 28: je…desto, Konsekutiv, Vergleiche ═══ -->
<div class="section" id="modul28">
  <div class="section-title">
    <span style="color:#e8a840">⬥</span> Modul 28
  </div>
  <div class="section-sub">je … desto · Konsekutivsatz · Vergleichssätze</div>

  <!-- je … desto -->
  <div class="sub-label" style="margin-top:20px;">je … desto / je … umso</div>
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;margin-bottom:16px;">
    <div style="font-size:14px;color:#e0e0e4;margin-bottom:12px;">
      <strong style="color:#e8a840">je</strong> + Komparativ … ,
      <strong style="color:#60d0e8">desto</strong> / <strong style="color:#60d0e8">umso</strong> + Komparativ + <strong style="color:#c8a8ff">Verb</strong> + Subjekt
    </div>
    <table style="width:100%;border-collapse:collapse;margin-bottom:12px;">
      <tr>
        <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;width:120px;">je-Satz (NS)</td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          <strong style="color:#e8a840">Je</strong> mehr ich lerne, <strong style="color:#60d0e8">desto</strong> besser <strong style="color:#c8a8ff">spreche</strong> ich.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;"></td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          <strong style="color:#e8a840">Je</strong> länger man wartet, <strong style="color:#60d0e8">desto</strong> schwieriger <strong style="color:#c8a8ff">wird</strong> es.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#ababba;font-size:12px;border-bottom:1px solid #3e3e44;"></td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          <strong style="color:#e8a840">Je</strong> billiger das Hotel, <strong style="color:#60d0e8">desto</strong> schlechter <strong style="color:#c8a8ff">ist</strong> der Service.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#ababba;font-size:12px;"></td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;">
          <strong style="color:#e8a840">Je</strong> öfter du übst, <strong style="color:#60d0e8">umso</strong> sicherer <strong style="color:#c8a8ff">wirst</strong> du.
        </td>
      </tr>
    </table>
    <div style="background:#2a1848;border:1px solid #7a60c0;border-radius:8px;padding:10px;font-size:12px;color:#c8a8ff;line-height:1.5;">
      <strong>Syntax:</strong> «je»-Satz = Nebensatz (Verb am Ende) · «desto»-Satz = Hauptsatz (<strong>Verb direkt nach</strong> desto + Komparativ, dann Subjekt)<br>
      <strong>umso</strong> = Synonym für desto (gleiche Struktur)
    </div>
  </div>

  <!-- Konsekutivsatz -->
  <div class="sub-label" style="margin-top:24px;">Konsekutivsätze — sodass / so …, dass</div>
  <div style="background:#343438;border:1px solid #44444c;border-radius:12px;padding:20px;margin-bottom:16px;">
    <div style="font-size:14px;color:#ababba;margin-bottom:12px;">Drücken eine <strong style="color:#e0e0e4">Folge / Konsequenz</strong> aus.</div>
    <table style="width:100%;border-collapse:collapse;margin-bottom:12px;">
      <tr>
        <td style="padding:8px 10px;color:#e8a840;font-size:12px;font-family:'JetBrains Mono',monospace;border-bottom:1px solid #3e3e44;width:130px;">sodass</td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          Es regnete stark, <strong style="color:#e8a840">sodass</strong> wir zu Hause <strong style="color:#c8a8ff">blieben</strong>.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#60d0e8;font-size:12px;font-family:'JetBrains Mono',monospace;border-bottom:1px solid #3e3e44;">so …, dass</td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          Er war <strong style="color:#60d0e8">so</strong> müde, <strong style="color:#60d0e8">dass</strong> er sofort <strong style="color:#c8a8ff">einschlief</strong>.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#60d0e8;font-size:12px;font-family:'JetBrains Mono',monospace;border-bottom:1px solid #3e3e44;">so …, dass</td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;border-bottom:1px solid #3e3e44;">
          Die Prüfung war <strong style="color:#60d0e8">so</strong> schwer, <strong style="color:#60d0e8">dass</strong> viele <strong style="color:#c8a8ff">durchgefallen sind</strong>.
        </td>
      </tr>
      <tr>
        <td style="padding:8px 10px;color:#e8a840;font-size:12px;font-family:'JetBrains Mono',monospace;">sodass</td>
        <td style="padding:8px 10px;color:#e0e0e4;font-size:13px;">
          Ich habe viel gelernt, <strong style="color:#e8a840">sodass</strong> ich mich sicher <strong style="color:#c8a8ff">fühle</strong>.
        </td>
      </tr>
    </table>
    <div style="background:#2a1848;border:1px solid #7a60c0;border-radius:8px;padding:10px;font-size:12px;color:#c8a8ff;line-height:1.5;">
      <strong>sodass</strong> = ein Wort, leitet Nebensatz ein (Verb am Ende)<br>
      <strong>so …, dass</strong> = «so» steht beim Adjektiv/Adverb im Hauptsatz, «dass» leitet den Nebensatz ein
    </div>
  </div>

</div>
```

### section-title CSS

Die Klasse `.section-title` existiert bereits in Nebensaetze.html — kein neues CSS nötig. Die `.sub-label` Klasse auch.

### Scroll-spy Update

Im `<script>` am Ende gibt es Scroll-spy Logik:
```js
const sections = document.querySelectorAll('.section[id]');
```
Das erfasst `#modul28` automatisch (hat `class="section" id="modul28"`). Prüfe aber, ob die Nav-Links korrekt gehighlighted werden.

---

## Teil 4 — Vocabulary (DATA-Einträge)

### 4a. Substantive.html — 7 neue Einträge

Am Ende des DATA arrays, vor `];`, neuen Kommentar-Block:

```js
// ─── Wortschatz-Dateien ───
["Kragen", "der", "-", "collar", "general", "Der Kragen vom Hemd ist schmutzig."],
["Geizkragen", "der", "-", "miser, cheapskate", "general", "Sei kein Geizkragen, lad mich ein!"],
["Flügel", "der", "-", "wing", "nature", "Der Vogel breitet seine Flügel aus."],
["Wolkenbruch", "der", "Wolkenbrüche", "cloudburst, downpour", "nature", "Ein plötzlicher Wolkenbruch hat uns überrascht."],
["Qualle", "die", "-n", "jellyfish", "nature", "Vorsicht, im Meer gibt es Quallen!"],
["Fazit", "das", "-e/-s", "conclusion, bottom line", "general", "Das Fazit des Berichts ist positiv."],
["Hahn", "der", "Hähne", "rooster, faucet", "nature", "Der Hahn kräht jeden Morgen."],
```

**Notiz:** Alex schrieb «Hammel: mask. Huhn» — das ist ein Fehler. Hammel = kastrierter Schafbock (wether/mutton), nicht männliches Huhn. Männliches Huhn = **Hahn**. Hammel wird übersprungen (zu selten für B1), stattdessen **Hahn** hinzufügen.

### 4b. Verben.html — 12 neue Einträge

Einfügen in die passenden Präposition-Sektionen oder am Ende unter einem neuen Kommentar:

```js
// ─── Wortschatz-Dateien ───
// unter: ohne Präpositionalergänzung (am Ende, nach dem letzten Abschnitt)
["winken", "—", "hat gewinkt", "to wave", "w", "Sie winkt ihren Freunden zum Abschied."],
["schütteln", "—", "hat geschüttelt", "to shake", "w", "Sie schütteln sich die Hände."],
["kuscheln", "—", "hat gekuschelt", "to cuddle", "w", "Die Kinder kuscheln auf dem Sofa."],
["zwinkern", "—", "hat gezwinkert", "to wink", "w", "Er zwinkert ihr zu."],
["flüstern", "—", "hat geflüstert", "to whisper", "w", "Sie flüstert ihm etwas ins Ohr."],
["zögern", "—", "hat gezögert", "to hesitate", "w", "Zögere nicht, frag einfach!"],
["begreifen", "—", "hat begriffen", "to grasp, to comprehend", "s", "Ich begreife nicht, warum er das gemacht hat."],
["benennen", "—", "hat benannt", "to name, to designate", "w", "Können Sie das Problem benennen?"],
["ernennen", "—", "hat ernannt", "to appoint, to nominate", "w", "Sie wurde zur Leiterin ernannt."],
["gefrieren", "—", "ist gefroren", "to freeze", "s", "Das Wasser gefriert bei null Grad."],
["vorziehen", "—", "hat vorgezogen", "to prefer", "s", "Ich ziehe Tee dem Kaffee vor."],
["verschränken", "—", "hat verschränkt", "to cross, to fold", "w", "Er verschränkt die Arme."],
```

**Korrektur zu Alex' Notizen:** «zögern = to doubt» ist falsch. zögern = **to hesitate** (vacilar/dudar antes de actuar). «to doubt» = **zweifeln** (dudar intelectualmente). Zweifeln ist schon in der App via Substantive (Zweifel).

### 4c. Verben.html — Präposition-Einträge (in bestehende Sektionen)

```js
// ─── auf + Akk ─── (ergänzen)
["sich beziehen", "auf+Akk", "hat sich bezogen", "to refer to", "w", "Der Artikel bezieht sich auf die neuen Regeln."],
["zusteigen", "—", "ist zugestiegen", "to board (join en route)", "w", "An der nächsten Haltestelle steigt noch jemand zu."],
```

### 4d. Adjektive.html — 4 neue DATA-Einträge

```js
// ─── Wortschatz-Dateien ───
["sensibel", "sensibler", "am sensibelsten", "sensitive", "quality", "regular", "Er ist ein sensibler Mensch."],
["preiswert", "preiswerter", "am preiswertesten", "good value, affordable", "quality", "regular", "Das Restaurant ist preiswert und gut."],
["senkrecht", "—", "—", "vertical", "quality", "regular", "Die Linie verläuft senkrecht."],
["waagrecht", "—", "—", "horizontal", "quality", "regular", "Zieh eine waagrechte Linie."],
```

**Achtung:** senkrecht/waagrecht haben keine sinnvollen Komparativ/Superlativ-Formen. Im DATA-Array "—" verwenden. Die Render-Funktion sollte "—" korrekt anzeigen — prüfe, ob das so ist.

### 4e. Konnektoren/Adverbien — in Nebensaetze.html Konnektoren-Tabelle

In der bestehenden Konnektoren-Tabelle, Zeile für **jedoch** und **allerdings** ergänzen (als Konjunktionaladverbien = Position 1 oder 3):

In der Tabelle nach den bestehenden adversativen Einträgen:

```html
        <tr class="konn-row-adversativ">
          <td><span class="konn-word" style="color:#f08888">jedoch</span></td>
          <td><span class="konn-ex"><em>Die Idee ist gut, <span style="color:#f08888;font-weight:700">jedoch</span> fehlt das Budget.</em></span></td>
          <td style="font-size:12px;color:#ababba">KonAdv: Pos 1 oder Pos 3 (Mittelfeld)</td>
        </tr>
        <tr class="konn-row-adversativ">
          <td><span class="konn-word" style="color:#f08888">allerdings</span></td>
          <td><span class="konn-ex"><em>Er spricht gut Deutsch, <span style="color:#f08888;font-weight:700">allerdings</span> macht er noch Fehler.</em></span></td>
          <td style="font-size:12px;color:#ababba">KonAdv: Pos 1 oder Pos 3 (= jedoch, etwas weicher)</td>
        </tr>
```

**Prüfen:** Existiert die CSS-Klasse `konn-row-adversativ` schon? Falls nicht, nutze die gleiche Klasse wie die anderen Zeilen in der Tabelle, oder erstelle sie analog zu `konn-row-temporal`.

---

## Teil 5 — Prüfliste (adversativ-Zeilen-Klasse)

Vor Implementation: Prüfe ob `konn-row-adversativ` existiert in Nebensaetze.html. Falls nicht, nutze das Pattern der vorhandenen Zeilen und erstelle:

```css
.konn-row-adversativ td:first-child { border-left: 3px solid #f08888; }
```

---

## Verifizierung

1. **Adjektive.html:** Sektion "Partizip I und II als Adjektiv" erscheint unter dem Karten-Grid. Responsive auf Mobile (grid → 1fr).
2. **KonjunktivII.html:** 5 Wunschsatz-Beispiele in der ersten Card. Neue Vorschläge-Card zwischen Wünsche und Ratschläge.
3. **Nebensaetze.html:** "Modul 28" Nav-Link funktioniert. je…desto und Konsekutiv-Sektionen korrekt dargestellt. Scroll-spy highlightet korrekt. jedoch/allerdings in Konnektoren-Tabelle.
4. **Substantive.html:** 7 neue Einträge, Suche findet sie.
5. **Verben.html:** 14 neue Einträge, Suche findet sie. `sich beziehen` unter auf+Akk einsortiert.
6. **Adjektive.html:** 4 neue Einträge. senkrecht/waagrecht zeigen "—" statt Komparativ.
7. **Mobile:** Alle neuen Sektionen lesbar auf 375px Viewport.

## Anti-Patterns

- **Keine neuen Seiten** — alles in bestehende Dateien.
- **Keine JS-Änderungen** für die statischen Sektionen (Partizip, je…desto).
- **Partizip-Sektion nicht in den DATA-Array** mischen — es ist Referenz-Content, keine filterbaren Cards.
- **Hammel NICHT hinzufügen** — falscher Kontext in Alex' Notizen, Hahn stattdessen.
