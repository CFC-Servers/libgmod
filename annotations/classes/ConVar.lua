--- An object returned by Global.CreateConVar, Global.CreateClientConVar (which uses Global.CreateConVar internally), and Global.GetConVar.  
--- It represents a console variable. See this page for more information.  
--- @class ConVar
local ConVar = {}
---  menu|client|server
--- Tries to convert the current string value of a ConVar to a boolean.  
--- @return boolean @The boolean value of the console variable
function ConVar:GetBool()
end

---  menu|client|server
--- Returns the default value of the ConVar  
--- @return string @The default value of the console variable.
function ConVar:GetDefault()
end

---  menu|client|server
--- Returns the Enums/FCVAR flags of the ConVar  
--- @return number @The bitflag
function ConVar:GetFlags()
end

---  menu|client|server
--- Attempts to convert the ConVar value to a float  
--- @return number @The float value of the console variable
function ConVar:GetFloat()
end

---  menu|client|server
--- Returns the help text assigned to that convar.  
--- @return string @The help text
function ConVar:GetHelpText()
end

---  menu|client|server
--- Attempts to convert the ConVar value to a integer.  
--- @return number @The integer value of the console variable
function ConVar:GetInt()
end

---  menu|client|server
--- Returns the maximum value of the ConVar  
--- @return number @The maximum value of the ConVar
function ConVar:GetMax()
end

---  menu|client|server
--- Returns the minimum value of the ConVar  
--- @return number @The minimum value of the ConVar
function ConVar:GetMin()
end

---  menu|client|server
--- Returns the name of the ConVar.  
--- @return string @The name of the console variable.
function ConVar:GetName()
end

---  menu|client|server
--- Returns the current ConVar value as a string.  
--- @return string @The current console variable value as a string.
function ConVar:GetString()
end

---  menu|client|server
--- Returns whether the specified flag is set on the ConVar  
--- @param flag number @The Enums/FCVAR flag to test
--- @return boolean @Whether the flag is set or not
function ConVar:IsFlagSet(flag)
end

---  menu|client|server
--- Reverts ConVar to its default value  
--- ℹ **NOTE**: This can only be ran on ConVars created from within Lua.  
function ConVar:Revert()
end

---  menu|client|server
--- Sets a ConVar's value to 1 or 0 based on the input boolean. This can only be ran on ConVars created from within Lua.  
--- @param value boolean @Value to set the ConVar to.
function ConVar:SetBool(value)
end

---  menu|client|server
--- Sets a ConVar's value to the input number.  
--- ℹ **NOTE**: This can only be ran on ConVars created from within Lua.  
--- @param value number @Value to set the ConVar to.
function ConVar:SetFloat(value)
end

---  menu|client|server
--- Sets a ConVar's value to the input number after converting it to an integer.  
--- ℹ **NOTE**: This can only be ran on ConVars created from within Lua.  
--- @param value number @Value to set the ConVar to.
function ConVar:SetInt(value)
end

---  menu|client|server
--- Sets a ConVar's value to the input string. This can only be ran on ConVars created from within Lua.  
--- @param value string @Value to set the ConVar to.
function ConVar:SetString(value)
end

