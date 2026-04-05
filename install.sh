#!/bin/bash
# Install Pixel Council for Claude Code

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
MARKETPLACE="$SCRIPT_DIR/.claude-plugin/marketplace.json"

# Auto-bump patch version in marketplace.json
if [ -f "$MARKETPLACE" ]; then
  OLD_VER=$(grep -o '"version": "[^"]*"' "$MARKETPLACE" | head -1 | grep -o '[0-9]*\.[0-9]*\.[0-9]*')
  if [ -n "$OLD_VER" ]; then
    MAJOR=$(echo "$OLD_VER" | cut -d. -f1)
    MINOR=$(echo "$OLD_VER" | cut -d. -f2)
    PATCH=$(echo "$OLD_VER" | cut -d. -f3)
    NEW_VER="$MAJOR.$MINOR.$((PATCH + 1))"
    sed -i '' "s/\"version\": \"$OLD_VER\"/\"version\": \"$NEW_VER\"/" "$MARKETPLACE"
  fi
fi

REF_COUNT=$(find "$SCRIPT_DIR/skills/pixel-council/references" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')

echo ""
echo "  Pixel Council Installer ($REF_COUNT reference files)"
echo "  ─────────────────────────────────────────────"
echo ""
echo "  How would you like to install?"
echo ""
echo "  1) Plugin  — install via Claude Code's plugin marketplace"
echo "              Run these commands in the Claude Code terminal:"
echo "              /plugin marketplace add blinkz-ai/pixel-council"
echo "              /plugin install pixel-council"
echo "              /reload-plugins"
echo ""
echo "  2) Skill   — install locally to ~/.agents/skills/"
echo "              Copies files directly — always available, no plugin system needed"
echo ""
printf "  Choose [1/2]: "
read -r choice

case "$choice" in
  1)
    echo ""
    echo "  Plugin Install"
    echo "  ──────────────"
    echo ""
    echo "  Run these 3 commands inside Claude Code:"
    echo ""
    echo "    1. /plugin marketplace add blinkz-ai/pixel-council"
    echo "    2. /plugin install pixel-council"
    echo "    3. /reload-plugins"
    echo ""
    echo "  To verify, run /plugin and check the Installed tab."
    echo "  The skill will be available as /pixel-council"
    echo ""
    echo "  To update later:"
    echo "    /plugin → Marketplaces → Update marketplace"
    echo ""
    echo "  To uninstall:"
    echo "    /plugin marketplace remove blinkz-ai/pixel-council"
    echo ""
    ;;

  2)
    SKILL_DIR="$HOME/.agents/skills/pixel-council"
    CLAUDE_SKILLS="$HOME/.claude/skills"
    CLAUDE_AGENTS="$HOME/.claude/agents"

    echo ""
    echo "  Installing skill + agent..."

    # Create directories
    mkdir -p "$SKILL_DIR"
    mkdir -p "$CLAUDE_SKILLS"
    mkdir -p "$CLAUDE_AGENTS"

    # Copy skill file and references
    cp "$SCRIPT_DIR/skills/pixel-council/SKILL.md" "$SKILL_DIR/SKILL.md"
    rm -rf "$SKILL_DIR/references"
    cp -r "$SCRIPT_DIR/skills/pixel-council/references" "$SKILL_DIR/"

    # Copy composition guides
    for f in composition-principles.md theme-implementation.md; do
      [ -f "$SCRIPT_DIR/skills/pixel-council/$f" ] && cp "$SCRIPT_DIR/skills/pixel-council/$f" "$SKILL_DIR/"
    done

    # Copy agent
    cp "$SCRIPT_DIR/agents/ui-reviewer.md" "$CLAUDE_AGENTS/"

    # Create symlink
    rm -f "$CLAUDE_SKILLS/pixel-council"
    ln -s "../../.agents/skills/pixel-council" "$CLAUDE_SKILLS/pixel-council"

    INSTALLED_COUNT=$(find "$SKILL_DIR/references" -name "*.md" | wc -l | tr -d ' ')

    echo ""
    echo "  Installed:"
    echo "    Skill:       $SKILL_DIR/SKILL.md"
    echo "    References:  $SKILL_DIR/references/ ($INSTALLED_COUNT files)"
    echo "    Agent:       $CLAUDE_AGENTS/ui-reviewer.md"
    echo "    Symlink:     $CLAUDE_SKILLS/pixel-council"
    echo ""
    echo "  Restart Claude Code, then type /skills to verify."
    echo "  Use /pixel-council or just ask Claude to build any UI."
    echo ""
    ;;

  *)
    echo ""
    echo "  Invalid choice. Run ./install.sh again."
    echo ""
    exit 1
    ;;
esac
