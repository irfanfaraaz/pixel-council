# Segmented Control — Apple Human Interface Guidelines

> Source: [apple-hig/components/segmented-controls](https://github.com/6639835/apple-hig/blob/main/components/segmented-controls/README.md)

## Definition

A linear set of two or more segments, each functioning as a button. All segments typically have equal width.

## Dimensions

| Property | Value |
|----------|-------|
| Segments | 2-5 (up to 7 on wide screens) |
| iPhone max | ~5 segments |
| Width | Equal per segment within control |
| Shape | Pill/capsule overall container |

## Selection Modes

| Mode | Behavior | Platform |
|------|----------|----------|
| Single selection | One segment active at a time | All |
| Multiple selection | Multiple segments can be active | macOS |
| Momentary | Functions as action buttons, no persistent state | macOS (e.g., Reply/Reply All/Forward) |
| Focus-based | Segments selected when focus moves to them | tvOS |

## Content

- Text labels OR images (never mix within one control)
- Title-case capitalization for labels
- Use nouns/noun phrases
- Optional text labels beneath control
- Maintain similar content sizing across segments

## Visual Style

- Container: pill/capsule shape with subtle background
- Selected indicator: sliding highlight that animates between segments
- Active: white/light background indicator, darker text
- Inactive: transparent, lighter text
- Animation: indicator slides horizontally to follow selection

## Platform-Specific

| Platform | Notes |
|----------|-------|
| iOS/iPadOS | Switch between closely related subviews; prefer tab bars for app sections |
| macOS | Toolbars/inspector panes; spring loading with Magic Trackpad |
| tvOS | Avoid nearby focusable elements; consider split views for filtering |
| visionOS | Icon-based controls show tooltips on gaze |
| watchOS | Not supported |

## Key Rules

1. Use for switching between closely related content views
2. Prefer tab bars for separate app sections
3. Keep segment count manageable (2-5)
4. Equal-width segments for visual balance
5. Don't use for unrelated actions — use buttons instead
