_G.vgui = {}
---  client|menu
--- Creates a panel by the specified classname.  
--- ℹ **NOTE**: Custom VGUI elements are not loaded instantly. Use GM:OnGamemodeLoaded to create them on startup.  
--- @param classname string @Classname of the panel to create
--- @param parent? Panel @Panel to parent to.
--- @param name? string @Custom name of the created panel for scripting/debugging purposes
--- @return Panel @The created panel, or `nil` if creation failed for whatever reason.
function vgui.Create(classname, parent, name)
end

---  client|menu
--- Creates a panel from table. Typically used with vgui.RegisterFile and vgui.RegisterTable.  
--- @param metatable table @Your PANEL table.
--- @param parent? Panel @Which panel to parent the newly created panel to.
--- @param name? string @Custom name of the created panel for scripting/debugging purposes
--- @return Panel @The created panel, or `nil` if creation failed for whatever reason.
function vgui.CreateFromTable(metatable, parent, name)
end

---  client|menu
--- Returns true if Lua-defined panel exists by name. Uses vgui.GetControlTable internally.  
--- @param Panelname string @The name of the panel to get test.
--- @return boolean @Whether a panel with given name was registered yet or not.
function vgui.Exists(Panelname)
end

---  client|menu
--- Returns the global world panel which is the parent to all others, except for the HUD panel.  
--- See also Global.GetHUDPanel.  
--- @return Panel @The world panel
function vgui.GetWorldPanel()
end

