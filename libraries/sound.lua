--- Used primarily for adding new soundscript entries.  
_G.sound = {}
---  client|server
--- Creates a sound script. It can also override sounds, which seems to only work when set on the server.  
--- @param soundData table @The sounds properties
function sound.Add(soundData)
end

---  client|server
--- Overrides sounds defined inside of a txt file; typically used for adding map-specific sounds.  
--- @param filepath string @Path to the script file to load.
function sound.AddSoundOverrides(filepath)
end

---  server
--- Emits a sound hint to the game elements to react to, for example to repel or attract antlions.  
--- @param hint number @The hint to emit
--- @param pos Vector @The position to emit the hint at
--- @param volume number @The volume or radius of the hint
--- @param duration number @The duration of the hint in seconds
--- @param owner? Entity 
function sound.EmitHint(hint, pos, volume, duration, owner)
end

---  client
--- Creates a sound from a function.  
--- @param indentifier string @An unique identified for the sound
--- @param samplerate number @The sample rate of the sound
--- @param length number @The length in seconds of the sound to generate.
--- @param callback function @A function which will be called to generate every sample on the sound
function sound.Generate(indentifier, samplerate, length, callback)
end

---  server
--- Returns the most dangerous/closest sound hint based on given location and types of sounds to sense.  
--- @param types number @The types of sounds to choose from
--- @param pos Vector @The position to sense sounds at.
--- @return table @A table with SoundHintData structure or `nil` if no sound hints are nearby.
function sound.GetLoudestSoundHint(types, pos)
end

---  client|server
--- Returns properties of the soundscript.  
--- @param name string @The name of the sound script
--- @return table @The properties of the soundscript
function sound.GetProperties(name)
end

---  client|server
--- Returns a list of all registered sound scripts.  
--- @return table @The list/array of all registered sound scripts ( No other information is provided )
function sound.GetTable()
end

---  client|server
--- Plays a sound from the specified position in the world.  
--- If you want to play a sound without a position, such as a UI sound, use surface.PlaySound instead.  
--- @param Name string @A path to the sound
--- @param Pos Vector @Where the sound should play.
--- @param Level number @Sound level in decibels
--- @param Pitch number @The sound pitch
--- @param Volume number @Output volume of the sound in range 0 to 1.
function sound.Play(Name, Pos, Level, Pitch, Volume)
end

---  client
--- Plays a file from GMod directory. You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)  
--- For external file/stream playback, see sound.PlayURL.  
--- 🦟 **BUG**: [This fails for looping .wav files in 3D mode.](https://github.com/Facepunch/garrysmod-issues/issues/1752)  
--- 🦟 **BUG**: [This fails with unicode file names.](https://github.com/Facepunch/garrysmod-issues/issues/2304)  
--- @param path string @The path to the file to play
--- @param flags string @Flags for the sound
--- @param callback function @Callback function that is called as soon as the the stream is loaded
function sound.PlayFile(path, flags, callback)
end

---  client
--- Allows you to play external sound files, as well as online radio streams.  
--- You can find a list of all error codes [here](http://www.un4seen.com/doc/#bass/BASS_ErrorGetCode.html)  
--- For offline file playback, see sound.PlayFile.  
--- 🦟 **BUG**: [Due to a bug with [BASS](http://www.un4seen.com/), AAC codec streams cannot be played in 3D mode.](https://github.com/Facepunch/garrysmod-issues/issues/2296)  
--- @param url string @The URL of the sound to play
--- @param flags string @Flags for the sound
--- @param callback function @Callback function that is called as soon as the the stream is loaded
function sound.PlayURL(url, flags, callback)
end
