# V27 — Pluralbildung Cheatsheet + Vocabulary

**Depends on:** V26 deployed.

## Goal

New reference page `Plural.html` covering German plural formation rules,
plus 4 vocabulary additions collected during Session 4.

---

## 1. New page: Plural.html

### Page structure

- Header: title **Pluralbildung**, subtitle "Wie bildet man den Plural?"
- Nav links to each section
- Badge: `Referenz`
- Accent color: pick a color not already heavily used (suggestion: orange/coral range)
- Follow the same HTML/CSS patterns as Satzstruktur.html or Adjektivendungen.html (sticky header, section titles with colored dots, table styling)
- Include `css/common.css`, same fonts/favicon as all other pages

### Guess mode

Add guess mode support (same toggle pattern as other pages). In all tables
with a "Plural" or "Beispiele" column, the plural/example values should be
hideable so the user can try to guess them.

### Sections

#### Section 1: "Regeln nach Endung" (Suffix rules)

Table with columns: **Endung** | **Plural** | **Gilt für** | **Beispiele**

| Endung | Plural | Gilt für | Beispiele |
|--------|--------|----------|-----------|
| -ung | -(e)n | alle (die) | Wohnung → Wohnungen |
| -heit | -(e)n | alle (die) | Freiheit → Freiheiten |
| -keit | -(e)n | alle (die) | Möglichkeit → Möglichkeiten |
| -schaft | -(e)n | alle (die) | Gesellschaft → Gesellschaften |
| -tion | -(e)n | alle (die) | Information → Informationen |
| -tät | -(e)n | alle (die) | Universität → Universitäten |
| -ie | -n | alle (die) | Energie → Energien |
| -ik | -(e)n | alle (die) | Musik → Musiken *(selten)* |
| -in *(Agentin)* | -nen | alle (die) | Ärztin → Ärztinnen |
| -nis | -nisse | alle | Ergebnis → Ergebnisse |
| -chen | — | alle (das) | Mädchen → Mädchen |
| -lein | — | alle (das) | Büchlein → Büchlein |
| -e *(fem.)* | -n | die | Blume → Blumen, Lampe → Lampen |
| Fremdwort + Vokal | -s | meist das | Auto → Autos, Büro → Büros |

Mark reliability visually — e.g. a small tag or color indicator:
- 🟢 **immer** (100%): -ung, -heit, -keit, -schaft, -tion, -tät, -in, -nis, -chen, -lein
- 🟡 **fast immer** (~95%): -ie, -e (fem.), Fremdwort+Vokal
- 🟠 **meistens**: -ik (some have no plural at all)

#### Section 2: "Endung + Artikel" (Gender-dependent suffix rules)

The -er, -el, -en endings behave differently based on gender.

Table with columns: **Endung** | **Artikel** | **Plural** | **Beispiele**

| Endung | Artikel | Plural | Beispiele |
|--------|---------|--------|-----------|
| -er | der/das | — (±Umlaut) | Lehrer → Lehrer, Vater → Väter |
| -er | die | -n | Schwester → Schwestern, Feder → Federn |
| -el | der/das | — (±Umlaut) | Schlüssel → Schlüssel, Nagel → Nägel |
| -el | die | -n | Gabel → Gabeln, Schüssel → Schüsseln |
| -en | der/das | — (±Umlaut) | Zeichen → Zeichen, Ofen → Öfen |
| -en | die | — | *(selten als Endung bei die)* |

Color-code the gender column using the app's standard gender colors:
blue = der, pink = die, gold = das.

#### Section 3: "Standard nach Artikel" (Gender defaults)

When no suffix rule from Section 1/2 applies, gender is the best predictor.

Table with columns: **Artikel** | **Häufigstes Muster** | **Beispiele**

| Artikel | Häufigstes Muster | Beispiele |
|---------|-------------------|-----------|
| die | -(e)n (~95%) | Tür → Türen, Uhr → Uhren |
| die *(Sondergruppe)* | -¨e | Hand → Hände, Stadt → Städte, Nacht → Nächte, Kraft → Kräfte |
| der *(einsilbig)* | -¨e | Baum → Bäume, Kopf → Köpfe, Stuhl → Stühle |
| der *(mehrsilbig)* | -e | Beruf → Berufe, Erfolg → Erfolge |
| das *(einsilbig)* | -er / -¨er | Kind → Kinder, Bild → Bilder, Buch → Bücher |
| das *(mehrsilbig)* | -e | Geschenk → Geschenke, Ergebnis → Ergebnisse |

