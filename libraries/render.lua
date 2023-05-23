--- The render library is a powerful set of functions that let you control how the world and its contents are rendered. It can also be used to draw some 3D clientside effects such as beams, boxes and spheres.  
_G.render = {}
---  client
--- Adds a beam segment to the beam started by render.StartBeam.  
--- @param startPos Vector @Beam start position.
--- @param width number @The width of the beam.
--- @param textureEnd number @The end coordinate of the texture used.
--- @param color table @The color to be used
function render.AddBeam(startPos, width, textureEnd, color)
end

---  client
--- Blurs the render target ( or a given texture )  
--- @param rendertarget ITexture @The texture to blur
--- @param blurx number @Horizontal amount of blur
--- @param blury number @Vertical amount of blur
--- @param passes number @Amount of passes to go through
function render.BlurRenderTarget(rendertarget, blurx, blury, passes)
end

---  client
--- This function overrides the brush material for next render operations. It can be used with Entity:DrawModel.  
--- @param mat? IMaterial 
function render.BrushMaterialOverride(mat)
end

---  client
--- Captures a part of the current render target and returns the data as a binary string in the given format.  
--- Since the pixel buffer clears itself every frame, this will return a black screen outside of render hooks. To capture the user's final view, use GM:PostRender. This will not capture the Steam overlay or third-party injections (such as the Discord overlay, Overwolf, and advanced cheats) on the user's screen.  
--- 🦟 **BUG**: [In PNG mode, this function can produce unexpected result where foreground is rendered as transparent.](https://github.com/Facepunch/garrysmod-issues/issues/2571)  
--- This is caused by render.SetWriteDepthToDestAlpha set to `true` when doing most of render operations, including rendering in `_rt_fullframefb`. If you want to capture render target's content as PNG image only for output quality, set Structures/RenderCaptureData's `alpha` to `false` when capturing render targets with render.SetWriteDepthToDestAlpha set to `true`.  
--- @param captureData table @Parameters of the capture
--- @return string @binaryData
function render.Capture(captureData)
end

---  client
--- Dumps the current render target and allows the pixels to be accessed by render.ReadPixel.  
function render.CapturePixels()
end

---  client|menu
--- Clears the current render target and the specified buffers.  
--- 🦟 **BUG**: [This sets the alpha incorrectly for surface draw calls for render targets.](https://github.com/Facepunch/garrysmod-issues/issues/2085)  
--- @param r number @Red component to clear to.
--- @param g number @Green component to clear to.
--- @param b number @Blue component to clear to.
--- @param a number @Alpha component to clear to.
--- @param clearDepth? boolean @Clear the depth.
--- @param clearStencil? boolean @Clear the stencil.
function render.Clear(r, g, b, a, clearDepth, clearStencil)
end

---  client|menu
--- Clears the current rendertarget for obeying the current stencil buffer conditions.  
--- @param r number @Value of the **red** channel to clear the current rt with.
--- @param g number @Value of the **green** channel to clear the current rt with.
--- @param b number @Value of the **blue** channel to clear the current rt with.
--- @param a number @Value of the **alpha** channel to clear the current rt with.
--- @param depth boolean @Clear the depth buffer.
function render.ClearBuffersObeyStencil(r, g, b, a, depth)
end

---  client|menu
--- Resets the depth buffer.  
--- 🦟 **BUG**: [This function also clears the stencil buffer. Use render.Clear in the meantime.](https://github.com/Facepunch/garrysmod-issues/issues/3317)  
function render.ClearDepth()
end

---  client
--- Clears a render target  
--- It uses render.Clear then render.SetRenderTarget on the modified render target.  
--- @param texture ITexture 
--- @param color table @The color, see Color
function render.ClearRenderTarget(texture, color)
end

---  client|menu
--- Resets all values in the stencil buffer to zero.  
function render.ClearStencil()
end

---  client|menu
--- Sets the stencil value in a specified rect.  
--- This is **not** affected by render.SetStencilWriteMask  
--- @param originX number @X origin of the rectangle.
--- @param originY number @Y origin of the rectangle.
--- @param endX number @The end X coordinate of the rectangle.
--- @param endY number @The end Y coordinate of the rectangle.
--- @param stencilValue number @Value to set cleared stencil buffer to.
function render.ClearStencilBufferRectangle(originX, originY, endX, endY, stencilValue)
end

---  client
--- Calculates the lighting caused by dynamic lights for the specified surface.  
--- @param position Vector @The position to sample from.
--- @param normal Vector @The normal of the surface.
--- @return Vector @A vector representing the light at that point.
function render.ComputeDynamicLighting(position, normal)
end

---  client
--- Calculates the light color of a certain surface.  
--- @param position Vector @The position of the surface to get the light from.
--- @param normal Vector @The normal of the surface to get the light from.
--- @return Vector @A vector representing the light at that point.
function render.ComputeLighting(position, normal)
end

---  client
--- Copies the currently active Render Target to the specified texture.  
--- @param Target ITexture @The texture to copy to
function render.CopyRenderTargetToTexture(Target)
end

---  client
--- Copies the contents of one texture to another. Only works with rendertargets.  
--- @param texture_from ITexture 
--- @param texture_to ITexture 
function render.CopyTexture(texture_from, texture_to)
end

---  client|menu
--- Changes the cull mode.  
--- @param cullMode number @Cullmode, see Enums/MATERIAL_CULLMODE
function render.CullMode(cullMode)
end

---  client
--- Set's the depth range of the upcoming render.  
--- @param depthmin number @The minimum depth of the upcoming render
--- @param depthmax number @The maximum depth of the upcoming render
function render.DepthRange(depthmin, depthmax)
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
--- Draws a box in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Origin of the box.
--- @param angles Angle @Orientation of the box.
--- @param mins Vector @Start position of the box, relative to origin.
--- @param maxs Vector @End position of the box, relative to origin.
--- @param color? table @The color of the box
function render.DrawBox(position, angles, mins, maxs, color)
end

---  client
--- Draws a line in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param startPos Vector @Line start position in world coordinates.
--- @param endPos Vector @Line end position in world coordinates.
--- @param color? table @The color to be used
--- @param writeZ? boolean @Whether or not to consider the Z buffer
function render.DrawLine(startPos, endPos, color, writeZ)
end

---  client
--- Draws 2 connected triangles. Expects material to be set by render.SetMaterial.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param vert1 Vector @First vertex.
--- @param vert2 Vector @The second vertex.
--- @param vert3 Vector @The third vertex.
--- @param vert4 Vector @The fourth vertex.
--- @param color? table @The color of the quad
function render.DrawQuad(vert1, vert2, vert3, vert4, color)
end

---  client
--- Draws a quad.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Origin of the sprite.
--- @param normal Vector @The face direction of the quad.
--- @param width number @The width of the quad.
--- @param height number @The height of the quad.
--- @param color table @The color of the quad
--- @param rotation? number @The rotation of the quad counter-clockwise in degrees around the normal axis
function render.DrawQuadEasy(position, normal, width, height, color, rotation)
end

---  client
--- Draws the current material set by render.SetMaterial to the whole screen. The color cannot be customized.  
--- See also render.DrawScreenQuadEx.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param applyPoster? boolean @If set to true, when rendering a poster the quad will be properly drawn in parts in the poster
function render.DrawScreenQuad(applyPoster)
end

---  client
--- Draws the current material set by render.SetMaterial to the area specified. Color cannot be customized.  
--- See also render.DrawScreenQuad.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param startX number @X start position of the rect.
--- @param startY number @Y start position of the rect.
--- @param width number @Width of the rect.
--- @param height number @Height of the rect.
function render.DrawScreenQuadEx(startX, startY, width, height)
end

---  client
--- Draws a sphere in 3D space. The material previously set with render.SetMaterial will be applied the sphere's surface.  
--- See also render.DrawWireframeSphere for a wireframe equivalent.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Position of the sphere.
--- @param radius number @Radius of the sphere
--- @param longitudeSteps number @The number of longitude steps
--- @param latitudeSteps number @The number of latitude steps
--- @param color? table @The color of the sphere
function render.DrawSphere(position, radius, longitudeSteps, latitudeSteps, color)
end

---  client
--- Draws a sprite in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Position of the sprite.
--- @param width number @Width of the sprite.
--- @param height number @Height of the sprite.
--- @param color? table @Color of the sprite
function render.DrawSprite(position, width, height, color)
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
--- Draws a wireframe box in 3D space.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param position Vector @Position of the box.
--- @param angle Angle @Angles of the box.
--- @param mins Vector @The lowest corner of the box.
--- @param maxs Vector @The highest corner of the box.
--- @param color? table @The color of the box
--- @param writeZ? boolean @Sets whenever to write to the zBuffer.
function render.DrawWireframeBox(position, angle, mins, maxs, color, writeZ)
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

---  client|menu
--- Sets the status of the clip renderer, returning previous state.  
--- ⚠ **WARNING**: To prevent unintended rendering behavior of other mods/the game, you must reset the clipping state to its previous value.  
--- @param state boolean @New clipping state.
--- @return boolean @Previous clipping state.
function render.EnableClipping(state)
end

---  client
--- Ends the beam mesh of a beam started with render.StartBeam.  
function render.EndBeam()
end

---  client
--- Sets the color of the fog.  
--- @param red number @Red channel of the fog color, 0 - 255.
--- @param green number @Green channel of the fog color, 0 - 255.
--- @param blue number @Blue channel of the fog color, 0 - 255.
function render.FogColor(red, green, blue)
end

---  client
--- Sets the at which the fog reaches its max density.  
--- @param distance number @The distance at which the fog reaches its max density
function render.FogEnd(distance)
end

---  client
--- Sets the maximum density of the fog.  
--- @param maxDensity number @The maximum density of the fog, 0-1.
function render.FogMaxDensity(maxDensity)
end

---  client
--- Sets the mode of fog.  
--- @param fogMode number @Fog mode, see Enums/MATERIAL_FOG.
function render.FogMode(fogMode)
end

---  client
--- Sets the distance at which the fog starts showing up.  
--- @param fogStart number @The distance at which the fog starts showing up
function render.FogStart(fogStart)
end

---  client
--- Returns the ambient color of the map.  
--- @return Vector @color
function render.GetAmbientLightColor()
end

---  client
--- Returns the current alpha blending.  
--- @return number @Current alpha blending in range 0 to 1.
function render.GetBlend()
end

---  client
--- @return ITexture @The bloom texture
function render.GetBloomTex0()
end

---  client
--- @return ITexture 
function render.GetBloomTex1()
end

---  client
--- Returns the current color modulation values as normals.  
--- @return number @r
--- @return number @g
--- @return number @b
function render.GetColorModulation()
end

---  client|menu
--- Returns the maximum available directX version.  
--- @return number @dxLevel
function render.GetDXLevel()
end

---  client
--- Returns the current fog color.  
--- @return number @Red part of the color.
--- @return number @Green part of the color
--- @return number @Blue part of the color
function render.GetFogColor()
end

---  client
--- Returns the fog start and end distance.  
--- @return number @Fog start distance set by render.FogStart
--- @return number @For end distance set by render.FogEnd
--- @return number @Fog Z distance set by render.SetFogZ
function render.GetFogDistances()
end

---  client
--- Returns the fog mode.  
--- @return number @Fog mode, see Enums/MATERIAL_FOG
function render.GetFogMode()
end

---  client
--- Returns the _rt_FullFrameDepth texture. Alias of _rt_PowerOfTwoFB  
--- @return ITexture 
function render.GetFullScreenDepthTexture()
end

---  client|menu
--- Returns whether HDR is currently enabled or not. This takes into account hardware support, current map and current client settings.  
--- @return boolean @`true` if the player currently has HDR enabled.
function render.GetHDREnabled()
end

---  client
--- Gets the light exposure on the specified position.  
--- @param position Vector @The position of the surface to get the light from.
--- @return Vector @lightColor
function render.GetLightColor(position)
end

---  client
--- @return ITexture 
function render.GetMoBlurTex0()
end

---  client
--- @return ITexture 
function render.GetMoBlurTex1()
end

---  client
--- @return ITexture 
function render.GetMorphTex0()
end

---  client
--- @return ITexture 
function render.GetMorphTex1()
end

---  client
--- Returns the render target's power of two texture.  
--- @return ITexture @The power of two texture, which is **_rt_poweroftwofb** by default.
function render.GetPowerOfTwoTexture()
end

---  client
--- Alias of render.GetPowerOfTwoTexture.  
--- @return ITexture 
function render.GetRefractTexture()
end

---  client
--- Returns the currently active render target.  
--- Instead of saving the current render target using this function and restoring to it later, it is generally better practice to use render.PushRenderTarget and render.PopRenderTarget.  
--- @return ITexture @The currently active Render Target
function render.GetRenderTarget()
end

---  client
--- Returns the `_rt_ResolvedFullFrameDepth` texture for SSAO depth. It will only be updated if GM:NeedsDepthPass returns true.  
--- @return ITexture @The depth texture.
function render.GetResolvedFullFrameDepth()
end

---  client
--- Obtain an ITexture of the screen. You must call render.UpdateScreenEffectTexture in order to update this texture with the currently rendered scene.  
--- This texture is mainly used within GM:RenderScreenspaceEffects  
--- @param textureIndex? number @Max index is 3, but engine only creates the first two for you.
--- @return ITexture 
function render.GetScreenEffectTexture(textureIndex)
end

---  client
--- @return ITexture 
function render.GetSmallTex0()
end

---  client
--- @return ITexture 
function render.GetSmallTex1()
end

---  client
--- Returns a floating point texture the same resolution as the screen.  
--- ℹ **NOTE**: The gmodscreenspace doesn't behave as expected when drawing a floating-point texture to an integer texture (e.g. the default render target). Use an UnlitGeneric material instead  
--- @return ITexture @Render target named "__rt_supertexture1"
function render.GetSuperFPTex()
end

---  client
--- See render.GetSuperFPTex  
--- @return ITexture @Render target named "__rt_supertexture2"
function render.GetSuperFPTex2()
end

---  client
--- Performs a render trace and returns the color of the surface hit, this uses a low res version of the texture.  
--- @param startPos Vector @The start position to trace from.
--- @param endPos Vector @The end position of the trace.
--- @return Vector @color
function render.GetSurfaceColor(startPos, endPos)
end

---  client
--- Returns a vector representing linear tone mapping scale.  
--- @return Vector @The vector representing linear tone mapping scale.
function render.GetToneMappingScaleLinear()
end

---  client
--- Returns the current view setup.  
--- @param noPlayer? boolean @If `true`, returns the `view->GetViewSetup`, if `false` - returns `view->GetPlayerViewSetup`
--- @return table @Current current view setup
function render.GetViewSetup(noPlayer)
end

---  client
--- Sets the render material override for all next calls of Entity:DrawModel. Also overrides render.MaterialOverrideByIndex.  
--- @param material IMaterial @The material to use as override, use nil to disable.
function render.MaterialOverride(material)
end

---  client
--- Similar to render.MaterialOverride, but overrides the materials per index.  
--- render.MaterialOverride overrides effects of this function.  
--- @param index number @Starts with 0, the index of the material to override
--- @param material IMaterial @The material to override with
function render.MaterialOverrideByIndex(index, material)
end

---  client|menu
--- Returns the maximum texture height the renderer can handle.  
--- @return number @maxTextureHeight
function render.MaxTextureHeight()
end

---  client|menu
--- Returns the maximum texture width the renderer can handle.  
--- @return number @maxTextureWidth
function render.MaxTextureWidth()
end

---  client
--- Creates a new Global.ClientsideModel, renders it at the specified pos/ang, and removes it. Can also be given an existing CSEnt to reuse instead.  
--- ℹ **NOTE**: This function is only meant to be used in a single render pass kind of scenario, if you need to render a model continuously, use a cached Global.ClientsideModel and provide it as a second argument.  
--- 🦟 **BUG**: [Using this with a map model (game.GetWorld():GetModel()) crashes the game.](https://github.com/Facepunch/garrysmod-issues/issues/3307)  
--- @param settings table @Requires:
--- @param ent? CSEnt @If provided, this entity will be reused instead of creating a new one with Global.ClientsideModel
function render.Model(settings, ent)
end

---  client
--- Sets a material to override a model's default material. Similar to Entity:SetMaterial except it uses an IMaterial argument and it can be used to change materials on models which are part of the world geometry.  
--- @param material IMaterial @The material override.
function render.ModelMaterialOverride(material)
end

---  client|menu
--- Overrides the write behaviour of all next rendering operations towards the alpha channel of the current render target.  
--- See also render.OverrideBlend.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the alpha channel or not
function render.OverrideAlphaWriteEnable(enable, shouldWrite)
end

---  client|menu
--- Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.  
--- See also render.OverrideAlphaWriteEnable.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and won't have an effect.  
--- @param enabled boolean @true to enable, false to disable
--- @param srcBlend number @The source color blend function Enums/BLEND
--- @param destBlend number @The destination color blend function Enums/BLEND.
--- @param blendFunc number @The blend mode used for drawing the color layer Enums/BLENDFUNC.
--- @param srcBlendAlpha? number @The source alpha blend function Enums/BLEND
--- @param destBlendAlpha? number @The destination alpha blend function Enums/BLEND.
--- @param blendFuncAlpha? number @The blend mode used for drawing the alpha layer Enums/BLENDFUNC.
function render.OverrideBlend(enabled, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha)
end

---  client|menu
--- 🛑 **DEPRECATED**: Use render.OverrideBlend instead.  
--- Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.  
--- See also render.OverrideAlphaWriteEnable.  
--- ℹ **NOTE**: Doing surface draw calls with alpha set to 0 is a no-op and will never have any effect.  
--- @param enabled boolean @true to enable, false to disable
--- @param srcBlend number @The source color blend function Enums/BLEND
--- @param destBlend number 
--- @param srcBlendAlpha? number @The source alpha blend function Enums/BLEND
--- @param destBlendAlpha? number 
--- @deprecated
function render.OverrideBlendFunc(enabled, srcBlend, destBlend, srcBlendAlpha, destBlendAlpha)
end

---  client|menu
--- Overrides the write behaviour of all next rendering operations towards the color channel of the current render target.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the color channel or not
function render.OverrideColorWriteEnable(enable, shouldWrite)
end

---  client|menu
--- Overrides the write behaviour of all next rendering operations towards the depth buffer.  
--- @param enable boolean @Enable or disable the override.
--- @param shouldWrite boolean @If the previous argument is true, sets whether the next rendering operations should write to the depth buffer or not
function render.OverrideDepthEnable(enable, shouldWrite)
end

---  client|menu
function render.PerformFullScreenStencilOperation()
end

---  client|menu
--- Removes the current active clipping plane from the clip plane stack.  
function render.PopCustomClipPlane()
end

---  client|menu
--- Pops the current texture magnification filter from the filter stack.  
--- See render.PushFilterMag  
function render.PopFilterMag()
end

---  client|menu
--- Pops the current texture minification filter from the filter stack.  
--- See render.PushFilterMin  
function render.PopFilterMin()
end

---  client
--- Pops the current flashlight mode from the flashlight mode stack.  
function render.PopFlashlightMode()
end

---  client
--- Pops the last render target and viewport from the RT stack and sets them as the current render target and viewport.  
--- This is should be called to restore the previous render target and viewport after a call to render.PushRenderTarget.  
function render.PopRenderTarget()
end

---  client|menu
--- Pushes a new clipping plane of the clip plane stack and sets it as active.  
--- 🦟 **BUG**: [A max of 2 clip planes are supported on Linux/POSIX, and 6 on Windows.](https://github.com/Facepunch/garrysmod-issues/issues/2687)  
--- @param normal Vector @The normal of the clipping plane.
--- @param distance number @The distance of the plane from the world origin
function render.PushCustomClipPlane(normal, distance)
end

---  client|menu
--- Pushes a texture filter onto the magnification texture filter stack.  
--- See also render.PushFilterMin and render.PopFilterMag.  
--- @param texFilterType number @The texture filter type, see Enums/TEXFILTER
function render.PushFilterMag(texFilterType)
end

---  client|menu
--- Pushes a texture filter onto the minification texture filter stack.  
--- See also render.PushFilterMag and render.PopFilterMin.  
--- @param texFilterType number @The texture filter type, see Enums/TEXFILTER
function render.PushFilterMin(texFilterType)
end

---  client
--- Enables the flashlight projection for the upcoming rendering.  
--- 🦟 **BUG**: [This will leave models lit under specific conditions.](https://github.com/Facepunch/garrysmod-issues/issues/3029)  
--- @param enable? boolean @Whether the flashlight mode should be enabled or disabled.
function render.PushFlashlightMode(enable)
end

---  client
--- Pushes the current render target and viewport to the RT stack then sets a new current render target and viewport. If the viewport is not specified, the dimensions of the render target are used instead.  
--- This is similar to a call to render.SetRenderTarget and render.SetViewPort where the current render target and viewport have been saved beforehand, except the viewport isn't clipped to screen bounds.  
--- See also render.PopRenderTarget.  
--- ℹ **NOTE**: If you want to render to the render target in 2d mode and it is not the same size as the screen, use cam.Start2D and cam.End2D.  
--- ℹ **NOTE**: If the render target is bigger than the screen, rendering done with the surface library will be clipped to the screen bounds unless you call Global.DisableClipping  
--- @param texture ITexture @The new render target to be used.
--- @param x? number @X origin of the viewport.
--- @param y? number @Y origin of the viewport.
--- @param w? number @Width of the viewport.
--- @param h? number @Height of the viewport
function render.PushRenderTarget(texture, x, y, w, h)
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
--- This applies the changes made to map lighting using engine.LightStyle.  
--- @param DoStaticProps? boolean @When true, this will also apply lighting changes to static props
--- @param UpdateStaticLighting? boolean @Forces all props to update their static lighting
function render.RedownloadAllLightmaps(DoStaticProps, UpdateStaticLighting)
end

---  client
--- Renders the HUD on the screen.  
--- @param x number @X position for the HUD draw origin.
--- @param y number @Y position for the HUD draw origin.
--- @param w number @Width of the HUD draw.
--- @param h number @Height of the HUD draw.
function render.RenderHUD(x, y, w, h)
end

---  client
--- Renders the scene with the specified viewData to the current active render target.  
--- 🦟 **BUG**: [Static props and LODs are rendered improperly due to incorrectly perceived distance.](https://github.com/Facepunch/garrysmod-issues/issues/1330)  
--- @param view? table @The view data to be used in the rendering
function render.RenderView(view)
end

---  client
--- Resets the model lighting to the specified color.  
--- Calls render.SetModelLighting for every direction with given color.  
--- @param r number @The red part of the color, 0-1
--- @param g number @The green part of the color, 0-1
--- @param b number @The blue part of the color, 0-1
function render.ResetModelLighting(r, g, b)
end

---  client
--- Resets the HDR tone multiplier to the specified value.  
--- This will only work on HDR maps, and the value will automatically fade to what it was ( or whatever render.SetGoalToneMappingScale is ) if called only once.  
--- @param scale number @The value which should be used as multiplier.
function render.ResetToneMappingScale(scale)
end

---  client
--- Sets the ambient lighting for any upcoming render operation.  
--- @param r number @The red part of the color, 0-1.
--- @param g number @The green part of the color, 0-1.
--- @param b number @The blue part of the color, 0-1.
function render.SetAmbientLight(r, g, b)
end

---  client
--- Sets the alpha blending for every upcoming render operation.  
--- 🦟 **BUG**: [This does not affect non-model `render.Draw*` functions.](https://github.com/Facepunch/garrysmod-issues/issues/3166)  
--- @param blending number @Blending value from `0-1`.
function render.SetBlend(blending)
end

---  client
--- Sets the current drawing material to "color".  
--- The material is defined as:  
--- ```  
--- "UnlitGeneric"  
--- {  
--- "$basetexture" "color/white"  
--- "$model" 		1  
--- "$translucent" 	1  
--- "$vertexalpha" 	1  
--- "$vertexcolor" 	1  
--- }  
--- ```  
function render.SetColorMaterial()
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
--- If the fog mode is set to MATERIAL_FOG_LINEAR_BELOW_FOG_Z, the fog will only be rendered below the specified height.  
--- @param fogZ number @The fog Z.
function render.SetFogZ(fogZ)
end

---  client
--- Sets the goal HDR tone mapping scale.  
--- Use this in a rendering/think hook as it is reset every frame.  
--- @param scale number @The target scale.
function render.SetGoalToneMappingScale(scale)
end

---  client
--- Sets lighting mode when rendering something.  
--- ℹ **NOTE**: **Do not forget to restore the default value** to avoid unexpected behavior, like the world and the HUD/UI being affected  
--- @param Mode number @Lighting render mode
function render.SetLightingMode(Mode)
end

---  client
--- Sets the lighting origin.  
--- 🦟 **BUG**: [This does not work for prop_physics.](https://github.com/Facepunch/garrysmod-issues/issues/2804)  
--- @param lightingOrigin Vector @The position from which the light should be "emitted".
function render.SetLightingOrigin(lightingOrigin)
end

---  client
--- Sets the texture to be used as the lightmap in upcoming rendering operations. This is required when rendering meshes using a material with a lightmapped shader such as LightmappedGeneric.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- <rendercontext hook="false" type="2D"></rendercontext>  
--- @param tex ITexture @The texture to be used as the lightmap.
function render.SetLightmapTexture(tex)
end

---  client
--- Sets up the local lighting for any upcoming render operation. Up to 4 local lights can be defined, with one of three different types (point, directional, spot).  
--- Disables all local lights if called with no arguments.  
--- @param lights? table @A table containing up to 4 tables for each light source that should be set up
function render.SetLocalModelLights(lights)
end

---  client
--- Sets the material to be used in any upcoming render operation using the render.  
--- Not to be confused with surface.SetMaterial.  
--- @param mat IMaterial @The material to be used.
function render.SetMaterial(mat)
end

---  client
--- Sets up the ambient lighting for any upcoming render operation. Ambient lighting can be seen as a cube enclosing the object to be drawn, each of its faces representing a directional light source that shines towards the object. Thus, there is a total of six different light sources that can be configured separately.  
--- Light color components are not restricted to a specific range (i.e. 0-255), instead, higher values will result in a brighter light.  
--- @param lightDirection number @The light source to edit, see Enums/BOX.
--- @param red number @The red component of the light color.
--- @param green number @The green component of the light color.
--- @param blue number @The blue component of the light color.
function render.SetModelLighting(lightDirection, red, green, blue)
end

---  client
--- Sets the render target to the specified rt.  
--- @param texture ITexture @The new render target to be used.
function render.SetRenderTarget(texture)
end

---  client
--- Sets the render target with the specified index to the specified rt.  
--- @param rtIndex number @The index of the rt to set.
--- @param texture ITexture @The new render target to be used.
function render.SetRenderTargetEx(rtIndex, texture)
end

---  client|menu
--- Sets a scissoring rect which limits the drawing area.  
--- @param startX number @X start coordinate of the scissor rect.
--- @param startY number @Y start coordinate of the scissor rect.
--- @param endX number @X end coordinate of the scissor rect.
--- @param endY number @Y end coordinate of the scissor rect.
--- @param enable boolean @Enable or disable the scissor rect.
function render.SetScissorRect(startX, startY, endX, endY, enable)
end

---  client
--- Sets the shadow color.  
--- @param red number @The red channel of the shadow color.
--- @param green number @The green channel of the shadow color.
--- @param blue number @The blue channel of the shadow color.
function render.SetShadowColor(red, green, blue)
end

---  client
--- Sets the shadow projection direction.  
--- @param shadowDirections Vector @The new shadow direction.
function render.SetShadowDirection(shadowDirections)
end

---  client
--- Sets the maximum shadow projection range.  
--- @param shadowDistance number @The new maximum shadow distance.
function render.SetShadowDistance(shadowDistance)
end

---  client
--- Sets whether any future render operations will ignore shadow drawing.  
--- @param newState boolean 
function render.SetShadowsDisabled(newState)
end

---  client|menu
--- Sets the compare function of the stencil.  
--- Pixels which fail the stencil comparison function are not written to the render target. The operation to be performed on the stencil buffer values for these pixels can be set using render.SetStencilFailOperation.  
--- Pixels which pass the stencil comparison function are written to the render target unless they fail the depth buffer test (where applicable). The operation to perform on the stencil buffer values for these pixels can be set using render.SetStencilPassOperation and render.SetStencilZFailOperation.  
--- @param compareFunction number @Compare function, see Enums/STENCILCOMPARISONFUNCTION, and Enums/STENCIL for short.
function render.SetStencilCompareFunction(compareFunction)
end

---  client|menu
--- Sets whether stencil tests are carried out for each rendered pixel.  
--- Only pixels passing the stencil test are written to the render target.  
--- @param newState boolean @The new state.
function render.SetStencilEnable(newState)
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

---  client|menu
--- Sets the reference value which will be used for all stencil operations. This is an unsigned integer.  
--- @param referenceValue number @Reference value.
function render.SetStencilReferenceValue(referenceValue)
end

---  client|menu
--- Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing.  
--- @param mask number @The mask bitflag.
function render.SetStencilTestMask(mask)
end

---  client|menu
--- Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer.  
--- @param mask number @The mask bitflag.
function render.SetStencilWriteMask(mask)
end

---  client|menu
--- Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails.  
--- @param zFailOperation number @Z fail operation function, see Enums/STENCILOPERATION
function render.SetStencilZFailOperation(zFailOperation)
end

---  client
--- @param vec Vector 
function render.SetToneMappingScaleLinear(vec)
end

---  client|menu
--- Changes the view port position and size. The values will be clamped to the game's screen resolution.  
--- If you are looking to render something to a texture (render target), you should use render.PushRenderTarget.  
--- ℹ **NOTE**: This function will override values of Global.ScrW and Global.ScrH with the ones you set.  
--- @param x number @X origin of the view port.
--- @param y number @Y origin of the view port.
--- @param w number @Width of the view port.
--- @param h number @Height of the view port.
function render.SetViewPort(x, y, w, h)
end

---  client
--- Sets the internal parameter **INT_RENDERPARM_WRITE_DEPTH_TO_DESTALPHA**  
--- @param enable boolean 
function render.SetWriteDepthToDestAlpha(enable)
end

---  client
--- Swaps the frame buffers/cycles the frame. In other words, this updates the screen.  
--- If you take a really long time during a single frame render, it is a good idea to use this and let the user know that the game isn't stuck.  
function render.Spin()
end

---  client
--- Start a new beam draw operation.  
--- 🧱 **NOTE**: Requires a 3D rendering context  
--- @param segmentCount number @Amount of beam segments that are about to be drawn.
function render.StartBeam(segmentCount)
end

---  client|menu
--- Returns whether the player's hardware supports HDR. (High Dynamic Range) HDR can still be disabled by the `mat_hdr_level` console variable or just not be supported by the map.  
--- @return boolean @`true` if the player's hardware supports HDR.
function render.SupportsHDR()
end

---  client|menu
--- Returns if the current settings and the system allow the usage of pixel shaders 1.4.  
--- @return boolean @Whether Pixel Shaders 1.4 are supported or not.
function render.SupportsPixelShaders_1_4()
end

---  client|menu
--- Returns if the current settings and the system allow the usage of pixel shaders 2.0.  
--- @return boolean @Whether Pixel Shaders 2.0 are supported or not.
function render.SupportsPixelShaders_2_0()
end

---  client|menu
--- Returns if the current settings and the system allow the usage of vertex shaders 2.0.  
--- @return boolean @Whether Vertex Shaders 2.0 are supported or not.
function render.SupportsVertexShaders_2_0()
end

---  client
--- Suppresses or enables any engine lighting for any upcoming render operation.  
--- 🦟 **BUG**: [This does not affect IMeshes.](https://github.com/Facepunch/garrysmod-issues/issues/4070)  
--- @param suppressLighting boolean @True to suppress false to enable.
function render.SuppressEngineLighting(suppressLighting)
end

---  client
--- Enables HDR tone mapping which influences the brightness.  
function render.TurnOnToneMapping()
end

---  client
--- Updates the texture returned by render.GetFullScreenDepthTexture.  
--- Silently fails if render.SupportsPixelShaders_2_0 returns false.  
function render.UpdateFullScreenDepthTexture()
end

---  client
--- Updates the power of two texture.  
--- @return ITexture @Returns render.GetPowerOfTwoTexture.
function render.UpdatePowerOfTwoTexture()
end

---  client
--- Pretty much alias of render.UpdatePowerOfTwoTexture but does not return the texture.  
function render.UpdateRefractTexture()
end

---  client
--- Copies the entire screen to the screen effect texture, which can be acquired via render.GetScreenEffectTexture. This function is mainly intended to be used in GM:RenderScreenspaceEffects  
function render.UpdateScreenEffectTexture()
end

---  client
--- This function overrides all map materials for one frame.  
--- @param mat? IMaterial 
function render.WorldMaterialOverride(mat)
end

