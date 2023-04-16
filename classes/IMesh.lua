--- @class IMesh
--- Renderable mesh object, can be used to create models on the fly. The only way to create your own IMesh object is to call Mesh.  
--- 🦟 **BUG**: [IMeshes only respond to one projected texture.](https://github.com/Facepunch/garrysmod-issues/issues/2301)  
local IMesh = {}
--- Builds the mesh from a table mesh vertexes.  
--- See Global.Mesh and util.GetModelMeshes for examples.  
--- @param vertexes table @A table consisting of Structures/MeshVertexs.
function IMesh:BuildFromTriangles(vertexes)
end

--- Deletes the mesh and frees the memory used by it.  
function IMesh:Destroy()
end

--- Renders the mesh with the active matrix.  
function IMesh:Draw()
end

--- Returns whether this IMesh is valid or not.  
--- @return boolean @Whether this IMesh is valid or not.
function IMesh:IsValid()
end

