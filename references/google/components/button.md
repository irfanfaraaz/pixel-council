# Button — Google Material Design 3

> Source: [material-web/docs/components/button.md](https://github.com/material-components/material-web/blob/main/docs/components/button.md)

## Variants (5 levels of emphasis)

| Variant | Container Color | Text Color | Border | Shape | Use Case |
|---------|----------------|------------|--------|-------|----------|
| Filled | `--md-sys-color-primary` | `--md-sys-color-on-primary` | None | `corner-full` | Primary CTA, highest emphasis |
| Filled Tonal | `--md-sys-color-secondary-container` | `--md-sys-color-on-secondary-container` | None | `corner-full` | Important but not primary |
| Elevated | `--md-sys-color-surface` | `--md-sys-color-on-surface` | None + shadow | `corner-full` | Needs separation from surface |
| Outlined | Transparent | `--md-sys-color-primary` | `--md-sys-color-outline` 1px | `corner-full` | Medium emphasis, secondary |
| Text | Transparent | `--md-sys-color-primary` | None | `corner-full` | Lowest emphasis, inline |

## Dimensions

| Property | Value |
|----------|-------|
| Height | 40dp |
| Horizontal padding (text only) | 24dp |
| Horizontal padding (with icon) | 16dp leading, 24dp trailing |
| Icon size | 18dp |
| Icon-to-label gap | 8dp |
| Min width | 48dp |
| Typography | `label-large` (14sp, weight 500) |

## State Layers

Interactive overlay applied on top of the container color:

| State | Opacity | Additional Effect |
|-------|---------|-------------------|
| Enabled | 0% | — |
| Hover | 8% of content color | Cursor pointer |
| Focus | 10% of content color | Focus ring visible |
| Pressed | 10% of content color | Ripple animation from touch point |
| Dragged | 16% of content color | — |
| Disabled | Container 12% opacity, content 38% opacity | No pointer events |

## Ripple Effect

- Circular expansion from touch/click point
- Fills entire container
- Fades out after release
- Duration: ~300ms
- Color: matches content color at state layer opacity

## CSS Custom Properties

```css
/* Filled Button */
--md-filled-button-container-color
--md-filled-button-container-shape
--md-filled-button-label-text-font
--md-filled-button-label-text-color

/* Outlined Button */
--md-outlined-button-outline-color
--md-outlined-button-outline-width
--md-outlined-button-container-shape
--md-outlined-button-label-text-color

/* Text Button */
--md-text-button-label-text-color
--md-text-button-label-text-font

/* Tonal Button */
--md-filled-tonal-button-container-color
--md-filled-tonal-button-label-text-color

/* Elevated Button */
--md-elevated-button-container-color
--md-elevated-button-label-text-color
```

## Accessibility

- Buttons require visible label text or `aria-label`
- `disabled` attribute prevents interaction and announces disabled state
- `soft-disabled` keeps button focusable (for toolbar contexts)
- Focus ring follows `--md-sys-shape-corner-full`

## Key Rules

- Use Filled for the single most important action on screen
- Use Tonal as a middle ground between Filled and Outlined
- Use Outlined for important but secondary actions
- Use Text for the least important actions, often paired with other buttons
- Use Elevated when button needs visual separation from a patterned background
- All variants share the same height and typography
