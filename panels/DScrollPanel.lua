--- DScrollPanel is a VGUI Element similar to DPanel however it has a vertical scrollbar docked to the right which can be used to put more content in a smaller area. DScrollPanels are essentially DPanels with the Scroll Bar.  
--- This can be used to replace the DPanelList with DPanelList:EnableVerticalScrollbar and get similar functionality as well as using a non-deprecated element.  
--- If you would like to paint or edit the elements of the scrollbar use DScrollPanel:GetVBar. If you want to see if the scrollbar is visible then use the VBar.Enabled variable on the scrollbar's VBar.  
--- ℹ **NOTE**: Panel:DockPadding will not have an effect on children of this panel. Use the function on DScrollPanel:GetCanvas instead.  
--- @class DScrollPanel : DPanel
local DScrollPanel = {}
---  client|menu
--- Parents the passed panel to the DScrollPanel's canvas.  
--- @param pnl Panel @The panel to add.
function DScrollPanel:AddItem(pnl)
end

---  client|menu
--- Clears the `DScrollPanel`'s canvas, removing all added items.  
function DScrollPanel:Clear()
end

---  client|menu
--- Returns the canvas ( The panel all child panels are parented to ) of the DScrollPanel.  
--- @return Panel @The canvas
function DScrollPanel:GetCanvas()
end

---  client|menu
--- Gets the DScrollPanels padding  
--- @return number @DScrollPanels padding
function DScrollPanel:GetPadding()
end

---  client|menu
--- Returns the vertical scroll bar of the panel.  
--- @return Panel @The DVScrollBar.
function DScrollPanel:GetVBar()
end

---  client|menu
--- Return the width of the DScrollPanel's canvas.  
--- @return number @The width of the DScrollPanel's canvas
function DScrollPanel:InnerWidth()
end

---  client|menu
function DScrollPanel:Rebuild()
end

---  client|menu
--- Scrolls to the given child  
--- @param panel Panel @The panel to scroll to, must be a child of the DScrollPanel.
function DScrollPanel:ScrollToChild(panel)
end

---  client|menu
--- Sets the DScrollPanel's padding. This function appears to be unused.  
--- @param padding number @The padding of the DScrollPanel.
function DScrollPanel:SetPadding(padding)
end

