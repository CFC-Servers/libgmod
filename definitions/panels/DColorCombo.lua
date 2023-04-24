--- The **DColorCombo** allows the user to choose color, without alpha, using DColorMixer or DColorPalette in a tabbed view.  
--- @class DColorCombo : DPropertySheet
local DColorCombo = {}
--- Returns the color of the DColorCombo.  
--- @return table @A Color
function DColorCombo:GetColor()
end

--- Returns true if the panel is currently being edited  
--- More of a internal method, it technically should only ever work (i.e. return true) inside DColorCombo:OnValueChanged.  
--- @return boolean 
function DColorCombo:IsEditing()
end

--- Called when the value (color) of this panel was changed.  
--- @param newcol table 
function DColorCombo:OnValueChanged(newcol)
end

--- Sets the color of this panel.  
--- @param clr table @A Color.
function DColorCombo:SetColor(clr)
end

