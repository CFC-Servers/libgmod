--- 🛑 **DEPRECATED**:   
--- This is derived from the deprecated DPanelList.  
--- A base panel for things like DModelSelect.  
--- Basically, a list of panels that can be selected.  
--- Selected panel can be retrieved and has visual indication of being selected.  
--- @class DPanelSelect : DPanelList
local DPanelSelect = {}
---  client
--- Adds a panel to be selectable.  
--- @param pnl Panel @The panel to add.
--- @param conVars? table @ConVars to set when this panel is selected
function DPanelSelect:AddPanel(pnl, conVars)
end

---  client
--- Called when the selected panel changes.  
--- @param oldPnl Panel @Old selected panel.
--- @param newPnl Panel @New selected panel.
function DPanelSelect:OnActivePanelChanged(oldPnl, newPnl)
end

---  client
--- Selects a given panel.  
--- @param pnl Panel @Panel to select
function DPanelSelect:SelectPanel(pnl)
end

