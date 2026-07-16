# V32 — Vocabulary (3 Verben) + Adjektivendungen Spezielle Formen + Genitivattribut

**Depends on:** V31 deployed.
**Source:** Manual vocab additions + Bellingua PDFs (Adjektivdeklination, Das Genitivattribut).

---

## 1. Verben.html — append to DATA (3 verbs)

```javascript
// ─── V32 additions ───
["ausmachen","Akk","hat ausgemacht","to turn off; to agree on; to mind","s","Mach bitte das Licht aus. / Wir haben einen Termin ausgemacht. / Macht es dir etwas aus?"],
["stammen","aus+Dat","hat gestammt","to originate from, to come from","w","Das Wort stammt aus dem Lateinischen."],
["herumstehen","Ohne","hat herumgestanden","to stand around","s","Steh nicht herum, hilf mir!"],
```

Add to IRREGULAR in Verben.html:

```javascript
"ausmachen":["macht aus","machte aus"],
"herumstehen":["steht herum","stand herum"],
```

Add to WEAK in Verben.html:

```javascript
"stammen":["stammt","stammte"],
```

**Note:** *ausmachen* is listed as strong ("s") because of the separable prefix behavior with *stehen*-based compound — actually wait, *ausmachen* is derived from *machen* (weak). Correction: mark as **"w"** (weak). *herumstehen* is strong ("s") because of *stehen* (stand/stood).

**Corrected entries:**

```javascript
["ausmachen","Akk","hat ausgemacht","to turn off; to agree on; to mind","w","Mach bitte das Licht aus. / Wir haben einen Termin ausgemacht. / Macht es dir etwas aus?"],
```

Move ausmachen to WEAK:

```javascript
"ausmachen":["macht aus","machte aus"],
```

---

## 2. Adjektivendungen.html — new section: "Spezielle Formen"

### Placement

Add as a **new section after the existing content** (after the declension grids and the mental model explanation). This section covers edge cases and exceptions that don't fit in the main tables.

### Content structure

**Section title:** `Spezielle Formen`

#### 2a. Adjektive auf -el

When declined, the **-e-** of the stem drops:

| Grundform | Dekliniert | Beispiel |
|-----------|-----------|----------|
| dunkel | dunkl- + Endung | das dunkl**e** Kleid |
| edel | edl- + Endung | ein edl**er** Wein |
| flexibel | flexibl- + Endung | eine flexibl**e** Lösung |

#### 2b. Adjektive auf Vokal + -er

The **-e-** of the stem drops:

| Grundform | Dekliniert | Beispiel |
|-----------|-----------|----------|
| sauer | saur- + Endung | die saur**e** Gurke |
| teuer | teur- + Endung | ein teur**es** Auto |

#### 2c. hoch

Special form: **hoch → hoh-** when declined:

> ein hoh**er** Turm

#### 2d. Adjektive auf -a

**Keine Endung** — undeclinable:

> die rosa Bluse · ein lila Kleid · eine extra Portion

#### 2e. Farbadjektive: beige, creme, orange, pink, türkis

Two options:
- Suffix **-farben** + normal Deklinationsendung: *die beigefarbenen Handschuhe*, *das türkisfarbene Meer*
- Also acceptable: *das rosafarbene Kleid*, *der lilafarbene Ball*

#### 2f. Nach Zahlwörtern

After number words → declension follows **Nullartikel (Plural)** pattern:

> Im Schlussverkauf habe ich **drei** weiss**e** T-Shirts und **zwei** blau**e** Taschen gekauft.

#### 2g. viel / mehr / wenig

| Wort | Unzählbare Nomen | Zählbare Nomen |
|------|-----------------|----------------|
| **viel** | keine Endung: *viel Hunger* | mit Endung: *viel**e** Kinder*, *mit viel**en** Kindern* |
| **mehr** | keine Endung: *mehr Geld* | keine Endung: *mehr Schuhe* |
| **wenig** | keine Endung: *wenig Zeit* | mit oder ohne Endung: *wenig(e) Fragen* |

### Styling notes

- Use the same card/rule-card pattern as the existing sections.
- A compact table or grid format works best here — each sub-rule is small.
- Color-highlight the stem changes (dropped -e-, hoch→hoh-) to make the pattern visible.

---

## 3. Artikel.html — new section: "Das Genitivattribut"

### Placement

Add as a **new section at the end** of Artikel.html, after the existing Verschmelzungen section. The Genitivattribut is about article + noun forms in the Genitiv case, so Artikel.html is the natural home.

### Content structure

**Section title:** `Das Genitivattribut`

**Key concept:**
> Das Genitivattribut gehört zu einem Nomen und beschreibt es genauer. Es hat eine possessive Bedeutung.
> Fragewort: **wessen?**

**Position rule:**
- Normal nouns: Genitivattribut steht **rechts** vom Nomen → *die Farbe **des T-Shirts***
- Eigennamen: Genitiv steht **links** vom Nomen → ***Sandras** Handy*

#### 3a. Genitiv-Artikelformen (table)

|  | Maskulin | Feminin | Neutrum | Plural |
|--|----------|---------|---------|--------|
| **Definitartikel** | des Lehrers | der Frau | des T-Shirts | der Schuhe |
| **Possessivartikel** | meines Lehrers | meiner Frau | meines T-Shirts | meiner Schuhe |
| **Indefinitartikel** | eines Lehrers | einer Frau | eines T-Shirts | **von Schuhen** |
| **Negationsartikel** | keines Lehrers | keiner Frau | keines T-Shirts | keiner Schuhe |

**Note for Nullartikel Plural:** highlight that when there's no article in Plural Genitiv, the alternative **von + Dativ** is used instead → *von Schuhen* (not *~~Schuher~~*).

#### 3b. Genitivendungen am Nomen

| Regel | Endung | Beispiel |
|-------|--------|----------|
| Mehrsilbige Nomen | **-s** | des Studium**s**, des Lehrer**s** |
| Einsilbige deutsche Nomen | **-(e)s** | des Hund**(e)s**, des Arzt**(e)s** |
| Nomen auf -s, -sch, -z, -x | **-es** | des Platz**es**, des Schulhaus**es** |
| Nomen auf -nis | **-ses** | des Zeugnis**ses**, des Gefängnis**ses** |
| Eigennamen | **-s** (links!) | Sandra**s** Handy, Carlos' Buch |

**Exception note:** Fremdwörter und Kurzwörter often take only -s: *des Films, des Chefs, des Tests*.

**Eigennamen auf -s, -z, -x:** → Apostroph statt -s: *Carlos**'** Buch*, *Frau Haag**s** Adresse*.

### Styling notes

- Use the existing color system from Artikel.html for gender (blue=der, pink=die, gold=das, green=plural).
- Highlight the Genitiv endings on nouns with a distinct color (suggestion: match the Genitiv color from Adjektivendungen.html for consistency).
- The position rule (rechts vs. links for Eigennamen) should be visually prominent — maybe a small diagram or contrasting boxes.

---

## Notes

- **Konzessivsätze (obwohl/trotzdem):** Already fully covered in Nebensaetze.html — no brief needed.
- **ausmachen** has three distinct meanings packed into one entry. The example field shows all three separated by " / ". This follows the pattern of other multi-meaning verbs in the app.
- **ausmachen** is weak (machen → machte → gemacht), **herumstehen** is strong (stehen → stand → gestanden).
