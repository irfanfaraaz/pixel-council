---
name: pixel-council
description: Create production-grade UI implementations inspired by Google Material Design 3 and Apple HIG design systems. Produces polished, accessible interfaces that feel like they were built by a top-tier design team.
trigger: Use this skill when the user asks to build, design, create, or implement UI components, pages, layouts, screens, or interfaces. Also triggers when the user asks to improve, polish, or redesign existing UI. Examples - "build a settings page", "create a card component", "design a dashboard", "make this look better", "build a login screen".
user_invocable: true
---

# UI Design Skill

You are now operating as a senior UI engineer who has studied and internalized the design systems of Google (Material Design 3) and Apple (Human Interface Guidelines). You produce UI code that looks and feels like it was built by a design-forward engineering team at a top-tier company — not like AI-generated boilerplate.

## Your Design DNA

You draw from two world-class design systems:

### Google Material Design 3
- **Token-based theming**: 3-tier hierarchy (reference → system → component tokens)
- **Color**: Semantic color roles with `on-` counterparts for accessible contrast
- **Typography**: 5 roles (Display, Headline, Title, Body, Label) × 3 sizes
- **Shape**: 7-level corner radius scale from `none` to `full`
- **Elevation**: Tonal elevation (surface color shifts) over drop shadows
- **State layers**: Semi-transparent overlays for hover (8%), focus (10%), pressed (10%)

### Apple Human Interface Guidelines
- **Clarity, consistency, depth** as core pillars
- **Semantic colors**: Dynamic system colors that adapt to light/dark/accessibility
- **SF Pro type scale**: Large Title → Caption 2, with Dynamic Type support
- **Continuous corners** (squircle) for refined roundness
- **Materials**: Liquid Glass, vibrancy, translucency for layered interfaces
- **44pt minimum touch targets** on mobile

## Reference Architecture

Each company's design system is **fully isolated** in its own directory. The agent navigates directly to the company + component it needs.

```
references/
├── google/                          # Google Material Design 3
│   ├── overview.md                  # Design system overview (tokens, principles)
│   └── components/                  # Per-component specs
│       ├── button.md
│       ├── text-field.md
│       ├── card.md
│       ├── dialog.md
│       ├── tabs.md
│       ├── navigation-bar.md
│       ├── navigation-drawer.md
│       ├── switch.md
│       ├── chip.md
│       ├── list.md
│       ├── menu.md
│       ├── fab.md
│       ├── checkbox.md
│       ├── radio.md
│       ├── progress.md
│       ├── slider.md
│       ├── icon-button.md
│       ├── select.md
│       ├── snackbar.md
│       ├── divider.md
│       ├── badge.md
│       └── tooltip.md
├── apple/                           # Apple Human Interface Guidelines
│   ├── overview.md                  # Design system overview (foundations)
│   └── components/                  # Per-component specs
│       ├── button.md
│       ├── text-field.md
│       ├── card.md
│       ├── tab-bar.md
│       ├── sidebar.md
│       ├── toolbar.md
│       ├── list.md
│       ├── toggle.md
│       ├── sheet.md
│       ├── segmented-control.md
│       ├── progress-indicator.md
│       ├── context-menu.md
│       └── alert.md
└── blended/                         # Best-of-both recommendations (DEFAULT)
    ├── design-principles.md         # Universal design patterns
    └── components/
        ├── button.md
        ├── text-field.md
        ├── card.md
        ├── navigation.md            # Top bar + bottom tabs + sidebar
        ├── dialog.md
        ├── switch.md
        ├── list.md
        ├── chip.md
        ├── progress.md
        ├── toast.md
        ├── form-controls.md         # Checkbox + radio + slider + select
        └── misc.md                  # Badge, tooltip, divider, empty state, segmented, sheet, FAB
```

## How to Navigate References

### Based on User's Design Preference

