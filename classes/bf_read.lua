--- @class bf_read
--- This is the object passed to usermessage.Hook when a message is received. It contains each value stored in the message in sequential order. You should read values from it in the order you wrote them.  
--- 🛑 **DEPRECATED**: You should be using net instead  
local bf_read = {}
--- Reads an returns an angle object from the bitstream.  
--- @return Angle @The read angle
function bf_read:ReadAngle()
end

--- Reads 1 bit an returns a bool representing the bit.  
--- @return boolean @bit
function bf_read:ReadBool()
end

--- Reads a signed char and returns a number from -127 to 127 representing the ascii value of that char.  
--- @return number @asciiVal
function bf_read:ReadChar()
end

--- Reads a short representing an entity index and returns the matching entity handle.  
--- @return Entity @ent
function bf_read:ReadEntity()
end

--- Reads a 4 byte float from the bitstream and returns it.  
--- @return number @float
function bf_read:ReadFloat()
end

--- Reads a 4 byte long from the bitstream and returns it.  
--- @return number @int
function bf_read:ReadLong()
end

--- Reads a 2 byte short from the bitstream and returns it.  
--- @return number @short
function bf_read:ReadShort()
end

--- Reads a null terminated string from the bitstream.  
--- @return string @str
function bf_read:ReadString()
end

--- Reads a special encoded vector from the bitstream and returns it, this function is not suitable to send normals.  
--- @return Vector @vec
function bf_read:ReadVector()
end

--- Reads a special encoded vector normal from the bitstream and returns it, this function is not suitable to send vectors that represent a position.  
--- @return Vector @normal
function bf_read:ReadVectorNormal()
end

--- Rewinds the bitstream so it can be read again.  
function bf_read:Reset()
end

