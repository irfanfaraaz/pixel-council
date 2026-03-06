# Dialog — Google Material Design 3

> Source: [material-web/docs/components/dialog.md](https://github.com/material-components/material-web/blob/main/docs/components/dialog.md)

## Dimensions

| Property | Value |
|----------|-------|
| Min width | 280dp |
| Max width | 560dp |
| Padding | 24dp all sides |
| Shape | `--md-sys-shape-corner-extra-large` (28dp) |

## Color Tokens

| Element | Token |
|---------|-------|
| Container | `--md-sys-color-surface-container-high` |
| Headline text | `--md-sys-color-on-surface` |
| Supporting text | `--md-sys-color-on-surface-variant` |
| Scrim | `--md-sys-color-scrim` at 32% opacity |

## Typography

| Element | Token |
|---------|-------|
| Headline | `--md-sys-typescale-headline-small` (24sp) |
| Content | `--md-sys-typescale-body-medium` (14sp) |

## Structure (Slots)

- **headline**: Dialog title
- **content**: Main body content (scrollable)
- **actions**: Action buttons (right-aligned, text buttons, 8dp gap)

## Behavior

- **Focus trap**: Tab cycles within dialog by default
- `no-focus-trap` attribute disables trapping
- `autofocus` directs focus to specific child element
- **Escape** key or **scrim click** fires `cancel` event
- `show()` and `close()` methods return Promises (animation-aware)
- `quick` property skips open/close animations

## Animation

- Open: fade in + scale from ~90% to 100%, ~250ms
- Close: fade out + scale to ~90%, ~200ms
- Customizable via `getOpenAnimation()` / `getCloseAnimation()`

## Events

| Event | When |
|-------|------|
| `open` | Before open animation |
| `opened` | After open animation completes |
| `close` | Before close animation |
| `closed` | After close animation completes |
| `cancel` | Escape key or scrim click |

## Return Values

- Button `value` attributes populate `dialog.returnValue`
- Identifies which action closed the dialog

## Accessibility

- Labeled by headline content; use `aria-label` if no headline
- `type="alert"` sets ARIA alert dialog role
- Focus automatically moves into dialog on open
