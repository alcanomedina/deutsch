# V21 — Passiv.html (new cheatsheet)

**Depends on:** V20 deployed. New page, no file dependency.
**Source:** NK123 B1 Modul 23 Tag 1 (Fokus Strukturen).

## Goal

Create a new `Passiv.html` cheatsheet covering the
Vorgangspassiv (process passive) — formation across tenses,
Passiv with Modalverben, and Aktiv→Passiv transformation rules.
Dark theme, same stack as all other pages.

## Page structure

### 1. Header
Title: **Das Passiv** — subtitle: "Die Aktion ist wichtiger
als die Person"

### 2. "werden" conjugation mini-table
Since Passiv relies entirely on "werden", show its conjugation
as a compact reference:

| Person | Präsens | Präteritum |
|--------|---------|------------|
| ich    | werde   | wurde      |
| du     | wirst   | wurdest    |
| er/sie | wird    | wurde      |
| wir    | werden  | wurden     |
| ihr    | werdet  | wurdet     |
| sie/Sie| werden  | wurden     |

### 3. Passiv formation by tense — main table
Three columns: **Tempus**, **Formel**, **Beispiel**

| Tempus      | Formel                                   | Aktiv                          | Passiv                                  |
|-------------|------------------------------------------|--------------------------------|-----------------------------------------|
| Präsens     | werden (konj.) + Partizip II             | Man kocht die Suppe.           | Die Suppe **wird** gekocht.             |
| Präteritum  | wurden (konj.) + Partizip II             | Man kochte die Suppe.          | Die Suppe **wurde** gekocht.            |
| Perfekt     | sein (konj.) + Partizip II + **worden**  | Man hat die Suppe gekocht.     | Die Suppe **ist** gekocht **worden**.   |

Note under Perfekt: "worden (not geworden!) — the passive
participle drops the ge- prefix."

### 4. Passiv mit Modalverben
| Aktiv                              | Passiv                                      |
|------------------------------------|---------------------------------------------|
| Man muss die Suppe kochen.         | Die Suppe **muss** gekocht **werden**.       |
| Man kann das Auto reparieren.      | Das Auto **kann** repariert **werden**.       |
| Man darf hier nicht parken.        | Hier **darf** nicht geparkt **werden**.       |
| Man soll die Fenster streichen.    | Die Fenster **sollen** gestrichen **werden**.|

Formula: **Modalverb (konj.) + Partizip II + werden**

### 5. Aktiv → Passiv transformation rules
Show as rule cards (same style as Relativpronomen.html):

**Rule 1: Akkusativobjekt → Subjekt (Nominativ)**
- Aktiv: Jemand streicht **die Fenster**. (Akk)
- Passiv: **Die Fenster** werden gestrichen. (Nom)
- The Akkusativobjekt becomes the new subject in Nominativ.

**Rule 2: Subjekt → von + Dativ (or drops)**
- Aktiv: **Der Lehrling** schält die Kartoffeln.
- Passiv: Die Kartoffeln werden **vom Lehrling** geschält.
- The original subject becomes "von + Dativ" (the Agens).
  Often dropped entirely when the doer is unimportant
  (jemand, man, Leute).

**Rule 3: Dativ bleibt Dativ**
- Aktiv: Man hilft **der alten Frau**.
- Passiv: **Der alten Frau** wird geholfen.
- Dative objects stay in the dative. No new Nominativ subject!
  → verb stays 3rd person singular.

**Rule 4: Präpositionalergänzung bleibt**
- Aktiv: Die Zeitung berichtet **über den Unfall**.
- Passiv: **Über den Unfall** wird von der Zeitung berichtet.
- Prepositional complements don't change case.

### 6. Passiv ohne Subjekt
When the active sentence has no Akkusativobjekt, the passive
has no grammatical subject → verb is always 3rd person singular.

- Man hilft den Kindern. → **Den Kindern wird geholfen.**
- Man tanzt hier. → **Hier wird getanzt.**

### 7. Interactive section (optional)
"Raten" mode: show an active sentence, user must form the passive.
Could be implemented as a simple toggle quiz — but this is
lower priority. The reference tables are the core value.

## Styling notes

- Same dark theme, Inter + JetBrains Mono, common.css
- Color scheme suggestion: use a distinct accent color to
  differentiate from other pages — e.g. teal (#14b8a6) or
  amber (#f59e0b) for "werden" highlighting
- Tables should highlight the Passiv auxiliary (werden/wurde/ist)
  and the Partizip II in contrasting colors
- Rule cards should follow the Relativpronomen.html card pattern
- Mobile-responsive table scrolling

## File location

Create `Passiv.html` in repo root (flat structure, same as all
other cheatsheets). Add link to index.html navigation.
