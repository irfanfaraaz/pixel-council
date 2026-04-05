---
name: page-patterns
description: Apple page-level composition patterns — hero layouts, section structure, spacing rhythm, feature showcases, CTAs, footers as seen on apple.com
metadata:
  tags: page, layout, composition, hero, section, landing, marketing, editorial, apple.com, spacing, whitespace
---

# Page Patterns -- Apple Marketing & Editorial Pages

## Quick Reference

| Property | Value |
|----------|-------|
| Max content width | 980px |
| Page horizontal padding | 22px (mobile), 40px (desktop) |
| Section vertical gap | 120-200px |
| Hero vertical padding | 160px top, 80px bottom |
| Background (light) | #FFFFFF (primary), #F5F5F7 (alt -- sparingly) |
| Background (dark) | #000000 (primary), #1D1D1F (alt) |
| Section separator | 0.5px rgba(0,0,0,0.1) or whitespace only |
| Feature spacing | One per viewport height (100vh sections) |

## Design Tokens

```css
:root {
  --apple-page-bg: #FFFFFF;
  --apple-page-bg-alt: #F5F5F7;
  --apple-page-text: #1D1D1F;
  --apple-page-text-secondary: #86868B;
  --apple-page-link: #06C;
  --apple-page-max-width: 980px;
  --apple-page-gutter: 22px;
  --apple-page-section-gap: 120px;
  --apple-page-hero-gap: 160px;
  --apple-page-separator: rgba(0, 0, 0, 0.1);
  --apple-page-font: -apple-system, BlinkMacSystemFont, 'SF Pro Display', 'SF Pro Text',
    'Helvetica Neue', Helvetica, Arial, sans-serif;
}
@media (prefers-color-scheme: dark) {
  :root {
    --apple-page-bg: #000000;
    --apple-page-bg-alt: #1D1D1F;
    --apple-page-text: #F5F5F7;
    --apple-page-text-secondary: #86868B;
    --apple-page-link: #2997FF;
    --apple-page-separator: rgba(255, 255, 255, 0.1);
  }
}
.dark {
  --apple-page-bg: #000000;
  --apple-page-bg-alt: #1D1D1F;
  --apple-page-text: #F5F5F7;
  --apple-page-text-secondary: #86868B;
  --apple-page-link: #2997FF;
  --apple-page-separator: rgba(255, 255, 255, 0.1);
}
```

## Variants (Page Section Types)

| Pattern | Description | Typical Height | Content Layout |
|---------|-------------|----------------|----------------|
| Text Hero | Centered eyebrow + display headline + subtitle + CTAs | 80-100vh | Centered, stacked |
| Product Hero | Full-bleed product image with text overlay | 100vh | Image fills, text positioned |
| Video Hero | Autoplay muted video background | 100vh | Video fills, text overlay |
| Feature Showcase | Single feature, half text / half image | 80-100vh | 2-column, alternating sides |
| Feature Strip | 3-4 minimal icon+text items in a row | auto (~200px) | Horizontal flex, even spacing |
| Stats Bar | Large numbers with small labels | auto (~200px) | Horizontal flex, 80px+ gaps |
| Pricing Grid | 2-3 pricing cards side by side | auto | Grid, equal width, one highlighted |
| CTA Section | Centered headline + subtext + button | ~400px | Centered, generous padding |
| FAQ Accordion | Expandable Q&A list | auto | Single column, max ~720px |
| Footer | Links grid + legal | auto | 5-6 columns, small type |

## HTML Structure

### Text Hero

```html
<section class="apple-page__hero" aria-label="Introduction">
  <div class="apple-page__wrap">
    <p class="apple-page__eyebrow">Introducing Focus</p>
    <h1 class="apple-page__hero-title">Your mind deserves<br>better tools.</h1>
    <p class="apple-page__hero-subtitle">A beautifully simple productivity app that helps you do your best work.</p>
    <div class="apple-page__hero-actions">
      <a href="#" class="apple-page__cta apple-page__cta--primary">Start Free Trial</a>
      <a href="#" class="apple-page__cta apple-page__cta--secondary">Watch the Film ›</a>
    </div>
  </div>
</section>
```

