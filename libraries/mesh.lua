_G.mesh = {}
---  client
--- Sets the normal to be used for the next vertex.  
--- @param normal Vector @The normal of the vertex.
function mesh.Normal(normal)
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
--- Sets the s tangent to be used.  
--- This function actually does nothing.  
--- @param sTanger Vector @The s tangent.
function mesh.TangentS(sTanger)
end

---  client
--- Returns the amount of vertex that have yet been pushed.  
--- @return number @vertexCount
function mesh.VertexCount()
end

