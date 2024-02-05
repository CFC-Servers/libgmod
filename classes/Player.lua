--- This is a list of all methods only available for players. It is also possible to call Entity functions on the Player.  
--- @class Player : Entity
local Player = {}
---  client|server
--- Returns the player's AccountID part of their full SteamID.  
--- Since this does not include other vital parts of the SteamID such as "Account Type" and "Account Instance", it should be avoided, as AccountIDs are finite, and can theoretically be the same for multiple valid accounts.  
--- See Player:SteamID for the text representation of the full SteamID.  
--- See Player:SteamID64 for a 64bit representation of the full SteamID.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `-1` for all "copies" of a player because they are not authenticated with Steam.  
--- For bots this will return values starting with `0` for the first bot, `1` for the second bot and so on.  
--- @return number @The AccountID of Player's SteamID.
function Player:AccountID()
end

---  client|server
--- Adds an entity to the player's clean up list.  
--- @param type string @Cleanup type
--- @param ent Entity @Entity to add
function Player:AddCleanup(type, ent)
end

---  client|server
--- ℹ **NOTE**: See [GetCount](/gmod/Player:GetCount) for list of types  
--- Adds an entity to the total count of entities of same type.  
--- @param str string @Entity type
--- @param ent Entity @Entity
function Player:AddCount(str, ent)
end

---  server
--- Add a certain amount to the player's death count  
--- @param count number @number of deaths to add
function Player:AddDeaths(count)
end

---  server
--- Add a certain amount to the player's frag count (or kills count)  
--- @param count number @number of frags to add
function Player:AddFrags(count)
end

---  server
--- Adds a entity to the player's list of frozen objects.  
--- @param ent Entity @Entity
--- @param physobj PhysObj @Physics object belonging to ent
function Player:AddFrozenPhysicsObject(ent, physobj)
end

---  client
--- Sets up the voting system for the player.  
--- This is a really barebone system. By calling this a vote gets started, when the player presses 0-9 the callback function gets called along with the key the player pressed. Use the draw callback to draw the vote panel.  
--- @param name string @Name of the vote
--- @param timeout number @Time until the vote expires
--- @param vote_callback function @The function to be run when the player presses 0-9 while a vote is active.
--- @param draw_callback function @Used to draw the vote panel.
function Player:AddPlayerOption(name, timeout, vote_callback, draw_callback)
end

---  client|server
--- Plays a sequence directly from a sequence number, similar to Player:AnimRestartGesture. This function has the advantage to play sequences that haven't been bound to an existing Enums/ACT  
--- @param slot number @Gesture slot using Enums/GESTURE_SLOT
--- @param sequenceId number @The sequence ID to play, can be retrieved with Entity:LookupSequence.
--- @param cycle number @The cycle to start the animation at, ranges from 0 to 1.
--- @param autokill? boolean @If the animation should not loop
function Player:AddVCDSequenceToGestureSlot(slot, sequenceId, cycle, autokill)
end

---  client|server
--- Checks if the player is alive.  
--- @return boolean @Whether the player is alive
function Player:Alive()
end

---  client|server
--- Sets if the player can toggle their flashlight. Function exists on both the server and client but has no effect when ran on the client.  
--- @param canFlashlight boolean @True allows flashlight toggling
function Player:AllowFlashlight(canFlashlight)
end

---  server
--- Lets the player spray their decal without delay  
--- @param allow boolean @Allow or disallow
function Player:AllowImmediateDecalPainting(allow)
end

---  client|server
--- Resets player gesture in selected slot.  
--- @param slot number @Slot to reset
function Player:AnimResetGestureSlot(slot)
end

---  client|server
--- Restart a gesture on a player, within a gesture slot.  
--- ⚠ **WARNING**: This is not automatically networked. This function has to be called on the client to be seen by said client.  
--- @param slot number @Gesture slot using Enums/GESTURE_SLOT
--- @param activity number @The activity ( see Enums/ACT ) or sequence that should be played
--- @param autokill? boolean @Whether the animation should be automatically stopped
function Player:AnimRestartGesture(slot, activity, autokill)
end

---  client|server
--- Restarts the main animation on the player, has the same effect as calling Entity:SetCycle( 0 ).  
function Player:AnimRestartMainSequence()
end

---  client|server
--- Sets the sequence of the animation playing in the given gesture slot.  
--- @param slot number @The gesture slot
--- @param sequenceID number @Sequence ID to set.
function Player:AnimSetGestureSequence(slot, sequenceID)
end

---  client|server
--- Sets the weight of the animation playing in the given gesture slot.  
--- @param slot number @The gesture slot
--- @param weight number @The weight this slot should be set to
function Player:AnimSetGestureWeight(slot, weight)
end

---  client|server
--- Returns the player's armor.  
--- @return number @The player's armor.
function Player:Armor()
end

---  server
--- Bans the player from the server for a certain amount of minutes.  
--- @param minutes number @Duration of the ban in minutes (0 is permanent)
--- @param kick? boolean @Whether to kick the player after banning them or not
function Player:Ban(minutes, kick)
end

---  client|server
--- Returns true if the player's flashlight hasn't been disabled by Player:AllowFlashlight.  
--- ℹ **NOTE**: This is not synchronized between clients and server automatically!  
--- @return boolean @Whether the player can use flashlight.
function Player:CanUseFlashlight()
end

---  client|server
--- Prints a string to the chatbox of the client.  
--- ⚠ **WARNING**: Just like the usermessage, this function is affected by the 255 byte limit!  
--- @param message string @String to be printed
function Player:ChatPrint(message)
end

---  client|server
--- Checks if the limit is hit or not. If it is, it will throw a notification saying so.  
--- @param limitType string @Limit type
--- @return boolean @Returns true if limit is not hit, false if it is hit
function Player:CheckLimit(limitType)
end

---  client|server
--- Runs the concommand on the player. This does not work on bots. If used clientside, always runs the command on the local player.  
--- If you wish to directly modify the movement input of bots, use GM:StartCommand instead.  
--- ℹ **NOTE**: Some commands/convars are blocked from being ran/changed using this function, usually to prevent harm/annoyance to clients. For a list of blocked commands, see Blocked ConCommands.  
--- @param command string @command to run
function Player:ConCommand(command)
end

---  server
--- Creates the player's death ragdoll entity and deletes the old one.  
--- This is normally used when a player dies, to create their death ragdoll.  
--- The ragdoll will be created with the player's properties such as Position, Angles, PlayerColor, Velocity and Model.  
--- You can retrieve the entity this creates with Player:GetRagdollEntity.  
function Player:CreateRagdoll()
end

---  server
--- Disables the default player's crosshair. Can be reenabled with Player:CrosshairEnable. This will affect WEAPON:DoDrawCrosshair.  
function Player:CrosshairDisable()
end

---  server
--- Enables the player's crosshair, if it was previously disabled via Player:CrosshairDisable.  
function Player:CrosshairEnable()
end

---  client|server
--- Returns whether the player is crouching or not (FL_DUCKING flag).  
--- @return boolean @Whether the player is crouching.
function Player:Crouching()
end

---  client|server
--- Returns the player's death count  
--- @return number @The number of deaths the player has had.
function Player:Deaths()
end

---  server
--- Prints the players' name and position to the console.  
function Player:DebugInfo()
end

---  server
--- Detonates all tripmines belonging to the player.  
function Player:DetonateTripmines()
end

---  server
--- Disables world clicking for given player. See Panel:SetWorldClicker and Player:IsWorldClickingDisabled.  
--- @param disable boolean @Whether the world clicking should be disabled.
function Player:DisableWorldClicking(disable)
end

---  client|server
--- Sends a third person animation event to the player.  
--- Calls GM:DoAnimationEvent with PLAYERANIMEVENT_CUSTOM_GESTURE as the event, data as the given data.  
--- @param data number @The data to send.
function Player:DoAnimationEvent(data)
end

---  client|server
--- Starts the player's attack animation. The attack animation is determined by the weapon's HoldType.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_ATTACK_PRIMARY as the event and no extra data.  
function Player:DoAttackEvent()
end

