--- The drag'n'drop library, used internally by certain base panels to allow for drag'n'drop functionality, like spawnmenu's customizations.  
_G.dragndrop = {}
--- Clears all the internal drag'n'drop variables.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/client/panel/dragdrop.lua:12:25
function dragndrop.Clear()
end

--- Returns a table of currently dragged panels.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/client/panel/dragdrop.lua:168:179
--- @param name? string @If set, the function will return only the panels with this Panel:Droppable name.
--- @return table @A table of all panels that are being currently dragged, if any.
function dragndrop.GetDroppable(name)
end

--- If returns true, calls dragndrop.StopDragging in dragndrop.Drop. Seems to be broken and does nothing. Is it for override?  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/client/panel/dragdrop.lua:35:41
function dragndrop.HandleDroppedInGame()
end

--- Returns whether the user is dragging something with the drag'n'drop system.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/client/panel/dragdrop.lua:27:33
--- @return boolean @True if the user is dragging something with the drag'n'drop system.
function dragndrop.IsDragging()
end

--- Stops the drag'n'drop and calls dragndrop.Clear.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/client/panel/dragdrop.lua:119:135
function dragndrop.StopDragging()
end

