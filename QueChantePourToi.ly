\header {
  title = "Que chante pour toi"
  composer = "-"
}
\language "italiano"

VoiceOne = \relative do' {
  \clef "treble" \key sol \major
  \numericTimeSignature \time 4/4
  | mi8 mi4 re8 mi fad sol4
  | la8 la4 sol8 fad mi re4
  | do8 do4 do8 si4 re
  | mi1 \break
  | mi8 mi4 re8 mi fad sol4
  | la8 la4 sol8 fad mi re4
  | do8 do4 do8 si4 re
  | mi2. fad4 \bar ".|:"
  \repeat volta 2 {
  | sol8 sol4 la8 si4 sol4
  | do8 do do si la4 fad4
  | si la sol mi
  }
  \alternative {
    { | la8 la la sol fad4 fad}
    { | la4 sol fad re
      | mi2. r4 \bar "|."}
  }
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

