--- A checkbox panel similar to DCheckBox and DImageButton with customizable checked state image.  
--- Uses the Material panel internally. Can't have a label.  
--- ℹ **NOTE**: Will error if no material was set.  
--- @class ImageCheckBox : Button
local ImageCheckBox = {}
---  client
--- Returns the checked state of the ImageCheckBox  
--- @return boolean @true for checked, false otherwise
function ImageCheckBox:GetChecked()
end

---  client
--- Sets the checked state of the checkbox.  
--- Checked state can be obtained by ImageCheckBox.State.  
--- @param OnOff boolean @true for checked, false otherwise
function ImageCheckBox:Set(OnOff)
end

---  client
--- Sets the checked state of the checkbox.  
--- Checked state can be obtained via ImageCheckBox:GetChecked  
--- @param bOn boolean @true for checked, false otherwise
function ImageCheckBox:SetChecked(bOn)
end

---  client
--- Sets the material that will be visible when the ImageCheckBox is checked.  
--- Internally calls Material:SetMaterial.  
--- ℹ **NOTE**: Will error if no material was set.  
--- @param mat string @The file path of the material to set (relative to "garrysmod/materials/").
function ImageCheckBox:SetMaterial(mat)
end

