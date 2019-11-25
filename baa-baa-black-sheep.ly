
\version "2.18.2"

\header {
  title = "Baa, Baa, Black Sheep"
  composer = "Traditional"
  opus = "@shuckc"
}

upper = {
  \clef treble
  \numericTimeSignature
  \key c \major
  \time 4/4
  \relative c' { c4-1 c g'-4 g | a8-5[ a] a a g2 | f4 f e e | d d c2 |
  g'4 g8 g f4 f8 f | e4 e8 e d4. d8 | g4 g8 g f[ f] f f | e4 e8 e d2 | }
  \relative c' { c4 c g' g | a8[ a] a a g2 | f4 f e e | d d c2 |
  }
}

lower = {
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 4/4
  <g e c>1         | <a f c>2 <g e c> | <g d b,> <g e c> | <g d b,> <g e c> |
  <g e c> <a f c>2 | <g e c> <g d b,> | <g e c> <a f c>2 | <g e c> <g d b,> |
  <g e c>1         | <a f c>2 <g e c> | <g d b,> <g e c> | <g d b,> <g e c> |
}

text = \lyricmode {
  Baa, Baa, Black Sheep, | have you an -- y wool? | Yes sir, yes sir, | three bags full. |
  One for the mas -- ter and | one for the dame and | one for the lit -- tle boy who | lives down the lane. |
  Baa, Baa, Black Sheep, | have you an -- y wool? | Yes sir, yes sir, | three bags full. |
}

\new PianoStaff <<
    \new Staff { \upper }
    \addlyrics { \text }
    \new Staff { \lower }
  >>
