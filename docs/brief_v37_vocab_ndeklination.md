# V37 — Vocabulary (19) + N-Deklination Cheatsheet

**Depends on:** V36 deployed.
**Source:** Manual vocab additions + Bellingua B1 Modul 23/24 PDFs.

---

## 1. Substantive.html — append to DATA (5 nouns)

```javascript
// ─── V37 additions ───
["Abfahrt", "die", "-en", "departure", "travel", "Die Abfahrt des Zuges ist um 14:30 Uhr."],
["Diskussion", "die", "-en", "discussion", "general", "Die Diskussion über das Thema war hitzig."],
["Fahrt", "die", "-en", "ride, trip, journey", "travel", "Die Fahrt dauert etwa zwei Stunden."],
["Leiter", "die", "-n", "ladder", "home", "Ich brauche eine Leiter, um das Dach zu erreichen."],
["Reputation", "die", "-en", "reputation", "business", "Die Firma hat eine gute Reputation."],
```

Note: "Leiter" is a dual-gender homonym. "der Leiter" (manager) is already in DATA. This second entry with "die" will produce two cards distinguished by gender color (blue vs. pink).

## 2. Verben.html — append to DATA (14 verbs)

```javascript
// ─── V37 additions ───
["basteln", "Akk/an+Dat", "hat gebastelt", "to do crafts, to tinker", "w", "Die Kinder basteln Laternen für den Umzug."],
["beantragen", "Akk", "hat beantragt", "to apply for (officially)", "w", "Ich habe meinen Schweizer Pass beantragt."],
["beschliessen", "Akk", "hat beschlossen", "to decide, to resolve", "s", "Der Vorstand hat beschlossen, die Preise zu erhöhen."],
["einstecken", "Akk", "hat eingesteckt", "to pocket; to plug in; to take (criticism)", "w", "Steck den Schlüssel ein, bevor du gehst."],
["mitteilen", "Dat+Akk", "hat mitgeteilt", "to inform, to communicate", "w", "Ich teile dir mit, dass ich morgen komme."],
["missverstehen", "Akk", "hat missverstanden", "to misunderstand", "s", "Du hast mich missverstanden."],
["profitieren", "von+Dat", "hat profitiert", "to profit, to benefit", "w", "Davon profitieren alle Beteiligten."],
["sich verabschieden", "von+Dat", "hat sich verabschiedet", "to say goodbye", "w", "Er hat sich von seinen Kollegen verabschiedet."],
["sich weiterbilden", "Ohne", "hat sich weitergebildet", "to continue one's education", "w", "Sie bildet sich im Bereich IT weiter."],
["zusammenpassen", "Ohne", "hat zusammengepasst", "to go well together, to match", "w", "Die beiden passen gut zusammen."],
["zurückgeben", "Dat+Akk", "hat zurückgegeben", "to give back, to return", "s", "Kannst du mir das Buch zurückgeben?"],
["zurückgehen", "Ohne", "ist zurückgegangen", "to go back; to decrease", "s", "Die Verkaufszahlen sind zurückgegangen."],
["beibringen", "Dat+Akk", "hat beigebracht", "to teach (informally)", "s", "Meine Oma hat mir stricken beigebracht."],
```

Add to IRREGULAR in Verben.html:

```javascript
"beschliessen":["beschliesst","beschloss"],
"missverstehen":["missversteht","missverstand"],
"zurückgeben":["gibt zurück","gab zurück"],
"zurückgehen":["geht zurück","ging zurück"],
"beibringen":["bringt bei","brachte bei"],
```

Add to WEAK in Verben.html:

```javascript
"basteln":["bastelt","bastelte"],
"beantragen":["beantragt","beantragte"],
"einstecken":["steckt ein","steckte ein"],
"mitteilen":["teilt mit","teilte mit"],
"profitieren":["profitiert","profitierte"],
"sich verabschieden":["verabschiedet sich","verabschiedete sich"],
"sich weiterbilden":["bildet sich weiter","bildete sich weiter"],
"zusammenpassen":["passt zusammen","passte zusammen"],
```

## 3. Adjektive.html — append to DATA (1 adjective)

```javascript
// ─── V37 additions ───
["benachteiligt", "benachteiligter", "am benachteiligtesten", "disadvantaged", "quality", "regular", "Benachteiligte Gruppen brauchen mehr Unterstützung."],
```

---

## 4. NDeklination.html — New Cheatsheet Page

### Purpose

Interactive reference for the N-Deklination: masculine nouns (mostly living beings and Greek/Latin loanwords) that take **-n/-en** in all cases except Nominativ Singular.

### Page structure

#### 4a. Header

Title: **N-Deklination**
Subtitle: `Maskuline Nomen mit -n/-en in Akk, Dat und Gen Singular`

#### 4b. Declination comparison table

