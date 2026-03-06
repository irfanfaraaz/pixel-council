# List — Google Material Design 3

> Source: [material-web/docs/components/list.md](https://github.com/material-components/material-web/blob/main/docs/components/list.md)

## Item Types

| Type | Behavior | Use Case |
|------|----------|----------|
| Default (no type) | Static, non-interactive | Display-only items |
| `button` | Clickable, ripple effect | Interactive items |
| `link` | Navigational, supports `href` | Navigation items |

## Dimensions

| Property | Value |
|----------|-------|
| Single-line height | 56dp (implied) |
| Two-line height | 72dp |
| Three-line height | 88dp |
| Horizontal padding | 16dp |
| Leading icon | 18dp (24dp container) |
| Leading avatar | 40dp, circular |
| Leading image | 56x56dp |
| Trailing icon | 24dp |

## Content Slots

| Slot | Purpose |
|------|---------|
| `headline` | Primary text |
| `supporting-text` | Secondary descriptive text |
| `trailing-supporting-text` | Right-aligned text (counts, dates) |
| `start` | Leading icon, image, or avatar |
| `end` | Trailing icon or control |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface` |
| Label text | `--md-sys-color-on-surface` |
| Supporting text | `--md-sys-color-on-surface-variant` |
| Trailing text | `--md-sys-color-on-surface-variant` |
| Leading icon | `--md-sys-color-on-surface-variant` |
| Trailing icon | `--md-sys-color-on-surface-variant` |
| Avatar background | `--md-sys-color-primary-container` |
| Avatar label | `--md-sys-color-on-primary-container` |

## Typography

| Element | Token |
|---------|-------|
| Label | `label-large` |
| Supporting text | `body-medium` |
| Trailing text | `label-small` |
| Avatar label | `title-medium` |

## Shape

| Element | Token |
|---------|-------|
| Item container | `corner-none` (default) |
| Avatar | `corner-full` (circular) |
| Image | `corner-none` (customizable) |

## Image Dimensions

- Height: 56dp (customizable via `--md-list-item-leading-image-height`)
- Width: 56dp (customizable via `--md-list-item-leading-image-width`)

## Dividers

Use `<md-divider>` between items or sections for visual separation.

## Accessibility

- List: `role="list"`, `tabindex="-1"`
- Items: `role="listitem"`, `tabindex="0"`
- Interactive items get keyboard focus and state layers
