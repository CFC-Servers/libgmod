--- @class ITexture
--- An object representing game texture, like a .vtf file. Do not confuse with IMaterial. Returned by IMaterial:GetTexture  
local ITexture = {}
--- Invokes the generator of the texture. Reloads file based textures from disk and clears render target textures.  
function ITexture:Download()
end

--- Returns the color of the specified pixel, only works for textures created from PNG files.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param x number @The X coordinate.
--- @param y number @The Y coordinate.
--- @return table @The color of the pixel as a Color.
function ITexture:GetColor(x, y)
end

--- Returns the true unmodified height of the texture.  
--- @return number @height
function ITexture:GetMappingHeight()
end

--- Returns the true unmodified width of the texture.  
--- @return number @width
function ITexture:GetMappingWidth()
end

--- Returns the name of the texture, in most cases the path.  
--- @return string @name
function ITexture:GetName()
end

--- Returns the modified height of the texture, this value may be affected by mipmapping and other factors.  
--- @return number @height
function ITexture:Height()
end

--- Returns whenever the texture is valid. (i.e. was loaded successfully or not)  
--- ℹ **NOTE**: The "error" texture is a valid texture, and therefore this function will return false when used on it. Use ITexture:IsErrorTexture, instead.  
--- @return boolean @Whether the texture was loaded successfully or not.
function ITexture:IsError()
end

--- Returns whenever the texture is the error texture (pink and black checkerboard pattern).  
--- @return boolean @Whether the texture is the error texture or not.
function ITexture:IsErrorTexture()
end

--- Returns the modified width of the texture, this value may be affected by mipmapping and other factors.  
--- @return number @width
function ITexture:Width()
end

