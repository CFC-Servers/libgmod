--- GWEN is a system that allows you to load a spritesheet and generate a skin out of it.  
_G.GWEN = {}
---  client|menu
--- Used in derma skins to create a bordered rectangle drawing function from an image. The texture is taken either from last argument or from SKIN.GwenTexture when material source it's not supplied  
--- @param x number @The X coordinate on the texture
--- @param y number @The Y coordinate on the texture
--- @param w number @Width of the area on texture
--- @param h number @Height of the area on texture
--- @param left number @Left width of border
--- @param top number @Top width of border
--- @param right number @Right width of border
--- @param bottom number @Bottom width of border
--- @param source? IMaterial @Texture of source image to create a bordered rectangle from
--- @return function @The drawing function
function GWEN.CreateTextureBorder(x, y, w, h, left, top, right, bottom, source)
end

---  client|menu
--- Used in derma skins to create a rectangle drawing function from an image. The rectangle will not be scaled, but instead it will be drawn in the center of the box. The texture is taken from SKIN.GwenTexture when mat_override it's not defined  
--- @param x number @The X coordinate on the texture
--- @param y number @The Y coordinate on the texture
--- @param w number @Width of the area on texture
--- @param h number @Height of the area on texture
--- @param mat_override___null IMaterial @Optional
--- @return function @The drawing function
function GWEN.CreateTextureCentered(x, y, w, h, mat_override___null)
end

---  client|menu
--- Used in derma skins to create a rectangle drawing function from an image. The texture of the rectangle will be scaled. The texture is taken from SKIN.GwenTexture when mat_override is not supplied  
--- @param x number @The X coordinate on the texture
--- @param y number @The Y coordinate on the texture
--- @param w number @Width of the area on texture
--- @param h number @Height of the area on texture
--- @param mat_override___null IMaterial @Optional
--- @return function @The drawing function
function GWEN.CreateTextureNormal(x, y, w, h, mat_override___null)
end

---  client|menu
--- When used in a material skin, it returns a color value from a point in the skin image.  
--- @param x number @X position of the pixel to get the color from.
--- @param y number @Y position of the pixel to get the color from.
--- @return table @The color of the point on the skin as a Color.
function GWEN.TextureColor(x, y)
end

