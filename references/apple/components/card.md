# Card — Apple Human Interface Guidelines

Apple doesn't define a formal "Card" component, but cards are widely used in iOS/macOS through collection views and custom containers.

## Visual Style

- Continuous corner radius (squircle): ~13pt
- Background: system background color (white light, elevated dark)
- Shadow: subtle or none — modern Apple design trends toward flat
- Content padding: ~16pt
- Border: none typically — differentiation through background color

## Usage Contexts

- **Collection views**: Grid layouts of card-style items
- **Grouped lists**: Inset grouped style creates card-like sections
- **App Store / News**: Card-based content browsing
- **Widgets**: Card-shaped containers with specific corner radius per size

## States

- Default: resting appearance
- Highlighted: slight scale or opacity change on press
- Selected: accent color border or background tint

## Key Patterns

1. Cards contain related content about a single subject
2. Full-bleed images at top, text content below
3. Consistent spacing between cards in grids
4. Continuous corners (not standard border-radius — squircle shape)
5. Content adapts to card width
6. Shadow used sparingly, prefer background color differentiation
