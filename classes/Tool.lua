--- A list of functions available inside a Sandbox Toolgun tool.  
--- You can find the hooks  and members here.  
--- @class Tool
local Tool = {}
---  client|server
--- Returns whether the tool is allowed to be used or not. This function ignores the SANDBOX:CanTool hook.  
--- By default this will always return true clientside and uses `TOOL.AllowedCVar`which is a ConVar object pointing to  `toolmode_allow_*toolname*` convar on the server.  
--- @return boolean @Returns true if the tool is allowed.
function Tool:Allowed()
end

---  client|server
--- Builds a list of all ConVars set via the ClientConVar variable on the Structures/TOOL and their default values. This is used for the preset system.  
--- @return table @A list of all convars and their default values.
function Tool:BuildConVarList()
end

---  client|server
--- Clears all objects previously set with Tool:SetObject.  
function Tool:ClearObjects()
end

---  client|server
--- Retrieves a physics bone number previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return number @Associated physics bone with given id.
function Tool:GetBone(id)
end

---  client|server
--- Attempts to grab a clientside tool ConVar value as a boolean.  
--- @param name string @Name of the ConVar to retrieve
--- @param default? boolean @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar
function Tool:GetClientBool(name, default)
end

---  client|server
--- Attempts to grab a clientside tool ConVar as a string.  
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function Tool:GetClientInfo(name)
end

---  client|server
--- Attempts to grab a clientside tool ConVar's value as a number.  
--- @param name string @Name of the convar to retrieve
--- @param default? number @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar.
function Tool:GetClientNumber(name, default)
end

---  client|server
--- Retrieves an Entity previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Entity @Associated Entity with given id.
function Tool:GetEnt(id)
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
--- Returns the name of the current tool mode.  
--- @return string @The current tool mode.
function Tool:GetMode()
end

---  client|server
--- Retrieves an normal vector previously stored using Tool:SetObject.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated normal vector with given id.
function Tool:GetNormal(id)
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
--- Retrieves an PhysObj previously stored using Tool:SetObject.  
--- See also Tool:GetEnt.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return PhysObj @Associated PhysObj with given id
function Tool:GetPhys(id)
end

---  client|server
--- Retrieves an vector previously stored using Tool:SetObject. See also Tool:GetLocalPos.  
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated vector with given id
function Tool:GetPos(id)
end

---  client|server
--- Attempts to grab a serverside tool ConVar.  
--- This will not do anything on client, despite the function being defined shared.  
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function Tool:GetServerInfo(name)
end

---  client|server
--- Returns the current stage of the tool set by Tool:SetStage.  
--- @return number @The current stage of the current operation the tool is at.
function Tool:GetStage()
end

---  client|server
--- Initializes the ghost entity with the given model. Removes any old ghost entity if called multiple times.  
--- The ghost is a regular prop_physics entity in singleplayer games, and a clientside prop in multiplayer games.  
--- @param model string @The model of the new ghost entity
--- @param pos Vector @Position to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
--- @param angle Angle @Angle to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
function Tool:MakeGhostEntity(model, pos, angle)
end

---  client|server
--- Returns the amount of stored objects ( Entitys ) the tool has.  
--- ⁉ **VALIDATE**: Are TOOLs limited to 4 entities?  
--- @return number @The amount of stored objects, or Tool:GetStage clientide.
function Tool:NumObjects()
end

---  client
--- Automatically forces the tool's control panel to be rebuilt.  
--- @param ... any ... @Any arguments given to this function will be added to TOOL.BuildCPanel's arguments.
function Tool:RebuildControlPanel(...)
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

---  client|server
--- Sets the current operation of the tool. Does nothing clientside. See also Tool:SetStage.  
--- Operations and stages work as follows:  
--- * Operation 1  
--- * * Stage 1  
--- * * Stage 2  
--- * * Stage 3  
--- * Operation 2  
--- * * Stage 1  
--- * * Stage 2  
--- * * Stage ...  
--- @param operation number @The new operation ID to set.
function Tool:SetOperation(operation)
end

---  client|server
--- Sets the current stage of the tool. Does nothing clientside.  
--- See also Tool:SetOperation.  
--- @param stage number @The new stage to set.
function Tool:SetStage(stage)
end

---  client|server
--- Initializes the ghost entity based on the supplied entity.  
--- @param ent Entity @The entity to copy ghost parameters off
function Tool:StartGhostEntity(ent)
end

---  client|server
--- Updates the position and orientation of the ghost entity based on where the toolgun owner is looking along with data from object with id 1 set by Tool:SetObject.  
--- This should be called in the tool's TOOL:Think hook.  
--- This command is only used for tools that move props, such as easy weld, axis and motor. If you want to update a ghost like the thruster tool does it for example, check its [source code](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stools/thruster.lua#L179).  
function Tool:UpdateGhostEntity()
end

