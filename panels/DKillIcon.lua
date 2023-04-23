--- Uses the killicon to persistently draw a killicon.  
--- @class DKillIcon : Panel
local DKillIcon = {}
--- Gets the killicon being shown.  
--- @return string @The name of the killicon currently being displayed.
function DKillIcon:GetName()
end

--- Sets the killicon to be displayed. You should call Panel:SizeToContents following this.  
--- Killicons can be added with killicon.Add and killicon.AddFont.  
--- @param iconName string @The name of the killicon to be displayed.
function DKillIcon:SetName(iconName)
end

