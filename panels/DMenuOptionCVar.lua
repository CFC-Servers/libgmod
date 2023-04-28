--- <internal></internal>  
--- An internal panel used by DMenu. It acts as a menu option that can be checked. It automatically sets and reads the given console variable.  
--- It can be right clicked to toggle without closing the DMenu.  
--- Use DMenu:AddCVar instead.  
--- @class DMenuOptionCVar : DMenuOption
local DMenuOptionCVar = {}
---  client
--- Returns the console variable used by the DMenuOptionCVar.  
--- @return string @The console variable used
function DMenuOptionCVar:GetConVar()
end

---  client
--- Returns the value of the console variable when the DMenuOptionCVar is not checked.  
--- @return string @The value
function DMenuOptionCVar:GetValueOff()
end

---  client
--- Return the value of the console variable when the DMenuOptionCVar is checked.  
--- @return string @The value
function DMenuOptionCVar:GetValueOn()
end

---  client
--- Sets the console variable to be used by DMenuOptionCVar.  
--- @param cvar string @The console variable name to set
function DMenuOptionCVar:SetConVar(cvar)
end

---  client
--- Sets the value of the console variable when the DMenuOptionCVar is not checked.  
--- @param value string @The value
function DMenuOptionCVar:SetValueOff(value)
end

---  client
--- Sets the value of the console variable when the DMenuOptionCVar is checked.  
--- @param value string @The value
function DMenuOptionCVar:SetValueOn(value)
end

