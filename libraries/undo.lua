--- The undo library allows you to add custom entities to the undo list, allowing users to "undo" their creation with their undo (default: `Z`) key.  
_G.undo = {}
---  server
--- Begins a new undo entry  
--- @param name string @Name of the undo message to show to players
function undo.Create(name)
end

---  server
--- Processes an undo block (in table form). This is used internally by the undo manager when a player presses Z.  
--- You should use `gm_undo` or `gm_undonum *num*` console commands instead of calling this function directly.  
--- @param tab table @The undo block to process as an Structures/Undo
--- @return number @Number of removed entities
function undo.Do_Undo(tab)
end

---  server
--- Completes an undo entry, and registers it with the player's client  
--- @param NiceText string @Text that appears in the player's undo history
function undo.Finish(NiceText)
end

---  client|server
--- Serverside, returns a table containing all undo blocks of all players. Clientside, returns a table of the local player's undo blocks.  
--- ℹ **NOTE**: Serverside, this table's keys use Player:UniqueID to store a player's undo blocks.  
--- @return table @The undo table.
function undo.GetTable()
end

