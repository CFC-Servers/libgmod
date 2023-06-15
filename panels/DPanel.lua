--- A simple rectangular box, commonly used for parenting other elements to. Pretty much all elements are based on this.  
--- @class DPanel : Panel
local DPanel = {}
---  client|menu
--- Returns the panel's background color.  
--- ℹ **NOTE**: By default this returns **nil** even though the default background color is white  
--- @return table @Color of the panel's background.
function DPanel:GetBackgroundColor()
end

---  client|menu
--- Returns whether or not the panel is disabled.  
--- @return boolean @True if the panel is disabled (mouse input disabled and background alpha set to 75), false if its enabled (mouse input enabled and backgroun
function DPanel:GetDisabled()
end

---  client|menu
--- 🛑 **DEPRECATED**: You should use DPanel:GetPaintBackground instead.  
--- Returns whether or not the panel background is being drawn. Alias of DPanel:GetPaintBackground.  
--- @deprecated
--- @return boolean @True if the panel background is drawn, false otherwise.
function DPanel:GetDrawBackground()
end

---  client|menu
--- Returns whether or not the panel background is being drawn.  
--- @return boolean @True if the panel background is drawn, false otherwise.
function DPanel:GetPaintBackground()
end

---  client|menu
--- Sets the background color of the panel.  
--- @param color table @The background color.
function DPanel:SetBackgroundColor(color)
end

---  client|menu
--- Sets whether or not to disable the panel.  
--- @param disabled boolean @True to disable the panel (mouse input disabled and background alpha set to 75), false to enable it (mouse input enabled and background alph
function DPanel:SetDisabled(disabled)
end

---  client|menu
--- 🛑 **DEPRECATED**: You should use DPanel:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DPanel:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
--- @deprecated
function DPanel:SetDrawBackground(draw)
end

---  client|menu
--- Sets whether or not to paint/draw the panel background.  
--- @param paint boolean @True to show the panel's background, false to hide it.
function DPanel:SetPaintBackground(paint)
end

