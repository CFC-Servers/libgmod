--- A very basic horizontal scrollable panel, similar to DScrollPanel.  
--- Used internally in DPropertySheet.  
--- @class DHorizontalScroller : Panel
local DHorizontalScroller = {}
---  client
--- Adds a panel to the DHorizontalScroller.  
--- @param pnl Panel @The panel to add
function DHorizontalScroller:AddPanel(pnl)
end

---  client
--- Returns the internal canvas panel where the content of DHorizontalScroller are placed on.  
--- @return Panel @The DDragBase panel.
function DHorizontalScroller:GetCanvas()
end

---  client
--- No Description  
--- @return number 
function DHorizontalScroller:GetOverlap()
end

---  client
--- No Description  
--- @return boolean 
function DHorizontalScroller:GetShowDropTargets()
end

---  client
--- Same as DDragBase:MakeDroppable.  
--- TODO: Transclude or whatever to here?  
--- @param name string 
function DHorizontalScroller:MakeDroppable(name)
end

---  client
--- Called when the panel is scrolled.  
function DHorizontalScroller:OnDragModified()
end

---  client
--- Scrolls the DHorizontalScroller to given child panel.  
--- @param target Panel @The target child panel
function DHorizontalScroller:ScrollToChild(target)
end

---  client
--- Controls the spacing between elements of the horizontal scroller.  
--- @param overlap number @Overlap in pixels
function DHorizontalScroller:SetOverlap(overlap)
end

---  client
--- Sets the scroll amount, automatically clamping the value.  
--- @param scroll number @The new scroll amount
function DHorizontalScroller:SetScroll(scroll)
end

---  client
--- No Description  
--- @param newState boolean 
function DHorizontalScroller:SetShowDropTargets(newState)
end

---  client
--- Same as DDragBase:SetUseLiveDrag  
--- @param newState boolean 
function DHorizontalScroller:SetUseLiveDrag(newState)
end

