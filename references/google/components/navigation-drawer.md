# Navigation Drawer (Sidebar) — Google Material Design 3

## Types

| Type | Width | Behavior |
|------|-------|----------|
| Standard | 256-360dp | Side-by-side with content |
| Modal | 360dp | Overlays content with scrim |
| Navigation Rail | 80dp | Compact, icons only or icons + labels |

## Dimensions

| Property | Value |
|----------|-------|
| Width (drawer) | 360dp max |
| Width (rail) | 80dp |
| Item height | 56dp |
| Item padding | 12dp left, 24dp right |
| Icon size | 24dp |
| Active indicator | Full item width, `corner-full` (28dp radius) |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface-container-low` |
| Active indicator | `--md-sys-color-secondary-container` |
| Active icon | `--md-sys-color-on-secondary-container` |
| Active label | `--md-sys-color-on-secondary-container` |
| Inactive icon | `--md-sys-color-on-surface-variant` |
| Inactive label | `--md-sys-color-on-surface-variant` |
| Section header | `--md-sys-color-on-surface-variant` |
| Divider | `--md-sys-color-outline-variant` |
| Scrim (modal) | `--md-sys-color-scrim` at 32% opacity |

## Typography

| Element | Token |
|---------|-------|
| Item label | `label-large` (14sp, weight 500) |
| Section header | `title-small` (14sp, weight 500) |
| Badge count | `label-large` |

## Navigation Rail

- Width: 80dp
- FAB position: top of rail (optional)
- Items: icon (24dp) + optional label below
- 3-7 destinations
- Active indicator: 56x32dp pill

## Key Rules

- Standard drawer: for apps with 5+ destinations, on larger screens
- Modal drawer: when content needs full width, drawer appears on demand
- Rail: tablet/desktop, when sidebar is too wide
- Group related destinations with section headers and dividers
- Active indicator animates to follow selected item
