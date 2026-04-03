---
name: editorial-type
description: Apple marketing/editorial typography scale — display headlines 96-48px, editorial body, eyebrow labels, and responsive scaling for landing pages
metadata:
  tags: typography, editorial, marketing, display, headline, hero, landing page, apple.com, sf pro display, eyebrow
---

# Editorial Type -- Apple Marketing Typography

## Quick Reference

| Property | Value |
|----------|-------|
| Display XL | 96px / 700 / 1.0 / -3px tracking |
| Display L | 80px / 700 / 1.05 / -2px tracking |
| Display M | 64px / 700 / 1.07 / -1.5px tracking |
| Display S | 48px / 700 / 1.1 / -1px tracking |
| Title XL | 40px / 700 / 1.1 / -0.5px tracking |
| Title L | 32px / 700 / 1.15 / -0.3px tracking |
| Title M | 28px / 600 / 1.2 / 0.36px tracking |
| Headline | 21px / 600 / 1.3 / 0.35px tracking |
| Body L | 21px / 400 / 1.47 / 0.022px tracking |
| Body | 17px / 400 / 1.47 / -0.022px tracking |
| Body S | 14px / 400 / 1.43 / -0.016px tracking |
| Caption | 12px / 400 / 1.33 / 0px tracking |
| Eyebrow | 12px / 600 / 1.33 / 1px tracking (UPPERCASE) |
| Legal | 12px / 400 / 1.33 / 0px tracking |
| Font threshold | SF Pro Display 20px+, SF Pro Text <20px |
| Primary color (light) | #000000 |
| Primary color (dark) | #FFFFFF |
| CSS prefix | `.apple-type` |

## Marketing Type Scale

| Style | Size | Weight | Line-Height | Letter-Spacing | Font | Use Case |
|-------|------|--------|-------------|----------------|------|----------|
| Display XL | 96px | 700 | 1.0 | -3px | SF Pro Display | Hero headline (single line) |
| Display L | 80px | 700 | 1.05 | -2px | SF Pro Display | Hero headline (2 lines) |
| Display M | 64px | 700 | 1.07 | -1.5px | SF Pro Display | Section headlines |
| Display S | 48px | 700 | 1.1 | -1px | SF Pro Display | Sub-section headlines |
| Title XL | 40px | 700 | 1.1 | -0.5px | SF Pro Display | Feature headlines |
| Title L | 32px | 700 | 1.15 | -0.3px | SF Pro Display | Card headlines |
| Title M | 28px | 600 | 1.2 | 0.36px | SF Pro Display | Component headers |
| Headline | 21px | 600 | 1.3 | 0.35px | SF Pro Display | Emphasized body |
| Body L | 21px | 400 | 1.47 | 0.022px | SF Pro Display | Intro paragraphs |
| Body | 17px | 400 | 1.47 | -0.022px | SF Pro Text | Standard body |
| Body S | 14px | 400 | 1.43 | -0.016px | SF Pro Text | Secondary copy |
| Caption | 12px | 400 | 1.33 | 0px | SF Pro Text | Labels, metadata |
| Eyebrow | 12px | 600 | 1.33 | 1px | SF Pro Text | Section labels (UPPERCASE) |
| Legal | 12px | 400 | 1.33 | 0px | SF Pro Text | Footer fine print |

**Key rules**: SF Pro Display for 20px+ sizes. SF Pro Text for <20px. Letter-spacing gets MORE negative as size increases (-3px at 96px). Line-height DECREASES as size increases (1.0 at 96px to 1.47 at 17px). Eyebrow is always uppercase with positive letter-spacing (1px), often rendered in the accent/tint color.

## Design Tokens

