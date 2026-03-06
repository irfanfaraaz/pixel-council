# List — Blended Recommendation

## Item Heights

| Density | Height |
|---------|--------|
| Compact | 40px |
| Standard | 48-56px |
| With subtitle | 64-72px |
| With image | 72-80px |

## Layout

| Element | Value |
|---------|-------|
| Padding | 16px horizontal |
| Leading icon/avatar | 24px icon or 40px avatar, 12-16px gap |
| Trailing | icon (20px), text, switch, or chevron |
| Separator | 1px solid outline-variant, inset left (aligned to text start) |

## Typography

| Element | Style |
|---------|-------|
| Label | 16px, on-surface |
| Subtitle | 14px, on-surface-variant |
| Trailing text | 14px, on-surface-variant |

## States

```css
.list-item:hover { background: var(--surface-container-high); }
.list-item:active { background: var(--surface-container-highest); }
.list-item[aria-selected="true"] { background: var(--color-primary-10); }
```

## Grouped Style

- Section border-radius: 8-12px
- Section background: surface-container
- Section header: 12-13px, uppercase or weight 600, on-surface-variant
- Section footer: 12px, on-surface-variant (helper text)

## Swipe Actions

- Reveal on horizontal drag
- Red background = delete
- Blue/green background = archive/pin
- Actions auto-close on release
