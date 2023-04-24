--- The **DColorPalette** allows the player to select a color from a list of given colors.  
--- This panel supports saving across sessions via the panel cookie system.  
--- Use Panel:SetCookieName to change "save files".  
--- @class DColorPalette : DIconLayout
local DColorPalette = {}
--- 🛑 **DEPRECATED**:   
--- Basically the same functionality as DColorPalette:OnValueChanged, you should use that instead!  
--- @param clr table @The new color via the Color
--- @param btn Panel @The DColorButton that was pressed.
--- @deprecated
function DColorPalette:DoClick(clr, btn)
end

--- Returns the size of each palette button. Set by DColorPalette:SetButtonSize.  
--- @return number @The size of each palette button
function DColorPalette:GetButtonSize()
end

--- Returns the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- @return string @The ConVar name for the alpha channel of the color
function DColorPalette:GetConVarA()
end

--- Returns the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the blue channel of the color
function DColorPalette:GetConVarB()
end

--- Returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarR - For the red channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function DColorPalette:GetConVarG()
end

--- Returns the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorPalette:GetConVarG - For the green channel  
--- * DColorPalette:GetConVarB - For the blue channel  
--- * DColorPalette:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the red channel of the color
function DColorPalette:GetConVarR()
end

--- Returns the number of rows of the palette, provided 6 colors fill each row. This value is equal to the number of colors in the DColorPalette divided by 6.  
--- @return number @Number of rows of the DColorPalette.
function DColorPalette:GetNumRows()
end

--- Called when a palette button has been pressed  
--- @param pnl Panel @The DColorButton that was pressed.
function DColorPalette:OnRightClickButton(pnl)
end

--- Called when the color is changed after clicking a new value.  
--- @param newcol table @The new color of the DColorPalette
function DColorPalette:OnValueChanged(newcol)
end

--- Resets this entire color palette to a default preset one, without saving.  
--- See DColorPalette:ResetSavedColors for version that also saves the changes.  
function DColorPalette:Reset()
end

--- Resets this entire color palette to a default preset one and saves the changes.  
--- See DColorPalette:Reset for version that does not save the changes.  
function DColorPalette:ResetSavedColors()
end

--- Saves the color of given button across sessions.  
--- The color is saved as a panel cookie, see Panel:SetCookie and Panel:SetCookieName.  
--- ```  
--- ```  
--- It is expected that the amount of colors per palette (Panel:SetCookieName) is the same every time.  
--- @param btn Panel @The button to save the color of
--- @param clr table @The color to save to this button's index
function DColorPalette:SaveColor(btn, clr)
end

--- Sets the size of each palette button.  
--- This is best kept to such a number, where this equation would return a whole number:  
--- `WidthOfColorPalette / ButtonSize= WholeNumber`  
--- If not, there will be ugly whitespace on the right side of the panel.  
--- @param size number @Sets the new size
function DColorPalette:SetButtonSize(size)
end

--- 🛑 **DEPRECATED**:   
--- Currently does nothing. Intended to "select" the color.  
--- @param clr table 
--- @deprecated
function DColorPalette:SetColor(clr)
end

--- Clears the palette and adds new buttons with given colors.  
--- @param tab table @A number indexed table where each value is a Color
function DColorPalette:SetColorButtons(tab)
end

--- Sets the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- @param convar string @The ConVar name for the alpha channel of the color
function DColorPalette:SetConVarA(convar)
end

--- Sets the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the blue channel of the color
function DColorPalette:SetConVarB(convar)
end

--- Sets the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarR - For the red channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the green channel of the color
function DColorPalette:SetConVarG(convar)
end

--- Sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorPalette:SetConVarG - For the green channel  
--- * DColorPalette:SetConVarB - For the blue channel  
--- * DColorPalette:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function DColorPalette:SetConVarR(convar)
end

--- Roughly sets the number of colors that can be picked by the user. If the DColorPalette is exactly 6 rows tall, this function will set the number of colors shown per row in the palette.  
--- ℹ **NOTE**: DColorPalette:Reset or DColorPalette:ResetSavedColors must be called after this function to apply changes.  
--- @param rows number @Scale for the range of colors that the user can pick
function DColorPalette:SetNumRows(rows)
end

