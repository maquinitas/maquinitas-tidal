-- maquinitas-tidal
-- parameters for instruments by Korg

module ChaseBliss.TonalRecall where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . (ccnList <$>)
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "tone"                -> 14
      "mix"                 -> 15
      "rate"                -> 16
      "time"                -> 17
      "regen"               -> 18
      "depth"               -> 19
      "ramp"                -> 20

      "midiNoteDivisions"   -> 21
      "midiClockIgnore"     -> 51
      "tapSwitch"           -> 93

      "expression"          -> 100
      "bypassSwitch"        -> 102
      _                     -> 0
