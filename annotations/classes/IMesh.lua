--- Renderable mesh object, can be used to create models on the fly.  
--- The only way to create your own IMesh object is to call Global.Mesh.  
--- ℹ **NOTE**:   
--- IMeshes only respond to one projected texture.  
--- See the render.RenderFlashlights function and example that solves this problem.  
--- @class IMesh
local IMesh = {}
---  client
--- Builds the mesh from a table mesh vertexes.  
--- When modifying a previously built mesh, your new mesh must match the vertex count!  
--- See Global.Mesh and util.GetModelMeshes for examples.  
--- ⚠ **WARNING**: IMesh appears to have a limit of 65535 vertices. You should split your mesh into multiple meshes when above this limit.  
--- Exceeding the limit may lead to undefined rendering behavior.  
--- @param vertexes table @A table consisting of Structures/MeshVertexs.
function IMesh:BuildFromTriangles(vertexes)
end

---  client
--- Deletes the mesh and frees the memory used by it.  
function IMesh:Destroy()
end

---  client
--- Renders the mesh with the active matrix.  
function IMesh:Draw()
end

---  client
--- Returns whether this IMesh is valid or not.  
--- @return boolean @Whether this IMesh is valid or not.
function IMesh:IsValid()
end
