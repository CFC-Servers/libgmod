--- The DColorCube allows a user to select saturation and value but not hue. Uses HSV colors  
--- @class DColorCube : DSlider
local DColorCube = {}
---  client|menu
--- Returns the base Color set by DColorCube:SetBaseRGB.  
--- @return table @A Color
function DColorCube:GetBaseRGB()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns the value set by DColorCube:SetHue.  
--- @deprecated
--- @return number 
function DColorCube:GetHue()
end

---  client|menu
--- Returns the color cube's current set color.  
--- @return table @The set color, uses Color.
function DColorCube:GetRGB()
end

---  client|menu
--- Function which is called when the color cube slider is moved (through user input). Meant to be overridden.  
--- @param color table @The new color, uses Color.
function DColorCube:OnUserChanged(color)
end

---  client|menu
--- Sets the base color and the color used to draw the color cube panel itself.  
--- ℹ **NOTE**: Calling this when using a color that isn't 100% saturated and valued (Global.HSVToColor with saturation and value set to 1) causes the color cube to look inaccurate compared to the color that's returned by methods like DColorCube:GetRGB and DColorCube:OnUserChanged. You should use DColorCube:SetColor instead  
--- @param color table @The base color to set, uses Color.
function DColorCube:SetBaseRGB(color)
end

---  client|menu
--- Sets the base color of the color cube and updates the slider position.  
--- @param color table @The color to set, uses Color.
function DColorCube:SetColor(color)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Appears to do nothing and unused.  
--- @param hue number 
--- @deprecated
function DColorCube:SetHue(hue)
end

