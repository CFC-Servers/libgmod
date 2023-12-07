--- The object used in the saverestore, mainly in saverestore.AddRestoreHook.  
--- It allows you to read blocks directly from the save game files used by Half-Life 2 save system when such save is loaded.  
--- @class IRestore
local IRestore = {}
---  client|server
--- Reads next bytes from the restore object as an Entity.  
--- @return Entity @The entity that has been read.
function IRestore:ReadEntity()
end

---  client|server
--- Reads next bytes from the restore object as a string.  
--- @return string @The read string.
function IRestore:ReadString()
end

