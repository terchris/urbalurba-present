# Red Cross Presentation Design Pattern Guide for LLM Agents

## Quick Pattern Selection Guide

**For Opening/Closing slides:** `design-title`  
**For Table of Contents:** `design-agenda`  
**For Section Transitions:** `design-section-divider`  
**For Data/Statistics:** `design-2-columns-stats`  
**For Mission/Overview:** `design-2-rows-top-text-bottom-columns`  
**For Visual Stories:** `design-image-left-text-right` or `design-image-right-text-left` (IMAGE REQUIRED)  
**For Video Content:** `design-video-right-text-left` (VIDEO REQUIRED)  
**For Emotional Impact:** `design-image-background-2-columns` (BACKGROUND IMAGE REQUIRED)  
**For Call-to-Action:** `design-2-columns-highlight-box`  
**For Comparisons:** `design-2-columns`  
**For Process/Results:** `design-2-rows-text-image` (IMAGE REQUIRED)  
**For Technical Content:** `design-code-snippet` or `design-mermaid-diagram`  
**For Metrics/KPIs:** `design-grid-3-rows`  
**For Quotes/Key Messages:** `design-quote`  
**For Q&A/Discussion:** `design-quote` (simple slide with detailed speaker notes)

---

## Content Type → Pattern Mapping

### Text-Heavy Content
- **Lists/Agendas** → `design-agenda` (5-6 items max)
- **Comparisons** → `design-2-columns` (before/after, pros/cons)
- **Detailed Information** → `design-2-rows-top-text-bottom-columns` (overview + details)

### Visual Content  
- **With Images** → `design-image-left-text-right` or `design-image-right-text-left`
- **With Videos** → `design-video-right-text-left` (explanation + embedded video)
- **Emotional Stories** → `design-image-background-2-columns` (minimal text over background)
- **Process Demonstration** → `design-2-rows-text-image` (explanation + visual result)

### Data/Statistics
- **Few Key Stats** → `design-2-columns-stats` (text + callout numbers)
- **Multiple Metrics** → `design-grid-3-rows` (dashboard of 6 cards max)

### Technical Content
- **Code Examples** → `design-code-snippet` (10-20 lines max)
- **System Architecture** → `design-mermaid-diagram` (flowcharts, diagrams)

### Action-Oriented
- **Call-to-Action** → `design-2-columns-highlight-box` (grid of options + emphasis)
- **Key Messages** → `design-quote` (memorable statements)

### Structural
- **Opening/Thank You** → `design-title` (branded, centered)
- **Section Breaks** → `design-section-divider` (minimal transition)

---

## Critical Implementation Requirements

**IMPORTANT:** Design patterns require specific HTML structure and CSS classes to render properly. The design comments (e.g., `<!-- @design: pattern-name -->`) are for documentation only - they do not implement the visual layout.

### HTML Structure Requirements

Each design pattern must be implemented with proper HTML structure and CSS classes. Using only Markdown syntax will not produce the intended visual design.

**Wrong Approach (will not render properly):**
```markdown
<!-- @design: design-2-columns -->
## Left Content
- Bullet points
## Right Content  
- More bullets
```

**Correct Approach (renders properly):**
```markdown
<!-- @design: design-2-columns -->
# Slide Title

<div class="columns">
<div>

## Left Content
- Bullet points

</div>
<div>

## Right Content
- More bullets

</div>
</div>
```

## Pattern Specifications

### design-title
**When to use:** Opening slides, section covers, thank you pages  
**Content limits:** 1-6 word heading, 6-12 word subtitle, 3 metadata items  
**Required elements:** Logo image, main title  
**CSS class:** `title`

### design-agenda  
**When to use:** Table of contents, simple lists, step-by-step processes  
**Content limits:** 1-2 word heading, 5-6 list items, 3-8 words per item  
**Total budget:** 15-25 words  
**CSS class:** None

### design-section-divider
**When to use:** Major section transitions, chapter breaks  
**Content limits:** Section number + title, 5-15 total words  
**Layout:** Centered, minimal  
**CSS class:** `section-divider`

