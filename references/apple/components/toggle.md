# Toggle / Switch — Apple Human Interface Guidelines

> Source: [apple-hig/components/toggles](https://github.com/6639835/apple-hig/blob/main/components/toggles/README.md)

## Definition

Lets people choose between a pair of opposing states (on/off) using distinct visual appearance for each state.

## Dimensions

| Platform | Size |
|----------|------|
| iOS | ~51x31pt track, ~27pt handle |

## Visual Style

- **Track (off)**: Gray fill
- **Track (on)**: Green (default), customizable tint color
- **Handle**: White circle
- **Animation**: Spring-based handle slide between positions

## States

| State | Visual |
|-------|--------|
| Off | Gray track, handle at left |
| On | Green/tint track, handle at right |
| Disabled | Reduced opacity |

## Key Rule: State Must Be Obvious

"Make sure the visual differences in a toggle's state are obvious" — use color fills, shape changes, or inner details like checkmarks. **Never rely solely on color** for accessibility.

## Platform-Specific

### iOS/iPadOS
- Switch style **restricted to list rows only**
- Default green; customization allowed with sufficient contrast
- Outside lists: use toggle-behavior buttons with background highlighting

### macOS
- Supports switches, checkboxes, and radio buttons
- Switches for emphasized settings
- Checkboxes for hierarchical settings
- Mini switches available for grouped forms with consistent row heights
- Use in window bodies, not toolbars/status bars

## Accessibility

- Visual state must communicate beyond color alone
- Include shape changes or icons (checkmark) for colorblind users
- Screen reader announces on/off state
