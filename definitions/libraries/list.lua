--- The list library allows you add and retrieve values to and from lists. The list library is basically a fancy wrapper for a table, but with much more limited functionality. See Default Lists for a page of default Sandbox lists.  
_G.list = {}
--- Adds an item to a named list  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:57:62
--- @param identifier string @The list identifier
--- @param item any @The item to add to the list
--- @return number @The index at which the item was added.
function list.Add(identifier, item)
end

--- Returns true if the list contains the value. (as a value - not a key)  
--- For a function that looks for a key and not a value see list.HasEntry.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:67:80
--- @param list string @List to search through
--- @param value any @The value to test
--- @return boolean @Returns true if the list contains the value, false otherwise
function list.Contains(list, value)
end

--- Returns a copy of the list stored at identifier  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:18:23
--- @param identifier string @The list identifier
--- @return table @The copy of the list
function list.Get(identifier)
end

--- Returns the actual table of the list stored at identifier. Modifying this will affect the stored list  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:28:33
--- @param identifier string @The list identifier
--- @return table @The actual list
function list.GetForEdit(identifier)
end

--- Returns a list of all lists currently in use.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:38:42
--- @return table @The list of all lists, i.e
function list.GetTable()
end

--- Returns true if the list contains the given key.  
--- For a function that looks for values and not keys see list.Contains.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:85:90
--- @param list string @List to search through
--- @param key any @The key to test
--- @return boolean @Returns true if the list contains the key, false otherwise
function list.HasEntry(list, key)
end

--- Sets a specific position in the named list to a value.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/list.lua:47:52
--- @param identifier string @The list identifier
--- @param key any @The key in the list to set
--- @param item any @The item to set to the list as key
function list.Set(identifier, key, item)
end
