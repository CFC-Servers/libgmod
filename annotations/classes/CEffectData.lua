--- List of all possible functions available for effect data. This is the object returned by the EffectData function and is required for util.Effect function.  
--- @class CEffectData
local CEffectData = {}
---  client|server
--- Returns the angles of the effect.  
--- @return Angle @The angles of the effect
function CEffectData:GetAngles()
end

---  client|server
--- Returns the attachment ID for the effect.  
--- @return number @The attachment ID of the effect.
function CEffectData:GetAttachment()
end

---  client|server
--- Returns byte which represents the color of the effect.  
--- @return number @The color of the effect
function CEffectData:GetColor()
end

---  client|server
--- Returns the damage type of the effect  
--- @return number @Damage type of the effect, see Enums/DMG
function CEffectData:GetDamageType()
end

---  server
--- Returns the entity index of the entity set for the effect.  
--- @return number @The entity index of the entity set for the effect.
function CEffectData:GetEntIndex()
end

---  client|server
--- Returns the entity assigned to the effect.  
--- @return Entity @The entity assigned to the effect
function CEffectData:GetEntity()
end

---  client|server
--- Returns the flags of the effect.  
--- @return number @The flags of the effect.
function CEffectData:GetFlags()
end

---  client|server
--- Returns the hit box ID of the effect.  
--- @return number @The hit box ID of the effect.
function CEffectData:GetHitBox()
end

---  client|server
--- Returns the magnitude of the effect.  
--- @return number @The magnitude of the effect.
function CEffectData:GetMagnitude()
end

---  client|server
--- Returns the material ID of the effect.  
--- @return number @The material ID of the effect.
function CEffectData:GetMaterialIndex()
end

---  client|server
--- Returns the normalized direction vector of the effect.  
--- @return Vector @The normalized direction vector of the effect.
function CEffectData:GetNormal()
end

---  client|server
--- Returns the origin position of the effect.  
--- @return Vector @The origin position of the effect.
function CEffectData:GetOrigin()
end

---  client|server
--- Returns the radius of the effect.  
--- @return number @The radius of the effect.
function CEffectData:GetRadius()
end

---  client|server
--- Returns the scale of the effect.  
--- @return number @The scale of the effect
function CEffectData:GetScale()
end

---  client|server
--- Returns the start position of the effect.  
--- @return Vector @The start position of the effect
function CEffectData:GetStart()
end

---  client|server
--- Returns the surface property index of the effect.  
--- @return number @The surface property index of the effect
function CEffectData:GetSurfaceProp()
end

---  client|server
--- Sets the angles of the effect.  
--- @param ang Angle @The new angles to be set.
function CEffectData:SetAngles(ang)
end

---  client|server
--- Sets the attachment id of the effect to be created with this effect data.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 5 bits will be networked, effectively limiting this function to 0-31 range.  
--- @param attachment number @New attachment ID of the effect.
function CEffectData:SetAttachment(attachment)
end

---  client|server
--- Sets the "color" of the effect.  
--- All this does is provide an addition 8 bits of data for the effect to use. What this will actually do will vary from effect to effect, depending on how a specific effect uses this given data, if at all.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to 0-255 range.  
--- @param color number @Color represented by a byte.
function CEffectData:SetColor(color)
end

---  client|server
--- Sets the damage type of the effect to be created with this effect data.  
--- @param damageType number @Damage type, see Enums/DMG.
function CEffectData:SetDamageType(damageType)
end

---  server
--- Sets the entity of the effect via its index.  
--- @param entIndex number @The entity index to be set.
function CEffectData:SetEntIndex(entIndex)
end

---  client|server
--- Sets the entity of the effect to be created with this effect data.  
--- @param entity Entity @Entity of the effect, mostly used for parenting.
function CEffectData:SetEntity(entity)
end

---  client|server
--- Sets the flags of the effect. Can be used to change the appearance of a MuzzleFlash effect.  
--- ## Example values for MuzzleFlash effect  
--- Flags |  Description |  
--- ------|--------------|  
--- 1 | Regular muzzleflash|  
--- 5 | Combine muzzleflash|  
--- 7 | Regular muzzle but bigger|  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to `0-255` range.  
--- @param flags number @The flags of the effect
function CEffectData:SetFlags(flags)
end

---  client|server
--- Sets the hit box index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 11 bits are networked, effectively limiting this function to 0-2047 range.  
--- @param hitBoxIndex number @The hit box index of the effect.
function CEffectData:SetHitBox(hitBoxIndex)
end

---  client|server
--- Sets the magnitude of the effect.  
--- ℹ **NOTE**: Internally stored as a float with 12 bit precision for networking purposes, limited to range of 0-1023.  
--- @param magnitude number @The magnitude of the effect.
function CEffectData:SetMagnitude(magnitude)
end

---  client|server
--- Sets the material index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 12 bits are networked, effectively limiting this function to 0-4095 range.  
--- @param materialIndex number @The material index of the effect.
function CEffectData:SetMaterialIndex(materialIndex)
end

---  client|server
--- Sets the normalized (length=1) direction vector of the effect to be created with this effect data. This **must** be a normalized vector for networking purposes.  
--- @param normal Vector @The normalized direction vector of the effect.
function CEffectData:SetNormal(normal)
end

---  client|server
--- Sets the origin of the effect to be created with this effect data.  
--- ℹ **NOTE**: Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component)  
--- @param origin Vector @Origin of the effect.
function CEffectData:SetOrigin(origin)
end

---  client|server
--- Sets the radius of the effect to be created with this effect data.  
--- ℹ **NOTE**: Internally stored as a float, but networked as a 10bit float, and is clamped to 0-1023 range.  
--- @param radius number @Radius of the effect.
function CEffectData:SetRadius(radius)
end

---  client|server
--- Sets the scale of the effect to be created with this effect data.  
--- @param scale number @Scale of the effect.
function CEffectData:SetScale(scale)
end

---  client|server
--- Sets the start of the effect to be created with this effect data.  
--- ℹ **NOTE**: Limited to world bounds (+-16386 on every axis) and has horrible networking precision. (17 bit float per component)  
--- @param start Vector @Start of the effect.
function CEffectData:SetStart(start)
end

---  client|server
--- Sets the surface property index of the effect.  
--- ℹ **NOTE**: Internally stored as an integer, but only first 8 bits are networked, effectively limiting this function to `-1`-`254` range.(yes, that's not a mistake)  
--- @param surfaceProperties number @The surface property index of the effect.
function CEffectData:SetSurfaceProp(surfaceProperties)
end
