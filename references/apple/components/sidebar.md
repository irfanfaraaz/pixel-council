# Sidebar — Apple Human Interface Guidelines

> Source: [apple-hig/components/sidebars](https://github.com/6639835/apple-hig/blob/main/components/sidebars/README.md)

## Definition

Appears on the leading side of a view for navigation between app sections.

## Dimensions

| Platform | Width | Notes |
|----------|-------|-------|
| macOS | Configurable (small/medium/large row sizes) | Full sidebar support |
| iPadOS | Adaptive | Primary use case with adaptable styles |
| visionOS | Auto-expanding | Windows expand to accommodate |
| iOS | Generally avoided | Takes too much landscape space, unavailable in portrait |
| watchOS | Not supported | — |

## Visual Style

- **Background**: Liquid Glass material, floats above content
- **Selection**: Accent color highlight on selected row
- **Icons**: SF Symbols with automatic accent coloring
- **Row sizes** (macOS): Small, medium, large (affects row height, text, glyph size)

## Hierarchy

- **Max depth: 2 levels** — deeper hierarchies require split view with content lists
- Use disclosure controls for grouped content sections
- Group content to maintain manageable vertical space

## Content

- SF Symbols for item icons (avoid fixed icon colors — use platform accent)
- Succinct, descriptive labels
- Let users customize sidebar contents (choose areas, reorder)
- Custom symbols preferred over bitmap images

## Behaviors

### Show/Hide
| Platform | Method |
|----------|--------|
| iPadOS | Edge swipe gesture |
| macOS | Show/Hide button or View menu |
| visionOS | Rarely needed (auto-expand) |

**Never hide by default** — ensure discoverability.

### Content Behind Sidebar
- Content extends beneath via horizontal scrolling
- Or use background extension views mirroring adjacent content

## Key Rules

1. Max 2 hierarchy levels
2. Let people customize contents
3. Use succinct labels, omit unnecessary words
4. Don't place critical info at bottom (windows may cut off)
5. Avoid fixed icon colors — respect platform accent color
6. Available primarily on iPadOS, macOS, visionOS
