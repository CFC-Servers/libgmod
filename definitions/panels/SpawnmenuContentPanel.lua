--- The default SpawnmenuContentPanel  
--- <internal></internal>  
--- @class SpawnmenuContentPanel : DPanel
local SpawnmenuContentPanel = {}
--- Changes the Spawnmenu category to search in  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/creationmenu/content/content.lua:52:56
--- @param hookname string @The Hook name
function SpawnmenuContentPanel:CallPopulateHook(hookname)
end

--- Allows the modification of the ContentSidebar  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/creationmenu/content/content.lua#L52:44:46
function SpawnmenuContentPanel:EnableModify()
end

--- Changes the Spawnmenu category to search in  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/creationmenu/content/content.lua#L52:48:50
--- @param category string @The category
--- @param hookname string @The Hook name
function SpawnmenuContentPanel:EnableSearch(category, hookname)
end

--- Switches the current panel with the given panel  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/creationmenu/content/content.lua:58:75
--- @param panel panel @Panel to switch to
function SpawnmenuContentPanel:SwitchPanel(panel)
end