Product Hero and Video Hero use the same inner markup, wrapped differently:
- **Product Hero**: `<section class="apple-page__hero apple-page__hero--product">` with `<div class="apple-page__hero-media"><img class="apple-page__hero-image" /></div>` behind `<div class="apple-page__wrap apple-page__hero-overlay">`.
- **Video Hero**: `<section class="apple-page__hero apple-page__hero--video">` with `<video class="apple-page__hero-video" autoplay muted loop playsinline aria-hidden="true">` behind the overlay.

### Feature Showcase

```html
<section class="apple-page__feature" aria-label="Performance feature">
  <div class="apple-page__wrap apple-page__feature-grid">
    <div class="apple-page__feature-media">
      <img src="feature.jpg" alt="Feature description" />
    </div>
    <div class="apple-page__feature-text">
      <p class="apple-page__eyebrow">Performance</p>
      <h2 class="apple-page__feature-title">Blazingly fast.<br>Effortlessly smooth.</h2>
      <p class="apple-page__feature-body">Description text here with real specifics.</p>
    </div>
  </div>
</section>
```

Reversed variant: add `apple-page__feature-grid--reversed` to flip image/text order.

### Feature Strip (NOT card grid)

```html
<section class="apple-page__strip" aria-label="Key features">
  <div class="apple-page__wrap">
    <div class="apple-page__strip-items">
      <div class="apple-page__strip-item">
        <svg class="apple-page__strip-icon" width="48" height="48" aria-hidden="true"><!-- SF Symbol SVG --></svg>
        <h3 class="apple-page__strip-title">Quick Capture</h3>
        <p class="apple-page__strip-body">Brief description.</p>
      </div>
      <!-- repeat 3-4 items -->
    </div>
  </div>
</section>
```

### Stats Bar

```html
<section class="apple-page__stats" aria-label="Key statistics">
  <div class="apple-page__wrap">
    <div class="apple-page__stats-items">
      <div class="apple-page__stat">
        <span class="apple-page__stat-number">10x</span>
        <span class="apple-page__stat-label">faster rendering</span>
      </div>
      <!-- repeat 2-4 stats -->
    </div>
  </div>
</section>
```

### Pricing Grid, CTA Section, FAQ, Footer

```html
<!-- Pricing -->
<section class="apple-page__pricing" aria-label="Pricing">
  <div class="apple-page__wrap">
    <h2 class="apple-page__section-title">Choose your plan.</h2>
    <div class="apple-page__pricing-grid">
      <div class="apple-page__pricing-card">
        <h3 class="apple-page__pricing-name">Personal</h3>
        <p class="apple-page__pricing-price"><span class="apple-page__pricing-amount">$4.99</span>/mo</p>
        <ul class="apple-page__pricing-features" role="list"><li>50 GB storage</li></ul>
        <a href="#" class="apple-page__cta apple-page__cta--primary">Get started</a>
      </div>
      <div class="apple-page__pricing-card apple-page__pricing-card--highlighted">
        <p class="apple-page__eyebrow">Most Popular</p>
        <h3 class="apple-page__pricing-name">Family</h3>
        <p class="apple-page__pricing-price"><span class="apple-page__pricing-amount">$9.99</span>/mo</p>
        <ul class="apple-page__pricing-features" role="list"><li>200 GB storage</li><li>Share with 5</li></ul>
        <a href="#" class="apple-page__cta apple-page__cta--primary">Get started</a>
      </div>
    </div>
  </div>
</section>

<!-- CTA Section -->
<section class="apple-page__cta-section" aria-label="Call to action">
  <div class="apple-page__wrap">
    <h2 class="apple-page__section-title">Ready to get started?</h2>
    <p class="apple-page__section-subtitle">Try it free for 30 days.</p>
    <a href="#" class="apple-page__cta apple-page__cta--primary">Start Free Trial</a>
  </div>
</section>

<!-- FAQ -->
<section class="apple-page__faq" aria-label="Frequently asked questions">
  <div class="apple-page__wrap apple-page__wrap--narrow">
    <h2 class="apple-page__section-title">Questions? Answers.</h2>
    <div class="apple-page__faq-list">
      <details class="apple-page__faq-item">
        <summary class="apple-page__faq-question">What devices are supported?</summary>
        <div class="apple-page__faq-answer"><p>Works on iPhone, iPad, Mac, and Apple Watch.</p></div>
      </details>
    </div>
  </div>
</section>

<!-- Footer -->
<footer class="apple-page__footer" role="contentinfo">
  <div class="apple-page__wrap">
    <div class="apple-page__footer-grid">
      <nav class="apple-page__footer-col" aria-label="Shop and Learn">
        <h4 class="apple-page__footer-heading">Shop and Learn</h4>
        <ul class="apple-page__footer-links"><li><a href="#">Store</a></li><li><a href="#">Mac</a></li></ul>
      </nav>
      <!-- repeat 4-5 columns -->
    </div>
    <div class="apple-page__footer-legal">
      <p>Copyright &copy; 2026 Company. All rights reserved.</p>
      <nav class="apple-page__footer-legal-links" aria-label="Legal">
        <a href="#">Privacy Policy</a><a href="#">Terms of Use</a>
      </nav>
    </div>
  </div>
</footer>
```

