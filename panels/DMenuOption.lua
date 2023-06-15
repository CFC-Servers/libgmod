--- <internal></internal>  
--- Internal subpanel that represents an option used by DMenu.  
--- @class DMenuOption : DButton
local DMenuOption = {}
---  client|menu
--- Creates a sub DMenu and returns it. Has no duplicate call protection.  
--- @return Panel @The created DMenu to add options to.
function DMenuOption:AddSubMenu()
end

---  client|menu
--- Returns the checked state of DMenuOption.  
--- @return boolean @Are we checked or not
function DMenuOption:GetChecked()
end

---  client|menu
--- Returns whether the DMenuOption is a checkbox option or a normal button option.  
--- @return boolean 
function DMenuOption:GetIsCheckable()
end

---  client|menu
--- No Description  
--- @return Panel @A DMenu
function DMenuOption:GetMenu()
end

---  client|menu
--- Called whenever the DMenuOption's checked state changes.  
--- @param checked boolean @The new checked state
function DMenuOption:OnChecked(checked)
end

---  client|menu
--- Sets the checked state of the DMenuOption. Does not invoke DMenuOption:OnChecked.  
--- @param checked boolean 
function DMenuOption:SetChecked(checked)
end

---  client|menu
--- Sets whether the DMenuOption is a checkbox option or a normal button option.  
--- @param checkable boolean 
function DMenuOption:SetIsCheckable(checkable)
end

---  client|menu
--- No Description  
--- @param pnl Panel 
function DMenuOption:SetMenu(pnl)
end

---  client|menu
--- Toggles the checked state of DMenuOption. Does not respect DMenuOption:GetIsCheckable.  
function DMenuOption:ToggleCheck()
end

