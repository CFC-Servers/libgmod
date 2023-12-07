--- @class CLuaLocomotion
local CLuaLocomotion = {}
---  server
--- Sets the location we want to get to.  
--- Each call of Approach moves the NextBot 1 unit towards the specified goal. The size of this unit is determined by SetDesiredSpeed; the default is `0` (each call of Approach moves the NextBot 0).  
--- To achieve smooth movement with Approach, it should be called in a hook like Think, as shown in the example.  
--- @param goal Vector @The vector we want to get to.
--- @param goalweight number @If unsure then set this to `1`.
function CLuaLocomotion:Approach(goal, goalweight)
end

---  server
--- Return unit vector in XY plane describing our direction of motion - even if we are currently not moving  
--- @return Vector @A vector representing the X and Y movement
function CLuaLocomotion:GetGroundMotionVector()
end

---  server
--- Returns the current ground normal.  
--- @return Vector @The current ground normal.
function CLuaLocomotion:GetGroundNormal()
end

---  server
--- Sets the deceleration speed.  
--- @param deceleration number @New deceleration speed (default is 400)
function CLuaLocomotion:SetDeceleration(deceleration)
end

---  server
--- Sets the locomotion's gravity.  
--- ℹ **NOTE**: With values 0 or below, or even lower positive values, the nextbot will start to drift sideways, use CLuaLocomotion:SetVelocity to counteract this.  
--- @param gravity number @New gravity to set
function CLuaLocomotion:SetGravity(gravity)
end

---  server
--- Sets the height of the bot's jump  
--- @param height number @Height (default is 58)
function CLuaLocomotion:SetJumpHeight(height)
end

