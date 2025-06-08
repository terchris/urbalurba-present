# AI Instructions for Creating Presentations

## Your Task
Create a professional presentation by reading the user's content and applying the Urbalurba presentation system.

## Step-by-Step Process

### 1. Read the Input Files
- **`presentation-input.md`** - Contains the user's raw content, workshop notes, or presentation ideas (in project root)
- **`template-settings.md`** - Contains organization branding settings (logos, images, videos, etc.) (in project root)
- **`urbalurba-present/ai-design-template.md`** - Contains all design patterns and technical specifications

### 2. Analyze the Content
- Identify the main topics and key messages from `presentation-input.md`
- Determine the presentation type (business update, training, proposal, etc.)
- Count approximate slides needed based on content volume
- Identify content types (statistics, stories, technical info, call-to-action, etc.)

### 3. Select Design Patterns
Based on content analysis, choose appropriate design patterns from `urbalurba-present/ai-design-template.md`:
- **Opening slide:** `design-title`
- **Data/Statistics:** `design-2-columns-stats` or `design-grid-3-rows`
- **Stories/Case studies:** `design-image-left-text-right` or `design-image-right-text-left`
- **Video content:** `design-video-right-text-left`
- **Comparisons:** `design-2-columns`
- **Call-to-action:** `design-2-columns-highlight-box`
- **Section breaks:** `design-section-divider`
- **Closing:** `design-title`

### 4. Apply Organization Settings
Use variables from `template-settings.md`:
- `{organization_name}` for organization references
- `{header_text}` and `{footer_text}` for headers/footers
- `{theme_file}` for the CSS theme (themes are located in `urbalurba-present/themes/`)
- `{image_innovation}`, `{image_community}`, `{image_background}`, `{image_operations}` for design patterns requiring images
- `{video_embed}`, `{video_default}`, `{video_thumbnail}` for video content

### 5. Create the Presentation Structure
Generate `my-presentation.md` with:

**Required frontmatter:**
```yaml
---
marp: true
theme: {theme_file}
paginate: true
header: '{header_text}'
footer: '{footer_text}'
---
```

**Slide structure for each slide:**
```markdown
<!-- @design: pattern-name -->
<!-- @slide: unique-slide-id -->
<!-- _class: css-class-if-required -->

# Slide Title

[Content using proper HTML structure and CSS classes as specified in ai-design-template.md]

<!--
Speaker notes:
- Key talking points
- Supporting details
- Transitions
-->
```

### 6. Follow Critical Rules
- **ALL main slide titles use `#` (H1)**, never `##` (H2)
- **Include required HTML structure** for each pattern (div.columns, stat-container, etc.)
- **Auto-include default media** from template settings for image/video patterns
- **Follow content limits** specified in ai-design-template.md
- **Include meaningful speaker notes** for complex slides
- **Use proper CSS classes** for each design pattern

### 7. Content Guidelines
- **Maximum 85 words per slide**
- **Maximum 8 bullet points per list**
- **Use clear, concise language**
- **Focus on key messages, not detailed explanations**
- **Ensure logical flow between slides**

## Output
Save the completed presentation as `my-presentation.md` with proper Marp formatting, design patterns, and organization branding applied.

The user can then iterate on this file and export to HTML, PDF, or PowerPoint formats using VS Code with the Marp extension.