Two side-by-side examples showing the pattern, with case colors matching the site's standard (red=Nom, blue=Akk, green=Dat, gold=Gen):

| | **der Löwe** (Sg.) | **die Löwen** (Pl.) | | **der Elefant** (Sg.) | **die Elefanten** (Pl.) |
|---|---|---|---|---|---|
| **NOM** | der Löwe | die Löwen | | der Elefant | die Elefanten |
| **AKK** | den Löwe**n** | die Löwen | | den Elefante**n** | die Elefanten |
| **DAT** | dem Löwe**n** | den Löwen | | dem Elefante**n** | den Elefanten |
| **GEN** | des Löwe**n** | der Löwen | | des Elefante**n** | der Elefanten |

Bold the **-n/-en** endings. Highlight that Genitiv has NO `-s` (unlike regular masculine: *des Mannes* vs. *des Löwen*).

#### 4c. Rules summary

Display as a concise callout box:

- Nur **maskuline** Nomen (eine Ausnahme: *das Herz*)
- Endung **-n** oder **-en** in **Akkusativ, Dativ und Genitiv Singular**
- **Kein -s** im Genitiv (anders als reguläre Maskulina)
- Pluralendung ist immer **-n/-en**
- Meist **Lebewesen** (Personen, Tiere, Nationalitäten)

#### 4d. Category cards

Interactive expandable/collapsible cards for each category, with hover examples:

**Kategorie 1: Maskuline Lebewesen mit Endung -e**

| Gruppe | Beispiele |
|---|---|
| Nationalitäten | Chinese, Däne, Finne, Grieche, Pole, Russe, Tscheche |
| Tiere | Affe, Hase, Löwe, Schimpanse |
| Andere Personen | Experte, Junge, Kollege, Kunde, Neffe, Zeuge |

**Kategorie 2: Maskuline Lebewesen — Fremdwörter (Griechisch/Lateinisch)**

| Endung | Beispiele |
|---|---|
| -ist | Egoist, Journalist, Kapitalist, Kommunist, Polizist, Spezialist, Terrorist, Tourist |
| -ent, -ant, -and | Absolvent, Assistent, Dirigent, Präsident, Student, Demonstrant, Elefant, Emigrant, Lieferant, Praktikant, Doktorand |
| -at, -et, -it, -ot | Demokrat, Diplomat, Kandidat, Soldat, Athlet, Poet, Bandit, Favorit, Idiot, Pilot |
| -nom, -oge | Astronom, Ökonom, Biologe, Psychologe, Soziologe, Pädagoge |
| -soph, -graf | Fotograf, Philosoph |
| Ausserdem | Architekt, Astronaut, Bär, Bauer*, Chirurg, Herr**, Mensch, Monarch, Nachbar*, Prinz |

**Kategorie 3: Spezialformen**

| Form | Beispiele | Erklärung |
|---|---|---|
| Genitivendung **-ns** | Gedanke, Buchstabe, Name | Akk/Dat: -n, Gen: -ns (*des Gedankens, des Namens*) |
| Einziges Neutrum | das Herz | Nom/Akk: *das Herz*, Dat: *dem Herzen*, Gen: *des Herzens* |

Footnotes:
- \*Bauer/Nachbar: Endung **-n** (nicht -en)
- \*\*Herr: Nom Sg. *Herr*, Akk/Dat/Gen Sg. *Herrn*, Plural *Herren*
- Nicht zur N-Deklination: Nomen mit Endung **-or** (z.B. Autor, Doktor)

#### 4e. Visual design

- Same dark theme, Inter + JetBrains Mono fonts
- Case colors in the declination table match the site palette (c-nom red, c-akk blue, c-dat green, c-gen gold)
- Category cards are collapsible (click to expand/collapse), start expanded
- Navigation link back to index.html
- No guess/Raten mode needed for this page (it's reference, not practice)

#### 4f. index.html update

Add `NDeklination.html` to the index page grid, with label **N-Deklination** and description: *Maskuline Nomen mit -n/-en*.

---

## Notes

- **Leiter (die)** — dual-gender homonym entry. "der Leiter" (manager) already exists; this adds "die Leiter" (ladder) as a separate DATA entry. Gender colors distinguish the two cards visually.
- **beibringen** — ≠ lernen, ≠ unterrichten. Used for informal/personal teaching (*Meine Oma hat mir stricken beigebracht*). Trennbar.
- **zurückgehen** — two meanings: literal (to go back) and figurative (to decrease/decline). Auxiliary: *ist* (movement verb).
- **missverstehen** — untrennbar (miss- is never separable). Betonung auf *-ste-*.
- **benachteiligt** — functions as adjective (participial). Regular comparison forms.
- **Profession nouns** — masculine only per established rule.
- Total: 5 Substantive + 13 Verben + 1 Adjektiv + 1 new HTML page.
