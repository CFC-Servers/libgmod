--- @class NPC : Entity
local NPC = {}
---  server
--- Returns the NPC's capabilities along the ones defined on its weapon.  
--- @return number @The capabilities as a bitflag
function NPC:CapabilitiesGet()
end

---  server
--- Remove a certain capability.  
--- @param capabilities number @Capabilities to remove, see Enums/CAP
function NPC:CapabilitiesRemove(capabilities)
end

---  server
--- Resets the NPC:GetBlockingEntity.  
function NPC:ClearBlockingEntity()
end

---  server
--- Clears out the specified Enums/COND on this NPC.  
--- @param condition number @The Enums/COND to clear out.
function NPC:ClearCondition(condition)
end

---  server
--- Forces the NPC to drop the specified weapon.  
--- @param weapon? Weapon @Weapon to be dropped
--- @param target? Vector @If set, launches the weapon at given position
--- @param velocity? Vector @If set and previous argument is unset, launches the weapon with given velocity
function NPC:DropWeapon(weapon, target, velocity)
end

---  server
--- Returns the NPC's current activity.  
--- @return number @Current activity, see Enums/ACT.
function NPC:GetActivity()
end

---  server
--- Returns the activity to be played when the NPC arrives at its goal  
--- @return number @The arrival activity
function NPC:GetArrivalActivity()
end

---  server
--- Returns the entity blocking the NPC along its path.  
--- @return Entity @Blocking entity
function NPC:GetBlockingEntity()
end

---  server
--- Returns the NPC's current schedule.  
--- @return number @The NPCs schedule, see Enums/SCHED or -1 if we failed for some reason
function NPC:GetCurrentSchedule()
end

