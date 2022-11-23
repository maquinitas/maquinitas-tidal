-- maquinitas-tidal
-- parameters for instruments by Roland

module Roland where
  import Sound.Tidal.Params
  import Sound.Tidal.Pattern
  
  -- i copied this from volcaBeats
  -- where this notation was used for midi notes
  -- so this needs to be adapted to CC
  sh01a :: Pattern String -> ControlPattern
  sh01a = n . (subtract 60 . sh01aMidiCC <$>)

  sh01aMidiCC :: Num a => String -> a
  sh01aMidiCC "modulation" = 1
  sh01aMidiCC "lfoRate" = 3
  sh01aMidiCC "portamentoTime" = 5
  sh01aMidiCC "expressionPedal" = 11
  sh01aMidiCC "lfoWaveform" = 12
  sh01aMidiCC "vcoModDepth" = 13
  sh01aMidiCC "vcoRange" = 14
  sh01aMidiCC "vcoPulseWidth" = 15
  sh01aMidiCC "vcoPwmSource" = 16
  sh01aMidiCC "vcoModSens" = 17
  sh01aMidiCC "vcoBendDepth" = 18
  sh01aMidiCC "vcoPwmLevel" = 19
  sh01aMidiCC "vcoSawLevel" = 20
  sh01aMidiCC "vcoSubLevel" = 21
  sh01aMidiCC "vcoSubType" = 22
  sh01aMidiCC "vcoNoiseLevel" = 23
  sh01aMidiCC "vcfEnvDepth" = 24
  sh01aMidiCC "vcfModDepth" = 25
  sh01aMidiCC "vcfKeyFollow" = 26
  sh01aMidiCC "vcfBendDepth" = 27
  sh01aMidiCC "vcaEnvSw" = 28
  sh01aMidiCC "vcaEnvMode" = 29
  sh01aMidiCC "envSustain" = 30
  sh01aMidiCC "portamentMode" = 31
  sh01aMidiCC "hold" = 64
  sh01aMidiCC "portamento" = 65
  sh01aMidiCC "vcfResonance" = 71
  sh01aMidiCC "envRelease" = 72
  sh01aMidiCC "envAttack" = 73
  sh01aMidiCC "vcfCutoff" = 74
  sh01aMidiCC "envDecay" = 75
  sh01aMidiCC "tune" = 76
  sh01aMidiCC "transposeSw" = 77
  sh01aMidiCC "noiseMode" = 78
  sh01aMidiCC "lfoMode" = 79
  sh01aMidiCC "assignMode" = 80
  sh01aMidiCC "chordVoice2Sw" = 81
  sh01aMidiCC "chordVoice3Sw" = 82
  sh01aMidiCC "chordVoice4Sw" = 83
  sh01aMidiCC "chordVoice2KeyShift" = 85
  sh01aMidiCC "chordVoice3KeyShift" = 86
  sh01aMidiCC "chordVoice4KeyShift" = 87

  -- TODO: also needs to be adapted
  tr08 :: Pattern String -> ControlPattern
  tr08 = n . (subtract 60 . tr08MidiCC <$>)

  tr08MidiCC "bdTune" = 20
  tr08MidiCC "bdTone" = 21
  tr08MidiCC "bdComp" = 22
  tr08MidiCC "bdDecay" = 23
  tr08MidiCC "bdLevel" = 24
  tr08MidiCC "sdTone" = 25
  tr08MidiCC "sdSnappy" = 26
  tr08MidiCC "sdComp" = 27
  tr08MidiCC "sdDecay" = 28
  tr08MidiCC "sdLevel" = 29
  tr08MidiCC "ltTune" = 46
  tr08MidiCC "ltDecay" = 47
  tr08MidiCC "ltLevel" = 48
  tr08MidiCC "mtTune" = 49
  tr08MidiCC "mtDecay" = 50
  tr08MidiCC "mtLevel" = 51
  tr08MidiCC "htTune" = 52
  tr08MidiCC "htDecay" = 53
  tr08MidiCC "htLevel" = 54
  tr08MidiCC "rsTune" = 55
  tr08MidiCC "rsDecay" = 56
  tr08MidiCC "rsLevel" = 57
  tr08MidiCC "cpTune" = 58
  tr08MidiCC "cpDecay" = 59
  tr08MidiCC "cpLevel" = 60
  tr08MidiCC "chTune" = 61
  tr08MidiCC "chDecay" = 62
  tr08MidiCC "chLevel" = 63
  tr08MidiCC "accent" = 71
  tr08MidiCC "ohTune" = 80
  tr08MidiCC "ohDecay" = 81
  tr08MidiCC "ohLevel" = 82
  tr08MidiCC "cyTune" = 83
  tr08MidiCC "cyDecay" = 84
  tr08MidiCC "cyLevel" = 85
  tr08MidiCC "cbTune" = 86
  tr08MidiCC "cbDecay" = 87
  tr08MidiCC "cbLevel" = 88