## Complete CSS

```css
/* ===== FOUNDATION ===== */
.apple-page__wrap { max-width: var(--apple-page-max-width); margin: 0 auto; padding: 0 var(--apple-page-gutter); }
.apple-page__wrap--narrow { max-width: 720px; }

/* ===== DASHBOARD LAYOUT (sidebar + detail panel — NO max-width centering) ===== */
/* Use this for dashboards, app shells, admin panels — NOT for marketing/landing pages */
.apple-dashboard { display: flex; height: 100vh; overflow: hidden; font-family: var(--apple-page-font); background: var(--apple-page-bg); -webkit-font-smoothing: antialiased; }
.apple-dashboard__sidebar { width: 260px; flex-shrink: 0; background: rgba(255,255,255,0.72); backdrop-filter: blur(20px) saturate(180%); -webkit-backdrop-filter: blur(20px) saturate(180%); border-right: 0.5px solid var(--apple-page-separator); display: flex; flex-direction: column; overflow-y: auto; padding: 8px; }
.apple-dashboard__main { flex: 1; display: flex; flex-direction: column; overflow-y: auto; min-width: 0; background: var(--apple-page-bg); }
.apple-dashboard__toolbar { position: sticky; top: 0; z-index: 10; height: 44px; display: flex; align-items: center; padding: 0 16px; background: rgba(255,255,255,0.72); backdrop-filter: blur(20px) saturate(180%); -webkit-backdrop-filter: blur(20px) saturate(180%); border-bottom: 0.5px solid var(--apple-page-separator); gap: 12px; }
.apple-dashboard__content { flex: 1; padding: 20px; }
/* Dashboard cards grid: fills available width, no max-width constraint */
.apple-dashboard__cards { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 16px; }
.apple-dashboard__row { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-top: 16px; }
@media (prefers-color-scheme: dark) {
  .apple-dashboard__sidebar { background: rgba(30,30,30,0.72); }
  .apple-dashboard__toolbar { background: rgba(30,30,30,0.72); }
}
.dark .apple-dashboard__sidebar { background: rgba(30,30,30,0.72); }
.dark .apple-dashboard__toolbar { background: rgba(30,30,30,0.72); }
@media (max-width: 1023px) {
  .apple-dashboard__sidebar { position: fixed; left: 0; top: 0; bottom: 0; z-index: 50; transform: translateX(-100%); transition: transform 300ms ease-in-out; }
  .apple-dashboard__sidebar--open { transform: translateX(0); }
  .apple-dashboard__row { grid-template-columns: 1fr; }
}

/* ===== HERO ===== */
.apple-page__hero { padding: var(--apple-page-hero-gap) 0 80px; text-align: center; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__eyebrow { font-family: var(--apple-page-font); font-size: 12px; font-weight: 600; text-transform: uppercase; letter-spacing: 1px; color: var(--apple-page-link); margin: 0 0 16px; }
.apple-page__hero-title { font-family: var(--apple-page-font); font-size: 80px; font-weight: 700; line-height: 1.05; letter-spacing: -2px; color: var(--apple-page-text); margin: 0 0 24px; }
.apple-page__hero-subtitle { font-family: var(--apple-page-font); font-size: 28px; font-weight: 400; line-height: 1.35; letter-spacing: 0.007em; color: var(--apple-page-text-secondary); margin: 0 auto 40px; max-width: 680px; }
.apple-page__hero-actions { display: flex; justify-content: center; align-items: center; gap: 24px; flex-wrap: wrap; }

/* Product & Video Hero */
.apple-page__hero--product,
.apple-page__hero--video { position: relative; padding: 0; min-height: 100vh; display: flex; align-items: center; justify-content: center; overflow: hidden; }
.apple-page__hero-media { position: absolute; inset: 0; }
.apple-page__hero-image { width: 100%; height: 100%; object-fit: cover; }
.apple-page__hero-video { position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; }
.apple-page__hero-overlay { position: relative; z-index: 1; text-align: center; }

/* ===== CTA BUTTONS ===== */
.apple-page__cta { display: inline-flex; align-items: center; justify-content: center; font-family: var(--apple-page-font); font-size: 17px; font-weight: 600; line-height: 1.18; letter-spacing: -0.022em; text-decoration: none; border: none; cursor: pointer; transition: opacity 150ms ease-out, transform 150ms ease-out; -webkit-tap-highlight-color: transparent; user-select: none; }
.apple-page__cta--primary { background: var(--apple-page-link); color: #FFFFFF; height: 44px; padding: 0 28px; border-radius: 9999px; }
.apple-page__cta--secondary { background: none; color: var(--apple-page-link); padding: 0; }
.apple-page__cta:active { opacity: 0.7; transform: scale(0.98); }
@media (hover: hover) {
  .apple-page__cta--primary:hover { filter: brightness(1.1); }
  .apple-page__cta--secondary:hover { text-decoration: underline; }
}
.apple-page__cta:focus-visible { outline: 4px solid rgba(0, 102, 204, 0.6); outline-offset: 2px; }

/* ===== SECTION TITLES ===== */
.apple-page__section-title { font-family: var(--apple-page-font); font-size: 56px; font-weight: 700; line-height: 1.07; letter-spacing: -1.5px; color: var(--apple-page-text); margin: 0 0 16px; text-align: center; }
.apple-page__section-subtitle { font-family: var(--apple-page-font); font-size: 21px; font-weight: 400; line-height: 1.38; color: var(--apple-page-text-secondary); margin: 0 auto 40px; text-align: center; max-width: 680px; }

/* ===== FEATURE SHOWCASE ===== */
.apple-page__feature { padding: var(--apple-page-section-gap) 0; min-height: 80vh; display: flex; align-items: center; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__feature-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 48px; align-items: center; }
.apple-page__feature-grid--reversed { direction: rtl; }
.apple-page__feature-grid--reversed > * { direction: ltr; }
.apple-page__feature-title { font-family: var(--apple-page-font); font-size: 48px; font-weight: 700; line-height: 1.08; letter-spacing: -1px; color: var(--apple-page-text); margin: 0 0 20px; }
.apple-page__feature-body { font-family: var(--apple-page-font); font-size: 21px; font-weight: 400; line-height: 1.38; color: var(--apple-page-text-secondary); margin: 0; }
.apple-page__feature-media img { display: block; width: 100%; height: auto; border-radius: 16px; }

/* ===== FEATURE STRIP ===== */
.apple-page__strip { padding: var(--apple-page-section-gap) 0; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__strip-items { display: flex; justify-content: center; gap: 64px; }
.apple-page__strip-item { flex: 0 1 220px; text-align: center; }
.apple-page__strip-icon { width: 48px; height: 48px; color: var(--apple-page-link); margin: 0 auto 16px; display: block; /* NO background, NO rounded square */ }
.apple-page__strip-title { font-family: var(--apple-page-font); font-size: 19px; font-weight: 700; line-height: 1.21; margin: 0 0 8px; color: var(--apple-page-text); }
.apple-page__strip-body { font-family: var(--apple-page-font); font-size: 14px; font-weight: 400; line-height: 1.43; color: var(--apple-page-text-secondary); margin: 0; }

/* ===== STATS BAR ===== */
.apple-page__stats { padding: var(--apple-page-section-gap) 0; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__stats-items { display: flex; justify-content: center; gap: 80px; }
.apple-page__stat { text-align: center; }
.apple-page__stat-number { display: block; font-family: var(--apple-page-font); font-size: 56px; font-weight: 700; line-height: 1.07; letter-spacing: -1px; color: var(--apple-page-text); }
.apple-page__stat-label { display: block; font-family: var(--apple-page-font); font-size: 14px; font-weight: 400; line-height: 1.43; color: var(--apple-page-text-secondary); margin-top: 8px; }

/* ===== PRICING ===== */
.apple-page__pricing { padding: var(--apple-page-section-gap) 0; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__pricing-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(260px, 1fr)); gap: 24px; margin: 48px auto 0; max-width: 720px; }
.apple-page__pricing-card { padding: 40px 32px; border-radius: 20px; border: 1px solid var(--apple-page-separator); text-align: center; display: flex; flex-direction: column; align-items: center; gap: 16px; }
.apple-page__pricing-card--highlighted { border-color: var(--apple-page-link); border-width: 2px; }
.apple-page__pricing-name { font-family: var(--apple-page-font); font-size: 24px; font-weight: 700; margin: 0; color: var(--apple-page-text); }
.apple-page__pricing-price { font-size: 17px; color: var(--apple-page-text-secondary); margin: 0; }
.apple-page__pricing-amount { font-size: 48px; font-weight: 700; letter-spacing: -1px; color: var(--apple-page-text); }
.apple-page__pricing-features { list-style: none; padding: 0; margin: 8px 0 16px; font-size: 14px; line-height: 2; color: var(--apple-page-text-secondary); }

/* ===== CTA SECTION ===== */
.apple-page__cta-section { padding: var(--apple-page-section-gap) 0; text-align: center; background: var(--apple-page-bg); color: var(--apple-page-text); }

/* ===== FAQ ===== */
.apple-page__faq { padding: var(--apple-page-section-gap) 0; background: var(--apple-page-bg); color: var(--apple-page-text); }
.apple-page__faq-list { margin-top: 48px; }
.apple-page__faq-item { border-top: 0.5px solid var(--apple-page-separator); }
.apple-page__faq-item:last-child { border-bottom: 0.5px solid var(--apple-page-separator); }
.apple-page__faq-question { font-family: var(--apple-page-font); font-size: 19px; font-weight: 700; line-height: 1.21; color: var(--apple-page-text); padding: 20px 0; cursor: pointer; list-style: none; display: flex; justify-content: space-between; align-items: center; }
.apple-page__faq-question::-webkit-details-marker { display: none; }
.apple-page__faq-question::after { content: '+'; font-size: 24px; font-weight: 300; color: var(--apple-page-text-secondary); transition: transform 300ms ease; }
.apple-page__faq-item[open] .apple-page__faq-question::after { transform: rotate(45deg); }
.apple-page__faq-answer { padding: 0 0 20px; font-size: 17px; line-height: 1.47; color: var(--apple-page-text-secondary); }

/* ===== FOOTER ===== */
.apple-page__footer { border-top: 0.5px solid var(--apple-page-separator); padding: 20px 0 40px; background: var(--apple-page-bg); color: var(--apple-page-text-secondary); font-family: var(--apple-page-font); font-size: 12px; line-height: 1.33; }
.apple-page__footer-grid { display: grid; grid-template-columns: repeat(5, 1fr); gap: 24px; padding-bottom: 20px; border-bottom: 0.5px solid var(--apple-page-separator); }
.apple-page__footer-heading { font-size: 12px; font-weight: 600; color: var(--apple-page-text); margin: 0 0 10px; }
.apple-page__footer-links { list-style: none; padding: 0; margin: 0; }
.apple-page__footer-links li { margin-bottom: 6px; }
.apple-page__footer-links a { color: var(--apple-page-text-secondary); text-decoration: none; }
.apple-page__footer-links a:hover { text-decoration: underline; }
.apple-page__footer-legal { display: flex; justify-content: space-between; align-items: baseline; padding-top: 16px; flex-wrap: wrap; gap: 8px; }
.apple-page__footer-legal p { margin: 0; }
.apple-page__footer-legal-links { display: flex; gap: 16px; }
.apple-page__footer-legal-links a { color: var(--apple-page-text-secondary); text-decoration: none; }
.apple-page__footer-legal-links a:hover { text-decoration: underline; }

/* ===== RESPONSIVE ===== */
@media (max-width: 599px) {
  .apple-page__hero-title { font-size: 40px; letter-spacing: -0.5px; }
  .apple-page__hero-subtitle { font-size: 19px; }
  .apple-page__section-title { font-size: 32px; letter-spacing: -0.5px; }
  .apple-page__feature-grid { grid-template-columns: 1fr; gap: 32px; }
  .apple-page__feature-grid--reversed { direction: ltr; }
  .apple-page__feature-title { font-size: 32px; letter-spacing: -0.5px; }
  .apple-page__feature-body { font-size: 17px; }
  .apple-page__strip-items { flex-direction: column; align-items: center; gap: 40px; }
  .apple-page__stats-items { flex-direction: column; align-items: center; gap: 40px; }
  .apple-page__stat-number { font-size: 40px; }
  .apple-page__pricing-grid { grid-template-columns: 1fr; }
  .apple-page__footer-grid { grid-template-columns: repeat(2, 1fr); }
  .apple-page__footer-legal { flex-direction: column; }
  .apple-page__hero-actions { flex-direction: column; gap: 16px; }
  .apple-page__cta--primary { width: 100%; }
}
@media (min-width: 600px) and (max-width: 1024px) {
  :root { --apple-page-gutter: 40px; }
  .apple-page__hero-title { font-size: 56px; letter-spacing: -1.5px; }
  .apple-page__hero-subtitle { font-size: 24px; }
  .apple-page__feature-title { font-size: 40px; }
  .apple-page__strip-items { gap: 40px; }
  .apple-page__stats-items { gap: 48px; }
  .apple-page__footer-grid { grid-template-columns: repeat(3, 1fr); }
}
@media (min-width: 1025px) { :root { --apple-page-gutter: 40px; } }

/* ===== REDUCED MOTION ===== */
@media (prefers-reduced-motion: reduce) {
  .apple-page__cta { transition: none; }
  .apple-page__faq-question::after { transition: none; }
}

/* ===== DARK MODE ===== */
@media (prefers-color-scheme: dark) {
  .apple-page__cta:focus-visible { outline-color: rgba(41, 151, 255, 0.6); }
}
.dark .apple-page__cta:focus-visible { outline-color: rgba(41, 151, 255, 0.6); }
```

