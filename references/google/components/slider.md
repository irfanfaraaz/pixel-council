# Slider — Google Material Design 3

> Source: [material-web/docs/components/slider.md](https://github.com/material-components/material-web/blob/main/docs/components/slider.md)

## Variants

| Type | Behavior |
|------|----------|
| Continuous | Any value in range |
| Discrete | Specific step values, optional tick marks |
| Range | Two handles for min/max selection |

## Dimensions & Color Tokens

| Element | Token / Value |
|---------|---------------|
| Active track color | `--md-slider-active-track-color` → `primary` |
| Active track shape | `corner-full` |
| Inactive track color | `--md-slider-inactive-track-color` → `surface-container-highest` |
| Inactive track shape | `corner-full` |
| Handle color | `--md-slider-handle-color` → `primary` |
| Handle shape | `corner-full` (circular) |
| Handle size | 20dp |
| Track height | 4dp |

## Properties

| Property | Type | Default |
|----------|------|---------|
| `min` | number | 0 |
| `max` | number | 100 |
| `value` | number | — |
| `valueStart` | number | — (range) |
| `valueEnd` | number | — (range) |
| `step` | number | 1 |
| `labeled` | boolean | false |
| `ticks` | boolean | false |
| `range` | boolean | false |

## Features

- **Value labels**: Appear above handle on drag when `labeled` is true
- **Tick marks**: Visual indicators at each step when `ticks` is true
- **Range mode**: Two handles for selecting a range
