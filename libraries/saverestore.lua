--- The saverestore library contains functions relating to the singleplayer save system built into the game.  
_G.saverestore = {}
---  client|server
--- Adds a restore/load hook for the Half-Life 2 save system.  
--- @param identifier string @The unique identifier for this hook.
--- @param callback function @The function to be called when an engine save is being loaded
function saverestore.AddRestoreHook(identifier, callback)
end

---  client|server
--- Adds a save hook for the Half-Life 2 save system. You can this to carry data through level transitions in Half-Life 2.  
--- @param identifier string @The unique identifier for this hook.
--- @param callback function @The function to be called when an engine save is being saved
function saverestore.AddSaveHook(identifier, callback)
end

---  client|server
--- Loads Entity:GetTable from the save game file that is being loaded and merges it with the given entitys Entity:GetTable.  
--- @param ent Entity @The entity which will receive the loaded values from the save.
--- @param save IRestore @The restore object to read the Entity:GetTable from.
function saverestore.LoadEntity(ent, save)
end

---  client|server
--- Reads a table from the save game file that is being loaded.  
--- @param save IRestore @The restore object to read the table from.
--- @return table @The table that has been read, if any
function saverestore.ReadTable(save)
end

---  client|server
--- Loads a variable from the save game file that is being loaded.  
--- Variables will be read in the save order you have saved them.  
--- @param save IRestore @The restore object to read variables from.
--- @return any @The variable that was read, if any.
function saverestore.ReadVar(save)
end

---  client|server
--- Saves entitys Entity:GetTable to the save game file that is being saved.  
--- @param ent Entity @The entity to save Entity:GetTable of.
--- @param save ISave @The save object to save Entity:GetTable to.
function saverestore.SaveEntity(ent, save)
end

---  client|server
--- Returns how many writable keys are in the given table.  
--- @param table table @The table to test.
--- @return number @The number of keys that can be written with saverestore.WriteTable.
function saverestore.WritableKeysInTable(table)
end

---  client|server
--- Write a table to a save game file that is being saved.  
--- @param table table @The table to write
--- @param save ISave @The save object to write the table to.
function saverestore.WriteTable(table, save)
end

---  client|server
--- Writes a variable to the save game file that is being saved.  
--- @param value any @The value to save
--- @param save ISave @The save object to write the variable to.
function saverestore.WriteVar(value, save)
end

