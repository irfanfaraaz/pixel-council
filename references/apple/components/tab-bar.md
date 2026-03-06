# Tab Bar — Apple Human Interface Guidelines

> Source: [apple-hig/components/tab-bars](https://github.com/6639835/apple-hig/blob/main/components/tab-bars/README.md)

## Dimensions

| Platform | Height | Position |
|----------|--------|----------|
| iOS | ~49pt | Bottom, floating on Liquid Glass |
| iPadOS | Variable | Near top, fixed or convertible to sidebar |
| tvOS | 68pt | 46pt from screen top (not modifiable) |
| visionOS | Variable | Fixed, vertical, leading side of window |

## Content

### Icons
- Use SF Symbols (filled variant for selected state)
- Icons adapt to compact/regular size classes:
  - Compact: icons above labels
  - Regular: icons beside labels
- Custom icons: reference Apple Design Resources for dimensions

### Labels
- Single words whenever possible
- Short for visionOS (readable at a glance)
- Below or beside icons depending on orientation

## Item Count

- Recommended: 3-5 tabs
- Overflow: "More" tab (iOS/iPadOS), fade effect (tvOS)
- iPadOS: default max 5 for optimal view continuity
- Scrollable if content exceeds visible space (tvOS)

## Styling

### Badge
- Red oval, white text (number or exclamation)
- Reserve for critical information only
- Indicates new/updated section content

### Colors
- Active: tint/accent color for icon and label
- Inactive: system gray
- Avoid similar colors between tab labels and content backgrounds
- Follow Liquid Glass color guidance

### Background
- iOS: Liquid Glass material (translucent blur)
- tvOS: customizable tint, color, or image; translucent by default
- tvOS selected: opaque with drop shadow during focus

## Platform Behaviors

| Platform | Behavior |
|----------|----------|
| iOS | Minimizable with accessories (Music MiniPlayer); slides out on scroll; distinct search item option |
| iPadOS | Optional sidebar conversion via button; customizable by user |
| tvOS | Scrollable; pinned with split views; Menu button returns focus |
| visionOS | Symbol + text required; expands/collapses with gaze detection |

## Key Rules

1. Tab bar must remain visible during section navigation
2. Never disable or hide tabs even when content unavailable
3. Always show empty state explanations for unavailable content
4. Preserve navigation state within each section
5. Use for top-level app sections, not content filtering (use segmented control for that)
