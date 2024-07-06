--- This is a list of all methods only available for NPCs. It is also possible to call [Entity](https://wiki.facepunch.com/gmod/Entity) functions on NPCs.  
--- @class NPC : Entity
local NPC = {}
---  server
--- Makes the NPC like, hate, feel neutral towards, or fear the entity in question. If you want to setup relationship towards a certain entity `class`, use NPC:AddRelationship.  
--- ℹ **NOTE**: NPCs do not see NextBots by default. This can be fixed by adding the FL_OBJECT flag to the NextBot.  
--- @param target Entity @The entity for the relationship to be applied to.
--- @param disposition number @A Enums/D representing the relationship type.
--- @param priority? number @How strong the relationship is
function NPC:AddEntityRelationship(target, disposition, priority)
end

---  server
--- Changes how an NPC feels towards another NPC.  If you want to setup relationship towards a certain `entity`, use NPC:AddEntityRelationship.  
--- ⚠ **WARNING**: Avoid using this in GM:OnEntityCreated to prevent crashing due to infinite loops. This function may create an entity with given class and delete it immediately after.  
--- @param relationstring string @A string representing how the relationship should be set up
function NPC:AddRelationship(relationstring)
end

---  server
--- Advances the NPC on its path to the next waypoint.  
function NPC:AdvancePath()
end

---  server
--- Force an NPC to play their Alert sound.  
function NPC:AlertSound()
end

---  server
--- Executes any movement the current sequence may have.  
--- @param interval number @This is a good place to use Entity:GetAnimTimeInterval.
--- @param target? Entity 
--- @return boolean @`true` if any movement was performed.
function NPC:AutoMovement(interval, target)
end

---  server
--- Adds a capability to the NPC.  
--- @param capabilities number @Capabilities to add, see Enums/CAP.
function NPC:CapabilitiesAdd(capabilities)
end

---  server
--- Removes all of Capabilities the NPC has.  
function NPC:CapabilitiesClear()
end

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
--- Returns the NPC class. Do not confuse with Entity:GetClass!  
--- @return number @See Enums/CLASS
function NPC:Classify()
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
--- Clears the Enemy from the NPC's memory, effectively forgetting it until met again with either the NPC vision or with NPC:UpdateEnemyMemory.  
--- @param enemy? Entity @The enemy to mark
function NPC:ClearEnemyMemory(enemy)
end

---  server
--- Clears the NPC's current expression which can be set with NPC:SetExpression.  
function NPC:ClearExpression()
end

---  server
--- Clears the current NPC goal or target.  
function NPC:ClearGoal()
end

---  server
--- Stops the current schedule that the NPC is doing.  
function NPC:ClearSchedule()
end

---  server
--- Translates condition ID to a string.  
--- @param cond number @The NPCs condition ID, see Enums/COND
--- @return string @A human understandable string equivalent of that condition.
function NPC:ConditionName(cond)
end

---  server
--- Returns the way the NPC "feels" about a given entity. See NPC:AddEntityRelationship.  
--- ℹ **NOTE**: For `ai` type entities, this will return ENTITY:GetRelationship. If it returns `nil` or for engine NPCs, this will return whatever was last set by NPC:AddEntityRelationship. As a last resort, engine will decide on the disposition based on this NPC's NPC:Classify.   
--- @param ent Entity @The entity to test our disposition towards.
--- @return number @The NPCs disposition, see Enums/D.
--- @return number @The NPCs disposition priority.
function NPC:Disposition(ent)
end

---  server
--- Forces the NPC to drop the specified weapon.  
--- @param weapon? Weapon @Weapon to be dropped
--- @param target? Vector @If set, launches the weapon at given position
--- @param velocity? Vector @If set and previous argument is unset, launches the weapon with given velocity
function NPC:DropWeapon(weapon, target, velocity)
end

---  server
--- Makes an NPC exit a scripted sequence, if one is playing.  
function NPC:ExitScriptedSequence()
end

---  server
--- Force an NPC to play its Fear sound.  
function NPC:FearSound()
end

---  server
--- Force an NPC to play its FoundEnemy sound.  
function NPC:FoundEnemySound()
end

---  client|server
--- Returns the weapon the NPC is currently carrying, or NULL.  
--- @return Entity @The NPCs current weapon
function NPC:GetActiveWeapon()
end

---  server
--- Returns the NPC's current activity.  
--- @return number @Current activity, see Enums/ACT.
function NPC:GetActivity()
end

---  server
--- Returns the aim vector of the NPC. NPC alternative of Player:GetAimVector.  
--- @return Vector @The aim direction of the NPC.
function NPC:GetAimVector()
end

---  server
--- Returns the activity to be played when the NPC arrives at its goal  
--- @return number @The arrival activity
function NPC:GetArrivalActivity()
end

---  server
--- Returns the direction from the NPC origin to its current navigational destination.  
--- @return Vector @The arrival direction.
function NPC:GetArrivalDirection()
end

---  server
--- Returns NPC arrival distance, set by NPC:SetArrivalDistance.  
--- @return number @The current arrival distance.
function NPC:GetArrivalDistance()
end

---  server
--- Returns the sequence to be played when the NPC arrives at its goal.  
--- @return number @Sequence ID to be played, or -1 if there's no sequence.
function NPC:GetArrivalSequence()
end

---  server
--- Returns NPC arrival speed, set by NPC:SetArrivalSpeed.  
--- @return number @The current arrival peed.
function NPC:GetArrivalSpeed()
end

---  server
--- Returns the most dangerous/closest sound hint based on the NPCs location and the types of sounds it can sense.  
--- @param types number @The types of sounds to choose from
--- @return table @A table with SoundHintData structure or `nil` if no sound hints are nearby.
function NPC:GetBestSoundHint(types)
end

---  server
--- Returns the entity blocking the NPC along its path.  
--- @return Entity @Blocking entity
function NPC:GetBlockingEntity()
end

---  server
--- Returns the goal type for current navigation path.  
--- @return number @The goal type
function NPC:GetCurGoalType()
end

---  server
--- Gets the NPC's current waypoint position (where NPC is currently moving towards), if any is available.  
--- @return Vector @The position of the current NPC waypoint.
function NPC:GetCurWaypointPos()
end

---  server
--- Returns the NPC's current schedule.  
--- @return number @The NPCs schedule, see Enums/SCHED or -1 if we failed for some reason
function NPC:GetCurrentSchedule()
end

---  server
--- Returns how proficient (skilled) an NPC is with its current weapon.  
--- @return number @NPC's proficiency for current weapon
function NPC:GetCurrentWeaponProficiency()
end

---  server
--- Returns the entity that this NPC is trying to fight.  
--- 🦟 **BUG**: [This returns nil if the NPC has no enemy. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the enemy.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return NPC @Enemy NPC.
function NPC:GetEnemy()
end

---  server
--- Returns the first time an NPC's enemy was seen by the NPC.  
--- @param enemy? Entity @The enemy to check.
--- @return number @First time the given enemy was seen.
function NPC:GetEnemyFirstTimeSeen(enemy)
end

---  server
--- Returns the last known position of an NPC's enemy.  
--- Similar to NPC:GetEnemyLastSeenPos, but the known position will be a few seconds ahead of the last seen position.  
--- @param enemy? Entity @The enemy to check.
--- @return Vector @The last known position.
function NPC:GetEnemyLastKnownPos(enemy)
end

---  server
--- Returns the last seen position of an NPC's enemy.  
--- Similar to NPC:GetEnemyLastKnownPos, but the known position will be a few seconds ahead of the last seen position.  
--- @param enemy? Entity @The enemy to check.
--- @return Vector @The last seen position.
function NPC:GetEnemyLastSeenPos(enemy)
end

---  server
--- Returns the last time an NPC's enemy was seen by the NPC.  
--- @param enemy? Entity @The enemy to check.
--- @return number @Last time the given enemy was seen.
function NPC:GetEnemyLastTimeSeen(enemy)
end

---  server
--- Returns the expression file the NPC is currently playing.  
--- @return string @The file path of the expression.
function NPC:GetExpression()
end

---  server
--- Returns the position we are trying to reach, if any.  
--- @return Vector @The position we are trying to reach.
function NPC:GetGoalPos()
end

---  server
--- Returns the entity we are trying to reach, if any.  
--- @return Entity @The entity we are trying to reach, or `NULL`.
function NPC:GetGoalTarget()
end

---  server
--- Returns NPCs hull type set by NPC:SetHullType.  
--- @return number @Hull type, see Enums/HULL
function NPC:GetHullType()
end

---  server
--- Returns the ideal activity the NPC currently wants to achieve.  
--- @return number @The ideal activity
function NPC:GetIdealActivity()
end

---  server
--- Returns the ideal move acceleration of the NPC.  
--- @return number @The ideal move acceleration.
function NPC:GetIdealMoveAcceleration()
end

---  server
--- Returns the ideal move speed of the NPC.  
--- @return number @The ideal move speed.
function NPC:GetIdealMoveSpeed()
end

---  server
--- Returns the ideal sequence the NPC currently wants to achieve.  
--- @return number @The ideal sequence, specific to the NPCs model.
function NPC:GetIdealSequence()
end

---  server
--- Returns the ideal yaw (left right rotation) for this NPC at this moment.  
--- @return number @The ideal yaw.
function NPC:GetIdealYaw()
end

---  server
--- Returns all known enemies this NPC has.  
--- See also NPC:GetKnownEnemyCount  
--- @return table @Table of entities that this NPC knows as enemies.
function NPC:GetKnownEnemies()
end

---  server
--- Returns known enemy count of this NPC.  
--- See also NPC:GetKnownEnemies  
--- @return number @Amount of entities that this NPC knows as enemies.
function NPC:GetKnownEnemyCount()
end

---  server
--- Returns Global.CurTime based time since this NPC last received damage from given enemy. The last damage time is set when NPC:MarkTookDamageFromEnemy is called.  
--- @param enemy? Entity @The enemy to test
--- @return number @Time since this NPC last received damage from given enemy.
function NPC:GetLastTimeTookDamageFromEnemy(enemy)
end

---  server
--- Returns NPCs max view distance. An NPC will not be able to see enemies outside of this distance.  
--- @return number @The maximum distance the NPC can see at.
function NPC:GetMaxLookDistance()
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
--- Returns the current move velocity of the NPC.  
--- @return Vector @The current move velocity of the NPC.
function NPC:GetMoveVelocity()
end

---  server
--- Returns the NPC's current movement activity.  
--- @return number @Current NPC movement activity, see Enums/ACT.
function NPC:GetMovementActivity()
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
--- Returns the NPC's navigation type.  
--- @return number @The nav type
function NPC:GetNavType()
end

---  server
--- Returns the nearest member of the squad the NPC is in.  
--- @return NPC @The nearest member of the squad the NPC is in.
function NPC:GetNearestSquadMember()
end

---  server
--- Gets the NPC's next waypoint position, where NPC will be moving after reaching current waypoint, if any is available.  
--- @return Vector @The position of the next NPC waypoint.
function NPC:GetNextWaypointPos()
end

---  server
--- Returns the distance the NPC is from Target Goal.  
--- @return number @The number of hammer units the NPC is away from the Goal.
function NPC:GetPathDistanceToGoal()
end

---  server
--- Returns the amount of time it will take for the NPC to get to its Target Goal.  
--- @return number @The amount of time to get to the target goal.
function NPC:GetPathTimeToGoal()
end

---  server
--- Returns the shooting position of the NPC.  
--- ℹ **NOTE**: This only works properly when called on an NPC that can hold weapons, otherwise it will return the same value as Entity:GetPos.  
--- @return Vector @The NPC's shooting position.
function NPC:GetShootPos()
end

---  server
--- Returns the current squad name of the NPC, as set via NPC:SetSquad.  
--- @return string @The new squad name to set.
function NPC:GetSquad()
end

---  server
--- Returns NPC step height.  
--- @return number @The current step height.
function NPC:GetStepHeight()
end

---  server
--- Returns the NPC's current target set by NPC:SetTarget.  
--- 🦟 **BUG**: [This returns nil if the NPC has no target. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the target.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return Entity @Target entity
function NPC:GetTarget()
end

---  server
--- Returns the status of the current task.  
--- @return number @The status
function NPC:GetTaskStatus()
end

---  server
--- Returns Global.CurTime based time since the enemy was reacquired, meaning it is currently in Line of Sight of the NPC.  
--- @param enemy? Entity @The enemy to test
--- @return number @Time enemy was last reacquired.
function NPC:GetTimeEnemyLastReacquired(enemy)
end

---  server
--- Returns the view offset of the NPC. Set by NPC:SetViewOffset.  
--- @return Vector @The view offset of the NPC.
function NPC:GetViewOffset()
end

---  server
--- Returns a specific weapon the NPC owns.  
--- @param class string @A classname of the weapon to try to get.
--- @return Weapon @The weapon for the specified class, or NULL of the NPC doesn't have given weapon.
function NPC:GetWeapon(class)
end

---  server
--- Returns a table of the NPC's weapons.  
--- @return table @A list of the weapons the NPC currently has.
function NPC:GetWeapons()
end

---  server
--- Used to give a weapon to an already spawned NPC.  
--- @param weapon string @Class name of the weapon to equip to the NPC.
--- @return Weapon @The weapon entity given to the NPC.
function NPC:Give(weapon)
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
--- Polls the enemy memory to check if the NPC has any memory of given enemy.  
--- @param enemy? Entity @The entity to test.
--- @return boolean @If we have any memory on given enemy.
function NPC:HasEnemyMemory(enemy)
end

---  server
--- Returns true if the current navigation has an obstacle, this is different from NPC:GetBlockingEntity, this is for virtual navigation obstacles put by AI's local navigation system to prevent movement to the marked area, forcing NPC to steer around, [for example](https://github.com/ValveSoftware/source-sdk-2013/blob/master/mp/src/game/server/hl2/npc_playercompanion.cpp#L2897).  
--- @return boolean @`true` if the current navigation has an obstacle.
function NPC:HasObstacles()
end

---  server
--- Force an NPC to play their Idle sound.  
function NPC:IdleSound()
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
--- Returns whether the NPC has an active goal.  
--- @return boolean @Whether the NPC has an active goal or not.
function NPC:IsGoalActive()
end

---  server
--- Returns if the current movement is locked on the Yaw axis.  
--- @return boolean @Whether the movement is yaw locked or not.
function NPC:IsMoveYawLocked()
end

---  server
--- Returns whether the NPC is moving or not.  
--- @return boolean @Whether the NPC is moving or not.
function NPC:IsMoving()
end

---  server
--- Checks if the NPC is running an **ai_goal**. ( e.g. An npc_citizen NPC following the Player. )  
--- @return boolean @Returns true if running an ai_goal, otherwise returns false.
function NPC:IsRunningBehavior()
end

---  server
--- Returns whether the current NPC is the leader of the squad it is in.  
--- @return boolean @Whether the NPC is the leader of the squad or not.
function NPC:IsSquadLeader()
end

---  server
--- Returns true if the entity was remembered as unreachable. The memory is updated automatically from following engine tasks if they failed:  
--- * TASK_GET_CHASE_PATH_TO_ENEMY  
--- * TASK_GET_PATH_TO_ENEMY_LKP  
--- * TASK_GET_PATH_TO_INTERACTION_PARTNER  
--- * TASK_ANTLIONGUARD_GET_CHASE_PATH_ENEMY_TOLERANCE  
--- * SCHED_FAIL_ESTABLISH_LINE_OF_FIRE - Combine NPCs, also when failing to change their enemy  
--- @param testEntity Entity @The entity to test.
--- @return boolean @If the entity is reachable or not.
function NPC:IsUnreachable(testEntity)
end

---  server
--- Force an NPC to play their LostEnemy sound.  
function NPC:LostEnemySound()
end

---  server
--- Tries to achieve our ideal animation state, playing any transition sequences that we need to play to get there.  
function NPC:MaintainActivity()
end

---  server
--- Causes the NPC to temporarily forget the current enemy and switch on to a better one.  
--- @param enemy? Entity @The enemy to mark
function NPC:MarkEnemyAsEluded(enemy)
end

---  server
--- Marks the NPC as took damage from given entity.  
--- See also NPC:GetLastTimeTookDamageFromEnemy.  
--- @param enemy? Entity @The enemy to mark
function NPC:MarkTookDamageFromEnemy(enemy)
end

---  server
--- Executes a climb move.  
--- Related functions are NPC:MoveClimbStart and NPC:MoveClimbStop.  
--- @param destination Vector @The destination of the climb.
--- @param dir Vector @The direction of the climb.
--- @param distance number @The distance.
--- @param yaw number @The yaw angle.
--- @param left number @Amount of climb nodes left?
--- @return number @The result
function NPC:MoveClimbExec(destination, dir, distance, yaw, left)
end

---  server
--- Starts a climb move.  
--- Related functions are NPC:MoveClimbExec and NPC:MoveClimbStop.  
--- @param destination Vector @The destination of the climb.
--- @param dir Vector @The direction of the climb.
--- @param distance number @The distance.
--- @param yaw number @The yaw angle.
function NPC:MoveClimbStart(destination, dir, distance, yaw)
end

---  server
--- Stops a climb move.  
--- Related functions are NPC:MoveClimbExec and NPC:MoveClimbStart.  
function NPC:MoveClimbStop()
end

---  server
--- Executes a jump move.  
--- Related functions are NPC:MoveJumpStart and NPC:MoveJumpStop.  
--- @return number @The result
function NPC:MoveJumpExec()
end

---  server
--- Starts a jump move.  
--- Related functions are NPC:MoveJumpExec and NPC:MoveJumpStop.  
--- @param vel Vector @The jump velocity.
function NPC:MoveJumpStart(vel)
end

---  server
--- Stops a jump move.  
--- Related functions are NPC:MoveJumpExec and NPC:MoveJumpStart.  
--- @return number @The result
function NPC:MoveJumpStop()
end

---  server
--- Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** ConVar.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param position Vector @The target position for the NPC to walk to.
function NPC:MoveOrder(position)
end

---  server
--- Pauses the NPC movement?  
--- Related functions are NPC:MoveStart, NPC:MoveStop and NPC:ResetMoveCalc.  
function NPC:MovePause()
end

---  server
--- Starts NPC movement?  
--- Related functions are NPC:MoveStop, NPC:MovePause and NPC:ResetMoveCalc.  
function NPC:MoveStart()
end

---  server
--- Stops the NPC movement?  
--- Related functions are NPC:MoveStart, NPC:MovePause and NPC:ResetMoveCalc.  
function NPC:MoveStop()
end

---  server
--- Works similarly to NPC:NavSetRandomGoal.  
--- @param pos Vector @The origin to calculate a path from.
--- @param length number @The target length of the path to calculate.
--- @param dir Vector @The direction in which to look for a new path end goal.
--- @return boolean @Whether path generation was successful or not.
function NPC:NavSetGoal(pos, length, dir)
end

---  server
--- Creates a path to closest node at given position. This won't actually force the NPC to move.  
--- See also NPC:NavSetRandomGoal.  
--- @param pos Vector @The position to calculate a path to.
--- @return boolean @Whether path generation was successful or not.
function NPC:NavSetGoalPos(pos)
end

---  server
--- Set the goal target for an NPC.  
--- @param target Entity @The targeted entity to set the goal to.
--- @param offset? Vector @The offset to apply to the targeted entity's position.
--- @return boolean @Whether path generation was successful or not
function NPC:NavSetGoalTarget(target, offset)
end

---  server
--- Creates a random path of specified minimum length between a closest start node and random node in the specified direction. This won't actually force the NPC to move.  
--- @param minPathLength number @Minimum length of path in units
--- @param dir Vector @Unit vector pointing in the direction of the target random node
--- @return boolean @Whether path generation was successful or not
function NPC:NavSetRandomGoal(minPathLength, dir)
end

---  server
--- Sets a goal in x, y offsets for the NPC to wander to  
--- @param xOffset number @X offset
--- @param yOffset number @Y offset
--- @return boolean @Whether path generation was successful or not
function NPC:NavSetWanderGoal(xOffset, yOffset)
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
--- Makes the NPC remember an entity or an enemy as unreachable, for a specified amount of time. Use NPC:IsUnreachable to check if an entity is still unreachable.  
--- @param ent Entity @The entity to mark as unreachable.
--- @param time? number @For how long to remember the entity as unreachable
function NPC:RememberUnreachable(ent, time)
end

---  server
--- Removes conditions to ignore for the this NPC.  
--- @param conditions? table @Ignore conditions to remove, see Enums/COND
function NPC:RemoveIgnoreConditions(conditions)
end

---  server
--- Resets the ideal activity of the NPC. See also NPC:SetIdealActivity.  
--- @param act number @The new activity
function NPC:ResetIdealActivity(act)
end

---  server
--- Resets all the movement calculations.  
--- Related functions are NPC:MoveStart, NPC:MovePause and NPC:MoveStop.  
function NPC:ResetMoveCalc()
end

---  server
--- Starts an engine task.  
--- Used internally by the ai_task.  
--- @param taskID number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
--- @param taskData number @The task data.
function NPC:RunEngineTask(taskID, taskData)
end

---  server
--- Forces the NPC to switch to a specific weapon the NPC owns. See NPC:GetWeapons.  
--- @param class string @A classname of the weapon or a Weapon entity to switch to.
function NPC:SelectWeapon(class)
end

---  server
--- Stops any sounds (speech) the NPC is currently palying.  
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )`  
function NPC:SentenceStop()
end

---  server
--- Sets the NPC's current activity.  
--- @param act number @The new activity to set, see Enums/ACT.
function NPC:SetActivity(act)
end

---  server
--- @param act number @See Enums/ACT.
function NPC:SetArrivalActivity(act)
end

---  server
--- Sets the direction from the NPC origin to its current navigational destination.  
--- @param dir Vector @The new arrival direction.
function NPC:SetArrivalDirection(dir)
end

---  server
--- Sets the distance to goal at which the NPC should stop moving and continue to other business such as doing the rest of their tasks in a schedule.  
--- @param dist number @The distance to goal that is close enough for the NPC
function NPC:SetArrivalDistance(dist)
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
--- Sets an NPC condition.  
--- @param condition number @The condition index, see Enums/COND.
function NPC:SetCondition(condition)
end

---  server
--- Sets the weapon proficiency of an NPC (how skilled an NPC is with its current weapon).  
--- @param proficiency number @The proficiency for the NPC's current weapon
function NPC:SetCurrentWeaponProficiency(proficiency)
end

---  server
--- Sets the target for an NPC.  
--- @param enemy Entity @The enemy that the NPC should target
--- @param newenemy? boolean @Calls NPC:SetCondition(COND.NEW_ENEMY) if the new enemy is valid and not equal to the last enemy.
function NPC:SetEnemy(enemy, newenemy)
end

---  server
--- Sets the NPC's .vcd expression. Similar to Entity:PlayScene except the scene is looped until it's interrupted by default NPC behavior or NPC:ClearExpression.  
--- @param expression string @The expression filepath.
--- @return number 
function NPC:SetExpression(expression)
end

---  server
--- Updates the NPC's hull and physics hull in order to match its model scale. Entity:SetModelScale seems to take care of this regardless.  
function NPC:SetHullSizeNormal()
end

---  server
--- Sets the hull type for the NPC.  
--- @param hullType number @Hull type
function NPC:SetHullType(hullType)
end

---  server
--- Sets the ideal activity the NPC currently wants to achieve. This is most useful for custom SNPCs.  
--- @param arg1 number @The ideal activity to set
function NPC:SetIdealActivity(arg1)
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
--- Sets conditions to ignore for the this NPC.  
--- @param conditions table @Conditions to ignore, see Enums/COND.
--- @param size number @Number of conditions to include in the ignored conditions table
function NPC:SetIgnoreConditions(conditions, size)
end

---  server
--- Sets the last registered or memorized position for an npc. When using scheduling, the NPC will focus on navigating to the last position via nodes.  
--- ℹ **NOTE**: The navigation requires ground nodes to function properly, otherwise the NPC could only navigate in a small area. (https://developer.valvesoftware.com/wiki/Info_node)  
--- @param Position Vector @Where the NPC's last position will be set.
function NPC:SetLastPosition(Position)
end

---  server
--- Sets NPC's max view distance. An NPC will not be able to see enemies outside of this distance.  
--- @param dist number @New maximum distance the NPC can see at
function NPC:SetMaxLookDistance(dist)
end

---  server
--- Sets how long to try rebuilding path before failing task.  
--- @param time number @How long to try rebuilding path before failing task
function NPC:SetMaxRouteRebuildTime(time)
end

---  server
--- Sets the timestep the internal NPC motor is working on.  
--- @param time number @The new timestep.
function NPC:SetMoveInterval(time)
end

---  server
--- Sets the move velocity of the NPC  
--- @param vel Vector @The new movement velocity.
function NPC:SetMoveVelocity(vel)
end

---  server
--- Sets whether the current movement should locked on the Yaw axis or not.  
--- @param lock boolean @Whether the movement should yaw locked or not.
function NPC:SetMoveYawLocked(lock)
end

---  server
--- Sets the activity the NPC uses when it moves.  
--- @param activity number @The movement activity, see Enums/ACT.
function NPC:SetMovementActivity(activity)
end

---  server
--- Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement.  
--- @param sequenceId number @The movement sequence index
function NPC:SetMovementSequence(sequenceId)
end

---  server
--- Sets the state the NPC is in to help it decide on a ideal schedule.  
--- @param state number @New NPC state, see Enums/NPC_STATE
function NPC:SetNPCState(state)
end

---  server
--- Sets the navigation type of the NPC.  
--- @param navtype number @The new nav type
function NPC:SetNavType(navtype)
end

---  server
--- Sets the NPC's current schedule.  
--- @param schedule number @The NPC schedule, see Enums/SCHED.
function NPC:SetSchedule(schedule)
end

---  server
--- Assigns the NPC to a new squad. A squad can have up to 16 NPCs. NPCs in a single squad should be friendly to each other.  
--- See also ai.GetSquadMembers and NPC:GetSquad.  
--- NPCs within the same squad are meant to function more effectively, tactics wise.  
--- @param name? string @The new squad name to set
function NPC:SetSquad(name)
end

---  server
--- Sets the SNPC step height.  
--- ℹ **NOTE**: This only works for scripted NPCs.  
--- @param height number @The new step height
function NPC:SetStepHeight(height)
end

---  server
--- Sets the NPC's target. This is used in some engine schedules.  
--- @param entity Entity @The target of the NPC.
function NPC:SetTarget(entity)
end

---  server
--- Sets the status of the current task.  
--- @param status number @The status
function NPC:SetTaskStatus(status)
end

---  server
--- Sets given entity as an unforgettable enemy.  
--- @param enemy Entity @The enemy entity to set.
--- @param set? boolean @The entity to set.
function NPC:SetUnforgettable(enemy, set)
end

---  server
--- Sets the view offset of the NPC. Player alternative of Player:SetViewOffset.  
--- This affects NPC's NPC:GetShootPos.  
--- @param arg1 Vector @The view offset to set.
function NPC:SetViewOffset(arg1)
end

---  server
--- Forces the NPC to start an engine task, this has different results for every NPC.  
--- @param task number @The id of the task to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/
--- @param taskData number @The task data as a float, not all tasks make use of it.
function NPC:StartEngineTask(task, taskData)
end

---  server
--- Resets the NPC's movement animation and velocity. Does not actually stop the NPC from moving.  
--- @param immediate? boolean @Whether to stop moving even when currently active goal doesn't want us to.
function NPC:StopMoving(immediate)
end

---  server
--- Cancels NPC:MoveOrder basically.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param target Entity @Must be a player, does nothing otherwise.
function NPC:TargetOrder(target)
end

---  server
--- Marks the current NPC task as completed.  
--- This is meant to be used alongside NPC:TaskFail to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
function NPC:TaskComplete()
end

---  server
--- Marks the current NPC task as failed.  
--- This is meant to be used alongside NPC:TaskComplete to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
--- @param task string @A string most likely defined as a Source Task, for more information on Tasks go to https://developer.valvesoftware.com/wiki/Task
function NPC:TaskFail(task)
end

---  server
--- Force the NPC to update information on the supplied enemy, as if it had line of sight to it.  
--- @param enemy Entity @The enemy to update.
--- @param pos Vector @The last known position of the enemy.
function NPC:UpdateEnemyMemory(enemy, pos)
end

---  server
--- Updates the turn activity. Basically applies the turn animations depending on the current turn yaw.  
function NPC:UpdateTurnActivity()
end

---  server
--- Forces the NPC to turn to their ideal yaw angle. See NPC:SetIdealYaw and NPC:SetIdealYawAndUpdate.  
--- @param speed? number @The turn speed
function NPC:UpdateYaw(speed)
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @If we succeeded setting the behavior.
function NPC:UseActBusyBehavior()
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function NPC:UseAssaultBehavior()
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @If we succeeded setting the behavior.
function NPC:UseFollowBehavior()
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function NPC:UseFuncTankBehavior()
end

---  server
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
--- @return boolean @Whether the action succeeded.
function NPC:UseLeadBehavior()
end

---  server
--- Undoes the other `Use*Behavior` functions.  
--- ℹ **NOTE**: This function only works on `ai` type [SENTs](Scripted_Entities).  
function NPC:UseNoBehavior()
end
