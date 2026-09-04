---
name: Katelyn Langley Desktop Garden
description: A warm full-browser personal workspace led by authentic software and game work.
colors:
  desktop-lilac: "#cbb8e8"
  screen-green: "#09170e"
  panel-green: "#102417"
  chrome-violet: "#704da0"
  signal-lime: "#baff70"
  project-lilac: "#d8c9ef"
  body-muted: "#a8c2aa"
  metadata-muted: "#78907c"
  rule-green: "#52705a"
  project-link-violet: "#65438f"
  paper: "#ffffff"
typography:
  display:
    fontFamily: "Space Grotesk Variable, sans-serif"
    fontSize: "clamp(3.6rem, 7vw, 6rem)"
    fontWeight: 700
    lineHeight: 0.86
    letterSpacing: "-0.04em"
  title:
    fontFamily: "Space Grotesk Variable, sans-serif"
    fontSize: "1.875rem"
    fontWeight: 700
  body:
    fontFamily: "JetBrains Mono Variable, monospace"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.75
  label:
    fontFamily: "JetBrains Mono Variable, monospace"
    fontSize: "0.75rem"
rounded:
  window: "14px"
  control: "6px"
  circle: "9999px"
spacing:
  compact: "16px"
  content: "24px"
  roomy: "40px"
  desktop: "56px"
components:
  primary-action:
    backgroundColor: "{colors.signal-lime}"
    textColor: "{colors.panel-green}"
    typography: "{typography.body}"
    padding: "12px 20px"
  primary-action-hover:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.panel-green}"
  project-window:
    backgroundColor: "{colors.project-lilac}"
    textColor: "{colors.panel-green}"
    rounded: "{rounded.window}"
  tool-chip:
    textColor: "{colors.signal-lime}"
    rounded: "{rounded.control}"
    padding: "8px 12px"
---

# Design System: Katelyn Langley Desktop Garden

## Overview

**Creative North Star: "Desktop Garden"**

Desktop Garden is one canonical full-browser workspace: warm and inhabited, but structured enough to make Katelyn’s work legible within seconds. A lilac desktop sits beneath violet operating-system chrome. Dark green About space, pale project windows, technical monospace notation, and oversized Space Grotesk copy balance candid personality with credible evidence.

The root route is the product. There is no prototype tournament, route switcher, alternate composition, or centered computer shell. About fills the left desktop column across two rows while two authentic project windows sit at right; mobile turns those same sections into one source-order stack.

**Key Characteristics:**

- Full-browser lilac desktop with violet top chrome.
- Large About window spanning two desktop rows, with its toolbox inside.
- Two authentic project windows at right.
- Single-column mobile stack preserving About-first order.
- Direct-email CTA with a two-tone focus treatment.

**The One Workspace Rule.** The root structured workspace is canonical; never introduce prototype routes, a prototype switcher, or competing compositions.

## Colors

Soft lilac and violet make the workspace personal; near-black greens create technical depth; lime is reserved for action, status, and compact tool evidence.

### Primary

- **Chrome Violet:** Global computer chrome and local filename bars.
- **Signal Lime:** Email action, online state, tool text, and selection highlight.

### Secondary

- **Desktop Lilac:** Full browser canvas.
- **Project Lilac:** Both readable project surfaces.
- **Project Link Violet:** External links on pale project surfaces.

### Neutral

- **Screen Green:** About window and dark half of the focus ring.
- **Panel Green:** Dark text on lime and project surfaces.
- **Body Muted:** Main About paragraph.
- **Metadata Muted:** Education, learning context, and utility labels.
- **Rule Green:** Tool-chip borders.
- **Paper:** Headline/chrome text, CTA hover, and light half of the focus ring.

**The Signal Rule.** Lime communicates action, live state, or confirmed tool evidence; it is not a general surface.

## Typography

**Display Font:** Space Grotesk Variable, sans-serif
**Body and Label Font:** JetBrains Mono Variable, monospace

Space Grotesk makes the first-person opening immediate and graphic. JetBrains Mono makes copy, evidence, filenames, labels, and controls feel native to a working desktop without losing warmth.

