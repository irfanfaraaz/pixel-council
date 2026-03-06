# Icon Button — Google Material Design 3

> Source: [material-web/docs/components/icon-button.md](https://github.com/material-components/material-web/blob/main/docs/components/icon-button.md)

## Variants

| Type | Container | Emphasis |
|------|-----------|---------|
| Standard | No background or outline | Lowest |
| Filled | Solid background | Highest |
| Filled Tonal | Muted background | Medium-high |
| Outlined | Border, no fill | Medium |

## Dimensions

| Property | Value |
|----------|-------|
| Icon size | 24dp |
| Container size (filled/tonal/outlined) | 40x40dp |
| State layer shape | `--md-sys-shape-corner-full` (circular) |

## Color Tokens

**Standard:**
- Icon: `--md-icon-button-icon-color` → `on-surface-variant`

**Filled:**
- Container: `--md-sys-color-primary`
- Icon: `--md-sys-color-on-primary`
- Selected container: `--md-filled-icon-button-selected-container-color` → `primary`

**Filled Tonal:**
- Container: `--md-sys-color-secondary-container`
- Icon: `--md-sys-color-on-secondary-container`
- Selected: `--md-filled-tonal-icon-button-selected-container-color` → `secondary-container`

**Outlined:**
- Border: `--md-sys-color-outline`
- Icon: `--md-sys-color-on-surface-variant`

## Toggle Mode

- `toggle` attribute enables toggle behavior
- `selected` attribute for pre-selected state
- Second icon with `slot="selected"` for toggled state icon
- `aria-label-selected` for different toggle label

## Additional Features

- `soft-disabled`: Focusable but non-interactive (toolbar accessibility)
- `href` + `target`: Link behavior
- All standard state layers (hover 8%, focus 10%, pressed 10%)

## Accessibility

- Must have `aria-label`
- Toggle icons should have distinct selected/unselected labels
