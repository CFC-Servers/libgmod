--- <internal></internal>  
--- The panel used internally for tool tips. See Panel:SetTooltip.  
--- @class DTooltip : DLabel
local DTooltip = {}
---  client|menu
--- Forces the tooltip to close. This will remove the panel.  
function DTooltip:Close()
end

---  client|menu
--- Used to draw a triangle beneath the DTooltip  
--- ℹ **NOTE**: Requires DTooltip:SetContents, without this it will error  
--- @param x number @arrow location on the x axis
--- @param y number @arrow location on the y axis
function DTooltip:DrawArrow(x, y)
end

---  client|menu
--- What Panel you want put inside of the DTooltip  
--- ℹ **NOTE**: You can only have one Panel at a time; use Parenting to add more  
--- @param panel Panel @Contents
--- @param bDelete? boolean @If set to true, the panel in the first argument will be automatically removed when DTooltip is closed via DTooltip:Close.
function DTooltip:SetContents(panel, bDelete)
end

