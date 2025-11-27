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
