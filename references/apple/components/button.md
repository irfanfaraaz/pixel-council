# Button — Apple Human Interface Guidelines

> Source: [apple-hig/components/buttons](https://github.com/6639835/apple-hig/blob/main/components/buttons/README.md)

## Core Attributes

Buttons combine three properties: **style** (visual appearance), **content** (symbols, text, or both), and **role** (semantic meaning).

## Styles

| Style | Appearance | Use Case |
|-------|-----------|----------|
| Bordered Prominent | Accent/tint color fill, white text | Primary CTA — limit 1-2 per view |
| Bordered | Gray/system material fill, label-color text | Standard actions |
| Borderless | No background, tint color text | Inline, low-emphasis |
| Destructive | System red text or red fill | Delete, remove, irreversible actions |

## Roles

| Role | Behavior |
|------|----------|
| Primary | Default button users most likely choose. Responds to Return key |
| Cancel | Cancels current action |
| Destructive | Data-loss actions — **never** make this the primary role |

## Dimensions

| Platform | Min Hit Region | Notes |
|----------|---------------|-------|
| iOS/iPadOS | 44x44pt | Minimum tappable area |
| macOS | 20x20pt | Pointer precision allows smaller |
| visionOS | 60x60pt | Eye-tracking requires larger targets |
| watchOS | Full-width preferred | Easier to tap |

**visionOS specific sizes:**
| Size | Height |
|------|--------|
| Mini | 28pt |
| Small | 32pt |
| Regular | 44pt |
| Large | 52pt |
| Extra Large | 64pt |

## Typography

- Labels: system font, body weight
- Prominent: Semibold weight
- Title-case capitalization
- Start with action verbs ("Add to Cart", "Save Changes")
- macOS push buttons: append ellipsis (…) when opening new windows/views

## Corner Radius

- Continuous corners (squircle, not standard CSS border-radius)
- Standard buttons: ~12pt continuous radius
- Capsule shape: fully rounded ends for icon+text buttons (visionOS)
- Circular: icon-only buttons (visionOS)

## States

| State | Visual Change |
|-------|--------------|
| Normal | Default appearance |
| Highlighted / Pressed | Slight opacity reduction (~0.7) or darker shade |
| Disabled | Reduced opacity (~0.3), no interaction |
| Selected (toggle) | Filled/inverted appearance |
| Focused (keyboard) | System focus ring |

**visionOS states:** Idle → Hover (subtle highlight) → Selected → Unavailable

## Platform-Specific Behavior

### iOS/iPadOS
- Activity indicator replaces button content during async operations
- Display alternative label alongside indicator ("Checking out…")

### macOS
- Push buttons: standard type, supports text/symbols/icons
- Square (gradient) buttons: symbol/icon-only, use within views
- Help buttons: circular question-mark, one per window max
- Image buttons: display images, behave as push/toggle/pop-up
- Spring loading support on Magic Trackpad

### watchOS
- All inline buttons use capsule shape with automatic material contrast
- Toolbar buttons: placed in corners, Liquid Glass appearance
- Full-width buttons preferred for primary actions
- Vertical stacks: same height for visual consistency

### visionOS
- Standard shapes: circle (icon), rounded rect (text), capsule (icon+text)
- No custom hover effects allowed
- Icon-only: tooltips on brief look
- Background: thin material on glass windows, glass material when floating
- White background + black content = reserved for toggled/selected state
- Spacing: centers 60pt apart minimum

## Accessibility

- Include visual space distinguishing buttons from surroundings
- Primary buttons respond to Return key
- Consider keyboard navigation for all button styles
- Button purpose must be clear from label alone

## Key Rules

1. Use prominent sparingly — max 1-2 per view to reduce cognitive load
2. Never assign primary role to destructive actions
3. Distinguish through style (visual prominence), not size
4. Always include press state for responsiveness feedback
5. Automatic view closure in sheets/alerts when primary button pressed
