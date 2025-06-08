# Urbalurba Presentation System

> *"Stop wasting time on how your presentation looks. Spend time on what you know - your subject."*

A presentation framework that transforms how you create professional presentations. **You focus on your expertise and content, AI handles all the design decisions and creates stunning presentations that follow best practices for conveying your message.**

## ✨ What This System Does

**Transforms presentation creation from complex design work to pure content focus:**

- 🤖 **AI Creates Your Presentation** - Just provide your content, AI handles all design decisions
- 🎨 **Best Practice Layouts Automatically Applied** - Proven patterns for maximum message impact
- 🏢 **Professional Branding Built-In** - Currently supports Norwegian Red Cross, expanding to more organizations
- 🚀 **15+ Presentation Patterns** - Title slides, data visualization, storytelling, technical content, and more  
- 📱 **Multiple Output Formats** - HTML, PDF, and PowerPoint presentations that work perfectly on any device
- 🧠 **Message-Focused Design** - Every layout optimized for clear communication and audience engagement
- 🤖 **AI Loves text** - AI is built into vscode and will help you write.
- 🔓 **presentation is not locked into a specific tool** - Just as in free speech, your text should not be locked into a proprietary format that someone else controls.

## 🎯 Key Benefits

- **🤖 AI Creates Your Presentation** → Just provide raw content, get polished slides following communication best practices
- **⚡ 95% Faster** → From idea to professional presentation in minutes, not hours  
- **🎨 No Design Skills Needed** → Focus on your message, AI handles all visual design decisions
- **🏢 Brand Compliance Built-In** → Every slide automatically follows organizational standards
- **📱 Modern Output** → HTML, PDF, and PowerPoint formats that work everywhere

## 🔧 How It Works

### Simple 4-Step Process:

1. **📝 You Provide Content** → Create `presentation-input.md` with your workshop notes, bullet points, or any raw text describing your presentation
2. **🤖 AI Creates Initial Structure** → AI reads your content + organization settings, generates `my-presentation.md` with suggested slide layouts and design patterns
3. **✏️ You Refine & Iterate** → Edit `my-presentation.md` like working in PowerPoint - modify content, reorder slides, adjust messaging. Export anytime to see results
4. **🎨 System Generates Output** → Convert to HTML, PDF, or PowerPoint with perfect branding and professional design

