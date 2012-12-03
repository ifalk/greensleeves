\version "2.8.1"

#(set-global-staff-size 20)

global = {
  \key g \major
  \time 6/8
  \tempo "Slow" 4. = 58
}

% mBreak = { \break }
mBreak = { }

clarinetOne = \new Voice \relative c'' { 
% \transpose d' a {
  \set Staff.instrumentName = #"Clarinette 1 "
  r2. |
  r2. |
  r4. r4 e8 
  \repeat volta 2 {
    g4 a8 b8.( c16 b8) |
    a4 fis8 d8.( e16 fis8) |
    g4 e8 e8.( dis16 e8) |
    fis4 dis8 b4 \breathe e8 | %%% 7
    g4 a8 b8.( c16 b8) | 
    a4 fis8 d8.( e16 fis8) | 
    g8.( fis16 e8) dis8.( cis16 dis8) |
    e4 e8 e4 r8 |
    d'4. d8.( c16 b8) |
    a4 fis8 d8.( e16 fis8) | %%% 13
    g4 e8 e8.( dis16 e8) | 
    fis4 dis8 b4 r8 | 
    d'4. d8.( c16 b8) | 
    a4 fis8 d8.( e16 fis8) |
    g8.( fis16 e8) dis8.( cis16 dis8) |
    e4 e8 e4 r8 | %%% 19
    R2. |
    R2. | 
    R2. |
    r4. r4 e8 |
    g4 a8 b8.( c16 b8) |
    a4 fis8 d8.( e16 fis8) |
    g8.( fis16 e8) dis8.( cis16 dis8) | %%% 26
    e4 e8 e4 r8 |
    d'4. d8.( c16 b8) | 
    a4 fis8 d8.( e16 fis8) |
    g4 e8 e8.( dis16 e8) | 
    fis4 dis8 b4 r8 |
    d'4. d8.( c16 b8) | %%% 32
    a4 fis8 d8.( e16 fis8) |
    g8.( fis16 e8) dis8.( cis16 dis8)
  }
  \alternative {
    {e4. e8. r16 e8}
    {e4. e4. \fermata \bar "|."}
  }  
}


clarinetTwo = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Clarinette 2 "
  r4. r4 fis8 |
  g8.( fis16 e8) dis8.( cis16 dis8) |
  e4.~ e4 \breathe b8 
  \repeat volta 2 {
    e4 fis8 g4 e8 |
    e4. b4. |
    e4. b4 e8 |
    e4 b8~ b4. |
    e4 fis8 g4 e8 |
    d4. b4 b8 |
    e4 b8 a4 b8 |
    b4. b4 r8 |
    d4. g4. |
    d4.~ d8.( c16 b8) |
    d4. d4.|
    e4 b8 b4. | 
    d4. g4. |
    d4. c8.( b16 a8) |
    e'4 b8 a4 b8 |
    b4. b4 \breathe e,8 |
    g4 a8 b8.( c16 b8) |
    a4 fis8 d8.( e16 fis8) |
    g4 e8 e8.( dis16 e8) |
    fis4 dis8 b'4 a8 |
    e'2. |
    fis4 d8 a4 c8 |
    b4.~ b8.( a 16 b8) |
    c4. c4. |
    d4. g4. |
    d4.~ d8.( c16 b8) |
    b4. b4. |
    e4 b8 b4. |
    d4. g4. |
    d4. c8.( b16 a8) |
    e'4 b8 a4 b8 
  }
  \alternative {
    { b4. b4 r8 | }
    { b4. b4\fermata r8 \bar "|."}
  }
}

clarinetThree = \new Voice {
}

clarinetFour = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Clarinette B"
  r4. r4 b8 |
  b4 g8 b4 b8 |
  b4. e,4 \breathe g'8 
  \repeat volta 2 {
    g4 fis8 e4 g8 |
    fis4 a8 fis4 d8 |
    e4 fis8 g4 a8 |
    b4. fis4 \breathe a8 |
    g4 fis8 e4 g8 | 
    fis4 a8 b4 d,,8 |
    e4 g8 b4 b8~ |
    b4 g8 e4 r8 |
    g'8.( a16 b8~) b4 g8 |
    fis8.( g16 a8~) a4 fis8 |
    e8.( fis16 g8~) g4 a8 |
    b4. fis4 a8 |
    g8. ( a16 b8~) b4 g8 |
    d4. d4 d,8 |
    e4 g8 b4 b8 |
    g4 b8 e,4 \breathe b'8 |
    b4 a8 g8.( a16 b8) |
    d4 a8 fis4 d8 |
    e4 fis8 g8.( b16 c8) |
    b4. fis4 r8 |
    r2. |
    r2. |
    r2. | %%% 26
    a'4 g8 fis8.( e16 fis8) |
    g8.( a16 b8~) b4 g8 |
    fis8.( g16 a8~) a4 fis8 |
    e8.( fis16 g8~) g4 a8 |
    b4 r8 r4.|
    g8.( a16 b8~) b4 g8 | %%% 32
    d4. d4 d,8 |
    e4 g8 b4 b8~ |
  }
  \alternative {
    { b4 g8 e4 r8 | }
    { b'4. e,4\fermata r8 \bar "|."}
  }
}

music = {
  <<
    \tag #'score \tag #'clari1 \new Staff \with {midiInstrument = #"clarinet"} \transpose d' a { << \global \clarinetOne >> }
    \tag #'score \tag #'clari2 \new Staff \with {midiInstrument = #"clarinet"} \transpose d' a { << \global \clarinetTwo>> }
    \tag #'score \tag #'clari3 \new Staff \with {midiInstrument = #"clarinet"} \transpose d' a { << \global \clarinetThree>> }
    \tag #'score \tag #'clari4 \new Staff \with {midiInstrument = #"clarinet"} \transpose d' a { << \global \clarinetFour>> }
  >>
}

#(set-global-staff-size 14)
\score {
  \new StaffGroup \keepWithTag #'score \music
  \layout { }
  \midi { }
}