### design-2-columns-stats
**When to use:** Data presentation, stats with context, key metrics  
**Content limits:** 50-70 total words, left column (15-25 words), right column (stat containers + highlight box)  
**Layout:** 50/50 split with visual emphasis  
**CSS class:** None
**Required HTML structure:**
```html
<div class="columns">
<div>
## Left Content
</div>
<div>
<div class="stat-container">
  <span class="stat-number">Number</span>
  <div class="stat-label">Description</div>
</div>

<div class="highlight-box">
<strong>Key Point:</strong> Supporting information
</div>
</div>
</div>
```

### design-2-rows-top-text-bottom-columns
**When to use:** Mission statements with details, overview with specifics  
**Content limits:** 60-85 total words, top section (stat + quote), bottom columns (20-30 words each)  
**Layout:** Full-width header, then column grid  
**CSS class:** None
**Required HTML structure:**
```html
<div class="stat-container">
  <span class="stat-number">Number</span>
  <div class="stat-label">Description</div>
</div>

> *"Quote or key message"*

<div class="columns">
<div>
## Left Column
</div>
<div>
## Right Column
</div>
</div>
```

### design-image-left-text-right / design-image-right-text-left
**When to use:** Visual storytelling, product showcases, case studies  
**Content limits:** 15-30 total words, 3-6 word heading, 3-4 bullet points  
**Layout:** 60/40 split (image/content)  
**CSS class:** None
**IMAGE REQUIRED:** Replace placeholder with relevant image
**Required HTML structure:**
```html
![bg left:60%](https://www.rodekors.no/globalassets/_hjelpekorpssidene/sok-og-redning/200910_oslo_illustrasjon_009_1600.jpg?width=1600&quality=90)
<!-- OR -->
![bg right:60%](https://www.rodekors.no/globalassets/_distrikt-og-lokalforeninger/dk-telemark/kjersti/220929_neglespa_590.jpg?width=900&quality=90)

## Content Title
- Bullet points here
```
**Recommended images:** Innovation/Technology (left), Community Learning (right), Global Network (left)

### design-video-right-text-left
**When to use:** Video demonstrations, tutorials, testimonials, process explanations  
**Content limits:** 15-30 total words, 3-6 word heading, 3-4 bullet points  
**Layout:** 50/50 split (content/video)  
**CSS class:** `video-right-text-left`
**VIDEO REQUIRED:** YouTube video thumbnail with link (Marp limitation: no iframe support)
**Required HTML structure:**
```html
<div class="columns">
<div class="content-left">
## Content Title
- Bullet points here
</div>
<div class="video-right">
[![Video Title](https://img.youtube.com/vi/_WW2JWIv6G8/maxresdefault.jpg)](https://www.youtube.com/watch?v=_WW2JWIv6G8)

**Click to watch video**
</div>
</div>
```
**Default video:** Red Cross promotional/demonstration video (`https://www.youtube.com/watch?v=_WW2JWIv6G8`)
**Note:** Marp doesn't support iframe embedding. Videos appear as clickable thumbnails that open in browser.

### design-image-background-2-columns
**When to use:** Emotional storytelling, impactful visuals, testimonials  
**Content limits:** 25-35 total words, minimal text over background image  
**Layout:** Content floats over blurred background  
**CSS class:** `background-image-overlay`
**IMAGE REQUIRED:** Background image essential for visual impact
**Required HTML structure:**
```html
![bg blur:8px opacity:0.3](https://www.rodekors.no/globalassets/_distrikt-og-lokalforeninger/dk-hordaland/nyhetssaker/ungdom-pa-ledersamling_1600.jpg?width=1200&quality=90)

<div class="columns">
<!-- Content here -->
</div>
```
**Recommended image:** Youth Leadership background for emotional impact

### design-2-columns-highlight-box
**When to use:** Call-to-action grids, service offerings, volunteer opportunities  
**Content limits:** 40-60 total words, 4 cards maximum, highlight box  
**Layout:** Responsive grid with emphasis element  
**CSS class:** `grid-with-highlight`
**Required HTML structure:**
```html
<div class="involvement-grid">
<div class="involvement-card">
<h3>Card Title</h3>
<p>Card description</p>
</div>
<!-- More cards -->
</div>

<div class="highlight-box">
<strong>Key Message:</strong> Important information
</div>
```

