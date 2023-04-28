--- A brush surface object returned by Entity:GetBrushSurfaces.  
--- Brush surfaces are a part of what makes up the map geometry aside from displacements. Any primitive brush model, including most breakable windows, can be represented by this object.  
--- ℹ **NOTE**: This object internally uses the SurfaceHandle_t class, which is an alias for msurface2_t*.  
--- @class SurfaceInfo
local SurfaceInfo = {}
---  client|server
--- Returns the brush surface's material.  
--- @return IMaterial @Material of one portion of a brush model.
function SurfaceInfo:GetMaterial()
end

---  client|server
--- Returns a list of vertices the brush surface is built from.  
--- @return table @A list of Vector points
function SurfaceInfo:GetVertices()
end

---  client|server
--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_NODRAW flag.  
--- @return boolean @Returns true if this surface won't be drawn.
function SurfaceInfo:IsNoDraw()
end

---  client|server
--- Checks if the brush surface is displaying the skybox.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_SKY flag.  
--- @return boolean @Returns true if the surface is the sky.
function SurfaceInfo:IsSky()
end

---  client|server
--- Checks if the brush surface is water.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_WATER flag.  
--- @return boolean @Returns true if the surface is water.
function SurfaceInfo:IsWater()
end

