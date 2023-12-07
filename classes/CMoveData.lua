--- @class CMoveData
local CMoveData = {}
---  client|server
--- Adds keys to the move data, as if player pressed them.  
--- @param keys number @Keys to add, see Enums/IN
function CMoveData:AddKey(keys)
end

---  client|server
--- Gets the aim angle. On client is the same as Entity:GetAngles.  
--- @return Angle @Aiming angle
function CMoveData:GetAngles()
end

---  client|server
--- Returns the radius that constrains the players movement. See CMoveData:SetConstraintRadius.  
--- @return number @The constraint radius
function CMoveData:GetConstraintRadius()
end

---  client|server
--- Returns an internal player movement variable `m_outWishVel`.  
--- @return Vector 
function CMoveData:GetFinalIdealVelocity()
end

---  client|server
--- Returns the players forward speed.  
--- @return number @speed
function CMoveData:GetForwardSpeed()
end

---  client|server
--- Returns the angle the player is moving at. For more info, see CMoveData:SetMoveAngles.  
--- @return Angle @The move direction
function CMoveData:GetMoveAngles()
end

---  client|server
--- Returns the vertical speed of the player. ( Z axis of CMoveData:GetVelocity )  
--- @return number @Vertical speed
function CMoveData:GetUpSpeed()
end

---  client|server
--- Returns whether the key was released  
--- @param key number @A key to test, see Enums/IN
--- @return boolean @Was the key released or not.
function CMoveData:KeyReleased(key)
end

---  client|server
--- Sets vertical speed of the player. ( Z axis of CMoveData:SetVelocity )  
--- @param speed number @Vertical speed to set
function CMoveData:SetUpSpeed(speed)
end