### design-2-columns
**When to use:** Before/after, challenges/solutions, pros/cons comparisons  
**Content limits:** 30-50 total words, equal content distribution  
**Layout:** 50/50 split, balanced content  
**CSS class:** None
**Required HTML structure:**
```html
<div class="columns">
<div>
## Left Column
- Content here
</div>
<div>
## Right Column
- Content here
</div>
</div>
```

### design-2-rows-text-image
**When to use:** Process descriptions, technical showcases  
**Content limits:** 20-45 total words, 3-5 bullet points  
**Layout:** Text above, full-width image below  
**CSS class:** `content-then-image`
**IMAGE REQUIRED:** Demonstration or process image
**Required HTML structure:**
```html
<div class="top-content">
- Bullet points here
</div>

<div class="full-width-image">
  <img src="https://www.rodekors.no/globalassets/_aktuelt-bilder-og-video/_illustrasjoner/rode-kors-operataket.jpg" alt="Red Cross Operations">
</div>
```
**Recommended image:** Operations/Technology demonstrations

### design-code-snippet
**When to use:** Technical demonstrations, API examples, tutorials  
**Content limits:** 3-8 word heading, 10-20 code lines, minimal supporting text  
**Focus:** Clean, readable code with syntax highlighting  
**CSS class:** None

### design-mermaid-diagram
**When to use:** System architecture, process flows, technical concepts  
**Content limits:** 3-6 word heading, complex but readable diagram  
**Focus:** Visual explanation, minimal text  
**CSS class:** None

### design-grid-3-rows
**When to use:** Impact dashboards, KPI presentations, achievement summaries  
**Content limits:** 15-35 total words, 6 cards maximum  
**Layout:** Grid of metric cards with icons and numbers  
**CSS class:** `metrics-grid`
**Required HTML structure:**
```html
<div class="metrics-grid">
<div class="metric-card">
<div class="metric-icon">🔢</div>
<div class="metric-number">Value</div>
<div class="metric-label">Description</div>
</div>
<!-- More metric cards (max 6) -->
</div>
```

### design-quote
**When to use:** Inspirational quotes, key takeaways, memorable statements, Q&A slides  
**Content limits:** 5-15 total words, quote + optional attribution  
**Layout:** Centered, emphasis typography  
**CSS class:** `lead`

**Special case - Q&A/Questions slides:**
- Use simple title like "Questions & Discussion" or "Questions?"
- Put all anticipated questions and answers in speaker notes, NOT on visible slide
- Audience should only see invitation to ask questions
- Speaker notes should include Q&A format with likely questions and prepared responses

---

## LLM Selection Algorithm

1. **Identify content type:**
   - Opening/closing → `design-title`
   - List/agenda → `design-agenda`
   - Section break → `design-section-divider`
   - Statistics/data → `design-2-columns-stats` or `design-grid-3-rows`
   - Process/explanation → `design-2-rows-top-text-bottom-columns`
   - Visual story → `design-image-*` patterns (AUTO-INCLUDE default images)
   - **Content marked with [VIDEO CONTENT]** → `design-video-right-text-left` (AUTO-INCLUDE default video)
   - Call-to-action → `design-2-columns-highlight-box`
   - Comparison → `design-2-columns`
   - Technical → `design-code-snippet` or `design-mermaid-diagram`
   - Quote/message → `design-quote`
   - Q&A/Questions → `design-quote` (simple title + detailed speaker notes)

2. **Check content volume:**
   - 5-15 words → Minimal patterns (title, quote, section-divider)
   - 15-30 words → Visual patterns (image layouts)
   - 30-60 words → Content patterns (columns, grids)
   - 60-85 words → Dense patterns (header-then-columns, columns-with-callout)

3. **Apply pattern constraints:**
   - Follow word limits strictly
   - Use specified CSS classes
   - Include required elements
   - Maintain visual hierarchy
   - **MANDATORY: Use `#` (H1) for all main slide titles, never `##` (H2)**
   - **MANDATORY: Auto-include default images for all image patterns**

---

## Critical Rules for LLMs

**MANDATORY REQUIREMENTS:** 

1. **HTML STRUCTURE:** Design comments alone DO NOT create visual layouts. You MUST implement the required HTML structure and CSS classes for each pattern.

2. **HEADING HIERARCHY:** ALL main slide titles MUST use `#` (H1), never `##` (H2). This is non-negotiable.

