--- @class DColorMixer
local DColorMixer = {}
---  client|menu
--- Return true if alpha bar is shown, false if not.  
--- @return boolean @Return true if shown, false if not.
function DColorMixer:GetAlphaBar()
end

---  client|menu
--- Returns the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarG - For the green channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- @return string @The ConVar name for the alpha channel of the color
function DColorMixer:GetConVarA()
end

---  client|menu
--- Returns the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:GetConVarR - For the red channel  
--- * DColorMixer:GetConVarB - For the blue channel  
--- * DColorMixer:GetConVarA - For the alpha channel  
--- @return string @The ConVar name for the green channel of the color
function DColorMixer:GetConVarG()
end

---  client|menu
--- Sets the ConVar name for the alpha channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- @param convar string @The ConVar name for the alpha channel of the color
function DColorMixer:SetConVarA(convar)
end

---  client|menu
--- Sets the ConVar name for the green channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarR - For the red channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the green channel of the color
function DColorMixer:SetConVarG(convar)
end

---  client|menu
--- Sets the ConVar name for the red channel of the color.  
--- See also:  
--- * DColorMixer:SetConVarG - For the green channel  
--- * DColorMixer:SetConVarB - For the blue channel  
--- * DColorMixer:SetConVarA - For the alpha channel  
--- @param convar string @The ConVar name for the red channel of the color
function DColorMixer:SetConVarR(convar)
end

---  client|menu
--- Show or hide the palette panel  
--- @param enabled boolean @Show or hide the palette panel?
function DColorMixer:SetPalette(enabled)
end

---  client|menu
--- Called when the player changes the color of the DColorMixer.  
--- 🦟 **BUG**: The returned color will not have the color metatable.  
--- @param col table @The new color
function DColorMixer:ValueChanged(col)
end

