--- The cleanup library allows you to control what happens to custom entities when the clean-up buttons are pressed in the Utilities tab of the Spawn menu (default Q).  
_G.cleanup = {}
--- Adds an entity to a player's cleanup list.  
--- @param pl Player @Who's cleanup list to add the entity to.
--- @param type string @The type of cleanup.
--- @param ent Entity @The entity to add to the player's cleanup list.
function cleanup.Add(pl, type, ent)
end

--- Gets the cleanup list.  
function cleanup.GetList()
end

--- Gets the table of cleanup types.  
--- @return table @A list of cleanup types.
function cleanup.GetTable()
end

--- Registers a new cleanup type.  
--- @param type string @Name of type.
function cleanup.Register(type)
end

--- Replaces one entity in the cleanup module with another  
--- @param from Entity @Old entity
--- @param to Entity @New entity
--- @return boolean @Whether any action was taken.
function cleanup.ReplaceEntity(from, to)
end

--- Repopulates the clients cleanup menu  
function cleanup.UpdateUI()
end