```css
:root {
  /* -- Scale: size / weight / line-height / letter-spacing -- */
  --apple-type-display-xl-size: 96px;  --apple-type-display-xl-weight: 700;
  --apple-type-display-xl-leading: 1.0;  --apple-type-display-xl-tracking: -3px;
  --apple-type-display-l-size: 80px;  --apple-type-display-l-weight: 700;
  --apple-type-display-l-leading: 1.05;  --apple-type-display-l-tracking: -2px;
  --apple-type-display-m-size: 64px;  --apple-type-display-m-weight: 700;
  --apple-type-display-m-leading: 1.07;  --apple-type-display-m-tracking: -1.5px;
  --apple-type-display-s-size: 48px;  --apple-type-display-s-weight: 700;
  --apple-type-display-s-leading: 1.1;  --apple-type-display-s-tracking: -1px;
  --apple-type-title-xl-size: 40px;  --apple-type-title-xl-weight: 700;
  --apple-type-title-xl-leading: 1.1;  --apple-type-title-xl-tracking: -0.5px;
  --apple-type-title-l-size: 32px;  --apple-type-title-l-weight: 700;
  --apple-type-title-l-leading: 1.15;  --apple-type-title-l-tracking: -0.3px;
  --apple-type-title-m-size: 28px;  --apple-type-title-m-weight: 600;
  --apple-type-title-m-leading: 1.2;  --apple-type-title-m-tracking: 0.36px;
  --apple-type-headline-size: 21px;  --apple-type-headline-weight: 600;
  --apple-type-headline-leading: 1.3;  --apple-type-headline-tracking: 0.35px;
  --apple-type-body-l-size: 21px;  --apple-type-body-l-weight: 400;
  --apple-type-body-l-leading: 1.47;  --apple-type-body-l-tracking: 0.022px;
  --apple-type-body-size: 17px;  --apple-type-body-weight: 400;
  --apple-type-body-leading: 1.47;  --apple-type-body-tracking: -0.022px;
  --apple-type-body-s-size: 14px;  --apple-type-body-s-weight: 400;
  --apple-type-body-s-leading: 1.43;  --apple-type-body-s-tracking: -0.016px;
  --apple-type-caption-size: 12px;  --apple-type-caption-weight: 400;
  --apple-type-caption-leading: 1.33;  --apple-type-caption-tracking: 0px;
  --apple-type-eyebrow-size: 12px;  --apple-type-eyebrow-weight: 600;
  --apple-type-eyebrow-leading: 1.33;  --apple-type-eyebrow-tracking: 1px;
  --apple-type-legal-size: 12px;  --apple-type-legal-weight: 400;
  --apple-type-legal-leading: 1.33;  --apple-type-legal-tracking: 0px;
  /* -- Color tokens -- */
  --apple-type-label: #000000;
  --apple-type-label-secondary: rgba(60, 60, 67, 0.6);
  --apple-type-label-tertiary: rgba(60, 60, 67, 0.3);
  --apple-type-tint: #007AFF;
  /* -- Font stacks -- */
  --apple-type-font-display: -apple-system, BlinkMacSystemFont, 'SF Pro Display',
    'Helvetica Neue', Helvetica, Arial, sans-serif;
  --apple-type-font-text: -apple-system, BlinkMacSystemFont, 'SF Pro Text',
    'Helvetica Neue', Helvetica, Arial, sans-serif;
}

@media (prefers-color-scheme: dark) {
  :root {
    --apple-type-label: #FFFFFF;
    --apple-type-label-secondary: rgba(235, 235, 245, 0.6);
    --apple-type-label-tertiary: rgba(235, 235, 245, 0.3);
    --apple-type-tint: #0A84FF;
  }
}
.dark {
  --apple-type-label: #FFFFFF;
  --apple-type-label-secondary: rgba(235, 235, 245, 0.6);
  --apple-type-label-tertiary: rgba(235, 235, 245, 0.3);
  --apple-type-tint: #0A84FF;
}
```

## HTML Structure

```html
<!-- Hero section pattern -->
<section class="hero">
  <p class="apple-type apple-type--eyebrow">Introducing Focus</p>
  <h1 class="apple-type apple-type--display-xl">Your mind deserves better tools.</h1>
  <p class="apple-type apple-type--body-l">
    A beautifully simple productivity app that helps you concentrate on what matters most.
  </p>
</section>

<!-- Section headline pattern -->
<section class="feature">
  <p class="apple-type apple-type--eyebrow apple-type--secondary">Performance</p>
  <h2 class="apple-type apple-type--display-m">Blazing fast. Incredibly efficient.</h2>
  <p class="apple-type apple-type--body">
    Built on a custom engine that uses 40% less energy than the previous generation.
  </p>
</section>

<!-- Card headline pattern -->
<div class="card">
  <h3 class="apple-type apple-type--title-l">All-day battery life</h3>
  <p class="apple-type apple-type--body-s apple-type--secondary">
    Up to 18 hours of usage on a single charge.
  </p>
</div>

<!-- Footer legal pattern -->
<footer>
  <p class="apple-type apple-type--legal apple-type--tertiary">
    * Battery life varies by use and configuration. Testing conducted by Apple in March 2026.
  </p>
</footer>
```

## Complete CSS

