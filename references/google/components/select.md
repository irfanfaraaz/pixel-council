# Select — Google Material Design 3

> Source: [material-web/docs/components/select.md](https://github.com/material-components/material-web/blob/main/docs/components/select.md)

## Variants

| Type | Container | Use Case |
|------|-----------|----------|
| Filled | `surface-container-highest` fill | Default, most forms |
| Outlined | Border, transparent fill | Denser layouts |

## Color Tokens

**Filled:**
- Container: `--md-filled-select-text-field-container-color` → `surface-container-highest`
- Input text: `--md-sys-color-on-surface`

**Outlined:**
- Outline: `--md-outlined-select-text-field-outline-color` → `outline`
- Input text: `--md-sys-color-on-surface`

**Menu (via `::part(menu)`):**
- Container: `--md-menu-container-color`
- Shape: `--md-menu-container-shape`

## Typography

- Input text: `body-large` (16sp)

## Shape

- Filled: `--md-sys-shape-corner-extra-small` (4dp)
- Outlined: `--md-sys-shape-corner-extra-small` (4dp)

## Properties

| Property | Type | Default |
|----------|------|---------|
| `label` | string | '' |
| `value` | string | undefined |
| `selectedIndex` | number | undefined |
| `required` | boolean | false |
| `error` | boolean | false |
| `errorText` | string | '' |
| `supportingText` | string | '' |
| `disabled` | boolean | undefined |
| `quick` | boolean | false (skip animation) |
| `menuAlign` | string | 'start' |
| `menuPositioning` | string | 'popover' |

## Methods

- `select(value)`: Select by value
- `selectIndex(index)`: Select by position
- `reset()`: Restore default
- `showPicker()`: Open menu programmatically

## Events

| Event | When |
|-------|------|
| `change` | Selection changed |
| `input` | User interaction |
| `opening` / `opened` | Menu open lifecycle |
| `closing` / `closed` | Menu close lifecycle |

## Option Component

`<md-select-option>` with `value` attribute and `headline` slot.
