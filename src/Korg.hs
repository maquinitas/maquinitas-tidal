-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg where

  import Sound.Tidal.Params
  import Sound.Tidal.Pattern

  volcaBeats :: Pattern String -> ControlPattern
  volcaBeats = n . (subtract 60 . volcaBeatsMidiNote <$>)

  volcaBeatsMidiNote :: Num a => String -> a
  volcaBeatsMidiNote "bd" = 36
  volcaBeatsMidiNote "sn" = 38
  volcaBeatsMidiNote "lt" = 43
  volcaBeatsMidiNote "ht" = 50
  volcaBeatsMidiNote "ch" = 42
  volcaBeatsMidiNote "oh" = 46
  volcaBeatsMidiNote "cp" = 39
  volcaBeatsMidiNote "cl" = 75
  volcaBeatsMidiNote "ag" = 67
  volcaBeatsMidiNote "cr" = 49
  volcaBeatsMidiNote _ = 0

  -- notes
  test0 = 35
  test1 = 37
  test2 = 38
