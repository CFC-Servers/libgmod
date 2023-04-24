--- The hook library allows you to add hooks called by the game engine, allowing multiple scripts to modify game function.  
_G.hook = {}
--- Add a hook to be called upon the given event occurring.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/hook.lua:23:42
--- @param eventName string @The event to hook on to
--- @param identifier any @The unique identifier, usually a string
--- @param func function @The function to be called, arguments given to it depend on the identifier used
function hook.Add(eventName, identifier, func)
end

--- Calls all hooks associated with the given event until one returns something other than `nil`, and then returns that data.  
--- In almost all cases, you should use hook.Run instead - it calls hook.Call internally but supplies the gamemode table by itself, making your code neater.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/hook.lua:74:137
--- @param eventName string @The event to call hooks for.
--- @param gamemodeTable table @If the gamemode is specified, the gamemode hook within will be called, otherwise not.
--- @param ... any ... @The arguments to be passed to the hooks.
--- @return any ... @Return data from called hooks
function hook.Call(eventName, gamemodeTable, ...)
end

--- Returns a list of all the hooks registered with hook.Add.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/hook.lua:15:21
--- @return table @A table of tables
function hook.GetTable()
end

--- Removes the hook with the supplied identifier from the given event.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/hook.lua:45:61
--- @param eventName string @The event name.
--- @param identifier any @The unique identifier of the hook to remove, usually a string.
function hook.Remove(eventName, identifier)
end

--- Calls all hooks associated with the given event **until** one returns something other than `nil` and then returns that data. If no hook returns any data, it will try to call the `GAMEMODE:<eventname>`; alternative, if one exists.  
--- This function internally calls hook.Call.  
--- See also: gamemode.Call - same as this, but does not call hooks if the gamemode hasn't defined the function.  
--- </eventname>  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/hook.lua:64:71
--- @param eventName string @The event to call hooks for.
--- @param ... any ... @The arguments to be passed to the hooks.
--- @return any @Returned data from called hooks.
function hook.Run(eventName, ...)
end
