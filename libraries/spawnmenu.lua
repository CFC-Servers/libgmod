--- The spawnmenu library is a set of functions that allow you to control the spawn (Q) menu.  
_G.spawnmenu = {}
---  client
--- Returns currently opened control panel of a tool, post process effect or some other menu in spawnmenu.  
--- @return Panel @The currently opened control panel, if any.
function spawnmenu.ActiveControlPanel()
end

---  client
--- Used to create a new category in the list inside of a spawnmenu ToolTab.  
--- You must call this function from SANDBOX:AddToolMenuCategories for it to work properly.  
--- @param tab string @The ToolTab name, as created with spawnmenu.AddToolTab
--- @param RealName string @The identifier name
--- @param PrintName string @The displayed name
function spawnmenu.AddToolCategory(tab, RealName, PrintName)
end

---  client
--- Adds a new tool tab (or returns an existing one by name) to the right side of the spawnmenu via the SANDBOX:AddToolMenuTabs hook.  
--- @param name string @The internal name of the tab
--- @param label? string @The 'nice' name of the tab
--- @param icon? string @The filepath to the icon of the tab
--- @return table @A table of tables representing categories and items in the left part of the tab
function spawnmenu.GetToolMenu(name, label, icon)
end

---  client
--- Gets a table of tools on the client.  
--- @return table @A table with groups of tools, along with information on each tool.
function spawnmenu.GetTools()
end

