
\version "2.18.2"

\header {
  title = "This Old Man"
  composer = "Tradional"
  opus = "@shuckc"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \numericTimeSignature
  \time 4/4
  \repeat volta 2 {
  g4 e g2 | g4 e g2 | a4 g f e | \break
  d e f e8 f | g4 c, c8 c c4 | \break
  c8 d e f g2 | g4 d d f | e d c2
  }
}

lower = \relative c {
  \clef bass
  \key c \major
  \numericTimeSignature
  \time 4/4

  r1 | r | r |
  r  | r |
  r | r | r
}

text = \lyricmode {
  This old man, | he played one, | He played knick -- knack |
  on my thumb, With a | knick -- knack pad -- dy wack, |
  give the dog a bone, | This old man came | roll -- ing home.
}

\new PianoStaff <<
    \new Staff { \upper }
    \addlyrics { \text }
    \new Staff { \lower }
  >>
