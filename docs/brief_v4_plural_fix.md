# V4 — Substantive Plural Display Fix

**Supersedes:** Nothing.  
**Depends on:** Nothing.

## Problem

The plural display logic in `Substantive.html` always prepends the
singular word to the plural field, producing incorrect output for
nouns with stem-vowel changes.

The DATA array stores plurals in two formats:

- **Suffix** (dash prefix): `-e`, `-en`, `-er`, `-n`, `-s`, `-se`,
  `-nen`, `-` → should be appended to the singular word.
- **Full word** (no dash): `Männer`, `Häuser`, `Väter`, `Länder`,
  `Bücher`, `Ärzte`, etc. → should be displayed as-is.

Current code (line ~240):

```javascript
const pt = 'Pl: ' + word + plural.replace(/^\s*-/,'');
```

This produces:
- `Jahr` + `-e` → `Jahre` ✓
- `Mann` + `Männer` → `MannMänner` ✗
- `Haus` + `Häuser` → `HausHäuser` ✗

## Fix

**File:** `Substantive.html`

Replace the plural text construction with:

```javascript
const pt = plural.startsWith('-')
  ? 'Pl: ' + word + plural.replace(/^-/, '')
  : 'Pl: ' + plural;
```

This produces:
- `Jahr` + `-e` → `Pl: Jahre` ✓
- `Mann` + `Männer` → `Pl: Männer` ✓
- `Leben` + `-` → `Pl: Leben` ✓

The special cases `(pl.)` and `(no pl.)` are already handled by
the condition above this line and are not affected.

## Verification

1. Check a suffix-plural noun: `Jahr` → should show `Pl: Jahre`
2. Check a full-word-plural noun: `Mann` → should show `Pl: Männer`
   (not `MannMänner`)
3. Check an unchanged plural: `Leben` (plural `-`) → should show
   `Pl: Leben`
4. Check a plural-only noun: `Leute` → should show `pl. only`
5. Check a no-plural noun: `Musik` → should show `—`

## Anti-patterns to avoid

- Do NOT modify the DATA array — the two formats (suffix vs full
  word) are intentional and correct. Only the display logic is wrong.
- Do NOT change how `(pl.)` and `(no pl.)` are handled — those
  paths already work correctly.
