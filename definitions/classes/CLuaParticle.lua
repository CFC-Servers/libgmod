--- List of all possible functions available for Lua particles. This is the object returned by the CLuaEmitter:Add function.  
--- @class CLuaParticle
local CLuaParticle = {}
--- Returns the air resistance of the particle.  
--- @return number @The air resistance of the particle
function CLuaParticle:GetAirResistance()
end

--- Returns the angular velocity of the particle  
--- @return Angle @The angular velocity of the particle
function CLuaParticle:GetAngleVelocity()
end

--- Returns the current orientation of the particle.  
--- @return Angle @The angles of the particle
function CLuaParticle:GetAngles()
end

--- Returns the 'bounciness' of the particle.  
--- @return number @The 'bounciness' of the particle
function CLuaParticle:GetBounce()
end

--- Returns the color of the particle.  
--- @return number @Red part of the color
--- @return number @Green part of the color
--- @return number @Blue part of the color
function CLuaParticle:GetColor()
end

--- Returns the amount of time in seconds after which the particle will be destroyed.  
--- @return number @The amount of time in seconds after which the particle will be destroyed
function CLuaParticle:GetDieTime()
end

--- Returns the alpha value that the particle will reach on its death.  
--- @return number @The alpha value the particle will fade to
function CLuaParticle:GetEndAlpha()
end

--- Returns the length that the particle will reach on its death.  
--- @return number @The length the particle will reach
function CLuaParticle:GetEndLength()
end

--- Returns the size that the particle will reach on its death.  
--- @return number @The size the particle will reach
function CLuaParticle:GetEndSize()
end

--- Returns the gravity of the particle.  
--- @return Vector @The gravity of the particle.
function CLuaParticle:GetGravity()
end

--- Returns the 'life time' of the particle, how long the particle existed since its creation.  
--- This value will always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- It can be manipulated using CLuaParticle:SetLifeTime.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @return number @How long the particle existed, in seconds.
function CLuaParticle:GetLifeTime()
end

--- Returns the current material of the particle.  
--- @return IMaterial @The material.
function CLuaParticle:GetMaterial()
end

--- Returns the absolute position of the particle.  
--- @return Vector @The absolute position of the particle.
function CLuaParticle:GetPos()
end

--- Returns the current rotation of the particle in radians, this should only be used for 2D particles.  
--- @return number @The current rotation of the particle in radians
function CLuaParticle:GetRoll()
end

--- Returns the current rotation speed of the particle in radians, this should only be used for 2D particles.  
--- @return number @The current rotation speed of the particle in radians
function CLuaParticle:GetRollDelta()
end

--- Returns the alpha value which the particle has when it's created.  
--- @return number @The alpha value which the particle has when it's created.
function CLuaParticle:GetStartAlpha()
end

--- Returns the length which the particle has when it's created.  
--- @return number @The length which the particle has when it's created.
function CLuaParticle:GetStartLength()
end

--- Returns the size which the particle has when it's created.  
--- @return number @The size which the particle has when it's created.
function CLuaParticle:GetStartSize()
end

--- Returns the current velocity of the particle.  
--- @return Vector @The current velocity of the particle.
function CLuaParticle:GetVelocity()
end

--- Sets the air resistance of the the particle.  
--- @param airResistance number @New air resistance.
function CLuaParticle:SetAirResistance(airResistance)
end

--- Sets the angular velocity of the the particle.  
--- @param angVel Angle @New angular velocity.
function CLuaParticle:SetAngleVelocity(angVel)
end

--- Sets the angles of the particle.  
--- @param ang Angle @New angle.
function CLuaParticle:SetAngles(ang)
end

--- Sets the 'bounciness' of the the particle.  
--- @param bounce number @New 'bounciness' of the particle
function CLuaParticle:SetBounce(bounce)
end

--- Sets the whether the particle should collide with the world or not.  
--- @param shouldCollide boolean @Whether the particle should collide with the world or not
function CLuaParticle:SetCollide(shouldCollide)
end

--- Sets the function that gets called whenever the particle collides with the world.  
--- @param collideFunc function @Collide callback, the arguments are:
function CLuaParticle:SetCollideCallback(collideFunc)
end

--- Sets the color of the particle.  
--- @param r number @The red component.
--- @param g number @The green component.
--- @param b number @The blue component.
function CLuaParticle:SetColor(r, g, b)
end

--- Sets the time where the particle will be removed.  
--- @param dieTime number @The new die time.
function CLuaParticle:SetDieTime(dieTime)
end

--- Sets the alpha value of the particle that it will reach when it dies.  
--- @param endAlpha number @The new alpha value of the particle that it will reach when it dies.
function CLuaParticle:SetEndAlpha(endAlpha)
end

--- Sets the length of the particle that it will reach when it dies.  
--- @param endLength number @The new length of the particle that it will reach when it dies.
function CLuaParticle:SetEndLength(endLength)
end

--- Sets the size of the particle that it will reach when it dies.  
--- @param endSize number @The new size of the particle that it will reach when it dies.
function CLuaParticle:SetEndSize(endSize)
end

--- Sets the directional gravity aka. acceleration of the particle.  
--- @param gravity Vector @The directional gravity.
function CLuaParticle:SetGravity(gravity)
end

--- Sets the 'life time' of the particle, how long the particle existed since its creation.  
--- This value should always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @param lifeTime number @The new life time of the particle.
function CLuaParticle:SetLifeTime(lifeTime)
end

--- Sets whether the particle should be affected by lighting.  
--- @param useLighting boolean @Whether the particle should be affected by lighting.
function CLuaParticle:SetLighting(useLighting)
end

--- Sets the material of the particle.  
--- @param mat IMaterial @The new material to set
function CLuaParticle:SetMaterial(mat)
end

--- Sets when the particles think function should be called next, this uses the synchronized server time returned by Global.CurTime.  
--- @param nextThink number @Next think time.
function CLuaParticle:SetNextThink(nextThink)
end

--- Sets the absolute position of the particle.  
--- @param pos Vector @The new particle position.
function CLuaParticle:SetPos(pos)
end

--- Sets the roll of the particle in radians. This should only be used for 2D particles.  
--- @param roll number @The new rotation of the particle in radians.
function CLuaParticle:SetRoll(roll)
end

--- Sets the rotation speed of the particle in radians. This should only be used for 2D particles.  
--- @param rollDelta number @The new rotation speed of the particle in radians.
function CLuaParticle:SetRollDelta(rollDelta)
end

--- Sets the initial alpha value of the particle.  
--- @param startAlpha number @Initial alpha.
function CLuaParticle:SetStartAlpha(startAlpha)
end

--- Sets the initial length value of the particle.  
--- @param startLength number @Initial length.
function CLuaParticle:SetStartLength(startLength)
end

--- Sets the initial size value of the particle.  
--- @param startSize number @Initial size.
function CLuaParticle:SetStartSize(startSize)
end

--- Sets the think function of the particle.  
--- @param thinkFunc function @Think function
function CLuaParticle:SetThinkFunction(thinkFunc)
end

--- Sets the velocity of the particle.  
--- @param vel Vector @The new velocity of the particle.
function CLuaParticle:SetVelocity(vel)
end

--- Scales the velocity based on the particle speed.  
--- @param doScale? boolean @Use velocity scaling.
function CLuaParticle:SetVelocityScale(doScale)
end

