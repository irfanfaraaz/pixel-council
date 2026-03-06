# Card — Blended Recommendation

## Dimensions

| Property | Value | Origin |
|----------|-------|--------|
| Border radius | 12-16px | Google medium (12dp) + Apple ~13pt |
| Padding | 16-20px | Both systems |
| Background | Surface color | Google surface token |
| Border | 1px solid outline-variant OR subtle shadow | Google outlined variant |

## Shadow (when used)

```css
/* Subtle, realistic — don't combine shadow AND border */
box-shadow: 0 1px 3px rgba(0,0,0,0.08), 0 1px 2px rgba(0,0,0,0.06);
```

## Content Structure

```
┌──────────────────────────────┐
│  Media (full-bleed or padded)│
├──────────────────────────────┤
│  Title: 16-18px, weight 600 │
│  Description: 14px, lighter │
├──────────────────────────────┤
│  Actions (optional)          │
└──────────────────────────────┘
```

## Interactive Card States

```css
.card:hover {
  box-shadow: 0 4px 12px rgba(0,0,0,0.1);
  transform: translateY(-1px);
}
.card:focus-visible { outline: 2px solid var(--color-primary); outline-offset: 2px; }
.card:active { transform: scale(0.99); box-shadow: var(--shadow-xs); }
```

## Rules

1. Use shadow OR border, not both — stay consistent across all cards
2. Related cards in a grid use identical border-radius
3. Content padding is consistent within all cards
4. Prefer tonal elevation (background color shift) for modern feel
