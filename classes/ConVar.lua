--- @class ConVar
local ConVar = {}
---  menu|client|server
--- Tries to convert the current string value of a ConVar to a boolean.  
--- @return boolean @The boolean value of the console variable
function ConVar:GetBool()
end

---  menu|client|server
--- Returns the Enums/FCVAR flags of the ConVar  
--- @return number @The bitflag
function ConVar:GetFlags()
end

---  menu|client|server
--- Returns the name of the ConVar.  
--- @return string @The name of the console variable.
function ConVar:GetName()
end

---  menu|client|server
--- Sets a ConVar's value to the input number.  
--- ℹ **NOTE**: This can only be ran on ConVars created from within Lua.  
--- @param value number @Value to set the ConVar to.
function ConVar:SetFloat(value)
end

