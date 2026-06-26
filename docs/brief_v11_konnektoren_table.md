# V11 — Konnektoren und Präpositionen Overview Table

**Supersedes:** Nothing.
**Depends on:** V10 deployed.

## Goal

Add a new section to `Nebensaetze.html` showing the
**Konnektoren und Präpositionen** overview table from B1 Modul
22 Tag 2 (page 17). This is a synthesis table: 6 semantic
categories (kausal, konzessiv, temporal, konditional, final,
modal) × 4 grammatical columns (Konjunktion, Subjunktion,
Konjunktionaladverb, Präposition). Each column type produces
different word order — the table's main teaching value.

Placement: **new Section 8**, after Redemittel (id="redemittel"),
before the closing `</div><!-- /.container -->`. This is a
capstone reference: you've learned each Satztyp individually,
now see how they all relate.

---

## File: Nebensaetze.html

### Change 1 — Add nav link

Current nav (line ~454):

```html
<nav>
  <a href="#ueberblick" class="active">Überblick</a>
  <a href="#dass">dass</a>
  <a href="#final">Finalsätze</a>
  <a href="#infinitiv">Infinitivsätze</a>
  <a href="#nominal">Nominalisiert</a>
  <a href="#wortstellung">Wortstellung</a>
  <a href="#redemittel">Redemittel</a>
</nav>
```

Add after Redemittel:

```html
  <a href="#konnektoren">Konnektoren</a>
```

---

### Change 2 — Add CSS for the Konnektoren table

Add the following styles inside the existing `<style>` block,
before the closing `</style>`. The table needs to scroll
horizontally on mobile while keeping semantic-category labels
visible.

```css
/* ─── Konnektoren table ─── */
.konn-wrap {
  overflow-x: auto;
  margin-top: 16px;
  -webkit-overflow-scrolling: touch;
}
.konn-table {
  width: 100%;
  min-width: 700px;
  border-collapse: separate;
  border-spacing: 0;
  font-family: 'Inter', sans-serif;
  font-size: 14px;
}
.konn-table th {
  font-family: 'JetBrains Mono', monospace;
  font-size: 12px;
  font-weight: 600;
  padding: 10px 12px;
  text-align: center;
  background: #2e2e34;
  color: #f0f0f4;
  border-bottom: 2px solid #44444c;
  position: sticky;
  top: 0;
}
.konn-table th .th-sub {
  display: block;
  font-weight: 400;
  font-size: 10px;
  color: #8888a0;
  margin-top: 3px;
  font-family: 'Inter', sans-serif;
}
.konn-table td {
  padding: 10px 12px;
  vertical-align: top;
  border-bottom: 1px solid #3a3a40;
  color: #e0e0e4;
}
.konn-table td:first-child {
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 13px;
  white-space: nowrap;
  min-width: 110px;
}
.konn-table td:first-child .konn-q {
  display: block;
  font-weight: 400;
  font-size: 11px;
  color: #8888a0;
  font-family: 'Inter', sans-serif;
  margin-top: 2px;
}
.konn-table .empty {
  color: #55556a;
  text-align: center;
}
.konn-table .konn-word {
  font-family: 'JetBrains Mono', monospace;
  font-weight: 600;
  font-size: 13px;
  display: block;
}
.konn-table .konn-ex {
  font-size: 12px;
  color: #ababba;
  margin-top: 4px;
  line-height: 1.4;
}

/* Row accent colors — left border on first cell */
.konn-row-kausal td:first-child { border-left: 3px solid #e87040; }
.konn-row-konzessiv td:first-child { border-left: 3px solid #c870e0; }
.konn-row-temporal td:first-child { border-left: 3px solid #60d0e8; }
.konn-row-konditional td:first-child { border-left: 3px solid #e8d040; }
.konn-row-final td:first-child { border-left: 3px solid #68d8b8; }
.konn-row-modal td:first-child { border-left: 3px solid #7090e0; }

/* Word-order badges in header */
.wo-badge {
  display: inline-block;
  font-family: 'JetBrains Mono', monospace;
  font-size: 9px;
  padding: 2px 6px;
  border-radius: 4px;
  margin-top: 4px;
}
.wo-badge.hs { background: #2a3a20; color: #90d070; border: 1px solid #50803a; }
.wo-badge.ns { background: #1a3040; color: #60c0e0; border: 1px solid #3080a0; }
.wo-badge.inv { background: #3a2a10; color: #e0a840; border: 1px solid #907020; }
.wo-badge.pp { background: #2a1a38; color: #c0a0e0; border: 1px solid #6a4a90; }

@media (max-width: 600px) {
  .konn-table { font-size: 13px; }
  .konn-table th { font-size: 11px; padding: 8px; }
  .konn-table td { padding: 8px; }
  .konn-table .konn-ex { font-size: 11px; }
}
```

