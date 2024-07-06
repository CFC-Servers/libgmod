--- The mesh library allows you to create meshes. A mesh is a set of vertices that define a 3D shape, for constant meshes you should use the IMesh object instead.  
_G.mesh = {}
---  client
--- Pushes the currently set vertex data (via other `mesh.*` functions) into the mesh stack. See example on mesh.Begin.  
function mesh.AdvanceVertex()
end

---  client
--- Starts constructing a new 3D mesh constructed from a given number of primitives in a given primitive format.  
--- The resulting mesh can be stored in an IMesh if it is intended to be drawn multiple times or on multiple frames.  
--- @param primitiveType number @An enum that indicates what the format of the mesh's primitives will be
--- @param primitiveCount number @The quantity of primitives this mesh will contain as a whole integer number.
function mesh.Begin(primitiveType, primitiveCount)
end

---  client
--- Sets the color to be used for the next vertex. See mesh.Begin.  
--- @param r number @Red component.
--- @param g number @Green component.
--- @param b number @Blue component.
--- @param a number @Alpha component.
function mesh.Color(r, g, b, a)
end

---  client
--- Ends the mesh (Started with mesh.Begin) and renders it.  
function mesh.End()
end

---  client
--- Sets the normal to be used for the next vertex. See mesh.Begin.  
--- @param normal Vector @The normal of the vertex.
function mesh.Normal(normal)
end

---  client
--- Sets the position to be used for the next vertex. See mesh.Begin.  
--- @param position Vector @The position of the vertex.
function mesh.Position(position)
end

---  client
--- Adds a quad (4 vertices) to the currently built mesh. See mesh.Begin.  
--- @param vertex1 Vector @The first vertex.
--- @param vertex2 Vector @The second vertex.
--- @param vertex3 Vector @The third vertex.
--- @param vertex4 Vector @The fourth vertex.
--- @param color table @The color for the vertices.
function mesh.Quad(vertex1, vertex2, vertex3, vertex4, color)
end

---  client
--- Adds a quad (4 vertices) to the currently built mesh, by using position, normal and sizes. See mesh.Begin.  
--- See also mesh.Quad.  
--- @param position Vector @The center of the quad.
--- @param normal Vector @The normal of the quad.
--- @param sizeX number @X size in pixels.
--- @param sizeY number @Y size in pixels.
--- @param color table @The color for the vertices.
function mesh.QuadEasy(position, normal, sizeX, sizeY, color)
end

---  client
--- Sets the specular map values.  
--- There is no known use case for this function.  
--- @param r number @The red channel multiplier of the specular map.
--- @param g number @The green channel multiplier of the specular map.
--- @param b number @The blue channel multiplier of the specular map.
--- @param a number @The alpha channel multiplier of the specular map.
function mesh.Specular(r, g, b, a)
end

---  client
--- Sets the "S" tangent to be used.  
--- @param sTanger Vector @The S tangent.
function mesh.TangentS(sTanger)
end

---  client
--- Sets the "T" tangent to be used.  
--- @param tTanger Vector @The T tangent.
function mesh.TangentT(tTanger)
end

---  client
--- Sets the texture coordinates for the next vertex.  
--- @param set number @The texture coordinate set, 0 to 7
--- @param u number @U coordinate.
--- @param v number @V coordinate.
function mesh.TexCoord(set, u, v)
end

---  client
--- A set of four numbers that can be used for arbitrary purposes by Material shaders.  
--- This is most commonly used to provide tangent information about each vertex to the Material's shader.  
--- @param tangentX number 
--- @param tangentY number 
--- @param tangentZ number 
--- @param tangentHandedness number 
function mesh.UserData(tangentX, tangentY, tangentZ, tangentHandedness)
end

---  client
--- Returns the amount of vertices that have been pushed via mesh.AdvanceVertex.  
--- @return number @The amount of vertices.
function mesh.VertexCount()
end

