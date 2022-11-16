-- maquinitas-tidal

module Korg.MR16 where

  import Korg.KorgBase
  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- MIDI notes
  -- Korg MR-16 drum machine

  mr16 :: Pattern String -> ControlPattern
  mr16 = Sound.Tidal.Params.n . (subtract 60 . mr16MidiNote <$>)
  
  mr16MidiNote :: Num a => String -> a
  mr16MidiNote m =
    case m of
      "bd" -> 35 -- bass drum
      "rs" -> 37 -- rimshot
      "sd" -> 38 -- snare drum
      "cp" -> 39 -- clap
      "lt" -> 41 -- low tom
      "ch" -> 42 -- closed hihat
      "oh" -> 46 -- open hihat
      "ht" -> 47 -- high tom
      "cr" -> 49 -- crash
      "rd" -> 51 -- ride
      "lc" -> 52 -- low conga
      "hc" -> 53 -- high conga
      "ta" -> 54 -- tambourine
      "cb" -> 56 -- cow bell
      "ti" -> 57 -- timbale
      "ca" -> 58 -- cabasa
      "wb" -> 60 -- wood block
      "la" -> 61 -- low agogo
      "ha" -> 63 -- high agogo
      "mp" -> 64 -- metronome piano
      "mf" -> 65 -- metronome forte
      _    -> 0  -- no match
