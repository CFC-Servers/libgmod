--- A panel that draws a sprite on the player's HUD with the given IMaterial, Global.Color and rotation.  
--- A shortcut for this is Global.CreateSprite().  
--- @class DSprite : DPanel
local DSprite = {}
---  client
--- Gets the color the sprite is using as a modifier.  
--- @return table @The Global.Color being used.
function DSprite:GetColor()
end

---  client
--- 🛑 **DEPRECATED**:   
--- Returns the value set by DSprite:SetHandle  
--- @deprecated
--- @return Vector 
function DSprite:GetHandle()
end

---  client
--- Gets the material the sprite is using.  
--- @return IMaterial @The material in use.
function DSprite:GetMaterial()
end

---  client
--- Gets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @return number @The anti-clockwise rotation in degrees.
function DSprite:GetRotation()
end

---  client
--- Sets the color modifier for the sprite.  
--- @param color table @The Global.Color to use.
function DSprite:SetColor(color)
end

---  client
--- 🛑 **DEPRECATED**:   
--- Seems to be an unused feature. Does nothing.  
--- @param vec Vector 
--- @deprecated
function DSprite:SetHandle(vec)
end

---  client
--- Sets the source material for the sprite.  
--- @param material IMaterial @The material to use
function DSprite:SetMaterial(material)
end

---  client
--- Sets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @param ang number @The anti-clockwise rotation in degrees.
function DSprite:SetRotation(ang)
end

