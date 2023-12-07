--- @class ControlPanel
local ControlPanel = {}
---  client
--- Creates a MatSelect panel and adds it as an item.  
--- @param convar string @Calls MatSelect:SetConVar with this value.
--- @param options? table @If specified, calls MatSelect:AddMaterial(key, value) for each table entry
--- @param autostretch? boolean @If specified, calls MatSelect:SetAutoHeight with this value.
--- @param width? number @If specified, calls MatSelect:SetItemWidth with this value.
--- @param height? number @If specified, calls MatSelect:SetItemHeight with this value.
--- @return MatSelect @The created MatSelect panel.
function ControlPanel:MatSelect(convar, options, autostretch, width, height)
end

---  client
--- Creates a ControlPresets panel and adds it as an item.  
--- @param group string @The preset group
--- @param cvarList table @A table of convar names as keys and their defaults as the values
--- @return Panel @The created ControlPresets panel.
function ControlPanel:ToolPresets(group, cvarList)
end