```css
/* ---- Base ---- */
.apple-type {
  margin: 0;
  padding: 0;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: var(--apple-type-label);
}

/* ---- Display Scale (SF Pro Display, 48-96px) ---- */
.apple-type--display-xl {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-display-xl-size);  font-weight: var(--apple-type-display-xl-weight);
  line-height: var(--apple-type-display-xl-leading);  letter-spacing: var(--apple-type-display-xl-tracking);
}
.apple-type--display-l {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-display-l-size);  font-weight: var(--apple-type-display-l-weight);
  line-height: var(--apple-type-display-l-leading);  letter-spacing: var(--apple-type-display-l-tracking);
}
.apple-type--display-m {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-display-m-size);  font-weight: var(--apple-type-display-m-weight);
  line-height: var(--apple-type-display-m-leading);  letter-spacing: var(--apple-type-display-m-tracking);
}
.apple-type--display-s {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-display-s-size);  font-weight: var(--apple-type-display-s-weight);
  line-height: var(--apple-type-display-s-leading);  letter-spacing: var(--apple-type-display-s-tracking);
}

/* ---- Title Scale (SF Pro Display, 28-40px) ---- */
.apple-type--title-xl {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-title-xl-size);  font-weight: var(--apple-type-title-xl-weight);
  line-height: var(--apple-type-title-xl-leading);  letter-spacing: var(--apple-type-title-xl-tracking);
}
.apple-type--title-l {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-title-l-size);  font-weight: var(--apple-type-title-l-weight);
  line-height: var(--apple-type-title-l-leading);  letter-spacing: var(--apple-type-title-l-tracking);
}
.apple-type--title-m {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-title-m-size);  font-weight: var(--apple-type-title-m-weight);
  line-height: var(--apple-type-title-m-leading);  letter-spacing: var(--apple-type-title-m-tracking);
}

/* ---- Body Scale (Display 21px+, Text <20px) ---- */
.apple-type--headline {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-headline-size);  font-weight: var(--apple-type-headline-weight);
  line-height: var(--apple-type-headline-leading);  letter-spacing: var(--apple-type-headline-tracking);
}
.apple-type--body-l {
  font-family: var(--apple-type-font-display);
  font-size: var(--apple-type-body-l-size);  font-weight: var(--apple-type-body-l-weight);
  line-height: var(--apple-type-body-l-leading);  letter-spacing: var(--apple-type-body-l-tracking);
}
.apple-type--body {
  font-family: var(--apple-type-font-text);
  font-size: var(--apple-type-body-size);  font-weight: var(--apple-type-body-weight);
  line-height: var(--apple-type-body-leading);  letter-spacing: var(--apple-type-body-tracking);
}
.apple-type--body-s {
  font-family: var(--apple-type-font-text);
  font-size: var(--apple-type-body-s-size);  font-weight: var(--apple-type-body-s-weight);
  line-height: var(--apple-type-body-s-leading);  letter-spacing: var(--apple-type-body-s-tracking);
}

/* ---- Small Scale (SF Pro Text, 12px) ---- */
.apple-type--caption {
  font-family: var(--apple-type-font-text);
  font-size: var(--apple-type-caption-size);  font-weight: var(--apple-type-caption-weight);
  line-height: var(--apple-type-caption-leading);  letter-spacing: var(--apple-type-caption-tracking);
}
.apple-type--eyebrow {
  font-family: var(--apple-type-font-text);
  font-size: var(--apple-type-eyebrow-size);  font-weight: var(--apple-type-eyebrow-weight);
  line-height: var(--apple-type-eyebrow-leading);  letter-spacing: var(--apple-type-eyebrow-tracking);
  text-transform: uppercase;
}
.apple-type--legal {
  font-family: var(--apple-type-font-text);
  font-size: var(--apple-type-legal-size);  font-weight: var(--apple-type-legal-weight);
  line-height: var(--apple-type-legal-leading);  letter-spacing: var(--apple-type-legal-tracking);
}

/* ---- Color Modifiers ---- */
.apple-type--secondary { color: var(--apple-type-label-secondary); }
.apple-type--tertiary { color: var(--apple-type-label-tertiary); }
.apple-type--tint { color: var(--apple-type-tint); }

/* ---- Responsive Typography ---- */
@media (max-width: 599px) {
  .apple-type--display-xl { font-size: 48px; letter-spacing: -1px; }
  .apple-type--display-l  { font-size: 40px; letter-spacing: -0.5px; }
  .apple-type--display-m  { font-size: 32px; letter-spacing: -0.3px; }
  .apple-type--display-s  { font-size: 28px; letter-spacing: -0.3px; }
  .apple-type--title-xl   { font-size: 24px; letter-spacing: -0.2px; }
  .apple-type--body-l     { font-size: 17px; }
  .apple-type--body        { font-size: 14px; }
}

@media (min-width: 600px) and (max-width: 1024px) {
  .apple-type--display-xl { font-size: 72px; letter-spacing: -2px; }
  .apple-type--display-l  { font-size: 64px; letter-spacing: -1.5px; }
  .apple-type--display-m  { font-size: 48px; letter-spacing: -1px; }
  .apple-type--display-s  { font-size: 40px; letter-spacing: -0.5px; }
  .apple-type--title-xl   { font-size: 32px; letter-spacing: -0.3px; }
  .apple-type--body-l     { font-size: 19px; }
  .apple-type--body        { font-size: 16px; }
}
```

