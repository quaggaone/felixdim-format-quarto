# felixdim format for Quarto

this is a felixdim format extension for Quarto.

## installing

this will install the format extension into you current project:

```bash
quarto add quaggaone/felixdim-format-quarto
```

alternatively, this will install the format extension and create an example qmd file that you can use as a starting place for your document.

```bash
quarto use template quaggaone/felixdim-format-quarto
```


## using

### requirements

the following fonts need to be installed on the system:

- IBM Plex Sans
- IBM Plex Sans Condensed
- IBM Plex Serif
- IBM Plex Mono
- IBM Plex Math

### options

#### special metadata options (at YAML root):

| key | type | description |
|:--- |:---- |:----------- |
| `title` | string | document metadata and on pages |
| `author` | string | document metadata and on pages |
| `description` | string | document metadata |
| `date` | seperate year, month, date fields | document metadata and on pages |
| `date.year` | number | document metadata and on pages |
| `date.month` | number | document metadata and on pages |
| `date.day` | number | document metadata and on pages |
| `lang` | string of valid [ISO 639-1/2/3 language code](https://en.wikipedia.org/wiki/ISO_639) | influences text processing (eg. hyphenation, quotes) |
| `region` | string of valid [ISO 3166-1 alpha-2 region code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) | influences text processing pipeline (eg. decimal and thousands delimiters) |

example custom YAML metadata (frontmatter):

```yaml
title: "My beautiful Quarto file"
author: zebra
date:
  year: 2019
  month: 03
  day: 23
format:
  felixdim-format-typst: default
```

#### Quarto format extension options (applied under the `felixdim-format-typst` key inside the YAML):

there are currently no sepcial config options for this Quarto extension.

## note

the Typst templates are currently manually copied into the extensions folder from their central repository.
Quarto has a core principle of long-term reproducibility.
this is the reason, Quarto extensions are installed into the project directory and ideally included in the projects VCS.
this is totally fine, good in fact.
we love long-term reproducibility.

since this Quarto extension is not the only place i use my Typst templates, i tried to centrally manage them using git submodules.
but since GitHub doesn’t include the submodules contents in the repos zip-archive and Quarto downloads the zip-archive instead of cloning through git, the submodules contents don’t end up in the project after installing a Quarto extension.
so for now we manually copy if there are any changes to the templates.
