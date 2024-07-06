--- A panel similar to DScrollPanel, but that allows the player to pan around, for example a zoomed in image within a small window.  
--- @class DPanPanel : DPanel
local DPanPanel = {}
---  client|menu
--- Parents the passed panel to the DPanPanel:GetCanvas.  
--- @param pnl Panel @The panel to add.
function DPanPanel:AddItem(pnl)
end

---  client|menu
--- The internal canvas panel.  
--- @return Panel @The canvas panel.
function DPanPanel:GetCanvas()
end

---  client|menu
--- Scroll to a specific child panel.  
--- @param pnl Panel @The panel to scroll to.
function DPanPanel:ScrollToChild(pnl)
end

