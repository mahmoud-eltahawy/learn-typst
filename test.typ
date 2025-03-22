
#let f = json("./test.json")

#align(center)[
  #table(columns: f.headers.len(),
    table.header(..f.headers),
    ..f.rows.flatten(),
  )
]
