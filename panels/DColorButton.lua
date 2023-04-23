--- Colorful buttons. Used internally by DColorPalette.  
--- @class DColorButton : DLabel
local DColorButton = {}
--- Returns the color of the button  
--- @return table @The Color of the button
function DColorButton:GetColor()
end

--- Returns the unique ID set by DColorButton:SetID.  
--- Used internally by DColorPalette  
--- @return number @The unique ID of the button
function DColorButton:GetID()
end

--- Returns whether the DColorButton is currently being pressed (the user is holding it down).  
--- @return boolean 
function DColorButton:IsDown()
end

--- Sets the color of the DColorButton.  
--- @param color table @A Color to set the color as
--- @param noTooltip? boolean @If true, the tooltip will not be reset to display the selected color.
function DColorButton:SetColor(color, noTooltip)
end

--- Used internally by DColorPalette to detect which button is which.  
--- @param id number @A unique ID to give this button
function DColorButton:SetID(id)
end

