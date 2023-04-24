--- A simple menu with sub menu, icon and convar support.  
--- @class DMenu : DScrollPanel
local DMenu = {}
--- Creates a DMenuOptionCVar and adds it as an option into the menu. Checking and unchecking the option will alter the given console variable's value.  
--- @param strText string @The text of the button
--- @param convar string @The console variable to change
--- @param on string @The value of the console variable to set when the option is checked
--- @param off string @The value of the console variable to set when the option is unchecked
--- @param funcFunction? function @If set, the function will be called every time the option is pressed/clicked/selected
--- @return Panel @The created DMenuOptionCVar
function DMenu:AddCVar(strText, convar, on, off, funcFunction)
end

--- Add an option to the DMenu  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dmenu.lua:36
--- @param name string @Name of the option.
--- @param func? function @Function to execute when this option is clicked.
--- @return Panel @Returns the created DMenuOption panel.
function DMenu:AddOption(name, func)
end

--- Adds a panel to the DMenu as if it were an option.  
--- This invokes DScrollPanel:AddItem and will not create a new panel if a class name is passed, unlike Panel:Add.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dmenu.lua:29
--- @param pnl Panel @The panel that you want to add.
function DMenu:AddPanel(pnl)
end

--- Adds a horizontal line spacer.  
function DMenu:AddSpacer()
end

--- Add a sub menu to the DMenu  
--- @param Name string @Name of the sub menu.
--- @param func? function @Function to execute when this sub menu is clicked.
--- @return Panel @The created sub DMenu
--- @return Panel @The created DMenuOption
function DMenu:AddSubMenu(Name, func)
end

--- Returns the number of child elements of DMenu's DScrollPanel:GetCanvas.  
--- @return number @The number of child elements
function DMenu:ChildCount()
end

--- 🛑 **DEPRECATED**:   
--- Clears all highlights made by DMenu:HighlightItem.  
--- Doesn't appear to be used or do anything.  
--- @deprecated
function DMenu:ClearHighlights()
end

--- Gets a child by its index.  
--- @param childIndex number @The index of the child to get
function DMenu:GetChild(childIndex)
end

--- 🛑 **DEPRECATED**:   
--- Set by DMenu:SetDeleteSelf  
--- @deprecated
--- @return boolean 
function DMenu:GetDeleteSelf()
end

--- 🛑 **DEPRECATED**:   
--- Returns the value set by DMenu:SetDrawBorder.  
--- @deprecated
--- @return boolean 
function DMenu:GetDrawBorder()
end

--- Returns whether the DMenu should draw the icon column with a different color or not.  
--- See DMenu:SetDrawColumn  
--- @return boolean @Whether to draw the column or not
function DMenu:GetDrawColumn()
end

--- Returns the maximum height of the DMenu.  
--- @return number @The maximum height in pixels
function DMenu:GetMaxHeight()
end

--- Returns the minimum width of the DMenu in pixels  
--- @return number @the minimum width of the DMenu
function DMenu:GetMinimumWidth()
end

--- Used to safely hide (not remove) the menu. This will also hide any opened submenues recursively.  
function DMenu:Hide()
end

--- 🛑 **DEPRECATED**:   
--- Highlights selected item in the DMenu by setting the item's key "Highlight" to true.  
--- Doesn't appear to be working or used.  
--- @param item Panel @The item to highlight.
--- @deprecated
function DMenu:HighlightItem(item)
end

--- Opens the DMenu at the current mouse position  
--- @param x? number @Position (X coordinate) to open the menu at.
--- @param y? number @Position (Y coordinate) to open the menu at.
--- @param skipanimation? any @This argument does nothing.
--- @param ownerpanel? Panel @If `x` and `y` are not set manually, setting this argument will offset the `y` position of the opened menu by the height of given panel.
function DMenu:Open(x, y, skipanimation, ownerpanel)
end

--- Closes any active sub menus, and opens a new one.  
--- @param item Panel @The DMenuOption to open the submenu at
--- @param menu? Panel @The submenu to open
function DMenu:OpenSubMenu(item, menu)
end

--- Called when a option has been selected  
--- @param option Panel @The DMenuOption that was selected
--- @param optionText string @The options text
function DMenu:OptionSelected(option, optionText)
end

--- Set to true by default. IF set to true, the menu will be deleted when it is closed, not simply hidden.  
--- This is used by DMenuBar  
--- @param newState boolean @true to delete menu on close, false to simply hide.
function DMenu:SetDeleteSelf(newState)
end

--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param bool boolean 
--- @deprecated
function DMenu:SetDrawBorder(bool)
end

--- Sets whether the DMenu should draw the icon column with a different color.  
--- @param draw boolean @Whether to draw the column or not
function DMenu:SetDrawColumn(draw)
end

--- Sets the maximum height the DMenu can have. If the height of all menu items exceed this value, a scroll bar will be automatically added.  
--- @param maxHeight number @The maximum height of the DMenu to set, in pixels
function DMenu:SetMaxHeight(maxHeight)
end

--- Sets the minimum width of the DMenu. The menu will be stretched to match the given value.  
--- @param minWidth number @The minimum width of the DMenu in pixels
function DMenu:SetMinimumWidth(minWidth)
end

