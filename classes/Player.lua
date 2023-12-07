--- @class Player : Entity
local Player = {}
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
--- Adds a entity to the player's list of frozen objects.  
--- @param ent Entity @Entity
--- @param physobj PhysObj @Physics object belonging to ent
function Player:AddFrozenPhysicsObject(ent, physobj)
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

---  client|server
--- Returns the player's armor.  
--- @return number @The player's armor.
function Player:Armor()
end

---  client|server
--- Returns true if the player's flashlight hasn't been disabled by Player:AllowFlashlight.  
--- ℹ **NOTE**: This is not synchronized between clients and server automatically!  
--- @return boolean @Whether the player can use flashlight.
function Player:CanUseFlashlight()
end

---  server
--- Prints the players' name and position to the console.  
function Player:DebugInfo()
end

---  client|server
--- Sends a third person animation event to the player.  
--- Calls GM:DoAnimationEvent with PLAYERANIMEVENT_CUSTOM_GESTURE as the event, data as the given data.  
--- @param data number @The data to send.
function Player:DoAnimationEvent(data)
end

---  client|server
--- Sends a specified third person animation event to the player.  
--- Calls GM:DoAnimationEvent with specified arguments.  
--- @param event number @The event to send
--- @param data number @The data to send alongside the event.
function Player:DoCustomAnimEvent(event, data)
end