---  client|server
--- Sends a specified third person animation event to the player.  
--- Calls GM:DoAnimationEvent with specified arguments.  
--- @param event number @The event to send
--- @param data number @The data to send alongside the event.
function Player:DoCustomAnimEvent(event, data)
end

---  client|server
--- Sends a third person reload animation event to the player.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_RELOAD as the event and no extra data.  
function Player:DoReloadEvent()
end

---  client|server
--- Sends a third person secondary fire animation event to the player.  
--- Similar to other animation event functions, calls GM:DoAnimationEvent with PLAYERANIMEVENT_ATTACK_SECONDARY as the event and no extra data.  
function Player:DoSecondaryAttack()
end

---  client|server
--- Show/Hide the player's weapon's viewmodel.  
--- @param draw boolean @Should draw
--- @param vm? number @Which view model to show/hide, 0-2.
function Player:DrawViewModel(draw, vm)
end

---  server
--- Show/Hide the player's weapon's worldmodel.  
--- @param draw boolean @Should draw
function Player:DrawWorldModel(draw)
end

---  server
--- Drops the players' weapon of a specific class.  
--- @param class string @The class to drop.
--- @param target? Vector @If set, launches the weapon at given position
--- @param velocity? Vector @If set and previous argument is unset, launches the weapon with given velocity
function Player:DropNamedWeapon(class, target, velocity)
end

---  server
--- Drops any object the player is currently holding with either gravitygun or +Use (E key)  
function Player:DropObject()
end

---  server
--- Forces the player to drop the specified weapon  
--- @param weapon? Weapon @Weapon to be dropped
--- @param target? Vector @If set, launches the weapon at given position
--- @param velocity? Vector @If set and previous argument is unset, launches the weapon with given velocity
function Player:DropWeapon(weapon, target, velocity)
end

---  server
--- Force puts the player into a specified vehicle.  
--- This bypasses GM:CanPlayerEnterVehicle.  
--- @param vehicle Vehicle @Vehicle the player will enter
function Player:EnterVehicle(vehicle)
end

---  server
--- Equips the player with the HEV suit.  
--- Allows the player to zoom, walk slowly, sprint, pickup armor batteries, use the health and armor stations and also shows the HUD.  
--- The player also emits a flatline sound on death, which can be overridden with GM:PlayerDeathSound.  
--- The player is automatically equipped with the suit on spawn, if you wish to stop that, use Player:RemoveSuit.  
function Player:EquipSuit()
end

---  server
--- Forces the player to exit the vehicle if they're in one.  
--- This bypasses GM:CanExitVehicle.  
function Player:ExitVehicle()
end

---  server
--- Enables/Disables the player's flashlight.Player:CanUseFlashlight must be true in order for the player's flashlight to be changed.  
--- @param isOn boolean @Turns the flashlight on/off
function Player:Flashlight(isOn)
end

---  client|server
--- Returns true if the player's flashlight is on.  
--- @return boolean @Whether the player's flashlight is on.
function Player:FlashlightIsOn()
end

---  client|server
--- Returns the amount of frags a player has.  
--- ℹ **NOTE**: The value will change depending on the player's kill or suicide: +1 for a kill, -1 for a suicide.   
--- @return number @frags
function Player:Frags()
end

---  server
--- Freeze the player. Frozen players cannot move, look around, or attack. Key bindings are still called. Similar to Player:Lock but the player can still take damage.  
--- Adds or removes the FL_FROZEN flag from the player.  
--- 🦟 **BUG**: Frozen bots will still be able to look around.  
--- @param frozen? boolean @Whether the player should be frozen.
function Player:Freeze(frozen)
end

---  client|server
--- Returns the player's active weapon.  
--- If used on a Global.LocalPlayer() and the player is spectating another player with `OBS_MODE_IN_EYE`, the weapon returned will be of the spectated player.  
--- @return Weapon @The weapon the player currently has equipped or NULL if the player doesn't have an active weapon eg
function Player:GetActiveWeapon()
end

---  server
--- Returns the player's current activity.  
--- @return number @The player's current activity
function Player:GetActivity()
end

---  client|server
--- Returns the direction that the player is aiming.  
--- @return Vector @The direction vector of players aim
function Player:GetAimVector()
end

---  client|server
--- Returns true if the players' model is allowed to rotate around the pitch and roll axis.  
--- @return boolean @Allowed
function Player:GetAllowFullRotation()
end

---  client|server
--- Returns whether the player is allowed to use their weapons in a vehicle or not.  
--- @return boolean @Whether the player is allowed to use their weapons in a vehicle or not.
function Player:GetAllowWeaponsInVehicle()
end

---  client|server
--- Returns a table of all ammo the player has.  
--- @return table @A table with the following format
function Player:GetAmmo()
end

---  client|server
--- Gets the amount of ammo the player has.  
--- @param ammotype any @The ammunition type
--- @return number @The amount of ammo player has in reserve.
function Player:GetAmmoCount(ammotype)
end

---  client|server
--- Gets if the player will be pushed out of nocollided players.  
--- @return boolean @pushed
function Player:GetAvoidPlayers()
end

---  client|server
--- Returns true if the player is able to walk using the (default) alt key.  
--- @return boolean @AbleToWalk
function Player:GetCanWalk()
end

---  client|server
--- Determines whenever the player is allowed to use the zoom functionality.  
--- @return boolean @canZoom
function Player:GetCanZoom()
end

---  client|server
--- Returns the player's class id.  
--- @return number @The player's class id.
function Player:GetClassID()
end

---  client|server
--- Gets total count of entities of same type.  
--- Default types:  
--- ```  
--- balloons  
--- buttons  
--- cameras  
--- dynamite  
--- emitters  
--- hoverballs  
--- lamps  
--- lights  
--- props  
--- ragdolls  
--- thrusters  
--- wheels  
--- ```  
--- @param type string @Type to get entity count of.
--- @param minus? number @If specified, it will reduce the counter by this value
--- @return number @The returned count.
function Player:GetCount(type, minus)
end

---  client|server
--- Returns the crouched walk speed multiplier.  
--- See also Player:GetWalkSpeed and Player:SetCrouchedWalkSpeed.  
--- @return number @The crouched walk speed multiplier.
function Player:GetCrouchedWalkSpeed()
end

