_G.saverestore = {}
---  client|server
--- Adds a save hook for the Half-Life 2 save system. You can this to carry data through level transitions in Half-Life 2.  
--- @param identifier string @The unique identifier for this hook.
--- @param callback function @The function to be called when an engine save is being saved
function saverestore.AddSaveHook(identifier, callback)
end

---  client|server
--- Loads a variable from the save game file that is being loaded.  
--- Variables will be read in the save order you have saved them.  
--- @param save IRestore @The restore object to read variables from.
--- @return any @The variable that was read, if any.
function saverestore.ReadVar(save)
end

