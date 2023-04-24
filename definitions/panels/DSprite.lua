--- A panel that draws a sprite on the player's HUD with the given IMaterial, Global.Color and rotation.  
--- A shortcut for this is Global.CreateSprite().  
--- @class DSprite : DPanel
local DSprite = {}
--- Gets the color the sprite is using as a modifier.  
--- @return table @The Global.Color being used.
function DSprite:GetColor()
end

--- No Description  
--- @return Vector 
function DSprite:GetHandle()
end

--- Gets the material the sprite is using.  
--- @return IMaterial @The material in use.
function DSprite:GetMaterial()
end

--- Gets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @return number @The anti-clockwise rotation in degrees.
function DSprite:GetRotation()
end

--- Sets the color modifier for the sprite.  
--- @param color table @The Global.Color to use.
function DSprite:SetColor(color)
end

--- Seems to be an unused feature. Does nothing.  
--- @param vec Vector 
function DSprite:SetHandle(vec)
end

--- Sets the source material for the sprite.  
--- @param material IMaterial @The material to use
function DSprite:SetMaterial(material)
end

--- Sets the 2D rotation angle of the sprite, in the plane of the screen.  
--- @param ang number @The anti-clockwise rotation in degrees.
function DSprite:SetRotation(ang)
end

