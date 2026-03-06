# Cross-Company Design Principles

> Universal patterns extracted from Google Material Design 3 and Apple HIG, applicable to any framework.

---

## 1. Visual Hierarchy

### Establish Clear Information Architecture
- **Size** communicates importance: larger = more important
- **Weight** creates emphasis: bold for headlines, regular for body
- **Color** directs attention: vibrant for actions, muted for supporting
- **Space** groups related items: proximity implies relationship
- **Depth** layers information: elevation for interactivity

### The 60-30-10 Rule
- **60%** - Dominant surface color (background, large containers)
- **30%** - Secondary color (cards, supporting surfaces)
- **10%** - Accent color (buttons, links, key actions)

---

## 2. Spacing System

### Use Consistent Spacing Scales
Both Apple and Google use 4pt/8pt base grids:

| Scale | Value | Use |
|-------|-------|-----|
| 2xs | 2px | Hairline borders |
| xs | 4px | Tight padding, icon gaps |
| sm | 8px | Component internal padding |
| md | 12px | Card padding, form gaps |
| base | 16px | Section padding, standard gap |
| lg | 24px | Section separation |
| xl | 32px | Major section gaps |
| 2xl | 48px | Page-level spacing |
| 3xl | 64px | Hero sections |

### Touch Target Standards
| Context | Minimum Size |
|---------|-------------|
| Mobile (Apple) | 44x44pt |
| Mobile (Material) | 48x48dp |
| Desktop | 24x24px (with 8px padding) |
| Watch | 38x38pt |

---

## 3. Color Patterns

### Semantic Color Mapping
Every design system maps colors to meaning, not aesthetics:

| Role | Purpose | Google Token | Apple Equivalent |
|------|---------|-------------|-----------------|
| Primary | Key actions, brand | `--md-sys-color-primary` | Tint/Accent Color |
| Secondary | Supporting elements | `--md-sys-color-secondary` | Secondary Label |
| Destructive | Delete, remove | `--md-sys-color-error` | System Red |
| Success | Confirm, complete | Custom | System Green |
| Warning | Caution, attention | Custom | System Orange |
| Surface | Backgrounds | `--md-sys-color-surface` | System Background |
| On-Surface | Text on backgrounds | `--md-sys-color-on-surface` | Label |
| Outline | Borders, dividers | `--md-sys-color-outline` | Separator |

### Dark Mode Strategy
1. Don't just invert colors - redesign for dark context
2. Reduce surface brightness, increase content brightness
3. Use less saturated primary colors in dark mode
4. Maintain/increase contrast ratios
5. Test with actual dark mode, not just color swaps

---

## 4. Typography Patterns

### Establish a Clear Type Scale
Map semantic roles to visual styles:

| Role | Usage | Characteristics |
|------|-------|----------------|
| Display | Hero sections | Largest, lightest weight |
| Heading | Page/section titles | Large, medium weight |
| Title | Card/dialog titles | Medium-large, medium weight |
| Body | Reading content | 14-17px, regular weight, 1.4-1.6 line height |
| Caption | Supporting info | Small, often lighter color |
| Label | UI controls | Medium weight, uppercase optional |
| Overline | Category labels | Small, uppercase, letter-spacing |

### Line Height Standards
| Content Type | Ratio |
|-------------|-------|
| Headings | 1.1-1.3x font size |
| Body text | 1.4-1.6x font size |
| UI labels | 1.0-1.2x font size |

---

## 5. Component Patterns

### Buttons - Hierarchy of Emphasis
| Level | Google | Apple | When to Use |
|-------|--------|-------|-------------|
| Highest | Filled/FAB | Prominent/Bordered Prominent | Primary CTA, 1 per screen |
| High | Tonal | Bordered | Important secondary actions |
| Medium | Outlined | Bordered (gray) | Tertiary actions |
| Low | Text | Borderless | Least important, inline actions |

### Cards - Content Containers
- **Corner radius**: 8-16px (Google: medium shape, Apple: ~10-13px continuous corners)
- **Padding**: 16px internal (Google), 16px (Apple)
- **Elevation**: Subtle shadow or outlined border
- **Apple's continuous corners** (squircle) feel more refined than CSS `border-radius`

