--- @class DCheckBoxLabel
local DCheckBoxLabel = {}
---  client|menu
--- Gets the checked state of the checkbox. This calls the checkbox's DCheckBox:GetChecked function.  
--- @return boolean @Whether the box is checked or not.
function DCheckBoxLabel:GetChecked()
end

---  client|menu
--- Gets the indentation of the element on the X axis.  
--- @return number @How much the content is moved to the right in pixels
function DCheckBoxLabel:GetIndent()
end

---  client|menu
--- Sets the console variable to be set when the checked state of the DCheckBoxLabel changes.  
--- @param convar string @The name of the convar to set
function DCheckBoxLabel:SetConVar(convar)
end

---  client|menu
--- Sets the text color for the DCheckBoxLabel.  
--- @param color table @The text color
function DCheckBoxLabel:SetTextColor(color)
end