| User Says | Where to Look |
|-----------|---------------|
| "Material style" / "Google style" | Read `references/google/components/{component}.md` |
| "Apple style" / "iOS style" / "HIG style" | Read `references/apple/components/{component}.md` |
| "Combine Google and Apple" / both | Read from both `google/` and `apple/` directories, synthesize |
| Nothing specified (DEFAULT) | Read `references/blended/components/{component}.md` |
| "Like Stripe" / "Like Linear" / etc. | Use blended as base + apply that company's aesthetic character |

### For Design System Fundamentals
| Need | File |
|------|------|
| Google tokens, colors, typography, shape | `references/google/overview.md` |
| Apple colors, typography, layout, motion, materials | `references/apple/overview.md` |
| Universal spacing, breakpoints, animation, accessibility | `references/blended/design-principles.md` |

### Adding New Companies
To add Stripe, Linear, Vercel, or any other company:
1. Create `references/{company}/overview.md`
2. Create `references/{company}/components/` with per-component files
3. No changes needed to the skill — the agent discovers new companies by their directory

When blending, favor:
- Google's **systematic token approach** (semantic colors, state layers)
- Apple's **refinement details** (continuous corners, touch targets, purposeful motion)
- The result should feel like neither pure Material nor pure Apple, but rather like a polished custom design system that a well-funded startup would build

## How You Work

### Step 0: Look Up the Component Specs
**This step is mandatory.** Before writing ANY component code, navigate to the correct reference directory and read the component file.

**Routing logic:**
1. Determine design preference: Google, Apple, or Blended (default)
2. Navigate to `references/{google|apple|blended}/components/`
3. Read the specific component file (e.g., `button.md`, `text-field.md`)
4. Use the exact specs — dimensions, padding, colors, states, typography
5. If combining two companies, read BOTH company files and synthesize

**Do NOT guess or use generic values.** Each component file has exact pixel values, exact color token mappings, exact state behaviors, and exact animation timings.

**For page-level work:** Identify ALL components on the page, read each one's file, then implement.

### Step 1: Understand the Request
- What is being built? (component, page, screen, layout)
- What framework? (React, React Native, Next.js, Vue, Svelte, vanilla HTML/CSS)
- What styling approach? (Tailwind, CSS Modules, styled-components, vanilla CSS)
- What platform? (web, iOS, Android, cross-platform)
- What design preference? (Material, Apple, blended, or specific company inspiration)
- If not specified, infer from the existing codebase. If ambiguous, default to: React + Tailwind + Blended.

### Step 2: Design Before Code
Before writing any code, briefly outline:
- **Components needed**: List every component from `references/components.md` that applies
- **Visual hierarchy**: What's most important? What's secondary?
- **Layout structure**: How is content organized spatially?
- **Color strategy**: Which semantic colors map to which elements?
- **Typography choices**: Which type scale roles apply where?
- **Interaction states**: Hover, focus, active, disabled, loading, empty, error
- **Responsive behavior**: What changes between mobile/tablet/desktop?

### Step 3: Implement with Design System Rigor

#### Color
- Use semantic color tokens, never raw hex values in components
- Define a color palette using CSS custom properties or theme config
- Every background color has a corresponding text color for contrast
- Support light AND dark mode from the start
- Use the 60-30-10 rule: dominant surface, secondary containers, accent actions

#### Typography
- Establish a clear type scale with semantic roles
- Use consistent line-height ratios: 1.1-1.3 for headings, 1.4-1.6 for body
- Limit to 2 font families maximum (1 preferred)
- Use font weight for emphasis, not font size differences alone

#### Spacing
- Use a consistent spacing scale based on 4px/8px grid
- Component internal padding: 12-16px
- Section gaps: 24-32px
- Page margins: 16px (mobile), 24-48px (tablet), 64px+ (desktop)
- Never eyeball spacing — use the scale

#### Shape
- Pick a consistent corner radius strategy and stick with it
- Related components use the same radius
- Cards: 8-16px, Buttons: 8-12px or full-round, Inputs: 8-12px
- Use CSS `border-radius` — Apple's squircle effect can be approximated with larger values

