--- Displays elements in a horizontal or vertical list. A scrollbar is automatically shown if necessary.  
--- DPanelList was succeeded in version 13 by more specialised layout elements.  
--- 🛑 **DEPRECATED**:   
---  Use a combination of DIconLayout, DListLayout and DScrollPanel instead.  
--- @class DPanelList : DPanel
local DPanelList = {}
---  client
--- Adds a existing panel to the end of DPanelList.  
--- @param pnl Panel @Panel to be used as element of list
--- @param state? string @If set to "ownline", the item will take its own entire line.
function DPanelList:AddItem(pnl, state)
end

---  client
--- Removes all items.  
function DPanelList:CleanList()
end

---  client
--- Enables/creates the vertical scroll bar so that the panel list can be scrolled through.  
function DPanelList:EnableVerticalScrollbar()
end

---  client
--- Returns all panels has added by DPanelList:AddItem  
--- @return table @A table of panels used as items of DPanelList.
function DPanelList:GetItems()
end

---  client
--- Returns offset of list items from the panel borders set by DPanelList:SetPadding  
--- @return number @Offset from panel borders
function DPanelList:GetPadding()
end

---  client
--- Returns distance between list items set by DPanelList:SetSpacing  
--- @return number @Distance between panels
function DPanelList:GetSpacing()
end

---  client
--- @param insert Panel @The panel to insert
--- @param strLineState string @If set to "ownline", no other panels will be placed to the left or right of the panel we are inserting
function DPanelList:InsertAtTop(insert, strLineState)
end

---  client
--- Sets the offset of the lists items from the panel borders  
--- @param Offset number @Offset from panel borders
function DPanelList:SetPadding(Offset)
end

---  client
--- Sets distance between list items  
--- @param Distance number @Distance between panels
function DPanelList:SetSpacing(Distance)
end

