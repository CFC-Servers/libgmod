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
--- Returns which DMenu this option belongs.  
--- @return Panel @A DMenu to which this panel belongs.
function DMenuOption:GetMenu()
end

---  client|menu
--- Returns whether this DMenuOption should act like a radio button, set by DMenuOption:SetRadio.  
--- @return boolean @`true` to set as a radio button.
function DMenuOption:GetRadio()
end

---  client|menu
--- Called whenever the DMenuOption's checked state changes.  
--- @param checked boolean @The new checked state
function DMenuOption:OnChecked(checked)
end

---  client|menu
--- Sets the checked state of the DMenuOption.  
--- Invokes DMenuOption:OnChecked.  
--- @param checked boolean @`true` to set as checked.
function DMenuOption:SetChecked(checked)
end

---  client|menu
--- Sets whether the DMenuOption is a checkbox option or a normal button option.  
--- Enables automatic DMenuOption:GetChecked toggling with left/right clicks.  
--- @param checkable boolean @Whether the menu option should allow the player to toggle itself.
function DMenuOption:SetIsCheckable(checkable)
end

---  client|menu
--- Sets whether this DMenuOption should act like a radio button.  
--- Checking a radio button automatically unchecks all adjacent radio buttons.  
--- @param checked boolean @`true` to set as a radio button.
function DMenuOption:SetRadio(checked)
end

---  client|menu
--- Toggles the checked state of DMenuOption. Does not respect DMenuOption:GetIsCheckable.  
function DMenuOption:ToggleCheck()
end

