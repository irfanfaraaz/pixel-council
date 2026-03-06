# Navigation — Blended Recommendation

Covers: top bar, bottom tabs, sidebar.

---

## Top Bar / App Bar

| Property | Value | Origin |
|----------|-------|--------|
| Height | 56-64px | Google 64dp / Apple 44pt + status |
| Background | Surface + `backdrop-filter: blur(12px)` | Apple Liquid Glass |
| Border bottom | 1px solid outline-variant (or none with blur) | — |
| Padding | 16px horizontal | Both |
| Title | 18-20px, weight 600 | Apple SF Pro headline |
| Leading | Back arrow or menu icon, 24px | Both |
| Trailing | Up to 3 icon buttons, 24px, 8px gap | Both |
| Position | `sticky; top: 0; z-index: 50` | — |

**Large title variant:** 32-34px bold, collapses on scroll (Apple pattern).
**On scroll:** Add subtle shadow or increase background opacity.

---

## Bottom Tab Bar (Mobile)

| Property | Value | Origin |
|----------|-------|--------|
| Height | 56-64px | Google 80dp reduced / Apple 49pt |
| Max items | 5 (3-4 preferred) | Both |
| Background | Surface + backdrop-blur OR solid | Apple Liquid Glass |
| Border top | 1px solid outline-variant | — |
| Padding | 4-8px vertical | — |

**Each tab item:**
| Property | Value |
|----------|-------|
| Icon | 24px, centered |
| Label | 10-12px, 4px below icon |
| Active color | Brand color (icon + label) |
| Inactive color | gray-500 |
| Tap area | Full width of (100% / item count), full height |

**Badge:** 6-18px red circle, white text, top-right of icon.
**Desktop:** Convert to sidebar or top nav.

---

## Sidebar (Desktop/Tablet)

| Property | Value | Origin |
|----------|-------|--------|
| Width (expanded) | 256-280px | Google 360dp reduced / Apple 240-320pt |
| Width (collapsed) | 64-72px | Google rail 80dp |
| Background | Surface-container-low or frosted glass | Google + Apple |
| Border right | 1px solid outline-variant | — |

**Sidebar items:**
| Property | Value |
|----------|-------|
| Height | 40-44px |
| Padding | 12px horizontal |
| Icon | 20-24px, 12px gap to label |
| Label (active) | 14px, weight 500, brand color |
| Label (inactive) | 14px, weight 400, on-surface-variant |
| Active bg | Brand color 10-15% opacity |
| Hover bg | Surface-container-high |
| Corner radius | 8px on active indicator |

**Section headers:** 12px uppercase, on-surface-variant, 24px top margin.
**Collapse animation:** 250ms ease-in-out width transition.
**Collapsed state:** Icons only with tooltip on hover.
