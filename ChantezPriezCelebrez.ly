\header {
  title = "Chantez, priez, célébrez le Seigneur"
  composer = "-"
}
\language "italiano"

VoiceOne = \relative do' {
  \clef "treble" \key re \major
  \numericTimeSignature \time 4/4
  | re4. la8 (la4) re
  | mi4. re8 (re4) mi
  | fad4. sol8 (sol4) fad
  | mi1
  | si'4. la8 (la4) sol
  | fad2 mi
  | re4. sol8 (sol4) fad
  | fad2 mi2
  | re4. la8 (la4) re
  | mi4. re8 (re4) mi
  | fad4. re8 (re4) mi
  | la1
  | si4. la8 (la4) sol
  | fad2 mi
  | sol4. fad8 (fad4) re
  | re1 \bar "||"

  | mi4. la8 (la4) fad
  | fad2 mi4 re
  | mi4. la8 (la4) fad
  | fad2 re
  | sol fad
  | mi re
  | sol la4 la
  | la1
  | mi4. la8 (la4) fad
  | fad2 mi4 re
  | mi4. la8 (la4) fad
  | fad2 re
  | sol fad
  | mi re
  | sol la4 la
  | la1
  \bar "|."
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
