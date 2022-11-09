-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg.VolcaBass where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . (ccnList <$>)
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "slideTime"       -> 5
      "expression"      -> 11
      "octave"          -> 40
      "lfoRate"         -> 41
      "lfoInt"          -> 42
      "vcoPitch1"       -> 43
      "vcoPitch2"       -> 44
      "vcoPitch3"       -> 45
      "egAttack"        -> 46
      "egDecayRelease"  -> 47
      "cutoffEgInt"     -> 48
      "gateTime"        -> 49
      _                 -> 0
