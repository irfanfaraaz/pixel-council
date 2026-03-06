# Sheet — Apple Human Interface Guidelines

> Source: [apple-hig/components/sheets](https://github.com/6639835/apple-hig/blob/main/components/sheets/README.md)

## Types

| Type | Interaction with Parent | Platforms |
|------|------------------------|-----------|
| Modal (default) | Blocks parent until dismissed | All |
| Nonmodal | Parent remains interactive | iOS/iPadOS only |

## Presentation Styles

| Platform | Style |
|----------|-------|
| iOS/iPadOS | Slides up from bottom; page or form sheet sizing |
| macOS | Cardlike, rounded corners, floats above parent window |
| visionOS | Floats centered in field of view, dims parent |
| watchOS | Full-screen, slides over content with semitransparent material |

## Detents (iOS/iPadOS)

| Detent | Height | Default |
|--------|--------|---------|
| Large | Fully expanded | Supported by default |
| Medium | ~Half expanded height | Optional, enables progressive disclosure |

Combining both allows users to cycle by dragging or tapping the grabber.

## Key Elements

### Grabber
- Shows sheet is resizable via drag
- Tapping cycles through detents
- Works with VoiceOver

### Button Placement
| Platform | Done/Dismiss | Cancel |
|----------|-------------|--------|
| iOS/iPadOS | Top-right | Top-left (reversed for multi-step with Back) |
| macOS | Bottom trailing corner | Bottom, before Done |

## Dismiss Behavior

- Users expect vertical swipe to dismiss
- Unsaved changes: trigger confirmation via action sheet
- Avoid button-only dismissal — swipe should always work

## Key Rules

1. Use for simple, scoped tasks only
2. Display one sheet at a time from main interface
3. Consider alternatives (full-screen, separate windows) for complex workflows
4. Support medium detent on iPhone for content preview
5. In visionOS: center sheets, don't emerge from bottom edge
