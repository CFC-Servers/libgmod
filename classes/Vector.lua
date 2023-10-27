--- List of all possible functions to manipulate vectors.  
--- Created by Global.Vector.  
--- @field x number @The X component of the vector.
--- @field y number @The Y component of the vector.
--- @field z number @The Z component of the vector.
--- @class Vector
local Vector = {}
---  menu|client|server
--- Adds the values of the argument vector to the original vector. This function is the same as vector1 + vector2 without creating a new vector object, skipping object construction and garbage collection.  
--- @param vector Vector @The vector to add.
function Vector:Add(vector)
end

---  menu|client|server
--- Returns an angle representing the normal of the vector.  
--- @return Angle @The angle/direction of the vector.
function Vector:Angle()
end

---  menu|client|server
--- Returns the angle of this vector (normalized), but instead of assuming that up is Global.Vector( 0, 0, 1 ) (Like Vector:Angle does) you can specify which direction is 'up' for the angle.  
--- @param up Vector @The up direction vector
--- @return Angle @The angle
function Vector:AngleEx(up)
end

---  menu|client|server
--- Calculates the cross product of this vector and the passed one.  
--- The cross product of two vectors is a 3-dimensional vector with a direction perpendicular (at right angles) to both of them (according to the right-hand rule), and magnitude equal to the area of parallelogram they span. This is defined as the product of the magnitudes, the sine of the angle between them, and unit (normal) vector `n` defined by the right-hand rule:  
--- :**a** × **b** = |**a**| |**b**| sin(θ) **n̂**  
--- where **a** and **b** are vectors, and **n̂** is a unit vector (magnitude of 1) perpendicular to both.  
--- @param otherVector Vector @Vector to calculate the cross product with.
--- @return Vector @The cross product of the two vectors.
function Vector:Cross(otherVector)
end

---  menu|client|server
--- Returns the squared distance of 2 vectors, this is faster than Vector:Distance as calculating the square root is an expensive process.  
--- ℹ **NOTE**: Squared distances should not be summed. If you need to sum distances, use Vector:Distance.  
--- When performing a distance check, ensure the distance being checked against is squared. See example code below.  
--- @param otherVec Vector @The vector to calculate the distance to.
--- @return number @Squared distance to the vector.
function Vector:DistToSqr(otherVec)
end

---  menu|client|server
--- Returns the euclidean distance between the vector and the other vector.  
--- ℹ **NOTE**: This function is more expensive than Vector:DistToSqr. However, please see the notes for Vector:DistToSqr before using it as squared distances are not the same as euclidean distances.  
--- @param otherVector Vector @The vector to get the distance to.
--- @return number @Distance between the vectors.
function Vector:Distance(otherVector)
end

---  menu|client|server
--- Divide the vector by the given number, that means x, y and z are divided by that value. This will change the value of the original vector, see example 2 for division without changing the value.  
--- @param divisor number @The value to divide the vector with.
function Vector:Div(divisor)
end

