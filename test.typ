
#set align(center)
#set text(size: 16pt)

= loading data and _display_

#let f = json("./test.json")

#align(center)[
  #table(
    stroke: green,
    gutter: 10pt,
    columns: f.headers.len(),
    inset: 10pt,
    table
      .header(..f
        .headers
        .map(x => text(weight : "bold",size : 18pt)[#x])
      ),
    ..f
      .rows
      .flatten()
      .map(x => text(size : 16pt)[#x]),
  )
]

= try math

$
  vec([a,b],[c,d]) . vec([e,f],[g,h]) =\
  vec(
    e . vec(a,c) + g . vec(b,d),
    f . vec(a,c) + h . vec(b,d)) =\
   vec(
     [e.a + g.b,e.c + g.d],
     [f.a + h.b,f.c + h.d]
   )\
$
$ sin(x)^2 + cos(x)^2 = 1 $
