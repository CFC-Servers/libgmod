--- The DCheckBox is a checkbox. It allows you to get a boolean value from the user (true/false - yes/no)  
--- @class DCheckBox : DButton
local DCheckBox = {}
---  client
--- Gets the checked state of the checkbox.  
--- @return boolean @Whether the box is checked or not.
function DCheckBox:GetChecked()
end

---  client
--- Returns whether the state of the checkbox is being edited. This means whether the user is currently clicking (mouse-down) on the checkbox, and applies to both the left and right mouse buttons.  
--- @return boolean @Whether the checkbox is being clicked.
function DCheckBox:IsEditing()
end

---  client
--- Called when the "checked" state is changed.  
--- @param bVal boolean @Whether the CheckBox is checked or not.
function DCheckBox:OnChange(bVal)
end

---  client
--- Sets the checked state of the checkbox. Does not call the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods, unlike DCheckBox:SetValue.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBox:SetChecked(checked)
end

---  client
--- Sets the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBox:SetValue(checked)
end

---  client
--- Toggles the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods. This is called by DCheckBox:DoClick.  
function DCheckBox:Toggle()
end

