-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg.VolcaKeys where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . (ccnList <$>)
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "portamento"      -> 5
      "expression"      -> 11
      "voice"           -> 40
      "octave"          -> 41
      "detune"          -> 42
      "vcoEgInt"        -> 43
      "cutoff"          -> 44
      "vcfEgInt"        -> 45
      "lfoRate"         -> 46
      "lfoPitchInt"     -> 47
      "lfoCutoffInt"    -> 48
      "egAttack"        -> 49
      "egDecayRelease"  -> 50
      "egSustain"       -> 51
      "delayTime"       -> 52
      "delayFeedback"   -> 53
      _                 -> 0
