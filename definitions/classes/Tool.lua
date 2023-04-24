--- A list of functions available inside a Sandbox Toolgun tool.  
--- You can find the hooks  and members here.  
--- @class Tool
local Tool = {}
--- Returns whether the tool is allowed to be used or not. This function ignores the SANDBOX:CanTool hook.  
--- By default this will always return true clientside and uses `TOOL.AllowedCVar`which is a ConVar object pointing to  `toolmode_allow_*toolname*` convar on the server.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:90
--- @return boolean @Returns true if the tool is allowed.
function Tool:Allowed()
end

--- Builds a list of all ConVars set via the ClientConVar variable on the Structures/TOOL and their default values. This is used for the preset system.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:67
--- @return table @A list of all convars and their default values.
function Tool:BuildConVarList()
end

--- Clears all objects previously set with Tool:SetObject.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:34
function Tool:ClearObjects()
end

--- Retrieves a physics bone number previously stored using Tool:SetObject.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:81
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return number @Associated physics bone with given id.
function Tool:GetBone(id)
end

--- Attempts to grab a clientside tool ConVar value as a boolean.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:87
--- @param name string @Name of the ConVar to retrieve
--- @param default? boolean @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar
function Tool:GetClientBool(name, default)
end

--- Attempts to grab a clientside tool ConVar as a string.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:67
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function Tool:GetClientInfo(name)
end

--- Attempts to grab a clientside tool ConVar's value as a number.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:77
--- @param name string @Name of the convar to retrieve
--- @param default? number @The default value to return in case the lookup fails.
--- @return number @The value of the requested ConVar.
function Tool:GetClientNumber(name, default)
end

--- Retrieves an Entity previously stored using Tool:SetObject.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:48
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Entity @Associated Entity with given id.
function Tool:GetEnt(id)
end

--- Returns a language key based on this tool's name and the current stage it is on.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:163
--- @return string @The returned language key, for example `"#tool.weld.1"`
function Tool:GetHelpText()
end

--- Retrieves an local vector previously stored using Tool:SetObject.  
--- See also Tool:GetPos.  
--- @source ../../garrysmod/garrysmod/gamemode/sandbox/entities/weapons/gmod_tool/object.lua:76
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated local vector with given id.
function Tool:GetLocalPos(id)
end

--- Returns the name of the current tool mode.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:101
--- @return string @The current tool mode.
function Tool:GetMode()
end

--- Retrieves an normal vector previously stored using Tool:SetObject.  
--- @source ../../garrysmod/garrysmod/gamemode/sandbox/entities/weapons/gmod_tool/object.lua:85
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated normal vector with given id.
function Tool:GetNormal(id)
end

--- Returns the current operation of the tool set by Tool:SetOperation.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:28
--- @return number @The current operation the tool is at.
function Tool:GetOperation()
end

--- Returns the owner of this tool.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:103
--- @return Entity @Player using the tool
function Tool:GetOwner()
end

--- Retrieves an PhysObj previously stored using Tool:SetObject.  
--- See also Tool:GetEnt.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:100:108
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return PhysObj @Associated PhysObj with given id
function Tool:GetPhys(id)
end

--- Retrieves an vector previously stored using Tool:SetObject. See also Tool:GetLocalPos.  
--- @source ../../garrysmod/garrysmod/gamemode/sandbox/entities/weapons/gmod_tool/object.lua:61
--- @param id number @The id of the object which was set in Tool:SetObject.
--- @return Vector @Associated vector with given id
function Tool:GetPos(id)
end

--- Attempts to grab a serverside tool ConVar.  
--- This will not do anything on client, despite the function being defined shared.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool.lua:59
--- @param name string @Name of the convar to retrieve
--- @return string @The value of the requested ConVar.
function Tool:GetServerInfo(name)
end

--- Returns the current stage of the tool set by Tool:SetStage.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:16
--- @return number @The current stage of the current operation the tool is at.
function Tool:GetStage()
end

--- Initializes the ghost entity with the given model. Removes any old ghost entity if called multiple times.  
--- The ghost is a regular prop_physics entity in singleplayer games, and a clientside prop in multiplayer games.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/ghostentity.lua:6
--- @param model string @The model of the new ghost entity
--- @param pos Vector @Position to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
--- @param angle Angle @Angle to initialize the ghost entity at, usually not needed since this is updated in Tool:UpdateGhostEntity.
function Tool:MakeGhostEntity(model, pos, angle)
end

--- Returns the amount of stored objects ( Entitys ) the tool has.  
--- ⁉ **VALIDATE**: Are TOOLs limited to 4 entities?  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:149
--- @return number @The amount of stored objects, or Tool:GetStage clientide.
function Tool:NumObjects()
end

--- Automatically forces the tool's control panel to be rebuilt.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stool_cl.lua:12
--- @param ... any ... @Any arguments given to this function will be added to TOOL.BuildCPanel's arguments.
function Tool:RebuildControlPanel(...)
end

--- Removes any ghost entity created for this tool.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/ghostentity.lua:68
function Tool:ReleaseGhostEntity()
end

--- Stores an Entity for later use in the tool.  
--- The stored values can be retrieved by Tool:GetEnt, Tool:GetPos, Tool:GetLocalPos, Tool:GetPhys, Tool:GetBone and Tool:GetNormal  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:112
--- @param id number @The id of the object to store.
--- @param ent Entity @The entity to store.
--- @param pos Vector @The position to store
--- @param phys PhysObj @The physics object to store.
--- @param bone number @The hit bone to store.
--- @param normal Vector @The hit normal to store.
function Tool:SetObject(id, ent, pos, phys, bone, normal)
end

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
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:20
--- @param operation number @The new operation ID to set.
function Tool:SetOperation(operation)
end

--- Sets the current stage of the tool. Does nothing clientside.  
--- See also Tool:SetOperation.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/object.lua:8:14
--- @param stage number @The new stage to set.
function Tool:SetStage(stage)
end

--- Initializes the ghost entity based on the supplied entity.  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/ghostentity.lua:54
--- @param ent Entity @The entity to copy ghost parameters off
function Tool:StartGhostEntity(ent)
end

--- Updates the position and orientation of the ghost entity based on where the toolgun owner is looking along with data from object with id 1 set by Tool:SetObject.  
--- This should be called in the tool's TOOL:Think hook.  
--- This command is only used for tools that move props, such as easy weld, axis and motor. If you want to update a ghost like the thruster tool does it for example, check its [source code](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stools/thruster.lua#L179).  
--- @source ../../garrysmod/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/ghostentity.lua:101
function Tool:UpdateGhostEntity()
end

