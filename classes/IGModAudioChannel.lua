--- A sound channel returned by a callback of sound.PlayURL and sound.PlayFile.  
--- @class IGModAudioChannel
local IGModAudioChannel = {}
---  client
--- Enables or disables looping of audio channel, requires noblock flag.  
--- @param enable boolean @Enable or disable looping of this audio channel.
function IGModAudioChannel:EnableLooping(enable)
end

---  client
--- Computes the [DFT (discrete Fourier transform)](https://en.wikipedia.org/wiki/Discrete_Fourier_transform) of the sound channel.  
--- The size parameter specifies the number of consecutive audio samples to use as the input to the DFT and is restricted to a power of two. A [Hann window](https://en.wikipedia.org/wiki/Hann_function) is applied to the input data.  
--- The computed DFT has the same number of frequency bins as the number of samples. Only half of this DFT is returned, since [the DFT magnitudes are symmetric for real input data](https://en.wikipedia.org/wiki/Discrete_Fourier_transform#The_real-input_DFT). The magnitudes of the DFT (values from 0 to 1) are used to fill the output table, starting at index 1.  
--- **Visualization protip:** For a size N DFT, bin k (1-indexed) corresponds to a frequency of (k - 1) / N * sampleRate.  
--- **Visualization protip:** Sound energy is proportional to the square of the magnitudes. Adding magnitudes together makes no sense physically, but adding energies does.  
--- **Visualization protip:** The human ear works on a logarithmic amplitude scale. You can convert to [decibels](https://en.wikipedia.org/wiki/Decibel) by taking 20 * math.log10 of frequency magnitudes, or 10 * math.log10 of energy. The decibel values will range from -infinity to 0.  
--- @param tbl table @The table to output the DFT magnitudes (numbers between 0 and 1) into
--- @param size number @The number of samples to use
--- @return number @The number of frequency bins that have been filled in the output table.
function IGModAudioChannel:FFT(tbl, size)
end

---  client
--- Returns 3D cone of the sound channel. See IGModAudioChannel:Set3DCone.  
--- @return number @The angle of the inside projection cone in degrees.
--- @return number @The angle of the outside projection cone in degrees.
--- @return number @The delta-volume outside the outer projection cone.
function IGModAudioChannel:Get3DCone()
end

---  client
--- Returns if the sound channel is currently in 3D mode or not. This value will be affected by IGModAudioChannel:Set3DEnabled.  
--- @return boolean @Is currently 3D or not.
function IGModAudioChannel:Get3DEnabled()
end

---  client
--- Returns 3D fade distances of a sound channel.  
--- @return number @The minimum distance
--- @return number @The maximum distance
function IGModAudioChannel:Get3DFadeDistance()
end

---  client
--- Returns the average bit rate of the sound channel.  
--- @return number @The average bit rate of the sound channel.
function IGModAudioChannel:GetAverageBitRate()
end

---  client
--- Retrieves the number of bits per sample of the sound channel.  
--- Doesn't work for mp3 and ogg files.  
--- @return number @Number of bits per sample, or 0 if unknown.
function IGModAudioChannel:GetBitsPerSample()
end

---  client
--- Returns the filename for the sound channel.  
--- @return string @The file name
function IGModAudioChannel:GetFileName()
end

---  client
--- Returns the length of sound played by the sound channel in seconds.  
--- @return number @The length of the sound
function IGModAudioChannel:GetLength()
end

---  client
--- Returns the right and left levels of sound played by the sound channel.  
--- @return number @The left sound level
--- @return number @The right sound level
function IGModAudioChannel:GetLevel()
end

---  client
--- Gets the relative volume of the left and right channels.  
--- @return number @Relative volume between the left and right channels
function IGModAudioChannel:GetPan()
end

---  client
--- Returns the playback rate of the sound channel.  
--- @return number @The current playback rate of the sound channel
function IGModAudioChannel:GetPlaybackRate()
end

---  client
--- Returns position of the sound channel  
--- @return Vector @The position of the sound channel, previously set by IGModAudioChannel:SetPos
function IGModAudioChannel:GetPos()
end

---  client
--- Returns the sample rate for currently playing sound.  
--- @return number @The sample rate in Hz
function IGModAudioChannel:GetSamplingRate()
end

---  client
--- Returns the state of a sound channel  
--- @return number @The state of the sound channel, see Enums/GMOD_CHANNEL
function IGModAudioChannel:GetState()
end

---  client
--- Retrieves HTTP headers from a bass stream channel created by sound.PlayURL, if available.  
--- @return table @Returns a table of HTTP headers.<br>Returns nil if no information is available.
function IGModAudioChannel:GetTagsHTTP()
end

---  client
--- Retrieves the ID3 version 1 info from a bass channel created by sound.PlayFile or sound.PlayURL, if available.  
--- ID3v2 is not supported.  
--- @return table @Returns a table containing the information
function IGModAudioChannel:GetTagsID3()
end

---  client
--- Retrieves meta stream info from a bass stream channel created by sound.PlayURL, if available.  
--- @return string @Returns a string containing the information
function IGModAudioChannel:GetTagsMeta()
end

---  client
--- Retrieves OGG media info tag, from a bass channel created by sound.PlayURL or sound.PlayFile, if available.  
--- @return table @Returns a table containing the information
function IGModAudioChannel:GetTagsOGG()
end

---  client
--- Retrieves OGG Vendor tag, usually containing the application that created the file, from a bass channel created by sound.PlayURL or sound.PlayFile, if available.  
--- @return string @Returns a string containing the information
function IGModAudioChannel:GetTagsVendor()
end

---  client
--- Returns the current time of the sound channel in seconds  
--- @return number @The current time of the stream
function IGModAudioChannel:GetTime()
end

---  client
--- Returns volume of a sound channel  
--- @return number @The volume of the sound channel
function IGModAudioChannel:GetVolume()
end

---  client
--- Returns if the sound channel is in 3D mode or not.  
--- @return boolean @Is 3D or not.
function IGModAudioChannel:Is3D()
end

---  client
--- Returns whether the audio stream is block streamed or not.  
--- @return boolean @Is the audio stream block streamed or not.
function IGModAudioChannel:IsBlockStreamed()
end

---  client
--- Returns if the sound channel is looping or not.  
--- @return boolean @Is looping or not.
function IGModAudioChannel:IsLooping()
end

---  client
--- Returns if the sound channel is streamed from the Internet or not.  
--- @return boolean @Is online or not.
function IGModAudioChannel:IsOnline()
end

---  client
--- Returns if the sound channel is valid or not.  
--- @return boolean @Is the sound channel valid or not
function IGModAudioChannel:IsValid()
end

---  client
--- Pauses the stream. It can be started again using IGModAudioChannel:Play  
function IGModAudioChannel:Pause()
end

---  client
--- Starts playing the stream.  
function IGModAudioChannel:Play()
end

---  client
--- Sets 3D cone of the sound channel.  
--- @param innerAngle number @The angle of the inside projection cone in degrees
--- @param outerAngle number @The angle of the outside projection cone in degrees
--- @param outerVolume number @The delta-volume outside the outer projection cone
function IGModAudioChannel:Set3DCone(innerAngle, outerAngle, outerVolume)
end

---  client
--- Sets the 3D mode of the channel. This will affect IGModAudioChannel:Get3DEnabled but not IGModAudioChannel:Is3D.  
--- This feature **requires** the channel to be initially created in 3D mode, i.e. IGModAudioChannel:Is3D should return true or this function will do nothing.  
--- @param enable boolean @true to enable, false to disable 3D.
function IGModAudioChannel:Set3DEnabled(enable)
end

---  client
--- Sets 3D fade distances of a sound channel.  
--- @param min number @The minimum distance
--- @param max number @The maximum distance
function IGModAudioChannel:Set3DFadeDistance(min, max)
end

---  client
--- Sets the relative volume of the left and right channels.  
--- @param pan number @Relative volume between the left and right channels
function IGModAudioChannel:SetPan(pan)
end

---  client
--- Sets the playback rate of the sound channel. May not work with high values for radio streams.  
--- @param rate number @Playback rate to set to
function IGModAudioChannel:SetPlaybackRate(rate)
end

---  client
--- Sets position of sound channel in case the sound channel has a 3d option set.  
--- @param pos Vector @The position to put the sound into
--- @param dir? Vector @The direction of the sound
function IGModAudioChannel:SetPos(pos, dir)
end

---  client
--- Sets the sound channel to specified time ( Rewind to that position of the song ). Does not work on online radio streams.  
--- Streamed sounds must have "noblock" parameter for this to work and IGModAudioChannel:IsBlockStreamed must return false.  
--- @param secs number @The time to set the stream to, in seconds.
--- @param dont_decode? boolean @Set to true to skip decoding to set time, and instead just seek to it which is faster
function IGModAudioChannel:SetTime(secs, dont_decode)
end

---  client
--- Sets the volume of a sound channel  
--- @param volume number @Volume to set
function IGModAudioChannel:SetVolume(volume)
end

---  client
--- Stop the stream. It can be started again using IGModAudioChannel:Play.  
--- 🦟 **BUG**: [Calling this invalidates the IGModAudioChannel object rendering it unusable for further functions.](https://github.com/Facepunch/garrysmod-issues/issues/1497)  
function IGModAudioChannel:Stop()
end

