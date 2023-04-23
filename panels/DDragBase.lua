--- <internal></internal>  
--- A VGUI base panel providing drag/drop functionality. Used by DIconLayout, DListLayout and DTileLayout.  
--- @class DDragBase : DPanel
local DDragBase = {}
--- No Description  
--- @return string @Name of the DnD family.
function DDragBase:GetDnD()
end

--- No Description  
--- @return boolean 
function DDragBase:GetUseLiveDrag()
end

--- Makes the panel a receiver for any droppable panel with the same DnD name. Internally calls Panel:Receiver.  
--- @param name string @The unique name for the receiver slot
--- @param allowCopy boolean @Whether or not to allow droppable panels to be copied when the <key>Ctrl</key> key is held down.
function DDragBase:MakeDroppable(name, allowCopy)
end

--- Called when anything is dropped on or rearranged within the DDragBase.  
function DDragBase:OnModified()
end

--- No Description  
--- @param name string @Name of the DnD family.
function DDragBase:SetDnD(name)
end

--- Determines where you can drop stuff.  
--- "4" for left  
--- "5" for center  
--- "6" for right  
--- "8" for top  
--- "2" for bottom  
--- @param pos? string @Where you're allowed to drop things.
function DDragBase:SetDropPos(pos)
end

--- No Description  
--- @param newState boolean 
function DDragBase:SetUseLiveDrag(newState)
end