---  client|server
--- Returns the last command which was sent by the specified player. This can only be called on the player which Global.GetPredictionPlayer() returns.  
--- ℹ **NOTE**: When called clientside in singleplayer during WEAPON:Think, it will return nothing as the hook is not technically predicted in that instance. See the note on the page.  
--- 🦟 **BUG**: [This will fail in GM:StartCommand.](https://github.com/Facepunch/garrysmod-issues/issues/3302)  
--- @return CUserCmd @Last user commands
function Player:GetCurrentCommand()
end

---  client|server
--- Gets the **actual** view offset which equals the difference between the players actual position and their view when standing.  
--- Do not confuse with Player:GetViewOffset and Player:GetViewOffsetDucked  
--- @return Vector @The actual view offset.
function Player:GetCurrentViewOffset()
end

---  client|server
--- Gets the entity the player is currently driving via the drive library.  
--- @return Entity @The currently driven entity, or NULL entity
function Player:GetDrivingEntity()
end

---  client|server
--- Returns driving mode of the player. See Entity Driving.  
--- @return number @The drive mode ID or 0 if player doesn't use the drive system.
function Player:GetDrivingMode()
end

---  client|server
--- Returns a player's duck speed (in seconds)  
--- @return number @duckspeed
function Player:GetDuckSpeed()
end

---  client|server
--- Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups.  
--- @return Entity @Entity in use, or NULL entity otherwise
function Player:GetEntityInUse()
end

---  client|server
--- Returns a table with information of what the player is looking at.  
--- The results of this function are **cached** clientside every frame.  
--- Uses util.GetPlayerTrace internally and is therefore bound by its limits.  
--- See also Player:GetEyeTraceNoCursor.  
--- @return table @Trace information, see Structures/TraceResult.
function Player:GetEyeTrace()
end

---  client|server
--- Returns the trace according to the players view direction, ignoring their mouse (holding `C` and moving the mouse in Sandbox).  
--- The results of this function are **cached** clientside every frame.  
--- Uses util.GetPlayerTrace internally and is therefore bound by its limits.  
--- See also Player:GetEyeTrace.  
--- @return table @Trace result
function Player:GetEyeTraceNoCursor()
end

---  client|server
--- Returns the FOV of the player.  
--- @return number @Field of view as a float
function Player:GetFOV()
end

---  client
--- Returns the steam "relationship" towards the player.  
--- @return string @Should return one of four different things depending on their status on your friends list: "friend", "blocked", "none" or "requested".
function Player:GetFriendStatus()
end

---  client|server
--- Gets the hands entity of a player  
--- @return Entity @The hands entity if players has one
function Player:GetHands()
end

---  client|server
--- Returns the widget the player is hovering with their mouse.  
--- @return Entity @The hovered widget.
function Player:GetHoveredWidget()
end

---  client|server
--- Gets the bottom base and the top base size of the player's hull.  
--- @return Vector @Player's hull bottom base size.
--- @return Vector @Player's hull top base size.
function Player:GetHull()
end

---  client|server
--- Gets the bottom base and the top base size of the player's crouch hull.  
--- @return Vector @Player's crouch hull bottom base size.
--- @return Vector @Player's crouch hull top base size.
function Player:GetHullDuck()
end

---  client|server
--- Retrieves the value of a client-side ConVar. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- ⚠ **WARNING**: The returned value is truncated to 31 bytes.  
--- ⚠ **WARNING**: On client this function will return value of the local player, regardless of which player the function was called on!  
--- @param cVarName string @The name of the client-side ConVar.
--- @return string @The value of the ConVar.
function Player:GetInfo(cVarName)
end

---  client|server
--- Retrieves the numeric value of a client-side convar, returns nil if value is not convertible to a number. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- @param cVarName string @The name of the ConVar to query the value of
--- @param default number @Default value if we failed to retrieve the number.
--- @return number @The value of the ConVar or the default value
function Player:GetInfoNum(cVarName, default)
end

---  client|server
--- Returns the jump power of the player  
--- @return number @Jump power
function Player:GetJumpPower()
end

---  client|server
--- Returns the player's ladder climbing speed.  
--- See Player:GetWalkSpeed for normal walking speed, Player:GetRunSpeed for sprinting speed and Player:GetSlowWalkSpeed for slow walking speed.  
--- @return number @The ladder climbing speed.
function Player:GetLadderClimbSpeed()
end

---  client|server
--- Returns the timescale multiplier of the player movement.  
--- @return number @The timescale multiplier, defaults to `1`.
function Player:GetLaggedMovementValue()
end

---  client|server
--- Returns the maximum amount of armor the player should have. Default value is 100.  
--- @return number @The new max armor value
function Player:GetMaxArmor()
end

---  client|server
--- Returns the player's maximum movement speed.  
--- See also Player:SetMaxSpeed, Player:GetWalkSpeed and Player:GetRunSpeed.  
--- @return number @The maximum movement speed the player can go at.
function Player:GetMaxSpeed()
end

---  client|server
--- Returns the player's name, this is an alias of Player:Nick.  
--- ℹ **NOTE**: This function overrides Entity:GetName (in the Lua metatable, not in c++), keep it in mind when dealing with ents.FindByName or any engine function which requires the mapping name.  
--- @return string @The player's name.
function Player:GetName()
end

---  client|server
--- Returns whenever the player is set not to collide with their teammates.  
--- @return boolean @noCollideWithTeammates
function Player:GetNoCollideWithTeammates()
end

---  client|server
--- Returns the the observer mode of the player  
--- @return number @Observe mode of that player, see Enums/OBS_MODE.
function Player:GetObserverMode()
end

---  client|server
--- Returns the entity the player is currently observing.  
--- Set using Player:SpectateEntity.  
--- @return Entity @The entity the player is currently spectating, or NULL if the player has no target.
function Player:GetObserverTarget()
end

---  client|server
--- Returns a **P**ersistent **Data** key-value pair from the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.GetPData for cases when the player is not currently on the server.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- ℹ **NOTE**: PData is not networked from servers to clients!  
--- @param key string @Name of the PData key
--- @param default? any @Default value if PData key doesn't exist.
--- @return string @The data in the SQL database or the default value given.
function Player:GetPData(key, default)
end

---  client|server
--- Returns a player model's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- @return Vector @The format is `Vector(r,g,b)`, and each color component should be between 0 and 1.
function Player:GetPlayerColor()
end

---  client|server
--- Returns a table containing player information.  
--- @return table @A table containing player information.
function Player:GetPlayerInfo()
end

---  server
--- Returns the preferred carry angles of an object, if any are set.  
--- Calls GM:GetPreferredCarryAngles with the target entity and returns the carry angles.  
--- @param carryEnt Entity @Entity to retrieve the carry angles of.
--- @return Angle @Carry angles or nil if the entity has no preferred carry angles.
function Player:GetPreferredCarryAngles(carryEnt)
end

---  client|server
--- Returns the widget entity the player is using.  
--- Having a pressed widget stops the player from firing their weapon to allow input to be passed onto the widget.  
--- @return Entity @The pressed widget.
function Player:GetPressedWidget()
end

---  client|server
--- Returns the weapon the player previously had equipped.  
--- @return Entity @The previous weapon of the player
function Player:GetPreviousWeapon()
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Player:GetViewPunchAngles instead.  
--- Returns players screen punch effect angle. See Player:ViewPunch and Player:SetViewPunchAngles  
--- @deprecated
--- @return Angle @The punch angle
function Player:GetPunchAngle()
end

---  client|server
--- Returns players death ragdoll. The ragdoll is created by Player:CreateRagdoll.  
--- 🦟 **BUG**: Calling Entity:GetPos server-side with this function then will return the position when Player:CreateRagdoll was used.  
--- @return Entity @The ragdoll
function Player:GetRagdollEntity()
end

---  client|server
--- Returns the render angles for the player.  
--- @return Angle @The render angles of the player
function Player:GetRenderAngles()
end

---  client|server
--- Returns the player's sprint speed.  
--- See also Player:SetRunSpeed, Player:GetWalkSpeed and Player:GetMaxSpeed.  
--- @return number @The sprint speed
function Player:GetRunSpeed()
end

---  client|server
--- Returns the position of a Player's view  
--- ℹ **NOTE**: This is the same as calling Entity:EyePos on the player.  
--- @return Vector @The position of the player's view.
function Player:GetShootPos()
end

---  client|server
--- Returns the player's slow walking speed, which is activated via `+WALK` keybind.  
--- See Player:GetWalkSpeed for normal walking speed, Player:GetRunSpeed for sprinting speed and Player:GetLadderClimbSpeed for ladder climb speed.  
--- @return number @The new slow walking speed.
function Player:GetSlowWalkSpeed()
end

---  client|server
--- Returns the maximum height player can step onto.  
--- @return number @The maximum height player can get up onto without jumping, in hammer units.
function Player:GetStepSize()
end

---  client|server
--- Returns the player's HEV suit power.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return number @The current suit power.
function Player:GetSuitPower()
end

---  server
--- Returns the number of seconds that the player has been timing out for. You can check if a player is timing out with Player:IsTimingOut.  
--- ℹ **NOTE**: This function is relatively useless because it is tied to the value of the `sv_timeout` ConVar, which is irrelevant to the description above. [This is not considered as a bug](https://discord.com/channels/565105920414318602/567617926991970306/748970396224585738).  
--- @return number @Timeout seconds.
function Player:GetTimeoutSeconds()
end

---  client|server
--- Returns TOOL table of players current tool, or of the one specified.  
--- @param mode? string @Classname of the tool to retrieve
--- @return table @TOOL table, or nil if the table wasn't found or the player doesn't have a tool gun.
function Player:GetTool(mode)
end

---  client|server
--- Returns a player's unduck speed (in seconds)  
--- @return number @unduck speed
function Player:GetUnDuckSpeed()
end

---  client|server
--- Returns the entity the player would use if they would press their `+use` keybind.  
--- <note issue="5027">Because entity physics objects usually do not exist on the client, the client's use entity will resolve to whatever the crosshair is placed on within a little less than 72 units of the player's eye position. This differs from the entity returned by the server, which has fully physical use checking. See util.TraceHull.  
--- Issue tracker: [5027](https://github.com/Facepunch/garrysmod-issues/issues/5027)</note>  
--- @return Entity @The entity that would be used or NULL.
function Player:GetUseEntity()
end

---  client|server
--- Returns the player's user group. By default, player user groups are loaded from `garrysmod/settings/users.txt`.  
--- @return string @The user group of the player
function Player:GetUserGroup()
end

---  client|server
--- Gets the vehicle the player is driving, returns NULL ENTITY if the player is not driving.  
--- @return Vehicle @vehicle
function Player:GetVehicle()
end

---  client|server
--- Returns the entity the player is using to see from (such as the player itself, the camera, or another entity).  
--- ℹ **NOTE**: This function will return a [NULL Entity] until Player:SetViewEntity has been used  
--- @return Entity @The entity the player is using to see from
function Player:GetViewEntity()
end

---  client|server
--- Returns the player's view model entity by the index.  
--- Each player has 3 view models by default, but only the first one is used.  
--- To use the other viewmodels in your SWEP, see Entity:SetWeaponModel.  
--- ℹ **NOTE**: In the Client realm, other players' viewmodels are not available unless they are being spectated.  
--- @param index? number @optional index of the view model to return, can range from 0 to 2
--- @return Entity @The view model entity
function Player:GetViewModel(index)
end

---  client|server
--- Returns the view offset of the player which equals the difference between the players actual position and their view.  
--- See also Player:GetViewOffsetDucked.  
--- @return Vector @New view offset, must be local vector to players Entity:GetPos
function Player:GetViewOffset()
end

---  client|server
--- Returns the view offset of the player which equals the difference between the players actual position and their view when ducked.  
--- See also Player:GetViewOffset.  
--- @return Vector @New crouching view offset, must be local vector to players Entity:GetPos
function Player:GetViewOffsetDucked()
end

---  client|server
--- Returns players screen punch effect angle.  
--- @return Angle @The punch angle
function Player:GetViewPunchAngles()
end

---  client|server
--- Returns client's view punch velocity. See Player:ViewPunch and Player:SetViewPunchVelocity  
--- @return Angle @The current view punch angle velocity.
function Player:GetViewPunchVelocity()
end

---  client
--- Returns the current voice volume scale for given player on client.  
--- @return number @The voice volume scale, where 0 is 0% and 1 is 100%.
function Player:GetVoiceVolumeScale()
end

---  client|server
--- Returns the player's normal walking speed. Not sprinting, not slow walking. (+walk)  
--- See also Player:SetWalkSpeed, Player:GetMaxSpeed and Player:GetRunSpeed.  
--- @return number @The normal walking speed.
function Player:GetWalkSpeed()
end

---  client|server
--- Returns the weapon for the specified class  
--- @param className string @Class name of weapon
--- @return Weapon @The weapon for the specified class.
function Player:GetWeapon(className)
end

---  client|server
--- Returns a player's weapon color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1.  
--- @return Vector @color
function Player:GetWeaponColor()
end

---  client|server
--- Returns a table of the player's weapons.  
--- ℹ **NOTE**:   
--- This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return table @All the weapons the player currently has.
function Player:GetWeapons()
end

---  server
--- Gives the player a weapon.  
--- ℹ **NOTE**: While this function is meant for weapons/pickupables only, it is **not** restricted to weapons. Any entity can be spawned using this function, including NPCs and SENTs.  
--- @param weaponClassName string @Class name of weapon to give the player
--- @param bNoAmmo? boolean @Set to true to not give any ammo on weapon spawn
--- @return Weapon @The weapon given to the player, if one was given
function Player:Give(weaponClassName, bNoAmmo)
end

---  server
--- Gives ammo to a player  
--- @param amount number @Amount of ammo
--- @param type any @Type of ammo
--- @param hidePopup? boolean @Hide display popup when giving the ammo
--- @return number @Ammo given.
function Player:GiveAmmo(amount, type, hidePopup)
end

---  server
--- Disables god mode on the player.  
function Player:GodDisable()
end

---  server
--- Enables god mode on the player.  
function Player:GodEnable()
end

---  client|server
--- Returns whether the player has god mode or not, contolled by Player:GodEnable and Player:GodDisable.  
--- @return boolean @Whether the player has god mode or not.
function Player:HasGodMode()
end

---  client|server
--- Returns if the player has the specified weapon  
--- @param className string @Class name of the weapon
--- @return boolean @True if the player has the weapon
function Player:HasWeapon(className)
end

---  server
--- Returns the player's IP address and connection port in ip:port form  
--- ℹ **NOTE**: Returns `Error!` for bots.  
--- @return string @The player's IP address and connection port
function Player:IPAddress()
end

---  client|server
--- Returns if the player is in a vehicle  
--- @return boolean @Whether the player is in a vehicle.
function Player:InVehicle()
end

---  client|server
--- Returns whether the player is an admin or not. It will also return `true` if the player is Player:IsSuperAdmin by default.  
--- Internally this is determined by Player:IsUserGroup.  
--- @return boolean @True if the player is an admin or a super admin.
function Player:IsAdmin()
end

---  client|server
--- Returns if the player is an bot or not  
--- @return boolean @True if the player is a bot.
function Player:IsBot()
end

---  server
--- Returns true from the point when the player is sending client info but not fully in the game until they disconnect.  
--- @return boolean @isConnected
function Player:IsConnected()
end

---  client|server
--- Used to find out if a player is currently 'driving' an entity (by which we mean 'right click > drive' ).  
--- @return boolean @A value representing whether or not the player is 'driving' an entity.
function Player:IsDrivingEntity()
end

---  client|server
--- Returns whether the players movement is currently frozen, controlled by Player:Freeze.  
--- @return boolean @Whether the players movement is currently frozen or not.
function Player:IsFrozen()
end

---  server
--- Returns whether the player identity was confirmed by the steam network.  
--- See also GM:PlayerAuthed.  
--- @return boolean @Whether the player has been fully authenticated or not
function Player:IsFullyAuthenticated()
end

---  client|server
--- Returns if a player is the host of the current session.  
--- @return boolean @`true` if the player is the listen server host, `false` otherwise
function Player:IsListenServerHost()
end

---  client
--- Returns whether or not the player is muted locally.  
--- @return boolean @whether or not the player is muted locally.
function Player:IsMuted()
end

---  client|server
--- Returns true if the player is playing a taunt.  
--- @return boolean @Whether the player is playing a taunt.
function Player:IsPlayingTaunt()
end

---  client|server
--- Returns whenever the player is heard by the local player clientside, or if the player is speaking serverside.  
--- @return boolean @Is the player speaking or not.
function Player:IsSpeaking()
end

---  client|server
--- Returns whether the player is currently sprinting or not, specifically if they are holding their sprint key and are allowed to sprint.  
--- This will not check if the player is currently sprinting into a wall. (i.e. holding their sprint key but not moving)  
--- @return boolean @Is the player sprinting or not
function Player:IsSprinting()
end

---  client|server
--- Returns whenever the player is equipped with the suit item.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @return boolean @Is the suit equipped or not.
function Player:IsSuitEquipped()
end

---  client|server
--- Returns whether the player is a super admin.  
--- Internally this is determined by Player:IsUserGroup. See also Player:IsAdmin.  
--- @return boolean @True if the player is a super admin.
function Player:IsSuperAdmin()
end

---  server
--- Returns `true` if the player is timing out (i.e. is losing connection), `false` otherwise.  
--- A player is considered timing out when more than 4 seconds has elapsed since a network packet was received from given player.  
--- @return boolean @Whether the player is timing out.
function Player:IsTimingOut()
end

---  client|server
--- Returns whether the player is typing in their chat.  
--- This may not work properly if the server uses a custom chatbox.  
--- @return boolean @Whether the player is typing in their chat or not.
function Player:IsTyping()
end

---  client|server
--- Returns true/false if the player is in specified group or not. See Player:GetUserGroup for a way to get player's usergroup.  
--- @param groupname string @Group to check the player for.
--- @return boolean @isInUserGroup
function Player:IsUserGroup(groupname)
end

---  client
--- Returns if the player can be heard by the local player.  
--- @return boolean @isAudible
function Player:IsVoiceAudible()
end

---  client|server
--- Returns if the player currently walking. (`+walk` keybind)  
--- @return boolean @True if the player is currently walking.
function Player:IsWalking()
end

---  client|server
--- Returns whether the player is using the world clicking feature, see Panel:SetWorldClicker  
--- @return boolean @Is the player world clicking or not.
function Player:IsWorldClicking()
end

---  client|server
--- Returns whether the world clicking is disabled for given player or not. See Player:DisableWorldClicking.  
--- @return boolean @Whether the world clicking is disabled or not.
function Player:IsWorldClickingDisabled()
end

---  client|server
--- Returns whether a key is down. This is not networked to other players, meaning only the local client can see the keys they are pressing.  
--- @param key number @The key, see Enums/IN
--- @return boolean @whether the key is down or not.
function Player:KeyDown(key)
end

---  client|server
--- Gets whether a key was down one tick ago.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Is key down ?
function Player:KeyDownLast(key)
end

---  client|server
--- Gets whether a key was just pressed this tick.  
--- @param key number @Corresponds to an Enums/IN
--- @return boolean @Was pressed or not
function Player:KeyPressed(key)
end

---  client|server
--- Gets whether a key was just released this tick.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Was released or not
function Player:KeyReleased(key)
end

---  server
--- Kicks the player from the server.  
--- ℹ **NOTE**: This can not be run before the player has fully joined in. Use game.KickID for that.  
--- @param reason? string @Reason to show for disconnection
function Player:Kick(reason)
end

---  server
--- Kills a player and calls GM:PlayerDeath.  
function Player:Kill()
end

---  server
--- Kills a player without notifying the rest of the server.  
--- This will call GM:PlayerSilentDeath instead of GM:PlayerDeath.  
function Player:KillSilent()
end

---  client|server
--- This allows the server to mitigate the lag of the player by moving back all the entities that can be lag compensated to the time the player attacked with his weapon.  
--- This technique is most commonly used on things that hit other entities instantaneously, such as traces.  
--- ℹ **NOTE**: Entity:FireBullets calls this function internally.  
--- Lag compensation only works for players and entities that have been enabled with Entity:SetLagCompensated  
--- Despite being defined shared, it can only be used server-side in a Predicted Hook.  
--- ⚠ **WARNING**: This function NEEDS to be disabled after you're done with it or it will break the movement of the entities affected!  
--- 🦟 **BUG**: [Lag compensation does not support pose parameters.](https://github.com/Facepunch/garrysmod-issues/issues/3683)  
--- @param lagCompensation boolean @The state of the lag compensation, true to enable and false to disable.
function Player:LagCompensation(lagCompensation)
end

---  server
--- Returns the hitgroup where the player was last hit.  
--- @return number @Hitgroup, see Enums/HITGROUP
function Player:LastHitGroup()
end

---  client|server
--- Shows "limit hit" notification in sandbox.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives.  
--- @param type string @Type of hit limit.
function Player:LimitHit(type)
end

---  client|server
--- Returns the direction a player is looking as a entity/local-oriented angle.  
--- Unlike Entity:EyeAngles, this function does not include angles of the Player's Entity:GetParent.  
--- @return Angle @local eye angles
function Player:LocalEyeAngles()
end

---  server
--- Stops a player from using any inputs, such as moving, turning, or attacking. Key binds are still called. Similar to Player:Freeze but the player takes no damage.  
--- Adds the FL_FROZEN and FL_GODMODE flags to the player.  
--- 🦟 **BUG**: Frozen bots will still be able to look around.  
function Player:Lock()
end

---  client|server
--- Returns the position of a Kinect bone.  
--- @param bone number @Bone to get the position of
--- @return Vector @Position of the bone.
function Player:MotionSensorPos(bone)
end

---  client|server
--- Returns the players name. Identical to Player:Nick and Player:GetName.  
--- @return string @Player's Steam name.
function Player:Name()
end

---  client|server
--- Returns the player's nickname.  
--- @return string @Player's Steam name
function Player:Nick()
end

---  server
--- Returns the 64-bit SteamID aka CommunityID of the Steam Account that owns the Garry's Mod license this player is using. This is useful for detecting players using Steam Family Sharing.  
--- If player is not using Steam Family Sharing, this will return the player's actual SteamID64().  
--- ℹ **NOTE**: This data will only be available after the player has fully authenticated with Steam. See Player:IsFullyAuthenticated.  
--- @return string @The 64bit SteamID
function Player:OwnerSteamID64()
end

---  client|server
--- Returns the packet loss of the client. It is not networked so it only returns 0 when run clientside.  
--- @return number @Packets lost
function Player:PacketLoss()
end

---  client|server
--- Unfreezes the props player is looking at. This is essentially the same as pressing reload with the physics gun, including double press for unfreeze all.  
--- @return number @Number of props unfrozen.
function Player:PhysgunUnfreeze()
end

---  server
--- This makes the player hold ( same as pressing `E` on a small prop ) the provided entity.  
--- ℹ **NOTE**: Don't get this confused with picking up items like ammo or health kits  
--- ℹ **NOTE**: This picks up the passed entity regardless of its mass or distance from the player  
--- @param entity Entity @Entity to pick up.
function Player:PickupObject(entity)
end

---  server
--- Forces the player to pickup an existing weapon entity. The player will not pick up the weapon if they already own a weapon of given type, or if the player could not normally have this weapon in their inventory.  
--- This function **will** bypass GM:PlayerCanPickupWeapon.  
--- @param wep Weapon @The weapon to try to pick up.
--- @param ammoOnly? boolean @If set to true, the player will only attempt to pick up the ammo from the weapon
--- @return boolean @Whether the player succeeded in picking up the weapon or not.
function Player:PickupWeapon(wep, ammoOnly)
end

---  client|server
--- Returns the player's ping to server.  
--- @return number @The player's ping.
function Player:Ping()
end

---  server
--- Plays the correct step sound according to what the player is staying on.  
--- @param volume number @Volume for the sound, in range from 0 to 1
function Player:PlayStepSound(volume)
end

---  client|server
--- Displays a message either in their chat, console, or center of the screen. See also Global.PrintMessage.  
--- ℹ **NOTE**: When called serverside, this uses the archaic user message system (the umsg) and hence is limited to ≈250 characters.  
--- `HUD_PRINTCENTER` will not work when this is called clientside.  
--- @param type number @Which type of message should be sent to the player (Enums/HUD).
--- @param message string @Message to be sent to the player.
function Player:PrintMessage(type, message)
end

---  server
--- Removes all ammo from a certain player  
function Player:RemoveAllAmmo()
end

---  server
--- Removes all weapons and ammo from the player.  
function Player:RemoveAllItems()
end

---  client|server
--- Removes the amount of the specified ammo from the player.  
--- @param ammoCount number @The amount of ammunition to remove.
--- @param ammoName string @The name of the ammunition to remove from
function Player:RemoveAmmo(ammoCount, ammoName)
end

---  client|server
--- Removes a **P**ersistent **Data** key-value pair from the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.RemovePData for cases when the player is not currently on the server.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param key string @Key to remove
--- @return boolean @true is succeeded, false otherwise
function Player:RemovePData(key)
end

---  server
--- Strips the player's suit item.  
function Player:RemoveSuit()
end

---  client|server
--- Resets both normal and duck hulls to their default values.  
function Player:ResetHull()
end

---  server
--- Forces the player to say whatever the first argument is. Works on bots too.  
--- ℹ **NOTE**: This function ignores the default chat message cooldown  
--- @param text string @The text to force the player to say.
--- @param teamOnly? boolean @Whether to send this message to our own team only.
function Player:Say(text, teamOnly)
end

---  client|server
--- Fades the screen  
--- @param flags number @Fade flags defined with Enums/SCREENFADE.
--- @param clr? number @The color of the screenfade
--- @param fadeTime number @Fade(in/out) effect transition time ( From no fade to full fade and vice versa )
--- @param fadeHold number @Fade effect hold time
function Player:ScreenFade(flags, clr, fadeTime, fadeHold)
end

---  server
--- Sets the active weapon of the player by its class name.  
--- ⚠ **WARNING**: This will switch the weapon out of prediction, causing delay on the client and WEAPON:Deploy and WEAPON:Holster to be called out of prediction. Try using CUserCmd:SelectWeapon or input.SelectWeapon, instead.  
--- ℹ **NOTE**: This will trigger the weapon switch event and associated animations. To switch weapons silently, use Player:SetActiveWeapon.  
--- @param className string @The class name of the weapon to switch to
function Player:SelectWeapon(className)
end

---  server
--- Sends a hint to a player.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives. Since this adds `#Hint_` to the beginning of each message, you should only use it with default hint messages, or those cached with language.Add. For hints with custom text, look at notification.AddLegacy.  
--- @param name string @Name/class/index of the hint
--- @param delay number @Delay in seconds before showing the hint
function Player:SendHint(name, delay)
end

---  server
--- Executes a simple Lua string on the player.  
--- ℹ **NOTE**: If you need to use this function more than once consider using net library. Send net message and make the entire code you want to execute in net.Receive on client.  
--- ℹ **NOTE**: The string is limited to 254 bytes. Consider using the net library for more advanced server-client interaction.  
--- @param script string @The script to execute.
function Player:SendLua(script)
end

---  server
--- Sets the player's active weapon. You should use CUserCmd:SelectWeapon or Player:SelectWeapon, instead in most cases.  
--- This function will not trigger the weapon switch events or associated equip animations. It will bypass  
--- GM:PlayerSwitchWeapon and the currently active weapon's WEAPON:Holster return value.  
--- @param weapon Weapon @The weapon to equip.
function Player:SetActiveWeapon(weapon)
end

---  server
--- Sets the player's activity.  
--- @param act number @The new activity to set
function Player:SetActivity(act)
end

---  client|server
--- Set if the players' model is allowed to rotate around the pitch and roll axis.  
--- @param Allowed boolean @Allowed to rotate
function Player:SetAllowFullRotation(Allowed)
end

---  server
--- Allows player to use their weapons in a vehicle. You need to call this before entering a vehicle.  
--- 🦟 **BUG**: [Shooting in a vehicle fires two bullets.](https://github.com/Facepunch/garrysmod-issues/issues/1277)  
--- @param allow boolean @Show we allow player to use their weapons in a vehicle or not.
function Player:SetAllowWeaponsInVehicle(allow)
end

---  client|server
--- Sets the amount of the specified ammo for the player.  
--- @param ammoCount number @The amount of ammunition to set.
--- @param ammoType any @The ammunition type
function Player:SetAmmo(ammoCount, ammoType)
end

---  server
--- Sets the player armor to the argument.  
--- @param Amount number @The amount that the player armor is going to be set to.
function Player:SetArmor(Amount)
end

---  client|server
--- Pushes the player away from another player whenever it's inside the other players bounding box.  
--- @param avoidPlayers boolean @Avoid or not avoid.
function Player:SetAvoidPlayers(avoidPlayers)
end

---  client|server
--- Set if the player should be allowed to walk using the (default) alt key.  
--- @param abletowalk boolean @True allows the player to walk.
function Player:SetCanWalk(abletowalk)
end

---  client|server
--- Sets whether the player can use the HL2 suit zoom ("+zoom" bind) or not.  
--- @param canZoom boolean @Whether to make the player able or unable to zoom.
function Player:SetCanZoom(canZoom)
end

---  client|server
--- Sets the player's class id.  
--- @param classID number @The class id the player is being set with.
function Player:SetClassID(classID)
end

---  client|server
--- Sets the crouched walk speed multiplier.  
--- Doesn't work for values above 1.  
--- See also Player:SetWalkSpeed and Player:GetCrouchedWalkSpeed.  
--- @param speed number @The walk speed multiplier that crouch speed should be.
function Player:SetCrouchedWalkSpeed(speed)
end

---  client|server
--- Sets the **actual** view offset which equals the difference between the players actual position and their view when standing.  
--- Do not confuse with Player:SetViewOffset and Player:SetViewOffsetDucked  
--- @param viewOffset Vector @The new view offset.
function Player:SetCurrentViewOffset(viewOffset)
end

---  client|server
--- Applies the specified sound filter to the player.  
--- @param soundFilter number @The index of the sound filter to apply
--- @param fastReset boolean @If set to true the sound filter will be removed faster
function Player:SetDSP(soundFilter, fastReset)
end

---  server
--- Sets a player's death count  
--- @param deathcount number @Number of deaths (positive or negative)
function Player:SetDeaths(deathcount)
end

---  client|server
--- Sets how quickly a player ducks.  
--- 🦟 **BUG**: [This will not work for values >= 1.](https://github.com/Facepunch/garrysmod-issues/issues/2722)  
--- @param duckSpeed number @How quickly the player will duck.
function Player:SetDuckSpeed(duckSpeed)
end

---  client|server
--- Sets the local angle of the player's view (may rotate body too if angular difference is large)  
--- @param angle Angle @Angle to set the view to
function Player:SetEyeAngles(angle)
end

---  client|server
--- Set a player's FOV (Field Of View) over a certain amount of time.  
--- @param fov number @the angle of perception (FOV)
--- @param time? number @the time it takes to transition to the FOV expressed in a floating point.
--- @param requester? Entity @The requester or "owner" of the zoom event
function Player:SetFOV(fov, time, requester)
end

---  server
--- Sets a player's frags (kills)  
--- @param fragcount number @Number of frags (positive or negative)
function Player:SetFrags(fragcount)
end

---  client|server
--- Sets the hands entity of a player.  
--- The hands entity is an entity introduced in Garry's Mod 13 and it's used to show the player's hands attached to the viewmodel.  
--- This is similar to the approach used in L4D and CS:GO, for more information on how to implement this system in your gamemode visit Using Viewmodel Hands.  
--- @param hands Entity @The hands entity to set
function Player:SetHands(hands)
end

---  client|server
--- Sets the widget that is currently hovered by the player's mouse.  
--- @param widget? Entity @The widget entity that the player is hovering.
function Player:SetHoveredWidget(widget)
end

---  client|server
--- Sets the mins and maxs of the AABB of the players collision.  
--- See Player:SetHullDuck for the hull while crouching/ducking.  
--- @param hullMins Vector @The min coordinates of the hull.
--- @param hullMaxs Vector @The max coordinates of the hull.
function Player:SetHull(hullMins, hullMaxs)
end

---  client|server
--- Sets the mins and maxs of the AABB of the players collision when ducked.  
--- See Player:SetHull for setting the hull while standing.  
--- @param hullMins Vector @The min coordinates of the hull.
--- @param hullMaxs Vector @The max coordinates of the hull.
function Player:SetHullDuck(hullMins, hullMaxs)
end

---  client|server
--- Sets the jump power, eg. the velocity that will be applied to the player when they jump.  
--- @param jumpPower number @The new jump velocity.
function Player:SetJumpPower(jumpPower)
end

---  client|server
--- Sets the player's ladder climbing speed.  
--- See Player:SetWalkSpeed for normal walking speed, Player:SetRunSpeed for sprinting speed and Player:SetSlowWalkSpeed for slow walking speed.  
--- @param speed number @The ladder climbing speed.
function Player:SetLadderClimbSpeed(speed)
end

---  server
--- Slows down the player movement simulation by the timescale, this is used internally in the HL2 weapon stripping sequence.  
--- It achieves such behavior by multiplying the Global.FrameTime by the specified timescale at the start of the movement simulation and then restoring it afterwards.  
--- ℹ **NOTE**: This is reset to 1 on spawn.  
--- There is no weapon counterpart to this, you'll have to hardcode the multiplier in the weapon or call Weapon:SetNextPrimaryFire / Weapon:SetNextSecondaryFire manually.  
--- @param timescale number @The timescale multiplier.
function Player:SetLaggedMovementValue(timescale)
end

---  server
--- Sets the hitgroup where the player was last hit.  
--- @param hitgroup number @The hitgroup to set as the "last hit", see Enums/HITGROUP.
function Player:SetLastHitGroup(hitgroup)
end

---  server
--- Sets the maximum amount of armor the player should have. This affects default built-in armor pickups, but not Player:SetArmor.  
--- @param maxarmor number @The new max armor value.
function Player:SetMaxArmor(maxarmor)
end

---  client|server
--- Sets the maximum speed which the player can move at.  
--- ℹ **NOTE**: This is called automatically by the engine. If you wish to limit player speed without setting their run/sprint speeds, see CMoveData:SetMaxClientSpeed.  
--- @param walkSpeed number @The maximum speed.
function Player:SetMaxSpeed(walkSpeed)
end

---  client
--- Sets if the player should be muted locally.  
--- @param mute boolean @Mute or unmute.
function Player:SetMuted(mute)
end

---  client|server
--- Sets whenever the player should not collide with their teammates, based on their Player:Team.  
--- ℹ **NOTE**: This will only work for teams with ID 1 to 4 due to internal Engine limitations.  
--- ℹ **NOTE**: This causes traces with COLLISION_GROUP_PLAYER to pass through players.  
--- @param shouldNotCollide boolean @`true` to disable, `false` to enable collision.
function Player:SetNoCollideWithTeammates(shouldNotCollide)
end

---  server
--- Sets the players visibility towards NPCs.  
--- Internally this toggles the FL_NOTARGET flag, which you can manually test for using Entity:IsFlagSet  
--- @param visibility boolean @The visibility.
function Player:SetNoTarget(visibility)
end

---  client|server
--- Sets the players observer mode. You must start the spectating first with Player:Spectate.  
--- @param mode number @Spectator mode using Enums/OBS_MODE.
function Player:SetObserverMode(mode)
end

---  client|server
--- Writes a **P**ersistent **Data** key-value pair to the SQL database. (`sv.db` when called on server, `cl.db` when called on client)  
--- Internally uses the sql library. See util.SetPData for cases when the player is not currently on the server.  
--- ℹ **NOTE**: This function internally uses Player:SteamID64, it previously utilized Player:UniqueID which can cause collisions (two or more players sharing the same PData entry). Player:SetPData now replaces all instances of Player:UniqueID with Player:SteamID64 when running Player:SetPData  
--- ℹ **NOTE**: PData is not networked from servers to clients!  
--- @param key string @Name of the PData key
--- @param value any @Value to write to the key (**must** be an SQL valid data type, such as a string or integer)
--- @return boolean @Whether the operation was successful or not
function Player:SetPData(key, value)
end

---  client|server
--- Sets the player model's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- @param Color Vector @This is the color to be set
function Player:SetPlayerColor(Color)
end

---  client|server
--- Sets the widget that is currently in use by the player's mouse.  
--- Having a pressed widget stops the player from firing their weapon to allow input to be passed onto the widget.  
--- @param pressedWidget? Entity @The widget the player is currently using.
function Player:SetPressedWidget(pressedWidget)
end

---  client|server
--- Sets the render angles of a player. Value set by this function is reset to player's angles (Entity:GetAngles) right after GM:UpdateAnimation.  
--- @param ang Angle @The new render angles to set
function Player:SetRenderAngles(ang)
end

---  client|server
--- Sets the player's sprint speed.  
--- See also Player:GetRunSpeed, Player:SetWalkSpeed and Player:SetMaxSpeed.  
--- ℹ **NOTE**: player_default class run speed is: `600`  
--- @param runSpeed number @The new sprint speed when `sv_friction` is below `10`
function Player:SetRunSpeed(runSpeed)
end

---  client|server
--- Sets the player's slow walking speed, which is activated via `+WALK` keybind.  
--- See Player:SetWalkSpeed for normal walking speed, Player:SetRunSpeed for sprinting speed and Player:SetLadderClimbSpeed for ladder climb speed.  
--- @param speed number @The new slow walking speed.
function Player:SetSlowWalkSpeed(speed)
end

---  client|server
--- Sets the maximum height a player can step onto without jumping.  
--- @param stepHeight number @The new maximum height the player can step onto without jumping
function Player:SetStepSize(stepHeight)
end

---  client|server
--- Sets the player's HEV suit power.  
--- 🦟 **BUG**: [This will only work for the local player when used clientside.](https://github.com/Facepunch/garrysmod-issues/issues/3449)  
--- @param power number @The new suit power.
function Player:SetSuitPower(power)
end

---  client|server
--- Sets whenever to suppress the pickup notification for the player.  
--- @param doSuppress boolean @Whenever to suppress the notice or not.
function Player:SetSuppressPickupNotices(doSuppress)
end

---  server
--- Sets the player to the chosen team.  
--- @param Team number @The team that the player is being set to.
function Player:SetTeam(Team)
end

---  client|server
--- Sets how quickly a player un-ducks  
--- @param UnDuckSpeed number @How quickly the player will un-duck
function Player:SetUnDuckSpeed(UnDuckSpeed)
end

---  server
--- Sets the usergroup of the player.  
--- @param groupName string @The user group of the player.
function Player:SetUserGroup(groupName)
end

---  server
--- Attaches the players view to the position and angles of the specified entity.  
--- @param viewEntity Entity @The entity to attach the player view to.
function Player:SetViewEntity(viewEntity)
end

---  client|server
--- Sets the **desired** view offset which equals the difference between the players actual position and their view when standing.  
--- If you want to set **actual** view offset, use Player:SetCurrentViewOffset  
--- See also Player:SetViewOffsetDucked for **desired** view offset when crouching.  
--- @param viewOffset Vector @The new desired view offset when standing.
function Player:SetViewOffset(viewOffset)
end

---  client|server
--- Sets the **desired** view offset which equals the difference between the players actual position and their view when crouching.  
--- If you want to set **actual** view offset, use Player:SetCurrentViewOffset  
--- See also Player:SetViewOffset for **desired** view offset when standing.  
--- @param viewOffset Vector @The new desired view offset when crouching.
function Player:SetViewOffsetDucked(viewOffset)
end

---  client|server
--- Sets client's view punch angle, but not the velocity. See Player:ViewPunch  
--- @param punchAngle Angle @The angle to set.
function Player:SetViewPunchAngles(punchAngle)
end

---  client|server
--- Sets client's view punch velocity. See Player:ViewPunch and Player:SetViewPunchAngles  
--- @param punchVel Angle @The angle velocity to set.
function Player:SetViewPunchVelocity(punchVel)
end

---  client
--- Sets the voice volume scale for given player on client. This value will persist from server to server, but will be reset when the game is shut down.  
--- ℹ **NOTE**: This doesn't work on bots, their scale will always be `1`.  
--- @param  number @The voice volume scale, where `0` is 0% and `1` is 100%.
function Player:SetVoiceVolumeScale()
end

---  client|server
--- Sets the player's normal walking speed. Not sprinting, not slow walking `+walk`.  
--- See also Player:SetSlowWalkSpeed, Player:GetWalkSpeed, Player:SetCrouchedWalkSpeed, Player:SetMaxSpeed and Player:SetRunSpeed.  
--- 🦟 **BUG**: [Using a speed of `0` can lead to prediction errors.](https://github.com/Facepunch/garrysmod-issues/issues/2030)  
--- ℹ **NOTE**: `player_default` class walk speed is: `400`.  
--- @param walkSpeed number @The new walk speed when `sv_friction` is below `10`
function Player:SetWalkSpeed(walkSpeed)
end

---  client|server
--- Sets the player weapon's color. The part of the model that is colored is determined by the model itself, and is different for each model.  
--- @param Color Vector @This is the color to be set
function Player:SetWeaponColor(Color)
end

---  server
--- Sets up the players view model hands. Calls GM:PlayerSetHandsModel to set the model of the hands.  
--- @param ent Entity @If the player is spectating an entity, this should be the entity the player is spectating, so we can use its hands model instead.
function Player:SetupHands(ent)
end

---  client
--- Returns whether the player's player model will be drawn at the time the function is called.  
--- @return boolean @`true` if the player's playermodel is visible
function Player:ShouldDrawLocalPlayer()
end

---  server
--- Sets whether the player's current weapon should drop on death.  
--- ℹ **NOTE**: This is reset on spawn to the player class's **DropWeaponOnDie** field by player_manager.OnPlayerSpawn.  
--- @param drop boolean @Whether to drop the player's current weapon or not
function Player:ShouldDropWeapon(drop)
end

---  client
--- Opens the player steam profile page in the steam overlay browser.  
function Player:ShowProfile()
end

---  server
--- Signals the entity that it was dropped by the gravity gun.  
--- @param ent Entity @Entity that was dropped.
function Player:SimulateGravGunDrop(ent)
end

---  server
--- Signals the entity that it was picked up by the gravity gun. This call is only required if you want to simulate the situation of picking up objects.  
--- @param ent Entity @The entity picked up
--- @param lightning? boolean @Whether or not to show lightning effects around the entity
function Player:SimulateGravGunPickup(ent, lightning)
end

---  server
--- Starts spectate mode for given player. This will also affect the players movetype in some cases.  
--- @param mode number @Spectate mode, see Enums/OBS_MODE.
function Player:Spectate(mode)
end

---  server
--- Makes the player spectate the entity.  
--- To get the applied spectated entity, use Player:GetObserverTarget.  
--- @param entity Entity @Entity to spectate.
function Player:SpectateEntity(entity)
end

---  server
--- Makes a player spray their decal.  
--- @param sprayOrigin Vector @The location to spray from
--- @param sprayEndPos Vector @The location to spray to
function Player:SprayDecal(sprayOrigin, sprayEndPos)
end

---  server
--- Disables the sprint on the player.  
function Player:SprintDisable()
end

---  server
--- Enables the sprint on the player.  
function Player:SprintEnable()
end

---  client|server
--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- Doesn't appear to do anything.  
--- @deprecated
function Player:StartSprinting()
end

---  client|server
--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function will force the player to walk, as well as preventing the player from sprinting.  
--- @deprecated
function Player:StartWalking()
end

---  client|server
--- Returns the player's SteamID.  
--- See Player:AccountID for a shorter version of the SteamID and Player:SteamID64 for the full SteamID.  
--- It is recommended to use Player:SteamID64 over the other SteamID formats whenever possible.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `STEAM_0:0:0` (serverside) or `NULL` (clientside) for all "copies" of a player because they are not authenticated with Steam.  
--- For Bots this will return `BOT`.  
--- @return string @"Text" representation of the player's SteamID.
function Player:SteamID()
end

---  client|server
--- Returns the player's full **64-bit SteamID**, also known as **CommunityID**. Information on how data is packed into this value can be found [here](https://developer.valvesoftware.com/wiki/SteamID).  
--- See Player:AccountID for a function that returns only the Account ID part of the SteamID and Player:SteamID for the text version of the SteamID.  
--- ℹ **NOTE**: In a `-multirun` environment, this will return `"0"` for all "copies" of a player because they are not authenticated with Steam.  
--- For bots, this will return `90071996842377216` (equivalent to `STEAM_0:0:0`) for the first bot to join.  
--- For each additional bot, the number increases by 1. So the next bot will be `90071996842377217` (`STEAM_0:1:0`) then `90071996842377218` (`STEAM_0:0:1`) and so on.  
--- @return string @Player's 64-bit SteamID aka CommunityID
function Player:SteamID64()
end

---  client|server
--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function will prevent the player from sprinting.  
--- When +walk is engaged, the player will still be able to sprint to half speed (normal run speed) as opposed to full sprint speed without this function.  
--- @deprecated
function Player:StopSprinting()
end

---  client|server
--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function behaves unexpectedly by preventing the player from sprinting similar to Player:StopSprinting.  
--- @deprecated
function Player:StopWalking()
end

---  server
--- Turns off the zoom mode of the player. (+zoom console command)  
--- Basically equivalent of entering "-zoom" into player's console.  
function Player:StopZooming()
end

---  server
--- 🛑 **DEPRECATED**: Alias of Player:RemoveAllAmmo  
--- Removes all ammo from the player.  
--- @deprecated
function Player:StripAmmo()
end

---  server
--- Removes the specified weapon class from a certain player  
--- ℹ **NOTE**: this function will call the Entity:OnRemove but if you try use Entity:GetOwner it will return nil  
--- @param weapon string @The weapon class to remove
function Player:StripWeapon(weapon)
end

---  server
--- Removes all weapons from a certain player  
function Player:StripWeapons()
end

---  server
--- Prevents a hint from showing up.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives  
--- @param name string @Hint name/class/index to prevent from showing up
function Player:SuppressHint(name)
end

---  server
--- Attempts to switch the player weapon to the one specified in the "cl_defaultweapon" convar, if the player does not own the specified weapon nothing will happen.  
--- If you want to switch to a specific weapon, use: Player:SetActiveWeapon  
function Player:SwitchToDefaultWeapon()
end

---  client|server
--- Returns the player's team ID.  
--- Returns 0 clientside when the game is not fully loaded.  
--- @return number @The player's team's index number, as in the Enums/TEAM or a custom team defined in team.SetUp.
function Player:Team()
end

---  server
--- Returns the time in seconds since the player connected.  
--- ℹ **NOTE**: Bots will always return value 0.  
--- @return number 
function Player:TimeConnected()
end

---  server
--- Performs a trace hull and applies damage to the entities hit, returns the first entity hit.  
--- ⚠ **WARNING**: Hitting the victim entity with this function in ENTITY:OnTakeDamage can cause infinite loops.  
--- @param startPos Vector @The start position of the hull trace.
--- @param endPos Vector @The end position of the hull trace.
--- @param mins Vector @The minimum coordinates of the hull.
--- @param maxs Vector @The maximum coordinates of the hull.
--- @param damage number @The damage to be applied.
--- @param damageFlags number @Bitflag specifying the damage type, see Enums/DMG.
--- @param damageForce number @The force to be applied to the hit object.
--- @param damageAllNPCs boolean @Whether to apply damage to all hit NPCs or not.
--- @return Entity @The hit entity
function Player:TraceHullAttack(startPos, endPos, mins, maxs, damage, damageFlags, damageForce, damageAllNPCs)
end

---  client|server
--- Translates Enums/ACT according to the holdtype of players currently held weapon.  
--- @param act number @The initial Enums/ACT
--- @return number @Translated Enums/ACT
function Player:TranslateWeaponActivity(act)
end

---  server
--- Unlocks the player movement if locked previously.  
--- Will disable godmode for the player if locked previously.  
function Player:UnLock()
end

---  server
--- Stops the player from spectating another entity.  
function Player:UnSpectate()
end

---  client|server
--- Unfreezes all objects the player has frozen with their Physics Gun. Same as double pressing R while holding Physics Gun.  
function Player:UnfreezePhysicsObjects()
end

---  client|server
--- 🛑 **DEPRECATED**:   
--- **This function has collisions,** where more than one player can have the same UniqueID. It is **highly** recommended to use Player:SteamID64 or Player:SteamID instead, which are guaranteed to be unique to each player.  
--- Returns a 32 bit integer that remains constant for a player across joins/leaves and across different servers. This can be used when a string is inappropriate - e.g. in a database primary key.  
--- ℹ **NOTE**: In Singleplayer, this function will always return 1.  
--- @deprecated
--- @return number @The player's Unique ID
function Player:UniqueID()
end

---  client|server
--- 🛑 **DEPRECATED**: This is based on Player:UniqueID which is deprecated and vulnerable to collisions.  
--- Returns a table that will stay allocated for the specific player serveside between connects until the server shuts down. On client it has no such special behavior.  
--- ℹ **NOTE**: This table is not synchronized (networked) between client and server.  
--- @param key any @Unique table key.
--- @deprecated
--- @return table @The table that contains any info you have put in it.
function Player:UniqueIDTable(key)
end

---  client|server
--- Returns the player's ID.  
--- You can use Global.Player() to get the player by their ID.  
--- @return number @The player's user ID
function Player:UserID()
end

---  client|server
--- Simulates a push on the client's screen. This **adds** view punch velocity, and does not touch the current view punch angle, for which you can use Player:SetViewPunchAngles.  
--- @param PunchAngle Angle @The angle in which to push the player's screen.
function Player:ViewPunch(PunchAngle)
end

---  client|server
--- Resets the player's view punch (and the view punch velocity, read more at Player:ViewPunch) effect back to normal.  
--- @param tolerance? number @Reset all ViewPunch below this threshold.
function Player:ViewPunchReset(tolerance)
end

---  client
--- Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1.  
--- @return number @The voice volume.
function Player:VoiceVolume()
end

