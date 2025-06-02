# Urbalurba Presentation Template

Professional presentation template for creating great presentations using Marp framework.

## 🚀 Quick Install

Run this command in any directory to download and set up the template:

```bash
curl -L $(curl -s https://api.github.com/repos/terchris/urbalurba-present/releases/latest | grep "browser_download_url.*urbalurba-present.zip" | cut -d '"' -f 4) -o urbalurba-present.zip && unzip urbalurba-present.zip -d urbalurba-present && rm urbalurba-present.zip && echo "✅ Template installed in urbalurba-present/ folder"
```

## 📋 What You Get

The `urbalurba-present/` folder contains:

- **`red-cross-template.md`** - Master template with all design patterns
- **`red-cross-theme.css`** - Norwegian Red Cross visual theme  
- **`red-cross-design-guide.md`** - Documentation and content limits
- **`README.md`** - This usage guide

## 🎯 Getting Started

1. **Create your presentation:**
   ```bash
   # Create your own markdown file in your project root
   touch my-presentation.md
   ```

2. **Write your content using the design patterns:**
   - Reference `urbalurba-present/red-cross-template.md` for available patterns
   - Follow content limits in `urbalurba-present/red-cross-design-guide.md`
   - Use design tags: `<!-- @design: pattern-name -->`

3. **Generate HTML/PDF:**
   ```bash
   marp my-presentation.md --theme urbalurba-present/red-cross-theme.css -o my-presentation.html
   marp my-presentation.md --theme urbalurba-present/red-cross-theme.css --pdf
   ```

## 🤖 For LLMs

The `red-cross-template.md` contains examples of all design patterns with structured comments:

```markdown
<!-- @design: design-title -->
<!-- @slide: slide-title-example -->
<!-- _class: title -->

# Your Title Here
## Subtitle
```

LLMs should:
1. **Reference the template** for design pattern structure
2. **Follow content limits** from `red-cross-design-guide.md`
3. **Use proper design tags** for each slide
4. **Create original content** following the documented patterns

## 📖 Example Usage

```bash
# Install template anywhere
curl -L $(curl -s https://api.github.com/repos/terchris/urbalurba-present/releases/latest | grep "browser_download_url.*urbalurba-present.zip" | cut -d '"' -f 4) -o urbalurba-present.zip && unzip urbalurba-present.zip -d urbalurba-present && rm urbalurba-present.zip

# Create your presentation
touch my-quarterly-report.md

# Write content using design patterns (reference urbalurba-present/red-cross-template.md)
# Generate presentation
marp my-quarterly-report.md --theme urbalurba-present/red-cross-theme.css -o my-quarterly-report.html
```

## Design Patterns Available:

- `design-title` - Title slides with logo
- `design-agenda` - Simple lists and agendas  
- `design-section-divider` - Section break slides
- `design-columns` - Two-column layouts
- `design-columns-with-callout` - Columns with statistics
- `design-header-then-columns` - Content above, columns below
- `design-image-left-content-right` - Image/text splits
- `design-image-right-content-left` - Text/image splits  
- `design-background-image-overlay` - Content over background image
- `design-grid-with-highlight` - Action grids with callouts
- `design-content-then-image` - Text above, image below
- `design-code-snippet` - Technical code examples
- `design-diagram` - Mermaid diagrams and flowcharts
- `design-metrics-grid` - Dashboard-style metrics
- `design-quote` - Centered quotes and key messages

## 📚 Documentation

See `urbalurba-present/red-cross-design-guide.md` for:
- Content limits for each design pattern
- Word counts and bullet point guidelines  
- Best practices for professional presentations
- Examples and usage guidelines

## 🛠️ Requirements

### Marp CLI (Command Line)
```bash
npm install -g @marp-team/marp-cli
```

### VS Code Setup (Optional)
1. **Install Marp Extension:**
   - Open VS Code Extensions (`Cmd+Shift+X`)
   - Search for "Marp for VS Code" 
   - Install the extension by Marp Team

2. **Copy VS Code Configuration:**
   ```bash
   # Copy the VS Code settings to your project root
   cp -r urbalurba-present/.vscode .
   ```

3. **Using in VS Code:**
   - Open VS Code from your project root: `code .`
   - Open any `.md` file with `marp: true` in frontmatter
   - Use Command Palette: "Marp: Export Slide Deck"
   - Preview slides with "Marp: Show Quick Pick of Marp Commands"

Perfect for creating professional presentations across all Red Cross departments!

---

*Template created by Urbalurba for Norwegian Red Cross presentation standardization.*