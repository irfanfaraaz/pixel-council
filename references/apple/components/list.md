# Lists and Tables — Apple Human Interface Guidelines

> Source: [apple-hig/components/lists-and-tables](https://github.com/6639835/apple-hig/blob/main/components/lists-and-tables/README.md)

## List Styles

| Style | Appearance | Use Case |
|-------|-----------|----------|
| Plain | Full-width rows, no visual grouping | Simple lists, feeds |
| Grouped | Rounded sections on gray background | Settings-style forms |
| Inset Grouped | Inset rounded sections with margin | Settings, grouped content |

## Row Specs

| Property | Value |
|----------|-------|
| Standard row height | 44pt |
| With subtitle | Taller (content-determined) |
| With image | Taller (content-determined) |
| Separator | Inset from leading edge, aligned to text start |

## Row Accessories

| Accessory | Position | Purpose |
|-----------|----------|---------|
| Disclosure indicator (chevron) | Trailing | Drill-down navigation |
| Detail disclosure (info button) | Trailing | Reveal row details (not navigation) |
| Checkmark | Trailing | Selection indicator |
| Switch/Toggle | Trailing | On/off setting |
| Reorder control | Trailing | Drag to reorder |
| Delete button | Leading (edit mode) | Remove row |

## Swipe Actions

- Leading swipe: custom actions (pin, flag)
- Trailing swipe: delete (red), archive, etc.
- Colored backgrounds indicate action type

## Interaction Patterns

- **Navigation**: Persistent highlighting while showing detail
- **Selection**: Brief highlighting for option selection
- **Alphabetic index**: Trailing edge for long lists (don't pair with disclosure indicators)
- **Pull-to-refresh**: Hidden by default, triggered by pull-down gesture

## Platform-Specific

| Platform | Notes |
|----------|-------|
| macOS | Column sorting via header click; alternating row colors; outline views with disclosure triangles |
| tvOS | Account for row enlargement on focus; avoid custom corner masks near rows |
| watchOS | Limit row count; constrain detail view heights |

## Key Rules

1. Prefer text in lists for scannable content
2. Use succinct item text to minimize truncation
3. Apply title-case column headings
4. Let people edit/reorder when it makes sense
5. Use info buttons only for details, not navigation
6. Disclosure indicators for hierarchical drill-down only
