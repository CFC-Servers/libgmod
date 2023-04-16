--- @class CMoveData
--- A class used to store the inputs from CUserCmd and other information related to the current movement simulation, such as velocity, position and so on.  
--- This can only be accessed during GM:SetupMove , GM:Move , GM:PlayerTick and GM:FinishMove.  
local CMoveData = {}
--- Adds keys to the move data, as if player pressed them.  
--- @param keys number @Keys to add, see Enums/IN
function CMoveData:AddKey(keys)
end

--- Gets the aim angle. Seems to be same as CMoveData:GetAngles.  
--- @return Angle @Aiming angle
function CMoveData:GetAbsMoveAngles()
end

--- Gets the aim angle. On client is the same as Entity:GetAngles.  
--- @return Angle @Aiming angle
function CMoveData:GetAngles()
end

--- Gets which buttons are down  
--- @return number @An integer representing which buttons are down, see Enums/IN
function CMoveData:GetButtons()
end

--- Returns the radius that constrains the players movement.  
--- @return number @The constraint radius
function CMoveData:GetConstraintRadius()
end

--- Returns the players forward speed.  
--- @return number @speed
function CMoveData:GetForwardSpeed()
end

--- Gets the number passed to "impulse" console command  
--- @return number @The impulse
function CMoveData:GetImpulseCommand()
end

--- Returns the maximum client speed of the player  
--- @return number @The maximum client speed
function CMoveData:GetMaxClientSpeed()
end

--- Returns the maximum speed of the player.  
--- @return number @The maximum speed
function CMoveData:GetMaxSpeed()
end

--- Returns the angle the player is moving at. For more info, see CMoveData:SetMoveAngles.  
--- @return Angle @The move direction
function CMoveData:GetMoveAngles()
end

--- Gets the aim angle. Only works clientside, server returns same as CMoveData:GetAngles.  
--- @return Angle @The aim angle
function CMoveData:GetOldAngles()
end

--- Get which buttons were down last frame  
--- @return number @An integer representing which buttons were down, see Enums/IN
function CMoveData:GetOldButtons()
end

--- Gets the player's position.  
--- @return Vector @The player's position.
function CMoveData:GetOrigin()
end

--- Returns the strafe speed of the player.  
--- @return number @speed
function CMoveData:GetSideSpeed()
end

--- Returns the vertical speed of the player. ( Z axis of CMoveData:GetVelocity )  
--- @return number @Vertical speed
function CMoveData:GetUpSpeed()
end

--- Gets the players velocity.  
--- 🦟 **BUG**: [This will return Vector(0,0,0) sometimes when walking on props.](https://github.com/Facepunch/garrysmod-issues/issues/3413)  
--- @return Vector @The players velocity
function CMoveData:GetVelocity()
end

--- Returns whether the key is down or not  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Is the key down or not
function CMoveData:KeyDown(key)
end

--- Returns whether the key was pressed. If you want to check if the key is held down, try CMoveData:KeyDown  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key pressed or not.
function CMoveData:KeyPressed(key)
end

--- Returns whether the key was released  
--- @param key number @A key to test, see Enums/IN
--- @return boolean @Was the key released or not.
function CMoveData:KeyReleased(key)
end

--- Returns whether the key was down or not.  
--- Unlike CMoveData:KeyDown, it will return false if CMoveData:KeyPressed is true and it will return true if CMoveData:KeyReleased is true.  
--- @param key number @The key to test, see Enums/IN
--- @return boolean @Was the key down or not
function CMoveData:KeyWasDown(key)
end

--- Sets absolute move angles.( ? ) Doesn't seem to do anything.  
--- @param ang Angle @New absolute move angles
function CMoveData:SetAbsMoveAngles(ang)
end

--- Sets angles.  
--- 🦟 **BUG**: [This function does nothing.](https://github.com/Facepunch/garrysmod-issues/issues/2382)  
--- @param ang Angle @The angles.
function CMoveData:SetAngles(ang)
end

--- Sets the pressed buttons on the move data  
--- @param buttons number @A number representing which buttons are down, see Enums/IN
function CMoveData:SetButtons(buttons)
end

--- Sets the radius that constrains the players movement.  
--- It is unknown what this function does as changing its values doesn't affect player movement.  
--- @param radius number @The new constraint radius
function CMoveData:SetConstraintRadius(radius)
end

--- Sets players forward speed.  
--- @param speed number @New forward speed
function CMoveData:SetForwardSpeed(speed)
end

--- Sets the impulse command. This isn't actually utilised in the engine anywhere.  
--- @param impulse number @The impulse to set
function CMoveData:SetImpulseCommand(impulse)
end

--- Sets the maximum player speed. Player won't be able to run or sprint faster then this value.  
--- This also automatically sets CMoveData:SetMaxSpeed when used in the GM:SetupMove hook. You must set it manually in the GM:Move hook.  
--- This must be called on both client and server to avoid prediction errors.  
--- This will **not** reduce speed in air.  
--- ℹ **NOTE**: Setting this to 0 will not make the player stationary. It won't do anything.  
--- @param maxSpeed number @The new maximum speed
function CMoveData:SetMaxClientSpeed(maxSpeed)
end

--- Sets the maximum speed of the player. This must match with CMoveData:SetMaxClientSpeed both, on server and client.  
--- Doesn't seem to be doing anything on it's own, use CMoveData:SetMaxClientSpeed instead.  
--- @param maxSpeed number @The new maximum speed
function CMoveData:SetMaxSpeed(maxSpeed)
end

--- Sets the serverside move angles, making the movement keys act as if player was facing that direction.  
--- 🦟 **BUG**: [This does nothing clientside.](https://github.com/Facepunch/garrysmod-issues/issues/1181)  
--- @param dir Angle @The aim direction.
function CMoveData:SetMoveAngles(dir)
end

--- Sets old aim angles. ( ? ) Doesn't seem to be doing anything.  
--- @param aimAng Angle @The old angles
function CMoveData:SetOldAngles(aimAng)
end

--- Sets the 'old' pressed buttons on the move data. These buttons are used to work out which buttons have been released, which have just been pressed and which are being held down.  
--- @param buttons number @A number representing which buttons were down, see Enums/IN
function CMoveData:SetOldButtons(buttons)
end

--- Sets the players position.  
--- @param pos Vector @The position
function CMoveData:SetOrigin(pos)
end

--- Sets players strafe speed.  
--- @param speed number @Strafe speed
function CMoveData:SetSideSpeed(speed)
end

--- Sets vertical speed of the player. ( Z axis of CMoveData:SetVelocity )  
--- @param speed number @Vertical speed to set
function CMoveData:SetUpSpeed(speed)
end

--- Sets the player's velocity  
--- @param velocity Vector @The velocity to set
function CMoveData:SetVelocity(velocity)
end

