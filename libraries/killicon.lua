_G.killicon = {}
---  client
--- Creates new kill icon using a texture.  
--- @param class string @Weapon or entity class
--- @param texture string @Path to the texture
--- @param color table @Color of the kill icon
function killicon.Add(class, texture, color)
end

---  client
--- Adds kill icon for given weapon/entity class using special font.  
--- @param class string @Weapon or entity class.
--- @param font string @Font to be used.
--- @param symbol string @The symbol to be used.
--- @param color table @Color of the killicon.
--- @param heightScale_? number @Used internally to correct certain killicons to more closely match their visual size.
function killicon.AddFont(class, font, symbol, color, heightScale_)
end

