# Google Material Design 3 - Design System Reference

> Source: [material-components/material-web](https://github.com/material-components/material-web)

## Core Philosophy

Material Design 3 (Material You) is Google's design language that emphasizes personalization, accessibility, and adaptive design. It creates meaning through color, shape, and typography while maintaining consistency across platforms.

## Design Token Architecture

Material uses a three-tier token hierarchy:

1. **Reference Tokens** - Concrete values (hex colors, font families, pixel sizes)
2. **System Tokens** - Design decisions defining character (color roles, typescale, shape)
3. **Component Tokens** - Design attributes applied to specific elements

Tokens are implemented as CSS custom properties and can be scoped with selectors.

---

## Color System

### Philosophy
"Color creates meaning and communicates hierarchy, state, and brand."

### Color Scheme Structure
A color scheme derives from five baseline colors, automatically generating:
- Light theme color assignments
- Dark theme color assignments
- Accessible contrast ratios for content

### Color Token Categories

**Primary & Containers:**
| Token | Purpose |
|-------|---------|
| `--md-sys-color-primary` | Primary brand color, key actions |
| `--md-sys-color-on-primary` | Content on primary |
| `--md-sys-color-primary-container` | Standout fill for primary elements |
| `--md-sys-color-on-primary-container` | Content on primary container |

**Secondary:**
| Token | Purpose |
|-------|---------|
| `--md-sys-color-secondary` | Less prominent elements |
| `--md-sys-color-on-secondary` | Content on secondary |
| `--md-sys-color-secondary-container` | Fill for secondary elements |
| `--md-sys-color-on-secondary-container` | Content on secondary container |

**Tertiary:**
| Token | Purpose |
|-------|---------|
| `--md-sys-color-tertiary` | Accent, contrast with primary/secondary |
| `--md-sys-color-tertiary-container` | Fill for tertiary elements |

**Error / Semantic:**
| Token | Purpose |
|-------|---------|
| `--md-sys-color-error` | Error states |
| `--md-sys-color-error-container` | Fill for error messages |

**Surface / Neutral:**
| Token | Purpose |
|-------|---------|
| `--md-sys-color-background` | App background |
| `--md-sys-color-surface` | Surface-level containers |
| `--md-sys-color-surface-bright` | Bright surface variant |
| `--md-sys-color-surface-dim` | Dimmed surface variant |
| `--md-sys-color-surface-container` | Default container surface |
| `--md-sys-color-surface-container-lowest` | Lowest emphasis container |
| `--md-sys-color-surface-container-low` | Low emphasis container |
| `--md-sys-color-surface-container-high` | High emphasis container |
| `--md-sys-color-surface-container-highest` | Highest emphasis container |
| `--md-sys-color-outline` | Borders, dividers |
| `--md-sys-color-outline-variant` | Decorative outlines |
| `--md-sys-color-on-surface` | Content on surface |
| `--md-sys-color-on-surface-variant` | Secondary content on surface |

### Color Implementation Pattern
```css
:root {
  --md-sys-color-primary: #6750A4;
  --md-sys-color-on-primary: #FFFFFF;
  --md-sys-color-primary-container: #EADDFF;
  --md-sys-color-on-primary-container: #21005D;
  --md-sys-color-surface: #FEF7FF;
  --md-sys-color-on-surface: #1D1B20;
}
```

### Key Principles
- Every color role has an `on-` counterpart for accessible content contrast
- Use `primary` for key actions and focal points
- Use `secondary` for supporting elements
- Use `tertiary` for accent and visual interest
- Use `surface` variants to create depth hierarchy without shadows
- Use `error` for destructive actions and validation states

---

## Typography System

### Typeface Tokens
| Token | Default | Purpose |
|-------|---------|---------|
| `--md-ref-typeface-brand` | Roboto | Headlines, titles |
| `--md-ref-typeface-plain` | Roboto | Body text, labels |

Each typeface requires three weight variants: Regular (400), Medium (500), Bold (700).

### Typescale Roles

| Role | Purpose | Use Case |
|------|---------|----------|
| **Display** | Hero text | Large, expressive headlines |
| **Headline** | Section headers | Page titles, section markers |
| **Title** | Subsection headers | Card titles, dialog titles |
| **Body** | Reading text | Paragraphs, descriptions |
| **Label** | UI labels | Buttons, tabs, form labels |

Each role has three sizes: **Large**, **Medium**, **Small**

### Typescale Token Pattern
`--md-sys-typescale-{role}-{size}-{property}`

Properties: `font`, `size`, `line-height`, `weight`

### Recommended Scale (Default)
| Style | Size | Weight | Line Height |
|-------|------|--------|-------------|
| Display Large | 57px | 400 | 64px |
| Display Medium | 45px | 400 | 52px |
| Display Small | 36px | 400 | 44px |
| Headline Large | 32px | 400 | 40px |
| Headline Medium | 28px | 400 | 36px |
| Headline Small | 24px | 400 | 32px |
| Title Large | 22px | 400 | 28px |
| Title Medium | 16px | 500 | 24px |
| Title Small | 14px | 500 | 20px |
| Body Large | 16px | 400 | 24px |
| Body Medium | 14px | 400 | 20px |
| Body Small | 12px | 400 | 16px |
| Label Large | 14px | 500 | 20px |
| Label Medium | 12px | 500 | 16px |
| Label Small | 11px | 500 | 16px |

---

## Shape System

### Philosophy
"Shape can direct attention, communicate state, and express brand."

### Shape Corner Tokens
| Token | Default | Use Case |
|-------|---------|----------|
| `--md-sys-shape-corner-none` | 0px | Sharp edges, full-bleed |
| `--md-sys-shape-corner-extra-small` | 4px | Subtle rounding |
| `--md-sys-shape-corner-small` | 8px | Chips, small containers |
| `--md-sys-shape-corner-medium` | 12px | Cards, dialogs |
| `--md-sys-shape-corner-large` | 16px | FABs, large containers |
| `--md-sys-shape-corner-extra-large` | 28px | Bottom sheets |
| `--md-sys-shape-corner-full` | 9999px | Pills, circular buttons |

---

## Component Categories

### Input & Actions
- **Button** (filled, outlined, text, tonal, elevated)
- **FAB** (small, medium, large, extended)
- **Icon Button** (standard, filled, tonal, outlined)
- **Checkbox**, **Radio**, **Switch**
- **Text Field** (filled, outlined)
- **Select** (filled, outlined)
- **Slider**

### Navigation
- **Tabs** (primary, secondary)
- **Navigation Bar** (bottom navigation)
- **Navigation Drawer**
- **Navigation Rail**
- **Menu** (submenu support)

### Communication
- **Dialog** (basic, full-screen)
- **Snackbar**
- **Progress** (linear, circular)
- **Badge**

### Containment
- **Card** (elevated, filled, outlined)
- **Chip** (assist, filter, input, suggestion)
- **Divider**
- **List**
- **Bottom Sheet**

### Selection
- **Chip** (filter, input)
- **Date Picker**
- **Time Picker**

---

## Elevation System

Material uses a tonal elevation system where surfaces get progressively lighter/darker rather than relying on drop shadows:

| Level | Purpose |
|-------|---------|
| Level 0 | Base surface |
| Level 1 | Raised cards, navigation |
| Level 2 | Menus, selected navigation |
| Level 3 | Search bars, dialogs |
| Level 4 | Snackbars |
| Level 5 | FABs |

---

## State Layer System

Interactive components use state layers (semi-transparent overlays) to communicate interaction state:

| State | Opacity |
|-------|---------|
| Enabled | 0% |
| Hover | 8% |
| Focus | 10% |
| Pressed | 10% |
| Dragged | 16% |
| Disabled | 12% (container), 38% (content) |

---

## Key Design Principles

1. **Accessible by default** - 4.5:1 contrast ratios, semantic color roles
2. **Adaptive** - Responsive to screen size, orientation, density
3. **Consistent** - Unified token system across all components
4. **Customizable** - Three-tier token architecture for brand adaptation
5. **Hierarchical** - Visual weight guides user attention
6. **Purposeful motion** - Transitions communicate spatial relationships
