--- A simple Derma MenuBar  
--- @class DMenuBar : DPanel
local DMenuBar = {}
---  client
--- Creates a new DMenu object tied to a DButton with the given label on the menu bar.  
--- This will create a new menu regardless of whether or not one with the same label exists. To add **or** get a menu, use DMenuBar:AddOrGetMenu.  
--- @param label string @The name (label) of the derma menu to create.
--- @return Panel @The new DMenu which will be opened when the button is clicked.
function DMenuBar:AddMenu(label)
end

---  client
--- Retrieves a DMenu object from the menu bar. If one with the given label doesn't exist, a new one is created.  
--- To add a DMenu without checking, use DMenuBar:AddMenu.  
--- @param label string @The name (label) of the derma menu to get or create.
--- @return Panel @The DMenu with the given label.
function DMenuBar:AddOrGetMenu(label)
end

---  client
--- Returns the DMenuBar's background color  
--- @return table @The background's color
function DMenuBar:GetBackgroundColor()
end

---  client
--- Returns whether or not the DMenuBar is disabled  
--- @return boolean @Is disabled
function DMenuBar:GetDisabled()
end

---  client
--- 🛑 **DEPRECATED**: Use DMenuBar:GetPaintBackground instead.  
--- Returns whether or not the background should be painted. Is the same as DMenuBar:GetPaintBackground  
--- @deprecated
--- @return boolean @Should the background be painted
function DMenuBar:GetDrawBackground()
end

---  client
--- Returns whether or not the panel is a menu. Used for closing menus when another panel is selected.  
--- @return boolean @Is a menu
function DMenuBar:GetIsMenu()
end

---  client
--- If a menu is visible/opened, then the menu is returned.  
--- @return Panel @Returns the visible/open menu or nil.
function DMenuBar:GetOpenMenu()
end

---  client
--- Returns whether or not the background should be painted. Is the same as DMenuBar:GetDrawBackground  
--- @return boolean @Should the background be painted
function DMenuBar:GetPaintBackground()
end

---  client
--- Sets the background color  
--- @param color table @See Color
function DMenuBar:SetBackgroundColor(color)
end

---  client
--- Sets whether or not the panel is disabled  
--- @param disable boolean @Should be disabled or not
function DMenuBar:SetDisabled(disable)
end

---  client
--- 🛑 **DEPRECATED**: Use DMenuBar:SetPaintBackground  
--- Sets whether or not the background should be painted. Is the same as DMenuBar:SetPaintBackground  
--- @param shouldPaint boolean @Should the background be painted
--- @deprecated
function DMenuBar:SetDrawBackground(shouldPaint)
end

---  client
--- Sets whether or not the panel is a menu. Used for closing menus when another panel is selected.  
--- @param isMenu boolean @Is this a menu
function DMenuBar:SetIsMenu(isMenu)
end

---  client
--- Sets whether or not the background should be painted. Is the same as DMenuBar:SetDrawBackground  
--- @param shouldPaint boolean @Should the background be painted
function DMenuBar:SetPaintBackground(shouldPaint)
end

