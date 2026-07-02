# V19 — Adjektive: xlsx Bulk Import (all missing adjectives)

**Depends on:** V18 deployed (nouns).

## Goal

Add all missing adjectives from Alex's B1 vocabulary xlsx to
`Adjektive.html` (Komparation cheatsheet). Words taken from xlsx;
all linguistic data (Komparativ, Superlativ, meaning, category,
example sentence) from Claude's knowledge. Swiss spelling
throughout (ss not ß, gross not groß).

## Exclusion notes

From ~459 raw xlsx adjectives not in the app, the following were
excluded:

- **Non-adjectives / adverbs**: hoffentlich, ungefähr, teilweise,
  umsonst, durcheinander, genügend, verdammt, minder, allein
- **Ordinals / determiners**: erste, zweite, letzt-, nächst-,
  best-, meist-, weitere, halb, doppelt, ganz, wenig, einzeln,
  einzig, gesamt
- **Comparative forms** (base already in app): besser, höher,
  lieber, älter, ärger, sonderbarer, and declined forms
  (grösste, häufigste, wichtigste, etc.)
- **No meaningful Komparation**: schwanger, nackt, blind, stumm,
  pleite, satt, schade, schachmatt, allein
- **Pure participles** (verbal, not gradable): angelockt,
  ausgerüstet, eingeladen, erwartet, gecancelt, geliefert,
  gelernt, geöffnet, geplant, gesetzt, gesperrt, gestohlen,
  gewusst, geübt, industrialisiert, überladen, umgeben,
  unterstrichen, verbrannt, vereinbart, verschoben, verschollen,
  vervollständigt, verwundet, verwickelt, vorhanden, erledigt,
  inspiriert
- **Non-comparable nationality/domain adjectives**: deutsch,
  europäisch, international, politisch, männlich, weiblich,
  körperlich, technisch
- **Too specific compounds**: drogenabhängig, hochqualifiziert,
  kosteneffizient, umweltbelastend, unwiederholbar,
  fachspezifisch, mathematisch, mikroskopisch, basisch,
  quadratisch, grünlich, selbstgebacken, wohlverdient,
  bundesdeutsch, ganzjährig, stilsicher, unternehmerisch
- **Duplicates / already in app under different norm**: nahe
  (≈ nah), eklig (≈ ekelhaft), aufgerecht (typo of aufgeregt)
- **Non-comparable state adjectives**: ehemalig, erlaubt,
  geschieden, getrennt, verheiratet, möbliert, gehörlos,
  schwerhörig, separat, obligatorisch, freiberuflich, kostenlos,
  legal, endgültig, erforderlich, sprachlos, freiwillig,
  unvergesslich, unvermeidlich, unveränderlich, unvorhersehbar
- **Too rare / colloquial only**: pelzig, protzig, schachmatt

## Typo corrections from xlsx

- ausfurlich → ausführlich
- beruhmt → berühmt (already in app, skipped)
- aussergewohnlich → aussergewöhnlich
- beschadigt → beschädigt
- bewolkt → bewölkt
- blod → blöd
- erschopft → erschöpft
- gemutlich → gemütlich
- grosszugig → grosszügig
- hecktisch → hektisch
- hubsch → hübsch (already in app, skipped)
- merkwurdig → merkwürdig
- speziel → speziell
- träg → träge
- wunschenswert → wünschenswert
- zustandig → zuständig
- mässig (Swiss spelling of mäßig, kept as-is)
- scheusslich (Swiss spelling of scheußlich, kept as-is)
- miserable → miserabel (German form)

## Data format

Each entry: `[positiv, komparativ, superlativ, meaning, category, type, example]`

- **type**: `"umlaut"` | `"regular"` (no new irregulars)
- **category**: reuses existing set + adds `"color"` for
  rot/gelb/schwarz/blond

---

## File: Adjektive.html

Append to end of `DATA` array (before closing `];`):

