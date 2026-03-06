# Menu — Google Material Design 3

> Source: [material-web/docs/components/menu.md](https://github.com/material-components/material-web/blob/main/docs/components/menu.md)

## Dimensions

| Property | Value |
|----------|-------|
| Min width | 112dp |
| Max width | 280dp |
| Item height | 48dp |
| Item horizontal padding | 12dp |
| Leading icon | 24dp |
| Trailing icon | 24dp |
| Shape | `--md-sys-shape-corner-extra-small` (4dp) |
| Elevation | Level 2 (shadow) |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface-container` |
| Item label | `--md-sys-color-on-surface` |
| Item icon | `--md-sys-color-on-surface-variant` |
| Divider | `--md-sys-color-outline-variant` |

## Typography

- Item label: `label-large` (14sp, weight 500)

## Positioning Strategies

| Strategy | Behavior |
|----------|----------|
| `absolute` (default) | Relative to `position: relative` ancestor |
| `popover` | Native Popover API, top-layer rendering |
| `fixed` | Relative to viewport |
| `document` | Relative to document |

## Submenu Behavior

- Parent menu needs `has-overflow` attribute
- Submenu has `item` slot (trigger) and `menu` slot (content)
- Anchor positioning via `menu-corner` and `anchor-corner` attributes

## Keyboard Navigation

- Arrow keys navigate between items
- Typeahead: typing characters jumps to matching item
- Enter/Space selects item
- Escape closes menu

## Key Attributes

| Attribute | Purpose |
|-----------|---------|
| `anchor` | ID of anchor element for positioning |
| `open` | Controls visibility |
| `positioning` | Positioning strategy |
| `has-overflow` | Required for submenus |

## Events

- `close-menu` custom event with `details` for close reason
- Item click/select events