![howto/editing-presentation.png](https://github.com/terchris/urbalurba-present/raw/main/howto/editing-presentation.png)

### The Magic:
- **AI gives you a smart starting point** with optimal layouts for each content type (stats → data visualization, stories → image layouts, etc.)
- **You maintain full control** to edit, iterate, and perfect your presentation
- **Instant preview** by exporting during your editing process
- **Automatic brand compliance** using your organization's colors, fonts, and imagery built into every design pattern

**For detailed step-by-step instructions with screenshots, see the [complete how-to guide](https://github.com/terchris/urbalurba-present/blob/main/howto/howto.md).**

## 🚀 Quick Start

### 1. Install the System

**Mac/Linux:**
```bash
curl -L $(curl -s https://api.github.com/repos/terchris/urbalurba-present/releases/latest | grep "browser_download_url.*urbalurba-present.zip" | cut -d '"' -f 4) -o urbalurba-present.zip && unzip urbalurba-present.zip -d urbalurba-present && rm urbalurba-present.zip
```

**Windows (PowerShell):**
```powershell
$url = (Invoke-RestMethod "https://api.github.com/repos/terchris/urbalurba-present/releases/latest").assets | Where-Object {$_.name -eq "urbalurba-present.zip"} | Select-Object -ExpandProperty browser_download_url
Invoke-WebRequest -Uri $url -OutFile "urbalurba-present.zip"
Expand-Archive -Path "urbalurba-present.zip" -DestinationPath "." -Force
Remove-Item "urbalurba-present.zip"
```

**What you get:**
- `initiate.sh` - Automated setup script
- `template-settings.md` - Organization configuration template
- `ai-instructions.md` - Simple instructions for Claude Code
- `ai-design-template.md` - Detailed design patterns and specifications
- `themes/` - Multiple visual themes (Red Cross, CNN, DNB Bank, UN)
- `red-cross-example-presentation.md` - Complete working example

### 2. Initialize Your Project
```bash
# Run the setup script to copy files and configure VS Code
./urbalurba-present/initiate.sh
```

This script will:
- Copy `template-settings.md` to your project root
- Create a starter `presentation-input.md` file
- Set up VS Code settings for Marp

### 3. Open VS Code and Edit Your Files
```bash
# Open VS Code in your project
code .
```

**Edit these files in VS Code:**
- **`template-settings.md`** - Configure your organization (name, website, logo, theme)
- **`presentation-input.md`** - Add your presentation content and ideas

**Available themes to choose from:**
- `urbalurba-present/themes/red-cross-1-theme.css` (Humanitarian/NGO)
- `urbalurba-present/themes/cnn-theme.css` (Media/News)
- `urbalurba-present/themes/dnb-bank-theme.css` (Financial/Corporate)
- `urbalurba-present/themes/un-theme.css` (International/Diplomatic)

The `initiate.sh` script creates a starter file with this structure:
```markdown
# My Presentation Ideas

## Main Topics
- Add your main presentation topics here
- Key messages you want to convey
- Important statistics or data points

## Call to Action
- What do you want your audience to do?
- Next steps for engagement
```

### 4. AI Creates Initial Structure

```bash
claude code
````

At the prompt type:

```plaintext
Please read and follow urbalurba-present/ai-instructions.md
```

>Claude will automatically read your files and create my-presentation.md

### 5. Edit & Iterate Your Presentation

Edit `my-presentation.md` in VS Code to refine your presentation. You can:
- Modify content directly in the markdown file
- Reorder slides by moving sections around
- Adjust messaging and add details as needed
- Export to preview results (see the [howto guide](https://github.com/terchris/urbalurba-present/blob/main/howto/howto.md) for details)

## 🎨 Available Themes

Choose from professionally designed themes in the `themes/` folder:

| Theme | Organization | Best For | Key Features |
|-------|-------------|----------|--------------|
| **red-cross-1-theme.css** | Norwegian Red Cross | Humanitarian/NGO | Red & white colors, clean layout |
| **cnn-theme.css** | CNN News | Media/News | Bold typography, news-style layout |
| **dnb-bank-theme.css** | DNB Bank | Financial/Corporate | Professional blue, banking aesthetic |
| **un-theme.css** | United Nations | International/Diplomatic | UN blue, global organization style |

**To use a theme:** Update the `theme_file` setting in `template-settings.md` to point to your chosen theme (e.g., `urbalurba-present/themes/cnn-theme.css`).

## 📋 Available Design Patterns

| Pattern | Best For | Key Features |
|---------|----------|--------------|
| **Title Slides** | Opening/closing | Organization logo, centered branding |
| **Two-Column Layouts** | Comparisons, before/after | Balanced content distribution |
| **Statistics & Data** | Key metrics, impact numbers | Visual emphasis on important figures |
| **Image + Text** | Storytelling, case studies | Professional photography integration |
| **Video Integration** | Demonstrations, testimonials | Embedded YouTube videos |
| **Section Dividers** | Chapter breaks | Clean transitions between topics |
| **Call-to-Action Grids** | Next steps, contact info | Organized action items |
| **Technical Content** | Code examples, diagrams | Syntax highlighting, flowcharts |
| **Metrics Dashboards** | KPIs, achievements | Professional data visualization |

## 🛠️ Setup Requirements

### Required Software

1. **Claude Pro/Team Subscription** - [Subscribe to Claude](https://claude.ai/upgrade) for AI presentation creation
2. **Claude Code** - [Install Claude Code](https://docs.anthropic.com/en/docs/claude-code) for AI-powered file editing
3. **VS Code** - [Download and install](https://code.visualstudio.com/download) if you don't have it
4. **Node.js** - [Download and install](https://nodejs.org/en/download/) if you don't have it
5. **Marp CLI** - Install via npm:
   ```bash
   npm install -g @marp-team/marp-cli
   ```
6. **Marp VS Code Extension** - [Install from VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)

### VS Code Setup

If you already use VS Code then you copy the `markdown.marp.`settings from the `urbalurba-present/.vscode` folder to your project root. If you don't have a `.vscode` folder in your project root, then you can copy the settings from the `urbalurba-present/.vscode` folder like this:

```bash
mkdir -p .vscode
cd .vscode
copy ../urbalurba-present/.vscode/settings.json .
```

Then open VS Code in your project root:

```bash
code .
```

**Benefits of VS Code + Marp Extension:**
- Live preview while editing
- Easy export options via Command Palette
- Syntax highlighting for presentation markdown

## 📊 Real-World Impact

**Traditional Approach:**
- Hours spent on design and layout decisions
- Inconsistent messaging and visual presentation
- Design skills required for professional results
- Manual application of communication best practices

**With Urbalurba + AI:**
- Focus 100% on your content and message
- AI automatically applies proven communication patterns
- Professional results without design expertise
- Best practices for audience engagement built-in
- 95% faster from idea to finished presentation

## 📁 Live Examples

See the system in action with a complete Norwegian Red Cross presentation:

**Source:** [`red-cross-example-presentation.md`](red-cross-example-presentation.md) - Complete markdown source showing all design patterns and content structure

**Exported Formats:**
- **[HTML Version](https://github.com/terchris/urbalurba-present/blob/main/examples/red-cross-example-presentation.html)** - Interactive web presentation with animations and embedded videos
- **[PDF Version](https://github.com/terchris/urbalurba-present/blob/main/examples/red-cross-example-presentation.pdf)** - Print-ready format for handouts and documentation  
- **[PowerPoint Version](https://github.com/terchris/urbalurba-present/blob/main/examples/red-cross-example-presentation.pptx)** - Editable slides for Microsoft Office workflows

*Note: For PDF and PowerPoint files, click the file link above, then click the "Download" button on the GitHub file page.*

**How it was created:**
1. Open `red-cross-example-presentation.md` in VS Code
2. Use the Marp extension export button (see [plugin documentation](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode) for details)
3. Export to HTML, PDF, and PowerPoint formats directly from VS Code

These examples demonstrate all 15+ design patterns in a real-world presentation showcasing Norwegian Red Cross programs and services.

## 🎓 Training Resources

- **`template-settings.md`** - Organization configuration variables
- **`ai-design-template.md`** - Complete AI guide for all design patterns  
- **`red-cross-example-presentation.md`** - Full working example with all patterns

## 🤝 Support & Community

**For questions or improvements:**
- Technical issues: Create GitHub issue
- Content guidance: Reference the design guide
- New features: Submit feature requests

---

## About This Project

Built with [Marp framework](https://marp.app/) and designed to revolutionize how you  create presentations. The system combines proven communication design patterns with AI-powered content optimization to ensure every presentation achieves maximum impact.

**Available Themes:**
- **Norwegian Red Cross** - Humanitarian/NGO organizations (red-cross-1-theme.css)
- **CNN News** - Media and news organizations (cnn-theme.css)  
- **DNB Bank** - Financial and corporate organizations (dnb-bank-theme.css)
- **United Nations** - International and diplomatic organizations (un-theme.css)

**System Architecture:**
- `template-settings.md` - Organization variables (logos, colors, images, theme selection)
- `ai-design-template.md` - Generic AI instructions using variables
- `themes/` - Professional visual themes for different organization types
- `examples/` - Live demonstrations in HTML, PDF, and PowerPoint formats

*Created by Urbalurba to transform presentation creation through AI-powered design automation.*
