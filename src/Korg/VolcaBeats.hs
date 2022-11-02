-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg.VolcaBeats where

  import Korg.KorgBase
  import Sound.Tidal.Params
  import Sound.Tidal.Pattern 

  midiNote :: Pattern String -> ControlPattern
  midiNote = n . (subtract 60 . volcaBeatsMidiNote <$>)

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


  -- ccv xx # ccn yy
  -- ccn: cc param number
  -- ccv: cc value (0 to 127)

  ccn_num_1 m =
    ([ 1 | m == "aa" ] ++
    [ 2 | m == "bb" ] ++
    [ 3 | m == "cc" ] ++
    [ 4 | m == "dd" ] ++
    [ 5 ])!!0

  ccn_num_2 m
    | m == "aa" = 1
    | m == "bb" = 2
    | m == "cc" = 3
    | m == "dd" = 4
    | otherwise = 5
  
  -- ccn_num :: Pattern String -> ControlPattern
  ccn_num m =
    case m of
      "aa" -> 1
      "bb" -> 2
      "cc" -> 3
      "dd" -> 4
      _ -> 5
    
  ccparam m v = "ccv " ++ (show v) ++ " # ccn " ++ (show (ccn_num m))
