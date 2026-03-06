# Switch — Google Material Design 3

> Source: [material-web/docs/components/switch.md](https://github.com/material-components/material-web/blob/main/docs/components/switch.md)

## Dimensions

| Property | Value |
|----------|-------|
| Track width | 52dp |
| Track height | 32dp |
| Handle (off) | 16dp diameter |
| Handle (on) | 24dp diameter |
| Handle (pressed) | 28dp diameter |
| Track shape | `--md-sys-shape-corner-full` |
| Handle shape | `--md-sys-shape-corner-full` |

## Color Tokens

| State | Handle Color | Track Color | Track Border |
|-------|-------------|-------------|--------------|
| Off | `--md-sys-color-outline` | `--md-sys-color-surface-container-highest` | `--md-sys-color-outline` 2dp |
| On | `--md-sys-color-on-primary` | `--md-sys-color-primary` | None |
| Disabled off | `--md-sys-color-on-surface` 38% | `--md-sys-color-surface-container-highest` 12% | `--md-sys-color-on-surface` 12% |
| Disabled on | `--md-sys-color-surface` | `--md-sys-color-on-surface` 12% | None |

## State Layers

| State | Effect |
|-------|--------|
| Hover | 8% state layer on handle |
| Focus | 10% state layer on handle |
| Pressed | Handle grows to 28dp + 10% state layer |

## Icon Support

- `icons` attribute: Shows icons in both states
- `show-only-selected-icon`: Only shows icon when selected
- Selected icon slot: `slot="selected"` for custom selected icon
- Default icons: checkmark (on), X (off)

## Properties

- `selected`: Boolean, activates selected state
- `disabled`: Boolean, disables interaction
- `required`: Form validation
- `value`: Default `'on'`, submitted as form value

## Accessibility

- Must have `aria-label` (not auto-labeled by `<label>`)
- Announces selected/deselected state
- Keyboard: Space toggles, focus via Tab
