_G.sound = {}
---  client|server
--- Plays a sound from the specified position in the world.  
--- If you want to play a sound without a position, such as a UI sound, use surface.PlaySound instead.  
--- This function is similar to Global.EmitSound, but with less options.  
--- @param snd string @The sound to play
--- @param pos Vector @Where the sound should play.
--- @param level? number @Sound level in decibels
--- @param pitch? number @The sound pitch
--- @param volume? number @Output volume of the sound in range 0 to 1.
function sound.Play(snd, pos, level, pitch, volume)
end

