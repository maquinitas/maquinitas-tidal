-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg.VolcaBeats where

  import Korg.KorgBase
  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- MIDI notes

  midiNote :: Pattern String -> ControlPattern
  midiNote = Sound.Tidal.Params.n . (subtract 60 . volcaBeatsMidiNote <$>)

  volcaBeatsMidiNote :: Num a => String -> a
  volcaBeatsMidiNote m =
    case m of
      "bd" -> 36
      "sd" -> 38
      "lt" -> 43
      "ht" -> 50
      "ch" -> 42
      "oh" -> 46
      "cp" -> 39
      "cl" -> 75
      "ag" -> 67
      "cr" -> 49
      _    -> 0

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

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . ( ccnList<$> )
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "kickLevel"   -> 40
      "snareLevel"  -> 41
      "loTomLevel"  -> 42
      "hiTomLevel"  -> 43
      "clHatLevel"  -> 44
      "opHatLevel"  -> 45
      "clapLevel"   -> 46
      "clavesLevel" -> 47
      "agogoLevel"  -> 48
      "crashLevel"  -> 49
      "clapSpeed"   -> 50
      "clavesSpeed" -> 51
      "agogoSpeed"  -> 52
      "crashSpeed"  -> 53
      "stutterTime" -> 54
      "stutterDepth"-> 55
      "tomDecay"    -> 56
      "closedHatDecay"  -> 57
      "openHatDecay"    -> 58
      "hatGrain"        -> 59
      _ -> 0
