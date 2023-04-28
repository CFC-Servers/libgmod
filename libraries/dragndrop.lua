--- The drag'n'drop library, used internally by certain base panels to allow for drag'n'drop functionality, like spawnmenu's customizations.  
_G.dragndrop = {}
---  client|menu
--- Clears all the internal drag'n'drop variables.  
function dragndrop.Clear()
end

---  client|menu
--- Returns a table of currently dragged panels.  
--- @param name? string @If set, the function will return only the panels with this Panel:Droppable name.
--- @return table @A table of all panels that are being currently dragged, if any.
function dragndrop.GetDroppable(name)
end

---  client|menu
--- If returns true, calls dragndrop.StopDragging in dragndrop.Drop. Seems to be broken and does nothing. Is it for override?  
function dragndrop.HandleDroppedInGame()
end

---  client|menu
--- Returns whether the user is dragging something with the drag'n'drop system.  
--- @return boolean @True if the user is dragging something with the drag'n'drop system.
function dragndrop.IsDragging()
end

---  client|menu
--- Stops the drag'n'drop and calls dragndrop.Clear.  
function dragndrop.StopDragging()
end

