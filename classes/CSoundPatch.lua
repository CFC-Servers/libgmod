--- @class CSoundPatch
local CSoundPatch = {}
---  client|server
--- Adjust the pitch, alias the speed at which the sound is being played.  
--- This invokes the GM:EntityEmitSound.  
--- @param pitch number @The pitch can range from 0-255
--- @param deltaTime? number @The time to fade from previous to the new pitch.
function CSoundPatch:ChangePitch(pitch, deltaTime)
end

---  client|server
--- Adjusts the volume of the sound played.  
--- Appears to only work while the sound is being played.  
--- @param volume number @The volume ranges from 0 to 1.
--- @param deltaTime? number @Time to fade the volume from previous to new value from.
function CSoundPatch:ChangeVolume(volume, deltaTime)
end

