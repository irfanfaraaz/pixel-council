# Card — Google Material Design 3

## Variants

| Variant | Container | Elevation | Border | Use Case |
|---------|-----------|-----------|--------|----------|
| Elevated | `--md-sys-color-surface` | Level 1 (shadow) | None | Default, separated from surface |
| Filled | `--md-sys-color-surface-container-highest` | Level 0 | None | On surface-dim backgrounds |
| Outlined | `--md-sys-color-surface` | Level 0 | `outline-variant` 1px | Clear boundary needed |

## Dimensions

| Property | Value |
|----------|-------|
| Shape | `--md-sys-shape-corner-medium` (12dp) |
| Internal padding | 16dp |
| Height | Content-determined (no fixed height) |

## Typography

| Element | Token |
|---------|-------|
| Title | `--md-sys-typescale-title-medium` (16sp, weight 500) |
| Subhead | `--md-sys-typescale-body-medium` (14sp) |
| Supporting text | `--md-sys-typescale-body-medium` (14sp) |

## Interactive Cards

- Entire card surface is clickable
- State layer covers entire card container
- Hover: 8% state layer
- Focus: 10% state layer + focus ring
- Pressed: 10% state layer + ripple
- Dragged: 16% state layer

## Elevation Levels

| Variant | Shadow |
|---------|--------|
| Elevated | Level 1 — subtle shadow |
| Filled | Level 0 — no shadow, tonal differentiation |
| Outlined | Level 0 — border provides boundary |

## Key Rules

- Use Elevated when cards need to stand out from the base surface
- Use Filled on dimmer backgrounds where tonal shift creates contrast
- Use Outlined when a clear boundary is needed without elevation
- Cards should contain related content and actions about a single subject
- Actions go at the bottom of the card
