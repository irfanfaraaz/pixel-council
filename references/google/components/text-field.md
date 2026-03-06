# Text Field — Google Material Design 3

> Source: [material-web/docs/components/text-field.md](https://github.com/material-components/material-web/blob/main/docs/components/text-field.md)

## Variants

| Variant | Container | Active Indicator | Use Case |
|---------|-----------|-----------------|----------|
| Filled | `--md-sys-color-surface-container-highest` fill | Bottom line (1dp default, 2dp focused) | Default for most forms |
| Outlined | Transparent | Border around field (1dp default, 2dp focused) | Denser layouts, tables |

## Dimensions

| Property | Value |
|----------|-------|
| Height | 56dp |
| Horizontal padding | 16dp |
| Input text | `body-large` (16sp) |
| Label (resting) | `body-large` (16sp) |
| Label (floating) | `body-small` (12sp) |
| Supporting text | `body-small` (12sp), 4dp below field |
| Leading icon | 24dp, 12dp from edge |
| Trailing icon | 24dp, 12dp from edge |
| Container shape (filled) | `extra-small` (4dp) top corners, 0 bottom |
| Container shape (outlined) | `extra-small` (4dp) all corners |

## Color Tokens by State

| Element | Default | Focused | Error | Disabled |
|---------|---------|---------|-------|----------|
| Container (filled) | `surface-container-highest` | Same | Same | `on-surface` 4% |
| Active indicator / outline | `on-surface-variant` | `primary` 2dp | `error` 2dp | `on-surface` 38% |
| Label text | `on-surface-variant` | `primary` | `error` | `on-surface` 38% |
| Input text | `on-surface` | `on-surface` | `on-surface` | `on-surface` 38% |
| Supporting text | `on-surface-variant` | `on-surface-variant` | `error` | `on-surface` 38% |
| Trailing icon | `on-surface-variant` | `on-surface-variant` | `error` | `on-surface` 38% |

## Features

- **Floating label**: Animates from placeholder position to floating above input (~150ms)
- **Character counter**: Displays "current / max" when `maxlength` attribute set
- **Prefix/suffix text**: Static text before/after input (currency symbols, units)
- **Leading/trailing icons**: Slotted content for visual or functional icons
- **Textarea**: `type="textarea"` with configurable `rows`, CSS `resize` property
- **Input types**: text, email, number, password, search, tel, url, textarea

## Validation

- **Constraint validation**: Native browser validation API, triggers on form submit or `reportValidity()`
- **Manual validation**: `error` and `error-text` attributes for app-driven validation
- Error text replaces supporting text when error is active

## CSS Custom Properties

```css
/* Filled */
--md-filled-text-field-container-shape
--md-filled-text-field-container-color
--md-filled-text-field-focus-active-indicator-color
--md-filled-text-field-input-text-font
--md-filled-text-field-label-text-font

/* Outlined */
--md-outlined-text-field-container-shape
--md-outlined-text-field-focus-outline-color
--md-outlined-text-field-input-text-font
--md-outlined-text-field-label-text-font
```

## Accessibility

- Use `aria-label` for fields without visible labels
- `inputmode` controls mobile keyboard type
- Supporting text provides additional context for screen readers
- Error state announces error text
