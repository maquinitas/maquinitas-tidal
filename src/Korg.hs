-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg where

  import Sound.Tidal.Params
  import Sound.Tidal.Pattern

  volcaBeats :: Pattern String -> ControlPattern
  volcaBeats = n . (subtract 60 . volcaBeatsMidiNote <$>)

  volcaBeatsMidiNote :: Num a => String -> a
  volcaBeatsMidiNote "bd" = 36
  volcaBeatsMidiNote "sd" = 38
  volcaBeatsMidiNote "lt" = 43
  volcaBeatsMidiNote "ht" = 50
  volcaBeatsMidiNote "ch" = 42
  volcaBeatsMidiNote "oh" = 46
  volcaBeatsMidiNote "cp" = 39
  volcaBeatsMidiNote "cl" = 75
  volcaBeatsMidiNote "ag" = 67
  volcaBeatsMidiNote "cr" = 49
  volcaBeatsMidiNote "ht" = 50

  -- Korg MR-16 drum machine
  mr16 :: Pattern String -> ControlPattern
  mr16 = n . (subtract 60 . mr16MidiNote <$>)
  mr16MidiNote :: Num a => String -> a
  -- bass drum
  mr16MidiNote "bd" = 35
  -- rimshot
  mr16MidiNote "rs" = 37
  -- snare drum
  mr16MidiNote "sd" = 38
  -- clap
  mr16MidiNote "cp" = 39
  -- low tom
  mr16MidiNote "lt" = 41
  -- closed hihat
  mr16MidiNote "ch" = 42
  -- open hihat
  mr16MidiNote "oh" = 46
  -- high tom
  mr16MidiNote "ht" = 47
  -- crash
  mr16MidiNote "cr" = 49
  -- ride
  mr16MidiNote "rd" = 51
  -- low conga
  mr16MidiNote "lc" = 52
  -- high conga
  mr16MidiNote "hc" = 53
  -- tambourine
  mr16MidiNote "ta" = 54
  -- cow bell
  mr16MidiNote "cb" = 56
  -- timbale
  mr16MidiNote "ti" = 57
  -- cabasa
  mr16MidiNote "ca" = 58
  -- wood block
  mr16MidiNote "wb" = 60
  -- low agogo
  mr16MidiNote "la" = 61
  -- high agogo
  mr16MidiNote "ha" = 63
  -- metronome piano
  mr16MidiNote "mp" = 64
  -- metronome forte
  mr16MidiNote "mf" = 65
