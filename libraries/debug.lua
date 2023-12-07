_G.debug = {}
---  menu|client|server
--- Prints out the lua function call stack to the console.  
function debug.Trace()
end

---  menu|client|server
--- Returns the environment of the passed object. This can be set with debug.setfenv  
--- @param object table @Object to get environment of
--- @return table @Environment
function debug.getfenv(object)
end

---  menu|client|server
--- Used for getting variable values in an index from the passed function. This does nothing for C functions.  
--- @param func function @Function to get the upvalue indexed from.
--- @param index number @The index in the upvalue array
--- @return string @Name of the upvalue
--- @return any @Value of the upvalue.
function debug.getupvalue(func, index)
end

---  menu|client|server
--- Sets the object's metatable. Unlike Global.setmetatable, this function works regardless of whether the first object passed is a valid table or not; this function even works on primitive datatypes such as numbers, functions, and even nil.  
--- @param object any @Object to set the metatable for.
--- @param metatable table @The metatable to set for the object
--- @return boolean @true if the object's metatable was set successfully.
function debug.setmetatable(object, metatable)
end

---  menu|client|server
--- <removed>This function was removed due to security concerns.</removed>  
--- Returns an unique identifier for the upvalue indexed from func  
--- @param func function @The function to index the upvalue from
--- @param index number @The index from func
--- @return number @A unique identifier
function debug.upvalueid(func, index)
end

