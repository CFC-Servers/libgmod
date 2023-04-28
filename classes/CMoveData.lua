--- A class used to store the inputs from CUserCmd and other information related to the current movement simulation, such as velocity, position and so on.  
--- This can only be accessed during GM:SetupMove , GM:Move , GM:PlayerTick and GM:FinishMove.  
--- @class CMoveData
local CMoveData = {}
---  client|server
--- Adds keys to the move data, as if player pressed them.  
--- @param keys number @Keys to add, see Enums/IN
function CMoveData:AddKey(keys)
end

---  client|server
--- Gets the aim angle. Seems to be same as CMoveData:GetAngles.  
--- @return Angle @Aiming angle
function CMoveData:GetAbsMoveAngles()
end

---  client|server
--- Gets the aim angle. On client is the same as Entity:GetAngles.  
--- @return Angle @Aiming angle
function CMoveData:GetAngles()
end

---  client|server
--- Gets which buttons are down  
--- @return number @An integer representing which buttons are down, see Enums/IN
function CMoveData:GetButtons()
end

---  client|server
--- Returns the center of the player movement constraint. See CMoveData:SetConstraintCenter.  
--- @return Vector @The constraint origin.
function CMoveData:GetConstraintCenter()
end

---  client|server
--- Returns the radius that constrains the players movement. See CMoveData:SetConstraintRadius.  
--- @return number @The constraint radius
function CMoveData:GetConstraintRadius()
end

---  client|server
--- Returns the player movement constraint speed scale. See CMoveData:SetConstraintSpeedScale.  
--- @return number @The constraint speed scale
function CMoveData:GetConstraintSpeedScale()
end

---  client|server
--- Returns the width (distance from the edge of the radius, inward) where the actual movement constraint functions.  
--- @return number @The constraint width
function CMoveData:GetConstraintWidth()
end

---  client|server
--- Returns an internal player movement variable `m_outWishVel`.  
--- @return Vector 
function CMoveData:GetFinalIdealVelocity()
end

---  client|server
--- Returns an internal player movement variable `m_outJumpVel`.  
--- @return Vector 
function CMoveData:GetFinalJumpVelocity()
end

---  client|server
--- Returns an internal player movement variable `m_outStepHeight`.  
--- @return number 
function CMoveData:GetFinalStepHeight()
end

---  client|server
--- Returns the players forward speed.  
--- @return number @speed
function CMoveData:GetForwardSpeed()
end

---  client|server
--- Gets the number passed to "impulse" console command  
--- @return number @The impulse
function CMoveData:GetImpulseCommand()
end

---  client|server
--- Returns the maximum client speed of the player  
--- @return number @The maximum client speed
function CMoveData:GetMaxClientSpeed()
end

---  client|server
--- Returns the maximum speed of the player.  
--- @return number @The maximum speed
function CMoveData:GetMaxSpeed()
end

---  client|server
--- Returns the angle the player is moving at. For more info, see CMoveData:SetMoveAngles.  
--- @return Angle @The move direction
function CMoveData:GetMoveAngles()
end

---  client|server
--- Gets the aim angle. Only works clientside, server returns same as CMoveData:GetAngles.  
--- @return Angle @The aim angle
function CMoveData:GetOldAngles()
end

---  client|server
--- Get which buttons were down last frame  
--- @return number @An integer representing which buttons were down, see Enums/IN
function CMoveData:GetOldButtons()
end

---  client|server
--- Gets the player's position.  
--- @return Vector @The player's position.
function CMoveData:GetOrigin()
end

---  client|server
--- Returns the strafe speed of the player.  
--- @return number @speed
function CMoveData:GetSideSpeed()
end

---  client|server
--- Returns the vertical speed of the player. ( Z axis of CMoveData:GetVelocity )  
--- @return number @Vertical speed
function CMoveData:GetUpSpeed()
end

