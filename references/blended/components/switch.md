# Switch / Toggle — Blended Recommendation

## Dimensions

| Property | Value | Origin |
|----------|-------|--------|
| Track width | 44-52px | Google 52dp / Apple ~51pt |
| Track height | 24-28px | Google 32dp / Apple ~31pt |
| Handle size | 20-24px circle | Both |
| Handle color | White | Apple preference |
| Border radius | 9999px (fully rounded) | Both |

## Colors

| State | Track | Handle |
|-------|-------|--------|
| Off | gray-300 | White, at left |
| On | Brand color | White, at right |
| Disabled | 40% opacity on all | Same positions |

## Animation

```css
.switch-handle {
  transition: transform 200ms cubic-bezier(0.4, 0, 0.2, 1),
              background-color 200ms;
}
.switch-track {
  transition: background-color 200ms;
}
```

## States

- **Hover**: Subtle shadow on handle
- **Focus**: 2px ring around track
- **Disabled**: 40% opacity entire component
- **Pressed**: Handle grows slightly (Google pattern, optional)

## Accessibility

```html
<button role="switch" aria-checked="true|false">
```
