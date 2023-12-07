--- @class Tool
local Tool = {}
---  client|server
--- Builds a list of all ConVars set via the ClientConVar variable on the Structures/TOOL and their default values. This is used for the preset system.  
--- @return table @A list of all convars and their default values.
function Tool:BuildConVarList()
end

---  client|server
--- Returns a language key based on this tool's name and the current stage it is on.  
--- @return string @The returned language key, for example `"#tool.weld.1"`
function Tool:GetHelpText()
end

---  client|server
--- Retrieves an local vector previously stored using Tool:SetObject.  
--- See also Tool:GetPos.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated local vector with given id.
function Tool:GetLocalPos(id)
end

---  client|server
--- Returns the current operation of the tool set by Tool:SetOperation.  
--- @return number @The current operation the tool is at.
function Tool:GetOperation()
end

---  client|server
--- Returns the owner of this tool.  
--- @return Entity @Player using the tool
function Tool:GetOwner()
end

---  client|server
--- Removes any ghost entity created for this tool.  
function Tool:ReleaseGhostEntity()
end

---  client|server
--- Stores an Entity for later use in the tool.  
--- The stored values can be retrieved by Tool:GetEnt, Tool:GetPos, Tool:GetLocalPos, Tool:GetPhys, Tool:GetBone and Tool:GetNormal  
--- @param id number @The id of the object to store.
--- @param ent Entity @The entity to store.
--- @param pos Vector @The position to store
--- @param phys PhysObj @The physics object to store.
--- @param bone number @The hit bone to store.
--- @param normal Vector @The hit normal to store.
function Tool:SetObject(id, ent, pos, phys, bone, normal)
end

