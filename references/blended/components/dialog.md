# Dialog / Modal — Blended Recommendation

## Dimensions

| Property | Value | Origin |
|----------|-------|--------|
| Width | 320-480px (mobile: 90vw max 400px) | Google 280-560dp + Apple 270pt |
| Border radius | 16-24px | Google extra-large 28dp |
| Background | Surface color | Both |
| Padding | 24px | Google 24dp |
| Shadow | `0 16px 48px rgba(0,0,0,0.15)` | — |

## Overlay/Scrim

```css
.overlay {
  background: rgba(0, 0, 0, 0.4);
  backdrop-filter: blur(4px);
}
```

## Animation

```css
/* Open */
.dialog-enter {
  opacity: 0; transform: translateY(8px);
}
.dialog-enter-active {
  opacity: 1; transform: translateY(0);
  transition: all 200ms ease-out;
}

/* Close */
.dialog-exit-active {
  opacity: 0; transform: translateY(8px);
  transition: all 150ms ease-in;
}
```

## Content Structure

| Element | Typography |
|---------|-----------|
| Title | 18-20px, weight 600, on-surface |
| Content | 14-16px, on-surface-variant |
| Actions | Right-aligned row, 8-12px gap |

**Action buttons:**
- Primary action: filled button
- Secondary: text or outlined button
- Destructive: red text button

## Behavior

- Focus trap: tab cycles within dialog
- Close: Escape key, overlay click (unless destructive decision)
- Return focus to trigger element on close

## Accessibility

```html
<div role="dialog" aria-modal="true" aria-labelledby="dialog-title">
```
