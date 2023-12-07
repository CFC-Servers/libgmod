_G.cam = {}
---  client
--- Switches the renderer back to the previous drawing mode from a 3D context.  
function cam.End3D()
end

---  client
--- Sets up a new 2D rendering context. Must be finished by cam.End3D2D. This function pushes a new matrix onto the stack. (cam.PushModelMatrix)  
--- Matrix formula:  
--- ```  
--- local m = Matrix()  
--- m:SetAngles(angles)  
--- m:SetTranslation(pos)  
--- m:SetScale(Vector(scale, -scale, 1))  
--- ```  
--- 🟥 **NOTE**: Provides a 2D rendering context  
--- <rendercontext hook="true" type="3D"></rendercontext>  
--- ⚠ **WARNING**: This should be closed by cam.End3D2D otherwise the game crashes  
--- @param pos Vector @Origin of the 3D2D context, ie
--- @param angles Angle @Angles of the 3D2D context
--- @param scale number @The scale of the render context
function cam.Start3D2D(pos, angles, scale)
end

