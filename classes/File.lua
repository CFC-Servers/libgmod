--- @class File
local File = {}
---  menu|client|server
--- Reads an unsigned little-endian 32-bit integer from the file.  
--- @return number @An unsigned 32-bit integer
function File:ReadULong()
end

---  menu|client|server
--- Writes an IEEE 754 little-endian 4-byte float to the file.  
--- @param float number @The float to be written to the file.
function File:WriteFloat(float)
end

