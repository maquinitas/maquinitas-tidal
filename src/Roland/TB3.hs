-- maquinitas-tidal
-- parameters for instruments by Korg

module Roland.TB3 where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . (ccnList <$>)
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "padZ"          -> 1
      "padYplay"      -> 11
      "padXenvMod"    -> 12
      "padYenvMod"    -> 13
      "accent"        -> 16
      "effect"        -> 17
      "scatterType"   -> 68
      "scatterDepth"  -> 69
      "resonance"     -> 71
      "cutoff"        -> 74
      "patternSlide"  -> 102
      "patternAccent" -> 103
      "tuning"        -> 104
      _                 -> 0