## States Reference

| Color Level | Light | Dark | Use Case |
|------------|-------|------|----------|
| Primary | #000000 | #FFFFFF | Display headlines, body text |
| Secondary | rgba(60,60,67,0.6) | rgba(235,235,245,0.6) | Subtitles, descriptions, neutral eyebrows |
| Tertiary | rgba(60,60,67,0.3) | rgba(235,235,245,0.3) | Legal text, disclaimers |
| Tint | #007AFF | #0A84FF | Accent eyebrows, linked text |

## Animation & Motion

```css
.apple-type--reveal {
  opacity: 0; transform: translateY(20px);
  transition: opacity 600ms cubic-bezier(0.25, 0.1, 0.25, 1),
              transform 600ms cubic-bezier(0.25, 0.1, 0.25, 1);
}
.apple-type--reveal.is-visible { opacity: 1; transform: translateY(0); }
.apple-type--reveal:nth-child(2) { transition-delay: 100ms; }
.apple-type--reveal:nth-child(3) { transition-delay: 200ms; }

@media (prefers-reduced-motion: reduce) {
  .apple-type--reveal { opacity: 1; transform: none; transition: none; }
}
```

## Accessibility

- **Semantic elements**: Use `<h1>`-`<h6>` for display/title levels, `<p>` for body/caption/legal. Screen readers use element semantics, not class names
- **Heading hierarchy**: One `<h1>` per page (Display XL or Display L). Section headlines use `<h2>`. Do not skip levels
- **Contrast**: Primary text on white/black backgrounds exceeds WCAG AA (4.5:1). Secondary (0.6 opacity) meets AA for large text (3:1 at 24px+). Tertiary (0.3 opacity) is decorative only
- **Minimum size**: Body text minimum 14px (Body S). Legal at 12px is acceptable for non-essential content
- **Zoom**: Support 200% browser zoom. Use `max-width` on text containers, not fixed widths, so text reflows
- **Reduced motion**: Disable scroll-reveal transitions when `prefers-reduced-motion: reduce` is set

## Responsive

Only levels that scale are shown. Title L and below remain fixed across breakpoints.

| Scale | <600px | 600-1024px | >1024px |
|-------|--------|-----------|---------|
| Display XL | 48px | 72px | 96px |
| Display L | 40px | 64px | 80px |
| Display M | 32px | 48px | 64px |
| Display S | 28px | 40px | 48px |
| Title XL | 24px | 32px | 40px |
| Body L | 17px | 19px | 21px |
| Body | 14px | 16px | 17px |

## Do / Don't

| Do | Don't |
|----|-------|
| Use Display sizes (48-96px) for marketing hero headlines | Use the UI scale (34px max from label.md) for page heroes |
| Tighten letter-spacing as size increases (-3px at 96px) | Use positive or zero letter-spacing on large display text |
| Use SF Pro Display for all sizes 20px and above | Use SF Pro Text for headlines or display sizes |
| Decrease line-height for large display text (1.0-1.1) | Use 1.5 line-height on 96px text (creates massive gaps) |
| Use eyebrow labels (12px uppercase, 1px tracking) above headlines | Skip the eyebrow — it adds critical hierarchy and context |
| Limit to 2-3 type levels per section maximum | Use all 14 levels on a single page |
| Scale display sizes down by ~50% on mobile (<600px) | Show 96px text on a 375px-wide screen |
| Use Body L (21px) for intro paragraphs directly under heroes | Use standard 17px body immediately after a 96px headline |
