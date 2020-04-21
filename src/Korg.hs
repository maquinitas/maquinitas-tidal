-- maquinitas-tidal
-- parameters for instruments by Korg

module Korg where

  volcaBeats :: Pattern String -> ControlPattern
  volcaBeats = n . (substract 60 . drumN <$>)

  drumN :: Num a => String -> a
  drumN "bd" = 36
  drumN "sn" = 38
  drumN "lt" = 43
  drumN "ht" = 50
  drumN "ch" = 42
  drumN "oh" = 46
  drumN "cp" = 39
  drumN "cl" = 75
  drumN "ag" = 67
  drumN "cr" = 49
  drumN _ = 0

  -- notes
  test0 = 35
  test1 = 37
  test2 = 38
