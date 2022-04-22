-- maquinitas-tidal
-- parameters for instruments by Roland

module Roland where
  import Sound.Tidal.Params
  import Sound.Tidal.Pattern
  
  -- i copied this from volcaBeats
  -- where this notation was used for midi notes
  -- so this needs to be adapted to CC
  RolandSH01A :: Pattern String -> ControlPattern
  RolandSH01A = n . (subtract 60 . RolandSH01AMidiCC <$>)

  RolandSH01AMidiCC :: Num a => String -> a
  RolandSH01AMidiCC "modulation" = 1
  RolandSH01AMidiCC "lfoRate" = 3
  RolandSH01AMidiCC "portamentoTime" = 5
  RolandSH01AMidiCC "expressionPedal" = 11
  RolandSH01AMidiCC "lfoWaveform" = 12
  RolandSH01AMidiCC "vcoModDepth" = 13
  RolandSH01AMidiCC "vcoRange" = 14
  RolandSH01AMidiCC "vcoPulseWidth" = 15
  RolandSH01AMidiCC "vcoPwmSource" = 16
  RolandSH01AMidiCC "vcoModSens" = 17
  RolandSH01AMidiCC "vcoBendDepth" = 18
  RolandSH01AMidiCC "vcoPwmLevel" = 19
  RolandSH01AMidiCC "vcoSawLevel" = 20
  RolandSH01AMidiCC "vcoSubLevel" = 21
  RolandSH01AMidiCC "vcoSubType" = 22
  RolandSH01AMidiCC "vcoNoiseLevel" = 23
  RolandSH01AMidiCC "vcfEnvDepth" = 24
  RolandSH01AMidiCC "vcfModDepth" = 25
  RolandSH01AMidiCC "vcfKeyFollow" = 26
  RolandSH01AMidiCC "vcfBendDepth" = 27
  RolandSH01AMidiCC "vcaEnvSw" = 28
  RolandSH01AMidiCC "vcaEnvMode" = 29
  RolandSH01AMidiCC "envSustain" = 30
  RolandSH01AMidiCC "portamentMode" = 31
  RolandSH01AMidiCC "hold" = 64
  RolandSH01AMidiCC "portamento" = 65
  RolandSH01AMidiCC "vcfResonance" = 71
  RolandSH01AMidiCC "envRelease" = 72
  RolandSH01AMidiCC "envAttack" = 73
  RolandSH01AMidiCC "vcfCutoff" = 74
  RolandSH01AMidiCC "envDecay" = 75
  RolandSH01AMidiCC "tune" = 76
  RolandSH01AMidiCC "transposeSw" = 77
  RolandSH01AMidiCC "noiseMode" = 78
  RolandSH01AMidiCC "lfoMode" = 79
  RolandSH01AMidiCC "assignMode" = 80
  RolandSH01AMidiCC "chordVoice2Sw" = 81
  RolandSH01AMidiCC "chordVoice3Sw" = 82
  RolandSH01AMidiCC "chordVoice4Sw" = 83
  RolandSH01AMidiCC "chordVoice2KeyShift" = 85
  RolandSH01AMidiCC "chordVoice3KeyShift" = 86
  RolandSH01AMidiCC "chordVoice4KeyShift" = 87

  -- TODO: also needs to be adapted
  RolandTR08 :: Pattern String -> ControlPattern
  RolandTR08 = n . (subtract 60 . RolandTR08MidiCC <$>)

  RolandTR08MidiCC "bdTune" = 20
  RolandTR08MidiCC "bdTone" = 21
  RolandTR08MidiCC "bdComp" = 22
  RolandTR08MidiCC "bdDecay" = 23
  RolandTR08MidiCC "bdLevel" = 24
  RolandTR08MidiCC "sdTone" = 25
  RolandTR08MidiCC "sdSnappy" = 26
  RolandTR08MidiCC "sdComp" = 27
  RolandTR08MidiCC "sdDecay" = 28
  RolandTR08MidiCC "sdLevel" = 29
  RolandTR08MidiCC "ltTune" = 46
  RolandTR08MidiCC "ltDecay" = 47
  RolandTR08MidiCC "ltLevel" = 48
  RolandTR08MidiCC "mtTune" = 49
  RolandTR08MidiCC "mtDecay" = 50
  RolandTR08MidiCC "mtLevel" = 51
  RolandTR08MidiCC "htTune" = 52
  RolandTR08MidiCC "htDecay" = 53
  RolandTR08MidiCC "htLevel" = 54
  RolandTR08MidiCC "rsTune" = 55
  RolandTR08MidiCC "rsDecay" = 56
  RolandTR08MidiCC "rsLevel" = 57
  RolandTR08MidiCC "cpTune" = 58
  RolandTR08MidiCC "cpDecay" = 59
  RolandTR08MidiCC "cpLevel" = 60
  RolandTR08MidiCC "chTune" = 61
  RolandTR08MidiCC "chDecay" = 62
  RolandTR08MidiCC "chLevel" = 63
  RolandTR08MidiCC "accent" = 71
  RolandTR08MidiCC "ohTune" = 80
  RolandTR08MidiCC "ohDecay" = 81
  RolandTR08MidiCC "ohLevel" = 82
  RolandTR08MidiCC "cyTune" = 83
  RolandTR08MidiCC "cyDecay" = 84
  RolandTR08MidiCC "cyLevel" = 85
  RolandTR08MidiCC "cbTune" = 86
  RolandTR08MidiCC "cbDecay" = 87
  RolandTR08MidiCC "cbLevel" = 88