3. **Q&A SLIDES:** Questions slides must be simple (title only). NEVER show anticipated questions to the audience - put them in speaker notes only.

4. **AUTOMATIC DEFAULT IMAGES:** Image patterns MUST automatically include appropriate Red Cross images:
   - **`design-image-left-text-right`** → Use Innovation/Technology image: `![bg left:60%](https://www.rodekors.no/globalassets/_hjelpekorpssidene/sok-og-redning/200910_oslo_illustrasjon_009_1600.jpg?width=1600&quality=90)`
   - **`design-image-right-text-left`** → Use Community Learning image: `![bg right:60%](https://www.rodekors.no/globalassets/_distrikt-og-lokalforeninger/dk-telemark/kjersti/220929_neglespa_590.jpg?width=900&quality=90)`
   - **`design-video-right-text-left`** → Use default Red Cross video: `<iframe src="https://www.youtube.com/embed/_WW2JWIv6G8"...>`
   - **`design-image-background-2-columns`** → Use Youth Leadership background: `![bg blur:8px opacity:0.3](https://www.rodekors.no/globalassets/_distrikt-og-lokalforeninger/dk-hordaland/nyhetssaker/ungdom-pa-ledersamling_1600.jpg?width=1200&quality=90)`
   - **`design-2-rows-text-image`** → Use Operations image: `<img src="https://www.rodekors.no/globalassets/_aktuelt-bilder-og-video/_illustrasjoner/rode-kors-operataket.jpg" alt="Red Cross Operations">`
   - **NEVER create image/video patterns without including the appropriate default media**

**Visual Rendering Failure Examples:**
- Using `<!-- @design: design-2-columns -->` without `<div class="columns">` = No column layout
- Using design-2-columns-stats without `.stat-container` = Plain text instead of styled statistics  
- Using design-grid-3-rows without `.metrics-grid` = Vertical list instead of dashboard grid
- Using design-2-columns-highlight-box without `.involvement-grid` = No card layout
- **Using `## Slide Title` instead of `# Slide Title` = Incorrect visual hierarchy**
- **Showing "Anticipated Questions" as visible slide content = Reveals presenter preparation to audience**
- **Using image patterns without default images = Empty slides with missing visual elements**

**Maximum Content Limits:**
- Any slide: 85 words maximum
- Any list: 8 bullet points maximum  
- Heading levels: 3 maximum (H1, H2, H3)

**Heading Level Rules:**
- Main slide titles: Use `#` (H1) - e.g., `# Strategic Risk: Microsoft Lock-in`
- Subsections within slides: Use `##` (H2) - e.g., `## Current Situation`  
- Sub-subsections: Use `###` (H3) - e.g., `### Key Benefits`
- NEVER use `##` for main slide titles

**Required Marp Configuration:**
```markdown
---
marp: true
theme: red-cross-1-theme
paginate: true
header: 'Norwegian Red Cross'
footer: 'www.rodekors.no'
---
```

**Required Format:**
```markdown
<!-- @design: pattern-name -->
<!-- @slide: unique-slide-id -->
<!-- _class: css-class-if-required -->

# Slide Content Here

<!--
Speaker notes for this slide:
- Key talking points
- Supporting details
- Transitions to next slide
-->
```

**Pattern Selection Priority:**
1. Content type (what information needs to be conveyed)
2. Content volume (how much text/data)
3. Visual requirements (images, diagrams, emphasis)
4. Audience engagement (emotional vs informational)

## Speaker Notes Guidelines

**When to include speaker notes:**
- Complex technical concepts that need explanation
- Statistical data that requires context
- Transitions between major sections
- Anticipated questions or objections
- Supporting evidence or examples

**Speaker notes format:**
- Use HTML comments `<!-- -->` for speaker notes
- Keep notes concise but comprehensive
- Include key talking points, not full scripts
- Add transitions to next slides
- Reference supporting materials or sources

**Speaker notes content limits:**
- 3-5 bullet points per slide maximum
- 10-20 words per bullet point
- Focus on key messages, not detailed explanations
- Include emotional cues (pause, emphasize, etc.)

This guide ensures consistent, professional presentations that follow Red Cross brand standards while maximizing visual impact and readability.