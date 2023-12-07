--- @class DDragBase
local DDragBase = {}
---  client|menu
--- Whether this panel uses live drag'n'drop previews.  
--- @return boolean 
function DDragBase:GetUseLiveDrag()
end

---  client|menu
--- Sets whether this panel is read only or not for drag'n'drop purposes. If set to `true`, you can only copy from this panel, and cannot modify its contents.  
--- @param name boolean @Whether this panel should be read only or not.
function DDragBase:SetReadOnly(name)
end

