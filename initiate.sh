#!/bin/bash
# Filename: initiate.sh
# Script to set up the Urbalurba Presentation System

echo "🚀 Initiating Urbalurba Presentation System..."

# Check if we're in the right location
if [ ! -f "urbalurba-present/template-settings.md" ]; then
    echo "❌ Error: urbalurba-present folder not found or missing template-settings.md"
    echo "   Please run this script from the directory containing the urbalurba-present folder"
    exit 1
fi

# Copy template settings to project root
echo "📄 Copying template-settings.md..."
cp urbalurba-present/template-settings.md .

# Create empty presentation input file
echo "📝 Creating presentation-input.md..."
cat > presentation-input.md << 'EOF'
# My Presentation Ideas

## Main Topics
- Add your main presentation topics here
- Key messages you want to convey
- Important statistics or data points

## Call to Action
- What do you want your audience to do?
- Next steps for engagement

## Notes
- Additional context or supporting information
- References or sources
- Speaker notes or reminders
EOF

# Set up VS Code settings
echo "⚙️  Setting up VS Code configuration..."
if [ ! -d ".vscode" ]; then
    mkdir -p .vscode
    cp urbalurba-present/.vscode/settings.json .vscode/
    echo "✅ VS Code settings copied"
else
    echo "⚠️  .vscode folder exists. Checking for Marp settings..."
    if ! grep -q "markdown.marp" .vscode/settings.json 2>/dev/null; then
        echo "📋 Adding Marp settings to existing VS Code configuration..."
        # Backup existing settings
        cp .vscode/settings.json .vscode/settings.json.backup
        
        # Merge Marp settings (simple approach - append Marp settings)
        python3 -c "
import json
import sys

# Read existing settings
try:
    with open('.vscode/settings.json', 'r') as f:
        existing = json.load(f)
except:
    existing = {}

# Read Marp settings
try:
    with open('urbalurba-present/.vscode/settings.json', 'r') as f:
        marp_settings = json.load(f)
except:
    print('Error reading Marp settings')
    sys.exit(1)

# Merge settings (Marp settings override existing)
existing.update(marp_settings)

# Write merged settings
with open('.vscode/settings.json', 'w') as f:
    json.dump(existing, f, indent=2)

print('Marp settings merged successfully')
" 2>/dev/null || {
            echo "⚠️  Python3 not available for automatic merge. Please manually copy Marp settings from urbalurba-present/.vscode/settings.json"
        }
    else
        echo "✅ Marp settings already present"
    fi
fi

echo ""
echo "🎉 Setup complete! Your project is ready."
echo ""
echo "📁 Files created:"
echo "   ├── template-settings.md (configure your organization)"
echo "   ├── presentation-input.md (add your content here)"
echo "   └── .vscode/settings.json (VS Code configuration)"
echo ""
echo "🚀 Next steps:"
echo "   1. Edit template-settings.md with your organization's details"
echo "   2. Add your presentation content to presentation-input.md"
echo "   3. Run: claude code"
echo "   4. Tell Claude: 'Please read and follow urbalurba-present/ai-instructions.md'"
echo ""
echo "📚 For detailed instructions, see: https://github.com/terchris/urbalurba-present/blob/main/howto/howto.md"