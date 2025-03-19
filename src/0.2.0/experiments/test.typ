#import "@preview/i-figured:0.2.4"

// make sure you have some heading numbering set
#set heading(numbering: "1.")

// apply the show rules (these can be customized)
#show heading: i-figured.reset-counters

#show figure: i-figured.show-figure.with(
  level: 0,
  extra-prefixes: (super:"aa")
)

// show an outline
#i-figured.outline()

= Hello World

#figure([hi], caption: [Bye World.], kind: "aa", supplement: "s-Figure") <bye>

#figure([hi], caption: [Bye World.]) <ye>
#figure([hi], caption: [Bye World.], kind: "aa", supplement: "s-Figure") <ye>
#figure([hi], caption: [Bye World.]) <ye>

= fig2

#figure([hi], caption: [Bye World.]) <ye>
#figure([hi], caption: [Bye World.], kind: "aa", supplement: "s-Figure") <ye>
#figure([hi], caption: [Bye World.]) <ye>


// when referencing, the label names must be prefixed with `fig:`, `tbl:`,
// or `lst:` depending on the figure kind.
@fig:bye displays the text "hi".
