# Apple Human Interface Guidelines - Design System Reference

> Source: [apple-hig](https://github.com/6639835/apple-hig) - 117 documents, 874 images

## Core Design Philosophy

Apple's design language emphasizes **clarity**, **consistency**, and **user-centric experiences**. Every element should be purposeful, accessible, and feel native to the platform. Apple prioritizes:

- **Deference** - UI helps people understand and interact with content, never competing with it
- **Clarity** - Text is legible, icons are precise, adornments are subtle, function drives design
- **Depth** - Visual layers and realistic motion communicate hierarchy and facilitate understanding

---

## Color System

### Philosophy
Use color judiciously to enhance communication and evoke brand identity. Colors must work across light/dark modes, varied lighting conditions, and accessibility settings.

### Semantic Color Roles

**Text & Labels (iOS/iPadOS):**
| Color | Purpose |
|-------|---------|
| Label (Primary) | Main text content |
| Label (Secondary) | Supplementary text |
| Label (Tertiary) | Disabled or less important text |
| Label (Quaternary) | Watermark-level text |
| Placeholder Text | Input field hints |
| Link | Tappable text |

**Backgrounds (iOS/iPadOS):**
| Set | Levels | Purpose |
|-----|--------|---------|
| System | Primary, Secondary, Tertiary | Standard content hierarchy |
| Grouped | Primary, Secondary, Tertiary | Grouped/inset list hierarchy |

**System Colors:**
| Color | Light | Dark | Purpose |
|-------|-------|------|---------|
| Blue | #007AFF | #0A84FF | Links, interactive elements |
| Green | #34C759 | #30D158 | Success, positive states |
| Red | #FF3B30 | #FF453A | Errors, destructive actions |
| Orange | #FF9500 | #FF9F0A | Warnings |
| Yellow | #FFCC00 | #FFD60A | Caution, highlights |
| Purple | #AF52DE | #BF5AF2 | Accent |
| Pink | #FF2D55 | #FF375F | Accent |
| Indigo | #5856D6 | #5E5CE6 | Accent |
| Teal | #5AC8FA | #64D2FF | Accent |
| Gray | #8E8E93 | #8E8E93 | Neutral |

### Dark Mode
- Never hard-code color values; use semantic/dynamic colors
- System automatically adjusts dynamic colors across appearance modes
- Maintain proper contrast in both light and dark contexts
- Use darker backgrounds with lighter foreground content in dark mode
- Four material levels: ultrathin, thin, regular, thick

### Accessibility Color Requirements
- WCAG Level AA: 4.5:1 ratio for text under 18pt; 3:1 for larger/bold text
- Never convey information through color alone
- Support high-contrast mode
- Consider cultural color associations

---

## Typography System

### System Fonts
- **SF Pro** - Default for iOS, iPadOS, macOS, tvOS
- **SF Compact** - Default for watchOS
- **New York** - Serif option for reading-focused content

### Type Scale (iOS/iPadOS - Default "Large" size)

| Style | Size | Weight | Leading |
|-------|------|--------|---------|
| Large Title | 34pt | Regular | 41pt |
| Title 1 | 28pt | Regular | 34pt |
| Title 2 | 22pt | Regular | 28pt |
| Title 3 | 20pt | Regular | 25pt |
| Headline | 17pt | Semibold | 22pt |
| Body | 17pt | Regular | 22pt |
| Callout | 16pt | Regular | 21pt |
| Subheadline | 15pt | Regular | 20pt |
| Footnote | 13pt | Regular | 18pt |
| Caption 1 | 12pt | Regular | 16pt |
| Caption 2 | 11pt | Regular | 13pt |

### macOS Type Scale
| Style | Size | Weight |
|-------|------|--------|
| Large Title | 26pt | Regular |
| Title 1 | 22pt | Regular |
| Title 2 | 17pt | Regular |
| Title 3 | 15pt | Regular |
| Headline | 13pt | Bold |
| Body | 13pt | Regular |
| Callout | 12pt | Regular |
| Subheadline | 11pt | Regular |
| Footnote | 10pt | Regular |
| Caption 1 | 10pt | Regular |
| Caption 2 | 10pt | Medium |

### Dynamic Type
- iOS/iPadOS support sizes from xSmall through xxxLarge, plus five accessibility sizes (AX1-AX5)
- Maintain consistent information hierarchy regardless of font size
- Use built-in text styles for automatic Dynamic Type support

### Typography Rules
- Prefer Regular, Medium, Semibold, or Bold weights (avoid Light)
- Minimize the number of typefaces used
- For custom fonts, ensure they implement accessibility features matching Dynamic Type
- Support Bold Text accessibility feature

---

## Layout System

### Core Principles
1. **Group related items** using negative space, background shapes, or separators
2. **Make essential info discoverable** - avoid crowded layouts
3. **Extend content to fill** screens while respecting safe areas
4. **Differentiate controls from content** using visual layers
5. **Position items to convey importance** - critical content near top/leading edges
6. **Align components** to improve scannability

### Spacing & Touch Targets

**Minimum Control Sizes:**
| Platform | Size |
|----------|------|
| iOS/iPadOS | 44x44pt (minimum tappable), 28x28pt (visual minimum) |
| macOS | 20x20pt |
| tvOS | 56x56pt |
| visionOS | 60pt between interactive centers |

**Padding Guidelines:**
- ~12pt padding around bezeled elements
- ~24pt for borderless controls
- Safe area insets for notch/Dynamic Island/home indicator

### Responsive Design
- Support portrait and landscape orientations
- Test on multiple device sizes
- Support Dynamic Type text scaling
- Handle right-to-left layouts for internationalization
- Avoid full-width buttons; respect system margins
- Use Auto Layout / SwiftUI layout modifiers for adaptation

### Safe Areas
- Respect system-defined safe areas (notch, home indicator, camera housing)
- Never place interactive content under system UI
- Use layout guides for proper positioning

---

## Motion & Animation

### Core Principles
1. **Purposeful** - "Add motion purposefully, supporting the experience without overshadowing it"
2. **Optional** - Respect "Reduce Motion" accessibility setting
3. **Realistic** - Follow user gestures logically (slide down to appear = slide down to dismiss)
4. **Brief & Precise** - Short animations feel lightweight and unobtrusive
5. **Cancellable** - Let users interrupt animations
6. **Restrained** - Don't add extra animation to frequent interactions

### Animation Timing
- Use spring-based animations for natural feel
- Keep transitions under 300ms for responsiveness
- Use ease-in-out for most transitions
- Stagger animations for lists (subtle, not dramatic)

---

## Materials & Visual Layers

### Liquid Glass (Modern Apple)
- Creates a distinct functional layer for controls and navigation
- Floats above content, allowing background to peek through
- Two variants: **Regular** (blurs + adjusts luminosity) and **Clear** (highly translucent)
- Use for navigation bars, tab bars, sidebars - NOT content layers
- Use sparingly to avoid distracting from content

### Standard Materials
- Four iOS/iPadOS material levels: ultrathin, thin, regular, thick
- Choose based on semantic meaning, not apparent color
- Thicker materials = better contrast; thinner = more context
- Use system-defined vibrant colors on top of materials

### Visual Hierarchy
| Layer | Content |
|-------|---------|
| Background | App background, wallpaper |
| Base | Primary content surface |
| Elevated | Cards, sheets, raised surfaces |
| Overlay | Navigation bars, tab bars, toolbars |
| Modal | Dialogs, popovers, action sheets |

---

## Accessibility

### Core Pillars
1. **Intuitive** - Familiar, consistent interactions
2. **Perceivable** - Information through multiple modalities
3. **Adaptable** - Responds to user preferences and assistive tech

### Requirements
- Support VoiceOver with proper labeling
- Support Dynamic Type (200% text enlargement minimum)
- Meet WCAG AA contrast ratios
- Never rely on color alone for information
- Provide alternatives to complex gestures
- Support Full Keyboard Access
- Respect Reduce Motion preference
- Minimum control sizes (44x44pt on iOS)
- Double confirmation for destructive actions

---

## Components Reference

### Input & Actions
- **Buttons** (bordered, borderless, prominent, destructive)
- **Segmented Controls** (2-5 segments)
- **Toggles/Switches**
- **Sliders** (continuous, discrete)
- **Steppers**
- **Text Fields** (rounded, plain)
- **Pickers** (date, time, value)

### Navigation
- **Tab Bar** (bottom, 3-5 tabs)
- **Sidebar** (iPad/Mac, collapsible)
- **Navigation Bar** (top, back button, title)
- **Toolbar** (bottom action bar)
- **Search Bar**

### Content
- **Lists/Tables** (plain, inset, grouped)
- **Cards** (rounded corners, subtle shadow)
- **Collection Views** (grid layouts)
- **Scroll Views** (content scrolling)

### Feedback
- **Alerts** (critical decisions)
- **Action Sheets** (contextual options)
- **Progress Indicators** (bar, spinner)
- **Activity Indicators** (loading spinners)
- **Banners/Toasts**

### Presentation
- **Sheets** (bottom sheet, half-sheet)
- **Popovers** (iPad/Mac contextual popups)
- **Modals** (full-screen or card-style)

---

## Key Design Patterns

### iOS Navigation Patterns
1. **Flat** - Tab-based, equal importance sections
2. **Hierarchical** - Drill-down, detail views
3. **Content-driven** - Content determines navigation

### Onboarding
- Keep it brief and skippable
- Show value immediately
- Use progressive disclosure
- Request permissions in context, not upfront

### Settings
- In-app settings for frequent adjustments
- System Settings for infrequent configuration
- Use grouped lists with clear labels

### Loading States
- Show progress indicators for operations > 1 second
- Use skeleton screens for initial content loads
- Maintain interactive elements during background loads
