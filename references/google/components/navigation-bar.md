# Navigation Bar (Bottom Navigation) — Google Material Design 3

## Types

| Type | Height | Content |
|------|--------|---------|
| Bottom navigation bar | 80dp | 3-5 destinations, icon + label |

## Dimensions

| Property | Value |
|----------|-------|
| Height | 80dp |
| Destinations | 3-5 |
| Icon size | 24dp |
| Label | `label-medium` (12sp, weight 500) |
| Active indicator | 64x32dp pill shape |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface-container` |
| Active icon | `--md-sys-color-on-secondary-container` |
| Active label | `--md-sys-color-on-surface` |
| Inactive icon | `--md-sys-color-on-surface-variant` |
| Inactive label | `--md-sys-color-on-surface-variant` |
| Active indicator | `--md-sys-color-secondary-container` |

## Active Indicator

- Pill shape: 64x32dp, `corner-full` (16dp radius)
- Color: `secondary-container`
- Appears behind active icon
- Animates horizontally to follow selected destination

## States

- **Active**: Filled icon variant, indicator pill visible, label at full opacity
- **Inactive**: Outlined icon variant, no indicator
- **Pressed**: Ripple effect covers entire destination area
- **Badge**: Small dot (6dp `error`) or large (16dp min height, `error` background, `on-error` text)

## Key Rules

- Use for 3-5 top-level destinations
- Each destination must have an icon and label
- Active destination uses filled icon variant
- Persistent across all screens within each destination
- Position: bottom of screen, full width
