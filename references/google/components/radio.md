# Radio Button — Google Material Design 3

> Source: [material-web/docs/components/radio.md](https://github.com/material-components/material-web/blob/main/docs/components/radio.md)

## Dimensions

| Property | Value |
|----------|-------|
| Icon size | 20dp |
| Touch target | 48dp |

## Color Tokens

| State | Color |
|-------|-------|
| Unselected | `--md-radio-icon-color` → `--md-sys-color-on-surface-variant` |
| Selected | `--md-radio-selected-icon-color` → `--md-sys-color-primary` |
| Disabled | 38% opacity |

## Visual States

- **Unselected**: Circle outline in `on-surface-variant`
- **Selected**: Filled outer circle + center dot in `primary`
- **Disabled**: 38% opacity regardless of selection state

## Group Behavior

- Radios with same `name` attribute form a group
- Only one radio can be selected per group
- Selecting one deselects others in the group
- If any radio has `required`, all in group become required

## Properties

| Property | Type | Default |
|----------|------|---------|
| `checked` | boolean | undefined |
| `required` | boolean | false |
| `value` | string | `'on'` |
| `disabled` | boolean | undefined |
| `name` | string | undefined |

## Events

- `input`: On user interaction (bubbles, not composed)
- `change`: On user interaction (bubbles, composed)

## Accessibility

- Must have `aria-label`
- Place within `role="radiogroup"` container
- Container needs `aria-label` or `aria-labelledby`