---  client|server
--- Returns whether the player is allowed to use their weapons in a vehicle or not.  
--- @return boolean @Whether the player is allowed to use their weapons in a vehicle or not.
function Player:GetAllowWeaponsInVehicle()
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
--- Returns the last command which was sent by the specified player. This can only be called on the player which Global.GetPredictionPlayer() returns.  
--- ℹ **NOTE**: When called clientside in singleplayer during WEAPON:Think, it will return nothing as the hook is not technically predicted in that instance. See the note on the page.  
--- 🦟 **BUG**: [This will fail in GM:StartCommand.](https://github.com/Facepunch/garrysmod-issues/issues/3302)  
--- @return CUserCmd @Last user commands
function Player:GetCurrentCommand()
end

---  client|server
--- Returns a player's duck speed (in seconds)  
--- @return number @duckspeed
function Player:GetDuckSpeed()
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
--- Retrieves the numeric value of a client-side convar, returns nil if value is not convertible to a number. The ConVar must have a FCVAR_USERINFO flag for this to work.  
--- @param cVarName string @The name of the ConVar to query the value of
--- @param default number @Default value if we failed to retrieve the number.
--- @return number @The value of the ConVar or the default value
function Player:GetInfoNum(cVarName, default)
end

---  client|server
--- Returns the player's maximum movement speed.  
--- See also Player:SetMaxSpeed, Player:GetWalkSpeed and Player:GetRunSpeed.  
--- @return number @The maximum movement speed the player can go at.
function Player:GetMaxSpeed()
end

---  client|server
--- Returns the entity the player is currently observing.  
--- Set using Player:SpectateEntity.  
--- @return Entity @The entity the player is currently spectating, or NULL if the player has no target.
function Player:GetObserverTarget()
end

---  client|server
--- 🛑 **DEPRECATED**: You should use Player:GetViewPunchAngles instead.  
--- Returns players screen punch effect angle. See Player:ViewPunch and Player:SetViewPunchAngles  
--- @deprecated
--- @return Angle @The punch angle
function Player:GetPunchAngle()
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

---  client|server
--- Returns a player's unduck speed (in seconds)  
--- @return number @unduck speed
function Player:GetUnDuckSpeed()
end

---  client|server
--- Returns the entity the player is using to see from (such as the player itself, the camera, or another entity).  
--- ℹ **NOTE**: This function will return a [NULL Entity] until Player:SetViewEntity has been used  
--- @return Entity @The entity the player is using to see from
function Player:GetViewEntity()
end

---  client|server
--- Returns players screen punch effect angle.  
--- @return Angle @The punch angle
function Player:GetViewPunchAngles()
end

---  server
--- Returns the player's IP address and connection port in ip:port form  
--- ℹ **NOTE**: Returns `Error!` for bots.  
--- @return string @The player's IP address and connection port
function Player:IPAddress()
end

---  client|server
--- Returns true if the player is playing a taunt.  
--- @return boolean @Whether the player is playing a taunt.
function Player:IsPlayingTaunt()
end

---  client|server
--- Returns whether the player is typing in their chat.  
--- This may not work properly if the server uses a custom chatbox.  
--- @return boolean @Whether the player is typing in their chat or not.
function Player:IsTyping()
end

---  client|server
--- Returns if the player currently walking. (`+walk` keybind)  
--- @return boolean @True if the player is currently walking.
function Player:IsWalking()
end

---  client|server
--- Gets whether a key was just released this tick.  
--- @param key number @The key, see Enums/IN
--- @return boolean @Was released or not
function Player:KeyReleased(key)
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

---  server
--- Forces the player to pickup an existing weapon entity. The player will not pick up the weapon if they already own a weapon of given type, or if the player could not normally have this weapon in their inventory.  
--- This function **will** bypass GM:PlayerCanPickupWeapon.  
--- @param wep Weapon @The weapon to try to pick up.
--- @param ammoOnly? boolean @If set to true, the player will only attempt to pick up the ammo from the weapon
--- @return boolean @Whether the player succeeded in picking up the weapon or not.
function Player:PickupWeapon(wep, ammoOnly)
end

---  server
--- Plays the correct step sound according to what the player is staying on.  
--- @param volume number @Volume for the sound, in range from 0 to 1
function Player:PlayStepSound(volume)
end

---  server
--- Removes all weapons and ammo from the player.  
function Player:RemoveAllItems()
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

---  client|server
--- Sets the player's class id.  
--- @param classID number @The class id the player is being set with.
function Player:SetClassID(classID)
end

---  client|server
--- Sets the hands entity of a player.  
--- The hands entity is an entity introduced in Garry's Mod 13 and it's used to show the player's hands attached to the viewmodel.  
--- This is similar to the approach used in L4D and CS:GO, for more information on how to implement this system in your gamemode visit Using Viewmodel Hands.  
--- @param hands Entity @The hands entity to set
function Player:SetHands(hands)
end

---  client|server
--- Sets the maximum speed which the player can move at.  
--- ℹ **NOTE**: This is called automatically by the engine. If you wish to limit player speed without setting their run/sprint speeds, see CMoveData:SetMaxClientSpeed.  
--- @param walkSpeed number @The maximum speed.
function Player:SetMaxSpeed(walkSpeed)
end

---  client|server
--- Sets the players observer mode. You must start the spectating first with Player:Spectate.  
--- @param mode number @Spectator mode using Enums/OBS_MODE.
function Player:SetObserverMode(mode)
end

---  server
--- Sets the player to the chosen team.  
--- @param Team number @The team that the player is being set to.
function Player:SetTeam(Team)
end

---  client|server
--- Sets the **desired** view offset which equals the difference between the players actual position and their view when crouching.  
--- If you want to set **actual** view offset, use Player:SetCurrentViewOffset  
--- See also Player:SetViewOffset for **desired** view offset when standing.  
--- @param viewOffset Vector @The new desired view offset when crouching.
function Player:SetViewOffsetDucked(viewOffset)
end

---  client|server
--- Sets the player's normal walking speed. Not sprinting, not slow walking `+walk`.  
--- See also Player:SetSlowWalkSpeed, Player:GetWalkSpeed, Player:SetCrouchedWalkSpeed, Player:SetMaxSpeed and Player:SetRunSpeed.  
--- 🦟 **BUG**: [Using a speed of `0` can lead to prediction errors.](https://github.com/Facepunch/garrysmod-issues/issues/2030)  
--- ℹ **NOTE**: `player_default` class walk speed is: `400`.  
--- @param walkSpeed number @The new walk speed when `sv_friction` is below `10`
function Player:SetWalkSpeed(walkSpeed)
end

---  server
--- Signals the entity that it was dropped by the gravity gun.  
--- @param ent Entity @Entity that was dropped.
function Player:SimulateGravGunDrop(ent)
end

---  client|server
--- 🛑 **DEPRECATED**: This appears to be a direct binding to internal functionality that is overridden by the engine every frame so calling these functions may not have any or expected effect.  
--- When used in a GM:SetupMove hook, this function will force the player to walk, as well as preventing the player from sprinting.  
--- @deprecated
function Player:StartWalking()
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

---  server
--- Turns off the zoom mode of the player. (+zoom console command)  
--- Basically equivalent of entering "-zoom" into player's console.  
function Player:StopZooming()
end

---  server
--- Prevents a hint from showing up.  
--- ℹ **NOTE**: This function is only available in Sandbox and its derivatives  
--- @param name string @Hint name/class/index to prevent from showing up
function Player:SuppressHint(name)
end

---  server
--- Returns the time in seconds since the player connected.  
--- ℹ **NOTE**: Bots will always return value 0.  
--- @return number 
function Player:TimeConnected()
end

---  server
--- Stops the player from spectating another entity.  
function Player:UnSpectate()
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
--- Simulates a push on the client's screen. This **adds** view punch velocity, and does not touch the current view punch angle, for which you can use Player:SetViewPunchAngles.  
--- @param PunchAngle Angle @The angle in which to push the player's screen.
function Player:ViewPunch(PunchAngle)
end

