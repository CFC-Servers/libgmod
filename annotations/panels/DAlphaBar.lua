--- A bar to select the opacity (alpha level) of a color.  
--- @class DAlphaBar : DPanel
local DAlphaBar = {}
---  client|menu
--- Returns the base color of the alpha bar. This is the color for which the alpha channel is being modified.  
--- @return table @The current base color.
function DAlphaBar:GetBarColor()
end

---  client|menu
--- Returns the alpha value of the alpha bar.  
--- @return number @The current alpha value.
function DAlphaBar:GetValue()
end

---  client|menu
--- Called when user changes the desired alpha value with the control.  
--- @param alpha number @The new alpha value
function DAlphaBar:OnChange(alpha)
end

---  client|menu
--- Sets the base color of the alpha bar. This is the color for which the alpha channel is being modified.  
--- @param clr table @The new Color to set
function DAlphaBar:SetBarColor(clr)
end

---  client|menu
--- Sets the alpha value or the alpha bar.  
--- @param alpha number @The new alpha value to set
function DAlphaBar:SetValue(alpha)
end

