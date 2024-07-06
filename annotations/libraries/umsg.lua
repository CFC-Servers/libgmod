--- 🛑 **DEPRECATED**: You should be using the net library instead  
--- The umsg (user message) library was previously the most common way of sending information from the server to the client.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
_G.umsg = {}
---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes an angle to the usermessage.  
--- @param angle Angle @The angle to be sent.
--- @deprecated
function umsg.Angle(angle)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a bool to the usermessage.  
--- @param bool boolean @The bool to be sent.
--- @deprecated
function umsg.Bool(bool)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed char to the usermessage.  
--- @param char number @The char to be sent.
--- @deprecated
function umsg.Char(char)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Dispatches the usermessage to the client(s).  
--- @deprecated
function umsg.End()
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes an entity object to the usermessage.  
--- @param entity Entity @The entity to be sent.
--- @deprecated
function umsg.Entity(entity)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a float to the usermessage.  
--- @param float number @The float to be sent.
--- @deprecated
function umsg.Float(float)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed int (32 bit) to the usermessage.  
--- @param int number @The int to be sent.
--- @deprecated
function umsg.Long(int)
end

---  server
--- 🛑 **DEPRECATED**: Inferior version of util.AddNetworkString  
--- The string specified will be networked to the client and receive a identifying number, which will be sent instead of the string to optimize networking.  
--- @param string string @The string to be pooled.
--- @deprecated
function umsg.PoolString(string)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a signed short (16 bit) to the usermessage.  
--- @param short number @The short to be sent.
--- @deprecated
function umsg.Short(short)
end

---  server
--- 🛑 **DEPRECATED**: You should be using net instead  
--- Starts a new usermessage.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
--- @param name string @The name of the message to be sent.
--- @param filter Player @If passed a player object, it will only be sent to the player, if passed a CRecipientFilter of players, it will be sent to all specified pla
--- @deprecated
function umsg.Start(name, filter)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a null terminated string to the usermessage.  
--- @param string string @The string to be sent.
--- @deprecated
function umsg.String(string)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a Vector to the usermessage.  
--- @param vector Vector @The vector to be sent.
--- @deprecated
function umsg.Vector(vector)
end

---  server
--- 🛑 **DEPRECATED**: You should be using the net instead  
--- Writes a vector normal to the usermessage.  
--- @param normal Vector @The vector normal to be sent.
--- @deprecated
function umsg.VectorNormal(normal)
end

