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

the following fonts need to be installed on the system:

- IBM Plex Sans
- IBM Plex Sans Condensed
- IBM Plex Serif
- IBM Plex Mono
- IBM Plex Math

## note

the Typst templates are currently manually copied into the extensions folder from their central repository.
Quarto has a core principle of long-term reproducibility.
this is the reason, Quarto extensions are installed into the project directory and ideally included in the projects VCS.
this is totally fine, good in fact.
we love long-term reproducibility.

since this Quarto extension is not the only place i use my Typst templates, i tried to centrally manage them using git submodules.
but since GitHub doesn’t include the submodules contents in the repos zip-archive and Quarto downloads the zip-archive instead of cloning through git, the submodules contents don’t end up in the project after installing a Quarto extension.
so for now we manually copy if there are any changes to the templates.
