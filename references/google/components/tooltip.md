# Tooltip — Google Material Design 3

## Variants

| Type | Use Case |
|------|----------|
| Plain | Brief description on hover/focus |
| Rich | Detailed info with title, text, optional actions |

## Dimensions

**Plain:**
| Property | Value |
|----------|-------|
| Max width | 200dp |
| Shape | `--md-sys-shape-corner-extra-small` (4dp) |
| Padding | 8dp horizontal, 4dp vertical |

**Rich:**
| Property | Value |
|----------|-------|
| Max width | 315dp |
| Shape | `--md-sys-shape-corner-medium` (12dp) |

## Color Tokens

**Plain:**
| Element | Token |
|---------|-------|
| Container | `--md-sys-color-inverse-surface` |
| Text | `--md-sys-color-inverse-on-surface` |

**Rich:**
| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface-container` |
| Title | `--md-sys-color-on-surface` |
| Text | `--md-sys-color-on-surface-variant` |

## Typography

- Plain text: `body-small` (12sp)
- Rich title: `title-small` (14sp)
- Rich body: `body-medium` (14sp)

## Behavior

- **Plain**: ~500ms hover delay, disappears on mouse leave
- **Rich**: Can persist for interaction, may contain links/actions
- Position: auto (prefers above, then below, then sides)
