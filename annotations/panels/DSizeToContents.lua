--- A helper panel that will automatically resize itself to fit all its children using Panel:SizeToChildren.  
--- @class DSizeToContents : Panel
local DSizeToContents = {}
---  client|menu
--- Returns whether the DSizeToContents panel should size to contents horizontally.  
--- @return boolean @Whether the panel should size to contents horizontally.
function DSizeToContents:GetSizeX()
end

---  client|menu
--- Returns whether the DSizeToContents panel should size to contents vertically.  
--- @return boolean @Whether the panel should size to contents vertically.
function DSizeToContents:GetSizeY()
end

---  client|menu
--- Sets whether the DSizeToContents panel should size to contents horizontally. This is `true` by default.  
--- @param sizeX boolean @Whether the panel should size to contents horizontally.
function DSizeToContents:SetSizeX(sizeX)
end

---  client|menu
--- Sets whether the DSizeToContents panel should size to contents vertically. This is `true` by default.  
--- @param sizeY boolean @Whether the panel should size to contents vertically.
function DSizeToContents:SetSizeY(sizeY)
end

