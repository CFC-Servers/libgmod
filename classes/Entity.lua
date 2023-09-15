--- This is a list of all available methods for all entities, which includes Players, Weapons, NPCs and Vehicles.  
--- For a list of possible members of Scripted Entities see ENT Structure  
--- @class Entity
local Entity = {}
---  client|server
--- Activates the entity. This needs to be used on some entities (like constraints) after being spawned.  
--- ℹ **NOTE**: For some entity types when this function is used after Entity:SetModelScale, the physics object will be recreated with the new scale. [Source-sdk-2013](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/baseanimating.cpp#L321-L327).  
--- Calling this method after Entity:SetModelScale will recreate a new scaled `SOLID_VPHYSICS` PhysObj on scripted entities. This can be a problem if you made a properly scaled PhysObj of another kind (using Entity:PhysicsInitSphere for instance) or if you edited the PhysObj's properties. This is especially the behavior of the Sandbox spawn menu.  
--- 🦟 **BUG**: [This crashes the game with scaled vehicles.](https://github.com/Facepunch/garrysmod-issues/issues/3372)  
function Entity:Activate()
end

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
--- Adds engine flags.  
--- @param flag number @Engine flag to add, see Enums/EFL
function Entity:AddEFlags(flag)
end

---  client|server
--- Applies an engine effect to an entity.  
--- See also Entity:IsEffectActive and  Entity:RemoveEffects.  
--- @param effect number @The effect to apply, see Enums/EF.
function Entity:AddEffects(effect)
end

---  client|server
--- Adds flags to the entity.  
--- @param flag number @Flag to add, see Enums/FL
function Entity:AddFlags(flag)
end

---  server
--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGestureSequence and Entity:AddLayeredSequence for functions that takes sequences instead of Enums/ACT.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity to play as the gesture
--- @param autokill? boolean 
--- @return number @Layer ID of the started gesture, used to manipulate the played gesture by other functions.
function Entity:AddGesture(activity, autokill)
end

---  server
--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGesture for a function that takes Enums/ACT.  
--- See also Entity:AddLayeredSequence.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param sequence number @The sequence ID to play as the gesture
--- @param autokill? boolean 
--- @return number @Layer ID of the started gesture, used to manipulate the played gesture by other functions.
function Entity:AddGestureSequence(sequence, autokill)
end

---  server
--- Adds a gesture animation to the entity and plays it.  
--- See Entity:AddGestureSequence for a function that doesn't take priority.  
--- See Entity:AddGesture for a function that takes Enums/ACT.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param sequence number @The sequence ID to play as the gesture
--- @param priority number 
--- @return number @Layer ID of created layer
function Entity:AddLayeredSequence(sequence, priority)
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

---  client|server
--- Returns an angle based on the ones inputted that you can use to align an object.  
--- ℹ **NOTE**: This function doesn't change the angle of the entity on its own (see example).  
--- @param from Angle @The angle you want to align from
--- @param to Angle @The angle you want to align to
--- @return Angle @The resulting aligned angle
function Entity:AlignAngles(from, to)
end

---  client
--- Spawns a clientside ragdoll for the entity, positioning it in place of the original entity, and makes the entity invisible. It doesn't preserve flex values (face posing) as CSRagdolls don't support flex.  
--- It does not work on players. Use Player:CreateRagdoll instead.  
--- The original entity is not removed, and neither are any ragdolls previously generated with this function.  
--- To make the entity re-appear, run Entity:SetNoDraw( false )  
--- @return Entity @The created ragdoll
function Entity:BecomeRagdollOnClient()
end

---  client
--- Returns true if the entity is being looked at by the local player and is within 256 units of distance.  
--- ℹ **NOTE**: This function is only available in entities that are based off of sandbox's base_gmodentity.  
--- @return boolean @Is the entity being looked at by the local player and within 256 units.
function Entity:BeingLookedAtByLocalPlayer()
end

---  server
--- Returns a centered vector of this entity, NPCs use this internally to aim at their targets.  
--- ℹ **NOTE**: This only works on players and NPCs.  
--- @param origin Vector @The vector of where the the attack comes from.
--- @param noisy? boolean @Decides if it should return the centered vector with a random offset to it.
--- @return Vector @The centered vector.
function Entity:BodyTarget(origin, noisy)
end

---  client|server
--- Returns whether the entity's bone has the flag or not.  
--- @param boneID number @Bone ID to test flag of.
--- @param flag number @The flag to test, see Enums/BONE
--- @return boolean @Whether the bone has that flag or not
function Entity:BoneHasFlag(boneID, flag)
end

---  client|server
--- Returns the length between given bone's position and the position of given bone's parent.  
--- @param boneID number @The ID of the bone you want the length of
--- @return number @The length of the bone
function Entity:BoneLength(boneID)
end

---  client|server
--- Returns the distance between the center of the bounding box and the furthest bounding box corner.  
--- @return number @The radius of the bounding box.
function Entity:BoundingRadius()
end

---  client|server
--- Calls all Entity:NetworkVarNotify functions with the given new value, but doesn't change the real value.  
--- @param Type string @The NetworkVar Type
--- @param index number @The NetworkVar index.
--- @param new_value any @The new value.
function Entity:CallDTVarProxies(Type, index, new_value)
end

---  client|server
--- Causes a specified function to be run if the entity is removed by any means. This can later be undone by Entity:RemoveCallOnRemove if you need it to not run.  
--- 🦟 **BUG**: [This hook is called during clientside full updates. See ENTITY:OnRemove#clientsidebehaviourremarks for more information.](https://github.com/Facepunch/garrysmod-issues/issues/4675)  
--- 🦟 **BUG**: [Using players with this function will provide a gimped entity to the callback.](https://github.com/Facepunch/garrysmod/pull/1275)  
--- @param identifier string @Identifier of the function within CallOnRemove
--- @param removeFunc function @Function to be called on remove
--- @param ... any ... @Optional arguments to pass to removeFunc
function Entity:CallOnRemove(identifier, removeFunc, ...)
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

---  client|server
--- Declares that the collision rules of the entity have changed, and subsequent calls for GM:ShouldCollide with this entity may return a different value than they did previously.  
--- ⚠ **WARNING**: This function must **not** be called inside of GM:ShouldCollide. Instead, it must be called in advance when the condition is known to change.  
--- ⚠ **WARNING**: Failure to use this function correctly will result in a crash of the physics engine.  
function Entity:CollisionRulesChanged()
end

---  server
--- Creates bone followers based on the current entity model.  
--- Bone followers are physics objects that follow the visual mesh. This is what is used by `prop_dynamic` for things like big combine doors for vehicles with multiple physics objects which follow the visual mesh of the door when it animates.  
--- You must call Entity:UpdateBoneFollowers every tick for bone followers to update their positions.  
--- ℹ **NOTE**: This function only works on `anim` type entities.  
function Entity:CreateBoneFollowers()
end

---  client
--- Creates a clientside particle system attached to the entity. See also Global.CreateParticleSystem  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param particle string @The particle name to create
--- @param attachment number @Attachment ID to attach the particle to
--- @param options? table @A table of tables ( IDs 1 to 64 ) having the following structure:
--- @return CNewParticleEffect @The created particle system.
function Entity:CreateParticleEffect(particle, attachment, options)
end

---  client
--- Draws the shadow of an entity.  
function Entity:CreateShadow()
end

---  client|server
--- Returns whether the entity was created by map or not.  
--- @return boolean @Is created by map?
function Entity:CreatedByMap()
end

---  server
--- Whenever the entity is removed, entityToRemove will be removed also.  
--- @param entityToRemove Entity @The entity to be removed
function Entity:DeleteOnRemove(entityToRemove)
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

---  client
--- Disables an active matrix.  
--- @param matrixType string @The name of the matrix type to disable
function Entity:DisableMatrix(matrixType)
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
--- This removes the argument entity from an ent's list of entities to 'delete on remove'  
--- ℹ **NOTE**: Also see Entity:DeleteOnRemove  
--- @param entityToUnremove Entity @The entity to be removed from the list of entities to delete
function Entity:DontDeleteOnRemove(entityToUnremove)
end

---  client
--- Draws the entity or model.  
--- If called inside ENTITY:Draw or ENTITY:DrawTranslucent, it only draws the entity's model itself.  
--- If called outside of those hooks, it will call both of said hooks depending on Entity:GetRenderGroup, drawing the entire entity again.  
--- ℹ **NOTE**: When drawing an entity more than once per frame in different positions, you should call Entity:SetupBones before each draw; Otherwise, the entity will retain its first drawn position.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- 🦟 **BUG**: [Calling this on entities with EF_BONEMERGE and EF_NODRAW applied causes a crash.](https://github.com/Facepunch/garrysmod-issues/issues/1558)  
--- 🦟 **BUG**: [Using this with a map model (game.GetWorld():GetModel()) crashes the game.](https://github.com/Facepunch/garrysmod-issues/issues/2688)  
--- @param flags? number @The optional STUDIO_ flags, usually taken from ENTITY:Draw and similar hooks.
function Entity:DrawModel(flags)
end

---  client|server
--- Sets whether an entity's shadow should be drawn.  
--- @param shouldDraw boolean @True to enable, false to disable shadow drawing.
function Entity:DrawShadow(shouldDraw)
end

---  server
--- Move an entity down until it collides with something.  
--- ⚠ **WARNING**: The entity needs to already have something below it within 256 units.  
function Entity:DropToFloor()
end

---  client|server
--- Plays a sound on an entity. If run clientside, the sound will only be heard locally.  
--- If used on a player or NPC character with the mouth rigged, the character will "lip-sync". This does not work with all sound files.  
--- ℹ **NOTE**: When using this function with weapons, use the Weapon itself as the entity, not its owner!  
--- 🦟 **BUG**: [This does not respond to Global.SuppressHostEvents.](https://github.com/Facepunch/garrysmod-issues/issues/2651)  
--- @param soundName string @The name of the sound to be played
--- @param soundLevel? number @A modifier for the distance this sound will reach, acceptable range is 0 to 511
--- @param pitchPercent? number @The pitch applied to the sound
--- @param volume? number @The volume, from 0 to 1.
--- @param channel? number @The sound channel, see Enums/CHAN
--- @param soundFlags? number @The flags of the sound, see Enums/SND
--- @param dsp? number @The DSP preset for this sound
function Entity:EmitSound(soundName, soundLevel, pitchPercent, volume, channel, soundFlags, dsp)
end

---  server
--- Toggles the constraints of this ragdoll entity on and off.  
--- @param toggleConstraints boolean @Set to true to enable the constraints and false to disable them
function Entity:EnableConstraints(toggleConstraints)
end

---  client|server
--- Flags an entity as using custom lua defined collisions. Fixes entities having spongy player collisions or not hitting traces, such as after Entity:PhysicsFromMesh  
--- Internally identical to `Entity:AddSolidFlags( bit.bor( FSOLID_CUSTOMRAYTEST, FSOLID_CUSTOMBOXTEST ) )`  
--- Do not confuse this function with Entity:SetCustomCollisionCheck, they are not the same.  
--- @param useCustom boolean @True to flag this entity
function Entity:EnableCustomCollisions(useCustom)
end

---  client
--- Can be used to apply a custom VMatrix to the entity, mostly used for scaling the model by a Vector.  
--- To disable it, use Entity:DisableMatrix.  
--- If your old scales are wrong due to a recent update, use Entity:SetLegacyTransform as a quick fix.  
--- ℹ **NOTE**: The matrix can also be modified to apply a custom rotation and offset via the VMatrix:SetAngles and VMatrix:SetTranslation functions.  
--- 🦟 **BUG**: [This does not scale procedural bones.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- 🦟 **BUG**: [This disables inverse kinematics of an entity.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param matrixType string @The name of the matrix type
--- @param matrix VMatrix @The matrix to apply before drawing the entity.
function Entity:EnableMatrix(matrixType, matrix)
end

---  client|server
--- Gets the unique entity index of an entity.  
--- ℹ **NOTE**: Entity indices are marked as unused after deletion, and can be reused by newly-created entities  
--- @return number @The index of the entity
function Entity:EntIndex()
end

---  server
--- Extinguishes the entity if it is on fire.  
--- Has no effect if called inside GM:EntityTakeDamage (and the attacker is the flame that's hurting the entity)  
--- See also Entity:Ignite.  
function Entity:Extinguish()
end

---  client|server
--- Returns the direction a player, npc or ragdoll is looking as a world-oriented angle.  
--- 🦟 **BUG**: [This can return an incorrect value in vehicles (like pods, buggy, ...). **This bug has been fixed in the past but was causing many addons being broken, so the fix has been removed but applied to Player:GetAimVector only**.](https://github.com/Facepunch/garrysmod-issues/issues/1150)  
--- 🦟 **BUG**: [This may return local angles in jeeps when used with Player:EnterVehicle. **A workaround is available in the second example.**](https://github.com/Facepunch/garrysmod-issues/issues/2620)  
--- @return Angle @Player's eye angle.
function Entity:EyeAngles()
end

---  client|server
--- Returns the position of an Player/NPC's view.  
--- @return Vector @View position of the entity.
function Entity:EyePos()
end

---  client|server
--- Searches for bodygroup with given name.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return value form view model.  
--- @param name string @The bodygroup name to search for.
--- @return number @Bodygroup ID, -1 if not found
function Entity:FindBodygroupByName(name)
end

---  client|server
--- Returns a transition from the given start and end sequence.  
--- This function was only used by HL1 entities and NPCs, before the advent of sequence blending and gestures.  
--- @param currentSequence number @The currently playing sequence
--- @param goalSequence number @The goal sequence.
--- @return number @The transition sequence, -1 if not available.
function Entity:FindTransitionSequence(currentSequence, goalSequence)
end

---  server
--- Fires an entity's input, conforming to the map IO event queue system. You can find inputs for most entities on the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/Output)  
--- See also Entity:Input for a function that bypasses the event queue and GM:AcceptInput.  
--- @param input string @The name of the input to fire
--- @param param? string @The value to give to the input, can also be a number or a boolean.
--- @param delay? number @Delay in seconds before firing
--- @param activator? Entity @The entity that caused this input (i.e
--- @param caller? Entity @The entity that is triggering this input (i.e
function Entity:Fire(input, param, delay, activator, caller)
end

---  client|server
--- Fires a bullet.  
--- When used in a  hook such as WEAPON:Think or WEAPON:PrimaryAttack, it will use Player:LagCompensation internally.  
--- ℹ **NOTE**: Lag compensation will not work if this function is called in a timer, regardless if the timer was made in a  hook.  
--- Due to how FireBullets is set up internally, bullet tracers will always originate from attachment 1.  
--- @param bulletInfo table @The bullet data to be used
--- @param suppressHostEvents? boolean @Has the effect of encasing the FireBullets call in Global.SuppressHostEvents, only works in multiplayer.
function Entity:FireBullets(bulletInfo, suppressHostEvents)
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
--- Forces the Entity to be dropped, when it is being held by a player's gravitygun or physgun.  
function Entity:ForcePlayerDrop()
end

---  client|server
--- Advances the cycle of an animated entity.  
--- Animations that loop will automatically reset the cycle so you don't have to - ones that do not will stop animating once you reach the end of their sequence.  
--- ⚠ **WARNING**: Do not call this function multiple times a frame, as it can cause unexpected results, such as animations playing at increased rate, etc.  
--- NextBot:BodyMoveXY calls this internally, so do not call this function before or after NextBot:BodyMoveXY.  
function Entity:FrameAdvance()
end

---  client|server
--- Returns the entity's velocity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::GetLocalVelocity() which retrieves the velocity of the entity due to its movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision.  
--- @return Vector @The velocity of the entity.
function Entity:GetAbsVelocity()
end

---  client|server
--- Gets the angles of given entity.  
--- 🦟 **BUG**: [This returns incorrect results for the local player clientside.](https://github.com/Facepunch/garrysmod-issues/issues/2764)  
--- 🦟 **BUG**: [This will return the local player's Global.EyeAngles in rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/3106)  
--- 🦟 **BUG**: [This will return Global.Angle(0,0,0) in rendering hooks while paused in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3107)  
--- @return Angle @The angles of the entity.
function Entity:GetAngles()
end

---  client|server
--- Returns the amount of animations (not to be confused with sequences) the entity's model has. A sequence can consist of multiple animations.  
--- See also Entity:GetAnimInfo  
--- @return number @The amount of animations the entity's model has.
function Entity:GetAnimCount()
end

---  client|server
--- Returns a table containing the number of frames, flags, name, and FPS of an entity's animation ID.  
--- ℹ **NOTE**: Animation ID is not the same as sequence ID. See Entity:GetAnimCount  
--- @param animIndex number @The animation ID to look up
--- @return table @Information about the animation, or nil if the index is out of bounds
function Entity:GetAnimInfo(animIndex)
end

---  client
--- Returns the last time the entity had an animation update. Returns 0 if the entity doesn't animate.  
--- @return number @The last time the entity had an animation update.
function Entity:GetAnimTime()
end

---  client|server
--- Returns the amount of time since last animation.  
--- Works only on `CBaseAnimating` entities.  
--- @return number @The amount of time since last animation.
function Entity:GetAnimTimeInterval()
end

---  client|server
--- Gets the orientation and position of the attachment by its ID, returns nothing if the attachment does not exist.  
--- ℹ **NOTE**: The update rate of this function is limited by the setting of ENT.AutomaticFrameAdvance for Scripted Entities!  
--- 🦟 **BUG**: [This will return improper values for viewmodels if used in GM:CalcView.](https://github.com/Facepunch/garrysmod-issues/issues/1255)  
--- @param attachmentId number @The internal ID of the attachment.
--- @return table @The angle and position of the attachment
function Entity:GetAttachment(attachmentId)
end

---  client|server
--- Returns a table containing all attachments of the given entity's model.  
--- Returns an empty table or **nil** in case its model has no attachments.  
--- 🦟 **BUG**: [This can have inconsistent results in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3167)  
--- @return table @Attachment data
function Entity:GetAttachments()
end

---  client|server
--- Returns the entity's base velocity which is their velocity due to forces applied by other entities. This includes entity-on-entity collision or riding a treadmill.  
--- @return Vector @The base velocity of the entity.
function Entity:GetBaseVelocity()
end

---  client|server
--- Returns the blood color of this entity. This can be set with Entity:SetBloodColor.  
--- @return number @Color from Enums/BLOOD_COLOR
function Entity:GetBloodColor()
end

---  client|server
--- Returns a list of all body groups of the entity.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return body groups form view model.  
--- @return table @Bodygroups as a table of Structures/BodyGroupDatas if the entity can have bodygroups.
function Entity:GetBodyGroups()
end

---  client|server
--- Gets the exact value for specific bodygroup of given entity.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return value form view model.  
--- @param id number @The id of bodygroup to get value of
--- @return number @Current bodygroup
function Entity:GetBodygroup(id)
end

---  client|server
--- Returns the count of possible values for this bodygroup.  
--- This is **not** the maximum value, since the bodygroups start with 0, not 1.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return value form view model.  
--- @param bodygroup number @The ID of bodygroup to retrieve count of.
--- @return number @Count of values of passed bodygroup.
function Entity:GetBodygroupCount(bodygroup)
end

---  client|server
--- Gets the name of specific bodygroup for given entity.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return value form view model.  
--- @param id number @The id of bodygroup to get the name of.
--- @return string @The name of the bodygroup
function Entity:GetBodygroupName(id)
end

---  client|server
--- Returns the contents of the specified bone.  
--- @param bone number @The bone id, starting at index 0
--- @return number @The contents as a Enums/CONTENTS or 0 on failure.
function Entity:GetBoneContents(bone)
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
--- Returns the transformation matrix of a given bone on the entity's model. The matrix contains the transformation used to position the bone in the world. It is not relative to the parent bone.  
--- This is equivalent to constructing a VMatrix using Entity:GetBonePosition.  
--- 🦟 **BUG**: [This can return the server's matrix during server lag.](https://github.com/Facepunch/garrysmod-issues/issues/884)  
--- 🦟 **BUG**: [This can return garbage serverside or a 0,0,0 fourth column (represents position) for v49 models.](https://github.com/Facepunch/garrysmod-issues/issues/3285)  
--- @param boneID number @The bone ID to retrieve matrix of, starting at index 0
--- @return VMatrix @The matrix
function Entity:GetBoneMatrix(boneID)
end

---  client|server
--- Returns name of given bone id.  
--- @param index number @ID of bone to lookup name of, starting at index 0.
--- @return string @The name of given bone
function Entity:GetBoneName(index)
end

---  client|server
--- Returns parent bone of given bone.  
--- ℹ **NOTE**: Will return -1 for Global.ClientsideModel until Entity:SetupBones is called on the entity.  
--- @param bone number @The bode ID of the bone to get parent of, starting at index 0.
--- @return number @Parent bone ID or -1 if we failed for some reason.
function Entity:GetBoneParent(bone)
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
--- Returns the surface property of the specified bone.  
--- @param bone number @The bone id, starting at index 0
--- @return string @The surface property of the bone to be used with util.GetSurfaceIndex or an empty string on failure.
function Entity:GetBoneSurfaceProp(bone)
end

---  client|server
--- Returns info about given plane of non-nodraw brush model surfaces of the entity's model. Works on worldspawn as well.  
--- ⚠ **WARNING**: This only works on entities with brush models.  
--- @param id number @The index of the plane to get info of
--- @return Vector @The origin of the plane
--- @return Vector @The normal of the plane.
--- @return number @The "distance" of the plane
function Entity:GetBrushPlane(id)
end

---  client|server
--- Returns the amount of planes of non-nodraw brush model surfaces of the entity's model.  
--- @return number @The amount of brush model planes of the entity's model
function Entity:GetBrushPlaneCount()
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
--- Gets the children of the entity - that is, every entity whose move parent is this entity.  
--- ℹ **NOTE**: This function returns Entity:SetMoveParent children, **NOT** Entity:SetParent!  
--- Entity:SetParent however also calls Entity:SetMoveParent.  
--- This means that some entities in the returned list might have a NULL Entity:GetParent.  
--- This also means that using this function on players will return their weapons on the client but not the server.  
--- @return table @A list of movement children entities
function Entity:GetChildren()
end

---  client|server
--- Returns the classname of a entity. This is often the name of the Lua file or folder containing the files for the entity  
--- @return string @The entity's classname
function Entity:GetClass()
end

---  client|server
--- Returns an entity's collision bounding box. In most cases, this will return the same bounding box as Entity:GetModelBounds unless the entity does not have a physics mesh or it has a PhysObj different from the default.  
--- 🦟 **BUG**: [This can be out-of-sync between the client and server for weapons.](https://github.com/Facepunch/garrysmod-issues/issues/223)  
--- @return Vector @The minimum vector of the collision bounds
--- @return Vector @The maximum vector of the collision bounds
function Entity:GetCollisionBounds()
end

---  client|server
--- Returns the entity's collision group  
--- @return number @The collision group
function Entity:GetCollisionGroup()
end

---  client|server
--- Returns the color the entity is set to.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @return table @The color of the entity as a Color.
function Entity:GetColor()
end

---  client|server
--- Returns the color the entity is set to.  
--- ℹ **NOTE**: This functions will return Colors set with Entity:GetColor  
--- @return number 
--- @return number 
--- @return number 
--- @return number 
function Entity:GetColor4Part()
end

---  server
--- Returns the two entities involved in a constraint ent, or nil if the entity is not a constraint.  
--- @return Entity @ent1
--- @return Entity @ent2
function Entity:GetConstrainedEntities()
end

---  server
--- Returns the two entities physobjects involved in a constraint ent, or no value if the entity is not a constraint.  
--- @return PhysObj @phys1
--- @return PhysObj @phys2
function Entity:GetConstrainedPhysObjects()
end

---  client|server
--- Returns entity's creation ID. Unlike Entity:EntIndex or Entity:MapCreationID.  
--- It will increase up until value of `10 000 000`, at which point it will reset back to `0`.  
--- @return number @The creation ID
function Entity:GetCreationID()
end

---  client|server
--- Returns the time the entity was created on, relative to Global.CurTime.  
--- @return number @The time the entity was created on.
function Entity:GetCreationTime()
end

---  server
--- Gets the creator of the SENT.  
--- @return Player @The creator, NULL for no creator.
function Entity:GetCreator()
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
--- Returns a bit flag of all engine flags of the entity.  
--- @return number @Engine flags, see Enums/EFL
function Entity:GetEFlags()
end

---  client|server
--- Returns internal data about editable Entity:NetworkVars.  
--- This is used internally by DEntityProperties and Editable Entities system.  
--- ℹ **NOTE**: This function will only work on entities which had Entity:InstallDataTable called on them, which is done automatically for players and all Scripted Entities  
--- @return table @The internal data
function Entity:GetEditingData()
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
--- Returns all flags of given entity.  
--- @return number @Flags of given entity as a bitflag, see Enums/FL
function Entity:GetFlags()
end

---  client|server
--- Returns acceptable value range for the flex.  
--- @param flex number @The ID of the flex to look up bounds of
--- @return number @The minimum value for this flex
--- @return number @The maximum value for this flex
function Entity:GetFlexBounds(flex)
end

---  client|server
--- Returns the ID of the flex based on the beginning or the entire name.  
--- @param name string @The name of the flex to get the ID of
--- @return number @The ID of flex
function Entity:GetFlexIDByName(name)
end

---  client|server
--- Returns flex name.  
--- @param id number @The flex index to look up name of
--- @return string @The flex name, or no value if the requested ID is out of bounds.
function Entity:GetFlexName(id)
end

---  client|server
--- Returns the number of flex controllers this entity's model has.  
--- ℹ **NOTE**: Please note that while this function can return the real number of flex controllers, the game supports only a certain amount due to networking limitations. See Entity:SetFlexWeight.  
--- @return number @The number of flexes.
function Entity:GetFlexNum()
end

---  client|server
--- Returns the flex scale of the entity.  
--- @return number @The flex scale
function Entity:GetFlexScale()
end

---  client|server
--- Returns current weight ( value ) of given flex controller. Please see Entity:SetFlexWeight regarding limitations.  
--- @param flex number @The ID of the flex to get weight of
--- @return number @The current weight of the flex, or 0 if out of bounds.
function Entity:GetFlexWeight(flex)
end

---  client|server
--- Returns the forward vector of the entity, as a normalized direction vector  
--- @return Vector @forwardDir
function Entity:GetForward()
end

---  client|server
--- Returns the friction modifier for this entity. Entities default to `1` (100%) and can be higher.  
--- @return number @friction
function Entity:GetFriction()
end

---  client|server
--- Gets the gravity multiplier of the entity.  
--- @return number @gravityMultiplier
function Entity:GetGravity()
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

---  client|server
--- Gets the bone the hit box is attached to.  
--- @param hitbox number @The number of the hit box.
--- @param hboxset number @The number of the hit box set
--- @return number @The number of the bone
function Entity:GetHitBoxBone(hitbox, hboxset)
end

---  client|server
--- Gets the bounds (min and max corners) of a hit box.  
--- @param hitbox number @The number of the hit box.
--- @param set number @The hitbox set of the hit box
--- @return Vector @Hit box mins
--- @return Vector @Hit box maxs
function Entity:GetHitBoxBounds(hitbox, set)
end

---  client|server
--- Gets how many hit boxes are in a given hit box group.  
--- @param group number @The number of the hit box group.
--- @return number @The number of hit boxes.
function Entity:GetHitBoxCount(group)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetHitboxSetCount instead.  
--- Returns the number of hit box sets that an entity has. Functionally identical to Entity:GetHitboxSetCount  
--- @deprecated
--- @return number @number of hit box sets
function Entity:GetHitBoxGroupCount()
end

---  client|server
--- Gets the hit group of a given hitbox in a given hitbox set.  
--- @param hitbox number @The number of the hit box.
--- @param hitboxset number @The number of the hit box set
--- @return number @The hitbox group of given hitbox
function Entity:GetHitBoxHitGroup(hitbox, hitboxset)
end

---  client|server
--- Returns entity's current hit box set  
--- @return number @The current hit box set id, or no value if the entity doesn't have hit boxes
--- @return string @The current hit box set name, or no value if the entity doesn't have hit boxes
function Entity:GetHitboxSet()
end

---  client|server
--- Returns the amount of hitbox sets in the entity.  
--- @return number @The amount of hitbox sets in the entity.
function Entity:GetHitboxSetCount()
end

---  client|server
--- An interface for accessing internal key values on entities.  
--- See Entity:GetSaveTable for a more detailed explanation. See Entity:SetSaveValue for the opposite of this function.  
--- @param variableName string @Name of variable corresponding to an entity save value.
--- @return any @The internal variable value.
function Entity:GetInternalVariable(variableName)
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

---  client|server
--- Returns the animation cycle/frame for given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The animation cycle/frame for given layer.
function Entity:GetLayerCycle(layerID)
end

---  client|server
--- Returns the duration of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The duration of the layer
function Entity:GetLayerDuration(layerID)
end

---  client|server
--- Returns the layer playback rate. See also Entity:GetLayerDuration.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The current playback rate.
function Entity:GetLayerPlaybackRate(layerID)
end

---  client|server
--- Returns the sequence id of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID.
--- @return number @The sequenceID of the layer.
function Entity:GetLayerSequence(layerID)
end

---  client|server
--- Returns the current weight of the layer. See Entity:SetLayerWeight for more information.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return number @The current weight of the layer
function Entity:GetLayerWeight(layerID)
end

---  server
--- Returns the entity that is being used as the light origin position for this entity.  
--- @return Entity @The lighting entity
function Entity:GetLightingOriginEntity()
end

---  client|server
--- Returns the rotation of the entity relative to its parent entity.  
--- @return Angle @Relative angle
function Entity:GetLocalAngles()
end

---  client|server
--- Returns the non-VPhysics angular velocity of the entity relative to its parent entity.  
--- @return Angle @The velocity
function Entity:GetLocalAngularVelocity()
end

---  client|server
--- Returns entity's position relative to it's parent.  
--- @return Vector @Relative position
function Entity:GetLocalPos()
end

---  client|server
--- Gets the entity's angle manipulation of the given bone. This is relative to the default angle, so the angle is zero when unmodified.  
--- @param boneID number @The bone's ID
--- @return Angle @The entity's angle manipulation of the given bone.
function Entity:GetManipulateBoneAngles(boneID)
end

---  client|server
--- Returns the jiggle amount of the entity's bone.  
--- See Entity:ManipulateBoneJiggle for more info.  
--- @param boneID number @The bone ID
--- @return number @Returns a value ranging from 0 to 255 depending on the value set with Entity:ManipulateBoneJiggle.
function Entity:GetManipulateBoneJiggle(boneID)
end

---  client|server
--- Gets the entity's position manipulation of the given bone. This is relative to the default position, so it is zero when unmodified.  
--- @param boneId number @The bone's ID
--- @return Vector @The entity's position manipulation of the given bone.
function Entity:GetManipulateBonePosition(boneId)
end

---  client|server
--- Gets the entity's scale manipulation of the given bone. Normal scale is Vector( 1, 1, 1 )  
--- @param boneID number @The bone's ID
--- @return Vector @The entity's scale manipulation of the given bone
function Entity:GetManipulateBoneScale(boneID)
end

---  client|server
--- Returns the material override for this entity.  
--- Returns an empty string if no material override exists. Use Entity:GetMaterials to list it's default materials.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @return string @material
function Entity:GetMaterial()
end

---  server
--- Returns the surface material of this entity.  
--- @return number @Surface material
function Entity:GetMaterialType()
end

---  client|server
--- Returns all materials of the entity's model.  
--- This function is unaffected by Entity:SetSubMaterial as it returns the original materials.  
--- 🦟 **BUG**: The table returned by this function will not contain materials if they are missing from the disk/repository. This means that if you are attempting to find the ID of a material to replace with Entity:SetSubMaterial and there are missing materials on the model, all subsequent materials will be offset in the table, meaning that the ID you are trying to get will be incorrect.  
--- @return table @A table containing full paths to the materials of the model
function Entity:GetMaterials()
end

---  client|server
--- Returns the max health that the entity was given. It can be set via Entity:SetMaxHealth.  
--- @return number @Max health.
function Entity:GetMaxHealth()
end

---  client|server
--- Gets the model of given entity.  
--- 🦟 **BUG**: This does not necessarily return the model's path, as is the case for brush and virtual models. This is intentional behaviour, however, there is currently no way to retrieve the actual file path.  
--- @return string @The entity's model
function Entity:GetModel()
end

---  client|server
--- Returns the entity's model bounds, not scaled by Entity:SetModelScale.  
--- These bounds are affected by all the animations the model has at compile time, if they go outside of the models' render bounds at any point.  
--- See Entity:GetModelRenderBounds for just the render bounds of the model.  
--- This is different than the collision bounds/hull, which are set via Entity:SetCollisionBounds.  
--- @return Vector @The minimum vector of the bounds
--- @return Vector @The maximum vector of the bounds
function Entity:GetModelBounds()
end

---  client|server
--- Returns the contents of the entity's current model.  
--- @return number @The contents of the entity's model
function Entity:GetModelContents()
end

---  client
--- Gets the physics bone count of the entity's model. This is only applicable to `anim` type Scripted Entities with ragdoll models.  
--- @return number @How many physics bones exist on the model.
function Entity:GetModelPhysBoneCount()
end

---  client|server
--- Gets the models radius.  
--- @return number @The radius of the model
function Entity:GetModelRadius()
end

---  client|server
--- Returns the entity's model render bounds. Unlike Entity:GetModelBounds, bounds returning by this function will not be affected by animations (at compile time).  
--- @return Vector @The minimum vector of the bounds
--- @return Vector @The maximum vector of the bounds
function Entity:GetModelRenderBounds()
end

---  client|server
--- Gets the selected entity's model scale.  
--- @return number @Scale of that entity's model.
function Entity:GetModelScale()
end

---  server
--- Returns the amount a momentary_rot_button entity is turned based on the given angle. 0 meaning completely turned closed, 1 meaning completely turned open.  
--- ⚠ **WARNING**: This only works on momentary_rot_button entities.  
--- @param turnAngle Angle @The angle of rotation to compare - usually should be Entity:GetAngles.
--- @return number @The amount the momentary_rot_button is turned, ranging from 0 to 1, or nil if the entity is not a momentary_rot_button.
function Entity:GetMomentaryRotButtonPos(turnAngle)
end

---  client|server
--- Returns the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?  
--- @return number @The move collide type, see Enums/MOVECOLLIDE
function Entity:GetMoveCollide()
end

---  client|server
--- Returns the movement parent of this entity.  
--- See Entity:SetMoveParent for more info.  
--- @return Entity @The movement parent of this entity.
function Entity:GetMoveParent()
end

---  client|server
--- Returns the entity's movetype  
--- @return number @Move type
function Entity:GetMoveType()
end

---  client|server
--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNW2Angle.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Angle(key, fallback)
end

---  client|server
--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNW2Bool.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Bool(key, fallback)
end

---  client|server
--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNW2Entity.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Entity(key, fallback)
end

---  client|server
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNW2Float.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Float(key, fallback)
end

---  client|server
--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNW2Int.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Entity:SetNWInt and Entity:GetNWInt instead  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @return any @The value associated with the key
function Entity:GetNW2Int(key, fallback)
end

---  client|server
--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNW2String.  
--- @param key string @The key that is associated with the value
--- @param fallback any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2String(key, fallback)
end

---  client|server
--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNW2Var.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Var(key, fallback)
end

---  client|server
--- Returns callback function for given NWVar of this entity.  
--- Alias of Entity:GetNetworked2VarProxy  
--- @param key any @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found.
function Entity:GetNW2VarProxy(key)
end

---  client|server
--- Returns all the NW2 variables in an entity.  
--- 🦟 **BUG**: [This function will return keys with empty tables if the NW2Var is nil.](https://github.com/Facepunch/garrysmod-issues/issues/5396)  
--- @return table @Key-Value table of all NW2 variables.
function Entity:GetNW2VarTable()
end

---  client|server
--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNW2Vector.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNW2Vector(key, fallback)
end

---  client|server
--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNWAngle.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWAngle(key, fallback)
end

---  client|server
--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNWBool.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWBool(key, fallback)
end

---  client|server
--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNWEntity.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWEntity(key, fallback)
end

---  client|server
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNWFloat.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWFloat(key, fallback)
end

---  client|server
--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNWInt.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @return any @The value associated with the key
function Entity:GetNWInt(key, fallback)
end

---  client|server
--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNWString.  
--- @param key string @The key that is associated with the value
--- @param fallback any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWString(key, fallback)
end

---  client|server
--- Returns callback function for given NWVar of this entity.  
--- <removed>This function was superseded by Entity:GetNW2VarProxy. This page still exists an archive in case anybody ever stumbles across old code and needs to know what it is</removed>  
--- @param key any @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found.
function Entity:GetNWVarProxy(key)
end

---  client|server
--- Returns all the networked variables in an entity.  
--- @return table @Key-Value table of all networked variables.
function Entity:GetNWVarTable()
end

---  client|server
--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNWVector.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @return any @The value associated with the key
function Entity:GetNWVector(key, fallback)
end

---  server
--- Returns the map/hammer targetname of this entity.  
--- @return string @The name of the Entity
function Entity:GetName()
end

---  client
--- Gets networked angles for entity.  
--- @return Angle @angle
function Entity:GetNetworkAngles()
end

---  client|server
--- Gets networked origin for entity.  
--- @return Vector @origin
function Entity:GetNetworkOrigin()
end

---  client|server
--- Returns all network vars created by Entity:NetworkVar and Entity:NetworkVarElement and their current values.  
--- This is used internally by the duplicator.  
--- For NWVars see Entity:GetNWVarTable.  
--- ℹ **NOTE**: This function will only work on entities which had Entity:InstallDataTable called on them, which is done automatically for players and all Scripted Entities  
--- @return table @The Key-Value formatted table of network var names and their current values
function Entity:GetNetworkVars()
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
--- Retrieves a networked entity value at specified index on the entity that is set by Entity:SetNetworked2Entity.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Entity instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Entity(key, fallback)
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
--- Retrieves a networked integer (whole number) value that was previously set by Entity:SetNetworked2Int.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Int instead.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Entity:SetNWInt and Entity:GetNWInt instead  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value (If it isn't set).
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Int(key, fallback)
end

---  client|server
--- Retrieves a networked string value at specified index on the entity that is set by Entity:SetNetworked2String.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2String instead.  
--- @param key string @The key that is associated with the value
--- @param fallback any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2String(key, fallback)
end

---  client|server
--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNetworked2Var.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Var instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Var(key, fallback)
end

---  client|server
--- Returns callback function for given NWVar of this entity.  
--- @param key any @The key of the NWVar to get callback of.
--- @return function @The callback of given NWVar, or nil if not found.
function Entity:GetNetworked2VarProxy(key)
end

---  client|server
--- Returns all the networked2 variables in an entity.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2VarTable instead.  
--- @deprecated
--- @return table @Key-Value table of all networked2 variables.
function Entity:GetNetworked2VarTable()
end

---  client|server
--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNetworked2Vector.  
--- 🛑 **DEPRECATED**: You should be using Entity:GetNW2Vector instead.  
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworked2Vector(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWAngle instead.  
--- Retrieves a networked angle value at specified index on the entity that is set by Entity:SetNetworkedAngle.  
--- @param key string @The key that is associated with the value
--- @param fallback? Angle @The value to return if we failed to retrieve the value
--- @deprecated
--- @return Angle @The retrieved value
function Entity:GetNetworkedAngle(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWBool instead.  
--- Retrieves a networked boolean value at specified index on the entity that is set by Entity:SetNetworkedBool.  
--- @param key string @The key that is associated with the value
--- @param fallback? boolean @The value to return if we failed to retrieve the value
--- @deprecated
--- @return boolean @The retrieved value
function Entity:GetNetworkedBool(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWEntity instead.  
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworkedEntity.  
--- @param key string @The key that is associated with the value
--- @param fallback? Entity @The value to return if we failed to retrieve the value
--- @deprecated
--- @return Entity @The retrieved value
function Entity:GetNetworkedEntity(key, fallback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWFloat instead.  
--- Retrieves a networked float value at specified index on the entity that is set by Entity:SetNetworkedFloat.  
--- Seems to be the same as Entity:GetNetworkedInt.  
--- @param key string @The key that is associated with the value
--- @param fallback? number @The value to return if we failed to retrieve the value
--- @deprecated
--- @return number @The retrieved value
function Entity:GetNetworkedFloat(key, fallback)
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
--- Retrieves a networked value at specified index on the entity that is set by Entity:SetNetworkedVar.  
--- 🛑 **DEPRECATED**:   
--- @param key string @The key that is associated with the value
--- @param fallback? any @The value to return if we failed to retrieve the value
--- @deprecated
--- @return any @The value associated with the key
function Entity:GetNetworkedVar(key, fallback)
end

---  client|server
--- <removed>This function was superseded by Entity:GetNetworked2VarProxy. This page still exists an archive in case anybody ever stumbles across old code and needs to know what it is</removed>  
--- Returns callback function for given NWVar of this entity.  
--- @param name string @The name of the NWVar to get callback of.
--- @return function @The callback of given NWVar, if any.
function Entity:GetNetworkedVarProxy(name)
end

---  client|server
--- 🛑 **DEPRECATED**: You should be using Entity:GetNWVarTable instead.  
--- Returns all the networked variables in an entity.  
--- @deprecated
--- @return table @Key-Value table of all networked variables.
function Entity:GetNetworkedVarTable()
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:GetNWVector instead.  
--- Retrieves a networked vector value at specified index on the entity that is set by Entity:SetNetworkedVector.  
--- @param key string @The key that is associated with the value
--- @param fallback? Vector @The value to return if we failed to retrieve the value
--- @deprecated
--- @return Vector @The retrieved value
function Entity:GetNetworkedVector(key, fallback)
end

---  client|server
--- Returns if the entity's rendering and transmitting has been disabled.  
--- ℹ **NOTE**: This is equivalent to calling Entity:IsEffectActive( EF_NODRAW )  
--- @return boolean @Whether the entity's rendering and transmitting has been disabled.
function Entity:GetNoDraw()
end

---  client|server
--- Returns the body group count of the entity.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model will return value form view model.  
--- @return number @Amount of bodygroups the entitys model has
function Entity:GetNumBodyGroups()
end

---  client|server
--- Returns the number of pose parameters this entity has.  
--- @return number @Amount of pose parameters the entity has
function Entity:GetNumPoseParameters()
end

---  client|server
--- Returns the owner entity of this entity. See Entity:SetOwner for more info.  
--- ℹ **NOTE**: This function is generally used to disable physics interactions on projectiles being fired by their owner, but can also be used for normal ownership in case physics interactions are not involved at all. The Gravity gun will be able to pick up the entity even if the owner can't collide with it, the Physics gun however will not.  
--- @return Entity @The owner entity of this entity.
function Entity:GetOwner()
end

---  client|server
--- Returns the parent entity of this entity.  
--- @return Entity @parentEntity
function Entity:GetParent()
end

---  client|server
--- Returns the attachment index of the entity's parent. Returns 0 if the entity is not parented to a specific attachment or if it isn't parented at all.  
--- This is set by second argument of Entity:SetParent or the **SetParentAttachment** input.  
--- @return number @The parented attachment index
function Entity:GetParentAttachment()
end

---  client|server
--- If the entity is parented to an entity that has a model with multiple physics objects (like a ragdoll), this is used to retrieve what physics object number the entity is parented to on it's parent.  
--- @return number @The physics object id, or nil if the entity has no parent
function Entity:GetParentPhysNum()
end

---  client|server
--- Returns the position and angle of the entity's move parent as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return VMatrix @The position and angle matrix
function Entity:GetParentWorldTransformMatrix()
end

---  client|server
--- Returns whether the entity is persistent or not.  
--- See Entity:SetPersistent for more information on persistence.  
--- @return boolean @True if the entity is set to be persistent.
function Entity:GetPersistent()
end

---  server
--- Returns player who is claiming kills of physics damage the entity deals.  
--- @param timeLimit? number @The time to check if the entity was still a proper physics attacker
--- @return Player @The player
function Entity:GetPhysicsAttacker(timeLimit)
end

---  client|server
--- Returns the entity's physics object, if the entity has physics.  
--- ℹ **NOTE**: Entities don't have clientside physics objects by default, so this will return `[NULL PHYSOBJ]` on the client in most cases.  
--- @return PhysObj @The entity's physics object.
function Entity:GetPhysicsObject()
end

---  client|server
--- Returns the number of physics objects an entity has (usually 1 for non-ragdolls)  
--- @return number @numObjects
function Entity:GetPhysicsObjectCount()
end

---  client|server
--- Returns a specific physics object from an entity with multiple PhysObjects (like ragdolls)  
--- See also Entity:TranslateBoneToPhysBone.  
--- @param physNum number @The number corresponding to the PhysObj to grab
--- @return PhysObj @The physics object
function Entity:GetPhysicsObjectNum(physNum)
end

---  client|server
--- Returns the playback rate of the main sequence on this entity, with 1.0 being the default speed.  
--- @return number @The playback rate.
function Entity:GetPlaybackRate()
end

---  client|server
--- Gets the position of entity in world.  
--- @return Vector @The position of the entity.
function Entity:GetPos()
end

---  client|server
--- Returns the pose parameter value  
--- @param name string @Pose parameter name to look up
--- @return number @Value of given pose parameter
function Entity:GetPoseParameter(name)
end

---  client|server
--- Returns name of given pose parameter  
--- @param id number @Id of the pose paremeter
--- @return string @Name of given pose parameter
function Entity:GetPoseParameterName(id)
end

---  client|server
--- Returns pose parameter range  
--- @param id number @Pose parameter ID to look up
--- @return number @The minimum value
--- @return number @The maximum value
function Entity:GetPoseParameterRange(id)
end

---  client
--- Returns whether this entity is predictable or not.  
--- See Entity:SetPredictable for more information  
--- @return boolean @Whether this entity is predictable or not.
function Entity:GetPredictable()
end

---  server
--- Called to override the preferred carry angles of this object.  
--- ℹ **NOTE**: This callback is only called for `anim` type entities.  
--- @param ply Player @The player who is holding the object.
--- @return Angle @Return an angle to override the carry angles.
function Entity:GetPreferredCarryAngles(ply)
end

---  client|server
--- Returns the entity which the ragdoll came from. The opposite of Player:GetRagdollEntity.  
--- @return Entity @The entity who owns the ragdoll.
function Entity:GetRagdollOwner()
end

---  client
--- Returns the entity's render angles, set by Entity:SetRenderAngles in a drawing hook.  
--- @return Angle @The entitys render angles
function Entity:GetRenderAngles()
end

---  client
--- Returns render bounds of the entity as local vectors. Can be overridden by Entity:SetRenderBounds.  
--- If the render bounds are not inside players view, the entity will not be drawn!  
--- @return Vector @The minimum vector of the bounds
--- @return Vector @The maximum vector of the bounds.
function Entity:GetRenderBounds()
end

---  client|server
--- Returns current render FX of the entity.  
--- @return number @The current render FX of the entity
function Entity:GetRenderFX()
end

---  client
--- Returns the render group of the entity.  
--- @return number @The render group
function Entity:GetRenderGroup()
end

---  client|server
--- Returns the render mode of the entity.  
--- @return number @The render Mode
function Entity:GetRenderMode()
end

---  client
--- Returns the entity's render origin, set by Entity:SetRenderOrigin in a drawing hook.  
--- @return Vector @The entitys render origin
function Entity:GetRenderOrigin()
end

---  client|server
--- Returns the rightward vector of the entity, as a normalized direction vector  
--- @return Vector @rightDir
function Entity:GetRight()
end

---  client|server
--- Returns axis-aligned bounding box (AABB) of a orientated bounding box (OBB) based on entity's rotation.  
--- @param min Vector @Minimum extent of an OBB in local coordinates.
--- @param max Vector @Maximum extent of an OBB in local coordinates.
--- @return Vector @Minimum extent of the AABB relative to entity's position.
--- @return Vector @Maximum extent of the AABB relative to entity's position.
function Entity:GetRotatedAABB(min, max)
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
--- Return the index of the model sequence that is currently active for the entity.  
--- @return number @The index of the model sequence.
function Entity:GetSequence()
end

---  client|server
--- Return activity id out of sequence id. Opposite of Entity:SelectWeightedSequence.  
--- @param seq number @The sequence ID
--- @return number @The activity ID, ie Enums/ACT
function Entity:GetSequenceActivity(seq)
end

---  client|server
--- Returns the activity name for the given sequence id.  
--- @param sequenceId number @The sequence id.
--- @return string @The Enums/ACT as a string, returns "Not Found!" with an invalid sequence and "No model!" when no model is set.
function Entity:GetSequenceActivityName(sequenceId)
end

---  client|server
--- Returns the amount of sequences ( animations ) the entity's model has.  
--- @return number @The amount of sequences ( animations ) the entity's model has.
function Entity:GetSequenceCount()
end

---  client|server
--- Returns the ground speed of the entity's sequence.  
--- @param sequenceId number @The sequence ID.
--- @return number @The ground speed of this sequence.
function Entity:GetSequenceGroundSpeed(sequenceId)
end

---  client|server
--- Returns a table of information about an entity's sequence.  
--- @param sequenceId number @The sequence id of the entity.
--- @return table @Table of information about the entity's sequence, or `nil` is ID is out of range
function Entity:GetSequenceInfo(sequenceId)
end

---  client|server
--- Returns a list of all sequences ( animations ) the model has.  
--- @return table @The list of all sequences ( animations ) the model has
function Entity:GetSequenceList()
end

---  client|server
--- Returns an entity's sequence move distance (the change in position over the course of the entire sequence).  
--- See Entity:GetSequenceMovement for a similar function with more options.  
--- @param sequenceId number @The sequence index.
--- @return number @The move distance of the sequence.
function Entity:GetSequenceMoveDist(sequenceId)
end

---  server
--- Returns the change in heading direction in between the start and the end of the sequence.  
--- @param seq number @The sequence index
--- @return number @The yaw delta
function Entity:GetSequenceMoveYaw(seq)
end

---  client|server
--- Returns the delta movement and angles of a sequence of the entity's model.  
--- @param sequenceId number @The sequence index
--- @param startCycle? number @The sequence start cycle
--- @param endCyclnde? number @The sequence end cycle
--- @return boolean @Whether the operation was successful
--- @return Vector @The delta vector of the animation, how much the model's origin point moved.
--- @return Angle @The delta angle of the animation.
function Entity:GetSequenceMovement(sequenceId, startCycle, endCyclnde)
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
--- Returns an entity's sequence velocity at given animation frame.  
--- @param sequenceId number @The sequence index.
--- @param cycle number @The point in animation, from `0` to `1`.
--- @return Vector @Velocity of the sequence at given point in the animation.
function Entity:GetSequenceVelocity(sequenceId, cycle)
end

---  client|server
--- Checks if the entity plays a sound when picked up by a player.  
--- 🦟 **BUG**: [This will return nil if Entity:SetShouldPlayPickupSound has not been called.](https://github.com/Facepunch/garrysmod/pull/1488)  
--- @return boolean @True if it plays the pickup sound, false otherwise.
function Entity:GetShouldPlayPickupSound()
end

---  client|server
--- Returns if entity should create a server ragdoll on death or a client one.  
--- @return boolean @Returns true if ragdoll will be created on server, false if on client
function Entity:GetShouldServerRagdoll()
end

---  client|server
--- Returns the skin index of the current skin.  
--- @return number @skinIndex
function Entity:GetSkin()
end

---  client|server
--- Returns solid type of an entity.  
--- @return number @The solid type
function Entity:GetSolid()
end

---  client|server
--- Returns solid flag(s) of an entity.  
--- @return number @The flag(s) of the entity, see Enums/FSOLID.
function Entity:GetSolidFlags()
end

---  client|server
--- Returns if we should show a spawn effect on spawn on this entity.  
--- @return boolean @The flag to allow or disallow the spawn effect.
function Entity:GetSpawnEffect()
end

---  client|server
--- Returns the bitwise spawn flags used by the entity.  
--- @return number @The spawn flags of the entity, see SF_Enums.
function Entity:GetSpawnFlags()
end

---  client|server
--- Returns the material override for the given index.  
--- Returns "" if no material override exists. Use Entity:GetMaterials to list it's default materials.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param index number @The index of the sub material
--- @return string @The material that overrides this index, if any.
function Entity:GetSubMaterial(index)
end

---  client|server
--- Returns a list of models included into the entity's model in the .qc file.  
--- @return table @The list of models included into the entity's model in the .qc file.
function Entity:GetSubModels()
end

---  client|server
--- Returns two vectors representing the minimum and maximum extent of the entity's axis-aligned bounding box for hitbox detection. In most cases, this will return the same bounding box as Entity:WorldSpaceAABB unless it was changed by Entity:SetSurroundingBounds or Entity:SetSurroundingBoundsType.  
--- @return Vector @The minimum vector for the entity's bounding box in world space.
--- @return Vector @The maximum vector for the entity's bounding box in world space.
function Entity:GetSurroundingBounds()
end

---  client|server
--- Returns the table that contains all values saved within the entity.  
--- @return table @entTable
function Entity:GetTable()
end

---  client|server
--- Returns the last trace used in the collision callbacks such as ENTITY:StartTouch, ENTITY:Touch and ENTITY:EndTouch.  
--- ℹ **NOTE**: This returns the last collision trace used, regardless of the entity that caused it. As such, it's only reliable when used in the hooks mentioned above  
--- @return table @The Structures/TraceResult
function Entity:GetTouchTrace()
end

---  client|server
--- Returns true if the TransmitWithParent flag is set or not.  
--- @return boolean @Is the TransmitWithParent flag is set or not
function Entity:GetTransmitWithParent()
end

---  server
--- Returns if the entity is unfreezable, meaning it can't be frozen with the physgun. By default props are freezable, so this function will typically return false.  
--- 🦟 **BUG**: [This will return nil if Entity:SetUnFreezable has not been called.](https://github.com/Facepunch/garrysmod/pull/1488)  
--- @return boolean @True if the entity is unfreezable, false otherwise.
function Entity:GetUnFreezable()
end

---  client|server
--- Returns the upward vector of the entity, as a normalized direction vector  
--- @return Vector @upDir
function Entity:GetUp()
end

---  client|server
--- Retrieves a value from entity's Entity:GetTable. Set by Entity:SetVar.  
--- @param key any @Key of the value to retrieve
--- @param default? any @A default value to fallback to if we couldn't retrieve the value from entity
--- @return any @Retrieved value
function Entity:GetVar(key, default)
end

---  client|server
--- Returns the entity's velocity.  
--- ℹ **NOTE**: Actually binds to `CBaseEntity::GetAbsVelocity()` on the server and `C_BaseEntity::EstimateAbsVelocity()` on the client. This returns the total velocity of the entity and is equal to local velocity + base velocity.  
--- 🦟 **BUG**: [This can become out-of-sync on the client if the server has been up for a long time.](https://github.com/Facepunch/garrysmod-issues/issues/774)  
--- @return Vector @The velocity of the entity.
function Entity:GetVelocity()
end

---  server
--- 🛑 **DEPRECATED**:   
--- Returns ID of workshop addon that the entity is from.  
--- ⚠ **WARNING**: The function **currently** does nothing and always returns nil  
--- @deprecated
--- @return number @The workshop ID
function Entity:GetWorkshopID()
end

---  client|server
--- Returns the position and angle of the entity as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- 🦟 **BUG**: [This returns incorrect results for the angular component (columns 1-3) for the local player clientside.](https://github.com/Facepunch/garrysmod-issues/issues/2764)  
--- 🦟 **BUG**: [This will use the local player's Global.EyeAngles in rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/3106)  
--- 🦟 **BUG**: [Columns 1-3 will be all 0 (angular component) in rendering hooks while paused in single-player.](https://github.com/Facepunch/garrysmod-issues/issues/3107)  
--- @return VMatrix @The position and angle matrix.
function Entity:GetWorldTransformMatrix()
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
--- Returns whether or not the bone manipulation functions have ever been called on given  entity.  
--- Related functions are Entity:ManipulateBonePosition, Entity:ManipulateBoneAngles, Entity:ManipulateBoneJiggle, and Entity:ManipulateBoneScale.  
--- 🦟 **BUG**: [This will return true if the entity's bones have ever been manipulated. Resetting the position/angles/jiggle/scaling to 0,0,0 will not affect this function.](https://github.com/Facepunch/garrysmod-issues/issues/3131)  
--- @return boolean @True if the entity has been bone manipulated, false otherwise.
function Entity:HasBoneManipulations()
end

---  client|server
--- Returns whether or not the the entity has had flex manipulations performed with Entity:SetFlexWeight or Entity:SetFlexScale.  
--- @return boolean @True if the entity has flex manipulations, false otherwise.
function Entity:HasFlexManipulatior()
end

---  client|server
--- Returns whether this entity has the specified spawnflags bits set.  
--- @param spawnFlags number @The spawnflag bits to check, see Enums/SF.
--- @return boolean @Whether the entity has that spawnflag set or not.
function Entity:HasSpawnFlags(spawnFlags)
end

---  server
--- Returns the position of the head of this entity, NPCs use this internally to aim at their targets.  
--- ℹ **NOTE**: This only works on players and NPCs.  
--- @param origin Vector @The vector of where the attack comes from.
--- @return Vector @The head position.
function Entity:HeadTarget(origin)
end

---  client|server
--- Returns the health of the entity.  
--- @return number @health
function Entity:Health()
end

---  server
--- Sets the entity on fire.  
--- See also Entity:Extinguish.  
--- @param length number @How long to keep the entity ignited, in seconds.
--- @param radius? number @The radius of the ignition, will ignite everything around the entity that is in this radius.
function Entity:Ignite(length, radius)
end

---  client
--- 🛑 **DEPRECATED**:   
--- This function got disabled and will always throw an error if it's used. This is the error:  
--- ```  
--- [ERROR] InitializeAsClientEntity is deprecated and should no longer be used.  
--- ```  
--- Initializes this entity as being clientside only.  
--- Only works on entities fully created clientside, and as such it currently has no use due to this being automatically called by ents.CreateClientProp, ents.CreateClientside, Global.ClientsideModel and Global.ClientsideScene.  
--- @deprecated
function Entity:InitializeAsClientEntity()
end

---  server
--- Fires input to the entity with the ability to make another entity responsible, bypassing the event queue system.  
--- You should only use this function over Entity:Fire if you know what you are doing.  
--- See also Entity:Fire for a function that conforms to the internal map IO event queue and GM:AcceptInput for a hook that can intercept inputs.  
--- @param input string @The name of the input to fire
--- @param activator? Entity @The entity that caused this input (i.e
--- @param caller? Entity @The entity that is triggering this input (i.e
--- @param param? any @The value to give to the input
function Entity:Input(input, activator, caller, param)
end

---  client
--- Resets the entity's bone cache values in order to prepare for a model change.  
--- This should be called after calling Entity:SetPoseParameter.  
function Entity:InvalidateBoneCache()
end

---  client|server
--- Returns true if the entity has constraints attached to it  
--- 🦟 **BUG**: [This will only update clientside if the server calls it first. This only checks constraints added through the constraint so this will not react to map constraints.](https://github.com/Facepunch/garrysmod-issues/issues/3837)  
--- @return boolean @Whether the entity is constrained or not.
function Entity:IsConstrained()
end

---  server
--- Returns if entity is constraint or not  
--- @return boolean @Is the entity a constraint or not
function Entity:IsConstraint()
end

---  client|server
--- Returns whether the entity is dormant or not. Client/server entities become dormant when they leave the PVS on the server. Client side entities can decide for themselves whether to become dormant. This mainly applies to PVS.  
--- @return boolean @Whether the entity is dormant or not.
function Entity:IsDormant()
end

---  client|server
--- Checks if given flag is set or not.  
--- @param flag number @The engine flag to test, see Enums/EFL
--- @return boolean @Is set or not
function Entity:IsEFlagSet(flag)
end

---  client|server
--- Returns whether an entity has engine effect applied or not.  
--- @param effect number @The effect to check for, see Enums/EF.
--- @return boolean @Whether the entity has the engine effect applied or not.
function Entity:IsEffectActive(effect)
end

---  client|server
--- Checks if given flag(s) is set or not.  
--- @param flag number @The engine flag(s) to test, see Enums/FL
--- @return boolean @Is set or not
function Entity:IsFlagSet(flag)
end

---  server
--- Returns whether the entity is inside a wall or outside of the map.  
--- ℹ **NOTE**: Internally this function uses util.IsInWorld, that means that this function only checks Entity:GetPos of the entity. If an entity is only partially inside a wall, or has a weird GetPos offset, this function may not give reliable output.  
--- @return boolean @Is the entity in world
function Entity:IsInWorld()
end

---  server
--- Returns whether the entity is lag compensated or not.  
--- @return boolean @Whether the entity is lag compensated or not.
function Entity:IsLagCompensated()
end

---  client|server
--- Returns true if the target is in line of sight.  
--- ℹ **NOTE**: This will only work when called on CBaseCombatCharacter entities. This includes players, NPCs, grenades, RPG rockets, crossbow bolts, and physics cannisters.  
--- @param target Vector @The target to test
--- @return boolean @Returns true if the line of sight is clear
function Entity:IsLineOfSightClear(target)
end

---  client|server
--- Returns if the entity is going to be deleted in the next frame. Entities marked for deletion should not be accessed.  
--- @return boolean @If the entity is going to be deleted.
function Entity:IsMarkedForDeletion()
end

---  client|server
--- Checks if the entity is an NPC or not.  
--- This will return false for NextBots, see Entity:IsNextBot for that.  
--- @return boolean @Whether the entity is an NPC.
function Entity:IsNPC()
end

---  client|server
--- Checks if the entity is a NextBot or not.  
--- @return boolean @Whether the entity is an NextBot entity or not.
function Entity:IsNextBot()
end

---  client|server
--- Returns whether the entity is on fire.  
--- @return boolean @Whether the entity is on fire or not.
function Entity:IsOnFire()
end

---  client|server
--- Returns whether the entity is on ground or not.  
--- Internally, this checks if FL_ONGROUND is set on the entity.  
--- This function is an alias of Entity:OnGround.  
--- @return boolean @Whether the entity is on ground or not.
function Entity:IsOnGround()
end

---  client|server
--- Checks if the entity is a player or not.  
--- @return boolean @Whether the entity is a player.
function Entity:IsPlayer()
end

---  server
--- Returns true if the entity is being held by a player. Either by physics gun, gravity gun or use-key (+use).  
--- 🦟 **BUG**: [If multiple players are holding an object and one drops it, this will return false despite the object still being held.](https://github.com/Facepunch/garrysmod-issues/issues/2046)  
--- @return boolean @IsBeingHeld
function Entity:IsPlayerHolding()
end

---  server
--- Returns whether there's a gesture with the given activity being played.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity to test
--- @return boolean @Whether there's a gesture is given activity being played.
function Entity:IsPlayingGesture(activity)
end

---  client|server
--- Checks if the entity is a ragdoll.  
--- @return boolean @Is ragdoll or not
function Entity:IsRagdoll()
end

---  client|server
--- Checks if the entity is a SENT or a built-in entity.  
--- @return boolean @Returns true if entity is scripted ( SENT ), false if not ( A built-in engine entity )
function Entity:IsScripted()
end

---  client|server
--- Returns whether the entity's current sequence is finished or not.  
--- @return boolean @Whether the entity's sequence is finished or not.
function Entity:IsSequenceFinished()
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
--- Returns whether the given layer ID is valid and exists on this entity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @return boolean @Whether the given layer ID is valid and exists on this entity.
function Entity:IsValidLayer(layerID)
end

---  client|server
--- Checks if the entity is a vehicle or not.  
--- @return boolean @Whether the entity is a vehicle.
function Entity:IsVehicle()
end

---  client|server
--- Checks if the entity is a weapon or not.  
--- @return boolean @Whether the entity is a weapon
function Entity:IsWeapon()
end

---  client|server
--- Returns whether the entity is a widget or not.  
--- This is used by the "Edit Bones" context menu property.  
--- @return boolean @Whether the entity is a widget or not.
function Entity:IsWidget()
end

---  client|server
--- Returns if the entity is the map's Entity[0] worldspawn  
--- @return boolean @isWorld
function Entity:IsWorld()
end

---  client|server
--- Converts a vector local to an entity into a worldspace vector  
--- @param lpos Vector @The local vector
--- @return Vector @The translated to world coordinates vector
function Entity:LocalToWorld(lpos)
end

---  client|server
--- Converts a local angle (local to the entity) to a world angle.  
--- @param ang Angle @The local angle
--- @return Angle @The world angle
function Entity:LocalToWorldAngles(ang)
end

---  client|server
--- Returns the attachment index of the given attachment name.  
--- @param attachmentName string @The name of the attachment.
--- @return number @The attachment index, or 0 if the attachment does not exist and -1 if the model is invalid.
function Entity:LookupAttachment(attachmentName)
end

---  client|server
--- Gets the bone index of the given bone name, returns nothing if the bone does not exist.  
--- @param boneName string @The name of the bone
--- @return number @Index of the given bone name
function Entity:LookupBone(boneName)
end

---  client|server
--- Returns pose parameter ID from its name.  
--- @param name string @Pose parameter name
--- @return number @The ID of the given pose parameter name, if it exists, -1 otherwise
function Entity:LookupPoseParameter(name)
end

---  client|server
--- Returns sequence ID from its name. See Entity:GetSequenceName for a function that does the opposite.  
--- @param name string @Sequence name
--- @return number @Sequence ID for that name
--- @return number @The sequence duration
function Entity:LookupSequence(name)
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

---  client|server
--- Sets custom bone angles.  
--- 🦟 **BUG**: [When used repeatedly serverside, this method is strongly discouraged due to the huge network traffic produced.](https://github.com/Facepunch/garrysmod-issues/issues/5148)  
--- @param boneID number @Index of the bone you want to manipulate
--- @param ang Angle @Angle to apply
--- @param networking? boolean @boolean to network these changes (if called from server)
function Entity:ManipulateBoneAngles(boneID, ang, networking)
end

---  client|server
--- Manipulates the bone's jiggle status. This allows non jiggly bones to become jiggly.  
--- @param boneID number @Index of the bone you want to manipulate.
--- @param enabled number @* `0` = No Jiggle
function Entity:ManipulateBoneJiggle(boneID, enabled)
end

---  client|server
--- Sets custom bone offsets.  
--- @param boneID number @Index of the bone you want to manipulate.
--- @param pos Vector @Position vector to apply
--- @param networking? boolean @boolean to network these changes (if called from server)
function Entity:ManipulateBonePosition(boneID, pos, networking)
end

---  client|server
--- Sets custom bone scale.  
--- 🦟 **BUG**: [When used repeatedly serverside, this method is strongly discouraged due to the huge network traffic produced.](https://github.com/Facepunch/garrysmod-issues/issues/5148)  
--- 🦟 **BUG**: [This does not scale procedural bones.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param boneID number @Index of the bone you want to manipulate
--- @param scale Vector @Scale vector to apply
function Entity:ManipulateBoneScale(boneID, scale)
end

---  client|server
--- Returns entity's map creation ID. Unlike Entity:EntIndex or Entity:GetCreationID, it will always be the same on same map, no matter how much you clean up or restart it.  
--- To be used in conjunction with ents.GetMapCreatedEntity.  
--- @return number @The map creation ID or -1 if the entity is not compiled into the map.
function Entity:MapCreationID()
end

---  client
--- Refreshes the shadow of the entity.  
function Entity:MarkShadowAsDirty()
end

---  client|server
--- Fires the muzzle flash effect of the weapon the entity is carrying. This only creates a light effect and is often called alongside Weapon:SendWeaponAnim  
function Entity:MuzzleFlash()
end

---  client|server
--- Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.  
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE`  
--- @param position Vector @The vector to start the intersection from.
--- @return Vector @The nearest hit point of the entity's bounding box in world coordinates.
function Entity:NearestPoint(position)
end

---  client|server
--- Creates a network variable on the entity and adds Set/Get functions for it. This function should only be called in ENTITY:SetupDataTables.  
--- See Entity:NetworkVarNotify for a function to hook NetworkVar changes.  
--- ℹ **NOTE**:   
--- Entity NetworkVars are influenced by the return value of ENTITY:UpdateTransmitState.  
--- So if you use the **PVS**(**default**), then the NetworkVars can be different for each client.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- Combining this function with util.TableToJSON can also provide a way to network tables as serialized strings.  
--- @param type string @Supported choices:
--- @param slot number @Each network variable has to have a unique slot
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extended information
function Entity:NetworkVar(type, slot, name, extended)
end

---  client|server
--- Similarly to Entity:NetworkVar, creates a network variable on the entity and adds Set/Get functions for it. This method stores it's value as a member value of a vector or an angle. This allows to go beyond the normal variable limit of Entity:NetworkVar for `Int` and `Float` types, at the expense of `Vector` and `Angle` limit.  
--- This function should only be called in ENTITY:SetupDataTables.  
--- ⚠ **WARNING**: Make sure to not call the SetDT* and your custom set methods on the client realm unless you know exactly what you are doing.  
--- @param type string @Supported choices:
--- @param slot number @The slot for this `Vector` or `Angle`, from `0` to `31`
--- @param element string @Which element of a `Vector` or an `Angle` to store the value on
--- @param name string @The name will affect how you access it
--- @param extended? table @A table of extra information
function Entity:NetworkVarElement(type, slot, element, name, extended)
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
--- In the case of a scripted entity, this will cause the next ENTITY:Think event to be run at the given time.  
--- Does not work clientside! Use Entity:SetNextClientThink instead.  
--- 🦟 **BUG**: [This does not work with SWEPs or Nextbots.](https://github.com/Facepunch/garrysmod-issues/issues/3269)  
--- @param timestamp number @The relative to Global.CurTime timestamp, at which the next think should occur.
function Entity:NextThink(timestamp)
end

---  client|server
--- Returns the center of an entity's bounding box as a local vector.  
--- @return Vector @OBBCenter
function Entity:OBBCenter()
end

---  client|server
--- Returns the highest corner of an entity's bounding box as a local vector.  
--- @return Vector @The local position of the highest corner of the entity's oriented bounding box.
function Entity:OBBMaxs()
end

---  client|server
--- Returns the lowest corner of an entity's bounding box as a local vector.  
--- @return Vector @The local position of the lowest corner of the entity's oriented bounding box.
function Entity:OBBMins()
end

---  client|server
--- Returns the entity's capabilities as a bitfield.  
--- In the engine this function is mostly used to check the use type, the save/restore system and level transitions flags.  
--- Even though the function is defined shared, it is not guaranteed to return the same value across states.  
--- ℹ **NOTE**: The enums for this are not currently implemented in Lua, however you can access the defines [here](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/shared/baseentity_shared.h#L21-L38).  
--- @return number @The bitfield, a combination of the [FCAP_](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp
function Entity:ObjectCaps()
end

---  client|server
--- Returns true if the entity is on the ground, and false if it isn't.  
--- Internally, this checks if FL_ONGROUND is set on the entity. This is only updated for players and NPCs, and thus won't inherently work for other entities.  
--- @return boolean @Whether the entity is on the ground or not.
function Entity:OnGround()
end

---  server
--- Tests whether the damage passes the entity filter.  
--- This will call ENTITY:PassesDamageFilter on scripted entities of the type "filter".  
--- ℹ **NOTE**: This function only works on entities of the type "filter". ( filter_* entities, including base game filter entites )  
--- @param dmg CTakeDamageInfo @The damage info to test
--- @return boolean @Whether the damage info passes the entity filter.
function Entity:PassesDamageFilter(dmg)
end

---  server
--- Tests whether the entity passes the entity filter.  
--- This will call ENTITY:PassesFilter on scripted entities of the type "filter".  
--- ℹ **NOTE**: This function only works on entities of the type "filter". ( filter_* entities, including base game filter entites )  
--- @param caller Entity @The initiator of the test
--- @param ent Entity @The entity to test against the entity filter.
--- @return boolean @Whether the entity info passes the entity filter.
function Entity:PassesFilter(caller, ent)
end

---  client|server
--- Wakes up the entity's physics object  
function Entity:PhysWake()
end

---  client|server
--- Destroys the current physics object of an entity.  
--- ℹ **NOTE**: Cannot be used on a ragdoll or the world entity.  
function Entity:PhysicsDestroy()
end

---  client|server
--- Initializes the physics mesh of the entity from a triangle soup defined by a table of vertices. The resulting mesh is hollow, may contain holes, and always has a volume of 0.  
--- While this is very useful for static geometry such as terrain displacements, it is advised to use Entity:PhysicsInitConvex or Entity:PhysicsInitMultiConvex for moving solid objects instead.  
--- Entity:EnableCustomCollisions needs to be called if you want players to collide with the entity correctly.  
--- @param vertices table @A table consisting of Structures/MeshVertex (only the `pos` element is taken into account)
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `nil` otherwise.
function Entity:PhysicsFromMesh(vertices, surfaceprop)
end

---  client|server
--- Initializes the physics object of the entity using its current model. Deletes the previous physics object if it existed and the new object creation was successful.  
--- If the entity's current model has no physics mesh associated to it, no physics object will be created and the previous object will still exist, if applicable.  
--- ℹ **NOTE**: When called clientside, this will not create a valid PhysObj if the model hasn't been precached serverside.  
--- If successful, this function will automatically call Entity:SetSolid( solidType ) and Entity:SetSolidFlags( 0 ).  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param solidType number @The solid type of the physics object to create, see Enums/SOLID
--- @return boolean @Returns `true` on success, `false` otherwise.
function Entity:PhysicsInit(solidType)
end

---  client|server
--- Makes the physics object of the entity a AABB.  
--- This function will automatically destroy any previous physics objects and do the following:  
--- * Entity:SetSolid( `SOLID_BBOX` )  
--- * Entity:SetMoveType( `MOVETYPE_VPHYSICS` )  
--- * Entity:SetCollisionBounds( `mins`, `maxs` )  
--- ℹ **NOTE**: If the volume of the resulting box is 0 (the mins and maxs are the same), the mins and maxs will be changed to Global.Vector( -1, -1, -1 ) and Global.Vector( 1, 1, 1 ), respectively.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param mins Vector @The minimum position of the box
--- @param maxs Vector @The maximum position of the box
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `nil` otherwise
function Entity:PhysicsInitBox(mins, maxs, surfaceprop)
end

---  client|server
--- Initializes the physics mesh of the entity with a convex mesh defined by a table of points. The resulting mesh is the  of all the input points. If successful, the previous physics object will be removed.  
--- This is the standard way of creating moving physics objects with a custom convex shape. For more complex, concave shapes, see Entity:PhysicsInitMultiConvex.  
--- 🦟 **BUG**: [This will crash if given all Global.Vector(0,0,0)s.](https://github.com/Facepunch/garrysmod-issues/issues/3301)  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- You can use the following workaround for movement, though clientside collisions will still be broken.  
--- ```  
--- function ENT:Think()  
--- if ( CLIENT ) then  
--- local physobj = self:GetPhysicsObject()  
--- if ( IsValid( physobj ) ) then  
--- physobj:SetPos( self:GetPos() )  
--- physobj:SetAngles( self:GetAngles() )  
--- end  
--- end  
--- end  
--- ```  
--- @param points table @A table of eight Vectors, in local coordinates, to be used in the computation of the convex mesh
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `false` otherwise.
function Entity:PhysicsInitConvex(points, surfaceprop)
end

---  client|server
--- An advanced version of Entity:PhysicsInitConvex which initializes a physics object from multiple convex meshes. This should be used for physics objects with a custom shape which cannot be represented by a single convex mesh.  
--- If successful, the previous physics object will be removed.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param vertices table @A table consisting of tables of Vectors
--- @param surfaceprop? string @Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) o
--- @return boolean @Returns `true` on success, `nil` otherwise.
function Entity:PhysicsInitMultiConvex(vertices, surfaceprop)
end

---  client|server
--- Initializes the entity's physics object as a physics shadow. Removes the previous physics object if successful. This is used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.  
--- A physics shadow can be used to have static entities that never move by setting both arguments to false.  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param allowPhysicsMovement? boolean @Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation? boolean @Whether to allow the physics shadow to rotate under stress.
--- @return boolean @Return `true` on success, `nil` otherwise.
function Entity:PhysicsInitShadow(allowPhysicsMovement, allowPhysicsRotation)
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

---  client|server
--- Initializes a static physics object of the entity using its current model. If successful, the previous physics object is removed.  
--- This is what used by entities such as `func_breakable`, `prop_dynamic`, `item_suitcharger`, `prop_thumper` and `npc_rollermine` while it is in its "buried" state in the Half-Life 2 Campaign.  
--- If the entity's current model has no physics mesh associated to it, no physics object will be created.  
--- ℹ **NOTE**: This function will automatically call Entity:SetSolid( `solidType` ).  
--- 🦟 **BUG**: [Clientside physics objects are broken and do not move properly in some cases. Physics objects should only created on the server or you will experience incorrect physgun beam position, prediction issues, and other unexpected behavior.](https://github.com/Facepunch/garrysmod-issues/issues/5060)  
--- A workaround is available on the Entity:PhysicsInitConvex page.  
--- @param solidType number @The solid type of the physics object to create, see Enums/SOLID
--- @return boolean @Returns `true` on success, `false` otherwise
function Entity:PhysicsInitStatic(solidType)
end

---  server
--- Makes the entity play a .vcd scene. [All scenes from Half-Life 2](https://developer.valvesoftware.com/wiki/Half-Life_2_Scenes_List).  
--- @param scene string @Filepath to scene.
--- @param delay? number @Delay in seconds until the scene starts playing.
--- @return number @Estimated length of the scene.
--- @return Entity @The scene entity, removing which will stop the scene from continuing to play.
function Entity:PlayScene(scene, delay)
end

---  server
--- Changes an entities angles so that it faces the target entity.  
--- @param target Entity @The entity to face.
function Entity:PointAtEntity(target)
end

---  server
--- Precaches gibs for the entity's model.  
--- Normally this function should be ran when the entity is spawned, for example the ENTITY:Initialize, after Entity:SetModel is called.  
--- This is required for Entity:GibBreakServer and Entity:GibBreakClient to work.  
--- @return number @The amount of gibs the prop has
function Entity:PrecacheGibs()
end

---  server
--- Normalizes the ragdoll. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function Entity:RagdollSolve()
end

---  server
--- Sets the function to build the ragdoll. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function Entity:RagdollStopControlling()
end

---  server
--- Makes the physics objects follow the set bone positions. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
function Entity:RagdollUpdatePhysics()
end

---  client|server
--- Removes the entity it is used on. The entity will be removed at the start of next tick.  
function Entity:Remove()
end

---  client|server
--- Removes all decals from the entities surface.  
function Entity:RemoveAllDecals()
end

---  server
--- Removes and stops all gestures.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
function Entity:RemoveAllGestures()
end

---  client|server
--- Removes a function previously added via Entity:CallOnRemove.  
--- @param identifier string @Identifier of the function within CallOnRemove
function Entity:RemoveCallOnRemove(identifier)
end

---  client|server
--- Removes a callback previously added with Entity:AddCallback  
--- @param hook string @The hook name to remove
--- @param callbackid number @The callback id previously retrieved with the return of Entity:AddCallback or Entity:GetCallbacks
function Entity:RemoveCallback(hook, callbackid)
end

---  client|server
--- Removes specified engine flag  
--- @param flag number @The flag to remove, see Enums/EFL
function Entity:RemoveEFlags(flag)
end

---  client|server
--- Removes an engine effect applied to an entity.  
--- @param effect number @The effect to remove, see Enums/EF.
function Entity:RemoveEffects(effect)
end

---  client|server
--- Removes specified flag(s) from the entity  
--- @param flag number @The flag(s) to remove, see Enums/FL
function Entity:RemoveFlags(flag)
end

---  client|server
--- Removes a PhysObject from the entity's motion controller so that ENTITY:PhysicsSimulate will no longer be called for given PhysObject.  
--- You must first create a motion controller with Entity:StartMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type  
--- @param physObj PhysObj @The PhysObj to remove from the motion controller.
function Entity:RemoveFromMotionController(physObj)
end

---  server
--- Removes and stops the gesture with given activity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param activity number @The activity remove
function Entity:RemoveGesture(activity)
end

---  client|server
--- Breaks internal Ragdoll constrains, so you can for example separate an arm from the body of a ragdoll and preserve all physics.  
--- The visual mesh will still stretch as if it was properly connected unless the ragdoll model is specifically designed to avoid that.  
--- @param num? number @Which constraint to break, values below 0 mean break them all
function Entity:RemoveInternalConstraint(num)
end

---  client|server
--- Removes solid flag(s) from the entity.  
--- @param flags number @The flag(s) to remove, see Enums/FSOLID.
function Entity:RemoveSolidFlags(flags)
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
--- Reset entity sequence info such as playback rate, ground speed, last event check, etc.  
function Entity:ResetSequenceInfo()
end

---  server
--- Makes the entity/weapon respawn.  
--- Only usable on HL2/HL:S pickups and any weapons. Seems to be buggy with weapons.  
--- Very unreliable.  
function Entity:Respawn()
end

---  server
--- Restarts the entity's animation gesture. If the given gesture is already playing, it will reset it and play it from the beginning.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites.  
--- @param activity number @The activity number to send to the entity
--- @param addIfMissing? boolean @Add/start the gesture to if it has not been yet started.
--- @param autokill? boolean 
function Entity:RestartGesture(activity, addIfMissing, autokill)
end

---  client|server
--- Returns sequence ID corresponding to given activity ID.  
--- Opposite of Entity:GetSequenceActivity.  
--- Similar to Entity:LookupSequence.  
--- See also Entity:SelectWeightedSequenceSeeded.  
--- @param act number @The activity ID, see Enums/ACT.
--- @return number @The sequence ID
function Entity:SelectWeightedSequence(act)
end

---  client|server
--- Returns the sequence ID corresponding to given activity ID, and uses the provided seed for random selection. The seed should be the same server-side and client-side if used in a predicted environment.  
--- See Entity:SelectWeightedSequence for a provided-seed version of this function.  
--- @param act number @The activity ID, see Enums/ACT.
--- @param seed number @The seed to use for randomly selecting a sequence in the case the activity ID has multiple sequences bound to it
--- @return number @The sequence ID
function Entity:SelectWeightedSequenceSeeded(act, seed)
end

---  client|server
--- Sends sequence animation to the view model. It is recommended to use this for view model animations, instead of Entity:ResetSequence.  
--- This function is only usable on view models.  
--- 🦟 **BUG**: [Sequences 0-6 will not be looped regardless if they're marked as a looped animation or not.](https://github.com/Facepunch/garrysmod-issues/issues/3229)  
--- @param seq number @The sequence ID returned by Entity:LookupSequence or  Entity:SelectWeightedSequence.
function Entity:SendViewModelMatchingSequence(seq)
end

---  client|server
--- Returns length of currently played sequence.  
--- 🦟 **BUG**: [This will return incorrect results for weapons and viewmodels clientside in thirdperson.](https://github.com/Facepunch/garrysmod-issues/issues/2783)  
--- @param seqid? number @A sequence ID to return the length specific sequence of instead of the entity's main/currently playing sequence.
--- @return number @The length of the sequence
function Entity:SequenceDuration(seqid)
end

---  client|server
--- Sets the entity's velocity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::SetLocalVelocity() which sets the entity's velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement.  
--- @param velocity Vector @The new velocity to set.
function Entity:SetAbsVelocity(velocity)
end

---  client|server
--- Sets the angles of the entity.  
--- ℹ **NOTE**: To set a player's angles, use Player:SetEyeAngles instead.  
--- @param angles Angle @The new angles.
function Entity:SetAngles(angles)
end

---  client
--- Sets the start time (relative to Global.CurTime) of the current animation, which is used to determine Entity:GetCycle. Should be less than CurTime to play an animation from the middle.  
--- @param time number @The time the animation was supposed to begin.
function Entity:SetAnimTime(time)
end

---  client|server
--- Sets a player's third-person animation. Mainly used by Weapons to start the player's weapon attack and reload animations.  
--- @param playerAnim number @Player animation, see Enums/PLAYER.
function Entity:SetAnimation(playerAnim)
end

---  client|server
--- 🛑 **DEPRECATED**: You should be using Entity:SetParent instead.  
--- Parents the sprite to an attachment on another model.  
--- Works only on env_sprite.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param ent Entity @The entity to attach/parent to
--- @param attachment number @The attachment ID to parent to
--- @deprecated
function Entity:SetAttachment(ent, attachment)
end

---  server
--- Sets the blood color this entity uses.  
--- @param bloodColor number @An integer corresponding to Enums/BLOOD_COLOR.
function Entity:SetBloodColor(bloodColor)
end

---  client|server
--- Sets the bodygroups from a string. A convenience function for Entity:SetBodygroup.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model, check will occur by view model.  
--- @param bodygroups string @Body groups to set
function Entity:SetBodyGroups(bodygroups)
end

---  client|server
--- Sets an entities' bodygroup.  
--- ℹ **NOTE**: If called for Weapon (after Initialize hook) with different body groups on world model and view model, check will occur by view model.  
--- @param bodygroup number @The id of the bodygroup you're setting
--- @param value number @The value you're setting the bodygroup to
function Entity:SetBodygroup(bodygroup, value)
end

---  client|server
--- Sets the specified value on the bone controller with the given ID of this entity, it's used in HL1 to change the head rotation of NPCs, turret aiming and so on.  
--- ℹ **NOTE**: This is the precursor of pose parameters, and only works for Half Life 1: Source models supporting it.  
--- @param boneControllerID number @The ID of the bone controller to set the value to
--- @param value number @The value to set on the specified bone controller.
function Entity:SetBoneController(boneControllerID, value)
end

---  client|server
--- Sets the bone matrix of given bone to given matrix. See also Entity:GetBoneMatrix.  
--- ℹ **NOTE**: Despite existing serverside, it does nothing.  
--- @param boneid number @The ID of the bone
--- @param matrix VMatrix @The matrix to set.
function Entity:SetBoneMatrix(boneid, matrix)
end

---  client
--- Sets the bone position and angles.  
--- @param bone number @The bone ID to manipulate
--- @param pos Vector @The position to set
--- @param ang Angle @The angles to set
function Entity:SetBonePosition(bone, pos, ang)
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
--- Sets the color of an entity.  
--- Some entities may need a custom [render mode](Enums/RENDERMODE) set for transparency to work. See example 2.  
--- Entities also must have a proper [render group](Enums/RENDERGROUP) set for transparency to work.  
--- @param color? table @The color to set
function Entity:SetColor(color)
end

---  client|server
--- Sets the color of an entity.  
--- ℹ **NOTE**: This function overrides Colors set with Entity:SetColor  
--- @param r number 
--- @param g number 
--- @param b number 
--- @param a number 
function Entity:SetColor4Part(r, g, b, a)
end

---  server
--- Sets the creator of the Entity. This is set automatically in Sandbox gamemode when spawning SENTs, but is never used/read by default.  
--- @param ply Player @The creator
function Entity:SetCreator(ply)
end

---  client|server
--- Marks the entity to call GM:ShouldCollide. Not to be confused with Entity:EnableCustomCollisions.  
--- @param enable boolean @Enable or disable the custom collision check
function Entity:SetCustomCollisionCheck(enable)
end

---  client|server
--- Sets the progress of the current animation to a specific value between 0 and 1.  
--- 🦟 **BUG**: [This does not work with viewmodels.](https://github.com/Facepunch/garrysmod-issues/issues/3038)  
--- @param value number @The desired cycle value
function Entity:SetCycle(value)
end

---  client|server
--- Sets the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding.  
--- @param elasticity number @The elasticity to set.
function Entity:SetElasticity(elasticity)
end

---  client|server
--- Allows you to set the Start or End entity attachment for the rope.  
--- @param name string @The name of the variable to modify
--- @param entity Entity @The entity to apply to the specific attachment.
function Entity:SetEntity(name, entity)
end

---  client|server
--- Sets the position an entity's eyes look toward. This works as an override for default behavior. Set to `0,0,0` to disable the override.  
--- @param pos Vector @If NPC, the **world position** for the entity to look towards, for Ragdolls, a **local position** in front of their `eyes` attachment.
function Entity:SetEyeTarget(pos)
end

---  client|server
--- Sets the scale of all the flexes of this entity. See Entity:SetFlexWeight.  
--- @param scale number @The new flex scale to set to
function Entity:SetFlexScale(scale)
end

---  client|server
--- Sets the weight/value of given flex controller.  
--- ℹ **NOTE**: Only `96` flex controllers can be set! Flex controllers on models with higher amounts will not be accessible.  
--- @param flex number @The ID of the flex to modify weight of
--- @param weight number @The new weight to set
function Entity:SetFlexWeight(flex, weight)
end

---  client|server
--- Sets friction multiplier for this entity when sliding against a surface. Entities default to 1 (100%) and can be higher.  
--- For players, the range is 0 to 10.  
--- ℹ **NOTE**: This only multiplies the friction of the entity, to change the value itself use PhysObj:SetMaterial.  
--- ℹ **NOTE**: Works only for MOVETYPE_STEP entities.  
--- @param friction number @Friction multiplier
function Entity:SetFriction(friction)
end

---  client|server
--- Sets the gravity multiplier of the entity.  
--- 🦟 **BUG**: [This function is not predicted.](https://github.com/Facepunch/garrysmod-issues/issues/3648)  
--- @param gravityMultiplier number @Value which specifies the gravity multiplier.
function Entity:SetGravity(gravityMultiplier)
end

---  client|server
--- Sets the ground the entity is standing on.  
--- @param ground Entity @The ground entity.
function Entity:SetGroundEntity(ground)
end

---  client|server
--- Sets the health of the entity.  
--- ℹ **NOTE**:   
--- You may want to take Entity:GetMaxHealth into account when calculating what to set health to, in case a gamemode has a different max health than 100.  
--- In some cases, setting health only serverside can cause hitches in movement, for example if something is modifying the player speed based on health.  
--- To solve this issue, it is better to set it shared in a predicted hook.  
--- @param newHealth number @New health value.
function Entity:SetHealth(newHealth)
end

---  client|server
--- Sets the current Hitbox set for the entity.  
--- @param id number @The new hitbox set to set
function Entity:SetHitboxSet(id)
end

---  client
--- Enables or disable the inverse kinematic usage of this entity.  
--- ⚠ **WARNING**: Calling this with false outside of ENTITY:Initialize requires a model change to take effect.  
--- @param useIK? boolean @The state of the IK.
function Entity:SetIK(useIK)
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

---  client
--- Sets the Level Of Detail model to use with this entity. This may not work for all models if the model doesn't include any LOD sub models.  
--- This function works exactly like the clientside r_lod convar and takes priority over it.  
--- @param lod? number @The Level Of Detail model ID to use
function Entity:SetLOD(lod)
end

---  server
--- This allows the entity to be lag compensated during Player:LagCompensation.  
--- ℹ **NOTE**: Players are lag compensated by default and there's no need to call this function for them.  
--- It's best to not enable lag compensation on parented entities, as the system does not handle it that well ( they will be moved back but then the entity will lag behind ).  
--- Parented entities move back with the parent if it's lag compensated, so if you are making some kind of armor piece you shouldn't do anything.  
--- As a side note for parented entities, if your entity can be shot at, keep in mind that its collision bounds need to be bigger than the bone's hitbox the entity is parented to, or hull/line traces ( such as the crowbar attack or bullets ) might not hit at all.  
--- @param enable boolean @Whether the entity should be lag compensated or not.
function Entity:SetLagCompensated(enable)
end

---  client|server
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param blendIn number 
function Entity:SetLayerBlendIn(layerID, blendIn)
end

---  client|server
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param blendOut number 
function Entity:SetLayerBlendOut(layerID, blendOut)
end

---  client|server
--- Sets the animation cycle/frame of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param cycle number @The new animation cycle/frame for given layer.
function Entity:SetLayerCycle(layerID, cycle)
end

---  client|server
--- Sets the duration of given layer. This internally overrides the Entity:SetLayerPlaybackRate.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param duration number @The new duration of the layer in seconds.
function Entity:SetLayerDuration(layerID, duration)
end

---  server
--- Sets whether the layer should loop or not.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param loop boolean @Whether the layer should loop or not.
function Entity:SetLayerLooping(layerID, loop)
end

---  client|server
--- Sets the layer playback rate. See also Entity:SetLayerDuration.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param rate number @The new playback rate.
function Entity:SetLayerPlaybackRate(layerID, rate)
end

---  server
--- Sets the priority of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entites!  
--- @param layerID number @The Layer ID
--- @param priority number @The new priority of the layer.
function Entity:SetLayerPriority(layerID, priority)
end

---  client|server
--- Sets the sequence of given layer.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID.
--- @param seq number @The sequenceID to set
function Entity:SetLayerSequence(layerID, seq)
end

---  client|server
--- Sets the layer weight. This influences how strongly the animation should be overriding the normal animations of the entity.  
--- ℹ **NOTE**: This function only works on BaseAnimatingOverlay entities.  
--- @param layerID number @The Layer ID
--- @param weight number @The new layer weight.
function Entity:SetLayerWeight(layerID, weight)
end

---  client
--- This forces an entity to use the bone transformation behaviour from versions prior to **8 July 2014**.  
--- This behaviour affects Entity:EnableMatrix and Entity:SetModelScale and is incorrect, therefore this function be used exclusively as a quick fix for old scripts that rely on it.  
--- @param enabled boolean @Whether the entity should use the old bone transformation behaviour or not.
function Entity:SetLegacyTransform(enabled)
end

---  server
--- Sets the entity to be used as the light origin position for this entity.  
--- @param lightOrigin Entity @The lighting entity.
function Entity:SetLightingOriginEntity(lightOrigin)
end

---  client|server
--- Sets angles relative to angles of Entity:GetParent  
--- @param ang Angle @The local angle
function Entity:SetLocalAngles(ang)
end

---  client|server
--- Sets the entity's angular velocity (rotation speed).  
--- @param angVel Angle @The angular velocity to set.
function Entity:SetLocalAngularVelocity(angVel)
end

---  client|server
--- Sets local position relative to the parented position. This is for use with Entity:SetParent to offset position.  
--- @param pos Vector @The local position
function Entity:SetLocalPos(pos)
end

---  client|server
--- Sets the entity's local velocity which is their velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement.  
--- ⚠ **WARNING**: Same as Entity:SetAbsVelocity, but clamps the given velocity, and is not recommended to be used because of that.  
--- @param velocity Vector @The new velocity to set.
function Entity:SetLocalVelocity(velocity)
end

---  client|server
--- Sets the rendering material override of the entity.  
--- To set a Lua material created with Global.CreateMaterial, just prepend a "!" to the material name.  
--- If you wish to override a single material on the model, use Entity:SetSubMaterial instead.  
--- ℹ **NOTE**: To apply materials to models, that material **must** have **VertexLitGeneric** shader. For that reason you cannot apply map textures onto models, map textures use a different material shader - **LightmappedGeneric**, which can be used on brush entities.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param materialName string @New material name
function Entity:SetMaterial(materialName)
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
--- Scales the model of the entity, if the entity is a Player or an NPC the hitboxes will be scaled as well.  
--- For some entities, calling Entity:Activate after this will scale the collision bounds and PhysObj as well; be wary as there's no optimization being done internally and highly complex collision models might crash the server.  
--- This is the same system used in TF2 for the Mann Vs Machine robots.  
--- To resize the entity along any axis, use Entity:EnableMatrix instead.  
--- Client-side trace detection seems to mess up if deltaTime is set to anything but zero. A very small decimal can be used instead of zero to solve this issue.  
--- If your old scales are wrong, use Entity:SetLegacyTransform as a quick fix.  
--- ℹ **NOTE**: If you do not want the physics to be affected by Entity:Activate, you can use Entity:ManipulateBoneScale`( 0, Vector( scale, scale, scale ) )` instead.  
--- 🦟 **BUG**: [This does not scale procedural bones and disables IK.](https://github.com/Facepunch/garrysmod-issues/issues/3502)  
--- @param scale number @A float to scale the model by
--- @param deltaTime? number @Transition time of the scale change, set to 0 to modify the scale right away
function Entity:SetModelScale(scale, deltaTime)
end

---  client|server
--- Sets the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide?  
--- @param moveCollideType number @The move collide type, see Enums/MOVECOLLIDE
function Entity:SetMoveCollide(moveCollideType)
end

---  client|server
--- Sets the Movement Parent of an entity to another entity.  
--- Similar to Entity:SetParent, except the object's coordinates are not translated automatically before parenting.  
--- Does nothing on client.  
--- @param Parent Entity @The entity to change this entity's Movement Parent to.
function Entity:SetMoveParent(Parent)
end

---  client|server
--- Sets the entity's move type. This should be called before initializing the physics object on the entity, unless it will override SetMoveType such as Entity:PhysicsInitBox.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param movetype number @The new movetype, see Enums/MOVETYPE
function Entity:SetMoveType(movetype)
end

---  client|server
--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNW2Angle both from client and server.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWAngle instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Angle @The value to set
function Entity:SetNW2Angle(key, value)
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
--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNW2Float both from client and server.  
--- Unlike Entity:SetNW2Int, floats don't have to be whole numbers.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWFloat instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function Entity:SetNW2Float(key, value)
end

---  client|server
--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNW2Int both from client and server.  
--- See Entity:SetNW2Float for numbers that aren't integers.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS.  
--- The integer has a 32 bit limit. Use Entity:SetNWInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function Entity:SetNW2Int(key, value)
end

---  client|server
--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNW2String both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWString instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 511 characters.
function Entity:SetNW2String(key, value)
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

---  client|server
--- Sets a function to be called when the NW2Var changes. Internally uses GM:EntityNetworkedVarChanged to call the function.  
--- Alias of Entity:SetNetworked2VarProxy  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity, or else this will be called multiple times and the NW2Var could get mixed up with other ones.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ℹ **NOTE**: Only one NW2VarProxy can be set per-var  
--- Running this function will only set it for the realm it is called on.  
--- @param key any @The key of the NW2Var to add callback for.
--- @param callback function @The function to be called when the NW2Var changes
function Entity:SetNW2VarProxy(key, callback)
end

---  client|server
--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNW2Vector both from client and server.  
--- 🦟 **BUG**: [You should not use the NW2 System on entities that are based on a Lua Entity or else NW2Vars could get mixed up, updated multiple times or not be set.](https://github.com/Facepunch/garrysmod-issues/issues/5455)  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWVector instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Vector @The value to set
function Entity:SetNW2Vector(key, value)
end

---  client|server
--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNWAngle both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Angle. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value Angle @The value to set
function Entity:SetNWAngle(key, value)
end

---  client|server
--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNWBool both from client and server.  
--- ⚠ **WARNING**: There's a 4096 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Bool. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
function Entity:SetNWBool(key, value)
end

---  client|server
--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNWEntity both from client and server.  
--- ⚠ **WARNING**: There's a 4096 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Entity. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value Entity @The value to set
function Entity:SetNWEntity(key, value)
end

---  client|server
--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNWFloat both from client and server.  
--- Unlike Entity:SetNWInt, floats don't have to be whole numbers.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Float. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function Entity:SetNWFloat(key, value)
end

---  client|server
--- Sets a networked integer (whole number) value on the entity.  
--- The value can then be accessed with Entity:GetNWInt both from client and server.  
--- See Entity:SetNWFloat for numbers that aren't integers.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Int. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- 🦟 **BUG**: [This function will not round decimal values as it actually networks a float internally.](https://github.com/Facepunch/garrysmod-issues/issues/3374)  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function Entity:SetNWInt(key, value)
end

---  client|server
--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNWString both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2String. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 199 characters.
function Entity:SetNWString(key, value)
end

---  client|server
--- ℹ **NOTE**: Only one NWVarProxy can be set per-var  
--- Running this function will only set it for the realm it is called on.  
--- Sets a function to be called when the NWVar changes.  
--- @param key any @The key of the NWVar to add callback for.
--- @param callback function @The function to be called when the NWVar changes
function Entity:SetNWVarProxy(key, callback)
end

---  client|server
--- Sets a networked vector value on the entity.  
--- The value can then be accessed with Entity:GetNWVector both from client and server.  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Entity:SetNW2Vector. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage#nwlimits  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value Vector @The value to set
function Entity:SetNWVector(key, value)
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
--- Virtually changes entity position for clients. Does the same thing as Entity:SetPos when used serverside.  
--- @param origin Vector @The position to make clients think this entity is at.
function Entity:SetNetworkOrigin(origin)
end

---  client|server
--- Sets a networked angle value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Angle both from client and server.  
--- 🛑 **DEPRECATED**:  You should be using Entity:SetNW2Angle instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWAngle instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Angle @The value to set
--- @deprecated
function Entity:SetNetworked2Angle(key, value)
end

---  client|server
--- Sets a networked boolean value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Bool both from client and server.  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Bool instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWBool instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value boolean @The value to set
--- @deprecated
function Entity:SetNetworked2Bool(key, value)
end

---  client|server
--- Sets a networked entity value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Entity both from client and server.  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Entity instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWEntity instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value Entity @The value to set
--- @deprecated
function Entity:SetNetworked2Entity(key, value)
end

---  client|server
--- Sets a networked float (number) value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Float both from client and server.  
--- Unlike Entity:SetNetworked2Int, floats don't have to be whole numbers.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWFloat instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value number @The value to set
function Entity:SetNetworked2Float(key, value)
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
--- Sets a networked string value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2String both from client and server.  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2String instead.  
--- ⚠ **WARNING**: The value will only be updated clientside if the entity is or enters the clients PVS. use Entity:SetNWString instead  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only be networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set, up to 511 characters.
--- @deprecated
function Entity:SetNetworked2String(key, value)
end

---  client|server
--- Sets a networked value on the entity.  
--- The value can then be accessed with Entity:GetNetworked2Var both from client and server.  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- 🛑 **DEPRECATED**: You should be using Entity:SetNW2Var instead.  
--- ⚠ **WARNING**: Trying to network a type that is not listed above leads to the value not being networked!  
--- ℹ **NOTE**: Running this function clientside will only set it for the client it is called on.  
--- The value will only be networked if it isn't the same as the current value and unlike SetNW*  
--- the value will only ne networked once and not every 10 seconds.  
--- @param key string @The key to associate the value with
--- @param value any @The value to set
--- @deprecated
function Entity:SetNetworked2Var(key, value)
end

---  client|server
--- Sets a function to be called when the NW2Var changes. Internally uses GM:EntityNetworkedVarChanged to call the function.  
--- ℹ **NOTE**: Only one NW2VarProxy can be set per-var  
--- Running this function clientside will only set it for the client it is called on.  
--- @param name string @The name of the NW2Var to add callback for.
--- @param callback function @The function to be called when the NW2Var changes
function Entity:SetNetworked2VarProxy(name, callback)
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
--- 🛑 **DEPRECATED**: You should use Entity:SetNWAngle instead.  
--- Sets a networked angle value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedAngle both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? Angle @The value to set
--- @deprecated
function Entity:SetNetworkedAngle(key, value)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWBool instead.  
--- Sets a networked boolean value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedBool both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? boolean @The value to set
--- @deprecated
function Entity:SetNetworkedBool(key, value)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWEntity instead.  
--- Sets a networked entity value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedEntity both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? Entity @The value to set
--- @deprecated
function Entity:SetNetworkedEntity(key, value)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWFloat instead.  
--- Sets a networked float value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedFloat both from client and server.  
--- Seems to be the same as Entity:GetNetworkedInt.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? number @The value to set
--- @deprecated
function Entity:SetNetworkedFloat(key, value)
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
--- 🛑 **DEPRECATED**: You should be using Entity:SetNWFloat instead.  
--- Sets a networked number at the specified index on the entity.  
--- @param index any @The index that the value is stored in.
--- @param number number @The value to network.
--- @deprecated
function Entity:SetNetworkedNumber(index, number)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWString instead.  
--- Sets a networked string value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedString both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value string @The value to set
--- @deprecated
function Entity:SetNetworkedString(key, value)
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
--- 🛑 **DEPRECATED**: You should be using Entity:SetNWVarProxy instead.  
--- Sets callback function to be called when given NWVar changes.  
--- @param name string @The name of the NWVar to add callback for.
--- @param callback function @The function to be called when the NWVar changes.
--- @deprecated
function Entity:SetNetworkedVarProxy(name, callback)
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Entity:SetNWVector instead.  
--- Sets a networked vector value at specified index on the entity.  
--- The value then can be accessed with Entity:GetNetworkedVector both from client and server.  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on.  
--- @param key string @The key to associate the value with
--- @param value? Vector @The value to set
--- @deprecated
function Entity:SetNetworkedVector(key, value)
end

---  client
--- Sets the next time the clientside ENTITY:Think is called.  
--- @param nextthink number @The next time, relative to Global.CurTime, to execute the ENTITY:Think clientside.
function Entity:SetNextClientThink(nextthink)
end

---  client|server
--- Sets if the entity's model should render at all.  
--- If set on the server, this entity will no longer network to clients, and for all intents and purposes cease to exist clientside.  
--- @param shouldNotDraw boolean @true disables drawing
function Entity:SetNoDraw(shouldNotDraw)
end

---  client|server
--- Sets whether the entity is solid or not.  
--- @param IsNotSolid boolean @True will make the entity not solid, false will make it solid.
function Entity:SetNotSolid(IsNotSolid)
end

---  client|server
--- Sets the owner of this entity, disabling all physics interaction with it.  
--- ℹ **NOTE**: This function is generally used to disable physics interactions on projectiles being fired by their owner, but can also be used for normal ownership in case physics interactions are not involved at all. The Gravity gun will be able to pick up the entity even if the owner can't collide with it, the Physics gun however will not.  
--- @param owner? Entity @The entity to be set as owner.
function Entity:SetOwner(owner)
end

---  client|server
--- Sets the parent of this entity, making it move with its parent. This will make the child entity non solid, nothing can interact with them, including traces.  
--- ℹ **NOTE**: This does not work on the world.  
--- ⚠ **WARNING**: This can cause undefined physics behaviour when used on entities that don't support parenting. See the [Valve developer wiki](https://developer.valvesoftware.com/wiki/Entity_Hierarchy_(parenting)) for more information.  
--- @param parent? Entity @The entity to parent to
--- @param attachmentId? number @The attachment id to use when parenting, defaults to -1 or whatever the parent had set previously
function Entity:SetParent(parent, attachmentId)
end

---  client|server
--- Sets the parent of an entity to another entity with the given physics bone number. Similar to Entity:SetParent, except it is parented to a physbone. This function is useful mainly for ragdolls.  
--- ℹ **NOTE**: Despite this function being available server side, it doesn't actually do anything server side.  
--- @param bone number @Physics bone number to attach to
function Entity:SetParentPhysNum(bone)
end

---  client|server
--- Sets whether or not the given entity is persistent. A persistent entity will be saved on server shutdown and loaded back when the server starts up. Additionally, by default persistent entities cannot be grabbed with the physgun and tools cannot be used on them.  
--- In sandbox, this can be set on an entity by opening the context menu, right clicking the entity, and choosing "Make Persistent".  
--- ℹ **NOTE**: Persistence can only be enabled with the sbox_persist convar, which works as an identifier for the current set of persistent entities. An empty identifier (which is the default value) disables this feature.  
--- @param persist boolean @Whether or not the entity should be persistent.
function Entity:SetPersistent(persist)
end

---  server
--- When called on a constraint entity, sets the two physics objects to be constrained.  
--- Usage is not recommended as the Constraint library provides easier ways to deal with constraints.  
--- @param Phys1 PhysObj @The first physics object to be constrained.
--- @param Phys2 PhysObj @The second physics object to be constrained.
function Entity:SetPhysConstraintObjects(Phys1, Phys2)
end

---  server
--- Sets the player who gets credit if this entity kills something with physics damage within the time limit.  
--- ℹ **NOTE**: This can only be called on props, "anim" type SENTs and vehicles.  
--- @param ent Player @Player who gets the kills
--- @param timeLimit? number @Time in seconds until the entity forgets its physics attacker and prevents it from getting the kill credit.
function Entity:SetPhysicsAttacker(ent, timeLimit)
end

---  client|server
--- Allows you to set how fast an entity's animation will play, with 1.0 being the default speed.  
--- @param fSpeed number @How fast the animation will play.
function Entity:SetPlaybackRate(fSpeed)
end

---  client|server
--- Moves the entity to the specified position.  
--- ℹ **NOTE**: If the new position doesn't take effect right away, you can use Entity:SetupBones to force it to do so. This issue is especially common when trying to render the same entity twice or more in a single frame at different positions.  
--- ⚠ **WARNING**: Entities with Entity:GetSolid of SOLID_BBOX will have their angles reset!  
--- 🦟 **BUG**: [This will fail inside of predicted functions called during player movement processing. This includes WEAPON:PrimaryAttack and WEAPON:Think.](https://github.com/Facepunch/garrysmod-issues/issues/2447)  
--- ℹ **NOTE**: Some entities, such as ragdolls, will appear unaffected by this function in the next frame. Consider PhysObj:SetPos if necessary.  
--- @param position Vector @The position to move the entity to.
function Entity:SetPos(position)
end

---  client|server
--- Sets the specified pose parameter to the specified value.  
--- You should call Entity:InvalidateBoneCache after calling this function.  
--- ℹ **NOTE**: Avoid calling this in draw hooks, especially when animating things, as it might cause visual artifacts.  
--- @param poseName string @Name of the pose parameter
--- @param poseValue number @The value to set the pose to.
function Entity:SetPoseParameter(poseName, poseValue)
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

---  server
--- Prevents the server from sending any further information about the entity to a player.  
--- ℹ **NOTE**: You must also call this function on a player's children if you would like to prevent transmission for players. See Entity:GetChildren.  
--- 🦟 **BUG**: [This does not work for nextbots unless you recursively loop their children and update them too.](https://github.com/Facepunch/garrysmod-issues/issues/1736)  
--- ⁉ **VALIDATE**: When using this function, Entity:SetFlexScale will conflict with this function. Instead, consider using Entity:SetFlexScale on the client.  
--- @param player Player @The player to stop networking the entity to.
--- @param stopTransmitting boolean @true to stop the entity from networking, false to make it network again.
function Entity:SetPreventTransmit(player, stopTransmitting)
end

---  server
--- Sets the bone angles. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
--- @param boneid number @Bone ID
--- @param pos Angle @Angle to set
function Entity:SetRagdollAng(boneid, pos)
end

---  server
--- Sets the function to build the ragdoll. This is used alongside Kinect, for more info see ragdoll_motion entity.  
--- @param func function @The build function
function Entity:SetRagdollBuildFunction(func)
end

---  server
--- Sets the bone position. This is used alongside Kinect in Entity:SetRagdollBuildFunction, for more info see ragdoll_motion entity.  
--- @param boneid number @Bone ID
--- @param pos Vector @Position to set
function Entity:SetRagdollPos(boneid, pos)
end

---  client
--- Sets the render angle override for the Entity.  
--- @param newAngles? Angle @The new render angles to be set to
function Entity:SetRenderAngles(newAngles)
end

---  client
--- Sets the render bounds for the entity. For world space coordinates see Entity:SetRenderBoundsWS.  
--- @param mins Vector @The minimum corner of the bounds, relative to origin of the entity.
--- @param maxs Vector @The maximum corner of the bounds, relative to origin of the entity.
--- @param add? Vector @If defined, adds this vector to maxs and subtracts this vector from mins.
function Entity:SetRenderBounds(mins, maxs, add)
end

---  client
--- Sets the render bounds for the entity in world space coordinates. For relative coordinates see Entity:SetRenderBounds.  
--- @param mins Vector @The minimum corner of the bounds, relative to origin of the world/map.
--- @param maxs Vector @The maximum corner of the bounds, relative to origin of the world/map.
--- @param add? Vector @If defined, adds this vector to maxs and subtracts this vector from mins.
function Entity:SetRenderBoundsWS(mins, maxs, add)
end

---  client
--- Used to specify a plane, past which an object will be visually clipped.  
--- @param planeNormal Vector @The normal of the plane
--- @param planePosition number @The position of the plane.
function Entity:SetRenderClipPlane(planeNormal, planePosition)
end

---  client
--- Enables the use of clipping planes to "cut" objects.  
--- @param enabled boolean @Enable or disable clipping planes
function Entity:SetRenderClipPlaneEnabled(enabled)
end

---  client|server
--- Sets entity's render FX.  
--- @param renderFX number @The new render FX to set, see Enums/kRenderFx
function Entity:SetRenderFX(renderFX)
end

---  client|server
--- Sets the render mode of the entity.  
--- @param renderMode number @New render mode to set, see Enums/RENDERMODE.
function Entity:SetRenderMode(renderMode)
end

---  client
--- Set the render origin override, a position where the Entity will be rendered at.  
--- @param newOrigin? Vector @The new origin in world coordinates where the Entity's model will now be rendered at
function Entity:SetRenderOrigin(newOrigin)
end

---  client|server
--- Sets a save value for an entity. You can see a full list of an entity's save values by creating it and printing Entity:GetSaveTable().  
--- See Entity:GetInternalVariable for the opposite of this function.  
--- @param name string @Name of the save value to set
--- @param value any @Value to set
--- @return boolean @Key successfully set
function Entity:SetSaveValue(name, value)
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
--- Sets whether or not the entity should make a physics contact sound when it's been picked up by a player.  
--- @param playsound? boolean @True to play the pickup sound, false otherwise.
function Entity:SetShouldPlayPickupSound(playsound)
end

---  client|server
--- Sets if entity should create a server ragdoll on death or a client one.  
--- ℹ **NOTE**: Player ragdolls created with this enabled will have an owner set, see Entity:SetOwner for more information on what effects this has.  
--- This is reset for players when they respawn (Entity:Spawn).  
--- @param serverragdoll boolean @Set `true` if ragdoll should be created on server, `false` if on client.
function Entity:SetShouldServerRagdoll(serverragdoll)
end

---  client|server
--- Sets the skin of the entity.  
--- @param skinIndex number @0-based index of the skin to use.
function Entity:SetSkin(skinIndex)
end

---  client|server
--- Sets the solidity of an entity.  
--- @param solid_type number @The solid type
function Entity:SetSolid(solid_type)
end

---  client|server
--- Sets solid flag(s) for the entity.  
--- This overrides any other flags the entity might have had. See Entity:AddSolidFlags for adding flags.  
--- @param flags number @The flag(s) to set, see Enums/FSOLID.
function Entity:SetSolidFlags(flags)
end

---  client|server
--- Sets whether the entity should use a spawn effect when it is created on the client.  
--- See Entity:GetSpawnEffect for more information on how the effect is applied.  
--- ℹ **NOTE**: This function will only have an effect when the entity spawns. After that it will do nothing even is set to true.  
--- @param spawnEffect boolean @Sets if we should show a spawn effect.
function Entity:SetSpawnEffect(spawnEffect)
end

---  client|server
--- Overrides a single material on the model of this entity.  
--- To set a Lua material created with Global.CreateMaterial, just prepend a `!` to the material name.  
--- 🦟 **BUG**: [The server's value takes priority on the client.](https://github.com/Facepunch/garrysmod-issues/issues/3362)  
--- @param index? number @Index of the material to override, acceptable values are from 0 to 31
--- @param material? string @The material to override the default one with
function Entity:SetSubMaterial(index, material)
end

---  client|server
--- Sets the axis-aligned bounding box (AABB) for an entity's hitbox detection.  
--- See also Entity:SetSurroundingBoundsType (mutually exclusive).  
--- @param min Vector @Minimum extent of the AABB relative to entity's position.
--- @param max Vector @Maximum extent of the AABB relative to entity's position.
function Entity:SetSurroundingBounds(min, max)
end

---  client|server
--- Automatically sets the axis-aligned bounding box (AABB) for an entity's hitbox detection.  
--- See also Entity:SetSurroundingBounds (mutually exclusive).  
--- @param bounds number @Bounds type of the entity, see Enums/BOUNDS
function Entity:SetSurroundingBoundsType(bounds)
end

---  client|server
--- When this flag is set the entity will only transmit to the player when its parent is transmitted. This is useful for things like viewmodel attachments since without this flag they will transmit to everyone (and cause the viewmodels to transmit to everyone too).  
--- ℹ **NOTE**: In the case of scripted entities, this will override ENTITY:UpdateTransmitState  
--- @param onoff boolean @Will set the TransmitWithParent flag on or off
function Entity:SetTransmitWithParent(onoff)
end

---  server
--- Marks the entity as a trigger, so it will generate ENTITY:StartTouch, ENTITY:Touch and ENTITY:EndTouch callbacks.  
--- Internally this is stored as FSOLID_TRIGGER flag.  
--- @param maketrigger boolean @Make the entity trigger or not
function Entity:SetTrigger(maketrigger)
end

---  server
--- Sets whether an entity can be unfrozen, meaning that it cannot be unfrozen using the physgun.  
--- @param freezable? boolean @True to make the entity unfreezable, false otherwise.
function Entity:SetUnFreezable(freezable)
end

---  server
--- Sets the use type of an entity, affecting how often ENTITY:Use will be called for Lua entities.  
--- @param useType number @The use type to apply to the entity
function Entity:SetUseType(useType)
end

---  client|server
--- Allows to quickly set variable to entity's Entity:GetTable.  
--- ℹ **NOTE**: This will not network the variable to client(s). You want Entity:SetNWString and similar functions for that  
--- @param key any @Key of the value to set
--- @param value any @Value to set the variable to
function Entity:SetVar(key, value)
end

---  client|server
--- Sets the entity's velocity. For entities with physics, consider using PhysObj:SetVelocity on the PhysObj of the entity.  
--- ℹ **NOTE**: Actually binds to CBaseEntity::SetBaseVelocity() which sets the entity's velocity due to forces applied by other entities.  
--- ⚠ **WARNING**: If applied to a player, this will actually **ADD** velocity, not set it. (due to how movement code handles base velocity)  
--- @param velocity Vector @The new velocity to set.
function Entity:SetVelocity(velocity)
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
--- Returns the amount of skins the entity has.  
--- @return number @The amount of skins the entity's model has.
function Entity:SkinCount()
end

---  client
--- Moves the model instance from the source entity to this entity. This can be used to transfer decals that have been applied on one entity to another.  
--- Both entities must have the same model.  
--- @param srcEntity Entity @Entity to move the model instance from.
--- @return boolean @Whether the operation was successful or not
function Entity:SnatchModelInstance(srcEntity)
end

---  client|server
--- Initializes the entity and starts its networking. If called on a player, it will respawn them.  
--- This calls ENTITY:Initialize on Lua-defined entities.  
function Entity:Spawn()
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
--- Starts a motion controller in the physics engine tied to this entity's PhysObj, which enables the use of ENTITY:PhysicsSimulate.  
--- The motion controller can later be destroyed via Entity:StopMotionController.  
--- Motion controllers are used internally to control other Entities' PhysObjects, such as the Gravity Gun, +use pickup and the Physics Gun.  
--- This function should be called every time you recreate the Entity's PhysObj. Or alternatively you should call Entity:AddToMotionController on the new PhysObj.  
--- Also see Entity:AddToMotionController and Entity:RemoveFromMotionController.  
--- ℹ **NOTE**: Only works on a scripted Entity of anim type.  
function Entity:StartMotionController()
end

---  client
--- Stops all particle effects parented to the entity and immediately destroys them.  
function Entity:StopAndDestroyParticles()
end

---  client|server
--- Stops a sound created by Entity:StartLoopingSound.  
--- @param id number @The sound ID returned by Entity:StartLoopingSound
function Entity:StopLoopingSound(id)
end

---  client|server
--- Stops the motion controller created with Entity:StartMotionController.  
function Entity:StopMotionController()
end

---  client
--- Stops all particle effects parented to the entity.  
--- This is ran automatically on every client by Entity:StopParticles if called on the server.  
function Entity:StopParticleEmission()
end

---  client|server
--- Stops any attached to the entity .pcf particles using Global.ParticleEffectAttach or Global.ParticleEffect.  
--- On client, this is the same as Entity:StopParticleEmission. ( and you should use StopParticleEmission instead )  
--- On server, this is the same as running Entity:StopParticleEmission on every client.  
function Entity:StopParticles()
end

---  client
--- Stops all particle effects parented to the entity with given name.  
--- @param name string @The name of the particle to stop.
function Entity:StopParticlesNamed(name)
end

---  client
--- Stops all particle effects parented to the entity with given name on given attachment.  
--- @param name string @The name of the particle to stop.
--- @param attachment number @The attachment of the entity to stop particles on.
function Entity:StopParticlesWithNameAndAttachment(name, attachment)
end

---  client|server
--- Stops emitting the given sound from the entity, especially useful for looping sounds.  
--- @param sound string @The name of the sound script or the filepath to stop playback of.
function Entity:StopSound(sound)
end

---  server
--- Applies the specified amount of damage to the entity with DMG_GENERIC flag.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- ⚠ **WARNING**: This function does not seem to do any damage if you apply it to a player who is driving a prop_vehicle_jeep or prop_vehicle_jeep_old vehicle. You need to call it on the vehicle instead.  
--- @param damageAmount number @The amount of damage to be applied.
--- @param attacker Entity @The entity that initiated the attack that caused the damage.
--- @param inflictor Entity @The entity that applied the damage, eg
function Entity:TakeDamage(damageAmount, attacker, inflictor)
end

---  server
--- Applies the damage specified by the damage info to the entity.  
--- ⚠ **WARNING**: Calling this function on the victim entity in ENTITY:OnTakeDamage can cause infinite loops.  
--- ⚠ **WARNING**: This function does not seem to do any damage if you apply it to a player who is driving a prop_vehicle_jeep or prop_vehicle_jeep_old vehicle. You need to call it on the vehicle instead.  
--- @param damageInfo CTakeDamageInfo @The damage to apply.
function Entity:TakeDamageInfo(damageInfo)
end

---  server
--- Applies forces to our physics object in response to damage.  
--- @param dmginfo CTakeDamageInfo @The damageinfo to apply
function Entity:TakePhysicsDamage(dmginfo)
end

---  server
--- Check if the given position or entity is within this entity's PVS.  
--- See also Entity:IsDormant.  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param testPoint any @Entity or Vector to test against
--- @return boolean @True if the testPoint is within our PVS.
function Entity:TestPVS(testPoint)
end

---  client|server
--- Returns the ID of a PhysObj attached to the given bone. To be used with Entity:GetPhysicsObjectNum.  
--- See Entity:TranslatePhysBoneToBone for reverse function.  
--- @param boneID number @The ID of a bone to look up the "physics root" bone of.
--- @return number @The PhysObj ID of the given bone
function Entity:TranslateBoneToPhysBone(boneID)
end

---  client|server
--- Returns the boneID of the bone the given PhysObj is attached to.  
--- See Entity:TranslateBoneToPhysBone for reverse function.  
--- @param physNum number @The PhysObj number on the entity
--- @return number @The boneID of the bone the PhysObj is attached to.
function Entity:TranslatePhysBoneToBone(physNum)
end

---  server
--- Updates positions of bone followers created by Entity:CreateBoneFollowers.  
--- This should be called every tick.  
--- ℹ **NOTE**: This function only works on `anim` type entities.  
function Entity:UpdateBoneFollowers()
end

---  server
--- Simulates a `+use` action on an entity.  
--- @param activator Entity @The entity that caused this input
--- @param caller? Entity @The entity responsible for the input
--- @param useType? number @Use type, see Enums/USE.
--- @param value? number @Any value.
function Entity:Use(activator, caller, useType, value)
end

---  client|server
--- ℹ **NOTE**: Does nothing on server.  
--- Animations will be handled purely clientside instead of a fixed animtime, enabling interpolation. This does not affect layers and gestures.  
function Entity:UseClientSideAnimation()
end

---  client|server
--- Enables or disables trigger bounds.  
--- This will give the entity a "trigger box" that extends around its bounding box by boundSize units in X/Y and (boundSize / 2) in +Z (-Z remains the same).  
--- The trigger box is world aligned and will work regardless of the object's solidity and collision group.  
--- Valve use trigger boxes for all pickup items. Their bloat size is 24, a surprisingly large figure.  
--- ℹ **NOTE**: The trigger boxes can be made visible as a light blue box by using the **ent_bbox** console command while looking at the entity. Alternatively a classname or entity index can be used as the first argument.  
--- This requires **developer** to be set to **1**.  
--- @param enable boolean @Enable or disable the bounds.
--- @param boundSize? number @The distance/size of the trigger bounds.
function Entity:UseTriggerBounds(enable, boundSize)
end

---  client|server
--- Returns the index of this view model, it can be used to identify which one of the player's view models this entity is.  
--- @return number @View model index, ranges from 0 to 2, nil if the entity is not a view model
function Entity:ViewModelIndex()
end

---  server
--- Returns whether the target/given entity is visible from the this entity.  
--- This is meant to be used only with NPCs.  
--- Differences from a simple trace include:  
--- * If target has **FL_NOTARGET**, returns false  
--- * If **ai_ignoreplayers** is turned on and target is a player, returns false  
--- * Reacts to **ai_LOS_mode**:  
--- * * If 1, does a simple trace with **COLLISION_GROUP_NONE** and **MASK_BLOCKLOS**  
--- * * If not, does a trace with **MASK_BLOCKLOS_AND_NPCS** ( - **CONTENTS_BLOCKLOS** is target is player ) and a custom LOS filter ( **CTraceFilterLOS** )  
--- * Returns true if hits a vehicle the target is driving  
--- @param target Entity @Entity to check for visibility to.
--- @return boolean @If the entities can see each other.
function Entity:Visible(target)
end

---  server
--- Returns true if supplied vector is visible from the entity's line of sight.  
--- This is achieved similarly to a trace.  
--- @param pos Vector @The position to check for visibility
--- @return boolean @Within line of sight
function Entity:VisibleVec(pos)
end

---  client|server
--- Returns an integer that represents how deep in water the entity is.  
--- ℹ **NOTE**: This function will currently work on players only due to the way it is implemented in the engine. If you need to check interaction with water for regular entities you better use util.PointContents.  
--- * **0** - The entity isn't in water.  
--- * **1** - Slightly submerged (at least to the feet).  
--- * **2** - The majority of the entity is submerged (at least to the waist).  
--- * **3** - Completely submerged.  
--- @return number @The water level.
function Entity:WaterLevel()
end

---  client|server
--- Sets the activity of the entity's active weapon.  
--- ℹ **NOTE**: This does nothing on the client.  
--- ℹ **NOTE**: Only works for CBaseCombatCharacter entities, which includes players and NPCs.  
--- @param act number @Activity number
--- @param duration number @How long the animation should take in seconds.
function Entity:Weapon_SetActivity(act, duration)
end

---  client|server
--- Calls and returns WEAPON:TranslateActivity on the weapon the entity ( player or NPC ) carries.  
--- Despite existing on client, it doesn't actually do anything on client.  
--- @param act number @The activity to translate
--- @return number @The translated activity
function Entity:Weapon_TranslateActivity(act)
end

---  client|server
--- Returns two vectors representing the minimum and maximum extent of the entity's axis-aligned bounding box (which is calculated from entity's collision bounds.  
--- @return Vector @The minimum vector for the entity's bounding box in world space.
--- @return Vector @The maximum vector for the entity's bounding box in world space.
function Entity:WorldSpaceAABB()
end

---  client|server
--- Returns the center of the entity according to its collision model.  
--- @return Vector @The center of the entity
function Entity:WorldSpaceCenter()
end

---  client|server
--- Converts a worldspace vector into a vector local to an entity  
--- @param wpos Vector @The world vector
--- @return Vector @The local vector
function Entity:WorldToLocal(wpos)
end

---  client|server
--- Converts world angles to local angles ( local to the entity )  
--- @param ang Angle @The world angles
--- @return Angle @The local angles
function Entity:WorldToLocalAngles(ang)
end

