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
      "1" -> 36
      "2" -> 35
      "3" -> 38
      "4" -> 40
      "5" -> 42
      "6" -> 37
      "7" -> 39
      "8" -> 56
      "9" -> 44
      "10" -> 46
      "11" -> 50
      "12" -> 48
      "13" -> 45
      "14" -> 41
      "15" -> 52
      "16" -> 49
      "17" -> 57
      "18" -> 55
      "19" -> 53
      "20" -> 51
      _    -> 0  -- no match

  
  -- Drum machine 2
  
  drum2 :: Pattern String -> ControlPattern
  drum2 = Sound.Tidal.Params.n . (subtract 60 . drum2midi <$>)
  
  drum2midi :: Num a => String -> a
  drum2midi m =
    case m of
      "1" -> 60
      "2" -> 61
      "3" -> 62
      "4" -> 63
      "5" -> 64
      "6" -> 54
      "7" -> 91
      "8" -> 95
      "9" -> 96
      "10" -> 97
      "11" -> 69
      "12" -> 94
      "13" -> 70
      "14" -> 82
      "15" -> 92
      "16" -> 89
      "17" -> 90
      "18" -> 93
      "19" -> 84
      "20" -> 59
      _    -> 0  -- no match

  -- Drum machine 3
  
  drum3 :: Pattern String -> ControlPattern
  drum3 = Sound.Tidal.Params.n . (subtract 60 . drum3midi <$>)
  
  drum3midi :: Num a => String -> a
  drum3midi m =
    case m of
      "1" -> 86
      "2" -> 87
      "3" -> 78
      "4" -> 79
      "5" -> 83
      "6" -> 76
      "7" -> 77
      "8" -> 85
      "9" -> 66
      "10" -> 65
      "11" -> 71
      "12" -> 72
      "13" -> 75
      "14" -> 67
      "15" -> 68
      "16" -> 73
      "17" -> 74
      "18" -> 58
      "19" -> 80
      "20" -> 81
      _    -> 0  -- no match