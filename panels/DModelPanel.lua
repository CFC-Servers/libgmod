--- DModelPanel is a VGUI element that projects a 3D model onto a 2D plane.  
--- @class DModelPanel : DButton
local DModelPanel = {}
---  client
--- Returns the ambient lighting used on the rendered entity.  
--- @return table @The color of the ambient lighting.
function DModelPanel:GetAmbientLight()
end

---  client
--- Returns the animation speed of the panel entity, see DModelPanel:SetAnimSpeed.  
--- @return number @The animation speed.
function DModelPanel:GetAnimSpeed()
end

---  client
--- Returns whether or not the panel entity should be animated when the default DModelPanel:LayoutEntity function is called.  
--- @return boolean @True if the panel entity can be animated with Entity:SetSequence directly, false otherwise.
function DModelPanel:GetAnimated()
end

---  client
--- Returns the position of the model viewing camera.  
--- @return Vector @The position of the camera.
function DModelPanel:GetCamPos()
end

---  client
--- Returns the color of the rendered entity.  
--- @return table @The color of the entity, see Color.
function DModelPanel:GetColor()
end

---  client
--- Returns the entity being rendered by the model panel.  
--- @return CSEnt @The rendered entity (client-side)
function DModelPanel:GetEntity()
end

---  client
--- Returns the FOV (field of view) the camera is using.  
--- @return number @The FOV of the camera.
function DModelPanel:GetFOV()
end

---  client
--- Returns the angles of the model viewing camera. Is **nil** until changed with DModelPanel:SetLookAng.  
--- @return Angle @The angles of the camera.
function DModelPanel:GetLookAng()
end

---  client
--- Returns the position the viewing camera is pointing toward.  
--- @return Vector @The position the camera is pointing toward.
function DModelPanel:GetLookAt()
end

---  client
--- Gets the model of the rendered entity.  
--- @return string @The model of the rendered entity.
function DModelPanel:GetModel()
end

---  client
--- Called when the entity of the DModelPanel was drawn.  
--- This is a rendering hook with 3d drawing context.  
--- @param ent Entity @The clientside entity of the DModelPanel that has been drawn.
function DModelPanel:PostDrawModel(ent)
end

---  client
--- Called **before** the entity of the DModelPanel is drawn.  
--- @param ent Entity @The clientside entity of the DModelPanel that has been drawn.
--- @return boolean @Return false to stop the entity from being drawn
function DModelPanel:PreDrawModel(ent)
end

---  client
--- This function is used in the **DModelPanel:LayoutEntity**. It will set the active model to the last set animation using Entity:SetSequence. By default, it is the walking animation.  
function DModelPanel:RunAnimation()
end

---  client
--- Sets the ambient lighting used on the rendered entity.  
--- @param color table @The color of the ambient lighting.
function DModelPanel:SetAmbientLight(color)
end

---  client
--- Sets the speed used by DModelPanel:RunAnimation to advance frame on an entity sequence.  
--- ℹ **NOTE**: Entity:FrameAdvance doesn't seem to have any functioning arguments and therefore changing this will not have any affect on the panel entity's sequence speed without reimplementation. It only affects the value returned by DModelPanel:GetAnimSpeed  
--- @param animSpeed number @The animation speed.
function DModelPanel:SetAnimSpeed(animSpeed)
end

---  client
--- Sets whether or not to animate the entity when the default DModelPanel:LayoutEntity is called.  
--- @param animated boolean @True to animate, false otherwise.
function DModelPanel:SetAnimated(animated)
end

---  client
--- Sets the position of the camera.  
--- @param pos Vector @The position to set the camera at.
function DModelPanel:SetCamPos(pos)
end

---  client
--- Sets the color of the rendered entity.  
--- ℹ **NOTE**: This does not work on Garry's Mod player models since they use a different color system. To modify a player model color, see Example 2 on the DModelPanel page  
--- @param color table @The render color of the entity.
function DModelPanel:SetColor(color)
end

---  client
--- Sets the directional lighting used on the rendered entity.  
--- @param direction number @The light direction, see Enums/BOX.
--- @param color table @The color of the directional lighting.
function DModelPanel:SetDirectionalLight(direction, color)
end

---  client
--- Sets the entity to be rendered by the model panel.  
--- ℹ **NOTE**: If you set `ent` to a shared entity you must set `ent` to nil before removing this panel or else a "Trying to remove server entity on client!" error is thrown  
--- @param ent Entity @The new panel entity.
function DModelPanel:SetEntity(ent)
end

---  client
--- Sets the panel camera's FOV (field of view).  
--- @param fov number @The field of view value.
function DModelPanel:SetFOV(fov)
end

---  client
--- Sets the angles of the camera.  
--- @param ang Angle @The angles to set the camera to.
function DModelPanel:SetLookAng(ang)
end

---  client
--- Makes the panel's camera face the given position. Basically sets the camera's angles (DModelPanel:SetLookAng) after doing some math.  
--- @param pos Vector @The position to orient the camera toward.
function DModelPanel:SetLookAt(pos)
end

---  client
--- Sets the model of the rendered entity.  
--- ℹ **NOTE**: This function may give a different model than expected. This is not a bug, however this problem may appear with some player models which are renamed several times in a wrong way. To solve that, you can use Entity:SetModel and Entity:SetModelName on the internal panel entity. More information : https://github.com/Facepunch/garrysmod-issues/issues/4534.  
--- @param model string @The model to apply to the entity.
function DModelPanel:SetModel(model)
end

---  client
--- No Description  
--- @param path string @The path to the scene file
function DModelPanel:StartScene(path)
end

