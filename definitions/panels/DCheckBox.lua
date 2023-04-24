--- The DCheckBox is a checkbox. It allows you to get a boolean value from the user (true/false - yes/no)  
--- @class DCheckBox : DButton
local DCheckBox = {}
--- Gets the checked state of the checkbox.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcheckbox.lua:4
--- @return boolean @Whether the box is checked or not.
function DCheckBox:GetChecked()
end

--- Returns whether the state of the checkbox is being edited. This means whether the user is currently clicking (mouse-down) on the checkbox, and applies to both the left and right mouse buttons.  
--- @return boolean @Whether the checkbox is being clicked.
function DCheckBox:IsEditing()
end

--- Called when the "checked" state is changed.  
--- @param bVal boolean @Whether the CheckBox is checked or not.
function DCheckBox:OnChange(bVal)
end

--- Sets the checked state of the checkbox. Does not call the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods, unlike DCheckBox:SetValue.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBox:SetChecked(checked)
end

--- Sets the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBox:SetValue(checked)
end

--- Toggles the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods. This is called by DCheckBox:DoClick.  
function DCheckBox:Toggle()
end
