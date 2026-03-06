# Miscellaneous Components — Blended Recommendation

Covers: badge, tooltip, divider, empty state, segmented control, sheet/bottom sheet, FAB.

---

## Badge

| Property | Value |
|----------|-------|
| Dot | 8px circle, red-500 |
| Count | Min-width 18px, height 18px, padding 0 5px, border-radius 9999px |
| Background | red-500 |
| Text | White, 10-11px, weight 600 |
| Position | absolute, top -4px, right -4px |
| Border | 2px solid background color (separation) |
| Max value | "99+" for counts > 99 |

---

## Tooltip

| Property | Value |
|----------|-------|
| Background | gray-900 |
| Text | White, 12-13px |
| Padding | 6-8px 10-12px |
| Border radius | 6px |
| Max width | 240px |
| Shadow | `0 2px 8px rgba(0,0,0,0.15)` |
| Delay | 500ms hover |
| Animation | opacity 0→1, 100ms ease-out |
| Position | Auto (prefer top) |
| Z-index | 70 |

---

## Divider

| Property | Value |
|----------|-------|
| Height | 1px |
| Color | outline-variant (gray-200 light, gray-700 dark) |
| Inset | 16px from leading (in lists, align with text start) |
| Margin | 0 (full width) or 16px horizontal (section) |

---

## Empty State

| Property | Value |
|----------|-------|
| Layout | Centered, max-width 320px |
| Icon/Illustration | 64-120px, muted color |
| Title | 18-20px, weight 600, on-surface |
| Description | 14-16px, on-surface-variant, centered, max 2 lines |
| CTA | Primary button, 16-24px below description |
| Padding | 48px vertical minimum |

---

## Segmented Control

| Property | Value |
|----------|-------|
| Height | 32-40px |
| Container background | gray-200 |
| Container border radius | 8-10px |
| Container padding | 2-4px |
| Segment label | 13-14px, weight 500, centered |
| Active indicator | White bg, shadow, weight 600 |
| Inactive | Transparent, on-surface-variant text |
| Indicator animation | Slide 200ms ease-in-out |

---

## Bottom Sheet

| Property | Value |
|----------|-------|
| Top border radius | 16-24px |
| Background | Surface color |
| Shadow | `0 -4px 20px rgba(0,0,0,0.1)` |
| Max height | 90vh |
| Drag handle | 36x5px, gray-300, centered, 12px from top, 3px radius |
| Detents | Peek (25-30%), half (50%), full (90%) |
| Animation | Slide up 300ms ease-in-out |
| Overlay (modal) | rgba(0,0,0,0.4) |
| Header padding | 16px |
| Content padding | 16-20px |

---

## FAB (Floating Action Button)

| Property | Value |
|----------|-------|
| Size | 56px default, 40px mini |
| Icon | 24px |
| Border radius | 16px or 50% |
| Background | Brand color or surface-container-high |
| Shadow | `0 4px 12px rgba(0,0,0,0.15)` |
| Position | Fixed bottom-right, 16-24px from edges |
| Z-index | 40 |
| Hover | Shadow increase, translateY(-2px) |
| Active | Shadow decrease, translateY(0) |
| Extended | Icon + label, 12px gap, 20px horizontal padding |
| Scroll behavior | Hide on scroll down, show on scroll up |
