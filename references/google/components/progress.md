# Progress Indicators — Google Material Design 3

> Source: [material-web/docs/components/progress.md](https://github.com/material-components/material-web/blob/main/docs/components/progress.md)

## Variants

### Linear Progress

| Property | Value |
|----------|-------|
| Track height | 4dp |
| Track color | `--md-sys-color-surface-container-highest` |
| Active indicator height | 4dp |
| Active indicator color | `--md-sys-color-primary` |
| Shape | Track: `corner-none` |

Features:
- **Determinate**: Fills left to right based on `value` / `max`
- **Indeterminate**: Animated segments moving along track
- **Buffer**: Shows determinate progress + indeterminate buffer dots
- **Four-color**: Cycles primary → primary-container → tertiary → tertiary-container

### Circular Progress

| Property | Value |
|----------|-------|
| Size | 48dp (default, customizable via `--md-circular-progress-size`) |
| Stroke width | 8.3333% of size |
| Active indicator color | `--md-sys-color-primary` |

Features:
- **Determinate**: Arc fills clockwise
- **Indeterminate**: Rotating + growing/shrinking arc
- **Four-color**: Same color cycling as linear

## Properties

| Property | Type | Default | Applies To |
|----------|------|---------|------------|
| `value` | number | 0 | Both |
| `max` | number | 1 | Both |
| `indeterminate` | boolean | false | Both |
| `fourColor` | boolean | false | Both |
| `buffer` | number | 0 | Linear only |

## Accessibility

- Support `aria-label` for descriptive naming
- Determinate: announces progress percentage
- Indeterminate: announces loading state
