# V3 — Favicon Integration

**Supersedes:** Nothing.  
**Depends on:** Nothing. Icon files already placed in `assets/`.

## Goal

Add the German flag favicon to all HTML pages so it appears in
browser tabs, bookmarks (Firefox PC + mobile), and home screen
shortcuts.

## Design

Icon files live in `assets/` (already in place):

```
assets/
├── favicon.ico              — 16/32/48px multi-size, for browser tabs
├── favicon-32x32.png        — 32px PNG fallback
├── apple-touch-icon.png     — 180px, iOS home screen
├── android-chrome-192x192.png  — Android home screen
└── android-chrome-512x512.png  — Android splash screen
```

## Implementation

### 1. All HTML files (14 files)

Add these three lines inside `<head>`, after the `<meta viewport>`
tag and before the `<title>`:

```html
<link rel="icon" href="assets/favicon.ico" sizes="16x16 32x32 48x48">
<link rel="icon" href="assets/favicon-32x32.png" type="image/png" sizes="32x32">
<link rel="apple-touch-icon" href="assets/apple-touch-icon.png">
```

**Files to modify:**

```
index.html
Substantive.html
Artikel.html
Adjektive.html
Adjektivendungen.html
Pronomen.html
Relativpronomen.html
Praepositionen.html
Verben.html
Konjugation.html
Modalverben.html
Satzstruktur.html
Nebensaetze.html
Komposita.html
```

### 2. Update make_targz.bat

Add the `assets` folder to the collected directories:

```bat
for %%d in (docs assets) do if exist "%%d" set "DIRS=!DIRS! %%d"
```

## Verification

1. Open any page locally in Firefox — German flag icon appears in
   the browser tab.
2. Bookmark the page in Firefox — icon shows in bookmark bar.
3. Push to GitHub Pages — verify icon loads on the live site.
4. On mobile: add to home screen — flag icon appears.

## Anti-patterns to avoid

- Do NOT place `favicon.ico` in root — all icons stay in `assets/`.
- Do NOT use different paths per page — all pages are in root, so
  `assets/...` is the correct relative path for all of them.
