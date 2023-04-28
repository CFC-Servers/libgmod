--- A client side projected texture, created by Global.ProjectedTexture.  
--- @class ProjectedTexture
local ProjectedTexture = {}
---  client
--- Returns the angle of the ProjectedTexture, which were previously set by ProjectedTexture:SetAngles  
--- @return Angle @The angles of the ProjectedTexture.
function ProjectedTexture:GetAngles()
end

---  client
--- Returns the brightness of the ProjectedTexture, which was previously set by ProjectedTexture:SetBrightness  
--- @return number @The brightness of the ProjectedTexture.
function ProjectedTexture:GetBrightness()
end

---  client
--- Returns the color of the ProjectedTexture, which was previously set by ProjectedTexture:SetColor.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @return table @Color, the color of the ProjectedTexture.
function ProjectedTexture:GetColor()
end

---  client
--- Returns the constant attenuation of the projected texture, which can also be set by ProjectedTexture:SetConstantAttenuation.  
--- @return number @The constant attenuation
function ProjectedTexture:GetConstantAttenuation()
end

---  client
--- Returns whether shadows are enabled for this ProjectedTexture, which was previously set by ProjectedTexture:SetEnableShadows  
--- @return boolean @Whether shadows are enabled.
function ProjectedTexture:GetEnableShadows()
end

---  client
--- Returns the projection distance of the ProjectedTexture, which was previously set by ProjectedTexture:SetFarZ  
--- @return number @The projection distance of the ProjectedTexture.
function ProjectedTexture:GetFarZ()
end

---  client
--- Returns the horizontal FOV of the ProjectedTexture, which was previously set by ProjectedTexture:SetHorizontalFOV or ProjectedTexture:SetFOV  
--- @return number @The horizontal FOV of the ProjectedTexture.
function ProjectedTexture:GetHorizontalFOV()
end

---  client
--- Returns the linear attenuation of the projected texture, which can also be set by ProjectedTexture:SetLinearAttenuation.  
--- @return number @The linear attenuation.
function ProjectedTexture:GetLinearAttenuation()
end

---  client
--- Returns the NearZ value of the ProjectedTexture, which was previously set by ProjectedTexture:SetNearZ  
--- @return number @NearZ of the ProjectedTexture.
function ProjectedTexture:GetNearZ()
end

---  client
--- Returns the current orthographic settings of the Projected Texture. To set these values, use ProjectedTexture:SetOrthographic.  
--- @return boolean @Whether or not this projected texture is orthographic
--- @return number @left
--- @return number @top
--- @return number @right
--- @return number @bottom
function ProjectedTexture:GetOrthographic()
end

---  client
--- Returns the position of the ProjectedTexture, which was previously set by ProjectedTexture:SetPos  
--- @return Vector @The position of the ProjectedTexture.
function ProjectedTexture:GetPos()
end

---  client
--- Returns the quadratic attenuation of the projected texture, which can also be set by ProjectedTexture:SetQuadraticAttenuation.  
--- @return number @The quadratic attenuation
function ProjectedTexture:GetQuadraticAttenuation()
end

---  client
--- Returns the shadow depth bias of the projected texture.  
--- Set by ProjectedTexture:SetShadowDepthBias.  
--- @return number @The current shadow depth bias.
function ProjectedTexture:GetShadowDepthBias()
end

---  client
--- Returns the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more.  
--- Set by ProjectedTexture:SetShadowFilter.  
--- @return number @The current shadow filter size.
function ProjectedTexture:GetShadowFilter()
end

---  client
--- Returns the shadow depth slope scale bias of the projected texture.  
--- Set by ProjectedTexture:SetShadowSlopeScaleDepthBias.  
--- @return number @The current shadow depth slope scale bias.
function ProjectedTexture:GetShadowSlopeScaleDepthBias()
end

---  client
--- Returns the target entity of this projected texture.  
--- @return Entity @The current target entity.
function ProjectedTexture:GetTargetEntity()
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
--- Returns the vertical FOV of the ProjectedTexture, which was previously set by ProjectedTexture:SetVerticalFOV or ProjectedTexture:SetFOV  
--- @return number @The vertical FOV of the ProjectedTexture.
function ProjectedTexture:GetVerticalFOV()
end

---  client
--- Returns true if the projected texture is valid (i.e. has not been removed), false otherwise.  
--- Instead of calling this directly it's a good idea to call Global.IsValid in case the variable is nil.  
--- ```  
--- IsValid( ptexture )  
--- ```  
--- This not only checks whether the projected texture is valid - but also checks whether it's nil.  
--- @return boolean @Whether the projected texture is valid.
function ProjectedTexture:IsValid()
end

---  client
--- Removes the projected texture. After calling this, ProjectedTexture:IsValid will return false, and any hooks with the projected texture as the identifier will be automatically deleted.  
function ProjectedTexture:Remove()
end

---  client
--- Sets the angles (direction) of the projected texture.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param angle Angle 
function ProjectedTexture:SetAngles(angle)
end

