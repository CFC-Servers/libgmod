--- <internal></internal>  
--- A VGUI base panel providing drag/drop functionality. Used by DIconLayout, DListLayout and DTileLayout.  
--- @class DDragBase : DPanel
local DDragBase = {}
---  client|menu
--- Returns the drag'n'drop group this panel belongs to. See DDragBase:MakeDroppable.  
--- @return string @Name of the DnD family.
function DDragBase:GetDnD()
end

---  client|menu
--- Returns whether this panel is read only or not for drag'n'drop purposes.  
--- @return boolean @Whether this panel is read only or not.
function DDragBase:GetReadOnly()
end

---  client|menu
--- Whether this panel uses live drag'n'drop previews.  
--- @return boolean 
function DDragBase:GetUseLiveDrag()
end

---  client|menu
--- Makes the panel a receiver for any droppable panel with the same DnD name. Internally calls Panel:Receiver.  
--- See Drag and Drop for VGUI.  
--- @param name string @The unique name for the receiver slot
--- @param allowCopy boolean @Whether or not to allow droppable panels to be copied when the <key>Ctrl</key> key is held down.
function DDragBase:MakeDroppable(name, allowCopy)
end

---  client|menu
--- Called when anything is dropped on or rearranged within the DDragBase.  
function DDragBase:OnModified()
end

---  client|menu
--- Determines where you can drop stuff.  
--- "4" for left  
--- "5" for center  
--- "6" for right  
--- "8" for top  
--- "2" for bottom  
--- @param pos? string @Where you're allowed to drop things.
function DDragBase:SetDropPos(pos)
end

---  client|menu
--- Sets whether this panel is read only or not for drag'n'drop purposes. If set to `true`, you can only copy from this panel, and cannot modify its contents.  
--- @param name boolean @Whether this panel should be read only or not.
function DDragBase:SetReadOnly(name)
end

---  client|menu
--- Whether to use live drag'n'drop previews.  
--- @param newState boolean 
function DDragBase:SetUseLiveDrag(newState)
end

