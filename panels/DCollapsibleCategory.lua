--- @class DCollapsibleCategory
local DCollapsibleCategory = {}
---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns whatever was set by DCollapsibleCategory:SetStartHeight  
--- @deprecated
--- @return number 
function DCollapsibleCategory:GetStartHeight()
end

---  client|menu
--- 🛑 **DEPRECATED**: You should use DCollapsibleCategory:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DCollapsibleCategory:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
--- @deprecated
function DCollapsibleCategory:SetDrawBackground(draw)
end

---  client|menu
--- Sets whether or not the background should be painted.  
--- @param paint boolean 
function DCollapsibleCategory:SetPaintBackground(paint)
end

---  client|menu
--- Toggles the expanded state of the DCollapsibleCategory.  
--- See DCollapsibleCategory:GetExpanded for a function to retrieve the expanded state.  
function DCollapsibleCategory:Toggle()
end