---  menu|client|server
--- Returns the [dot product](https://en.wikipedia.org/wiki/Dot_product#Geometric_definition)  of this vector and the passed one.  
--- The dot product of two vectors is the product of their magnitudes (lengths), and the cosine of the angle between them:  
--- **a · b** = |**a**| |**b**| cos(θ)   
--- where **a** and **b** are vectors.  
--- See Vector:Length for obtaining magnitudes.  
--- A dot product returns just the cosine of the angle if both vectors are normalized, and zero if the vectors are at right angles to each other.  
--- @param otherVector Vector @The vector to calculate the dot product with
--- @return number @The dot product between the two vectors
function Vector:Dot(otherVector)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: This is an alias of Vector:Dot. Use that instead.  
--- Returns the dot product of the two vectors.  
--- @param Vector Vector @The other vector.
--- @deprecated
--- @return number @Dot Product
function Vector:DotProduct(Vector)
end

---  menu|client|server
--- Returns the negative version of this vector, i.e. a vector with every component to the negative value of itself.  
--- See also Vector:Negate.  
--- @return Vector @The negative of this vector.
function Vector:GetNegated()
end

---  menu|client|server
--- 🛑 **DEPRECATED**: Use Vector:GetNormalized instead.  
--- Returns a normalized version of the vector. This is a alias of Vector:GetNormalized.  
--- @deprecated
--- @return Vector @Normalized version of the vector.
function Vector:GetNormal()
end

---  menu|client|server
--- Returns a normalized version of the vector. Normalized means vector with same direction but with length of 1.  
--- This does not affect the vector you call it on; to do this, use Vector:Normalize.  
--- @return Vector @Normalized version of the vector.
function Vector:GetNormalized()
end

---  menu|client|server
--- Returns if the vector is equal to another vector with the given tolerance.  
--- @param compare Vector @The vector to compare to.
--- @param tolerance number @The tolerance range.
--- @return boolean @Are the vectors equal or not.
function Vector:IsEqualTol(compare, tolerance)
end

---  menu|client|server
--- Checks whenever all fields of the vector are 0.  
--- @return boolean @Do all fields of the vector equal 0 or not
function Vector:IsZero()
end

---  menu|client|server
--- Returns the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_vector#Length) of the vector: √(x² + y² + z²).  
--- ⚠ **WARNING**:   
--- This is a relatively expensive process since it uses the square root. It is recommended that you use Vector:LengthSqr whenever possible.  
--- @return number @Length of the vector.
function Vector:Length()
end

---  menu|client|server
--- Returns the length of the vector in two dimensions, without the Z axis.  
--- ⚠ **WARNING**:   
--- This is a relatively expensive process since it uses the square root. It is recommended that you use Vector:Length2DSqr whenever possible.  
--- @return number @Length of the vector in two dimensions, √(x² + y²)
function Vector:Length2D()
end

---  menu|client|server
--- Returns the squared length of the vectors x and y value, x² + y².  
--- This is faster than Vector:Length2D as calculating the square root is an expensive process.  
--- @return number @Squared length of the vector in two dimensions
function Vector:Length2DSqr()
end

---  menu|client|server
--- Returns the squared length of the vector, x² + y² + z².  
--- This is faster than Vector:Length as calculating the square root is an expensive process.  
--- @return number @Squared length of the vector
function Vector:LengthSqr()
end

---  menu|client|server
--- Scales the vector by the given number (that means x, y and z are multiplied by that value), a Vector (X, Y, and Z of each vector are multiplied) or a VMatrix (Transforms the vector by the matrix's rotation/translation).  
--- @param multiplier number @The value to scale the vector with.
function Vector:Mul(multiplier)
end

---  menu|client|server
--- Negates this vector, i.e. sets every component to the negative value of itself. Same as `Vector( -vec.x, -vec.y, -vec.z )`  
function Vector:Negate()
end

---  menu|client|server
--- Normalizes the given vector. This changes the vector you call it on, if you want to return a normalized copy without affecting the original, use Vector:GetNormalized.  
function Vector:Normalize()
end

---  menu|client|server
--- Randomizes each element of this Vector object.  
--- @param min? number @The minimum value for each component.
--- @param max? number @The maximum value for each component.
function Vector:Random(min, max)
end

---  menu|client|server
--- Rotates a vector by the given angle.  
--- Doesn't return anything, but rather changes the original vector.  
--- @param rotation Angle @The angle to rotate the vector by.
function Vector:Rotate(rotation)
end

---  menu|client|server
--- Copies the values from the second vector to the first vector.  
--- @param vector Vector @The vector to copy from.
function Vector:Set(vector)
end

---  menu|client|server
--- Sets the x, y, and z of the vector.  
--- @param x number @The x component
--- @param y number @The y component
--- @param z number @The z component
function Vector:SetUnpacked(x, y, z)
end

---  menu|client|server
--- Substracts the values of the second vector from the orignal vector, this function can be used to avoid garbage collection.  
--- @param vector Vector @The other vector.
function Vector:Sub(vector)
end

---  client|server
--- Translates the Vector (values ranging from 0 to 1) into a Color. This will also range the values from 0 - 1 to 0 - 255.  
--- x * 255 -> r  
--- y * 255 -> g  
--- z * 255 -> b  
--- This is the opposite of Color:ToVector  
--- @return table @The created Color.
function Vector:ToColor()
end

---  client
--- Returns where on the screen the specified position vector would appear. A related function is gui.ScreenToVector, which converts a 2D coordinate to a 3D direction.  
--- ℹ **NOTE**: Should be called from a 3D rendering environment or after cam.Start3D or it may not work correctly.  
--- 🦟 **BUG**: [Errors in a render hook can make this value incorrect until the player restarts their game.](https://github.com/Facepunch/garrysmod-issues/issues/462)  
--- 🦟 **BUG**: [cam.Start3D or 3D context cam.Start with non-default parameters incorrectly sets the reference FOV for this function, causing incorrect return values. This can be fixed by creating and ending a default 3D context (cam.Start3D with no arguments).](https://github.com/Facepunch/garrysmod-issues/issues/1404)  
--- @return table @The created Structures/ToScreenData.
function Vector:ToScreen()
end

---  menu|client|server
--- Returns the vector as a table with three elements.  
--- @return table @The table with elements 1 = x, 2 = y, 3 = z.
function Vector:ToTable()
end

---  menu|client|server
--- Returns the x, y, and z of the vector.  
--- @return number @x or Vector[1].
--- @return number @y or Vector[2].
--- @return number @z or Vector[3].
function Vector:Unpack()
end

---  menu|client|server
--- Returns whenever the given vector is in a box created by the 2 other vectors.  
--- <upload src="22674/8d9276d7e6dd0af.png" size="6279" name="image.png">  
--- </upload>  
--- @param boxStart Vector @The first vector.
--- @param boxEnd Vector @The second vector.
--- @return boolean @Is the vector in the box or not.
function Vector:WithinAABox(boxStart, boxEnd)
end

---  menu|client|server
--- Sets x, y and z to 0.  
function Vector:Zero()
end

