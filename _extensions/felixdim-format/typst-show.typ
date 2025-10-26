// Typst custom formats typically consist of a 'typst-template.typ' (which is
// the source code for a typst template) and a 'typst-show.typ' which calls the
// template's function (forwarding Pandoc metadata values as required)

$if(felixdim-format.template)$
#import "_extensions/felixdim-format/felixdim-format-typst/lib/$felixdim-format.template$.typ": conf
$else$
#import "_extensions/felixdim-format/felixdim-format-typst/lib/fd-doc.typ": conf
$endif$

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
