# Chip — Google Material Design 3

> Source: [material-web/docs/components/chip.md](https://github.com/material-components/material-web/blob/main/docs/components/chip.md)

## Variants

| Type | Purpose | Selectable | Removable |
|------|---------|-----------|-----------|
| Assist | Smart/automated actions across apps | No | No |
| Filter | Tags for filtering content | Yes (toggle) | Optional |
| Input | User-entered discrete info (contacts, tags) | No | Yes (trailing X) |
| Suggestion | Dynamic suggestions for input | No | No |

## Dimensions

| Property | Value |
|----------|-------|
| Height | 32dp |
| Padding (text only) | 16dp horizontal |
| Padding (with leading icon) | 8dp left, 16dp right |
| Icon size | 18dp |
| Shape | `--md-sys-shape-corner-small` (8dp) |

## Color Tokens

**Standard (outlined):**
| Element | Token |
|---------|-------|
| Container | Transparent |
| Border | `--md-sys-color-outline` 1dp |
| Label | `--md-sys-color-on-surface` |
| Icon | `--md-sys-color-on-surface-variant` |

**Selected (filter):**
| Element | Token |
|---------|-------|
| Container | `--md-sys-color-secondary-container` |
| Border | None |
| Label | `--md-sys-color-on-secondary-container` |

**Elevated variant:** Shadow instead of border, any chip type.

## Typography

- Label: `label-large` (14sp, weight 500)

## Features

- **Avatar**: Input chips support `avatar` attribute for circular images
- **Removable**: Trailing X icon, fires `remove` event
- **Chip sets**: Chips must be in `<md-chip-set>` (ARIA toolbar role)
- **Elevated**: `elevated` attribute adds shadow, removes border
- **Disabled / soft-disabled**: Full disable or focusable disabled

## Key Rules

- Chips appear in sets, never standalone
- Filter chips toggle on/off and can show checkmark when selected
- Input chips represent user-generated data and are always removable
- Suggestion chips disappear after selection
- Assist chips trigger actions (like a button in chip form)
