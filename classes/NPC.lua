--- @class NPC : Entity
--- This is a list of all methods only available for NPCs. It is also possible to call [Entity](http://wiki.garrysmod.com/index.php?title=Category:Entity) functions on NPCs.  
local NPC = {}
--- Makes the NPC like, hate, feel neutral towards, or fear the entity in question. If you want to setup relationship towards a certain entity `class`, use NPC:AddRelationship.  
--- ℹ **NOTE**: NPCs do not see NextBots by default. This can be fixed by adding the FL_OBJECT flag to the NextBot.  
--- @param target Entity @The entity for the relationship to be applied to.
--- @param disposition number @A Enums/D representing the relationship type.
--- @param priority number @How strong the relationship is.
function NPC:AddEntityRelationship(target, disposition, priority)
end

--- Changes how an NPC feels towards another NPC.  If you want to setup relationship towards a certain `entity`, use NPC:AddEntityRelationship.  
--- @param relationstring string @A string representing how the relationship should be set up
function NPC:AddRelationship(relationstring)
end

--- Force an NPC to play his Alert sound.  
function NPC:AlertSound()
end

--- Adds a capability to the NPC.  
--- @param capabilities number @Capabilities to add, see Enums/CAP
function NPC:CapabilitiesAdd(capabilities)
end

--- Removes all of Capabilities the NPC has.  
function NPC:CapabilitiesClear()
end

--- Returns the NPC's capabilities along the ones defined on its weapon.  
--- @return number @The capabilities as a bitflag
function NPC:CapabilitiesGet()
end

--- Remove a certain capability.  
--- @param capabilities number @Capabilities to remove, see Enums/CAP
function NPC:CapabilitiesRemove(capabilities)
end

--- Returns the NPC class. Do not confuse with Entity:GetClass!  
--- @return number @See Enums/CLASS
function NPC:Classify()
end

--- Clears out the specified Enums/COND on this NPC.  
--- @param condition number @The Enums/COND to clear out.
function NPC:ClearCondition(condition)
end

--- Clears the Enemy from the NPC's memory, effectively forgetting it until met again with either the NPC vision or with NPC:UpdateEnemyMemory.  
function NPC:ClearEnemyMemory()
end

--- Clears the NPC's current expression which can be set with NPC:SetExpression.  
function NPC:ClearExpression()
end

--- Clears the current NPC goal or target.  
function NPC:ClearGoal()
end

--- Stops the current schedule that the NPC is doing.  
function NPC:ClearSchedule()
end

--- Translates condition ID to a string.  
--- @param cond number @The NPCs condition ID, see Enums/COND
--- @return string @A human understandable string equivalent of that condition.
function NPC:ConditionName(cond)
end

--- Returns the way the NPC "feels" about the entity.  
--- @param ent Entity @The entity to get the disposition from.
--- @return number @The NPCs disposition, see Enums/D.
function NPC:Disposition(ent)
end

--- Forces the NPC to drop the specified weapon.  
--- @param weapon? Weapon @Weapon to be dropped
--- @param target? Vector @If set, launches the weapon at given position
--- @param velocity? Vector @If set and previous argument is unset, launches the weapon with given velocity
function NPC:DropWeapon(weapon, target, velocity)
end

--- Makes an NPC exit a scripted sequence, if one is playing.  
function NPC:ExitScriptedSequence()
end

--- Force an NPC to play his Fear sound.  
function NPC:FearSound()
end

--- Force an NPC to play its FoundEnemy sound.  
function NPC:FoundEnemySound()
end

--- Returns the weapon the NPC is currently carrying, or NULL.  
--- @return Entity @The NPCs current weapon
function NPC:GetActiveWeapon()
end

--- Returns the NPC's current activity.  
--- @return number @Current activity, see Enums/ACT.
function NPC:GetActivity()
end

--- Returns the aim vector of the NPC. NPC alternative of Player:GetAimVector.  
--- @return Vector @The aim direction of the NPC.
function NPC:GetAimVector()
end

--- Returns the activity to be played when the NPC arrives at its goal  
--- @return number 
function NPC:GetArrivalActivity()
end

--- Returns the sequence to be played when the NPC arrives at its goal.  
--- @return number @Sequence ID to be played, or -1 if there's no sequence.
function NPC:GetArrivalSequence()
end

--- Returns the entity blocking the NPC along its path.  
--- @return Entity @Blocking entity
function NPC:GetBlockingEntity()
end

--- Gets the NPC's current waypoint position (where NPC is currently moving towards), if any is available.  
--- @return Vector @The position of the current NPC waypoint.
function NPC:GetCurWaypointPos()
end

--- Returns the NPC's current schedule.  
--- @return number @The NPCs schedule, see Enums/SCHED or -1 if we failed for some reason
function NPC:GetCurrentSchedule()
end

--- Returns how proficient (skilled) an NPC is with its current weapon.  
--- @return number @NPC's proficiency for current weapon
function NPC:GetCurrentWeaponProficiency()
end

--- Returns the entity that this NPC is trying to fight.  
--- 🦟 **BUG**: [This returns nil if the NPC has no enemy. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the enemy.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return NPC @Enemy NPC.
function NPC:GetEnemy()
end

--- Returns the expression file the NPC is currently playing.  
--- @return string @The file path of the expression.
function NPC:GetExpression()
end

--- Returns NPCs hull type set by NPC:SetHullType.  
--- @return number @Hull type, see Enums/HULL
function NPC:GetHullType()
end

--- Returns the NPC's current movement activity.  
--- @return number @Current NPC movement activity, see Enums/ACT.
function NPC:GetMovementActivity()
end

--- Returns the index of the sequence the NPC uses to move.  
--- @return number @The movement sequence index
function NPC:GetMovementSequence()
end

--- Returns the NPC's state.  
--- @return number @The NPC's current state, see Enums/NPC_STATE.
function NPC:GetNPCState()
end

--- Gets the NPC's next waypoint position, where NPC will be moving after reaching current waypoint, if any is available.  
--- @return Vector @The position of the next NPC waypoint.
function NPC:GetNextWaypointPos()
end

--- Returns the distance the NPC is from Target Goal.  
--- @return number @The number of hammer units the NPC is away from the Goal.
function NPC:GetPathDistanceToGoal()
end

--- Returns the amount of time it will take for the NPC to get to its Target Goal.  
--- @return number @The amount of time to get to the target goal.
function NPC:GetPathTimeToGoal()
end

--- Returns the shooting position of the NPC.  
--- ℹ **NOTE**: This only works properly when called on an NPC that can hold weapons, otherwise it will return the same value as Entity:GetPos.  
--- @return Vector @The NPC's shooting position.
function NPC:GetShootPos()
end

--- Returns the NPC's current target set by NPC:SetTarget.  
--- 🦟 **BUG**: [This returns nil if the NPC has no target. You should use Global.IsValid (which accounts for nil and NULL) on the return to verify validity of the target.](https://github.com/Facepunch/garrysmod-issues/issues/3132)  
--- @return Entity @Target entity
function NPC:GetTarget()
end

--- Used to give a weapon to an already spawned NPC.  
--- @param weapon string @Class name of the weapon to equip to the NPC.
--- @return Weapon @The weapon entity given to the NPC.
function NPC:Give(weapon)
end

--- Returns whether or not the NPC has the given condition.  
--- @param condition number @The condition index, see Enums/COND.
--- @return boolean @True if the NPC has the given condition, false otherwise.
function NPC:HasCondition(condition)
end

--- Force an NPC to play his Idle sound.  
function NPC:IdleSound()
end

--- Returns whether or not the NPC is performing the given schedule.  
--- @param schedule number @The schedule number, see Enums/SCHED.
--- @return boolean @True if the NPC is performing the given schedule, false otherwise.
function NPC:IsCurrentSchedule(schedule)
end

--- Returns whether the NPC is moving or not.  
--- @return boolean @Whether the NPC is moving or not.
function NPC:IsMoving()
end

--- Checks if the NPC is running an **ai_goal**. ( e.g. An npc_citizen NPC following the Player. )  
--- @return boolean @Returns true if running an ai_goal, otherwise returns false.
function NPC:IsRunningBehavior()
end

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

--- Force an NPC to play his LostEnemy sound.  
function NPC:LostEnemySound()
end

--- Tries to achieve our ideal animation state, playing any transition sequences that we need to play to get there.  
function NPC:MaintainActivity()
end

--- Causes the NPC to temporarily forget the current enemy and switch on to a better one.  
function NPC:MarkEnemyAsEluded()
end

--- Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** ConVar.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param position Vector @The target position for the NPC to walk to.
function NPC:MoveOrder(position)
end

--- Sets the goal position for the NPC.  
--- @param position Vector @The position to set as the goal
function NPC:NavSetGoal(position)
end

--- Set the goal target for an NPC.  
--- @param target Entity @The targeted entity to set the goal to.
--- @param offset Vector @The offset to apply to the targeted entity's position.
function NPC:NavSetGoalTarget(target, offset)
end

--- Creates a random path of specified minimum length between a closest start node and random node in the specified direction.  
--- @param minPathLength number @Minimum length of path in units
--- @param dir Vector @Unit vector pointing in the direction of the target random node
function NPC:NavSetRandomGoal(minPathLength, dir)
end

--- Sets a goal in x, y offsets for the npc to wander to  
--- @param xoffset number @X offset
--- @param yoffset number @Y offset
function NPC:NavSetWanderGoal(xoffset, yoffset)
end

--- Forces the NPC to play a sentence from scripts/sentences.txt  
--- @param sentence string @The sentence string to speak.
--- @param delay number @Delay in seconds until the sentence starts playing.
--- @param volume number @The volume of the sentence, from 0 to 1.
--- @return number @Returns the sentence index, -1 if the sentence couldn't be played.
function NPC:PlaySentence(sentence, delay, volume)
end

--- 🛑 **DEPRECATED**:   
--- This function crashes the game no matter how it is used and will be removed in a future update.  
--- Use NPC:ClearEnemyMemory instead.  
function NPC:RemoveMemory()
end

--- Starts an engine task.  
--- Used internally by the ai_task.  
--- @param taskID number @The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/serv
--- @param taskData number @The task data.
function NPC:RunEngineTask(taskID, taskData)
end

--- Stops any sounds (speech) the NPC is currently palying.  
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )`  
function NPC:SentenceStop()
end

--- @param act number 
function NPC:SetArrivalActivity(act)
end

function NPC:SetArrivalDirection()
end

--- Sets the distance to goal at which the NPC should stop moving and continue to other business such as doing the rest of their tasks in a schedule.  
--- @param dist number @The distance to goal that is close enough for the NPC
function NPC:SetArrivalDistance(dist)
end

function NPC:SetArrivalSequence()
end

function NPC:SetArrivalSpeed()
end

--- Sets an NPC condition.  
--- @param condition number @The condition index, see Enums/COND.
function NPC:SetCondition(condition)
end

--- Sets the weapon proficiency of an NPC (how skilled an NPC is with its current weapon).  
--- @param proficiency number @The proficiency for the NPC's current weapon
function NPC:SetCurrentWeaponProficiency(proficiency)
end

--- Sets the target for an NPC.  
--- @param enemy Entity @The enemy that the NPC should target
--- @param newenemy? boolean @Calls NPC:SetCondition(COND_NEW_ENEMY) if the new enemy is valid and not equal to the last enemy.
function NPC:SetEnemy(enemy, newenemy)
end

--- Sets the NPC's .vcd expression. Similar to Entity:PlayScene except the scene is looped until it's interrupted by default NPC behavior or NPC:ClearExpression.  
--- @param expression string @The expression filepath.
--- @return number 
function NPC:SetExpression(expression)
end

--- Updates the NPC's hull and physics hull in order to match its model scale. Entity:SetModelScale seems to take care of this regardless.  
function NPC:SetHullSizeNormal()
end

--- Sets the hull type for the NPC.  
--- @param hullType number @Hull type
function NPC:SetHullType(hullType)
end

--- Sets the last registered or memorized position for an npc. When using scheduling, the NPC will focus on navigating to the last position via nodes.  
--- ℹ **NOTE**: The navigation requires ground nodes to function properly, otherwise the NPC could only navigate in a small area. (https://developer.valvesoftware.com/wiki/Info_node)  
--- @param Position Vector @Where the NPC's last position will be set.
function NPC:SetLastPosition(Position)
end

--- Sets how how long to try rebuilding path before failing task.  
--- @param time number @How long to try rebuilding path before failing task
function NPC:SetMaxRouteRebuildTime(time)
end

--- Sets the activity the NPC uses when it moves.  
--- @param activity number @The movement activity, see Enums/ACT.
function NPC:SetMovementActivity(activity)
end

--- Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement.  
--- @param sequenceId number @The movement sequence index
function NPC:SetMovementSequence(sequenceId)
end

--- Sets the state the NPC is in to help it decide on a ideal schedule.  
--- @param state number @New NPC state, see Enums/NPC_STATE
function NPC:SetNPCState(state)
end

--- Sets the NPC's current schedule.  
--- @param schedule number @The NPC schedule, see Enums/SCHED.
function NPC:SetSchedule(schedule)
end

--- Sets the NPC's target. This is used in some engine schedules.  
--- @param entity Entity @The target of the NPC.
function NPC:SetTarget(entity)
end

--- Forces the NPC to start an engine task, this has different results for every NPC.  
--- @param task number @The id of the task to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/
--- @param taskData number @The task data as a float, not all tasks make use of it.
function NPC:StartEngineTask(task, taskData)
end

--- Resets the NPC's movement animation and velocity. Does not actually stop the NPC from moving.  
function NPC:StopMoving()
end

--- Cancels NPC:MoveOrder basically.  
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.  
--- The NPC **must** be in the player's squad for this to work.  
--- @param target Entity @Must be a player, does nothing otherwise.
function NPC:TargetOrder(target)
end

--- Marks the current NPC task as completed.  
--- This is meant to be used alongside NPC:TaskFail to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
function NPC:TaskComplete()
end

--- Marks the current NPC task as failed.  
--- This is meant to be used alongside NPC:TaskComplete to complete or fail custom Lua defined tasks. (Schedule:AddTask)  
--- @param task string @A string most likely defined as a Source Task, for more information on Tasks go to https://developer.valvesoftware.com/wiki/Task
function NPC:TaskFail(task)
end

--- Force the NPC to update information on the supplied enemy, as if it had line of sight to it.  
--- @param enemy Entity @The enemy to update.
--- @param pos Vector @The last known position of the enemy.
function NPC:UpdateEnemyMemory(enemy, pos)
end

--- Only usable on "ai" base entities.  
--- @return boolean @If we succeeded setting the behavior.
function NPC:UseActBusyBehavior()
end

--- @return boolean 
function NPC:UseAssaultBehavior()
end

--- Only usable on "ai" base entities.  
--- @return boolean @If we succeeded setting the behavior.
function NPC:UseFollowBehavior()
end

--- @return boolean 
function NPC:UseFuncTankBehavior()
end

--- @return boolean 
function NPC:UseLeadBehavior()
end

--- Undoes the other Use*Behavior functions.  
--- Only usable on "ai" base entities.  
function NPC:UseNoBehavior()
end

