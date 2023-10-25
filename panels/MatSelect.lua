--- The panel used by Material & Lamp Sandbox tools for texture selection.  
--- @class MatSelect : ContextBase
local MatSelect = {}
---  client
--- Clears all added materials and clears selection.  
function MatSelect:Clear()
end

---  client
--- Find a DImageButton panel based on the input material path.  
--- @param mat string @The material to find within this MatSelect.
--- @return DImageButton @The found material, or nil.
function MatSelect:FindMaterialByValue(mat)
end

---  client
--- Selects a given material panel.  
--- @param mat DImageButton @The material to select, found by MatSelect:FindMaterialByValue
function MatSelect:SelectMaterial(mat)
end

---  client
--- Defines a paint over function for a DImageButton when it is selected.  
--- ⚠ **WARNING**: `self` in the context of this function is the DImageButton!  
--- @param w number @Width of the DImageButton panel.
--- @param h number @Height of the DImageButton panel.
function MatSelect:SelectedItemPaintOver(w, h)
end

