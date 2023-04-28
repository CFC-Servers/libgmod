--- The mesh library allows you to create meshes. A mesh is a set of vertices that define a 3D shape, for constant meshes you should use the IMesh object instead.  
_G.mesh = {}
---  client
--- Pushes the new vertex data onto the render stack.  
function mesh.AdvanceVertex()
end

---  client
--- Starts a new dynamic mesh. If an IMesh is passed, it will use that mesh instead.  
--- @param mesh? IMesh @Mesh to build
--- @param primitiveType number @Primitive type, see Enums/MATERIAL.
--- @param primiteCount number @The amount of primitives.
function mesh.Begin(mesh, primitiveType, primiteCount)
end

---  client
--- Sets the color to be used for the next vertex.  
--- @param r number @Red component.
--- @param g number @Green component.
--- @param b number @Blue component.
--- @param a number @Alpha component.
function mesh.Color(r, g, b, a)
end

---  client
--- Ends the mesh and renders it.  
function mesh.End()
end

---  client
--- Sets the normal to be used for the next vertex.  
--- @param normal Vector @The normal of the vertex.
function mesh.Normal(normal)
end

---  client
--- Sets the position to be used for the next vertex.  
--- @param position Vector @The position of the vertex.
function mesh.Position(position)
end

---  client
--- Draws a quad using 4 vertices.  
--- @param vertex1 Vector @The first vertex.
--- @param vertex2 Vector @The second vertex.
--- @param vertex3 Vector @The third vertex.
--- @param vertex4 Vector @The fourth vertex.
function mesh.Quad(vertex1, vertex2, vertex3, vertex4)
end

---  client
--- Draws a quad using a position, a normal and the size.  
--- @param position Vector @The center of the quad.
--- @param normal Vector @The normal of the quad.
--- @param sizeX number @X size in pixels.
--- @param sizeY number @Y size in pixels.
function mesh.QuadEasy(position, normal, sizeX, sizeY)
end

---  client
--- Sets the specular map values.  
--- This function actually does nothing.  
--- @param r number @The red channel multiplier of the specular map.
--- @param g number @The green channel multiplier of the specular map.
--- @param b number @The blue channel multiplier of the specular map.
--- @param a number @The alpha channel multiplier of the specular map.
function mesh.Specular(r, g, b, a)
end

---  client
--- Sets the s tangent to be used.  
--- This function actually does nothing.  
--- @param sTanger Vector @The s tangent.
function mesh.TangentS(sTanger)
end

---  client
--- Sets the T tangent to be used.  
--- This function actually does nothing.  
--- @param tTanger Vector @The t tangent.
function mesh.TangentT(tTanger)
end

---  client
--- Sets the texture coordinates for the next vertex.  
--- Non-zero values of stage require the currently bound material to support it. For example, any LightmappedGeneric material supports stages 1 and 2 (lightmap texture coordinates).  
--- @param stage number @The stage of the texture coordinate.
--- @param u number @U coordinate.
--- @param v number @V coordinate.
function mesh.TexCoord(stage, u, v)
end

---  client
--- ℹ **NOTE**: It is recommended to use IMesh:BuildFromTriangles instead of the mesh library.  
--- A table of four numbers. This is used by most shaders in Source to hold tangent information of the vertex ( tangentX, tangentY, tangentZ, tangentHandedness ).  
--- @param tangentX number 
--- @param tangentY number 
--- @param tangentZ number 
--- @param tangentHandedness number 
function mesh.UserData(tangentX, tangentY, tangentZ, tangentHandedness)
end

---  client
--- Returns the amount of vertex that have yet been pushed.  
--- @return number @vertexCount
function mesh.VertexCount()
end

