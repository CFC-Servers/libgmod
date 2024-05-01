--- The numpad module allows you to execute functions on a key press or release.  
_G.numpad = {}
---  server
--- Activates numpad key owned by the player  
--- @param ply Player @The player whose numpad should be simulated
--- @param key number @The key to press, see Enums/KEY
--- @param isButton? boolean @Should this keypress pretend to be a from a `gmod_button`? (causes numpad.FromButton to return `true`)
function numpad.Activate(ply, key, isButton)
end

---  server
--- Deactivates numpad key owned by the player  
--- @param ply Player @The player whose numpad should be simulated
--- @param key number @The key to press, corresponding to Enums/KEY
--- @param isButton? boolean @Should this keypress pretend to be a from a `gmod_button`? (causes numpad.FromButton to return `true`)
function numpad.Deactivate(ply, key, isButton)
end

---  server
--- Returns true during a function added with numpad.Register when the third argument to numpad.Activate is true.  
--- This is caused when a numpad function is triggered by a button SENT being used.  
--- @return boolean @wasButton
function numpad.FromButton()
end

---  server
--- Calls a function registered with numpad.Register when a player presses specified key.  
--- See for key released action: numpad.OnUp  
--- @param ply Player @The player whose numpad should be watched
--- @param key number @The key, corresponding to Enums/KEY
--- @param name string @The name of the function to run, corresponding with the one used in numpad.Register
--- @param ... any ... @Arguments to pass to the function passed to numpad.Register.
--- @return number @The impulse ID
function numpad.OnDown(ply, key, name, ...)
end

---  server
--- Calls a function registered with numpad.Register when a player releases specified key.  
--- See for key pressed action: numpad.OnDown  
--- @param ply Player @The player whose numpad should be watched
--- @param key number @The key, corresponding to Enums/KEY
--- @param name string @The name of the function to run, corresponding with the one used in numpad.Register
--- @param ... any ... @Arguments to pass to the function passed to numpad.Register.
--- @return number @The impulse ID
function numpad.OnUp(ply, key, name, ...)
end

---  server
--- Registers a numpad library action for use with numpad.OnDown and numpad.OnUp  
--- @param id string @The unique id of your action.
--- @param func function @The function to be executed
function numpad.Register(id, func)
end

---  server
--- Removes a function added by either numpad.OnUp or numpad.OnDown  
--- @param ID number @The impulse ID returned by numpad.OnUp or numpad.OnDown
function numpad.Remove(ID)
end

---  server
--- Either runs numpad.Activate or numpad.Deactivate depending on the key's current state  
--- @param ply Player @The player whose numpad should be simulated
--- @param key number @The key to press, corresponding to Enums/KEY
function numpad.Toggle(ply, key)
end

