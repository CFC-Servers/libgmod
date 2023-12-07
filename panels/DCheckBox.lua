--- @class DCheckBox
local DCheckBox = {}
---  client|menu
--- Sets the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBox:SetValue(checked)
end

---  client|menu
--- Toggles the checked state of the checkbox, and calls the checkbox's DCheckBox:OnChange and Panel:ConVarChanged methods. This is called by DCheckBox:DoClick.  
function DCheckBox:Toggle()
end

