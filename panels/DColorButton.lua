--- Colorful buttons. Used internally by DColorPalette.  
--- @class DColorButton : DLabel
local DColorButton = {}
---  client|menu
--- Returns the color of the button  
--- @return table @The Color of the button
function DColorButton:GetColor()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns value set by DColorButton:SetDrawBorder. See that page for more info.  
--- @deprecated
--- @return boolean @Value set by DColorButton:SetDrawBorder.
function DColorButton:GetDrawBorder()
end

---  client|menu
--- Returns the unique ID set by DColorButton:SetID.  
--- Used internally by DColorPalette  
--- @return number @The unique ID of the button
function DColorButton:GetID()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Alias of Panel:IsSelected.  
--- @deprecated
--- @return boolean 
function DColorButton:GetSelected()
end

---  client|menu
--- Returns whether the DColorButton is currently being pressed (the user is holding it down).  
--- @return boolean 
function DColorButton:IsDown()
end

---  client|menu
--- Sets the color of the DColorButton.  
--- @param color table @A Color to set the color as
--- @param noTooltip? boolean @If true, the tooltip will not be reset to display the selected color.
function DColorButton:SetColor(color, noTooltip)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does absolutely nothing at all. Default value is automatically set to true.  
--- @param draw boolean @Does nothing.
--- @deprecated
function DColorButton:SetDrawBorder(draw)
end

---  client|menu
--- Used internally by DColorPalette to detect which button is which.  
--- @param id number @A unique ID to give this button
function DColorButton:SetID(id)
end

