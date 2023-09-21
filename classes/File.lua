--- This is the file object. It used used primarily to read or write binary data from files.  
--- The default endianness is little-endian. To use big-endian you will need to provide your own functions to read and write shorts and longs.  
--- The object is returned by file.Open.  
--- @class File
local File = {}
---  menu|client|server
--- Dumps the file changes to disk and closes the file handle which makes the handle useless.  
function File:Close()
end

---  menu|client|server
--- Returns whether the File object has reached the end of file or not.  
--- @return boolean @Whether the file has reached end or not.
function File:EndOfFile()
end

---  menu|client|server
--- Dumps the file changes to disk and saves the file.  
function File:Flush()
end

---  menu|client|server
--- Reads the specified amount of chars and returns them as a binary string.  
--- @param length? number @Reads the specified amount of chars
--- @return string 
function File:Read(length)
end

---  menu|client|server
--- Reads one byte of the file and returns whether that byte was not 0.  
--- @return boolean @val
function File:ReadBool()
end

---  menu|client|server
--- Reads one unsigned 8-bit integer from the file.  
--- @return number @The unsigned 8-bit integer from the file.
function File:ReadByte()
end

---  menu|client|server
--- Reads an 8-byte little-endian IEEE-754 floating point double from the file.  
--- @return number @The double-precision floating point value read from the file.
function File:ReadDouble()
end

---  menu|client|server
--- Reads an IEEE 754 little-endian 4-byte float from the file.  
--- @return number @The read value
function File:ReadFloat()
end

---  menu|client|server
--- Returns the contents of the file from the current position up until the end of the current line.  
--- ℹ **NOTE**: This function will look specifically for `Line Feed` characters `\n` and will **completely ignore `Carriage Return` characters** `\r`.  
--- ℹ **NOTE**: This function will not return more than 8192 characters. The return value will include the `\n` character.  
--- @return string @The string of data from the read line.
function File:ReadLine()
end

---  menu|client|server
--- Reads a signed little-endian 32-bit integer from the file.  
--- @return number @A signed 32-bit integer
function File:ReadLong()
end

---  menu|client|server
--- Reads a signed little-endian 16-bit integer from the file.  
--- @return number @int16
function File:ReadShort()
end

---  menu|client|server
--- Reads an unsigned 64-bit integer from the file.  
--- @return number @An unsigned 64-bit integer
function File:ReadUInt64()
end

---  menu|client|server
--- Reads an unsigned little-endian 32-bit integer from the file.  
--- @return number @An unsigned 32-bit integer
function File:ReadULong()
end

---  menu|client|server
--- Reads an unsigned little-endian 16-bit integer from the file.  
--- @return number @The 16-bit integer
function File:ReadUShort()
end

---  menu|client|server
--- Sets the file pointer to the specified position.  
--- @param pos number @Pointer position, in bytes.
function File:Seek(pos)
end

---  menu|client|server
--- Returns the size of the file in bytes.  
--- @return number 
function File:Size()
end

---  menu|client|server
--- Moves the file pointer by the specified amount of chars.  
--- @param amount number @The amount of chars to skip, can be negative to skip backwards.
--- @return number @amount
function File:Skip(amount)
end

---  menu|client|server
--- Returns the current position of the file pointer.  
--- @return number @pos
function File:Tell()
end

---  menu|client|server
--- Writes the given string into the file.  
--- @param data string @Binary data to write to the file.
function File:Write(data)
end

---  menu|client|server
--- Writes a boolean value to the file as one **byte**.  
--- @param bool boolean @The bool to be written to the file.
function File:WriteBool(bool)
end

---  menu|client|server
--- Write an 8-bit unsigned integer to the file.  
--- @param uint8 number @The 8-bit unsigned integer to be written to the file.
function File:WriteByte(uint8)
end

---  menu|client|server
--- Writes an 8-byte little-endian IEEE-754 floating point double to the file.  
--- @param double number @The double to be written to the file.
function File:WriteDouble(double)
end

---  menu|client|server
--- Writes an IEEE 754 little-endian 4-byte float to the file.  
--- @param float number @The float to be written to the file.
function File:WriteFloat(float)
end

---  menu|client|server
--- Writes a signed little-endian 32-bit integer to the file.  
--- @param int32 number @The 32-bit signed integer to be written to the file.
function File:WriteLong(int32)
end

---  menu|client|server
--- Writes a signed little-endian 16-bit integer to the file.  
--- @param int16 number @The 16-bit signed integer to be written to the file.
function File:WriteShort(int16)
end

---  menu|client|server
--- Writes an unsigned 64-bit integer to the file.  
--- @param uint64 number @The unsigned 64-bit integer to be written to the file.
function File:WriteUInt64(uint64)
end

---  menu|client|server
--- Writes an unsigned little-endian 32-bit integer to the file.  
--- @param uint32 number @The unsigned 32-bit integer to be written to the file.
function File:WriteULong(uint32)
end

---  menu|client|server
--- Writes an unsigned little-endian 16-bit integer to the file.  
--- @param uint16 number @The unsigned 16-bit integer to the file.
function File:WriteUShort(uint16)
end

