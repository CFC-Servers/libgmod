--- @class CEffectData
--- List of all possible functions available for effect data. This is the object returned by the EffectData function and is required for util.Effect function.  
local CEffectData = {}
--- Returns the angles of the effect.  
--- @return Angle @The angles of the effect
function CEffectData:GetAngles()
end

--- Returns the attachment ID for the effect.  
--- @return number @The attachment ID of the effect.
function CEffectData:GetAttachment()
end

--- Returns byte which represents the color of the effect.  
--- @return number @The color of the effect
function CEffectData:GetColor()
end

--- Returns the damage type of the effect  
--- @return number @Damage type of the effect, see Enums/DMG
function CEffectData:GetDamageType()
end

--- Returns the entity index of the entity set for the effect.  
--- @return number @The entity index of the entity set for the effect.
function CEffectData:GetEntIndex()
end

--- Returns the entity assigned to the effect.  
--- @return Entity @The entity assigned to the effect
function CEffectData:GetEntity()
end

--- Returns the flags of the effect.  
--- @return number @The flags of the effect.
function CEffectData:GetFlags()
end

--- Returns the hit box ID of the effect.  
--- @return number @The hit box ID of the effect.
function CEffectData:GetHitBox()
end

--- Returns the magnitude of the effect.  
--- @return number @The magnitude of the effect.
function CEffectData:GetMagnitude()
end

--- Returns the material ID of the effect.  
--- @return number @The material ID of the effect.
function CEffectData:GetMaterialIndex()
end

--- Returns the normalized direction vector of the effect.  
--- @return Vector @The normalized direction vector of the effect.
function CEffectData:GetNormal()
end

--- Returns the origin position of the effect.  
--- @return Vector @The origin position of the effect.
function CEffectData:GetOrigin()
end

--- Returns the radius of the effect.  
--- @return number @The radius of the effect.
function CEffectData:GetRadius()
end

--- Returns the scale of the effect.  
--- @return number @The scale of the effect
function CEffectData:GetScale()
end

--- Returns the start position of the effect.  
--- @return Vector @The start position of the effect
function CEffectData:GetStart()
end

--- Returns the surface property index of the effect.  
--- @return number @The surface property index of the effect
function CEffectData:GetSurfaceProp()
end

--- Sets the angles of the effect.  
--- @param ang Angle @The new angles to be set.
function CEffectData:SetAngles(ang)
end

--- Sets the attachment id of the effect to be created with this effect data.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 5 bits will be networked.  
--- @param attachment number @New attachment ID of the effect.
function CEffectData:SetAttachment(attachment)
end

--- Sets the color of the effect.  
--- @param color number @Color represented by a byte.
function CEffectData:SetColor(color)
end

--- Sets the damage type of the effect to be created with this effect data.  
--- @param damageType number @Damage type, see Enums/DMG.
function CEffectData:SetDamageType(damageType)
end

--- Sets the entity of the effect via its index.  
--- @param entIndex number @The entity index to be set.
function CEffectData:SetEntIndex(entIndex)
end

--- Sets the entity of the effect to be created with this effect data.  
--- @param entity Entity @Entity of the effect, mostly used for parenting.
function CEffectData:SetEntity(entity)
end

--- Sets the flags of the effect.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 8 bits will be networked.  
--- @param flags number @The flags of the effect
function CEffectData:SetFlags(flags)
end

--- Sets the hit box index of the effect.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 11 bits will be networked.  
--- @param hitBoxIndex number @The hit box index of the effect.
function CEffectData:SetHitBox(hitBoxIndex)
end

--- Sets the magnitude of the effect.  
--- @param magnitude number @The magnitude of the effect.
function CEffectData:SetMagnitude(magnitude)
end

--- Sets the material index of the effect.  
--- ℹ **NOTE**: This is internally stored as an integer, but only the first 11 bits will be networked.  
--- @param materialIndex number @The material index of the effect.
function CEffectData:SetMaterialIndex(materialIndex)
end

--- Sets the normalized direction vector of the effect to be created with this effect data.  
--- @param normal Vector @The normalized direction vector of the effect.
function CEffectData:SetNormal(normal)
end

--- Sets the origin of the effect to be created with this effect data.  
--- @param origin Vector @Origin of the effect.
function CEffectData:SetOrigin(origin)
end

--- Sets the radius of the effect to be created with this effect data.  
--- ℹ **NOTE**: This is clamped internally from 0 to 1023.  
--- @param radius number @Radius of the effect.
function CEffectData:SetRadius(radius)
end

--- Sets the scale of the effect to be created with this effect data.  
--- @param scale number @Scale of the effect.
function CEffectData:SetScale(scale)
end

--- Sets the start of the effect to be created with this effect data.  
--- @param start Vector @Start of the effect.
function CEffectData:SetStart(start)
end

--- Sets the surface property index of the effect.  
--- @param surfaceProperties number @The surface property index of the effect.
function CEffectData:SetSurfaceProp(surfaceProperties)
end

