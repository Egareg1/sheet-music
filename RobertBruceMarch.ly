\version "2.22.1"

\language "français"

\header {
  title = "Rappelle-toi Jeanne"
  subtitle = "Marche de Robert Bruce"
  instrument = "Biniou braz"
  composer = "Inconnu"
  copyright = "E. Jaouen"
  % Supprimer le pied de page par défaut
  tagline = ##f
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key mib \major
  \numericTimeSignature
  \time 2/4
}

clarinet = \relative do' {
  \global
  \repeat volta 2 {
  sib4 sib8. lab16
  sib4 mib4
  ré8 do do sib
  do ré mib fa
  sol4 fa8. mib16
  mib8. fa16 sol8. fa16
  mib16 do8. do8. sib16
  sib2
  } \break
  
  \repeat volta 2
  {
   sol'4 sol8. fa16
   sol4 sib
   fa fa8. mib16
   fa4 sol8 lab
   sib16 sol8. fa mib16
   mib8. fa16 sol8. fa16
   mib16 do8. do sib16
   sib2
  }
 
 
  
}

\score {
  \new Staff \with {
    instrumentName = "Biniou"
    midiInstrument = "clarinet"
  } \clarinet
  \layout { }
  \midi {
    \tempo 4=100
  }
}
