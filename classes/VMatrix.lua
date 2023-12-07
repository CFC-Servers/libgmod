--- @class VMatrix
local VMatrix = {}
---  client|server
--- Returns an inverted matrix without modifying the original matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.  
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.  
--- To get the inverse of a matrix that contains other modifications, see VMatrix:GetInverse.  
--- @return VMatrix @The inverted matrix.
function VMatrix:GetInverseTR()
end

---  client|server
--- Returns the absolute scale of the matrix.  
--- @return Vector @Absolute scale of the matrix
function VMatrix:GetScale()
end

---  client|server
--- Returns the absolute translation of the matrix.  
--- @return Vector @Absolute translation of the matrix
function VMatrix:GetTranslation()
end

---  client|server
--- Returns whether the matrix is a rotation matrix or not.  
--- Technically it checks if the forward, right and up vectors are orthogonal and normalized.  
--- @return boolean @Is the matrix a rotation matrix or not
function VMatrix:IsRotationMatrix()
end

---  client|server
--- Checks whenever all fields of the matrix are 0, aka if this is a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).  
--- @return boolean @If the matrix is a null matrix.
function VMatrix:IsZero()
end

---  client|server
--- Multiplies this matrix by given matrix.  
--- @param input VMatrix @The input matrix to multiply by.
function VMatrix:Mul(input)
end

---  client|server
--- Copies values from the given matrix object.  
--- @param src VMatrix @The matrix to copy values from.
function VMatrix:Set(src)
end

---  client|server
--- Sets the absolute rotation of the matrix.  
--- @param angle Angle @New angles.
function VMatrix:SetAngles(angle)
end

---  client|server
--- Sets each component of the matrix.  
--- @param e11 number 
--- @param e12 number 
--- @param e13 number 
--- @param e14 number 
--- @param e21 number 
--- @param e22 number 
--- @param e23 number 
--- @param e24 number 
--- @param e31 number 
--- @param e32 number 
--- @param e33 number 
--- @param e34 number 
--- @param e41 number 
--- @param e42 number 
--- @param e43 number 
--- @param e44 number 
function VMatrix:SetUnpacked(e11, e12, e13, e14, e21, e22, e23, e24, e31, e32, e33, e34, e41, e42, e43, e44)
end

---  client|server
--- Sets the up direction of the matrix.  
--- ie. The third column of the matrix, excluding the w coordinate.  
--- @param forward Vector @The up direction of the matrix.
function VMatrix:SetUp(forward)
end

---  client|server
--- Subtracts given matrix from this matrix.  
--- @param input VMatrix @The input matrix to subtract.
function VMatrix:Sub(input)
end

---  client|server
--- Converts the matrix to a 4x4 table. See Global.Matrix function.  
--- @return table @The 4x4 table.
function VMatrix:ToTable()
end

