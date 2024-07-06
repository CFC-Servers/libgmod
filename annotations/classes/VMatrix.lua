--- A 4x4 matrix.  
--- This page lists all possible functions to manipulate matrices.  
--- This object can be created by Global.Matrix.  
--- @class VMatrix
local VMatrix = {}
---  client|server
--- Adds given matrix to this matrix.  
--- @param input VMatrix @The input matrix to add.
function VMatrix:Add(input)
end

---  client|server
--- Returns the absolute rotation of the matrix.  
--- @return Angle @Absolute rotation of the matrix
function VMatrix:GetAngles()
end

---  client|server
--- Returns a specific field in the matrix.  
--- @param row number @Row of the field whose value is to be retrieved, from 1 to 4
--- @param column number @Column of the field whose value is to be retrieved, from 1 to 4
--- @return number @The value of the specified field
function VMatrix:GetField(row, column)
end

---  client|server
--- Gets the forward direction of the matrix.  
--- ie. The first column of the matrix, excluding the w coordinate.  
--- @return Vector @The forward direction of the matrix.
function VMatrix:GetForward()
end

---  client|server
--- Returns an inverted matrix without modifying the original matrix.  
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)  
--- See also VMatrix:GetInverseTR.  
--- @return VMatrix @The inverted matrix if possible, nil otherwise
function VMatrix:GetInverse()
end

---  client|server
--- Returns an inverted matrix without modifying the original matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.  
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.  
--- To get the inverse of a matrix that contains other modifications, see VMatrix:GetInverse.  
--- @return VMatrix @The inverted matrix.
function VMatrix:GetInverseTR()
end

---  client|server
--- Gets the right direction of the matrix.  
--- ie. The second column of the matrix, negated, excluding the w coordinate.  
--- @return Vector @The right direction of the matrix.
function VMatrix:GetRight()
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
--- Returns the transpose (each row becomes a column) of this matrix.  
--- @return VMatrix @The transposed matrix.
function VMatrix:GetTransposed()
end

---  client|server
--- Gets the up direction of the matrix.  
--- ie. The third column of the matrix, excluding the w coordinate.  
--- @return Vector @The up direction of the matrix.
function VMatrix:GetUp()
end

---  client|server
--- Initializes the matrix as Identity matrix.  
function VMatrix:Identity()
end

---  client|server
--- Inverts the matrix.  
--- Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)  
--- If the matrix cannot be inverted, it does not get modified.  
--- See also VMatrix:InvertTR.  
--- @return boolean @Whether the matrix was inverted or not
function VMatrix:Invert()
end

---  client|server
--- Inverts the matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.  
--- Using this function on a matrix with modified scale may return an incorrect inverted matrix.  
--- To invert a matrix that contains other modifications, see VMatrix:Invert.  
function VMatrix:InvertTR()
end

---  client|server
--- Returns whether the matrix is equal to Identity matrix or not.  
--- @return boolean @Is the matrix an Identity matrix or not
function VMatrix:IsIdentity()
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
--- Rotates the matrix by the given angle.  
--- Postmultiplies the matrix by a rotation matrix (A = AR).  
--- @param rotation Angle @Rotation.
function VMatrix:Rotate(rotation)
end

---  client|server
--- Scales the matrix by the given vector.  
--- Postmultiplies the matrix by a scaling matrix (A = AS).  
--- @param scale Vector @Vector to scale with matrix with.
function VMatrix:Scale(scale)
end

---  client|server
--- Scales the absolute translation with the given value.  
--- @param scale number @Value to scale the translation with.
function VMatrix:ScaleTranslation(scale)
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
--- Sets a specific field in the matrix.  
--- @param row number @Row of the field to be set, from 1 to 4
--- @param column number @Column of the field to be set, from 1 to 4
--- @param value number @The value to set in that field
function VMatrix:SetField(row, column, value)
end

---  client|server
--- Sets the forward direction of the matrix.  
--- ie. The first column of the matrix, excluding the w coordinate.  
--- @param forward Vector @The forward direction of the matrix.
function VMatrix:SetForward(forward)
end

---  client|server
--- Sets the right direction of the matrix.  
--- ie. The second column of the matrix, negated, excluding the w coordinate.  
--- @param forward Vector @The right direction of the matrix.
function VMatrix:SetRight(forward)
end

---  client|server
--- Modifies the scale of the matrix while preserving the rotation and translation.  
--- @param scale Vector @The scale to set.
function VMatrix:SetScale(scale)
end

---  client|server
--- Sets the absolute translation of the matrix.  
--- @param translation Vector @New translation.
function VMatrix:SetTranslation(translation)
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

---  client|server
--- Translates the matrix by the given vector aka. adds the vector to the translation.  
--- Postmultiplies the matrix by a translation matrix (A = AT).  
--- @param translation Vector @Vector to translate the matrix by.
function VMatrix:Translate(translation)
end

---  client|server
--- Returns each component of the matrix, expanding rows before columns.  
--- @return number @VMatrix:GetField(1, 1)
--- @return number @VMatrix:GetField(1, 2)
--- @return number @VMatrix:GetField(1, 3)
--- @return number @VMatrix:GetField(1, 4)
--- @return number @VMatrix:GetField(2, 1)
--- @return number @VMatrix:GetField(2, 2)
--- @return number @VMatrix:GetField(2, 3)
--- @return number @VMatrix:GetField(2, 4)
--- @return number @VMatrix:GetField(3, 1)
--- @return number @VMatrix:GetField(3, 2)
--- @return number @VMatrix:GetField(3, 3)
--- @return number @VMatrix:GetField(3, 4)
--- @return number @VMatrix:GetField(4, 1)
--- @return number @VMatrix:GetField(4, 2)
--- @return number @VMatrix:GetField(4, 3)
--- @return number @VMatrix:GetField(4, 4)
function VMatrix:Unpack()
end

---  client|server
--- Sets all components of the matrix to 0, also known as a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).  
--- This function is more efficient than setting each element manually.  
function VMatrix:Zero()
end

