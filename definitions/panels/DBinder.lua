--- Input which can bind a command to a key. Used for binding inputs and outputs of TOOLs.  
--- @class DBinder : DButton
local DBinder = {}
--- Gets the code of the key currently bound by the DBinder. Same as DBinder:GetValue.  
--- @return number @The key code of the bound key
function DBinder:GetSelectedNumber()
end

--- Gets the code of the key currently bound by the DBinder. Same as DBinder:GetSelectedNumber.  
--- @return number @The key code of the bound key
function DBinder:GetValue()
end

--- Called when the player selects a new bind.  
--- @param iNum number @The new bound key
function DBinder:OnChange(iNum)
end

--- Sets the current key bound by the DBinder, and updates the button's text as well as the ConVar.  
--- @param keyCode number @The key code of the key to bind
function DBinder:SetSelectedNumber(keyCode)
end

--- Alias of DBinder:SetSelectedNumber.  
--- @param keyCode number @The key code of the key to bind
function DBinder:SetValue(keyCode)
end

