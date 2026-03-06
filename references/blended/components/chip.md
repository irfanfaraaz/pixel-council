# Chip / Tag — Blended Recommendation

## Dimensions

| Property | Value |
|----------|-------|
| Height | 28-32px |
| Padding | 8-12px horizontal |
| Border radius | 6-8px or 9999px (pill) |
| Border | 1px solid outline |
| Background | Transparent (default) |
| Typography | 12-13px, weight 500 |
| Icon (optional) | 16-18px, 4-6px gap to label |

## States

| State | Style |
|-------|-------|
| Default | Outlined, transparent background |
| Selected | Brand-color-10% background, brand-color text, brand-color border |
| Hover | Surface-container-high background |
| Disabled | 40% opacity |

## Remove Button

- 16px X icon at trailing edge
- 4px gap from label
- Independent hover state

## Variants

| Type | Behavior |
|------|----------|
| Filter | Toggle on/off, checkmark when selected |
| Input | User-generated, always removable |
| Suggestion | Single-use, disappears after selection |
| Action | Triggers an action (like a compact button) |

## Accessibility

- Focus: 2px ring
- Chip sets: `role="toolbar"` or `role="listbox"` with `aria-label`
