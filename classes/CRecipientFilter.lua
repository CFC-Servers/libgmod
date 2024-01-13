--- List of all possible functions to manipulate Recipient Filters. Can be created with Global.RecipientFilter.  
--- @class CRecipientFilter
local CRecipientFilter = {}
---  server
--- Adds all players to the recipient filter.  
function CRecipientFilter:AddAllPlayers()
end

---  server
--- Adds all players that are in the same [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") as this position.  
--- @param pos Vector @A position that players may be able to hear, usually the position of an entity the sound is playing played from.
function CRecipientFilter:AddPAS(pos)
end

---  server
--- Adds all players that are in the same [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") as this position.  
--- @param Position Vector @PVS position that players may be able to see.
function CRecipientFilter:AddPVS(Position)
end

---  server
--- Adds a player to the recipient filter  
--- @param Player Player @Player to add to the recipient filter.
function CRecipientFilter:AddPlayer(Player)
end

---  server
--- Adds players to the recipient filter from a given table or another recipient filter.  
--- @param input CRecipientFilter @The filter to add players from
function CRecipientFilter:AddPlayers(input)
end

---  server
--- Adds all players that are on the given team to the filter.  
--- @param teamid number @Team index to add players from.
function CRecipientFilter:AddRecipientsByTeam(teamid)
end

---  server
--- Returns the number of valid players in the recipient filter.  
--- @return number @Number of valid players in the recipient filter.
function CRecipientFilter:GetCount()
end

---  server
--- Returns a table of all valid players currently in the recipient filter.  
--- @return table @A table of all valid players currently in the recipient filter.
function CRecipientFilter:GetPlayers()
end

---  server
--- Removes all players from the recipient filter.  
function CRecipientFilter:RemoveAllPlayers()
end

---  server
--- Remove players from this recipient filter that are **NOT** present in a given table or recipient filter.  
--- @param input CRecipientFilter @The filter that contains a list of players to test against
function CRecipientFilter:RemoveMismatchedPlayers(input)
end

---  server
--- Removes all players from the filter that are in [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") for given position.  
--- @param position Vector @The position to test
function CRecipientFilter:RemovePAS(position)
end

---  server
--- Removes all players that can see this [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") from the recipient filter.  
--- @param pos Vector @Position that players may be able to see.
function CRecipientFilter:RemovePVS(pos)
end

---  server
--- Removes the player from the recipient filter.  
--- @param Player Player @The player that should be in the recipient filter if you call this function.
function CRecipientFilter:RemovePlayer(Player)
end

---  server
--- Remove players from this recipient filter that are present in a given table or recipient filter.  
--- @param input CRecipientFilter @The filter that contains a list of players to remove
function CRecipientFilter:RemovePlayers(input)
end

---  server
--- Removes all players that are on the given team from the filter.  
--- @param teamid number @Team index to remove players from.
function CRecipientFilter:RemoveRecipientsByTeam(teamid)
end

---  server
--- Removes all players that are not on the given team from the filter.  
--- @param teamid number @Team index.
function CRecipientFilter:RemoveRecipientsNotOnTeam(teamid)
end