- **Display:** Bold, tightly tracked, compressed line height; the single About headline.
- **Title:** Bold Space Grotesk for project names.
- **Body:** JetBrains Mono with generous leading for the introduction.
- **Label:** Compact JetBrains Mono for chrome, filenames, metadata, project notes, links, and tools.

**The One Display Rule.** Use the oversized display treatment once, in About; keep project evidence compact enough to scan beside it.

## Layout

The site fills the browser. A `48px` global chrome bar precedes a workspace with `16px` gaps and padding. At `1024px`, it becomes a two-column (`1.1fr .9fr`), two-row grid with `24px` gaps/padding. About spans both left rows; Tavern Playhouse and Cody’s Crayons fill the upper- and lower-right cells. Project interiors split media/copy from `640px`.

Below `1024px`, content is a single column: About, Tavern Playhouse, Cody’s Crayons. Nothing overlaps. About padding grows from `28px` to `40px` and `56px`; the toolbox stays inside About after the intro and CTA.

**The Evidence-First Reflow Rule.** Responsive changes may alter columns, never source order, project identity, or the About/toolbox relationship.

## Elevation & Depth

All three windows use one structural shadow (`0 20px 50px rgba(9,23,14,.24)`) against the flat lilac desktop. Depth separates work from canvas; it does not imply dragging or overlap.

**The Structured Depth Rule.** Windows may lift from the desktop, but remain locked to the grid and never overlap.

## Shapes

Windows use gently rounded `14px` corners and clip their title bars, imagery, and content. Tool chips use compact `6px` corners. Status lights are circular. Global chrome stays square so the page reads as an operating environment, not a card.

## Components

### Global Computer Chrome

A violet full-width bar with three status lights at left, `katelynlangley.dev` centered, and `STILL LEARNING` with a blinking dot at right. It uses small white monospace text.

### Workspace Windows and Title Bars

About and project containers clip at `14px` and share the workspace shadow. Local title bars are violet, at least `36px` tall, with small white monospace filenames.

### Primary Email Action

The canonical CTA is exactly “Come say hello (ᵔᵕᵔ)ﾉ →” and links to `mailto:katie@wyrd.team`. It uses lime, dark-green bold monospace text, `12px 20px` padding, and turns white on hover. Keyboard focus uses a `3px` white outline offset `3px`, backed by a `6px` dark-green ring.

### Project Evidence Windows

Tavern Playhouse uses `/projects/tavern-playhouse.png`, alt “Tavern Playhouse Performance Screen staging three actors in a library scene,” and `https://playhouse.thetavern.app`; it is a user-supplied in-product staging capture. Cody’s Crayons uses `/projects/codys-crayons.png`, alt “Cody’s Crayons gameplay inside a dark school computer lab,” and `https://iradesa.itch.io/codys-crayons`; it is a user-supplied gameplay capture. Marion uses `/projects/marion.png`, alt “Main artwork for Marion showing a marionette suspended under a spotlight,” and its public GitHub repository; it is unchanged artwork from the repository. Images use a wide, top-aligned product-focused crop in the project windows; links are bold, underlined, and safely open in a new tab.

### Toolbox

The toolbox belongs inside About. Confirmed text chips are Adobe Photoshop, AI agents, C++, CSS, Docker, Figma, GitHub, Go, HTML, Java, JavaScript, Python, Unity 5, and Unreal Engine. Never fabricate a screenshot or proficiency scale.

### Favicons

The head links `/favicon.svg` (`image/svg+xml`) and `/favicon.png` (`image/png`). Both show the same Desktop Garden mark: dark-green window, violet chrome, three status lights, and lime “K”. SVG is the scalable source; PNG is the raster fallback.

## Do's and Don'ts

### Do:

- **Do** treat `/` as the only canonical experience.
- **Do** preserve About’s desktop two-row span, right-side projects, single-column mobile order, and toolbox placement.
- **Do** preserve the exact CTA/email, two-tone focus, authentic images, alt text, and destinations.
- **Do** keep matching SVG and PNG favicon artwork.

### Don't:

- **Don't** add numbered prototype routes, a switcher, tournament language, or an unselected-winner state.
- **Don't** center the workspace in an outer shell, overlap windows, or detach the toolbox from About.
- **Don't** fabricate employers, testimonials, metrics, screenshots, proficiency claims, or provenance.
