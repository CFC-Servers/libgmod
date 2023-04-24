--- <internal></internal>  
--- Internal subpanel that represents an option used by DMenu.  
--- @class DMenuOption : DButton
local DMenuOption = {}
--- Creates a sub DMenu and returns it. Has no duplicate call protection.  
--- @return Panel @The created DMenu to add options to.
function DMenuOption:AddSubMenu()
end

--- Returns the checked state of DMenuOption.  
--- @return boolean @Are we checked or not
function DMenuOption:GetChecked()
end

--- Returns whether the DMenuOption is a checkbox option or a normal button option.  
--- @return boolean 
function DMenuOption:GetIsCheckable()
end

--- No Description  
--- @return Panel @A DMenu
function DMenuOption:GetMenu()
end

--- Called whenever the DMenuOption's checked state changes.  
--- @param checked boolean @The new checked state
function DMenuOption:OnChecked(checked)
end

--- Sets the checked state of the DMenuOption. Does not invoke DMenuOption:OnChecked.  
--- @param checked boolean 
function DMenuOption:SetChecked(checked)
end

--- Sets whether the DMenuOption is a checkbox option or a normal button option.  
--- @param checkable boolean 
function DMenuOption:SetIsCheckable(checkable)
end

--- No Description  
--- @param pnl Panel 
function DMenuOption:SetMenu(pnl)
end

--- Toggles the checked state of DMenuOption. Does not respect DMenuOption:GetIsCheckable.  
function DMenuOption:ToggleCheck()
end