---  client|server
--- Gets the players velocity.  
--- 🦟 **BUG**: [This will return Vector(0,0,0) sometimes when walking on props.](https://github.com/Facepunch/garrysmod-issues/issues/3413)  
--- @return Vector @The players velocity
function CMoveData:GetVelocity()
end

---  client|server
--- Returns whether the key is down or not  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Is the key down or not
function CMoveData:KeyDown(key)
end

---  client|server
--- Returns whether the key was pressed. If you want to check if the key is held down, try CMoveData:KeyDown  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key pressed or not.
function CMoveData:KeyPressed(key)
end

---  client|server
--- Returns whether the key was released  
--- @param key number @A key to test, see Enums/IN
--- @return boolean @Was the key released or not.
function CMoveData:KeyReleased(key)
end

---  client|server
--- Returns whether the key was down or not.  
--- Unlike CMoveData:KeyDown, it will return false if CMoveData:KeyPressed is true and it will return true if CMoveData:KeyReleased is true.  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key down or not
function CMoveData:KeyWasDown(key)
end

---  client|server
--- Sets absolute move angles.( ? ) Doesn't seem to do anything.  
--- @param ang Angle @New absolute move angles
function CMoveData:SetAbsMoveAngles(ang)
end

---  client|server
--- Sets angles.  
--- 🦟 **BUG**: [This function does nothing.](https://github.com/Facepunch/garrysmod-issues/issues/2382)  
--- @param ang Angle @The angles.
function CMoveData:SetAngles(ang)
end

---  client|server
--- Sets the pressed buttons on the move data  
--- @param buttons number @A number representing which buttons are down, see Enums/IN
function CMoveData:SetButtons(buttons)
end

---  client|server
--- Sets the center of the player movement constraint. See CMoveData:SetConstraintRadius.  
--- @param pos Vector @The constraint origin.
function CMoveData:SetConstraintCenter(pos)
end

---  client|server
--- Sets the radius that constrains the players movement.  
--- Works with conjunction of:  
--- * CMoveData:SetConstraintWidth  
--- * CMoveData:SetConstraintSpeedScale  
--- * CMoveData:SetConstraintCenter  
--- @param radius number @The new constraint radius
function CMoveData:SetConstraintRadius(radius)
end

---  client|server
--- Sets the player movement constraint speed scale. This will be applied to the player within the constraint radius when approaching its edge.  
--- @param  number @The constraint speed scale
function CMoveData:SetConstraintSpeedScale()
end

---  client|server
--- Sets  the width (distance from the edge of the radius, inward) where the actual movement constraint functions.  
--- @param  number @The constraint width
function CMoveData:SetConstraintWidth()
end

---  client|server
--- Sets an internal player movement variable `m_outWishVel`.  
--- @param idealVel Vector 
function CMoveData:SetFinalIdealVelocity(idealVel)
end

---  client|server
--- Sets an internal player movement variable `m_outJumpVel`.  
--- @param jumpVel Vector 
function CMoveData:SetFinalJumpVelocity(jumpVel)
end

---  client|server
--- Sets an internal player movement variable `m_outStepHeight`.  
--- @param stepHeight number 
function CMoveData:SetFinalStepHeight(stepHeight)
end

---  client|server
--- Sets players forward speed.  
--- @param speed number @New forward speed
function CMoveData:SetForwardSpeed(speed)
end

---  client|server
--- Sets the impulse command. This isn't actually utilised in the engine anywhere.  
--- @param impulse number @The impulse to set
function CMoveData:SetImpulseCommand(impulse)
end

---  client|server
--- Sets the maximum player speed. Player won't be able to run or sprint faster then this value.  
--- This also automatically sets CMoveData:SetMaxSpeed when used in the GM:SetupMove hook. You must set it manually in the GM:Move hook.  
--- This must be called on both client and server to avoid prediction errors.  
--- This will **not** reduce speed in air.  
--- ℹ **NOTE**: Setting this to 0 will not make the player stationary. It won't do anything.  
--- @param maxSpeed number @The new maximum speed
function CMoveData:SetMaxClientSpeed(maxSpeed)
end

---  client|server
--- Sets the maximum speed of the player. This must match with CMoveData:SetMaxClientSpeed both, on server and client.  
--- Doesn't seem to be doing anything on it's own, use CMoveData:SetMaxClientSpeed instead.  
--- @param maxSpeed number @The new maximum speed
function CMoveData:SetMaxSpeed(maxSpeed)
end

---  client|server
--- Sets the serverside move angles, making the movement keys act as if player was facing that direction.  
--- 🦟 **BUG**: [This does nothing clientside.](https://github.com/Facepunch/garrysmod-issues/issues/1181)  
--- @param dir Angle @The aim direction.
function CMoveData:SetMoveAngles(dir)
end

---  client|server
--- Sets old aim angles. ( ? ) Doesn't seem to be doing anything.  
--- @param aimAng Angle @The old angles
function CMoveData:SetOldAngles(aimAng)
end

---  client|server
--- Sets the 'old' pressed buttons on the move data. These buttons are used to work out which buttons have been released, which have just been pressed and which are being held down.  
--- @param buttons number @A number representing which buttons were down, see Enums/IN
function CMoveData:SetOldButtons(buttons)
end

---  client|server
--- Sets the players position.  
--- @param pos Vector @The position
function CMoveData:SetOrigin(pos)
end

---  client|server
--- Sets players strafe speed.  
--- @param speed number @Strafe speed
function CMoveData:SetSideSpeed(speed)
end

---  client|server
--- Sets vertical speed of the player. ( Z axis of CMoveData:SetVelocity )  
--- @param speed number @Vertical speed to set
function CMoveData:SetUpSpeed(speed)
end

---  client|server
--- Sets the player's velocity  
--- @param velocity Vector @The velocity to set
function CMoveData:SetVelocity(velocity)
end

