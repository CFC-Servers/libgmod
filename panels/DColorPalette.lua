--- @class DColorPalette
local DColorPalette = {}
---  client|menu
--- Returns the size of each palette button. Set by DColorPalette:SetButtonSize.  
--- @return number @The size of each palette button
function DColorPalette:GetButtonSize()
end

---  client|menu
--- Returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function DColorPalette:GetConVarG()
end

---  client|menu
--- Sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function DColorPalette:SetConVarR(convar)
end

---  client|menu
--- Roughly sets the number of colors that can be picked by the user. If the DColorPalette is exactly 6 rows tall, this function will set the number of colors shown per row in the palette.  
--- ℹ **NOTE**: DColorPalette:Reset or DColorPalette:ResetSavedColors must be called after this function to apply changes.  
--- @param rows number @Scale for the range of colors that the user can pick
function DColorPalette:SetNumRows(rows)
end

