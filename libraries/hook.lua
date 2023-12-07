_G.hook = {}
---  menu|client|server
--- Calls all hooks associated with the given event until one returns something other than `nil`, and then returns that data.  
--- In almost all cases, you should use hook.Run instead - it calls hook.Call internally but supplies the gamemode table by itself, making your code neater.  
--- @param eventName string @The event to call hooks for.
--- @param gamemodeTable table @If the gamemode is specified, the gamemode hook within will be called, otherwise not.
--- @param ... any ... @The arguments to be passed to the hooks.
--- @return any ... @Return data from called hooks
function hook.Call(eventName, gamemodeTable, ...)
end

