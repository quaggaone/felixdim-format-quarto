// Typst custom formats typically consist of a 'typst-template.typ' (which is
// the source code for a typst template) and a 'typst-show.typ' which calls the
// template's function (forwarding Pandoc metadata values as required)

// define pandoc specific variable
#let horizontalrule = line(length: 100%)
// this is pandoc’s translation of <hr> since typst doesn‘t have an equivalent as of now

#show: doc => conf(
$if(title)$
  title: [$title$],
$endif$
$if(author)$
  author: "$author$",
$endif$
$if(description)$
  description: [$description$],
$endif$
$if(date.year)$
$if(date.month)$
$if(date.day)$
  date: datetime(year: $date.year$, month: $date.month$, day: $date.day$),
$endif$
$endif$
$endif$
$if(lang)$
  lang: "$lang$",
$endif$
$if(region)$
  region: "$region$",
$endif$
  doc,
)
