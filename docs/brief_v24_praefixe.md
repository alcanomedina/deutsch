# V24 — Verb Prefixes (Präfixe)

**Depends on:** V20 deployed.
**Source:** prafixe.pdf, verbenmitzweiprafixen.pdf
(both in Project documents).

## Goal

Add a **Präfixe** reference to the app — either as a new
`Praefixe.html` page or as a prominent section in
`Verben.html`. Covers the three prefix categories
(trennbar, untrennbar, Wechselpräfixe) with formation
rules and examples.

Recommended: **new page** — the content is self-contained,
reference-heavy, and doesn't fit the Verben.html data-table
pattern. It's more like Komposita.html (structural reference).

## Page structure

### 1. Header
Title: **Präfixe** — subtitle: "Trennbare und untrennbare
Verben"

### 2. Overview rule
One-sentence summary card:
"**Trennbare Präfixe** are stressed and split off in main
clauses. **Untrennbare Präfixe** are unstressed and stay
attached. **Wechselpräfixe** can be either — the meaning
changes."

### 3. Three-column prefix table

| Trennbar (separable) | Untrennbar (inseparable) | Wechsel (either) |
|----------------------|--------------------------|-------------------|
| ab-                  | be-                      | durch-            |
| an-                  | emp-                     | über-             |
| auf-                 | ent-                     | um-               |
| aus-                 | er-                      | unter-            |
| bei-                 | ge-                      | wieder-           |
| ein-                 | miss-                    |                   |
| her-                 | ver-                     |                   |
| hin-                 | zer-                     |                   |
| los-                 |                          |                   |
| mit-                 |                          |                   |
| nach-                |                          |                   |
| um- *(sometimes)*    |                          |                   |
| vor-                 |                          |                   |
| weg-                 |                          |                   |
| zu-                  |                          |                   |
| zurück-              |                          |                   |

Color coding: green for trennbar, red for untrennbar,
yellow/amber for Wechsel.

### 4. Formation rules — three rule cards

**Card 1: Trennbare Verben**
- Präsens: prefix splits to end of clause
  → Ich **stehe** um 7 Uhr **auf**.
- Perfekt: ge- goes BETWEEN prefix and stem
  → Ich bin um 7 Uhr **auf**ge**standen**.
- Nebensatz: stays together at the end
  → ..., weil ich um 7 Uhr **aufstehe**.
- zu-Infinitiv: zu goes BETWEEN prefix and stem
  → Ich versuche, früh **auf**zu**stehen**.

**Card 2: Untrennbare Verben**
- Prefix never separates — stays attached in ALL forms
  → Ich **verstehe** das. (not: *Ich stehe das ver.)
- Perfekt: NO ge- prefix!
  → Ich habe das **verstanden**. (not: *geverstanden)
- zu-Infinitiv: zu comes BEFORE the whole verb
  → Es ist schwer, das **zu verstehen**.
- Stress falls on the STEM, not the prefix:
  ver**STEH**en, be**KOMM**en, er**ZÄHL**en

**Card 3: Wechselpräfixe**
Show pairs where the SAME prefix creates different verbs
depending on trennbar/untrennbar:

| Trennbar (literal)              | Untrennbar (figurative)          |
|---------------------------------|----------------------------------|
| **um**fahren: Er fährt den Baum **um**. (knocks over) | **um**fahren: Er **um**fährt den Baum. (drives around) |
| **über**setzen: Er setzt ans andere Ufer **über**. (crosses) | **über**setzen: Er **über**setzt den Text. (translates) |
| **unter**stellen: Stell das Velo **unter**! (put underneath) | **unter**stellen: Er **unter**stellt mir Lügen. (accuses) |
| **durch**brechen: Das Eis bricht **durch**. (breaks through) | **durch**brechen: Er **durch**bricht die Schallmauer. (breaks through, figurative) |

Rule of thumb: trennbar = concrete/literal meaning,
untrennbar = abstract/figurative meaning.

### 5. Verben mit zwei Präfixen (advanced section)

Collapsible or at the bottom — lower priority but good reference:

When a verb has TWO prefixes, the OUTER prefix determines
separability:

| Verb           | Outer prefix | Trennbar? | Präsens                    | Perfekt                    |
|----------------|-------------|-----------|----------------------------|-----------------------------|
| ab·bestellen   | ab- (trenn) | ✓         | Ich bestelle das Abo **ab**| hat **ab**bestellt          |
| an·erkennen    | an- (trenn) | ✓         | Er erkennt den Titel **an**| hat **an**erkannt           |
| be·antragen    | be- (untr)  | ✗         | Er **be**antragt ein Visum | hat **be**antragt           |
| vor·bereiten   | vor- (trenn)| ✓         | Ich bereite mich **vor**   | hat **vor**bereitet         |
| ver·anstalten  | ver- (untr) | ✗         | Er **ver**anstaltet ein Fest| hat **ver**anstaltet        |
| ein·verstanden | ein- (trenn)| ✓ (adj)   | (used as adjective only)   | —                           |

### 6. Quick-test section (optional)
Show a verb, user guesses: trennbar or untrennbar?
Use verbs from the V20 DATA array for realistic practice.

## Styling notes

- Same dark theme, Inter + JetBrains Mono, common.css
- Accent colors: green (#22c55e) for trennbar, red (#ef4444)
  for untrennbar, amber (#f59e0b) for Wechsel — consistent
  with the intuition (green = splits, red = stays)
- Wechselpräfixe pairs: show side-by-side with visual
  contrast (literal vs figurative)
- Mobile-responsive

## File location

Create `Praefixe.html` in repo root. Add link to index.html
navigation.
