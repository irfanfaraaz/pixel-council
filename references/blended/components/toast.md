# Toast / Snackbar — Blended Recommendation

## Dimensions

| Property | Value |
|----------|-------|
| Background | gray-900 (inverted surface) |
| Text | White, 14px |
| Border radius | 8px |
| Padding | 14px 16px |
| Shadow | `0 4px 12px rgba(0,0,0,0.15)` |
| Position | Fixed bottom center, 24px from bottom |
| Max width | min(480px, 90vw) |
| Z-index | 60 |

## Content

- Message text: 14px, white
- Action button: brand-light color, weight 500, text style
- Close icon: optional X, 16px

## Behavior

- Duration: 4000-6000ms auto-dismiss
- Pause on hover (desktop)
- Stacking: newest on top, older shift up
- One at a time (queue subsequent)

## Animation

```css
/* Enter */
.toast-enter {
  transform: translateY(100%); opacity: 0;
}
.toast-enter-active {
  transform: translateY(0); opacity: 1;
  transition: all 250ms ease-out;
}

/* Exit */
.toast-exit-active {
  transform: translateY(100%); opacity: 0;
  transition: all 200ms ease-in;
}
```

## Rules

1. Short, single-line text preferred
2. One optional action (not "dismiss" — use close icon or auto-dismiss)
3. Don't block critical UI (FAB, bottom nav)
4. Not for critical decisions — use dialog
5. Swipeable on mobile
