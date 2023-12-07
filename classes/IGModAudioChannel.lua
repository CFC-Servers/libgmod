--- A sound channel returned by a callback of sound.PlayURL and sound.PlayFile.  
--- @class IGModAudioChannel
local IGModAudioChannel = {}
---  client
--- Returns the buffered time of the sound channel in seconds, for online streaming sound channels. (sound.PlayURL)  
--- For offline channels this will be equivalent to IGModAudioChannel:GetLength.  
--- @return number @The current buffered time of the stream, in seconds.
function IGModAudioChannel:GetBufferedTime()
end

---  client
--- Returns if the sound channel is in 3D mode or not.  
--- @return boolean @Is 3D or not.
function IGModAudioChannel:Is3D()
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
--- Sets 3D cone of the sound channel.  
--- @param innerAngle number @The angle of the inside projection cone in degrees
--- @param outerAngle number @The angle of the outside projection cone in degrees
--- @param outerVolume number @The delta-volume outside the outer projection cone
function IGModAudioChannel:Set3DCone(innerAngle, outerAngle, outerVolume)
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
--- Sets position of sound channel in case the sound channel has a 3d option set.  
--- @param pos Vector @The position to put the sound into
--- @param dir? Vector @The direction of the sound
function IGModAudioChannel:SetPos(pos, dir)
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

