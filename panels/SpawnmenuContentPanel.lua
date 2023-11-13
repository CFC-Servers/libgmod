--- The default SpawnmenuContentPanel  
--- <internal></internal>  
--- @class SpawnmenuContentPanel : DPanel
local SpawnmenuContentPanel = {}
---  client
--- Changes the Spawnmenu category to search in  
--- @param hookname string @The Hook name
function SpawnmenuContentPanel:CallPopulateHook(hookname)
end

---  client
--- Allows the modification of the ContentSidebar  
function SpawnmenuContentPanel:EnableModify()
end

---  client
--- Changes the Spawnmenu category to search in  
--- @param category string @The category
--- @param hookname string @The Hook name
function SpawnmenuContentPanel:EnableSearch(category, hookname)
end

---  client
--- Switches the current panel with the given panel  
--- @param panel Panel @Panel to switch to
function SpawnmenuContentPanel:SwitchPanel(panel)
end

