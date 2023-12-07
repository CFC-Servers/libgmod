--- @class CEffectData
local CEffectData = {}
---  client|server
--- Returns the start position of the effect.  
--- @return Vector @The start position of the effect
function CEffectData:GetStart()
end

---  client|server
--- Sets the magnitude of the effect.  
--- ℹ **NOTE**: Internally stored as a float with 12 bit precision for networking purposes, limited to range of 0-1023.  
--- @param magnitude number @The magnitude of the effect.
function CEffectData:SetMagnitude(magnitude)
end

---  client|server
--- Sets the radius of the effect to be created with this effect data.  
--- ℹ **NOTE**: Internally stored as a float, but networked as a 10bit float, and is clamped to 0-1023 range.  
--- @param radius number @Radius of the effect.
function CEffectData:SetRadius(radius)
end

