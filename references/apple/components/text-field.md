# Text Field — Apple Human Interface Guidelines

> Source: [apple-hig/components/text-fields](https://github.com/6639835/apple-hig/blob/main/components/text-fields/README.md)

## Definition

A rectangular area for entering or editing small, specific pieces of text. Use text views for larger content.

## Dimensions

| Platform | Height | Typography |
|----------|--------|------------|
| iOS/iPadOS | ~36-44pt | SF Pro Body (17pt) |
| macOS | ~22-28pt | SF Pro Body (13pt) |

## Visual Style

- Rounded rectangle container
- Corner radius: ~10pt continuous corners
- Padding: ~12-16pt horizontal
- Placeholder text in lighter system color, disappears on input
- Separate visible label recommended above or beside field

## Features

### Clear Button (iOS/iPadOS)
- Trailing X button for quick text erasure
- Appears when field has content

### Leading/Trailing Content
- Leading end: indicates field purpose (icon, symbol)
- Trailing end: additional features (bookmarks button, etc.)

### Keyboard Types
- Show appropriate keyboard: email, number, phone, URL, search
- Use number formatters for numeric data (auto-configure decimals, currency)

### Text Handling
- Default: clips text beyond bounds
- Options: wrap at character/word level
- Truncation: ellipsis at beginning, middle, or end
- Expansion tooltip on hover showing full text (macOS)

## Validation

- Validate contextually: email on field exit, password before transition
- Alert users entering invalid characters in restricted fields
- Provide clear error messaging

## Secure Entry

- Always use secure text fields for passwords
- Characters replaced with dots
- SwiftUI: `SecureField`

## Layout Rules

- Match field size to expected content length
- Stack multiple fields vertically with consistent widths
- Space evenly so label associations are clear
- Maintain consistent visual alignment

## Platform-Specific

| Platform | Notes |
|----------|-------|
| iOS/iPadOS | Clear button, custom leading/trailing content |
| macOS | Combo boxes (text + dropdown) available |
| watchOS | Present only when necessary; prefer option lists |
| tvOS/visionOS | Minimize text entry; prefer alternatives |

## Accessibility

- Proper labeling for screen readers
- Support Dynamic Type text scaling
- Sufficient contrast between placeholder and background
