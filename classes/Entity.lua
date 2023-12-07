--- @class Entity
local Entity = {}
---  client|server
--- Add a callback function to a specific event. This is used instead of hooks to avoid calling empty functions unnecessarily.  
--- This also allows you to use certain hooks in engine entities (non-scripted entities).  
--- ⚠ **WARNING**: This method does not check if the function has already been added to this object before, so if you add the same callback twice, it will be run twice! Make sure to add your callback only once.  
--- @param hook string @The hook name to hook onto
--- @param func function @The function to call
--- @return number @The callback ID that was just added, which can later be used in Entity:RemoveCallback
function Entity:AddCallback(hook, func)
end

---  client|server
--- Adds solid flag(s) to the entity.  
--- @param flags number @The flag(s) to apply, see Enums/FSOLID.
function Entity:AddSolidFlags(flags)
end

---  client|server
--- Adds a PhysObject to the entity's motion controller so that ENTITY:PhysicsSimulate will be called for given PhysObject as well.  
--- You must first create a motion controller with Entity:StartMotionController.  
--- You can remove added PhysObjects by using Entity:RemoveFromMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type  
--- @param physObj PhysObj @The PhysObj to add to the motion controller.
function Entity:AddToMotionController(physObj)
end

---  server
--- Returns a centered vector of this entity, NPCs use this internally to aim at their targets.  
--- ℹ **NOTE**: This only works on players and NPCs.  
--- @param origin Vector @The vector of where the the attack comes from.
--- @param noisy? boolean @Decides if it should return the centered vector with a random offset to it.
--- @return Vector @The centered vector.
function Entity:BodyTarget(origin, noisy)
end

---  server
--- Clears all registered events for map I/O outputs on this entity. If a string is given, will use the string as a wildcard to limit removed outputs by name matches.  
--- @param outputName? string @An optional string that will be used to limit removed outputs by name matches, supports wildcards.
function Entity:ClearAllOutputs(outputName)
end

---  client|server
--- Resets all pose parameters such as aim_yaw, aim_pitch and rotation.  
function Entity:ClearPoseParameters()
end

---  server
--- Destroys bone followers created by Entity:CreateBoneFollowers.  
--- ℹ **NOTE**: This function only works on `anim` type entities.  
function Entity:DestroyBoneFollowers()
end

---  client
--- Removes the shadow for the entity.  
--- The shadow will be recreated as soon as the entity wakes.  
--- ℹ **NOTE**:   
--- Doesn't affect shadows from flashlight/lamps/env_projectedtexture.  
function Entity:DestroyShadow()
end

---  client|server
--- Performs a trace attack towards the entity this function is called on. Visually identical to Entity:TakeDamageInfo.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- @param damageInfo CTakeDamageInfo @The damage to apply.
--- @param traceRes table @Trace result to use to deal damage
--- @param dir? Vector @Direction of the attack.
function Entity:DispatchTraceAttack(damageInfo, traceRes, dir)
end

