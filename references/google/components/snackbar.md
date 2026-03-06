# Snackbar — Google Material Design 3

## Dimensions

| Property | Value |
|----------|-------|
| Min width | Content-determined |
| Max width | Content-determined (typically < 600dp) |
| Shape | `--md-sys-shape-corner-extra-small` (4dp) |
| Padding | 16dp horizontal, 14dp vertical |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-inverse-surface` |
| Text | `--md-sys-color-inverse-on-surface` |
| Action button | `--md-sys-color-inverse-primary` |

## Typography

- Message text: `body-medium` (14sp)
- Action: text button style, `label-large`

## Behavior

- Position: bottom center of screen, 8dp from bottom
- Duration: 4-10 seconds auto-dismiss
- Dismiss: swipe or auto-timeout
- Single line preferred; two lines maximum
- Action button: one optional text button
- Close icon: optional X for longer snackbars

## Stacking

- Only one snackbar visible at a time
- New snackbar replaces existing one
- Queue subsequent messages

## Key Rules

- Short, single-line text preferred
- One optional action button (never "dismiss" — use close icon instead)
- Don't block critical UI elements (FAB, bottom nav)
- Swipe to dismiss on mobile
- Not for critical actions (use dialog instead)
