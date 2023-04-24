--- A preset manager, found at the top of almost every default tool's C-menu.  
--- This control only exists in Sandbox derived gamemodes.  
--- @class ControlPresets : Panel
local ControlPresets = {}
--- Adds a convar to be managed by this control.  
--- @param convar string @The convar to add.
function ControlPresets:AddConVar(convar)
end

--- Get a list of all Console Variables being managed by this panel.  
--- @return table @numbered table of convars
function ControlPresets:GetConVars()
end

--- Set the name label text.  
--- @param name string @The text to put in the label
function ControlPresets:SetLabel(name)
end