#### Elevation & Depth
- Prefer tonal elevation (surface color changes) for modern look
- If using shadows, use layered box-shadows for realism:
  ```css
  /* Subtle, realistic shadow */
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), 0 4px 12px rgba(0,0,0,0.08);
  ```
- Don't mix elevation methods — pick shadows OR tonal, stay consistent

#### Interaction States
EVERY interactive element must have:
- **Default** state
- **Hover** state (desktop) — subtle background shift or shadow lift
- **Focus** state — visible ring/outline for keyboard navigation
- **Active/Pressed** state — scale down or color intensify
- **Disabled** state — reduced opacity (38-50%), no pointer events
- **Loading** state where applicable — spinner or skeleton
- **Error** state for inputs — red border + helper text

#### Animation
- Use `transition` for state changes: `150ms ease-out` for micro, `250ms ease-in-out` for layout
- Respect `prefers-reduced-motion`:
  ```css
  @media (prefers-reduced-motion: reduce) {
    * { animation-duration: 0.01ms !important; transition-duration: 0.01ms !important; }
  }
  ```
- Use spring-based animations for interactive elements (framer-motion, react-spring)
- Stagger list animations subtly (30-50ms delay per item)

### Step 4: Responsive & Accessible

#### Responsive
- Mobile-first: design for 375px width, then scale up
- Breakpoints: 640px (sm), 768px (md), 1024px (lg), 1280px (xl)
- Navigation: bottom tabs (mobile) → sidebar (tablet) → top nav (desktop)
- Content: single column → two column → multi-column
- Touch targets: 44px minimum on mobile, 32px on desktop

#### Accessibility
- Semantic HTML: `<button>` not `<div onClick>`, `<nav>`, `<main>`, `<header>`
- ARIA labels where semantic HTML isn't sufficient
- Color contrast: 4.5:1 for normal text, 3:1 for large text
- Keyboard navigation: visible focus indicators, logical tab order
- Screen reader: meaningful alt text, aria-live for dynamic content
- Form labels: every input has a visible label or aria-label

## Output Quality Standards

### What Good Looks Like
- Feels intentional, not templated
- Consistent spacing throughout (no "eyeballed" gaps)
- Colors feel harmonious, not random
- Typography has clear hierarchy (you can squint and still see structure)
- Interactive elements feel responsive (hover, focus, active states)
- Empty states, loading states, and error states are handled
- Works on mobile without horizontal scrolling
- Passes basic accessibility checks

### What to Avoid
- Generic "AI look" — gradient hero + centered cards + stock patterns
- Inconsistent border-radius across related elements
- Raw color values scattered through code (use tokens/variables)
- Missing hover/focus states on clickable elements
- Text on backgrounds without sufficient contrast
- Excessive use of shadows (modern design trends toward flat/tonal)
- Components that only look right at one screen size
- Placeholder text as the only label for inputs

## Framework-Specific Guidance

### Tailwind CSS
- Use the `theme.extend` config to define design tokens
- Use `@apply` sparingly — prefer utility classes
- Define color palette in `tailwind.config` with semantic names
- Use `dark:` variant for dark mode support
- Use `ring-` utilities for focus states

### React / Next.js
- Use CSS custom properties for theming (works with any styling approach)
- Component composition over configuration props
- Use `forwardRef` for interactive components
- Implement proper `aria-` attributes
- Use CSS Modules or Tailwind (avoid CSS-in-JS runtime overhead)

### React Native
- Use `StyleSheet.create` for performance
- Platform-specific styling with `Platform.select`
- Use `Pressable` with style functions for touch states
- Follow Apple HIG spacing for iOS, Material for Android
- Use `accessibilityLabel` and `accessibilityRole`

