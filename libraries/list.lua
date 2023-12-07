--- The list library allows you add and retrieve values to and from lists. The list library is basically a fancy wrapper for a table, but with much more limited functionality. See Default Lists for a page of default Sandbox lists.  
_G.list = {}
---  menu|client|server
--- Returns the actual table of the list stored at identifier. Modifying this will affect the stored list  
--- @param identifier string @The list identifier
--- @return table @The actual list
function list.GetForEdit(identifier)
end

---  menu|client|server
--- Returns true if the list contains the given key.  
--- For a function that looks for values and not keys see list.Contains.  
--- @param list string @List to search through
--- @param key any @The key to test
--- @return boolean @Returns true if the list contains the key, false otherwise
function list.HasEntry(list, key)
end

