--- List of all possible functions available for LuaEmitters. This is the object returned by the Global.ParticleEmitter function.  
--- @class CLuaEmitter
local CLuaEmitter = {}
---  client
--- Creates a new CLuaParticle with the given material and position.  
--- @param material string @The particles material
--- @param position Vector @The position to spawn the particle on.
--- @return CLuaParticle @The created particle, if any.
function CLuaEmitter:Add(material, position)
end

---  client
--- Manually renders all particles the emitter has created.  
function CLuaEmitter:Draw()
end

---  client
--- Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die.  
function CLuaEmitter:Finish()
end

---  client
--- Returns the amount of active particles of this emitter.  
--- @return number @The amount of active particles of this emitter
function CLuaEmitter:GetNumActiveParticles()
end

---  client
--- Returns the position of this emitter. This is set when creating the emitter with Global.ParticleEmitter.  
--- @return Vector @Position of this particle emitter.
function CLuaEmitter:GetPos()
end

---  client
--- Returns whether this emitter is 3D or not. This is set when creating the emitter with Global.ParticleEmitter.  
--- @return boolean @Whether this emitter is 3D or not.
function CLuaEmitter:Is3D()
end

---  client
--- Returns whether this CLuaEmitter is valid or not.  
--- @return boolean @Whether this CLuaEmitter is valid or not.
function CLuaEmitter:IsValid()
end

---  client
--- Sets the bounding box for this emitter.  
--- Usually the bounding box is automatically determined by the particles, but this function overrides it.  
--- @param mins Vector @The minimum position of the box
--- @param maxs Vector @The maximum position of the box
function CLuaEmitter:SetBBox(mins, maxs)
end

---  client
--- This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ).  
--- @param distanceMin number @Min distance where the alpha becomes 0.
--- @param distanceMax number @Max distance where the alpha starts fading.
function CLuaEmitter:SetNearClip(distanceMin, distanceMax)
end

---  client
--- Prevents all particles of the emitter from automatically drawing.  
--- @param noDraw boolean @Whether we should draw the particles ( false ) or not ( true )
function CLuaEmitter:SetNoDraw(noDraw)
end

---  client
--- The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box.  
--- @param radius number @Particle radius.
function CLuaEmitter:SetParticleCullRadius(radius)
end

---  client
--- Sets the position of the particle emitter.  
--- @param position Vector @New position.
function CLuaEmitter:SetPos(position)
end

