v0.0.5
---

- UPDATE felixdim-format-typst dependency to v0.3.0
  - ADD table styling with horizontal lines only (thick borders at top/bottom, thin line below header)
  - ADD semibold formatting for table header row and first column
  - ADD 75% text stretch (condensed) applied to all tables
  - ADD page-wise visual TOC in right margin showing document structure with varying line lengths by heading level
  - ADD active heading highlighting in margin TOC (dark lines for headings on current page and previous heading when its content continues onto page)
  - UPDATE heading spacing to use relative units (1.5em above, 1.1× base font-size below) for consistent scaling

v0.0.4
---

- UPDATE felixdim-format-typst dependency to v0.2.1
  - FIX template path from `templates/` to `template/`
  - FIX heading font sizes with explicit multiplication (avoid Typst em unit stacking bug)
  - UPDATE heading sizes: title 2.2×, h1 1.75×, h2 1.4×, h3 1.12×, h4 1.06×, h5 1.0×, h6 0.9×
  - ADAPT for Quarto's Typst 0.13.0 (replace std.title() with direct text call)

v0.0.3
---

- UPDATE felixdim-format-typst dependency
  - RENAME folder from `lib` to `templates`
  - ADJUST margin


v0.0.2
---

- ADD pandoc’s `horizontalrule` to typst template


v0.0.1
---

- RELEASE v0.0.1
