# FAB (Floating Action Button) — Google Material Design 3

> Source: [material-web/docs/components/fab.md](https://github.com/material-components/material-web/blob/main/docs/components/fab.md)

## Sizes

| Size | Dimensions | Icon Size | Corner Radius |
|------|-----------|-----------|---------------|
| Small | 40dp | 24dp | `--md-sys-shape-corner-medium` (12dp) |
| Medium (default) | 56dp | 24dp | `--md-sys-shape-corner-large` (16dp) |
| Large | 96dp | 36dp | `--md-sys-shape-corner-extra-large` (28dp) |
| Extended | 56dp height, variable width | 24dp + label | `--md-sys-shape-corner-large` (16dp) |

## Color Variants

| Variant | Container | Icon Color |
|---------|-----------|------------|
| Surface (default) | `--md-sys-color-surface-container-high` | `--md-sys-color-primary` |
| Primary | `--md-sys-color-primary-container` | `--md-sys-color-on-primary-container` |
| Secondary | `--md-sys-color-secondary-container` | `--md-sys-color-on-secondary-container` |
| Tertiary | `--md-sys-color-tertiary-container` | `--md-sys-color-on-tertiary-container` |

## Color Tokens

| Element | Token |
|---------|-------|
| Container (default) | `--md-fab-container-color` → `surface-container-high` |
| Lowered container | `--md-fab-lowered-container-color` → `surface-container-low` |
| Icon | `--md-fab-icon-color` → `primary` |
| Extended label | `--md-fab-label-text-font` → `label-large` |

## Extended FAB

| Property | Value |
|----------|-------|
| Height | 56dp |
| Horizontal padding | 16dp |
| Icon-to-label gap | 8dp |
| Typography | `label-large` (14sp, weight 500) |

## Elevation

- Default: Level 3 (prominent shadow)
- Lowered variant available for less emphasis
- Hover: elevation increases

## Accessibility

- Icon-only FABs require `aria-label`
- Extended FABs use `label` attribute for accessibility
- Omit icon announcements when label is present

## Key Rules

- One FAB per screen (primary action)
- Position: bottom-right, 16dp from edges
- Represents the most common/important action
- Extended FAB for actions that need text clarity
- Can hide on scroll and reappear
