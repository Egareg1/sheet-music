\header {
  title = "Sur les chemins de la vie"
  composer = "-"
}
\language "italiano"

VoiceOne = \relative do' {
  \clef "treble" \key fa \major
  \numericTimeSignature \time 12/8
  | re4. re4 fa8 la4 la8 sib4 la8~
  | la2. re4. do4 la8
  | sol4 sol8 fa4 re8~ re2. \bar "|."
}

\paper {
  ragged-last-bottom = ##t
}

\layout {
  indent = #0
  \set Score.skipBars = ##t
  ragged-last = ##f
}

\score {
  \new Staff {
    \VoiceOne
  }
}

\score {
  \new Staff {
    \transpose fa do' \VoiceOne
  }
}

