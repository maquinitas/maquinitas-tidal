// starting tidalcycles
// install SuperDirt
include("SuperDirt");
//start SuperDirt
SuperDirt.start;

// based on code and instructions at
// http://blog.tidalcycles.org/superdirt-midi/

// start MIDIClient
MIDIClient.init;

// connect your MIDI device
var nameMIDIDestLeft = "Boutique SH-01A";
var nameMIDIDestRight = "Boutique SH-01A";
~midiOut = MIDIOut.newByName(nameMIDIDestinationLeft, rolandSH01A);

~dirt.soundLibrary.addMIDI(\midi, ~midiOut);

// define latency
~midiOut.latency = 0.45;
