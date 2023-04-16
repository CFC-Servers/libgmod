--- @class CSoundPatch
--- CSoundPatch class.  
--- Created with Global.CreateSound  
local CSoundPatch = {}
--- Adjust the pitch, alias the speed at which the sound is being played.  
--- This invokes the GM:EntityEmitSound.  
--- @param pitch number @The pitch can range from 0-255.
--- @param deltaTime number @The time to fade from previous to the new pitch.
function CSoundPatch:ChangePitch(pitch, deltaTime)
end

--- Adjusts the volume of the sound played.  
--- Appears to only work while the sound is being played.  
--- @param volume number @The volume ranges from 0 to 1.
--- @param deltaTime number @Time to fade the volume from previous to new value from.
function CSoundPatch:ChangeVolume(volume, deltaTime)
end

--- Fades out the volume of the sound from the current volume to 0 in the given amount of seconds.  
--- @param seconds number @Fade time.
function CSoundPatch:FadeOut(seconds)
end

--- Returns the DSP ( Digital Signal Processor ) effect for the sound.  
--- @return number @The DSP effects of the sound
function CSoundPatch:GetDSP()
end

--- Returns the current pitch.  
--- @return number @The current pitch, can range from 0-255.
function CSoundPatch:GetPitch()
end

--- Returns the current sound level.  
--- @return number @The current sound level, see Enums/SNDLVL.
function CSoundPatch:GetSoundLevel()
end

--- Returns the current volume.  
--- @return number @The current volume, ranging from 0 to 1.
function CSoundPatch:GetVolume()
end

--- Returns whenever the sound is being played.  
--- @return boolean @Is playing or not
function CSoundPatch:IsPlaying()
end

--- Starts to play the sound. This will reset the sound's volume and pitch to their default values. See CSoundPatch:PlayEx  
function CSoundPatch:Play()
end

--- Same as CSoundPatch:Play but with 2 extra arguments allowing to set volume and pitch directly.  
--- @param volume number @The volume ranges from 0 to 1.
--- @param pitch number @The pitch can range from 0-255.
function CSoundPatch:PlayEx(volume, pitch)
end

--- Sets the DSP (Digital Signal Processor) effect for the sound. Similar to Player:SetDSP but for individual sounds.  
--- 🦟 **BUG**: [This will only apply if the sound is not playing.](https://github.com/Facepunch/garrysmod-issues/issues/4086)  
--- @param dsp number @The DSP effect to set
function CSoundPatch:SetDSP(dsp)
end

--- Sets the sound level in decibel.  
--- @param level number @The sound level in decibel
function CSoundPatch:SetSoundLevel(level)
end

--- Stops the sound from being played.  
--- 🦟 **BUG**: [This will not work if the entity attached to this sound patch (specified by Global.CreateSound) is invalid.](https://github.com/Facepunch/garrysmod-issues/issues/3260)  
function CSoundPatch:Stop()
end

