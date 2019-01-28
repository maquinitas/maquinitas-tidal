// starting tidalcycles
// install SuperDirt
include("SuperDirt");
// start SuperDirt
SuperDirt.start;

// based on code and instructions at
// http://blog.tidalcycles.org/superdirt-midi/

// start MIDIClient
MIDIClient.init;

// connect your MIDI device
// replace xx and yy with corresponding MIDI ports
var nameMIDIDestLeft = "xx";
var nameMIDIDestRight = "yy";
// store result in variable called zz
~zz = MIDIOut.newByName(nameMIDIDestLeft, nameMIDIDestRight);

// route zz to a name in tidal
~dirt.soundLibrary.addMIDI(\tidalName, ~zz);

// optional, define latency of zz
// ~zz.latency = 0.45;
