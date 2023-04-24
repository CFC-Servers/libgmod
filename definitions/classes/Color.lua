--- List of all possible functions to manipulate colors.  
--- Colors are implemented in Lua thus Global.type(color) == "table" and Global.TypeID(color) == TYPE_TABLE.  
--- For type checking use Global.IsColor.  
--- Created by Global.Color, Global.HSVToColor, and Global.HSLToColor.  
--- @field r number @The red component of the color.
--- @field g number @The green component of the color.
--- @field b number @The blue component of the color.
--- @field a number @The alpha component of the color.
--- @class Color
local Color = {}
--- Sets the red, green, blue, and alpha of the color.  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:94:101
--- @param r number @The red component
--- @param g number @The green component
--- @param b number @The blue component
--- @param a number @The alpha component
function Color:SetUnpacked(r, g, b, a)
end

--- Converts a Color into HSL color space. This calls Global.ColorToHSL internally.  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:58:65
--- @return number @The hue in degrees [0, 360).
--- @return number @The saturation in the range [0, 1].
--- @return number @The lightness in the range [0, 1].
function Color:ToHSL()
end

--- Converts a Color into HSV color space. This calls Global.ColorToHSV internally.  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:67:74
--- @return number @The hue in degrees [0, 360).
--- @return number @The saturation in range [0, 1].
--- @return number @The value in range [0, 1].
function Color:ToHSV()
end

--- Returns the color as a table with four elements.  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:103:107
--- @return table @The table with elements 1 = r, 2 = g, 3 = b, 4 = a.
function Color:ToTable()
end

--- Translates the Color into a Vector, losing the alpha channel.  
--- This will also range the values from 0 - 255 to 0 - 1  
--- r / 255 -> x  
--- g / 255 -> y  
--- b / 255 -> z  
--- This is the opposite of Vector:ToColor  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:76:83
--- @return Vector @The created Vector
function Color:ToVector()
end

--- Returns the red, green, blue, and alpha of the color.  
--- @source ../../garrysmod/garrysmod/lua/includes/util/color.lua:85:92
--- @return number @Red
--- @return number @Green
--- @return number @Blue
--- @return number @Alpha
function Color:Unpack()
end

