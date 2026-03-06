# Tabs — Google Material Design 3

> Source: [material-web/docs/components/tabs.md](https://github.com/material-components/material-web/blob/main/docs/components/tabs.md)

## Variants

| Type | Placement | Active Indicator | Use Case |
|------|-----------|-----------------|----------|
| Primary | Top of content, under app bar | Label-width bar, 3dp, bottom | Main content destinations |
| Secondary | Within content area | Full-width bar, bottom | Separate related content |

## Dimensions

| Property | Value |
|----------|-------|
| Height (text only) | 48dp |
| Height (text + icon) | 64dp |
| Min tab width | 90dp |
| Icon size | 24dp |
| Active indicator height | 3dp |

## Color Tokens

**Primary Tabs:**
| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface` |
| Active indicator | `--md-sys-color-primary` |
| Active label | `--md-sys-color-on-surface` |
| Inactive label | `--md-sys-color-on-surface-variant` |
| Active icon | `--md-sys-color-on-surface` |
| Inactive icon | `--md-sys-color-on-surface-variant` |

**Secondary Tabs:** Same structure with `--md-secondary-tab-*` prefix.

## Typography

- Label: `--md-sys-typescale-title-small` (14sp, weight 500)

## Icon Modes

1. **Stacked** (default primary): Icon above label
2. **Inline**: `inline-icon` attribute, icon beside label
3. **Icon-only**: No text, requires `aria-label`

## Interaction

- `auto-activate`: Auto-selects tab on focus (keyboard navigation)
- `change` event fires on tab switch with `activeTabIndex` info
- `scrollToTab()` method for scrollable tab bars

## Accessibility

- Container needs `aria-label`
- Icon-only tabs need individual `aria-label`
- Tab panels need `role="tabpanel"` with `aria-labelledby`
- Each tab needs `aria-controls` pointing to its panel
