--- A very basic horizontal scrollable panel, similar to DScrollPanel.  
--- Used internally in DPropertySheet.  
--- @class DHorizontalScroller : Panel
local DHorizontalScroller = {}
---  client|menu
--- Adds a panel to the DHorizontalScroller.  
--- @param pnl Panel @The panel to add
function DHorizontalScroller:AddPanel(pnl)
end

---  client|menu
--- Returns the internal canvas panel where the content of DHorizontalScroller are placed on.  
--- @return Panel @The DDragBase panel.
function DHorizontalScroller:GetCanvas()
end

---  client|menu
--- Returns the overlap set by DHorizontalScroller:GetOverlap.  
--- @return number @The overlap.
function DHorizontalScroller:GetOverlap()
end

---  client|menu
--- Returns whether this panel should show drop targets.  
--- @return boolean 
function DHorizontalScroller:GetShowDropTargets()
end

---  client|menu
--- Same as DDragBase:MakeDroppable.  
--- TODO: Transclude or whatever to here?  
--- @param name string 
function DHorizontalScroller:MakeDroppable(name)
end

---  client|menu
--- Called when the panel is scrolled.  
function DHorizontalScroller:OnDragModified()
end

---  client|menu
--- Scrolls the DHorizontalScroller to given child panel.  
--- @param target Panel @The target child panel
function DHorizontalScroller:ScrollToChild(target)
end

---  client|menu
--- Controls the spacing between elements of the horizontal scroller.  
--- @param overlap number @Overlap in pixels
function DHorizontalScroller:SetOverlap(overlap)
end

---  client|menu
--- Sets the scroll amount, automatically clamping the value.  
--- @param scroll number @The new scroll amount
function DHorizontalScroller:SetScroll(scroll)
end

---  client|menu
--- Sets whether this panel should show drop targets.  
--- @param newState boolean 
function DHorizontalScroller:SetShowDropTargets(newState)
end

---  client|menu
--- Same as DDragBase:SetUseLiveDrag  
--- @param newState boolean 
function DHorizontalScroller:SetUseLiveDrag(newState)
end

