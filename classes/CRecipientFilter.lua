--- @class CRecipientFilter
local CRecipientFilter = {}
---  server
--- Removes all players from the filter that are in [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") for given position.  
--- @param position Vector @The position to test
function CRecipientFilter:RemovePAS(position)
end

---  server
--- Removes the player from the recipient filter.  
--- @param Player Player @The player that should be in the recipient filter if you call this function.
function CRecipientFilter:RemovePlayer(Player)
end

