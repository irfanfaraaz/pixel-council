# Badge — Google Material Design 3

## Variants

| Type | Size | Content |
|------|------|---------|
| Small (dot) | 6dp circle | None |
| Large (count) | 16dp min height | Number text |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-error` |
| Text | `--md-sys-color-on-error` |

## Typography

- Count text: `label-small` (11sp)

## Positioning

- Top-right corner of parent icon
- Overlaps parent element
- Small dot: centered on top-right
- Large count: right-aligned, slight overlap

## Key Rules

- Use to indicate unread counts, notifications, or status
- Small dot for boolean status (has/hasn't)
- Large badge for numeric counts
- Max displayed value: "999+" or similar cap
