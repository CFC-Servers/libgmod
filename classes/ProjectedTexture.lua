--- @class ProjectedTexture
local ProjectedTexture = {}
---  client
--- Returns the constant attenuation of the projected texture, which can also be set by ProjectedTexture:SetConstantAttenuation.  
--- @return number @The constant attenuation
function ProjectedTexture:GetConstantAttenuation()
end

---  client
--- Returns the linear attenuation of the projected texture, which can also be set by ProjectedTexture:SetLinearAttenuation.  
--- @return number @The linear attenuation.
function ProjectedTexture:GetLinearAttenuation()
end

---  client
--- Returns the shadow depth slope scale bias of the projected texture.  
--- Set by ProjectedTexture:SetShadowSlopeScaleDepthBias.  
--- @return number @The current shadow depth slope scale bias.
function ProjectedTexture:GetShadowSlopeScaleDepthBias()
end

---  client
--- Returns the texture of the ProjectedTexture, which was previously set by ProjectedTexture:SetTexture  
--- @return ITexture @The texture of the ProjectedTexture.
function ProjectedTexture:GetTexture()
end

---  client
--- Returns the texture frame of the ProjectedTexture, which was previously set by ProjectedTexture:SetTextureFrame  
--- @return number @The texture frame.
function ProjectedTexture:GetTextureFrame()
end

---  client
--- Move the Projected Texture to the specified position.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param position Vector 
function ProjectedTexture:SetPos(position)
end

---  client
--- Sets the quadratic attenuation of the projected texture.  
--- See also ProjectedTexture:SetLinearAttenuation and ProjectedTexture:SetConstantAttenuation.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param quadAtten number 
function ProjectedTexture:SetQuadraticAttenuation(quadAtten)
end

---  client
--- For animated textures, this will choose which frame in the animation will be projected.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param frame number @The frame index to use.
function ProjectedTexture:SetTextureFrame(frame)
end

