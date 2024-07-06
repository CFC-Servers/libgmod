--- <internal></internal>  
--- This element is created within and only used in the DPropertySheet file. These can be elements are stored items are stored in the `Items` subtable of the DPropertySheet  
--- @class DTab : DButton
local DTab = {}
---  client|menu
--- Returns the panel that the tab represents.  
--- @return Panel @Panel added to the sheet using DPropertySheet:AddSheet.
function DTab:GetPanel()
end

---  client|menu
--- The DPropertySheet this tab belongs to.  
--- @return Panel @The DPropertySheet this tab belongs to.
function DTab:GetPropertySheet()
end

---  client|menu
--- Returns whether the tab is the currently selected tab of the associated DPropertySheet.  
--- @return Boolean @Currently selected tab.
function DTab:IsActive()
end

