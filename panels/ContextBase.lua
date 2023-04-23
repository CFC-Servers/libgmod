--- A base for all context menu panels ( The ones used for tool options in sandbox )  
--- @class ContextBase : Panel
local ContextBase = {}
--- Returns the ConVar for the panel to change/handle, set by ContextBase:SetConVar  
--- @return string @The ConVar for the panel to change.
function ContextBase:ConVar()
end

--- Called by spawnmenu functions (when creating a context menu) to fill this control with data.  
--- @param contextData table @A two-membered table:
function ContextBase:ControlValues(contextData)
end

--- Sets the ConVar for the panel to change/handle.  
--- @param cvar string @The ConVar for the panel to change.
function ContextBase:SetConVar(cvar)
end

--- You should override this function and use it to check whether your convar value changed.  
function ContextBase:TestForChanges()
end

