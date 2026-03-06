# Pixel Council

A Claude Code skill that summons the design wisdom of Apple, Google, Stripe, IBM, and Microsoft to produce production-grade UI.

## Project Structure

```
pixel-council/
├── CLAUDE.md                              # This file
├── README.md                              # Installation & usage docs
├── install.sh                             # One-command installer
├── skill/
│   └── SKILL.md                           # The skill prompt (installed to ~/.agents/skills/)
└── references/
    ├── google/                            # Google Material Design 3 (isolated)
    │   ├── overview.md
    │   └── components/                    # 22 per-component spec files
    ├── apple/                             # Apple HIG (isolated)
    │   ├── overview.md
    │   └── components/                    # 13 per-component spec files
    └── blended/                           # Best-of-both defaults
        ├── design-principles.md
        └── components/                    # 12 blended recommendation files
```

## How it works

Each company's design system is **fully isolated** in its own directory. The agent navigates to the right company + component based on user preference.

Adding a new company = just a new folder under `references/`. No skill code changes needed.
