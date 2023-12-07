--- @class SurfaceInfo
local SurfaceInfo = {}
---  client|server
--- Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_NODRAW flag.  
--- @return boolean @Returns true if this surface won't be drawn.
function SurfaceInfo:IsNoDraw()
end

---  client|server
--- Checks if the brush surface is water.  
--- ℹ **NOTE**: This internally checks the SURFDRAW_WATER flag.  
--- @return boolean @Returns true if the surface is water.
function SurfaceInfo:IsWater()
end

