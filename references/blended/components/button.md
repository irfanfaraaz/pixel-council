# Button — Blended Recommendation

> Best-of-both from Google Material Design 3 and Apple HIG.

## Dimensions

| Property | Value | Origin |
|----------|-------|--------|
| Height | 40-44px | Google 40dp + Apple 44pt touch target |
| Horizontal padding | 20-24px | Google 24dp |
| Min touch target | 44x44px | Apple HIG |
| Icon size | 18-20px | Google 18dp |
| Icon-to-label gap | 8px | Google 8dp |
| Typography | 14px, weight 500-600 | Google label-large |
| Corner radius | 8-12px (rectangular) or 9999px (pill) | Apple ~12pt |

## Emphasis Hierarchy

| Level | Background | Text | Border | When |
|-------|-----------|------|--------|------|
| Primary | Brand color | White | None | Main CTA, 1 per screen |
| Secondary | Brand 10-15% tint | Brand color | None | Important secondary |
| Outline | Transparent | Brand color | 1px gray | Tertiary actions |
| Ghost/Text | Transparent | Brand color | None | Least important, inline |
| Destructive | Red or transparent | Red or white | Optional red | Delete, remove |

## States (CSS implementation)

```css
.button {
  /* Base */
  transition: all 150ms ease-out;
  cursor: pointer;
}

/* Hover (desktop only) */
.button:hover {
  background-color: /* 8-10% darker/lighter */;
  box-shadow: 0 1px 3px rgba(0,0,0,0.1);
}

/* Focus (keyboard) */
.button:focus-visible {
  outline: 2px solid var(--color-primary);
  outline-offset: 2px;
}

/* Active/Pressed */
.button:active {
  transform: scale(0.97);
  /* or 10% darker background */
}

/* Disabled */
.button:disabled {
  opacity: 0.4;
  pointer-events: none;
  cursor: not-allowed;
}

/* Loading */
.button[data-loading] {
  pointer-events: none;
  /* spinner replaces or appears beside text */
}
```

## Rules

1. One primary button per screen/section (Apple + Google agree)
2. Never make destructive actions primary/prominent
3. Use style for emphasis, not size differences
4. Always include press state for responsiveness
5. Title-case labels, start with action verbs
6. Transition: 150ms ease-out for all state changes
