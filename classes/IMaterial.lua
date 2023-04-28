--- A Material object. It represents a game material, similarly to how a .vmt file does.  
--- It can be created with Global.Material or Global.CreateMaterial.  
--- @class IMaterial
local IMaterial = {}
---  menu|client|server
--- Returns the color of the specified pixel of the $basetexture, only works for materials created from PNG files.  
--- Basically identical to ITexture:GetColor used on IMaterial:GetTexture( "$basetexture" ).  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param x number @The X coordinate.
--- @param y number @The Y coordinate.
--- @return table @The color of the pixel as a Color.
function IMaterial:GetColor(x, y)
end

---  menu|client|server
--- Returns the specified material value as a float, or nil if the value is not set.  
--- @param materialFloat string @The name of the material value.
--- @return number @float
function IMaterial:GetFloat(materialFloat)
end

---  menu|client|server
--- Returns the specified material value as a int, rounds the value if its a float, or nil if the value is not set.  
--- ℹ **NOTE**: Please note that certain material flags such as `$model` are stored in the `$flags` variable and cannot be directly retrieved with this function. See the full list here: Material Flags  
--- @param materialInt string @The name of the material integer.
--- @return number @The retrieved value as an integer
function IMaterial:GetInt(materialInt)
end

---  client|server
--- Gets all the key values defined for the material.  
--- @return table @The material's key values.
function IMaterial:GetKeyValues()
end

---  client|server
--- Returns the specified material matrix as a int, or nil if the value is not set or is not a matrix.  
--- @param materialMatrix string @The name of the material matrix.
--- @return VMatrix @matrix
function IMaterial:GetMatrix(materialMatrix)
end

---  menu|client|server
--- Returns the name of the material, in most cases the path.  
--- @return string @Material name/path
function IMaterial:GetName()
end

---  menu|client|server
--- Returns the name of the materials shader.  
--- 🦟 **BUG**: [This function does not work serverside on Linux SRCDS.](https://github.com/Facepunch/garrysmod-issues/issues/3256)  
--- @return string @shaderName
function IMaterial:GetShader()
end

---  menu|client|server
--- Returns the specified material string, or nil if the value is not set or if the value can not be converted to a string.  
--- @param materialString string @The name of the material string.
--- @return string @The value as a string
function IMaterial:GetString(materialString)
end

---  menu|client|server
--- Returns an ITexture based on the passed shader parameter.  
--- @param param string @The [shader parameter](https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters) to retrieve
--- @return ITexture @The value of the shader parameter
function IMaterial:GetTexture(param)
end

---  menu|client|server
--- Returns the specified material vector, or nil if the value is not set.  
--- See also IMaterial:GetVectorLinear  
--- @param materialVector string @The name of the material vector.
--- @return Vector @The color vector
function IMaterial:GetVector(materialVector)
end

---  menu|client|server
--- Returns the specified material vector as a 4 component vector.  
--- @param name string @The name of the material vector to retrieve.
--- @return number @The x component of the vector.
--- @return number @The y component of the vector.
--- @return number @The z component of the vector.
--- @return number @The w component of the vector.
function IMaterial:GetVector4D(name)
end

---  menu|client|server
--- Returns the specified material linear color vector, or nil if the value is not set.  
--- See https://en.wikipedia.org/wiki/Gamma_correction  
--- See also IMaterial:GetVector  
--- @param materialVector string @The name of the material vector.
--- @return Vector @The linear color vector
function IMaterial:GetVectorLinear(materialVector)
end

---  menu|client|server
--- Returns the height of the member texture set for $basetexture.  
--- @return number @height
function IMaterial:Height()
end

---  menu|client|server
--- Returns whenever the material is valid, i.e. whether it was not loaded successfully from disk or not.  
--- @return boolean @Is this material the error material? (___error)
function IMaterial:IsError()
end

---  menu|client|server
--- Recomputes the material's snapshot. This needs to be called if you have changed variables on your material and it isn't changing.  
--- Be careful though - this function is slow - so try to call it only when needed!  
function IMaterial:Recompute()
end

---  menu|client|server
--- Sets the specified material float to the specified float, does nothing on a type mismatch.  
--- @param materialFloat string @The name of the material float.
--- @param float number @The new float value.
function IMaterial:SetFloat(materialFloat, float)
end

---  menu|client|server
--- Sets the specified material value to the specified int, does nothing on a type mismatch.  
--- ℹ **NOTE**: Please note that certain material flags such as `$model` are stored in the `$flags` variable and cannot be directly set with this function. See the full list here: Material Flags  
--- @param materialInt string @The name of the material int.
--- @param int number @The new int value.
function IMaterial:SetInt(materialInt, int)
end

---  client|server
--- Sets the specified material value to the specified matrix, does nothing on a type mismatch.  
--- @param materialMatrix string @The name of the material int.
--- @param matrix VMatrix @The new matrix.
function IMaterial:SetMatrix(materialMatrix, matrix)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: This function does nothing  
--- The functionality of this function was removed due to the amount of crashes it caused.  
--- @param shaderName string @Name of the shader
--- @deprecated
function IMaterial:SetShader(shaderName)
end

---  menu|client|server
--- Sets the specified material value to the specified string, does nothing on a type mismatch.  
--- @param materialString string @The name of the material string.
--- @param string string @The new string.
function IMaterial:SetString(materialString, string)
end

---  menu|client|server
--- Sets the specified material texture to the specified texture, does nothing on a type mismatch.  
--- @param materialTexture string @The name of the keyvalue on the material to store the texture on.
--- @param texture ITexture @The new texture
function IMaterial:SetTexture(materialTexture, texture)
end

---  menu|client|server
--- Unsets the value for the specified material value.  
--- @param materialValueName string @The name of the material value to be unset.
function IMaterial:SetUndefined(materialValueName)
end

---  menu|client|server
--- Sets the specified material vector to the specified vector, does nothing on a type mismatch.  
--- @param MaterialVector string @The name of the material vector.
--- @param vec Vector @The new vector.
function IMaterial:SetVector(MaterialVector, vec)
end

---  menu|client|server
--- Sets the specified material vector to the specified 4 component vector, does nothing on a type mismatch.  
--- @param name string @The name of the material vector.
--- @param x number @The x component of the new vector.
--- @param y number @The y component of the new vector.
--- @param z number @The z component of the new vector.
--- @param w number @The w component of the new vector.
function IMaterial:SetVector4D(name, x, y, z, w)
end

---  menu|client|server
--- Returns the width of the member texture set for $basetexture.  
--- @return number @width
function IMaterial:Width()
end

