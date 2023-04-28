--- NextBots are a new system to create NPCs in the Source Engine, utilizing the more powerful navmesh system for navigation over the old node based system.  
--- This page lists all possible functions usable with NextBots.  
--- See NextBot NPC Creation for more information on how to create NextBot NPCs.  
--- @class NextBot
local NextBot = {}
---  server
--- Become a ragdoll and remove the entity.  
--- @param info CTakeDamageInfo @Damage info passed from an onkilled event
--- @return Entity @The created ragdoll, if any.
function NextBot:BecomeRagdoll(info)
end

---  server
--- Should only be called in NEXTBOT:BodyUpdate. This sets the `move_x` and `move_y` pose parameters of the bot to fit how they're currently moving, sets the animation speed (Entity:GetPlaybackRate) to suit the ground speed, and calls Entity:FrameAdvance.  
--- 🦟 **BUG**: [This function might cause crashes with some activities.](https://github.com/Facepunch/garrysmod-issues/issues/3420)  
function NextBot:BodyMoveXY()
end

---  server
--- Like NextBot:FindSpots but only returns a vector.  
--- @param type string @Either "random", "near", "far"
--- @param options table @This table should contain the search info
--- @return Vector @If it finds a spot it will return a vector
function NextBot:FindSpot(type, options)
end

---  server
--- Returns a table of hiding spots.  
--- @param specs table @This table should contain the search info
--- @return table @An unsorted table of tables containing:
function NextBot:FindSpots(specs)
end

---  server
--- Returns the currently running activity  
--- @return number @The current activity
function NextBot:GetActivity()
end

---  server
--- Returns the Field of View of the Nextbot NPC, used for its vision functionality, such as NextBot:IsAbleToSee.  
--- @return number @The current FOV of the nextbot
function NextBot:GetFOV()
end

---  server
--- Returns the maximum range the nextbot can see other nextbots/players at. See NextBot:IsAbleToSee.  
--- @return number @The current vision range
function NextBot:GetMaxVisionRange()
end

---  server
--- Returns squared distance to an entity or a position.  
--- See also NextBot:GetRangeTo.  
--- @param to Vector @The position to measure distance to
--- @return number @The squared distance
function NextBot:GetRangeSquaredTo(to)
end

---  server
--- Returns the distance to an entity or position.  
--- See also NextBot:GetRangeSquaredTo.  
--- @param to Vector @The position to measure distance to
--- @return number @The distance
function NextBot:GetRangeTo(to)
end

---  server
--- Returns the solid mask for given NextBot.  
--- @return number @The solid mask, see Enums/CONTENTS and Enums/MASK
function NextBot:GetSolidMask()
end

---  server
--- Called from Lua when the NPC is stuck. This should only be called from the behaviour coroutine - so if you want to override this function and do something special that yields - then go for it.  
--- You should always call self.loco:ClearStuck() in this function to reset the stuck status - so it knows it's unstuck. See CLuaLocomotion:ClearStuck.  
function NextBot:HandleStuck()
end

---  server
--- Returns if the Nextbot NPC can see the give entity or not.  
--- ⚠ **WARNING**: Using this function creates the nextbot vision interface which will cause a significant performance hit!  
--- @param ent Entity @The entity to test if we can see
--- @param useFOV? number @Whether to use the Field of View of the Nextbot
--- @return boolean @If the nextbot can see or not
function NextBot:IsAbleToSee(ent, useFOV)
end

---  server
--- To be called in the behaviour coroutine only! Will yield until the bot has reached the goal or is stuck  
--- @param pos Vector @The position we want to get to
--- @param options table @A table containing a bunch of tweakable options
--- @return string @Either "failed", "stuck", "timeout" or "ok" - depending on how the NPC got on
function NextBot:MoveToPos(pos, options)
end

---  server
--- To be called in the behaviour coroutine only! Plays an animation sequence and waits for it to end before returning.  
--- @param name string @The sequence name
--- @param speed? number @Playback Rate of that sequence
function NextBot:PlaySequenceAndWait(name, speed)
end

---  server
--- Sets the Field of View for the Nextbot NPC, used for its vision functionality, such as NextBot:IsAbleToSee.  
--- @param fov number @The new FOV
function NextBot:SetFOV(fov)
end

---  server
--- Sets the maximum range the nextbot can see other nextbots/players at. See NextBot:IsAbleToSee.  
--- @param range number @The new vision range to set.
function NextBot:SetMaxVisionRange(range)
end

---  server
--- Sets the solid mask for given NextBot.  
--- The default solid mask of a NextBot is MASK_NPCSOLID.  
--- @param mask number @The new mask, see Enums/CONTENTS and Enums/MASK
function NextBot:SetSolidMask(mask)
end

---  server
--- Start doing an activity (animation)  
--- @param activity number @One of the Enums/ACT
function NextBot:StartActivity(activity)
end

