--- The menubar library.  
_G.menubar = {}
---  client
--- Creates the menu bar ( The bar at the top of the screen when holding C or Q in sandbox ) and docks it to the top of the screen. It will not appear.  
--- Calling this multiple times will **NOT** remove previous panel.  
function menubar.Init()
end

---  client
--- Checks if the supplied panel is parent to the menubar  
--- @param pnl Panel @The panel to check
--- @return boolean @Is parent or not
function menubar.IsParent(pnl)
end

---  client
--- Parents the menubar to the panel and displays the menubar.  
--- @param pnl Panel @The panel to parent to
function menubar.ParentTo(pnl)
end

