--- @class CLuaParticle
local CLuaParticle = {}
---  client
--- Returns the air resistance of the particle.  
--- @return number @The air resistance of the particle
function CLuaParticle:GetAirResistance()
end

---  client
--- Returns the amount of time in seconds after which the particle will be destroyed.  
--- @return number @The amount of time in seconds after which the particle will be destroyed
function CLuaParticle:GetDieTime()
end

---  client
--- Returns the alpha value that the particle will reach on its death.  
--- @return number @The alpha value the particle will fade to
function CLuaParticle:GetEndAlpha()
end

---  client
--- Returns the 'life time' of the particle, how long the particle existed since its creation.  
--- This value will always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- It can be manipulated using CLuaParticle:SetLifeTime.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @return number @How long the particle existed, in seconds.
function CLuaParticle:GetLifeTime()
end

---  client
--- Sets the alpha value of the particle that it will reach when it dies.  
--- @param endAlpha number @The new alpha value of the particle that it will reach when it dies.
function CLuaParticle:SetEndAlpha(endAlpha)
end

---  client
--- Sets the 'life time' of the particle, how long the particle existed since its creation.  
--- This value should always be between 0 and CLuaParticle:GetDieTime.  
--- It changes automatically as time goes.  
--- If the life time of the particle will be more than CLuaParticle:GetDieTime, it will be removed.  
--- @param lifeTime number @The new life time of the particle.
function CLuaParticle:SetLifeTime(lifeTime)
end

---  client
--- Sets when the particles think function should be called next, this uses the synchronized server time returned by Global.CurTime.  
--- @param nextThink number @Next think time.
function CLuaParticle:SetNextThink(nextThink)
end

---  client
--- Sets the initial alpha value of the particle.  
--- @param startAlpha number @Initial alpha.
function CLuaParticle:SetStartAlpha(startAlpha)
end

---  client
--- Sets the initial length value of the particle.  
--- @param startLength number @Initial length.
function CLuaParticle:SetStartLength(startLength)
end

---  client
--- Sets the think function of the particle.  
--- @param thinkFunc function @Think function
function CLuaParticle:SetThinkFunction(thinkFunc)
end