## Section Transition Rules

1. **Default: NO background alternation.** Continuous white (#FFFFFF) in light, black (#000000) in dark. The page is one unbroken canvas.
2. **Sections separated by vertical space (120-200px padding), not color changes.** Whitespace is the primary visual separator.
3. **Full-bleed imagery acts as a natural visual break** between text sections -- not a background color toggle.
4. **When a background shift IS used** (sparingly, 1-2 per page max): light uses #F5F5F7, dark uses #1D1D1F. NOT the component-level #F2F2F7.
5. **Thin separators (0.5px)** used sparingly -- footer and nav only. Body sections do not get horizontal rules.
6. **Adjacent feature showcases** alternate image side (left/right), not background color.
7. **Full-bleed sections** (product hero, video hero) naturally create contrast without explicit background changes.

## Animation & Motion

```css
/* Scroll-triggered fade-in (apply via JS IntersectionObserver) */
.apple-page__reveal { opacity: 0; transform: translateY(20px); transition: opacity 600ms ease, transform 600ms ease; }
.apple-page__reveal--visible { opacity: 1; transform: translateY(0); }
@media (prefers-reduced-motion: reduce) {
  .apple-page__reveal { opacity: 1; transform: none; transition: none; }
}
```

## Accessibility

- **ARIA**: `aria-label` on each `<section>` for landmarks, `role="contentinfo"` on footer, `role="list"` on pricing features
- **Keyboard**: Tab through CTAs, Enter/Space to activate, FAQ toggles via native `<details>`
- **Focus ring**: 4px solid link color at 60% opacity, 2px offset on interactive elements
- **Touch target**: CTAs minimum 44px height, FAQ summaries full-width tap area
- **Screen reader**: Eyebrows read before headings via DOM order, stat numbers associated with labels by proximity
- **Reduced motion**: All transitions and transforms disabled via `prefers-reduced-motion: reduce`

## Do / Don't

| Do | Don't |
|----|-------|
| One feature per viewport with large image + text | 3x2 card grids with colored icon boxes |
| 120-200px vertical space between sections | 40-60px section padding that crowds content |
| Continuous background with generous whitespace | Alternating gray/white section backgrounds |
| Product photography as section visual anchors | 100% text with decorative CSS gradients |
| Monochrome SF Symbol SVGs for icons | Emoji or colored gradient icon squares |
| Full-bleed media spanning edge to edge | Contained images with margins in hero |
| Max-width 980px for text content | Full-width text running to screen edges |
| 2 CTAs max per section (primary + secondary link) | 3+ buttons competing for attention |
| Feature showcase: image occupies 50%+ of section | Tiny thumbnails next to large text blocks |
| Eyebrow - Headline - Body - CTA hierarchy per section | Just a headline and a button with no context |
| Alternate image left/right across feature sections | Same layout repeated for every feature |
| One font family (SF Pro) at 3-4 weights max | Multiple display fonts mixed on one page |
