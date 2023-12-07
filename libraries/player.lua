_G.player = {}
---  server
--- Similar to the serverside command "bot", this function creates a new Player bot with the given name. This bot will not obey to the usual "bot_*" commands, and it's the same bot base used in TF2 and CS:S.  
--- The best way to control the behaviour of a Player bot right now is to use the GM:StartCommand hook and modify its input serverside.  
--- ℹ **NOTE**: Despite this Player being fake, it has to be removed from the server by using Player:Kick and **NOT** Entity:Remove.  
--- Also keep in mind that these bots still use player slots, so you won't be able to spawn them in singleplayer!  
--- ℹ **NOTE**: Any Bot created using this method will be considered UnAuthed by Garry's Mod  
--- @param botName string @The name of the bot, using an already existing name will append brackets at the end of it with a number pertaining it
--- @return Player @The newly created Player bot
function player.CreateNextBot(botName)
end

---  client|server
--- Gets the player with the specified SteamID64.  
--- ⚠ **WARNING**: Internally this function iterates over all players in the server, meaning it can be quite expensive in a performance-critical context.  
--- @param steamID64 string @The Player:SteamID64 to find the player by.
--- @return Player @Player if one is found, false otherwise.
function player.GetBySteamID64(steamID64)
end

---  client|server
--- Returns a table containing all human players (non-bot/AI).  
--- Unlike player.GetAll, this does not include bots.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return table @A table containing all human (non-bot/AI) players.
function player.GetHumans()
end

