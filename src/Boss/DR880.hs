-- maquinitas-tidal
-- parameters for instruments by Korg

module Boss.DR880 where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- Drum machine 1
  
  drum1 :: Pattern String -> ControlPattern
  drum1 = Sound.Tidal.Params.n . (subtract 60 . drum1midi <$>)
  
  drum1midi :: Num a => String -> a
  drum1midi m =
    case m of
      "kick1"         -> 36
      "kick2"         -> 35
      "snare1"        -> 38
      "snare2"        -> 40
      "closedHH"      -> 42
      "crossStick"    -> 37
      "clap"          -> 39
      "cowbell"       -> 56
      "pedalHH"       -> 44
      "openHH"        -> 46
      "tom1"          -> 50
      "tom2"          -> 48
      "tom3"          -> 45
      "tom4"          -> 41
      "chinaCym"      -> 52
      "crash1"        -> 49
      "crash2"        -> 57
      "splashCym"     -> 55
      "bell"          -> 53
      "ride"          -> 51
      _               -> 0  -- no match

  
  -- Drum machine 2
  
  drum2 :: Pattern String -> ControlPattern
  drum2 = Sound.Tidal.Params.n . (subtract 60 . drum2midi <$>)
  
  drum2midi :: Num a => String -> a
  drum2midi m =
    case m of
      "kick1"       -> 60
      "kick2"       -> 61
      "snare1"      -> 62
      "snare2"      -> 63
      "closedHH"    -> 64
      "crossStick"  -> 54
      "clap"        -> 91
      "cowbell"     -> 95
      "pedalHH"     -> 96
      "openHH"      -> 97
      "tom1"        -> 69
      "tom2"        -> 94
      "tom3"        -> 70
      "tom4"        -> 82
      "chinaCym"    -> 92
      "crash1"      -> 89
      "crash2"      -> 90
      "splashCym"   -> 93
      "bell"        -> 84
      "ride"        -> 59  
      _             -> 0  -- no match


  -- Drum machine 3
  
  drum3 :: Pattern String -> ControlPattern
  drum3 = Sound.Tidal.Params.n . (subtract 60 . drum3midi <$>)
  
  drum3midi :: Num a => String -> a
  drum3midi m =
    case m of
      "kick1"       -> 86
      "kick2"       -> 87
      "snare1"      -> 78
      "snare2"      -> 79
      "closedHH"    -> 83
      "crossStick"  -> 76
      "clap"        -> 77
      "cowbell"     -> 85
      "pedalHH"     -> 66
      "openHH"      -> 65
      "tom1"        -> 71
      "tom2"        -> 72
      "tom3"        -> 75
      "tom4"        -> 67
      "chinaCym"    -> 68
      "crash1"      -> 73
      "crash2"      -> 74
      "splashCym"   -> 58
      "bell"        -> 80
      "ride"        -> 81
      _             -> 0  -- no match