### Input Fields
- **Height**: 48-56px (mobile), 36-40px (desktop)
- **Label**: Floating (Google) or above-field (Apple)
- **Border**: Bottom-line or outlined (Google), rounded rect (Apple)
- **Error state**: Red border + helper text below
- **Focus state**: Primary color border/ring + label color change

### Lists
- **Item height**: 48-72px depending on content density
- **Dividers**: Inset (not full-width) for related groups
- **Leading**: Icon/Avatar (40-56px)
- **Trailing**: Chevron, switch, or info
- **Grouping**: Headers + footers for logical sections

### Navigation
- **Bottom tabs**: 3-5 items, icon + label, 49pt (Apple) / 80dp (Google)
- **Top navigation**: Scrollable for >5 items
- **Sidebar**: 240-320px width, collapsible to icons
- **Breadcrumbs**: Desktop only, for deep hierarchies

---

## 6. Animation & Motion

### Principles
1. **Purposeful** - Every animation communicates something
2. **Quick** - Under 300ms for UI transitions
3. **Natural** - Spring-based physics, not linear
4. **Consistent** - Same element = same animation
5. **Interruptible** - Users can act during animations
6. **Accessible** - Respect Reduce Motion preference

### Timing Guidelines
| Action | Duration | Easing |
|--------|----------|--------|
| Micro-interaction (hover, press) | 100-150ms | ease-out |
| Element transition | 200-300ms | ease-in-out |
| Page transition | 300-500ms | spring/ease-in-out |
| Complex choreography | 500-800ms | staggered ease |
| Loading skeleton | 1.5-2s loop | linear pulse |

### CSS Easing Functions
```css
/* Natural motion */
--ease-out: cubic-bezier(0.0, 0.0, 0.2, 1.0);    /* Deceleration */
--ease-in: cubic-bezier(0.4, 0.0, 1.0, 1.0);      /* Acceleration */
--ease-in-out: cubic-bezier(0.4, 0.0, 0.2, 1.0);  /* Standard */
--spring: cubic-bezier(0.175, 0.885, 0.32, 1.275); /* Overshoot */
```

---

## 7. Responsive Design

### Breakpoint Strategy
| Name | Width | Layout |
|------|-------|--------|
| Mobile | <600px | Single column, bottom nav |
| Tablet | 600-1024px | Two column, sidebar option |
| Desktop | 1024-1440px | Multi-column, top/side nav |
| Large | >1440px | Max-width container, centered |

### Adaptation Rules
1. Content priority changes with screen size
2. Navigation moves from bottom (mobile) to side (tablet) to top (desktop)
3. Touch targets shrink on desktop (pointer precision is higher)
4. Typography scales: mobile base 16px, desktop 16-18px
5. Spacing increases with screen size

---

## 8. Accessibility Checklist

### Color & Contrast
- [ ] 4.5:1 contrast for normal text
- [ ] 3:1 contrast for large text and UI elements
- [ ] Information not conveyed by color alone
- [ ] Works in high-contrast mode
- [ ] Dark mode maintains readability

### Interaction
- [ ] Touch targets >= 44x44pt (mobile)
- [ ] All interactive elements keyboard accessible
- [ ] Focus indicators visible
- [ ] No time-dependent interactions without alternatives
- [ ] Destructive actions require confirmation

### Content
- [ ] Images have alt text
- [ ] Form fields have labels
- [ ] Error messages are descriptive
- [ ] Loading states are announced
- [ ] Screen reader order matches visual order

### Motion
- [ ] Animations respect `prefers-reduced-motion`
- [ ] No content conveyed only through animation
- [ ] No rapidly flashing content

---

## 9. Anti-Patterns to Avoid

### The "AI-Generated UI" Look
- Excessive gradients without purpose
- Too many colors competing for attention
- Generic stock-photo hero sections
- Overly rounded everything (inconsistent border-radius)
- Shadows that don't match light source
- Text on busy backgrounds without contrast
- Centered everything (no visual anchor)
- Inconsistent spacing (eyeballed, not systematic)

### Common Mistakes
- Using raw colors instead of semantic tokens
- Different border-radius values on related elements
- Inconsistent padding within component families
- Missing hover/focus/active states
- No loading states
- No empty states
- No error states
- Ignoring system dark mode
- Fixed layouts that break on different screen sizes
