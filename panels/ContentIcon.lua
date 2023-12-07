--- @class ContentIcon
local ContentIcon = {}
---  client
--- Returns the content type used to save and restore the content icon in a spawnlist.  
--- @return string @The content type, for example "entity" or "weapon".
function ContentIcon:GetContentType()
end

---  client
--- Sets the color for the content icon. Currently is not used by the content icon panel.  
--- @param clr table @The color to set
function ContentIcon:SetColor(clr)
end

---  client
--- Sets the tool tip and the "nice" name to be displayed by the content icon.  
--- @param name string @"Nice" name to display.
function ContentIcon:SetName(name)
end

