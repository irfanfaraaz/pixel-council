# Checkbox — Google Material Design 3

> Source: [material-web/docs/components/checkbox.md](https://github.com/material-components/material-web/blob/main/docs/components/checkbox.md)

## Dimensions

| Property | Value |
|----------|-------|
| Container size | 18dp |
| Touch target | 48dp |
| Border width (unchecked) | 2dp |
| Shape | 2dp corner radius |

## States

| State | Border/Fill | Icon |
|-------|------------|------|
| Unchecked | `--md-sys-color-on-surface-variant` border | None |
| Checked | `--md-sys-color-primary` fill | White checkmark (`on-primary`) |
| Indeterminate | `--md-sys-color-primary` fill | White horizontal dash (`on-primary`) |
| Disabled | 38% opacity on all elements | Same as current state |

## Color Tokens

| Element | Token |
|---------|-------|
| Outline (unchecked) | `--md-checkbox-outline-color` → `on-surface-variant` |
| Container (checked) | `--md-checkbox-selected-container-color` → `primary` |
| Icon (checked) | `--md-checkbox-selected-icon-color` → `on-primary` |
| Shape | `--md-checkbox-container-shape` → `2px` |

## Properties

| Property | Type | Default |
|----------|------|---------|
| `checked` | boolean | false |
| `indeterminate` | boolean | false |
| `required` | boolean | false |
| `value` | string | `'on'` |
| `disabled` | boolean | — |

## Events

- `change`: Fires on toggle (bubbles: yes)
- `input`: Fires on toggle (bubbles: yes, composed: yes)

## Accessibility

- Not auto-labeled by `<label>` — always needs `aria-label`
- `touch-target` wrapper option for larger tap area
- Keyboard: Space toggles
