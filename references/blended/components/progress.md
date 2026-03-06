# Progress Indicators — Blended Recommendation

## Linear Progress Bar

| Property | Value |
|----------|-------|
| Height | 4px |
| Track color | gray-200 (light), gray-700 (dark) |
| Fill color | Brand color |
| Border radius | 2px |
| Indeterminate animation | Sliding gradient 1.5s infinite |

## Circular Progress

| Property | Value |
|----------|-------|
| Size | 40-48px |
| Stroke width | 3-4px |
| Track | Transparent or gray-200 |
| Fill | Brand color |
| Animation | rotate 1.5s linear infinite + dasharray |

## Spinner (Small)

| Property | Value |
|----------|-------|
| Size | 16-24px |
| Color | on-surface-variant or brand color |
| Animation | rotate 0.8s linear infinite |

## Skeleton Loading

```css
.skeleton {
  background: var(--color-surface-container);
  background-image: linear-gradient(
    90deg, transparent, rgba(255,255,255,0.4), transparent
  );
  background-size: 200% 100%;
  animation: shimmer 1.5s ease-in-out infinite;
  border-radius: 4px; /* match content shape */
}

@keyframes shimmer {
  0% { background-position: 200% 0; }
  100% { background-position: -200% 0; }
}
```

Skeleton shapes should match the content they replace:
- Text line: 12-16px height, varied widths (100%, 80%, 60%)
- Avatar: circle matching avatar size
- Image: rectangle matching aspect ratio
- Button: rounded rectangle matching button size

## Rules

1. Use determinate when duration is knowable
2. Keep animated — stationary = stalled
3. Don't switch between bar and circular mid-operation
4. Provide cancel/pause when feasible
