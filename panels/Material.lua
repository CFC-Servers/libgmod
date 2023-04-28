--- Material is a VGUI element that renders a VMT material.  
--- @class Material : Button
local Material = {}
---  client
--- Sets the alpha value of the Material panel.  
--- @param alpha number @The alpha value, from 0 to 255.
function Material:SetAlpha(alpha)
end

---  client
--- Sets the material used by the panel.  
--- ℹ **NOTE**: If the material is not showing up as the correct size, try setting the Material panel's `AutoSize` variable to **false**  
--- @param matname string @The file path of the material to set (relative to "garrysmod/materials/").
function Material:SetMaterial(matname)
end

