--- <internal></internal>A tab for internal use on the DPropertySheet.  
--- @class DTab : DButton
local DTab = {}
---  client|menu
--- Returns the panel that the tab represents.  
--- @return Panel @Panel added to the sheet using DPropertySheet:AddSheet.
function DTab:GetPanel()
end

---  client|menu
--- Returns whether the tab is the currently selected tab of the associated DPropertySheet.  
--- @return Boolean @Currently selected tab.
function DTab:IsActive()
end

