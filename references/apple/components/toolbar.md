# Toolbar — Apple Human Interface Guidelines

> Source: [apple-hig/components/toolbars](https://github.com/6639835/apple-hig/blob/main/components/toolbars/README.md)

## Placement

| Platform | Position |
|----------|----------|
| iOS | Top or bottom edge |
| iPadOS | Top, can combine with tab bars |
| macOS | Top of window |
| visionOS | Bottom edge, slightly in front of window |
| watchOS | Top corners or bottom; scrolling buttons hide until scroll-up |

## Content Zones

| Zone | Content |
|------|---------|
| Leading | Navigation, back buttons, sidebar toggles, document menus |
| Center | Common controls; customizable (macOS/iPadOS); collapses to overflow |
| Trailing | Important persistent items, search fields, More menu, primary actions (Done/Submit) |

## Visual Style

- "Reduce the use of toolbar backgrounds and tinted controls"
- System-provided toolbars handle coloring automatically
- Prefer monochromatic appearance over bright colors
- visionOS: variable blur for legibility during scroll

## Visibility

- macOS/iPadOS: automatic overflow menus when items don't fit
- Customizable toolbar arrangement (macOS/iPadOS)
- watchOS: scrolling buttons remain hidden until revealed
- Consider temporarily hiding for distraction-free experiences

## Platform-Specific

| Platform | Key Rules |
|----------|-----------|
| iOS | Large titles transition to standard on scroll; prioritize essential items |
| iPadOS | Can combine with tab bars; supports customization |
| macOS | Every toolbar item needs menu bar equivalent; no bezel styling |
| visionOS | Reveals text labels on hover; avoid vertical toolbars; prevent window sizing below toolbar width |
| watchOS | Top/bottom buttons; scrolling primary actions |

## Navigation Bar (iOS Top Bar)

| Configuration | Height | Title Size |
|---------------|--------|------------|
| Standard | 44pt | 17pt, centered or left-aligned |
| Large title | 96pt | 34pt bold, collapses to inline on scroll |

- Background: Liquid Glass material (translucent blur)
- Back button: chevron + previous view title
- Trailing: up to 2-3 bar button items
- Large titles: top-level/primary views only
- Standard titles: deep hierarchies
