--- Used to ask player for various potentially dangerous permissions.  
_G.permissions = {}
---  client
--- Activates player's microphone as if they pressed the speak button themself. The player will be prompted with a confirmation window which grants permission temporarily/permanently(depending on checkbox state) for the connected server (revokable).  
--- This is used for TTT's traitor voice channel.  
--- @param enable boolean @Enable or disable voice activity
function permissions.EnableVoiceChat(enable)
end