```javascript
// ─── xlsx bulk import (V19) ───
// === UMLAUT ===
["rot", "röter", "am rötesten", "red", "color", "umlaut", "Die Ampel ist rot."],
["schwarz", "schwärzer", "am schwärzesten", "black", "color", "umlaut", "Er trinkt den Kaffee schwarz."],
// === REGULAR ===
["abgelaufen", "abgelaufener", "am abgelaufensten", "expired", "state", "regular", "Der Joghurt ist abgelaufen."],
["abgeschlossen", "abgeschlossener", "am abgeschlossensten", "completed", "state", "regular", "Das Projekt ist abgeschlossen."],
["abstrakt", "abstrakter", "am abstraktesten", "abstract", "quality", "regular", "Das Thema ist sehr abstrakt."],
["absurd", "absurder", "am absurdesten", "absurd", "quality", "regular", "Die Idee klingt absurd."],
["aggressiv", "aggressiver", "am aggressivsten", "aggressive", "character", "regular", "Der Hund wird aggressiv."],
["aktuell", "aktueller", "am aktuellsten", "current, topical", "time", "regular", "Das Thema ist aktuell."],
["allgemein", "allgemeiner", "am allgemeinsten", "general", "quality", "regular", "Das ist allgemein bekannt."],
["altmodisch", "altmodischer", "am altmodischsten", "old-fashioned", "quality", "regular", "Die Möbel sind altmodisch."],
["angenehm", "angenehmer", "am angenehmsten", "pleasant", "quality", "regular", "Die Temperatur ist angenehm."],
["arbeitslos", "arbeitsloser", "am arbeitslosesten", "unemployed", "state", "regular", "Er ist seit drei Monaten arbeitslos."],
["aufgeregt", "aufgeregter", "am aufgeregtesten", "excited, nervous", "emotion", "regular", "Die Kinder sind aufgeregt."],
["aufmerksam", "aufmerksamer", "am aufmerksamsten", "attentive", "character", "regular", "Der Schüler ist aufmerksam."],
["aufregend", "aufregender", "am aufregendsten", "exciting", "quality", "regular", "Die Reise war aufregend."],
["ausführlich", "ausführlicher", "am ausführlichsten", "detailed", "quality", "regular", "Der Bericht ist ausführlich."],
["aussergewöhnlich", "aussergewöhnlicher", "am aussergewöhnlichsten", "extraordinary", "quality", "regular", "Das war eine aussergewöhnliche Leistung."],
["ausverkauft", "ausverkaufter", "am ausverkauftesten", "sold out", "state", "regular", "Das Konzert ist ausverkauft."],
["bedeutend", "bedeutender", "am bedeutendsten", "significant", "quality", "regular", "Das ist ein bedeutender Unterschied."],
["bedroht", "bedrohter", "am bedrohtesten", "threatened", "state", "regular", "Viele Tierarten sind bedroht."],
["befreundet", "befreundeter", "am befreundetsten", "befriended", "state", "regular", "Wir sind eng befreundet."],
["begehrt", "begehrter", "am begehrtesten", "sought-after", "quality", "regular", "Die Tickets sind sehr begehrt."],
["begeistert", "begeisterter", "am begeistertsten", "enthusiastic", "emotion", "regular", "Das Publikum war begeistert."],
["behilflich", "behilflicher", "am behilflichsten", "helpful", "character", "regular", "Kann ich Ihnen behilflich sein?"],
["bekannt", "bekannter", "am bekanntesten", "well-known", "quality", "regular", "Die Stadt ist weltweit bekannt."],
["belastbar", "belastbarer", "am belastbarsten", "resilient", "character", "regular", "Sie ist psychisch sehr belastbar."],
["belegt", "belegter", "am belegtesten", "occupied, busy", "state", "regular", "Alle Plätze sind belegt."],
["beleidigt", "beleidigter", "am beleidigtesten", "offended", "emotion", "regular", "Er ist schnell beleidigt."],
["berechenbar", "berechenbarer", "am berechenbarsten", "predictable", "quality", "regular", "Sein Verhalten ist berechenbar."],
["bereit", "bereiter", "am bereitesten", "ready", "state", "regular", "Ich bin bereit für die Prüfung."],
["bescheuert", "bescheuerter", "am bescheuertesten", "stupid, daft", "quality", "regular", "Das ist eine bescheuerte Idee."],
["beschädigt", "beschädigter", "am beschädigtesten", "damaged", "state", "regular", "Das Paket kam beschädigt an."],
["beschäftigt", "beschäftigter", "am beschäftigtesten", "busy", "state", "regular", "Ich bin gerade sehr beschäftigt."],
["besessen", "besessener", "am besessensten", "obsessed", "emotion", "regular", "Er ist von der Idee besessen."],
["bestimmt", "bestimmter", "am bestimmtesten", "certain, definite", "quality", "regular", "Ich bin mir ganz bestimmt sicher."],
["beständig", "beständiger", "am beständigsten", "constant, steady", "quality", "regular", "Das Wetter bleibt beständig."],
["beteiligt", "beteiligter", "am beteiligtesten", "involved", "state", "regular", "Alle Parteien sind beteiligt."],
["betrunken", "betrunkener", "am betrunkensten", "drunk", "state", "regular", "Er war völlig betrunken."],
["bewölkt", "bewölkter", "am bewölktesten", "cloudy", "state", "regular", "Der Himmel ist bewölkt."],
["bisherig", "bisheriger", "am bisherigsten", "previous, so far", "time", "regular", "Die bisherigen Ergebnisse sind gut."],
["bitter", "bitterer", "am bittersten", "bitter", "quality", "regular", "Der Tee schmeckt bitter."],
["blond", "blonder", "am blondesten", "blond", "color", "regular", "Sie hat blonde Haare."],
["blöd", "blöder", "am blödesten", "stupid", "quality", "regular", "Stell dich nicht so blöd an!"],
["böse", "böser", "am bösesten", "angry, evil", "emotion", "regular", "Sei mir nicht böse!"],
["clever", "cleverer", "am cleversten", "clever", "character", "regular", "Das war ein cleverer Trick."],
["deprimierend", "deprimierender", "am deprimierendsten", "depressing", "emotion", "regular", "Die Nachrichten sind deprimierend."],
["deprimiert", "deprimierter", "am deprimiertesten", "depressed", "emotion", "regular", "Er fühlt sich deprimiert."],
["deutlich", "deutlicher", "am deutlichsten", "clear, clearly", "quality", "regular", "Der Unterschied ist deutlich."],
["dicht", "dichter", "am dichtesten", "dense, close", "quality", "regular", "Der Nebel ist dicht."],
["direkt", "direkter", "am direktesten", "direct", "quality", "regular", "Der Weg ist direkt."],
["doof", "doofer", "am doofsten", "stupid, silly", "quality", "regular", "Das war echt doof."],
["dringend", "dringender", "am dringendsten", "urgent", "quality", "regular", "Die Sache ist dringend."],
["edel", "edler", "am edelsten", "noble, fine", "quality", "regular", "Das Restaurant ist sehr edel."],
["ehrgeizig", "ehrgeiziger", "am ehrgeizigsten", "ambitious", "character", "regular", "Sie ist sehr ehrgeizig."],
["ehrlich", "ehrlicher", "am ehrlichsten", "honest", "character", "regular", "Sei ehrlich mit mir!"],
["einzigartig", "einzigartiger", "am einzigartigsten", "unique", "quality", "regular", "Die Landschaft ist einzigartig."],
["ekelhaft", "ekelhafter", "am ekelhaftesten", "disgusting", "quality", "regular", "Das Essen war ekelhaft."],
["empfindlich", "empfindlicher", "am empfindlichsten", "sensitive, delicate", "quality", "regular", "Meine Haut ist empfindlich."],
["endlos", "endloser", "am endlosesten", "endless", "quality", "regular", "Die Warterei war endlos."],
["entfernt", "entfernter", "am entferntesten", "distant, remote", "distance", "regular", "Das Dorf liegt weit entfernt."],
["entsetzt", "entsetzter", "am entsetztesten", "horrified", "emotion", "regular", "Ich war entsetzt über die Nachricht."],
["entspannend", "entspannender", "am entspannendsten", "relaxing", "quality", "regular", "Yoga ist sehr entspannend."],
["erfolgreich", "erfolgreicher", "am erfolgreichsten", "successful", "quality", "regular", "Das Unternehmen ist erfolgreich."],
["erholsam", "erholsamer", "am erholsamsten", "restful, relaxing", "quality", "regular", "Der Urlaub war erholsam."],
["erreichbar", "erreichbarer", "am erreichbarsten", "reachable", "quality", "regular", "Ich bin telefonisch erreichbar."],
["erschrocken", "erschrockener", "am erschrockensten", "startled, frightened", "emotion", "regular", "Sie war zutiefst erschrocken."],
["erschöpft", "erschöpfter", "am erschöpftesten", "exhausted", "state", "regular", "Nach dem Lauf bin ich erschöpft."],
["fabelhaft", "fabelhafter", "am fabelhaftesten", "fabulous", "quality", "regular", "Das Essen war fabelhaft."],
["farbig", "farbiger", "am farbigsten", "colorful", "appearance", "regular", "Das Bild ist sehr farbig."],
["fern", "ferner", "am fernsten", "far, distant", "distance", "regular", "In fernen Ländern gibt es andere Sitten."],
["fertig", "fertiger", "am fertigsten", "finished, ready", "state", "regular", "Das Essen ist fertig."],
["fest", "fester", "am festesten", "firm, solid", "quality", "regular", "Der Boden ist fest."],
["fett", "fetter", "am fettesten", "fat, greasy", "quality", "regular", "Das Essen ist zu fett."],
["feucht", "feuchter", "am feuchtesten", "moist, humid", "state", "regular", "Das Klima ist feucht."],
["fit", "fitter", "am fittesten", "fit", "health", "regular", "Er hält sich fit."],
["frech", "frecher", "am frechsten", "cheeky, naughty", "character", "regular", "Das Kind ist frech."],
["frei", "freier", "am freiesten", "free", "quality", "regular", "Der Platz ist noch frei."],
["fremd", "fremder", "am fremdesten", "foreign, unfamiliar", "quality", "regular", "Hier fühle ich mich fremd."],
["frisch", "frischer", "am frischesten", "fresh", "quality", "regular", "Das Brot ist noch frisch."],
["froh", "froher", "am frohesten", "glad, happy", "emotion", "regular", "Ich bin froh, dass du da bist."],
["frustriert", "frustrierter", "am frustriertesten", "frustrated", "emotion", "regular", "Er ist völlig frustriert."],
["fröhlich", "fröhlicher", "am fröhlichsten", "cheerful, merry", "emotion", "regular", "Die Kinder sind fröhlich."],
["furchtbar", "furchtbarer", "am furchtbarsten", "terrible", "quality", "regular", "Das Wetter ist furchtbar."],
["geheim", "geheimer", "am geheimsten", "secret", "quality", "regular", "Die Information ist streng geheim."],
["geheimnisvoll", "geheimnisvoller", "am geheimnisvollsten", "mysterious", "quality", "regular", "Die Insel ist geheimnisvoll."],
["geil", "geiler", "am geilsten", "awesome (colloq.)", "quality", "regular", "Das Konzert war geil!"],
["gelb", "gelber", "am gelbsten", "yellow", "color", "regular", "Die Banane ist gelb."],
["geläufig", "geläufiger", "am geläufigsten", "familiar, common", "quality", "regular", "Der Begriff ist mir nicht geläufig."],
["gemein", "gemeiner", "am gemeinsten", "mean, nasty", "character", "regular", "Das war gemein von dir!"],
["gemütlich", "gemütlicher", "am gemütlichsten", "cozy, comfortable", "quality", "regular", "Die Wohnung ist gemütlich."],
["gering", "geringer", "am geringsten", "low, small", "size", "regular", "Der Unterschied ist gering."],
["gewaltig", "gewaltiger", "am gewaltigsten", "enormous, mighty", "size", "regular", "Der Sturm war gewaltig."],
["gewiss", "gewisser", "am gewissesten", "certain", "quality", "regular", "Ich bin mir dessen gewiss."],
["gewöhnlich", "gewöhnlicher", "am gewöhnlichsten", "ordinary, usual", "quality", "regular", "Das ist nichts Gewöhnliches."],
["gierig", "gieriger", "am gierigsten", "greedy", "character", "regular", "Der Hund frisst gierig."],
["gigantisch", "gigantischer", "am gigantischsten", "gigantic", "size", "regular", "Das Gebäude ist gigantisch."],
["glatt", "glatter", "am glattesten", "smooth, slippery", "quality", "regular", "Die Strasse ist glatt."],
["gravierend", "gravierender", "am gravierendsten", "serious, grave", "quality", "regular", "Das ist ein gravierender Fehler."],
["grossartig", "grossartiger", "am grossartigsten", "great, magnificent", "quality", "regular", "Die Aussicht ist grossartig."],
["grosszügig", "grosszügiger", "am grosszügigsten", "generous", "character", "regular", "Er ist sehr grosszügig."],
["gruselig", "gruseliger", "am gruseligsten", "scary, creepy", "quality", "regular", "Der Film war gruselig."],
["heftig", "heftiger", "am heftigsten", "fierce, intense", "quality", "regular", "Der Regen war heftig."],
["heikel", "heikler", "am heikelsten", "delicate, tricky", "quality", "regular", "Das ist ein heikles Thema."],
["heimlich", "heimlicher", "am heimlichsten", "secret, stealthy", "quality", "regular", "Sie hat heimlich geweint."],
["hektisch", "hektischer", "am hektischsten", "hectic", "quality", "regular", "Der Morgen war hektisch."],
["herausfordernd", "herausfordernder", "am herausforderndsten", "challenging", "quality", "regular", "Die Aufgabe ist herausfordernd."],
["herkömmlich", "herkömmlicher", "am herkömmlichsten", "conventional", "quality", "regular", "Die herkömmliche Methode funktioniert nicht."],
["hervorragend", "hervorragender", "am hervorragendsten", "outstanding", "quality", "regular", "Das Essen war hervorragend."],
["hilfsbereit", "hilfsbereiter", "am hilfsbereitesten", "helpful", "character", "regular", "Die Nachbarin ist hilfsbereit."],
["hoffnungslos", "hoffnungsloser", "am hoffnungslosesten", "hopeless", "quality", "regular", "Die Lage scheint hoffnungslos."],
["hungrig", "hungriger", "am hungrigsten", "hungry", "state", "regular", "Ich bin hungrig."],
["häufig", "häufiger", "am häufigsten", "frequent, common", "quality", "regular", "Der Fehler kommt häufig vor."],
["innovativ", "innovativer", "am innovativsten", "innovative", "quality", "regular", "Das Unternehmen ist innovativ."],
["intensiv", "intensiver", "am intensivsten", "intense", "quality", "regular", "Die Farben sind intensiv."],
["klar", "klarer", "am klarsten", "clear", "quality", "regular", "Die Antwort ist klar."],
["knapp", "knapper", "am knappsten", "scarce, tight", "quality", "regular", "Die Zeit ist knapp."],
["kolossal", "kolossaler", "am kolossalsten", "colossal", "size", "regular", "Der Tempel ist kolossal."],
["komfortabel", "komfortabler", "am komfortabelsten", "comfortable", "quality", "regular", "Das Hotel ist komfortabel."],
["komisch", "komischer", "am komischsten", "strange, funny", "quality", "regular", "Das ist komisch."],
["kommunikativ", "kommunikativer", "am kommunikativsten", "communicative", "character", "regular", "Sie ist sehr kommunikativ."],
["kompliziert", "komplizierter", "am kompliziertesten", "complicated", "quality", "regular", "Die Regeln sind kompliziert."],
["konsequent", "konsequenter", "am konsequentesten", "consistent", "character", "regular", "Er ist sehr konsequent."],
["korrekt", "korrekter", "am korrektesten", "correct", "quality", "regular", "Die Antwort ist korrekt."],
["krass", "krasser", "am krassesten", "extreme (colloq.)", "quality", "regular", "Der Preisunterschied ist krass."],
["kulant", "kulanter", "am kulantesten", "accommodating", "character", "regular", "Der Verkäufer war sehr kulant."],
["köstlich", "köstlicher", "am köstlichsten", "delicious", "quality", "regular", "Die Suppe ist köstlich."],
["lecker", "leckerer", "am leckersten", "delicious, tasty", "quality", "regular", "Das Eis ist lecker."],
["leer", "leerer", "am leersten", "empty", "state", "regular", "Die Flasche ist leer."],
["locker", "lockerer", "am lockersten", "loose, relaxed", "quality", "regular", "Die Atmosphäre war locker."],
["lächerlich", "lächerlicher", "am lächerlichsten", "ridiculous", "quality", "regular", "Der Preis ist lächerlich hoch."],
["lästig", "lästiger", "am lästigsten", "annoying", "quality", "regular", "Die Mücken sind lästig."],
["magisch", "magischer", "am magischsten", "magical", "quality", "regular", "Die Nacht war magisch."],
["merkwürdig", "merkwürdiger", "am merkwürdigsten", "strange, odd", "quality", "regular", "Das ist merkwürdig."],
["miserabel", "miserabler", "am miserabelsten", "miserable", "quality", "regular", "Die Stimmung war miserabel."],
["modisch", "modischer", "am modischsten", "fashionable", "appearance", "regular", "Sie kleidet sich modisch."],
["monströs", "monströser", "am monströsesten", "monstrous", "size", "regular", "Das Bauwerk ist monströs."],
["mutig", "mutiger", "am mutigsten", "brave", "character", "regular", "Das Kind ist mutig."],
["mächtig", "mächtiger", "am mächtigsten", "powerful, mighty", "quality", "regular", "Der König war mächtig."],
["mässig", "mässiger", "am mässigsten", "moderate", "quality", "regular", "Der Erfolg war mässig."],
["negativ", "negativer", "am negativsten", "negative", "quality", "regular", "Die Bewertung ist negativ."],
["neugierig", "neugieriger", "am neugierigsten", "curious", "character", "regular", "Das Kind ist neugierig."],
["notwendig", "notwendiger", "am notwendigsten", "necessary", "quality", "regular", "Die Reparatur ist notwendig."],
["nötig", "nötiger", "am nötigsten", "necessary, needed", "quality", "regular", "Das war nicht nötig."],
["nutzlos", "nutzloser", "am nutzlosesten", "useless", "quality", "regular", "Das Gerät ist nutzlos."],
["nützlich", "nützlicher", "am nützlichsten", "useful", "quality", "regular", "Der Tipp war nützlich."],
["oberflächlich", "oberflächlicher", "am oberflächlichsten", "superficial", "quality", "regular", "Die Analyse ist oberflächlich."],
["ordentlich", "ordentlicher", "am ordentlichsten", "tidy, proper", "quality", "regular", "Das Zimmer ist ordentlich."],
["passend", "passender", "am passendsten", "suitable, fitting", "quality", "regular", "Das ist der passende Moment."],
["peinlich", "peinlicher", "am peinlichsten", "embarrassing", "quality", "regular", "Die Situation war peinlich."],
["pikant", "pikanter", "am pikantesten", "spicy, risqué", "quality", "regular", "Die Sosse ist pikant."],
["positiv", "positiver", "am positivsten", "positive", "quality", "regular", "Das Ergebnis ist positiv."],
["praktisch", "praktischer", "am praktischsten", "practical", "quality", "regular", "Die Tasche ist praktisch."],
["privat", "privater", "am privatesten", "private", "quality", "regular", "Das ist eine private Angelegenheit."],
["profitabel", "profitabler", "am profitabelsten", "profitable", "price", "regular", "Das Geschäft ist profitabel."],
["präzise", "präziser", "am präzisesten", "precise", "quality", "regular", "Die Uhr ist präzise."],
["realistisch", "realistischer", "am realistischsten", "realistic", "quality", "regular", "Der Plan ist realistisch."],
["regnerisch", "regnerischer", "am regnerischsten", "rainy", "state", "regular", "Der Tag war regnerisch."],
["reif", "reifer", "am reifsten", "mature, ripe", "quality", "regular", "Die Früchte sind reif."],
["rein", "reiner", "am reinsten", "pure, clean", "quality", "regular", "Das Wasser ist rein."],
["respektabel", "respektabler", "am respektabelsten", "respectable", "quality", "regular", "Die Leistung ist respektabel."],
["roh", "roher", "am rohesten", "raw", "quality", "regular", "Das Fleisch ist roh."],
["rund", "runder", "am rundesten", "round", "quality", "regular", "Der Tisch ist rund."],
["saftig", "saftiger", "am saftigsten", "juicy", "quality", "regular", "Der Apfel ist saftig."],
["sagenhaft", "sagenhafter", "am sagenhaftesten", "fabulous, incredible", "quality", "regular", "Die Aussicht ist sagenhaft."],
["sanft", "sanfter", "am sanftesten", "gentle, soft", "quality", "regular", "Er sprach mit sanfter Stimme."],
["scheusslich", "scheusslicher", "am scheusslichsten", "awful, hideous", "quality", "regular", "Das Wetter ist scheusslich."],
["schick", "schicker", "am schicksten", "chic, stylish", "appearance", "regular", "Das Kleid ist schick."],
["schief", "schiefer", "am schiefsten", "crooked, askew", "quality", "regular", "Das Bild hängt schief."],
["schlank", "schlanker", "am schlanksten", "slim", "appearance", "regular", "Sie ist schlank."],
["schlapp", "schlapper", "am schlappsten", "weary, limp", "state", "regular", "Ich fühle mich schlapp."],
["schmackhaft", "schmackhafter", "am schmackhaftesten", "tasty", "quality", "regular", "Das Gericht ist schmackhaft."],
["selbstbewusst", "selbstbewusster", "am selbstbewusstesten", "self-confident", "character", "regular", "Sie tritt selbstbewusst auf."],
["selbständig", "selbständiger", "am selbständigsten", "independent", "character", "regular", "Er arbeitet selbständig."],
["selten", "seltener", "am seltensten", "rare", "quality", "regular", "Diese Pflanze ist selten."],
["seltsam", "seltsamer", "am seltsamsten", "strange", "quality", "regular", "Das ist seltsam."],
["sichtbar", "sichtbarer", "am sichtbarsten", "visible", "quality", "regular", "Der Unterschied ist sichtbar."],
["sinnvoll", "sinnvoller", "am sinnvollsten", "meaningful, sensible", "quality", "regular", "Die Investition ist sinnvoll."],
["solide", "solider", "am solidesten", "solid, sturdy", "quality", "regular", "Das Gebäude ist solide."],
["sonnig", "sonniger", "am sonnigsten", "sunny", "state", "regular", "Das Wetter ist sonnig."],
["spannend", "spannender", "am spannendsten", "exciting, gripping", "quality", "regular", "Das Buch ist spannend."],
["speziell", "spezieller", "am speziellsten", "special", "quality", "regular", "Das ist ein spezieller Fall."],
["starr", "starrer", "am starrsten", "rigid, stiff", "quality", "regular", "Sein Blick war starr."],
["still", "stiller", "am stillsten", "quiet, still", "quality", "regular", "Das Kind ist ganz still."],
["stilvoll", "stilvoller", "am stilvollsten", "stylish", "appearance", "regular", "Die Einrichtung ist stilvoll."],
["stolz", "stolzer", "am stolzesten", "proud", "emotion", "regular", "Die Eltern sind stolz."],
["stur", "sturer", "am stursten", "stubborn", "character", "regular", "Er ist unglaublich stur."],
["sympathisch", "sympathischer", "am sympathischsten", "likeable", "character", "regular", "Der neue Kollege ist sympathisch."],
["süchtig", "süchtiger", "am süchtigsten", "addicted", "state", "regular", "Er ist süchtig nach Kaffee."],
["toll", "toller", "am tollsten", "great, awesome", "quality", "regular", "Das Wetter ist toll."],
["tragisch", "tragischer", "am tragischsten", "tragic", "quality", "regular", "Das war ein tragischer Unfall."],
["treu", "treuer", "am treuesten", "faithful, loyal", "character", "regular", "Der Hund ist treu."],
["trist", "trister", "am tristesten", "bleak, dreary", "quality", "regular", "Das Wetter ist trist."],
["träge", "träger", "am trägsten", "sluggish, lazy", "character", "regular", "Nach dem Essen fühle ich mich träge."],
["umfassend", "umfassender", "am umfassendsten", "comprehensive", "quality", "regular", "Der Bericht ist umfassend."],
["unerträglich", "unerträglicher", "am unerträglichsten", "unbearable", "quality", "regular", "Die Hitze ist unerträglich."],
["unfair", "unfairer", "am unfairsten", "unfair", "quality", "regular", "Das Spiel war unfair."],
["unfassbar", "unfassbarer", "am unfassbarsten", "unbelievable", "quality", "regular", "Das ist unfassbar!"],
["ungeheuerlich", "ungeheuerlicher", "am ungeheuerlichsten", "outrageous", "quality", "regular", "Die Forderung ist ungeheuerlich."],
["ungerecht", "ungerechter", "am ungerechtesten", "unfair, unjust", "quality", "regular", "Das ist ungerecht!"],
["ungewöhnlich", "ungewöhnlicher", "am ungewöhnlichsten", "unusual", "quality", "regular", "Die Situation ist ungewöhnlich."],
["unglaublich", "unglaublicher", "am unglaublichsten", "incredible", "quality", "regular", "Die Geschichte ist unglaublich."],
["unglücklich", "unglücklicher", "am unglücklichsten", "unhappy", "emotion", "regular", "Sie ist unglücklich."],
["unheimlich", "unheimlicher", "am unheimlichsten", "eerie, uncanny", "quality", "regular", "Das Haus wirkt unheimlich."],
["unhöflich", "unhöflicher", "am unhöflichsten", "impolite", "character", "regular", "Das war unhöflich."],
["unsympathisch", "unsympathischer", "am unsympathischsten", "unlikeable", "character", "regular", "Er wirkt unsympathisch."],
["unterschiedlich", "unterschiedlicher", "am unterschiedlichsten", "different, varied", "quality", "regular", "Die Meinungen sind unterschiedlich."],
["unzufrieden", "unzufriedener", "am unzufriedensten", "dissatisfied", "emotion", "regular", "Die Kunden sind unzufrieden."],
["verantwortungsvoll", "verantwortungsvoller", "am verantwortungsvollsten", "responsible", "character", "regular", "Er geht verantwortungsvoll mit Geld um."],
["verdächtig", "verdächtiger", "am verdächtigsten", "suspicious", "quality", "regular", "Das Verhalten ist verdächtig."],
["verfügbar", "verfügbarer", "am verfügbarsten", "available", "quality", "regular", "Ist der Raum noch verfügbar?"],
["vergleichbar", "vergleichbarer", "am vergleichbarsten", "comparable", "quality", "regular", "Die Preise sind vergleichbar."],
["vernünftig", "vernünftiger", "am vernünftigsten", "reasonable, sensible", "character", "regular", "Sei vernünftig!"],
["verrückt", "verrückter", "am verrücktesten", "crazy", "quality", "regular", "Die Idee ist verrückt!"],
["verschmutzt", "verschmutzter", "am verschmutztesten", "polluted, dirty", "state", "regular", "Der Fluss ist verschmutzt."],
["versteckt", "versteckter", "am verstecktesten", "hidden", "quality", "regular", "Das Restaurant ist etwas versteckt."],
["verzweifelt", "verzweifelter", "am verzweifeltesten", "desperate", "emotion", "regular", "Er ist völlig verzweifelt."],
["vielseitig", "vielseitiger", "am vielseitigsten", "versatile, varied", "quality", "regular", "Sie ist vielseitig begabt."],
["voll", "voller", "am vollsten", "full", "state", "regular", "Das Glas ist voll."],
["vulgär", "vulgärer", "am vulgärsten", "vulgar", "quality", "regular", "Sein Humor ist vulgär."],
["wach", "wacher", "am wachsten", "awake", "state", "regular", "Ich bin noch nicht richtig wach."],
["wahr", "wahrer", "am wahrsten", "true", "quality", "regular", "Die Geschichte ist wahr."],
["weich", "weicher", "am weichsten", "soft", "quality", "regular", "Das Kissen ist weich."],
["weit", "weiter", "am weitesten", "far, wide", "distance", "regular", "Der Weg ist weit."],
["widerlich", "widerlicher", "am widerlichsten", "disgusting, revolting", "quality", "regular", "Der Geschmack ist widerlich."],
["willig", "williger", "am willigsten", "willing", "character", "regular", "Er ist willig zu helfen."],
["witzig", "witziger", "am witzigsten", "witty, funny", "quality", "regular", "Der Witz ist witzig."],
["wünschenswert", "wünschenswerter", "am wünschenswertesten", "desirable", "quality", "regular", "Eine Lösung wäre wünschenswert."],
["würzig", "würziger", "am würzigsten", "spicy, savory", "quality", "regular", "Die Suppe ist würzig."],
["wütend", "wütender", "am wütendsten", "angry, furious", "emotion", "regular", "Er ist wütend auf mich."],
["zart", "zarter", "am zartesten", "tender, delicate", "quality", "regular", "Das Fleisch ist zart."],
["zuständig", "zuständiger", "am zuständigsten", "responsible, in charge", "quality", "regular", "Wer ist dafür zuständig?"],
["zuverlässig", "zuverlässiger", "am zuverlässigsten", "reliable", "character", "regular", "Er ist absolut zuverlässig."],
["ähnlich", "ähnlicher", "am ähnlichsten", "similar", "quality", "regular", "Die Bilder sind sich ähnlich."],
["öffentlich", "öffentlicher", "am öffentlichsten", "public", "quality", "regular", "Der Park ist öffentlich zugänglich."],
["überrascht", "überraschter", "am überraschtesten", "surprised", "emotion", "regular", "Ich war überrascht."],
["übertrieben", "übertriebener", "am übertriebensten", "excessive, exaggerated", "quality", "regular", "Die Reaktion war übertrieben."],
["üblich", "üblicher", "am üblichsten", "usual, common", "quality", "regular", "Das ist hier üblich."],
```

Total: 237 adjectives (2 umlaut + 235 regular).
Existing: 109. New total after V19: **346**.