---

### Change 3 — Add the section HTML

Insert after the closing `</div>` of the Redemittel section
(id="redemittel") and before `</div><!-- /.container -->`:

```html
<!-- ═══════════════════════════════════════ -->
<!-- SECTION 8: KONNEKTOREN                  -->
<!-- ═══════════════════════════════════════ -->
<div class="section" id="konnektoren">
  <div class="section-title">
    <span class="dot" style="background:#a0b8e8;"></span>
    Konnektoren und Präpositionen
  </div>
  <div class="section-sub">Gleiche Bedeutung — verschiedene Strukturen und Wortstellungen</div>

  <div class="notes" style="margin-bottom:16px;">
    <div class="notes-title">💡 Wozu diese Tabelle?</div>
    Deutsch hat oft mehrere Wege, die gleiche Beziehung
    (Grund, Gegensatz, Zeit …) auszudrücken. Jeder Weg
    verlangt eine andere <strong>Wortstellung</strong>.
    Diese Tabelle zeigt alle Möglichkeiten auf einen Blick.
  </div>

  <div class="konn-wrap">
    <table class="konn-table">
      <thead>
        <tr>
          <th></th>
          <th>
            Konjunktion
            <span class="th-sub">Position 0</span>
            <span class="wo-badge hs">HS, HS</span>
          </th>
          <th>
            Subjunktion
            <span class="th-sub">Nebensatz</span>
            <span class="wo-badge ns">Verb am Ende</span>
          </th>
          <th>
            Konjunktionaladverb
            <span class="th-sub">Position 1 · Angabeposition</span>
            <span class="wo-badge inv">Inversion</span>
          </th>
          <th>
            Präposition
            <span class="th-sub">+ Nomen</span>
            <span class="wo-badge pp">kein Verb</span>
          </th>
        </tr>
      </thead>
      <tbody>
        <!-- kausal -->
        <tr class="konn-row-kausal">
          <td>
            kausal
            <span class="konn-q">Warum? (Grund)</span>
          </td>
          <td>
            <span class="konn-word">denn</span>
            <span class="konn-ex">Er bleibt zu Hause, <strong>denn</strong> er ist krank.</span>
          </td>
          <td>
            <span class="konn-word">weil</span>
            <span class="konn-ex">Er bleibt zu Hause, <strong>weil</strong> er krank <strong>ist</strong>.</span>
          </td>
          <td>
            <span class="konn-word">deshalb</span>
            <span class="konn-ex">Er ist krank. <strong>Deshalb</strong> <strong>bleibt</strong> er zu Hause.</span>
          </td>
          <td>
            <span class="konn-word">wegen + G</span>
            <span class="konn-ex"><strong>Wegen</strong> seiner Krankheit bleibt er zu Hause.</span>
          </td>
        </tr>
        <!-- konzessiv -->
        <tr class="konn-row-konzessiv">
          <td>
            konzessiv
            <span class="konn-q">anders als erwartet</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">obwohl</span>
            <span class="konn-ex">Er geht joggen, <strong>obwohl</strong> es <strong>regnet</strong>.</span>
          </td>
          <td>
            <span class="konn-word">trotzdem</span>
            <span class="konn-ex">Es regnet. <strong>Trotzdem</strong> <strong>geht</strong> er joggen.</span>
          </td>
          <td>
            <span class="konn-word">trotz + G</span>
            <span class="konn-ex"><strong>Trotz</strong> des Regens geht er joggen.</span>
          </td>
        </tr>
        <!-- temporal -->
        <tr class="konn-row-temporal">
          <td>
            temporal
            <span class="konn-q">Wann? (Zeitpunkt)</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">während · als · wenn</span>
            <span class="konn-ex"><strong>Während</strong> er <strong>kochte</strong>, hörte er Musik.</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">während + G</span>
            <span class="konn-ex"><strong>Während</strong> des Kochens hörte er Musik.</span>
          </td>
        </tr>
        <!-- konditional -->
        <tr class="konn-row-konditional">
          <td>
            konditional
            <span class="konn-q">In welchem Fall? (Bedingung)</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">wenn</span>
            <span class="konn-ex"><strong>Wenn</strong> es morgen <strong>regnet</strong>, bleibe ich zu Hause.</span>
          </td>
          <td class="empty">—</td>
          <td class="empty">—</td>
        </tr>
        <!-- final -->
        <tr class="konn-row-final">
          <td>
            final
            <span class="konn-q">Wozu? (Ziel / Zweck)</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">um … zu · damit</span>
            <span class="konn-ex">Er lernt Deutsch, <strong>um</strong> in Zürich <strong>zu</strong> arbeiten.</span>
          </td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">zum + nom. Infinitiv</span>
            <span class="konn-ex">Ich gehe in den Park <strong>zum</strong> Trainieren.</span>
            <span class="konn-ex" style="color:#68d8b8; font-size:11px;">= Finalangabe</span>
          </td>
        </tr>
        <!-- modal -->
        <tr class="konn-row-modal">
          <td>
            modal
            <span class="konn-q">Wie? (Art und Weise)</span>
          </td>
          <td class="empty">—</td>
          <td class="empty">—</td>
          <td class="empty">—</td>
          <td>
            <span class="konn-word">durch + nom. Infinitiv</span>
            <span class="konn-ex">Man kann abnehmen <strong>durch</strong> regelmässiges Trainieren.</span>
            <span class="konn-ex" style="color:#7090e0; font-size:11px;">= Modalangabe</span>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="notes" style="margin-top:16px;">
    <div class="notes-title">📌 Wortstellung — Zusammenfassung</div>
    <strong>Konjunktion</strong> (denn): Pos. 0 — zählt nicht als
    Satzglied, Hauptsatz-Wortstellung bleibt.<br>
    <strong>Subjunktion</strong> (weil, obwohl, …): leitet
    Nebensatz ein — konjugiertes Verb am <strong>Ende</strong>.<br>
    <strong>Konjunktionaladverb</strong> (deshalb, trotzdem):
    steht auf Pos. 1 — <strong>Inversion</strong> (Verb direkt
    danach).<br>
    <strong>Präposition</strong> (wegen, trotz, …): kein Verb
    nötig — nur Nomen (oft mit Genitiv).
  </div>

  <div class="notes" style="margin-top:8px; border-left:3px solid #68d8b8;">
    <div class="notes-title" style="color:#68d8b8;">🔗 Querverweise</div>
    <strong>Finalangabe</strong> / <strong>Modalangabe</strong>:
    → siehe <a href="Satzstruktur.html#tekamolo"
    style="color:#68d8b8;">Satzstruktur · TeKaMoLoFi</a><br>
    <strong>Nominalisierter Infinitiv</strong>:
    → siehe <a href="#nominal"
    style="color:#c8a8ff;">oben · Nominalisiert</a>
  </div>
</div>
```

---

### Change 4 — Update page title

Current title (line 9):

```html
<title>Nebensätze — dass · damit · um…zu · Infinitivsätze</title>
```

Update to:

```html
<title>Nebensätze & Konnektoren — dass · damit · um…zu · Infinitivsätze</title>
```

---

## Verification

1. **Nav**: "Konnektoren" link appears after "Redemittel",
   scrolls to the new section.
2. **Table renders**: 6 rows × 5 columns. Non-empty cells
   show word + example. Empty cells show dimmed "—".
3. **Word-order badges**: colored badges in column headers
   (HS,HS / Verb am Ende / Inversion / kein Verb).
4. **Row colors**: left-border accent on each semantic category.
5. **Mobile scroll**: table scrolls horizontally on narrow
   screens, no content overflow.
6. **Cross-references**: links to Satzstruktur TeKaMoLoFi and
   to the Nominalisiert section work.
7. **Existing sections**: all untouched.

## Anti-patterns

- Do NOT modify any existing sections.
- Do NOT add example sentences that weren't in the source
  material or aren't clearly correct B1 German.
- Swiss spelling throughout (ss not ß, Spass not Spaß, etc.).
- Do NOT add this table content to Satzstruktur.html —
  it lives in Nebensaetze.html only.
