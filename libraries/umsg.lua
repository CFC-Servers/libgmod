--- 🛑 **DEPRECATED**: You should be using the net library instead  
--- The umsg (user message) library was previously the most common way of sending information from the server to the client.  
--- ⚠ **WARNING**: Usermessages have a limit of only 256 bytes!  
_G.umsg = {}
---  server
--- Writes a bool to the usermessage.  
--- @param bool boolean @The bool to be sent.
function umsg.Bool(bool)
end

