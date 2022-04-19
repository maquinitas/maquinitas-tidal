// starting tidalcycles

// based on code and instructions at
// http://blog.tidalcycles.org/superdirt-midi/

// start MIDIClient
MIDIClient.init;

// connect your MIDI device
// replace xx and yy with corresponding MIDI ports
var nameMIDIDestLeft = "FastLane USB";
var nameMIDIDestRight = "Port A";
// store result in variable called zz
~midiOut = MIDIOut.newByName(nameMIDIDestLeft, nameMIDIDestRight);

// route zz to a name in tidal
~dirt.soundLibrary.addMIDI(\midi, ~midiOut);

// optional, define latency of zz
// ~zz.latency = 0.45;