Same gender colors for the Artikel column.

#### Section 4: "Umlaut-Tendenzen"

Short reference for when to expect Umlaut in the plural.

Table with columns: **Wann?** | **Umlaut?** | **Beispiele**

| Wann? | Umlaut? | Beispiele |
|-------|---------|-----------|
| Einsilbig der + a/o/u | häufig | Baum→Bäume, Kopf→Köpfe, Hut→Hüte |
| Einsilbig der + a/o/u (Ausnahmen) | nein | Hund→Hunde, Tag→Tage, Schuh→Schuhe |
| Einsilbig die + a/o/u/-au | häufig | Hand→Hände, Nacht→Nächte, Maus→Mäuse |
| Plural auf -er | fast immer | Haus→Häuser, Buch→Bücher, Wald→Wälder |
| -el, -er, -en (der/das) | manchmal | Vater→Väter, Nagel→Nägel, Ofen→Öfen |
| Fremdwörter | nie | Auto→Autos, Hotel→Hotels |

#### Section 5: "Sonderfälle" (Irregular/notable)

Small table of common irregular plurals worth memorizing.

| Singular | Plural | Besonderheit |
|----------|--------|-------------|
| das Herz | die Herzen | Mischform (n-Deklination im Singular) |
| das Museum | die Museen | Lateinisch: -um → -en |
| das Thema | die Themen | Griechisch: -a → -en |
| das Datum | die Daten | Lateinisch: -um → -en |
| das Visum | die Visa | Lateinisch: -um → -a |
| der Atlas | die Atlanten | Griechisch |
| der Globus | die Globen | Lateinisch |
| der Rhythmus | die Rhythmen | Griechisch: -us → -en |
| die Firma | die Firmen | Italienisch: -a → -en |
| der Modus | die Modi | Lateinisch: -us → -i |
| das Praktikum | die Praktika | Lateinisch: -um → -a |
| der Kaktus | die Kakteen | Lateinisch: -us → -een |

---

## 2. Add to index.html

Add a card linking to Plural.html. Place it near the grammar reference pages
(near Artikel, Adjektivendungen, etc.).

```html
<a class="card a-orange" href="Plural.html">
  <span class="badge badge-ref">Referenz</span>
  <span class="emoji">🔢</span>
  <div class="title">Pluralbildung</div>
  <div class="desc">Endungs&shy;regeln, Artikel-Defaults, Umlaut-Tendenzen und Sonder&shy;fälle.</div>
</a>
```

If `a-orange` doesn't exist yet, define it in index.html's `<style>` using
a warm orange accent (e.g. `#e87040` or similar).

---

## 3. New vocabulary (4 items)

### Verben.html — append to DATA:

```javascript
// ─── V27 additions ───
["reimen", "Akk", "hat gereimt", "to rhyme", "w", "„Haus" reimt sich auf „Maus"."],
```

Note: "sich reimen auf + Akk" is the reflexive form, but the base verb
entry uses Akk as the complement marker per existing convention.

### Substantive.html — append to DATA:

```javascript
// ─── V27 additions ───
["Fensterladen", "der", "Fensterläden", "shutter", "home", "Im Sommer schliessen wir die Fensterläden gegen die Hitze."],
["Griff", "der", "-e", "handle, grip", "home", "Der Griff der Pfanne ist heiss."],
["Schalter", "der", "-", "switch; counter", "home", "Drück den Schalter, um das Licht anzumachen."],
```

---

## Implementation notes

- Use the same HTML/CSS structure as the existing reference pages
  (Satzstruktur, Adjektivendungen, etc.)
- Guess mode: apply `guess-cell-hidden` class on the Plural/Beispiele columns
  when active
- All tables should be responsive (scroll on mobile if needed)
- Use the standard gender colors for Artikel columns: blue (#4a90d9) = der,
  pink (#d94a8c) = die, gold (#d4a017) = das
- Reliability indicators can be small colored dots or pill badges at the
  start of each row
