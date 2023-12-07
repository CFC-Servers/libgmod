--- @class CLuaEmitter
local CLuaEmitter = {}
---  client
--- Returns whether this emitter is 3D or not. This is set when creating the emitter with Global.ParticleEmitter.  
--- @return boolean @Whether this emitter is 3D or not.
function CLuaEmitter:Is3D()
end

---  client
--- The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box.  
--- @param radius number @Particle radius.
function CLuaEmitter:SetParticleCullRadius(radius)
end

