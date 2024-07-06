--- <internal></internal>  
--- The little "+" button used by DProperties and DTree_Node.  
--- @class DExpandButton : DButton
local DExpandButton = {}
---  client|menu
--- Returns whether this DExpandButton is expanded or not.  
--- @return boolean @True if expanded, false otherwise
function DExpandButton:GetExpanded()
end

---  client|menu
--- Sets whether this DExpandButton should be expanded or not. Only changes appearance.  
--- @param expanded boolean @True to expand ( visually will show a "-" )
function DExpandButton:SetExpanded(expanded)
end

