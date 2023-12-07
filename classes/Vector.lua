--- @class Vector
local Vector = {}
---  menu|client|server
--- Returns the Euclidean distance between the vector and the other vector.  
--- ℹ **NOTE**: This function is more expensive than Vector:DistToSqr. However, please see the notes for Vector:DistToSqr before using it as squared distances are not the same as euclidean distances.  
--- @param otherVector Vector @The vector to get the distance to.
--- @return number @Distance between the vectors.
function Vector:Distance(otherVector)
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
--- Returns the squared length of the vectors x and y value, x² + y².  
--- This is faster than Vector:Length2D as calculating the square root is an expensive process.  
--- @return number @Squared length of the vector in two dimensions
function Vector:Length2DSqr()
end

---  menu|client|server
--- Negates this vector, i.e. sets every component to the negative value of itself. Same as `Vector( -vec.x, -vec.y, -vec.z )`  
function Vector:Negate()
end