---  server
--- Returns the entity that this NPC is trying to fight.  
--- 🦟 **BUG**: [This returns nil if the NPC has no enemy. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the enemy.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return NPC @Enemy NPC.
function NPC:GetEnemy()
end

---  server
--- Returns the last seen position of an NPC's enemy.  
--- Similar to NPC:GetEnemyLastKnownPos, but the known position will be a few seconds ahead of the last seen position.  
--- @param enemy? Entity @The enemy to check.
--- @return Vector @The last seen position.
function NPC:GetEnemyLastSeenPos(enemy)
end

---  server
--- Returns how far should the NPC look ahead in its route.  
--- @return number @How far the NPC checks ahead of its route.
function NPC:GetMinMoveCheckDist()
end

---  server
--- Returns how far before the NPC can come to a complete stop.  
--- @param minResult_? number @The minimum value that will be returned by this function.
--- @return number @The minimum stop distance.
function NPC:GetMinMoveStopDist(minResult_)
end

---  server
--- Returns the current timestep the internal NPC motor is working on.  
--- @return number @The current timestep.
function NPC:GetMoveInterval()
end

---  server
--- Returns the index of the sequence the NPC uses to move.  
--- @return number @The movement sequence index
function NPC:GetMovementSequence()
end

---  server
--- Returns the NPC's state.  
--- @return number @The NPC's current state, see Enums/NPC_STATE.
function NPC:GetNPCState()
end

---  server
--- Returns the status of the current task.  
--- @return number @The status
function NPC:GetTaskStatus()
end

---  server
--- Returns a specific weapon the NPC owns.  
--- @param class string @A classname of the weapon to try to get.
--- @return Weapon @The weapon for the specified class, or NULL of the NPC doesn't have given weapon.
function NPC:GetWeapon(class)
end

---  server
--- Returns whether or not the NPC has the given condition.  
--- @param condition number @The condition index, see Enums/COND.
--- @return boolean @True if the NPC has the given condition, false otherwise.
function NPC:HasCondition(condition)
end

---  server
--- Polls the enemy memory to check if the given entity has eluded us or not.  
--- @param enemy? Entity @The enemy to test.
--- @return boolean @If the enemy has eluded us.
function NPC:HasEnemyEluded(enemy)
end

---  server
--- Makes the NPC ignore given entity/enemy until given time.  
--- @param enemy Entity @The enemy to ignore.
--- @param until number @How long to ignore the enemy for
function NPC:IgnoreEnemyUntil(enemy, until)
end

---  server
--- Returns whether the current navigational waypoint is the final one.  
--- @return boolean @Whether the current navigational waypoint is the final one.
function NPC:IsCurWaypointGoal()
end

---  server
--- Returns whether or not the NPC is performing the given schedule.  
--- @param schedule number @The schedule number, see Enums/SCHED.
--- @return boolean @True if the NPC is performing the given schedule, false otherwise.
function NPC:IsCurrentSchedule(schedule)
end

---  server
--- Returns whether the NPC is facing their ideal yaw. See NPC:SetIdealYaw, NPC:GetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @return boolean @Whether the NPC is facing their ideal yaw.
function NPC:IsFacingIdealYaw()
end

---  server
--- Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** ConVar.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param position Vector @The target position for the NPC to walk to.
function NPC:MoveOrder(position)
end

---  server
--- Starts NPC movement?  
--- Related functions are NPC:MoveStop, NPC:MovePause and NPC:ResetMoveCalc.  
function NPC:MoveStart()
end

---  server
--- Forces the NPC to pickup an existing weapon entity. The NPC will not pick up the weapon if they already own a weapon of given type, or if the NPC could not normally have this weapon in their inventory.  
--- @param wep Weapon @The weapon to try to pick up.
--- @return boolean @Whether the NPC succeeded in picking up the weapon or not.
function NPC:PickupWeapon(wep)
end

---  server
--- Forces the NPC to play a sentence from scripts/sentences.txt  
--- @param sentence string @The sentence string to speak.
--- @param delay number @Delay in seconds until the sentence starts playing.
--- @param volume number @The volume of the sentence, from 0 to 1.
--- @return number @Returns the sentence index, -1 if the sentence couldn't be played.
function NPC:PlaySentence(sentence, delay, volume)
end

---  server
--- Starts an engine task.  
--- Used internally by the ai_task.  
--- @param taskID number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
--- @param taskData number @The task data.
function NPC:RunEngineTask(taskID, taskData)
end

---  server
--- Stops any sounds (speech) the NPC is currently palying.  
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )`  
function NPC:SentenceStop()
end

---  server
--- Sets the sequence to be played when the NPC arrives at its goal.  
--- @param seq number @See Entity:LookupSequence.
function NPC:SetArrivalSequence(seq)
end

---  server
--- Sets the arrival speed? of the NPC  
--- @param speed number @The new arrival speed
function NPC:SetArrivalSpeed(speed)
end

---  server
--- Sets the ideal yaw angle (left-right rotation) for the NPC. Does not actually force the NPC to start turning in that direction. See NPC:UpdateYaw, NPC:GetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @param angle number @The aim direction to set, the `yaw` component.
function NPC:SetIdealYaw(angle)
end

---  server
--- Sets the ideal yaw angle (left-right rotation) for the NPC and forces them to turn to that angle.  
--- @param angle number @The aim direction to set, the `yaw` component.
--- @param speed? number @The turn speed
function NPC:SetIdealYawAndUpdate(angle, speed)
end

---  server
--- Sets NPC's max view distance. An NPC will not be able to see enemies outside of this distance.  
--- @param dist number @New maximum distance the NPC can see at
function NPC:SetMaxLookDistance(dist)
end

---  server
--- Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement.  
--- @param sequenceId number @The movement sequence index
function NPC:SetMovementSequence(sequenceId)
end

---  server
--- Assigns the NPC to a new squad. A squad can have up to 16 NPCs. NPCs in a single squad should be friendly to each other.  
--- See also ai.GetSquadMembers and NPC:GetSquad.  
--- NPCs within the same squad are meant to function more effectively, tactics wise.  
--- @param name string @The new squad name to set.
function NPC:SetSquad(name)
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @If we succeeded setting the behavior.
function NPC:UseFollowBehavior()
end

