_G.net = {}
---  client|server
--- Reads an entity from the received net message. You should always check if the specified entity exists as it may have been removed and therefore `NULL` if it is outside of the players [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") or was already removed.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return Entity @The entity, or `Entity(0)` if no entity could be read.
function net.ReadEntity()
end

---  client|server
--- Reads a VMatrix from the received net message.  
--- ⚠ **WARNING**: You **must** read information in same order as you write it.  
--- @return VMatrix @The matrix, or an empty matrix if no matrix could be read.
function net.ReadMatrix()
end

---  client|server
--- Adds a net message handler. Only one receiver can be used to receive the net message.  
--- ℹ **NOTE**: The message-name is converted to lower-case so the message-names "`BigBlue`" and "`bigblue`" would be equal.  
--- ⚠ **WARNING**: You **must** put this function **outside** of any other function or hook for it to work properly unless you know what you are doing!  
--- You **must** read information in the same order as you write it.  
--- Each net message has a length limit of **64KB**!  
--- @param messageName string @The message name to hook to.
--- @param callback function @The function to be called if the specified message was received
function net.Receive(messageName, callback)
end

---  server
--- Sends the current message to all except the specified, or to all except all players in the table.  
--- @param ply Player @The player(s) to **NOT** send the message to
function net.SendOmit(ply)
end

---  server
--- Sends the message to all players in the [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") of the position, or, more simply said, sends the message to players that can potentially see this position.  
--- @param position Vector @Position that must be in players' visibility set.
function net.SendPVS(position)
end

---  client|server
--- Appends a player entity to the current net message using its Entity:EntIndex. This saves a small amount of network bandwidth over net.WriteEntity.  
--- See net.ReadPlayer for the function to read the entity.  
--- @param ply Player @The player to be sent.
function net.WritePlayer(ply)
end

---  client|server
--- Appends a string to the current net message. The size of the string is 8 bits plus 8 bits for every ASCII character in the string. The maximum allowed length of a single written string is **65532 characters**.  
--- @param string string @The string to be sent.
function net.WriteString(string)
end

