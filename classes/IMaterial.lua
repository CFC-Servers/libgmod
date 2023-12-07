--- @class IMaterial
local IMaterial = {}
---  client|server
--- Gets all the key values defined for the material.  
--- @return table @The material's key values.
function IMaterial:GetKeyValues()
end

---  menu|client|server
--- Returns the specified material string, or nil if the value is not set or if the value can not be converted to a string.  
--- @param materialString string @The name of the material string.
--- @return string @The value as a string
function IMaterial:GetString(materialString)
end

---  menu|client|server
--- Returns the specified material vector, or nil if the value is not set.  
--- See also IMaterial:GetVectorLinear  
--- @param materialVector string @The name of the material vector.
--- @return Vector @The color vector
function IMaterial:GetVector(materialVector)
end

---  menu|client|server
--- Returns whenever the material is valid, i.e. whether it was not loaded successfully from disk or not.  
--- @return boolean @Is this material the error material? (___error)
function IMaterial:IsError()
end

---  menu|client|server
--- Sets the specified material value to the specified int, does nothing on a type mismatch.  
--- ℹ **NOTE**: Please note that certain material flags such as `$model` are stored in the `$flags` variable and cannot be directly set with this function. See the full list here: Material Flags  
--- @param materialInt string @The name of the material int.
--- @param int number @The new int value.
function IMaterial:SetInt(materialInt, int)
end

