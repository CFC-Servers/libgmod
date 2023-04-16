--- @class IRestore
--- The object used in the saverestore, mainly in saverestore.AddRestoreHook.  
--- It allows you to read blocks directly from the save game files used by Half-Life 2 save system when such save is loaded.  
local IRestore = {}
--- Ends current data block started with IRestore:StartBlock and returns to the parent block.  
--- To avoid all sorts of errors, you **must** end all blocks you start.  
function IRestore:EndBlock()
end

--- Reads next bytes from the restore object as an Angle.  
--- @return Angle @The angle that has been read
function IRestore:ReadAngle()
end

--- Reads next bytes from the restore object as a boolean.  
--- @return boolean @The boolean that has been read
function IRestore:ReadBool()
end

--- Reads next bytes from the restore object as an Entity.  
--- @return Entity @The entity that has been read.
function IRestore:ReadEntity()
end

--- Reads next bytes from the restore object as a floating point number.  
--- @return number @The read floating point number.
function IRestore:ReadFloat()
end

--- Reads next bytes from the restore object as an integer number.  
--- @return number @The read integer number.
function IRestore:ReadInt()
end

--- Reads next bytes from the restore object as a string.  
--- @return string @The read string.
function IRestore:ReadString()
end

--- Reads next bytes from the restore object as a Vector.  
--- @return Vector @The read vector.
function IRestore:ReadVector()
end

--- Loads next block of data to be read inside current block. Blocks **must** be ended with IRestore:EndBlock.  
--- @return string @The name of the next data block to be read.
function IRestore:StartBlock()
end

