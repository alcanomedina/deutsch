# V23 — Domain Vocabulary: Modul 22 Tag 3–4, Modul 23 Tag 1

**Depends on:** V20 deployed.
**Source:** NK123 B1 Modul 22 Tag 3–4, Modul 23 Tag 1.

## Goal

Add domain-specific nouns from three Bellingua sessions
to `Substantive.html`. These cover Ernährung, Körper/Sport,
Wohnung/Renovierung topics. All linguistic data from Claude's
knowledge. Swiss spelling throughout.

## Data format

Each entry: `["word", "article", "plural", "meaning"]`

## Pre-check

Claude Code should verify each word is not already in the
DATA array before adding. The delta below was computed against
the V20-deployed codebase.

---

## File: Substantive.html

Append to end of `DATA` array (before closing `];`):

```javascript
// ─── Modul 22–23 domain vocabulary (V23) ───
// === Ernährung / Lebensmittel ===
["Ballaststoff", "der", "Ballaststoffe", "dietary fibre"],
["Diät", "die", "Diäten", "diet"],
["Eiweiss", "das", "–", "protein"],
["Ernährungsberatung", "die", "Ernährungsberatungen", "nutritional counselling"],
["Getreide", "das", "–", "grain, cereal"],
["Hülsenfrucht", "die", "Hülsenfrüchte", "legume, pulse"],
["Kohlenhydrat", "das", "Kohlenhydrate", "carbohydrate"],
["Nährstoff", "der", "Nährstoffe", "nutrient"],
["Vollkorn", "das", "–", "wholegrain"],
["Zutat", "die", "Zutaten", "ingredient"],
// === Körper / Sport / Gesundheit ===
["Bach", "der", "Bäche", "stream, creek"],
["Halbzeit", "die", "Halbzeiten", "half-time"],
["Handtuch", "das", "Handtücher", "towel"],
["Leichtathletik", "die", "–", "athletics, track and field"],
["Mannschaftssport", "der", "–", "team sport"],
["Misserfolg", "der", "Misserfolge", "failure"],
["Pokalsieger", "der", "Pokalsieger", "cup winner"],
["Probetraining", "das", "Probetrainings", "trial training session"],
["Reitkurs", "der", "Reitkurse", "riding course"],
["Reitschule", "die", "Reitschulen", "riding school"],
["Siegtreffer", "der", "Siegtreffer", "winning goal"],
["Sportverein", "der", "Sportvereine", "sports club"],
["Verlängerung", "die", "Verlängerungen", "extension, extra time"],
["Voranmeldung", "die", "Voranmeldungen", "pre-registration"],
["Wassergymnastik", "die", "–", "aqua aerobics"],
["Weltmeisterschaft", "die", "Weltmeisterschaften", "world championship"],
["Zweck", "der", "Zwecke", "purpose"],
["Überzeugung", "die", "Überzeugungen", "conviction, belief"],
// === Fitness-Studio ===
["Getränkeautomat", "der", "Getränkeautomaten", "drinks machine"],
["Massageraum", "der", "Massageräume", "massage room"],
["Ruheraum", "der", "Ruheräume", "relaxation room"],
["Saftbar", "die", "Saftbars", "juice bar"],
["Sauna", "die", "Saunen", "sauna"],
["Schliessfach", "das", "Schliessfächer", "locker"],
["Solarium", "das", "Solarien", "solarium"],
// === Wohnung / Haus / Renovierung ===
["Antenne", "die", "Antennen", "antenna"],
["Arztpraxis", "die", "Arztpraxen", "doctor's practice"],
["Autowerkstatt", "die", "Autowerkstätten", "car workshop"],
["Dachboden", "der", "Dachböden", "attic"],
["Dachdecker", "der", "Dachdecker", "roofer"],
["Elektriker", "der", "Elektriker", "electrician"],
["Empfangsraum", "der", "Empfangsräume", "reception room"],
["Fassade", "die", "Fassaden", "facade"],
["Fensterbrett", "das", "Fensterbretter", "windowsill"],
["Fernsehtechniker", "der", "Fernsehtechniker", "TV technician"],
["Gartenanlage", "die", "Gartenanlagen", "garden grounds"],
["Glühbirne", "die", "Glühbirnen", "lightbulb"],
["Heizungsanlage", "die", "Heizungsanlagen", "heating system"],
["Installateur", "der", "Installateure", "plumber, installer"],
["Maler", "der", "Maler", "painter (trade)"],
["Renovierung", "die", "Renovierungen", "renovation"],
["Stromleitung", "die", "Stromleitungen", "power line"],
["Tischler", "der", "Tischler", "carpenter"],
["Treppenhaus", "das", "Treppenhäuser", "staircase"],
["Wasserleitung", "die", "Wasserleitungen", "water pipe"],
// === Sonstiges ===
["Amtssitz", "der", "Amtssitze", "official residence"],
["Anzeige", "die", "Anzeigen", "advertisement, display"],
["Badegast", "der", "Badegäste", "swimming pool guest"],
["Bademeister", "der", "Bademeister", "lifeguard"],
["Badetuch", "das", "Badetücher", "bath towel"],
["Blumenvase", "die", "Blumenvasen", "flower vase"],
["Fachleute", "die", "–", "specialists, experts"],
["Hupe", "die", "Hupen", "horn (car)"],
["Lieferwagen", "der", "Lieferwagen", "delivery van"],
["Meerjungfrau", "die", "Meerjungfrauen", "mermaid"],
["Reifen", "der", "Reifen", "tyre"],
["Sehenswürdigkeit", "die", "Sehenswürdigkeiten", "sight, attraction"],
["Stamm", "der", "Stämme", "trunk, tribe, stem"],
["Wal", "der", "Wale", "whale"],
```

Total: 68 nouns.
Existing in app (post-V20): ~1746. New total after V23: **~1814**.
