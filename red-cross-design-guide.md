# Red Cross Presentation Design Pattern Guide for LLM Agents

## Quick Pattern Selection Guide

**For Opening/Closing slides:** `design-title`  
**For Table of Contents:** `design-agenda`  
**For Section Transitions:** `design-section-divider`  
**For Data/Statistics:** `design-2-columns-stats`  
**For Mission/Overview:** `design-2-rows-top-text-bottom-columns`  
**For Visual Stories:** `design-image-left-text-right` or `design-image-right-text-left`  
**For Emotional Impact:** `design-image-background-2-columns`  
**For Call-to-Action:** `design-2-columns-highlight-box`  
**For Comparisons:** `design-2-columns`  
**For Process/Results:** `design-2-rows-text-image`  
**For Technical Content:** `design-code-snippet` or `design-mermaid-diagram`  
**For Metrics/KPIs:** `design-grid-3-rows`  
**For Quotes/Key Messages:** `design-quote`

---

## Content Type → Pattern Mapping

### Text-Heavy Content
- **Lists/Agendas** → `design-agenda` (5-6 items max)
- **Comparisons** → `design-2-columns` (before/after, pros/cons)
- **Detailed Information** → `design-2-rows-top-text-bottom-columns` (overview + details)

### Visual Content  
- **With Images** → `design-image-left-text-right` or `design-image-right-text-left`
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

### design-2-rows-top-text-bottom-columns
**When to use:** Mission statements with details, overview with specifics  
**Content limits:** 60-85 total words, top section (stat + quote), bottom columns (20-30 words each)  
**Layout:** Full-width header, then column grid  
**CSS class:** None

### design-image-left-text-right / design-image-right-text-left
**When to use:** Visual storytelling, product showcases, case studies  
**Content limits:** 15-30 total words, 3-6 word heading, 3-4 bullet points  
**Layout:** 60/40 split (image/content)  
**CSS class:** None

### design-image-background-2-columns
**When to use:** Emotional storytelling, impactful visuals, testimonials  
**Content limits:** 25-35 total words, minimal text over background image  
**Layout:** Content floats over blurred background  
**CSS class:** `background-image-overlay`

### design-2-columns-highlight-box
**When to use:** Call-to-action grids, service offerings, volunteer opportunities  
**Content limits:** 40-60 total words, 4 cards maximum, highlight box  
**Layout:** Responsive grid with emphasis element  
**CSS class:** `grid-with-highlight`

### design-2-columns
**When to use:** Before/after, challenges/solutions, pros/cons comparisons  
**Content limits:** 30-50 total words, equal content distribution  
**Layout:** 50/50 split, balanced content  
**CSS class:** None

### design-2-rows-text-image
**When to use:** Process descriptions, technical showcases  
**Content limits:** 20-45 total words, 3-5 bullet points  
**Layout:** Text above, full-width image below  
**CSS class:** `content-then-image`

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

### design-quote
**When to use:** Inspirational quotes, key takeaways, memorable statements  
**Content limits:** 5-15 total words, quote + optional attribution  
**Layout:** Centered, emphasis typography  
**CSS class:** `lead`

---

## LLM Selection Algorithm

1. **Identify content type:**
   - Opening/closing → `design-title`
   - List/agenda → `design-agenda`
   - Section break → `design-section-divider`
   - Statistics/data → `design-2-columns-stats` or `design-grid-3-rows`
   - Process/explanation → `design-2-rows-top-text-bottom-columns`
   - Visual story → `design-image-*` patterns
   - Call-to-action → `design-2-columns-highlight-box`
   - Comparison → `design-2-columns`
   - Technical → `design-code-snippet` or `design-mermaid-diagram`
   - Quote/message → `design-quote`

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

---

## Critical Rules for LLMs

**Maximum Content Limits:**
- Any slide: 85 words maximum
- Any list: 8 bullet points maximum  
- Heading levels: 3 maximum (H1, H2, H3)

**Required Format:**
```markdown
<!-- @design: pattern-name -->
<!-- @slide: unique-slide-id -->
<!-- _class: css-class-if-required -->
```

**Pattern Selection Priority:**
1. Content type (what information needs to be conveyed)
2. Content volume (how much text/data)
3. Visual requirements (images, diagrams, emphasis)
4. Audience engagement (emotional vs informational)

This guide ensures consistent, professional presentations that follow Red Cross brand standards while maximizing visual impact and readability.