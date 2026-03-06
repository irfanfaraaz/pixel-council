# Progress Indicator — Apple Human Interface Guidelines

> Source: [apple-hig/components/progress-indicators](https://github.com/6639835/apple-hig/blob/main/components/progress-indicators/README.md)

## Types

| Type | Shape | Mode | Use Case |
|------|-------|------|----------|
| Progress Bar | Linear track | Determinate | File conversion, downloads |
| Circular Progress | Circular track | Determinate | Compact spaces |
| Activity Indicator (Spinner) | Rotating segments | Indeterminate | Loading, background operations |
| Indeterminate Bar | Animated bar | Indeterminate | macOS only |

## Determinate vs. Indeterminate

| Mode | When to Use |
|------|------------|
| Determinate | Duration is knowable, show completion progress |
| Indeterminate | Duration unknown, show "working" state |

Switch from indeterminate to determinate when possible.

## Visual Style

- Default color: system tint (bars/circular), gray segments (spinner)
- watchOS: white default, customizable tint
- Consistent placement — don't move indicators around

## Best Practices

### Do
- Use determinate when duration is knowable
- Keep animated to signal active processing
- Supply Cancel/Pause buttons when feasible
- Switch from indeterminate to determinate when possible
- Implement automatic periodic refresh

### Don't
- Use stationary indicators (signals stalling)
- Switch between circular and bar styles mid-operation
- Use vague descriptions like "loading"
- Label spinners unnecessarily
- Rely only on manual refresh

## Platform Support

| Platform | Types Available |
|----------|---------------|
| iOS/iPadOS/visionOS | Bar, circular, spinner, pull-to-refresh |
| macOS | Bar, circular, spinner, indeterminate bar |
| watchOS | Bar, circular (white default) |

## Refresh Control

- Hidden by default
- Triggered by pull-down gesture (iOS/iPadOS)
- Implement automatic periodic refresh, don't rely on manual only
