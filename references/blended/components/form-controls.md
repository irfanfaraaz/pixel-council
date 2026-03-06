# Form Controls — Blended Recommendation

Covers: checkbox, radio, slider, select/dropdown.

---

## Checkbox

| Property | Value |
|----------|-------|
| Size | 18-20px (visual), 40-44px (touch target) |
| Border | 2px solid on-surface-variant (unchecked) |
| Checked | Brand-color fill, white checkmark |
| Border radius | 4px |
| Indeterminate | Brand-color fill, white dash |
| Transition | background-color 150ms, transform 100ms |
| Hover | Border color darkens |
| Focus | 2px ring |
| Disabled | 40% opacity |
| Label | 14-16px, 8px gap from checkbox |

---

## Radio Button

| Property | Value |
|----------|-------|
| Outer circle | 20px, 2px border |
| Inner dot (selected) | 8-10px, brand-color |
| Unselected border | on-surface-variant |
| Selected | brand-color border + dot |
| Touch target | 40-44px |
| Transition | inner dot scale 0→1, 150ms ease-out |
| Label | 14-16px, 8px gap |
| Group spacing | Vertical stack, 8-12px between items |

---

## Slider

| Property | Value |
|----------|-------|
| Track height | 4-6px |
| Active track | Brand color |
| Inactive track | gray-200 |
| Handle | 20-24px circle, white, subtle shadow |
| Handle border | 1px gray-200 or none with shadow |
| Border radius | 9999px (track and handle) |
| Hover | Handle scale(1.1) |
| Active | Handle scale(1.15), brand-color ring |
| Focus | 2px ring around handle |
| Disabled | 40% opacity |
| Tooltip | Show value above handle on drag |

---

## Select / Dropdown

| Property | Value |
|----------|-------|
| Height | 44-48px (mobile), 36-40px (desktop) |
| Border | 1px solid outline, 2px on focus |
| Border radius | 8-10px |
| Padding | 12-16px horizontal |
| Trailing icon | Chevron down, 20px |
| Typography | 16px body |
| Label | Above field or floating |

**Dropdown menu:**
| Property | Value |
|----------|-------|
| Background | Surface/white |
| Border radius | 8-12px |
| Shadow | `0 4px 16px rgba(0,0,0,0.12)` |
| Item height | 36-40px |
| Item padding | 8-12px horizontal |
| Selected | Brand-color-10% background, checkmark |
| Max height | 300px with scroll |
