# Text Field — Blended Recommendation

> Best-of-both from Google Material Design 3 and Apple HIG.

## Dimensions

| Property | Value | Origin |
|----------|-------|--------|
| Height (mobile) | 44-48px | Apple 44pt target + Google 56dp reduced |
| Height (desktop) | 36-40px | Apple macOS sizing |
| Horizontal padding | 12-16px | Both systems |
| Border | 1px solid, 2px on focus | Google outlined variant |
| Border radius | 8-10px | Apple continuous corners |
| Background | Transparent or very subtle fill | Apple preference |
| Input typography | 16px body | Google body-large |
| Label typography | 12-13px | Google body-small |
| Helper text | 12px, 4px below field | Google supporting text |

## Label Placement

| Approach | When | Origin |
|----------|------|--------|
| Above field | Clearest, always visible | Apple preference |
| Floating | Space-efficient, familiar | Google Material |
| Placeholder only | Last resort, not recommended | — |

## States (CSS implementation)

```css
.input {
  transition: border-color 150ms ease-out, box-shadow 150ms ease-out;
}

/* Default */
.input { border: 1px solid var(--color-outline); /* gray-300 */ }

/* Hover */
.input:hover { border-color: var(--color-outline-dark); /* gray-400 */ }

/* Focus */
.input:focus {
  border-color: var(--color-primary);
  border-width: 2px;
  box-shadow: 0 0 0 3px var(--color-primary-10); /* subtle ring */
}

/* Error */
.input[aria-invalid="true"] {
  border-color: var(--color-error);
}
.input-error-text { color: var(--color-error); font-size: 12px; }

/* Disabled */
.input:disabled {
  background: var(--color-surface-dim);
  opacity: 0.4;
}
```

## Features

- **Required indicator**: Red asterisk or "(required)" text
- **Helper text**: Below field, lighter color, 12px
- **Error text**: Replaces helper text, red color
- **Character count**: Right-aligned below field
- **Clear button**: X at trailing end (Apple pattern)
- **Leading/trailing icons**: For purpose indication or actions
- **Keyboard type**: Match input type (email, number, phone, URL)

## Rules

1. Every input must have a visible label or aria-label
2. Match field width to expected content length
3. Stack fields vertically with consistent widths
4. Validate contextually (email on blur, password on submit)
5. Error messages must be specific ("Enter a valid email" not "Invalid")
