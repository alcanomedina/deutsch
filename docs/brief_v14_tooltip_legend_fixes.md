# V14 — Adjektivendungen: Tooltip & Legend Swatch Fixes

**Supersedes:** Nothing (bug fixes only).
**Depends on:** V13 deployed.

## Bug 1 — Tooltip background stretches / text floats outside

**Root cause:** `common.css` sets `.tooltip { top: calc(100% + 8px); }`
(tooltip below element). Adjektivendungen.html overrides with
`bottom: calc(100% + 8px)` (tooltip above element) but never
resets `top`. With both `top` and `bottom` active on an
absolutely positioned element, the browser stretches the
tooltip background between both constraints — so the dark
bubble doesn't contain the text properly.

Additionally, `common.css` creates a `::before` arrow (pointing
up, for a below-tooltip), while the page creates an `::after`
arrow (pointing down, for an above-tooltip). Both render.

### Fix in Adjektivendungen.html `<style>` block

Add `top: auto;` to the `.tooltip` rule (line ~118):

```css
.tooltip {
    display: none; position: absolute;
    top: auto;                          /* ← ADD: override common.css */
    bottom: calc(100% + 8px); left: 50%;
    transform: translateX(-50%);
    background: #111115; color: #e8e8ec;
    padding: 5px 12px; border-radius: 7px;
    font-size: 14px; font-style: italic;
    white-space: nowrap;
    font-family: 'Inter', Arial, Helvetica, sans-serif;
    z-index: 200; box-shadow: 0 4px 16px rgba(0,0,0,0.5);
    pointer-events: none;
  }
```

Add a rule to disable the `::before` arrow from common.css.
Insert right after the existing `.tooltip::after` block
(line ~136):

```css
  .tooltip::before { content: none; }
```

---

## Bug 2 — Legend swatch too small for "-en" text

**Root cause:** All legend swatches use inline
`style="height:20px;width:20px;"`. The tile class adds
`border-width: 2px`, leaving only 16px inner width. Text
"-en" in JetBrains Mono at 10px needs ~18px — doesn't fit,
so it wraps to two lines.

### Fix in Adjektivendungen.html

Change the inline style on the `-en` swatch (line ~207) from:

```html
<div class="legend-swatch tile c-exc-en" style="height:20px;width:20px;">
```

To:

```html
<div class="legend-swatch tile c-exc-en" style="height:20px;min-width:28px;">
```

Also apply the same to the `-e` swatch (line ~201) for
visual consistency:

```html
<div class="legend-swatch tile c-exc-e" style="height:20px;min-width:28px;">
```

The four case swatches (N, A, D, G) are single characters and
fit fine at 20px — leave those unchanged.

---

## Verification

1. **Tooltip**: hover any tile → tooltip bubble appears fully
   above the tile with text contained inside the dark
   background. Only one arrow visible (pointing down from
   tooltip to tile). No text floating outside the bubble.
2. **Legend**: all 6 swatches render cleanly. "-en" and "-e"
   swatches are slightly wider than the single-letter case
   swatches. No text wrapping inside any swatch.
3. **No regressions**: hover examples still show correct
   phrases, guess mode still works.

## Anti-patterns

- Do NOT change any grid data, colors, or the "How to read
  this" notes.
- Do NOT modify common.css (the conflict is resolved
  page-locally, which is the correct approach since only
  Adjektivendungen uses above-element tooltips).
