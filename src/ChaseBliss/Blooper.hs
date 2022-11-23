-- maquinitas-tidal
-- parameters for instruments by Korg

module ChaseBliss.Blooper where

  import qualified Sound.Tidal.Params
  import Sound.Tidal.Pattern

  -- ControlChange list

  ccn :: Pattern String -> ControlPattern
  ccn = Sound.Tidal.Params.ccn . (ccnList <$>)
  
  ccnList :: Num a => String -> a
  ccnList m =
    case m of
      "record"              -> 1
      "play"                -> 2
      "overdub"             -> 3
      "stop"                -> 4
      "undo"                -> 5
      "redo"                -> 6
      "erase"               -> 7
      "holdSwitchB"         -> 8

      "multiControl"        -> 11

      "volume"              -> 14
      "layers"              -> 15
      "repeats"             -> 16
      "knobModA"            -> 17
      "stability"           -> 18
      "knobModB"            -> 19
      "ramp"                -> 20

      "switchModA"          -> 21
      "looperMode"          -> 22
      "switchModB"          -> 23
      "previewSaveLoad"     -> 24

      "toogleModA"          -> 30
      "toogleModB"          -> 31

      "midiClockIgnore"     -> 51
      "ramping"             -> 52
      "noteDivisions"       -> 54

      "expression"          -> 100
      _                     -> 0
