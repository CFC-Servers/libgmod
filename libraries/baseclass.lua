--- The baseclass library. Used to lookup a field from a metatable.  
_G.baseclass = {}
---  menu|client|server
--- Add a new base class that can be derived by others. This is done automatically for:  
--- * widgets  
--- * panels  
--- * drive modes  
--- * entities  
--- * weapons  
--- * gamemodes (with prefix "gamemode_")  
--- @param name string @The name of this base class
--- @param tab table @The base class.
function baseclass.Set(name, tab)
end

