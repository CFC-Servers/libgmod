_G.render = {}
---  client|menu
--- Clears the current rendertarget for obeying the current stencil buffer conditions.  
--- @param r number @Value of the **red** channel to clear the current rt with.
--- @param g number @Value of the **green** channel to clear the current rt with.
--- @param b number @Value of the **blue** channel to clear the current rt with.
--- @param a number @Value of the **alpha** channel to clear the current rt with.
--- @param depth boolean @Clear the depth buffer.
function render.ClearBuffersObeyStencil(r, g, b, a, depth)
end

---  client
--- Calculates diameter of a 3D sphere on a 2D screen.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param point Vector @The position of the sphere in 3D space.
--- @param radius number @The radius of the sphere in 3D space.
--- @return number @The diameter of the sphere in 2D screen space.
function render.ComputePixelDiameterOfSphere(point, radius)
end

---  client
--- Draws textured beam.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param startPos Vector @Beam start position.
--- @param endPos Vector @Beam end position.
--- @param width number @The width of the beam.
--- @param textureStart number @The start coordinate of the texture used.
--- @param textureEnd number @The end coordinate of the texture used.
--- @param color? table @The color to be used
function render.DrawBeam(startPos, endPos, width, textureStart, textureEnd, color)
end

---  client
--- Draws a texture over the whole screen.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param tex ITexture @The texture to draw
function render.DrawTextureToScreen(tex)
end

---  client
--- Draws a textured rectangle.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param tex ITexture @The texture to draw
--- @param x number @The x coordinate of the rectangle to draw.
--- @param y number @The y coordinate of the rectangle to draw.
--- @param width number @The width of the rectangle to draw.
--- @param height number @The height of the rectangle to draw.
function render.DrawTextureToScreenRect(tex, x, y, width, height)
end

---  client
--- Draws a wireframe sphere in 3d space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Position of the sphere.
--- @param radius number @The size of the sphere.
--- @param longitudeSteps number @The amount of longitude steps
--- @param latitudeSteps number @The amount of latitude steps
--- @param color? table @The color of the wireframe
--- @param writeZ? boolean @Whether or not to consider the Z buffer
function render.DrawWireframeSphere(position, radius, longitudeSteps, latitudeSteps, color, writeZ)
end

---  client
--- @return ITexture 
function render.GetBloomTex1()
end

---  client|menu
--- Returns the maximum available directX version.  
--- @return number @dxLevel
function render.GetDXLevel()
end

---  client
--- Obtain an ITexture of the screen. You must call render.UpdateScreenEffectTexture in order to update this texture with the currently rendered scene.  
--- This texture is mainly used within GM:RenderScreenspaceEffects  
--- @param textureIndex? number @Max index is 3, but engine only creates the first two for you.
--- @return ITexture @The requested texture.
function render.GetScreenEffectTexture(textureIndex)
end

---  client
--- Returns a vector representing linear tone mapping scale.  
--- @return Vector @The vector representing linear tone mapping scale.
function render.GetToneMappingScaleLinear()
end

---  client
--- Similar to render.MaterialOverride, but overrides the materials per index. Similar to Entity:SetSubMaterial  
--- render.MaterialOverride overrides effects of this function.  
--- @param index number @The index of the material to override, in range of 0 to 31.
--- @param material IMaterial @The material to override with
function render.MaterialOverrideByIndex(index, material)
end

---  client|menu
--- Returns the maximum texture width the renderer can handle.  
--- @return number @maxTextureWidth
function render.MaxTextureWidth()
end

---  client|menu
--- Overrides the write behaviour of all next rendering operations towards the depth buffer.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the depth buffer or not
function render.OverrideDepthEnable(enable, shouldWrite)
end

---  client|menu
--- Perform stencil operations to every pixel on the screen.  
function render.PerformFullScreenStencilOperation()
end

---  client|menu
--- Pushes a new clipping plane of the clip plane stack and sets it as active.  
--- 🦟 **BUG**: [A max of 2 clip planes are supported on Linux/POSIX, and 6 on Windows.](https://github.com/Facepunch/garrysmod-issues/issues/2687)  
--- @param normal Vector @The normal of the clipping plane.
--- @param distance number @The distance of the plane from the world origin
function render.PushCustomClipPlane(normal, distance)
end

---  client
--- Reads the color of the specified pixel from the RenderTarget sent by render.CapturePixels  
--- @param x number @The x coordinate.
--- @param y number @The y coordinate.
--- @return number @The red channel value.
--- @return number @The green channel value.
--- @return number @The blue channel value.
--- @return number @The alpha channel value or no value if the render target has no alpha channel.
function render.ReadPixel(x, y)
end

---  client
--- Renders the scene with the specified viewData to the current active render target.  
--- 🦟 **BUG**: [Static props and LODs are rendered improperly due to incorrectly perceived distance.](https://github.com/Facepunch/garrysmod-issues/issues/1330)  
--- @param view? table @The view data to be used in the rendering
function render.RenderView(view)
end

---  client
--- Sets the current drawing material to `color_ignorez`.  
--- The material is defined as:  
--- ```  
--- "UnlitGeneric"  
--- {  
--- "$basetexture" "color/white"  
--- "$model" 		1  
--- "$translucent" 	1  
--- "$vertexalpha" 	1  
--- "$vertexcolor" 	1  
--- "$ignorez"		1  
--- }  
--- ```  
function render.SetColorMaterialIgnoreZ()
end

---  client
--- Sets the color modulation.  
--- @param r number @The red channel multiplier normal ranging from 0-1.
--- @param g number @The green channel multiplier normal ranging from 0-1.
--- @param b number @The blue channel multiplier normal ranging from 0-1.
function render.SetColorModulation(r, g, b)
end

---  client
--- Sets the material to be used in any upcoming render operation using the render.  
--- Not to be confused with surface.SetMaterial.  
--- @param mat IMaterial @The material to be used.
function render.SetMaterial(mat)
end

---  client
--- Sets the render target with the specified index to the specified rt.  
--- @param rtIndex number @The index of the rt to set.
--- @param texture ITexture @The new render target to be used.
function render.SetRenderTargetEx(rtIndex, texture)
end

---  client
--- Sets the shadow projection direction.  
--- @param shadowDirections Vector @The new shadow direction.
function render.SetShadowDirection(shadowDirections)
end

---  client|menu
--- Sets the operation to be performed on the stencil buffer values if the compare function was not successful.  
--- Note that this takes place **before** depth testing.  
--- @param failOperation number @Fail operation function, see Enums/STENCILOPERATION.
function render.SetStencilFailOperation(failOperation)
end

---  client|menu
--- Sets the operation to be performed on the stencil buffer values if the compare function was successful.  
--- @param passOperation number @Pass operation function, see Enums/STENCILOPERATION.
function render.SetStencilPassOperation(passOperation)
end

---  client
--- Start a new beam draw operation.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param segmentCount number @Amount of beam segments that are about to be drawn.
function render.StartBeam(segmentCount)
end

---  client|menu
--- Returns if the current settings and the system allow the usage of vertex shaders 2.0.  
--- @return boolean @Whether Vertex Shaders 2.0 are supported or not.
function render.SupportsVertexShaders_2_0()
end

