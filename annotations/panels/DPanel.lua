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
--- Used internally by DMenu.  
--- Returns whether the frame is part of a derma menu or not.  
--- If this is `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @return boolean @Whether this panel is a Menu Component
function DPanel:GetIsMenu()
end

---  client|menu
--- Returns whether or not the panel background is being drawn.  
--- @return boolean @True if the panel background is drawn, false otherwise.
function DPanel:GetPaintBackground()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing. Returns value set by DPanel:SetTabbingDisabled.  
--- @deprecated
--- @return boolean 
function DPanel:GetTabbingDisabled()
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
--- Used internally by DMenu.  
--- Sets whether the frame is part of a derma menu or not.  
--- If this is set to `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @param isMenu boolean @Whether this pane is a Menu Component
function DPanel:SetIsMenu(isMenu)
end

---  client|menu
--- Sets whether or not to paint/draw the panel background.  
--- @param paint boolean @True to show the panel's background, false to hide it.
function DPanel:SetPaintBackground(paint)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param draw boolean 
--- @deprecated
function DPanel:SetTabbingDisabled(draw)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
function DPanel:UpdateColours()
end

