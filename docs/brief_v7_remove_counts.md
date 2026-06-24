# V7 — Remove Hardcoded Counts from Index

**Supersedes:** Nothing.  
**Depends on:** Nothing.

## Problem

`index.html` has hardcoded entry counts (e.g. "843 · suche",
"~130 Verben") in card badges and descriptions. These go stale
every time vocabulary is added.

## Fix

**File:** `index.html`

1. **Badges with counts** (e.g. `843 · suche`, `130 · suche`):
   replace with just `suche` for searchable pages, or remove
   the badge entirely for non-searchable pages.

2. **Descriptions with counts** (e.g. "843 Nomen nach Genus...",
   "~130 Verben mit Präpositionen..."): remove the number,
   rephrase naturally. Examples:
   - "843 Nomen nach Genus..." → "Nomen nach Genus..."
   - "~130 Verben mit Präpositionen..." → "Verben mit
     Präpositionen..."
   - "~95 starke/unregelmässige Verben..." → "Starke und
     unregelmässige Verben..."

3. **The hero `.count` element** at the top (if it shows a total
   like "13 Cheatsheets"): keep this one — the number of pages
   changes rarely. Update it to 14 if it's wrong.

## Verification

1. Open index.html — no specific entry counts visible in cards.
2. The word "suche" still appears on searchable page badges.
3. Each cheatsheet's own stats bar still shows the live count.
