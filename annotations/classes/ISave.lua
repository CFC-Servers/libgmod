--- The object used in the saverestore, mainly in saverestore.AddSaveHook.  
--- It allows you to write blocks directly into the save game files used by Half-Life 2 save system when such save is being saved.  
--- @class ISave
local ISave = {}
---  client|server
--- Ends current data block started with ISave:StartBlock and returns to the parent block.  
--- To avoid all sorts of errors, you **must** end all blocks you start.  
function ISave:EndBlock()
end

---  client|server
--- Starts a new block of data that you can write to inside current block. Blocks **must** be ended with ISave:EndBlock.  
--- @param name string @Name of the new block
function ISave:StartBlock(name)
end

---  client|server
--- Writes an Angle to the save object.  
--- @param ang Angle @The angle to write.
function ISave:WriteAngle(ang)
end

---  client|server
--- Writes a boolean to the save object.  
--- @param bool boolean @The boolean to write.
function ISave:WriteBool(bool)
end

---  client|server
--- Writes an Entity to the save object.  
--- @param ent Entity @The entity to write.
function ISave:WriteEntity(ent)
end

---  client|server
--- Writes a floating point number to the save object.  
--- @param float number @The floating point number to write.
function ISave:WriteFloat(float)
end

---  client|server
--- Writes an integer number to the save object.  
--- @param int number @The integer number to write.
function ISave:WriteInt(int)
end

---  client|server
--- Writes a **null terminated** string to the save object.  
--- @param str string @The string to write.
function ISave:WriteString(str)
end

---  client|server
--- Writes a Vector to the save object.  
--- @param vec Vector @The vector to write.
function ISave:WriteVector(vec)
end

