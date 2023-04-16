--- @class CLuaLocomotion
--- This class is essentially what controls a NextBot NPC. You can access it in a NextBot NPC by using **self.loco** variable.  
local CLuaLocomotion = {}
--- Sets the location we want to get to.  
--- Each call of Approach moves the NextBot 1 unit towards the specified goal. The size of this unit is determined by SetDesiredSpeed; the default is `0` (each call of Approach moves the NextBot 0).  
--- To achieve smooth movement with Approach, it should be called in a hook like Think, as shown in the example.  
--- @param goal Vector @The vector we want to get to.
--- @param goalweight number @If unsure then set this to `1`.
function CLuaLocomotion:Approach(goal, goalweight)
end

--- Removes the stuck status from the bot  
function CLuaLocomotion:ClearStuck()
end

--- Sets the direction we want to face  
--- @param goal Vector @The vector we want to face
function CLuaLocomotion:FaceTowards(goal)
end

--- Returns the acceleration speed  
--- @return number @Current acceleration speed
function CLuaLocomotion:GetAcceleration()
end

--- Returns whether the Nextbot is allowed to avoid obstacles or not.  
--- @return boolean @Whether this bot is allowed to try to avoid obstacles.
function CLuaLocomotion:GetAvoidAllowed()
end

--- Returns whether the Nextbot is allowed to climb or not.  
--- @return boolean @Whether this bot is allowed to climb.
function CLuaLocomotion:GetClimbAllowed()
end

--- Returns the current acceleration as a vector  
--- @return Vector @Current acceleration
function CLuaLocomotion:GetCurrentAcceleration()
end

--- Gets the height the bot is scared to fall from  
--- @return number @Current death drop height
function CLuaLocomotion:GetDeathDropHeight()
end

--- Gets the deceleration speed  
--- @return number @Current deceleration speed
function CLuaLocomotion:GetDeceleration()
end

--- Returns the desired movement speed set by CLuaLocomotion:SetDesiredSpeed  
--- @return number @The desired movement speed.
function CLuaLocomotion:GetDesiredSpeed()
end

--- Returns the locomotion's gravity.  
--- @return number @The gravity.
function CLuaLocomotion:GetGravity()
end

--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving  
--- @return Vector @A vector representing the X and Y movement
function CLuaLocomotion:GetGroundMotionVector()
end

--- Returns the current ground normal.  
--- @return Vector @The current ground normal.
function CLuaLocomotion:GetGroundNormal()
end

--- Returns whether the Nextbot is allowed to jump gaps or not.  
--- @return boolean @Whether this bot is allowed to jump gaps.
function CLuaLocomotion:GetJumpGapsAllowed()
end

--- Gets the height of the bot's jump  
--- @return number @Current jump height
function CLuaLocomotion:GetJumpHeight()
end

--- Returns maximum jump height of this CLuaLocomotion.  
--- @return number @The maximum jump height.
function CLuaLocomotion:GetMaxJumpHeight()
end

--- Returns the max rate at which the NextBot can visually rotate.  
--- @return number @Maximum yaw rate
function CLuaLocomotion:GetMaxYawRate()
end

--- Returns the NextBot this locomotion is associated with.  
--- @return NextBot @The nextbot
function CLuaLocomotion:GetNextBot()
end

--- Gets the max height the bot can step up  
--- @return number @Current step height
function CLuaLocomotion:GetStepHeight()
end

--- Returns the current movement velocity as a vector  
--- @return Vector @Current velocity
function CLuaLocomotion:GetVelocity()
end

--- Returns whether this CLuaLocomotion can reach and/or traverse/move in given CNavArea.  
--- @param area CNavArea @The area to test
--- @return boolean @Whether this CLuaLocomotion can traverse given CNavArea.
function CLuaLocomotion:IsAreaTraversable(area)
end

--- Returns true if we're trying to move.  
--- @return boolean @Whether we're trying to move or not.
function CLuaLocomotion:IsAttemptingToMove()
end

--- Returns true of the locomotion engine is jumping or climbing  
--- @return boolean @Whether we're climbing or jumping or not
function CLuaLocomotion:IsClimbingOrJumping()
end

--- Returns whether the nextbot this locomotion is attached to is on ground or not.  
--- @return boolean @Whether the nextbot is on ground or not.
function CLuaLocomotion:IsOnGround()
end

--- Returns true if we're stuck  
--- @return boolean @Whether we're stuck or not
function CLuaLocomotion:IsStuck()
end

--- Returns whether or not the target in question is on a ladder or not.  
--- @return boolean @If the target is on a ladder or not.
function CLuaLocomotion:IsUsingLadder()
end

--- Makes the bot jump. It must be on ground (Entity:IsOnGround) and its model must have `ACT_JUMP` activity.  
function CLuaLocomotion:Jump()
end

--- Makes the bot jump across a gap. The bot must be on ground (Entity:IsOnGround) and its model must have `ACT_JUMP` activity.  
--- @param landingGoal Vector 
--- @param landingForward Vector 
function CLuaLocomotion:JumpAcrossGap(landingGoal, landingForward)
end

--- Sets the acceleration speed  
--- @param speed number @Speed acceleration (default is 400)
function CLuaLocomotion:SetAcceleration(speed)
end

--- Sets whether the Nextbot is allowed try to to avoid obstacles or not. This is used during path generation. Works similarly to `nb_allow_avoiding` convar. By default bots are allowed to try to avoid obstacles.  
--- @param allowed boolean @Whether this bot should be allowed to try to avoid obstacles.
function CLuaLocomotion:SetAvoidAllowed(allowed)
end

--- Sets whether the Nextbot is allowed to climb or not. This is used during path generation. Works similarly to `nb_allow_climbing` convar. By default bots are allowed to climb.  
--- @param allowed boolean @Whether this bot should be allowed to climb.
function CLuaLocomotion:SetClimbAllowed(allowed)
end

--- Sets the height the bot is scared to fall from.  
--- @param height number @Height (default is 200)
function CLuaLocomotion:SetDeathDropHeight(height)
end

--- Sets the deceleration speed.  
--- @param deceleration number @New deceleration speed (default is 400)
function CLuaLocomotion:SetDeceleration(deceleration)
end

--- Sets movement speed.  
--- @param speed number @The new desired speed
function CLuaLocomotion:SetDesiredSpeed(speed)
end

--- Sets the locomotion's gravity.  
--- ℹ **NOTE**: With values 0 or below, or even lower positive values, the nextbot will start to drift sideways, use CLuaLocomotion:SetVelocity to counteract this.  
--- @param gravity number @New gravity to set
function CLuaLocomotion:SetGravity(gravity)
end

--- Sets whether the Nextbot is allowed to jump gaps or not. This is used during path generation. Works similarly to `nb_allow_gap_jumping` convar. By default bots are allowed to jump gaps.  
--- @param allowed boolean @Whether this bot should be allowed to jump gaps.
function CLuaLocomotion:SetJumpGapsAllowed(allowed)
end

--- Sets the height of the bot's jump  
--- @param height number @Height (default is 58)
function CLuaLocomotion:SetJumpHeight(height)
end

--- Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing.  
--- @param yawRate number @Desired new maximum yaw rate
function CLuaLocomotion:SetMaxYawRate(yawRate)
end

--- Sets the max height the bot can step up  
--- @param height number @Height (default is 18)
function CLuaLocomotion:SetStepHeight(height)
end

--- Sets the current movement velocity  
--- @param velocity Vector 
function CLuaLocomotion:SetVelocity(velocity)
end

