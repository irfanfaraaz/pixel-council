# Alert — Apple Human Interface Guidelines

## Definition

Alerts convey critical information and require user acknowledgment or decision.

## Dimensions

| Platform | Width |
|----------|-------|
| iOS | 270pt (fixed) |
| iPadOS | Wider, centered |
| macOS | Variable, centered in window |

## Visual Style

- Background: system material (blurred translucent)
- Corner radius: ~14pt continuous corners
- Title: SF Pro headline, bold, centered
- Message: SF Pro body, centered
- Scrim: dimmed background overlay

## Button Layout

| Count | Layout |
|-------|--------|
| 2 buttons | Stacked vertically (iOS) or side-by-side |
| 3 buttons | Stacked vertically |
| Destructive | Red text, positioned for visibility |
| Cancel | Always available, often bold |

## Rules

1. Use for critical decisions only — not routine information
2. Destructive actions always have cancel option
3. Destructive button in system red
4. Never stack more than one alert
5. Keep title and message concise
6. Use action sheets for non-critical choices
7. Title should be a question or clear statement
8. Button labels should be clear actions, not "Yes"/"No"
