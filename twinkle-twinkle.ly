
\version "2.18.2"

\header {
  title = "Twinkle Twinkle Little Star"
  composer = "Tradional"
  opus = "@shuckc"
}

upper = {
  \clef treble
  \key c \major
  \numericTimeSignature
  \time 4/4
  \relative c' { c4 c g' g | a a g2 | f4 f e e | d d c2 | \break
     g'4 g f f | e e d2 | g4 g f f | e e d2 | \break }
  \relative c' { c4 c g' g | a a g2 | f4 f e e | d d c2 | }
}

lower = \relative c {
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 4/4

  <c g'>2 <e g> | <f g> <e g> | <f g> <e g> | <d g> <c g'> |
  <e g>  <f g> | <e g> <f g> | <e g> <f g> | <e g> <f g> |
  <c g'>2 <e g> | <f g> <e g> | <f g> <e g> | <d g> <c g'> |
}

text = \lyricmode {
  Twin -- kle twin -- kle | lit -- tle star, | how I won -- der | what you are. |
  up a -- bove the | world so high, | like a dia -- mond | in the sky, |
  Twin -- kle twin -- kle | lit -- tle star, | how I won -- der | what you are?
}

\new PianoStaff <<
    \new Staff { \upper }
    \addlyrics { \text }
    \new Staff { \lower }
  >>
