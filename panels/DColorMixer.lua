--- A standard Derma color mixer  
--- @class DColorMixer : DPanel
local DColorMixer = {}
---  client
--- Return true if alpha bar is shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function DColorMixer:GetAlphaBar()
end

---  client
--- Returns the current selected color.  
--- @return table @The current selected color as a Color.
function DColorMixer:GetColor()
end

---  client
--- Returns the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- @return string @The ConVar name for the alpha channel of the color
function DColorMixer:GetConVarA()
end

---  client
--- Returns the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the blue channel of the color
function DColorMixer:GetConVarB()
end

---  client
--- Returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function DColorMixer:GetConVarG()
end

---  client
--- Returns the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the red channel of the color
function DColorMixer:GetConVarR()
end

---  client
--- Return true if palette is shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function DColorMixer:GetPalette()
end

---  client
--- Returns the color as a normalized Vector.  
--- @return Vector @A vector representing the color of the DColorMixer, each value being in range of 0 to 1
function DColorMixer:GetVector()
end

---  client
--- Return true if the wangs are shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function DColorMixer:GetWangs()
end

---  client
--- Show/Hide the alpha bar in DColorMixer  
--- @param show boolean @Show / Hide the alpha bar
function DColorMixer:SetAlphaBar(show)
end

---  client
--- Sets the base color of the DColorCube part of the DColorMixer.  
--- See also DColorCube:SetBaseRGB  
--- @param clr table @Color
function DColorMixer:SetBaseColor(clr)
end

---  client
--- Sets the color of the DColorMixer  
--- @param color table @The color to set
function DColorMixer:SetColor(color)
end

---  client
--- Sets the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- @param convar string @The ConVar name for the alpha channel of the color
function DColorMixer:SetConVarA(convar)
end

---  client
--- Sets the ConVar name for the blue channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the blue channel of the color
function DColorMixer:SetConVarB(convar)
end

---  client
--- Sets the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the green channel of the color
function DColorMixer:SetConVarG(convar)
end

---  client
--- Sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function DColorMixer:SetConVarR(convar)
end

---  client
--- Sets the label's text to show.  
--- @param text? string @Set to non empty string to show the label and its text
function DColorMixer:SetLabel(text)
end

---  client
--- Show or hide the palette panel  
--- @param enabled boolean @Show or hide the palette panel?
function DColorMixer:SetPalette(enabled)
end

---  client
--- Sets the color of DColorMixer from a Vector. Alpha is not included.  
--- @param vec Vector @The color to set
function DColorMixer:SetVector(vec)
end

---  client
--- Show / Hide the colors indicators in DColorMixer  
--- @param show boolean @Show / Hide the colors indicators
function DColorMixer:SetWangs(show)
end

---  client
--- Called when the player changes the color of the DColorMixer.  
--- 🦟 **BUG**: The returned color will not have the color metatable.  
--- @param col table @The new color
function DColorMixer:ValueChanged(col)
end

