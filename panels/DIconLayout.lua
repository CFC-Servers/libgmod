--- DIconLayout is what replaced DPanelList in Garry's Mod 13. DPanelList still exists in GMod but is deprecated and does not support the new GWEN skin.  
--- DIconLayout is used to make a list of panels. Unlike DPanelList, DIconLayout does not automatically add a scroll bar - the example below shows you how you can do this.  
--- @class DIconLayout : DDragBase
local DIconLayout = {}
---  client
--- Creates a replica of the DIconLayout it is called on.  
--- @return Panel @The replica.
function DIconLayout:Copy()
end

---  client
--- Copies the contents (Child elements) of another DIconLayout to itself.  
--- @param from Panel @DIconLayout to copy from.
function DIconLayout:CopyContents(from)
end

---  client
--- Returns the size of the border.  
--- @return number 
function DIconLayout:GetBorder()
end

---  client
--- Returns the direction that it will be layed out, using the DOCK enumerations.  
--- @return number @Layout direction.
function DIconLayout:GetLayoutDir()
end

---  client
--- Returns the distance between two 'icons' on the X axis.  
--- @return number @Distance between two 'icons' on the X axis.
function DIconLayout:GetSpaceX()
end

---  client
--- Returns distance between two "Icons" on the Y axis.  
--- @return number @distance between two "Icons" on the Y axis.
function DIconLayout:GetSpaceY()
end

---  client
--- Returns whether the icon layout will stretch its height to fit all the children.  
--- See also DIconLayout:GetStretchWidth  
--- @return boolean 
function DIconLayout:GetStretchHeight()
end

---  client
--- Returns whether the icon layout will stretch its width to fit all the children.  
--- See also DIconLayout:GetStretchHeight  
--- @return boolean 
function DIconLayout:GetStretchWidth()
end

---  client
--- Resets layout vars before calling Panel:InvalidateLayout. This is called when children are added or removed, and must be called when the spacing, border or layout direction is changed.  
function DIconLayout:Layout()
end

---  client
--- Called when the panel is modified.  
function DIconLayout:OnModified()
end

---  client
--- Sets the internal border (padding) within the DIconLayout. This will not change its size, only the positioning of children. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param width number @The border (padding) inside the DIconLayout.
function DIconLayout:SetBorder(width)
end

---  client
--- Sets the direction that it will be layed out, using the Enums/DOCK.  
--- Currently only TOP and LEFT are supported.  
--- @param direction number @Enums/DOCK
function DIconLayout:SetLayoutDir(direction)
end

---  client
--- Sets the horizontal (x) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param xSpacing number @The width of the gap between child objects.
function DIconLayout:SetSpaceX(xSpacing)
end

---  client
--- Sets the vertical (y) spacing between children within the DIconLayout. You must call DIconLayout:Layout in order for the changes to take effect.  
--- @param ySpacing number @The vertical gap between rows in the DIconLayout.
function DIconLayout:SetSpaceY(ySpacing)
end

---  client
--- If set to true, the icon layout will stretch its height to fit all the children.  
--- See also DIconLayout:SetStretchWidth  
--- @param do_stretch boolean 
function DIconLayout:SetStretchHeight(do_stretch)
end

---  client
--- If set to true, the icon layout will stretch its width to fit all the children.  
--- See also DIconLayout:SetStretchHeight  
--- @param stretchW boolean 
function DIconLayout:SetStretchWidth(stretchW)
end