---  server
--- Extinguishes the entity if it is on fire.  
--- Has no effect if called inside GM:EntityTakeDamage (and the attacker is the flame that's hurting the entity)  
--- See also Entity:Ignite.  
function Entity:Extinguish()
end

---  client|server
--- Makes an entity follow another entity's bone.  
--- Internally this function calls Entity:SetParent( parent, boneid ), Entity:AddEffects( EF_FOLLOWBONE  
--- ) and sets an internal flag to always rebuild all bones.  
--- ℹ **NOTE**: If the entity vibrates or stops following the parent, you probably need to run Entity:SetPredictable( true ) clientside.  
--- ⚠ **WARNING**: This function will not work if the target bone's parent bone is invalid or if the bone is not used by VERTEX LOD0  
--- @param parent? Entity @The entity to follow the bone of
--- @param boneid number @The bone to follow
function Entity:FollowBone(parent, boneid)
end

---  client|server
--- Returns the amount of time since last animation.  
--- Works only on `CBaseAnimating` entities.  
--- @return number @The amount of time since last animation.
function Entity:GetAnimTimeInterval()
end

---  client|server
--- Returns the entity's base velocity which is their velocity due to forces applied by other entities. This includes entity-on-entity collision or riding a treadmill.  
--- @return Vector @The base velocity of the entity.
function Entity:GetBaseVelocity()
end

---  client|server
--- Returns the value of the bone controller with the specified ID.  
--- ℹ **NOTE**: This is the precursor of pose parameters, and only works for Half Life 1: Source models supporting it.  
--- @param boneID number @ID of the bone controller
--- @return number @The value set on the bone controller.
function Entity:GetBoneController(boneID)
end

---  client|server
--- Returns the amount of bones in the entity.  
--- ℹ **NOTE**: Will return `0` for Global.ClientsideModel or undrawn entities until Entity:SetupBones is called on the entity.  
--- @return number @The amount of bones in given entity.
function Entity:GetBoneCount()
end

---  client|server
--- Returns the position and angle of the given attachment, relative to the world.  
--- ⚠ **WARNING**: This function can return entity's `GetPos()` instead if the entity doesn't have it's bone cache set up.  
--- To ensure the bone position is correct use this:  
--- ```lua  
--- local pos = ent:GetBonePosition(0)  
--- if pos == ent:GetPos() then  
--- pos = ent:GetBoneMatrix(0):GetTranslation()  
--- end  
--- ```  
--- ℹ **NOTE**: This function returns the bone position from the last tick, so if your framerate is higher than the server's tickrate it may appear to lag behind if used on a fast moving entity. You can fix this by using the bone's matrix instead:  
--- ```lua  
--- local matrix = entity:GetBoneMatrix(0)  
--- local pos = matrix:GetTranslation()  
--- local ang = matrix:GetAngles()  
--- ```  
--- 🦟 **BUG**: [This can return the server's position during server lag.](https://github.com/Facepunch/garrysmod-issues/issues/884)  
--- 🦟 **BUG**: [This can return garbage serverside or Global.Vector(0,0,0) for v49 models.](https://github.com/Facepunch/garrysmod-issues/issues/3285)  
--- 🦟 **BUG**: [This can return garbage if a trace passed through the target bone during bone matrix access.](https://github.com/Facepunch/garrysmod-issues/issues/3739)  
--- @param boneIndex number @The bone index of the bone to get the position of, starting at index 0
--- @return Vector @The bone's position relative to the world
--- @return Angle @The bone's angle relative to the world.
function Entity:GetBonePosition(boneIndex)
end

---  client|server
--- Returns a table of brushes surfaces for brush model entities.  
--- @return table @Table of SurfaceInfos if the entity has a brush model, or no value otherwise.
function Entity:GetBrushSurfaces()
end

---  client|server
--- Returns the specified hook callbacks for this entity added with Entity:AddCallback  
--- The callbacks can then be removed with Entity:RemoveCallback.  
--- @param hook string @The hook to retrieve the callbacks from, see Entity Callbacks for the possible hooks.
--- @return table @A table containing the callbackid and function of all the callbacks for the specified hook
function Entity:GetCallbacks(hook)
end

---  client|server
--- Returns ids of child bones of given bone.  
--- @param boneid number @Bone id to lookup children of
--- @return table @A table of bone ids
function Entity:GetChildBones(boneid)
end

---  client|server
--- Returns the entity's collision group  
--- @return number @The collision group
function Entity:GetCollisionGroup()
end

---  server
--- Returns the two entities involved in a constraint ent, or nil if the entity is not a constraint.  
--- @return Entity @ent1
--- @return Entity @ent2
function Entity:GetConstrainedEntities()
end

---  client|server
--- Returns whether this entity uses custom collision check set by Entity:SetCustomCollisionCheck.  
--- @return boolean @Whether this entity uses custom collision check or not
function Entity:GetCustomCollisionCheck()
end

---  client|server
--- Returns the frame of the currently played sequence. This will be a number between 0 and 1 as a representation of sequence progress.  
--- @return number @The frame of the currently played sequence
function Entity:GetCycle()
end

---  client|server
--- Returns a bit flag of all engine effect flags of the entity.  
--- @return number @Engine effect flags, see Enums/EF
function Entity:GetEffects()
end

---  client|server
--- Returns the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.  
--- @return number @elasticity
function Entity:GetElasticity()
end

---  client|server
--- Returns the number of flex controllers this entity's model has.  
--- ℹ **NOTE**: Please note that while this function can return the real number of flex controllers, the game supports only a certain amount due to networking limitations. See Entity:SetFlexWeight.  
--- @return number @The number of flexes.
function Entity:GetFlexNum()
end

---  client|server
--- Returns the forward vector of the entity, as a normalized direction vector  
--- @return Vector @forwardDir
function Entity:GetForward()
end

---  client|server
--- Returns the object the entity is standing on.  
--- @return Entity @The ground entity.
function Entity:GetGroundEntity()
end

---  server
--- Returns the entity's ground speed velocity, which is based on the entity's walk/run speed and/or the ground speed of their sequence ( Entity:GetSequenceGroundSpeed ). Will return an empty Vector if the entity isn't moving on the ground.  
--- @return Vector @The ground speed velocity.
function Entity:GetGroundSpeedVelocity()
end

---  server
--- Returns a table containing all key values the entity has.  
--- Single key values can usually be retrieved with Entity:GetInternalVariable.  
--- ℹ **NOTE**: This only includes engine defined key values. For custom key values, use GM:EntityKeyValue or ENTITY:KeyValue to capture and store them.  
--- Here's a list of keyvalues that will not appear in this list, as they are not stored/defined as actual keyvalues internally:  
--- * rendercolor - Entity:GetColor (Only RGB)  
--- * rendercolor32 - Entity:GetColor (RGBA)  
--- * renderamt - Entity:GetColor (Alpha)  
--- * disableshadows - EF_NOSHADOW  
--- * mins - Entity:GetCollisionBounds  
--- * maxs - Entity:GetCollisionBounds  
--- * disablereceiveshadows - EF_NORECEIVESHADOW  
--- * nodamageforces - EFL_NO_DAMAGE_FORCES  
--- * angle - Entity:GetAngles  
--- * angles - Entity:GetAngles  
--- * origin - Entity:GetPos  
--- * targetname - Entity:GetName  
--- @return table @A table of key values.
function Entity:GetKeyValues()
end

---  server
--- Returns the amount a momentary_rot_button entity is turned based on the given angle. 0 meaning completely turned closed, 1 meaning completely turned open.  
--- ⚠ **WARNING**: This only works on momentary_rot_button entities.  
--- @param turnAngle Angle @The angle of rotation to compare - usually should be Entity:GetAngles.
--- @return number @The amount the momentary_rot_button is turned, ranging from 0 to 1, or nil if the entity is not a momentary_rot_button.
function Entity:GetMomentaryRotButtonPos(turnAngle)
end

---  client|server
--- Returns the entity's movetype  
--- @return number @Move type
function Entity:GetMoveType()
end

---  client|server
--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNW2Entity.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Entity(key, fallback)
end

---  client|server
--- Returns all the networked variables in an entity.  
--- @return table @Key-Value table of all networked variables.
function Entity:GetNWVarTable()
end

---  client|server
--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNetworked2Angle.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Angle instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Angle(key, fallback)
end

---  client|server
--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNetworked2Bool.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Bool instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Bool(key, fallback)
end

---  client|server
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworked2Float.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Float instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Float(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWInt instead.  
--- Retrieves a networked integer value at specified index on the entity that is set by Entity:SetNetworkedInt.  
--- @param key string @The key that is associated with the value
--- @param fallback? number @The value to return if we failed to retrieve the value
--- @deprecated
--- @return number @The retrieved value
function Entity:GetNetworkedInt(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWString instead.  
--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNetworkedString.  
--- @param key string @The key that is associated with the value
--- @param fallback string @The value to return if we failed to retrieve the value
--- @deprecated
--- @return string @The retrieved value
function Entity:GetNetworkedString(key, fallback)
end

---  client|server
--- Returns the parent entity of this entity.  
--- @return Entity @parentEntity
function Entity:GetParent()
end

---  client|server
--- If the entity is parented to an entity that has a model with multiple physics objects (like a ragdoll), this is used to retrieve what physics object number the entity is parented to on it's parent.  
--- @return number @The physics object id, or nil if the entity has no parent
function Entity:GetParentPhysNum()
end

---  client|server
--- Returns the entity's physics object, if the entity has physics.  
--- ℹ **NOTE**: Entities don't have clientside physics objects by default, so this will return `[NULL PHYSOBJ]` on the client in most cases.  
--- @return PhysObj @The entity's physics object.
function Entity:GetPhysicsObject()
end

---  client|server
--- Gets the position of entity in world.  
--- @return Vector @The position of the entity.
function Entity:GetPos()
end

---  client|server
--- Returns the entity which the ragdoll came from. The opposite of Player:GetRagdollEntity.  
--- @return Entity @The entity who owns the ragdoll.
function Entity:GetRagdollOwner()
end

---  client|server
--- Returns a table of save values for an entity.  
--- These tables are not the same between the client and the server, and different entities may have different fields.  
--- You can get the list different fields an entity has by looking at it's source code (the 2013 SDK can be found [online](https://github.com/ValveSoftware/source-sdk-2013)). Accessible fields are defined by each `DEFINE_FIELD` and `DEFINE_KEYFIELD` inside the `DATADESC` block.  
--- Take the headcrab, for example:  
--- ```  
--- BEGIN_DATADESC( CBaseHeadcrab )  
--- // m_nGibCount - don't save  
--- DEFINE_FIELD( m_bHidden, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flTimeDrown, FIELD_TIME ),  
--- DEFINE_FIELD( m_bCommittedToJump, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_vecCommittedJumpPos, FIELD_POSITION_VECTOR ),  
--- DEFINE_FIELD( m_flNextNPCThink, FIELD_TIME ),  
--- DEFINE_FIELD( m_flIgnoreWorldCollisionTime, FIELD_TIME ),  
--- DEFINE_KEYFIELD( m_bStartBurrowed, FIELD_BOOLEAN, "startburrowed" ),  
--- DEFINE_FIELD( m_bBurrowed, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flBurrowTime, FIELD_TIME ),  
--- DEFINE_FIELD( m_nContext, FIELD_INTEGER ),  
--- DEFINE_FIELD( m_bCrawlFromCanister, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_bMidJump, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_nJumpFromCanisterDir, FIELD_INTEGER ),  
--- DEFINE_FIELD( m_bHangingFromCeiling, FIELD_BOOLEAN ),  
--- DEFINE_FIELD( m_flIlluminatedTime, FIELD_TIME ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "Burrow", InputBurrow ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "BurrowImmediate", InputBurrowImmediate ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "Unburrow", InputUnburrow ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "StartHangingFromCeiling", InputStartHangingFromCeiling ),  
--- DEFINE_INPUTFUNC( FIELD_VOID, "DropFromCeiling", InputDropFromCeiling ),  
--- // Function Pointers  
--- DEFINE_THINKFUNC( EliminateRollAndPitch ),  
--- DEFINE_THINKFUNC( ThrowThink ),  
--- DEFINE_ENTITYFUNC( LeapTouch ),  
--- END_DATADESC()  
--- ```  
--- * For each **DEFINE_FIELD**, the save table will have a key with name of **first** argument.  
--- * For each **DEFINE_KEYFIELD**, the save table will have a key with name of the **third** argument.  
--- See Entity:GetInternalVariable for only retrieving one key of the save table.  
--- @param showAll boolean @If set, shows all variables, not just the ones for save.
--- @return table @A table containing all save values in key/value format
function Entity:GetSaveTable(showAll)
end

---  client|server
--- Returns an entity's sequence move distance (the change in position over the course of the entire sequence).  
--- See Entity:GetSequenceMovement for a similar function with more options.  
--- @param sequenceId number @The sequence index.
--- @return number @The move distance of the sequence.
function Entity:GetSequenceMoveDist(sequenceId)
end

---  client|server
--- Return the name of the sequence for the index provided.  
--- Refer to Entity:GetSequence to find the current active sequence on this entity.  
--- See Entity:LookupSequence for a function that does the opposite.  
--- @param index number @The index of the sequence to look up.
--- @return string @Name of the sequence.
function Entity:GetSequenceName(index)
end

---  client|server
--- Checks if the entity plays a sound when picked up by a player.  
--- @return boolean @`true` if it plays the pickup sound, `false` otherwise.
function Entity:GetShouldPlayPickupSound()
end

---  client|server
--- Returns the table that contains all script values saved within the entity.  
--- @return table @The entity's Lua table.
function Entity:GetTable()
end

---  client|server
--- Causes the entity to break into its current models gibs, if it has any.  
--- You must call Entity:PrecacheGibs on the entity before using this function, or it will not create any gibs.  
--- If called on server, the gibs will be spawned on the currently connected clients and will not be synchronized. Otherwise the gibs will be spawned only for the client the function is called on.  
--- ℹ **NOTE**:   
--- this function will not remove or hide the entity it is called on.  
--- For more expensive version of this function see Entity:GibBreakServer.  
--- @param force Vector @The force to apply to the created gibs.
--- @param clr? table @If set, this will be color of the broken gibs instead of the entity's color.
function Entity:GibBreakClient(force, clr)
end

---  client|server
--- Causes the entity to break into its current models gibs, if it has any.  
--- You must call Entity:PrecacheGibs on the entity before using this function, or it will not create any gibs.  
--- The gibs will be spawned on the server and be synchronized with all clients.  
--- Note, that this function will not remove or hide the entity it is called on.  
--- This function is affected by `props_break_max_pieces_perframe` and `props_break_max_pieces` console variables.  
--- ⚠ **WARNING**: Large numbers of serverside gibs will cause lag.  
--- You can avoid this cost by spawning the gibs on the client using Entity:GibBreakClient  
--- ℹ **NOTE**: Despite existing on client, it doesn't actually do anything on client.  
--- @param force Vector @The force to apply to the created gibs
function Entity:GibBreakServer(force)
end

---  client|server
--- Returns whether this entity has the specified spawnflags bits set.  
--- @param spawnFlags number @The spawnflag bits to check, see Enums/SF.
--- @return boolean @Whether the entity has that spawnflag set or not.
function Entity:HasSpawnFlags(spawnFlags)
end

---  server
--- Sets the entity on fire.  
--- See also Entity:Extinguish.  
--- @param length number @How long to keep the entity ignited, in seconds.
--- @param radius? number @The radius of the ignition, will ignite everything around the entity that is in this radius.
function Entity:Ignite(length, radius)
end

---  server
--- Returns if entity is constraint or not  
--- @return boolean @Is the entity a constraint or not
function Entity:IsConstraint()
end

---  client|server
--- Returns whether the entity is on ground or not.  
--- Internally, this checks if FL_ONGROUND is set on the entity.  
--- This function is an alias of Entity:OnGround.  
--- @return boolean @Whether the entity is on ground or not.
function Entity:IsOnGround()
end

---  client|server
--- Returns whether a given point is within the entity's Orientated Bounding Box.  
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`.  
--- @param point Vector @The point to test, in world space coordinates.
--- @return boolean @Whether the point is within the entity's bounds.
function Entity:IsPointInBounds(point)
end

---  client|server
--- Returns if the entity is solid or not.  
--- Very useful for determining if the entity is a trigger or not.  
--- @return boolean @Whether the entity is solid or not.
function Entity:IsSolid()
end

---  client|server
--- Returns whether the entity is a valid entity or not.  
--- An entity is valid if:  
--- * It is not a NULL entity  
--- * It is not the worldspawn entity (game.GetWorld)  
--- ℹ **NOTE**: Instead of calling this method directly, it's a good idea to call the global Global.IsValid instead, however if you're sure the variable you're using is always an entity object it's better to use this method  
--- It will check whether the given variable contains an object (an Entity) or nothing at all for you. See examples.  
--- ⚠ **WARNING**: NULL entities can still be assigned with key/value pairs, but they will be instantly negated. See example 3  
--- This might be a cause for a lot of headache. Usually happening during networking etc., when completely valid entities suddenly become invalid on the client, but are never filtered with IsValid(). See GM:InitPostEntity for more details.  
--- @return boolean @true if the entity is valid, false otherwise
function Entity:IsValid()
end

---  client|server
--- Turns the Entity:GetPhysicsObject into a physics shadow.  
--- It's used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.  
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.  
--- ℹ **NOTE**: Unlike Entity:PhysicsInitShadow, this function doesn't remove the current physics object.  
--- @param allowPhysicsMovement? boolean @Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation? boolean @Whether to allow the physics shadow to rotate under stress.
function Entity:MakePhysicsObjectAShadow(allowPhysicsMovement, allowPhysicsRotation)
end

---  client
--- Refreshes the shadow of the entity.  
function Entity:MarkShadowAsDirty()
end

---  client|server
--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.  
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`  
--- @param position Vector @The vector to start the intersection from.
--- @return Vector @The nearest hit point of the entity's bounding box in world coordinates.
function Entity:NearestPoint(position)
end

---  client|server
--- Creates a callback that will execute when the given network variable changes - that is, when the `Set<name>()` function is run.  
--- ℹ **NOTE**: The callback is executed **before** the value is changed, and is called even if the new and old values are the same.  
--- This function does not exist on entities in which Entity:InstallDataTable has not been called. By default, this means this function only exists on SENTs (both serverside and clientside) and on players with a Player Class (serverside and clientside Global.LocalPlayer only). It's therefore safest to only use this in ENTITY:SetupDataTables.  
--- 🦟 **BUG**: [The callback will not be called clientside if the var is changed right after entity spawn.](https://github.com/Facepunch/garrysmod-requests/issues/324)  
--- </name>  
--- @param name string @Name of variable to track changes of.
--- @param callback function @The function to call when the variable changes
function Entity:NetworkVarNotify(name, callback)
end

---  client|server
--- Returns the center of an entity's bounding box in local space.  
--- @return Vector @The center of an entity's bounding box relative to its Entity:GetPos.
function Entity:OBBCenter()
end

---  server
--- Tests whether the damage passes the entity filter.  
--- This will call ENTITY:PassesDamageFilter on scripted entities of the type "filter".  
--- ℹ **NOTE**: This function only works on entities of the type "filter". ( filter_* entities, including base game filter entites )  
--- @param dmg CTakeDamageInfo @The damage info to test
--- @return boolean @Whether the damage info passes the entity filter.
function Entity:PassesDamageFilter(dmg)
end

---  client|server
--- Destroys the current physics object of an entity.  
--- ℹ **NOTE**: Cannot be used on a ragdoll or the world entity.  
function Entity:PhysicsDestroy()
end

---  client|server
--- Makes the physics object of the entity a sphere.  
--- This function will automatically destroy any previous physics objects and do the following:  
--- * Entity:SetSolid( `SOLID_BBOX` )  
--- * Entity:SetMoveType( `MOVETYPE_VPHYSICS` )  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param radius number @The radius of the sphere.
--- @param physmat? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `false` otherwise
function Entity:PhysicsInitSphere(radius, physmat)
end

---  server
--- Sets the function to build the ragdoll. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function Entity:RagdollStopControlling()
end

---  client|server
--- Breaks internal Ragdoll constrains, so you can for example separate an arm from the body of a ragdoll and preserve all physics.  
--- The visual mesh will still stretch as if it was properly connected unless the ragdoll model is specifically designed to avoid that.  
--- @param num? number @Which constraint to break, values below 0 mean break them all
function Entity:RemoveInternalConstraint(num)
end

---  client|server
--- Plays an animation on the entity. This may not always work on engine entities.  
--- ⚠ **WARNING**: This will not reset the animation on viewmodels, use Entity:SendViewModelMatchingSequence instead.  
--- ℹ **NOTE**: This will not work properly if called directly after calling Entity:SetModel. Consider waiting until the next Tick.  
--- Will not work on players due to the animations being reset every frame by the base gamemode animation system. See GM:CalcMainActivity.  
--- For custom scripted entities you will want to apply example from ENTITY:Think to make animations work.  
--- @param sequence number @The sequence to play
function Entity:ResetSequence(sequence)
end

---  client|server
--- Sets a player's third-person animation. Mainly used by Weapons to start the player's weapon attack and reload animations.  
--- @param playerAnim number @Player animation, see Enums/PLAYER.
function Entity:SetAnimation(playerAnim)
end

---  client|server
--- Sets an entities' bodygroup.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model, check will occur by view model.  
--- @param bodygroup number @The id of the bodygroup you're setting
--- @param value number @The value you're setting the bodygroup to
function Entity:SetBodygroup(bodygroup, value)
end

---  client|server
--- Sets the collision bounds for the entity, which are used for triggers (Entity:SetTrigger, ENTITY:Touch), and collision (If Entity:SetSolid set as SOLID_BBOX).  
--- Input bounds are relative to Entity:GetPos!  
--- See also Entity:SetCollisionBoundsWS.  
--- ℹ **NOTE**: Player collision bounds are reset every frame to player's Player:SetHull values.  
--- @param mins Vector @The minimum vector of the bounds.
--- @param maxs Vector @The maximum vector of the bounds.
function Entity:SetCollisionBounds(mins, maxs)
end

---  client|server
--- A convenience function that sets the collision bounds for the entity in world space coordinates by transforming given vectors to entity's local space and passing them to Entity:SetCollisionBounds  
--- @param vec1 Vector @The first vector of the bounds.
--- @param vec2 Vector @The second vector of the bounds.
function Entity:SetCollisionBoundsWS(vec1, vec2)
end

---  client|server
--- Sets the entity's collision group.  
--- @param group number @Collision group of the entity, see Enums/COLLISION_GROUP
function Entity:SetCollisionGroup(group)
end

---  client|server
--- Sets the position an entity's eyes look toward. This works as an override for default behavior. Set to `0,0,0` to disable the override.  
--- @param pos Vector @If NPC, the **world position** for the entity to look towards, for Ragdolls, a **local position** in front of their `eyes` attachment.
function Entity:SetEyeTarget(pos)
end

---  client|server
--- Sets the gravity multiplier of the entity.  
--- 🦟 **BUG**: [This function is not predicted.](https://github.com/Facepunch/garrysmod-issues/issues/3648)  
--- ℹ **NOTE**: This only works on players  
--- @param gravityMultiplier number @Value which specifies the gravity multiplier.
function Entity:SetGravity(gravityMultiplier)
end

---  client|server
--- Sets the current Hitbox set for the entity.  
--- @param id number @The new hitbox set to set
function Entity:SetHitboxSet(id)
end

---  client|server
--- Sets Hammer key values on an entity.  
--- You can look up which entities have what key values on the [Valve Developer Community](https://developer.valvesoftware.com/wiki/) on entity pages.  
--- A  list of basic entities can be found [here](https://developer.valvesoftware.com/wiki/List_of_entities).  
--- Alternatively you can look at the .fgd files shipped with Garry's Mod in the bin/ folder with a text editor to see the key values as they appear in Hammer.  
--- @param key string @The internal key name
--- @param value string @The value to set
function Entity:SetKeyValue(key, value)
end

---  client|server
--- Sets the animation cycle/frame of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param cycle number @The new animation cycle/frame for given layer.
function Entity:SetLayerCycle(layerID, cycle)
end

---  client|server
--- Sets the layer playback rate. See also Entity:SetLayerDuration.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param rate number @The new playback rate.
function Entity:SetLayerPlaybackRate(layerID, rate)
end

---  server
--- Sets the maximum health for entity. Note, that you can still set entity's health above this amount with Entity:SetHealth.  
--- @param maxhealth number @What the max health should be
function Entity:SetMaxHealth(maxhealth)
end

---  client|server
--- Sets the model of the entity.  
--- This does not update the physics of the entity - see Entity:PhysicsInit.  
--- ⚠ **WARNING**: This silently fails when given an empty string.  
--- @param modelName string @New model value.
function Entity:SetModel(modelName)
end

---  client|server
--- Alter the model name returned by Entity:GetModel. Does not affect the entity's actual model.  
--- @param modelname string @The new model name.
function Entity:SetModelName(modelname)
end

---  client|server
--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNW2Bool both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWBool instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
function Entity:SetNW2Bool(key, value)
end

---  client|server
--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNW2Entity both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWEntity instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Entity @The value to set
function Entity:SetNW2Entity(key, value)
end

---  client|server
--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNW2Var both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- the value will only be updated clientside if the entity is or enters the clients PVS.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
function Entity:SetNW2Var(key, value)
end

---  server
--- Sets the mapping name of the entity.  
--- @param mappingName string @The name to set for the entity.
function Entity:SetName(mappingName)
end

---  client
--- Alters the entity's perceived serverside angle on the client.  
--- @param angle Angle @Networked angle.
function Entity:SetNetworkAngles(angle)
end

---  client|server
--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Int both from client and server.  
--- See Entity:SetNW2Float for numbers that aren't integers.  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Int instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS.  
--- The integer has a 32 bit limit. Use Entity:SetNWInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
--- @deprecated
function Entity:SetNetworked2Int(key, value)
end

---  client|server
--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Vector both from client and server.  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Vector instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWVector instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Vector @The value to set
--- @deprecated
function Entity:SetNetworked2Vector(key, value)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWInt instead.  
--- Sets a networked integer value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedInt both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? number @The value to set
--- @deprecated
function Entity:SetNetworkedInt(key, value)
end

---  client|server
--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNetworkedVar both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- 🛑 **DEPRECATED**:   
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- the value will only be updated clientside if the entity is or enters the clients PVS.  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
--- @deprecated
function Entity:SetNetworkedVar(key, value)
end

---  client|server
--- Sets the owner of this entity, disabling all physics interaction with it.  
--- ℹ **NOTE**: This function is generally used to disable physics interactions on projectiles being fired by their owner, but can also be used for normal ownership in case physics interactions are not involved at all. The Gravity gun will be able to pick up the entity even if the owner can't collide with it, the Physics gun however will not.  
--- @param owner? Entity @The entity to be set as owner.
function Entity:SetOwner(owner)
end

---  client|server
--- Sets the parent of an entity to another entity with the given physics bone number. Similar to Entity:SetParent, except it is parented to a physbone. This function is useful mainly for ragdolls.  
--- ℹ **NOTE**: Despite this function being available server side, it doesn't actually do anything server side.  
--- @param bone number @Physics bone number to attach to
function Entity:SetParentPhysNum(bone)
end

---  client
--- Sets whether an entity should be predictable or not.  
--- When an entity is set as predictable, its DT vars can be changed during predicted hooks. This is useful for entities which can be controlled by player input.  
--- Any datatable value that mismatches from the server will be overridden and a prediction error will be spewed.  
--- Weapons are predictable by default, and the drive system uses this function to make the controlled prop predictable as well.  
--- Visit  for a list of all predicted hooks, and the Prediction page.  
--- For further technical information on the subject, visit [valve's wiki](https://developer.valvesoftware.com/wiki/Prediction).  
--- ℹ **NOTE**: This function resets the datatable variables everytime it's called, it should ideally be called when a player starts using the entity and when he stops  
--- ℹ **NOTE**: Entities set as predictable with this function will be unmarked when the user lags and receives a full packet update, to handle such case visit GM:NotifyShouldTransmit  
--- @param setPredictable boolean @whether to make this entity predictable or not.
function Entity:SetPredictable(setPredictable)
end

---  client
--- Set the render origin override, a position where the Entity will be rendered at.  
--- @param newOrigin? Vector @The new origin in world coordinates where the Entity's model will now be rendered at
function Entity:SetRenderOrigin(newOrigin)
end

---  client|server
--- Sets the entity's model sequence.  
--- If the specified sequence is already active, the animation will not be restarted. See Entity:ResetSequence for a function that restarts the animation even if it is already playing.  
--- In some cases you want to run Entity:ResetSequenceInfo to make this function run.  
--- ℹ **NOTE**: This will not work properly if called directly after calling Entity:SetModel. Consider waiting until the next Tick.  
--- Will not work on players due to the animations being reset every frame by the base gamemode animation system. See GM:CalcMainActivity.  
--- For custom scripted entities you will want to apply example from ENTITY:Think to make animations work.  
--- @param sequenceId number @The sequence to play
function Entity:SetSequence(sequenceId)
end

---  client|server
--- Sets the skin of the entity.  
--- @param skinIndex number @0-based index of the skin to use.
function Entity:SetSkin(skinIndex)
end

---  client|server
--- When this flag is set the entity will only transmit to the player when its parent is transmitted. This is useful for things like viewmodel attachments since without this flag they will transmit to everyone (and cause the viewmodels to transmit to everyone too).  
--- ℹ **NOTE**: In the case of scripted entities, this will override ENTITY:UpdateTransmitState  
--- @param onoff boolean @Will set the TransmitWithParent flag on or off
function Entity:SetTransmitWithParent(onoff)
end

---  server
--- Sets whether an entity can be unfrozen, meaning that it cannot be unfrozen using the physgun.  
--- @param freezable? boolean @True to make the entity unfreezable, false otherwise.
function Entity:SetUnFreezable(freezable)
end

---  client|server
--- Allows to quickly set variable to entity's Entity:GetTable.  
--- ℹ **NOTE**: This will not network the variable to client(s). You want Entity:SetNWString and similar functions for that  
--- @param key any @Key of the value to set
--- @param value any @Value to set the variable to
function Entity:SetVar(key, value)
end

---  client|server
--- Sets the model and associated weapon to this viewmodel entity.  
--- This is used internally when the player switches weapon.  
--- ℹ **NOTE**: View models are not drawn without a weapons associated to them.  
--- ⚠ **WARNING**: This will silently fail if the entity is not a viewmodel.  
--- @param viewModel string @The model string to give to this viewmodel
--- @param weapon? Weapon @The weapon entity to associate this viewmodel to.
function Entity:SetWeaponModel(viewModel, weapon)
end

---  client
--- Forces the entity to reconfigure its bones. You might need to call this after changing your model's scales or when manually drawing the entity multiple times at different positions.  
--- ℹ **NOTE**: This calls the BuildBonePositions callback added via Entity:AddCallback, so avoid calling this function inside it to prevent an infinite loop.  
function Entity:SetupBones()
end

---  client
--- Initializes the class names of an entity's phoneme mappings (mouth movement data). This is called by default with argument "phonemes" when a flex-based entity (such as an NPC) is created.  
--- ℹ **NOTE**: TF2 phonemes can be accessed by using a path such as "player/scout/phonemes/phonemes" , check TF2's "tf2_misc_dir.vpk" with GCFScape for other paths, however it seems that TF2 sounds don't contain phoneme definitions anymore after being converted to mp3 and only rely on VCD animations, this needs to be further investigated  
--- @param fileRoot string @The file prefix of the phoneme mappings (relative to "garrysmod/expressions/").
function Entity:SetupPhonemeMappings(fileRoot)
end

---  client|server
--- Starts a "looping" sound. As with any other sound playing methods, this function expects the sound file to be looping itself and will not automatically loop a non looping sound file as one might expect.  
--- This function is almost identical to Global.CreateSound, with the exception of the sound being created in the STATIC channel and with normal attenuation.  
--- See also Entity:StopLoopingSound  
--- @param sound string @Sound to play
--- @return number @The ID number of started sound starting with 0, or -1 if we failed for some reason.
function Entity:StartLoopingSound(sound)
end

---  client|server
--- Stops any attached to the entity .pcf particles using Global.ParticleEffectAttach or Global.ParticleEffect.  
--- On client, this is the same as Entity:StopParticleEmission. ( and you should use StopParticleEmission instead )  
--- On server, this is the same as running Entity:StopParticleEmission on every client.  
function Entity:StopParticles()
end

---  client|server
--- Returns the ID of a PhysObj attached to the given bone. To be used with Entity:GetPhysicsObjectNum.  
--- See Entity:TranslatePhysBoneToBone for reverse function.  
--- @param boneID number @The ID of a bone to look up the "physics root" bone of.
--- @return number @The PhysObj ID of the given bone
function Entity:TranslateBoneToPhysBone(boneID)
end

---  client|server
--- Returns two vectors representing the minimum and maximum extent of the entity's axis-aligned bounding box (which is calculated from entity's collision bounds.  
--- @return Vector @The minimum vector for the entity's bounding box in world space.
--- @return Vector @The maximum vector for the entity's bounding box in world space.
function Entity:WorldSpaceAABB()
end

---  client|server
--- Converts world angles to local angles ( local to the entity )  
--- @param ang Angle @The world angles
--- @return Angle @The local angles
function Entity:WorldToLocalAngles(ang)
end

