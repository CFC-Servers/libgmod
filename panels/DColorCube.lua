--- @class DColorCube
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

