--- Adds curved corners.  
--- @class DPanelOverlay : DPanel
local DPanelOverlay = {}
---  client|menu
--- Returns the border color of the DPanelOverlay set by DPanelOverlay:SetColor.  
--- @return table @The set color
function DPanelOverlay:GetColor()
end

---  client|menu
--- Returns the type of the DPanelOverlay set by DPanelOverlay:SetType.  
--- @return number @The set type.
function DPanelOverlay:GetType()
end

---  client|menu
--- Sets the border color of the DPanelOverlay.  
--- @param color table @The color to set
function DPanelOverlay:SetColor(color)
end

---  client|menu
--- Sets the type of the DPanelOverlay.  
--- @param type number @The type to set
function DPanelOverlay:SetType(type)
end