---  client
--- Sets the brightness of the projected texture.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param brightness number @The brightness to give the projected texture.
function ProjectedTexture:SetBrightness(brightness)
end

---  client
--- Sets the color of the projected texture.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param color table @Must be a Color
function ProjectedTexture:SetColor(color)
end

---  client
--- Sets the constant attenuation of the projected texture.  
--- See also ProjectedTexture:SetLinearAttenuation and ProjectedTexture:SetQuadraticAttenuation.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param constAtten number 
function ProjectedTexture:SetConstantAttenuation(constAtten)
end

---  client
--- Enable or disable shadows cast from the projected texture.  
--- ℹ **NOTE**: As with all types of projected textures (including the player's flashlight and env_projectedtexture), there can only be 8 projected textures with shadows enabled in total.  
--- This limit can be increased with the launch parameter `-numshadowtextures LIMIT` where `LIMIT` is the new limit.  
--- Naturally, many projected lights with shadows enabled will drastically decrease framerate.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param newState boolean 
function ProjectedTexture:SetEnableShadows(newState)
end

---  client
--- Sets the angle of projection.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param fov number @Must be higher than 0 and lower than 180
function ProjectedTexture:SetFOV(fov)
end

---  client
--- Sets the distance at which the projected texture ends.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param farZ number 
function ProjectedTexture:SetFarZ(farZ)
end

---  client
--- Sets the horizontal angle of projection without affecting the vertical angle.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param hFOV number @The new horizontal Field Of View for the projected texture
function ProjectedTexture:SetHorizontalFOV(hFOV)
end

---  client
--- Sets the linear attenuation of the projected texture.  
--- See also ProjectedTexture:SetConstantAttenuation and ProjectedTexture:SetQuadraticAttenuation.  
--- The default value of linear attenuation when the projected texture is created is 100. (others are 0, as you are not supposed to mix them)  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param linearAtten number 
function ProjectedTexture:SetLinearAttenuation(linearAtten)
end

---  client
--- Sets the distance at which the projected texture begins its projection.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- ℹ **NOTE**: Setting this to 0 will disable the projected texture completely! This may be useful if you want to disable a projected texture without actually removing it  
--- ℹ **NOTE**: This seems to affect the rendering of shadows - a higher Near Z value will have shadows begin to render closer to their casting object. Comparing a low Near Z value (like 1) with a normal one (12) or high one (1000) is the easiest way to understand this artifact  
--- @param nearZ number 
function ProjectedTexture:SetNearZ(nearZ)
end

---  client
--- Changes the current projected texture between orthographic and perspective projection.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- Shadows dont work. (For non static props and for most map brushes)  
--- @param orthographic boolean @When false, all other arguments are ignored and the texture is reset to perspective projection.
--- @param left number @The amount of units left from the projected texture's origin to project.
--- @param top number @The amount of units upwards from the projected texture's origin to project.
--- @param right number @The amount of units right from the projected texture's origin to project.
--- @param bottom number @The amount of units downwards from the projected texture's origin to project.
function ProjectedTexture:SetOrthographic(orthographic, left, top, right, bottom)
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
--- Sets the shadow depth bias of the projected texture.  
--- The initial value is `0.0001`. Normal projected textures obey the value of the `mat_depthbias_shadowmap` ConVar.  
--- ⁉ **VALIDATE**: You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param bias number @The shadow depth bias to set.
function ProjectedTexture:SetShadowDepthBias(bias)
end

---  client
--- Sets the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more. The initial value is the value of `r_projectedtexture_filter` ConVar.  
--- ⁉ **VALIDATE**: You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param filter number @The shadow filter size to set.
function ProjectedTexture:SetShadowFilter(filter)
end

---  client
--- Sets the shadow depth slope scale bias of the projected texture.  
--- The initial value is `2`. Normal projected textures obey the value of the `mat_slopescaledepthbias_shadowmap` ConVar.  
--- ⁉ **VALIDATE**: You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param bias number @The shadow depth slope scale bias to set.
function ProjectedTexture:SetShadowSlopeScaleDepthBias(bias)
end

---  client
--- Sets the target entity for this projected texture, meaning it will only be lighting the given entity and the world.  
--- ⁉ **VALIDATE**: You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param target? Entity @The target entity, or `NULL` to reset.
function ProjectedTexture:SetTargetEntity(target)
end

---  client
--- Sets the texture to be projected.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param texture string @The name of the texture
function ProjectedTexture:SetTexture(texture)
end

---  client
--- For animated textures, this will choose which frame in the animation will be projected.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param frame number @The frame index to use.
function ProjectedTexture:SetTextureFrame(frame)
end

---  client
--- Sets the vertical angle of projection without affecting the horizontal angle.  
--- You must call ProjectedTexture:Update after using this function for it to take effect.  
--- @param vFOV number @The new vertical Field Of View for the projected texture
function ProjectedTexture:SetVerticalFOV(vFOV)
end

---  client
--- Updates the Projected Light and applies all previously set parameters.  
function ProjectedTexture:Update()
end