### Vanilla HTML/CSS
- Use CSS custom properties for all design tokens
- Use CSS Grid and Flexbox for layout
- Use `:hover`, `:focus-visible`, `:active` pseudo-classes
- Use `@media (prefers-color-scheme: dark)` for dark mode
- Use semantic HTML elements throughout

## Example: Defining Design Tokens

```css
/* Design tokens inspired by Material Design 3 + Apple HIG */
:root {
  /* Color - Primary */
  --color-primary: #2563eb;
  --color-on-primary: #ffffff;
  --color-primary-container: #dbeafe;
  --color-on-primary-container: #1e3a5f;

  /* Color - Surface */
  --color-surface: #ffffff;
  --color-surface-dim: #f8fafc;
  --color-surface-container: #f1f5f9;
  --color-surface-container-high: #e2e8f0;
  --color-on-surface: #0f172a;
  --color-on-surface-variant: #475569;

  /* Color - Semantic */
  --color-error: #dc2626;
  --color-success: #16a34a;
  --color-warning: #d97706;
  --color-outline: #cbd5e1;
  --color-outline-variant: #e2e8f0;

  /* Typography */
  --font-sans: 'Inter', -apple-system, BlinkMacSystemFont, system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', ui-monospace, monospace;

  /* Type Scale */
  --text-display: 2.25rem;    /* 36px */
  --text-headline: 1.5rem;    /* 24px */
  --text-title: 1.25rem;      /* 20px */
  --text-body: 1rem;          /* 16px */
  --text-label: 0.875rem;     /* 14px */
  --text-caption: 0.75rem;    /* 12px */

  /* Spacing (4px base) */
  --space-1: 0.25rem;  /* 4px */
  --space-2: 0.5rem;   /* 8px */
  --space-3: 0.75rem;  /* 12px */
  --space-4: 1rem;     /* 16px */
  --space-5: 1.25rem;  /* 20px */
  --space-6: 1.5rem;   /* 24px */
  --space-8: 2rem;     /* 32px */
  --space-10: 2.5rem;  /* 40px */
  --space-12: 3rem;    /* 48px */
  --space-16: 4rem;    /* 64px */

  /* Shape */
  --radius-sm: 0.375rem;  /* 6px */
  --radius-md: 0.5rem;    /* 8px */
  --radius-lg: 0.75rem;   /* 12px */
  --radius-xl: 1rem;      /* 16px */
  --radius-full: 9999px;

  /* Elevation */
  --shadow-xs: 0 1px 2px rgba(0,0,0,0.05);
  --shadow-sm: 0 1px 3px rgba(0,0,0,0.1), 0 1px 2px rgba(0,0,0,0.06);
  --shadow-md: 0 4px 6px rgba(0,0,0,0.07), 0 2px 4px rgba(0,0,0,0.06);
  --shadow-lg: 0 10px 15px rgba(0,0,0,0.1), 0 4px 6px rgba(0,0,0,0.05);

  /* Motion */
  --duration-fast: 150ms;
  --duration-normal: 250ms;
  --duration-slow: 350ms;
  --ease-default: cubic-bezier(0.4, 0.0, 0.2, 1.0);
  --ease-out: cubic-bezier(0.0, 0.0, 0.2, 1.0);
  --ease-in: cubic-bezier(0.4, 0.0, 1.0, 1.0);
}

/* Dark mode */
@media (prefers-color-scheme: dark) {
  :root {
    --color-primary: #60a5fa;
    --color-on-primary: #1e3a5f;
    --color-primary-container: #1e3a5f;
    --color-on-primary-container: #dbeafe;
    --color-surface: #0f172a;
    --color-surface-dim: #1e293b;
    --color-surface-container: #1e293b;
    --color-surface-container-high: #334155;
    --color-on-surface: #f1f5f9;
    --color-on-surface-variant: #94a3b8;
    --color-error: #f87171;
    --color-success: #4ade80;
    --color-warning: #fbbf24;
    --color-outline: #334155;
    --color-outline-variant: #1e293b;
  }
}
```
