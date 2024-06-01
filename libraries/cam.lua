--- This directs all drawing to be done to a certain 2D or 3D plane or position, until the corresponding "End" function is called.  
--- The matrix functions exist, but are mostly unusable unless you're familiar with the source engine's layout for each aspect.  
_G.cam = {}
---  client
--- Shakes the screen at a certain position.  
--- @param pos Vector @Origin of the shake.
--- @param angles Angle @Angles of the shake.
--- @param factor number @The shake factor.
function cam.ApplyShake(pos, angles, factor)
end

---  client
--- Switches the renderer back to the previous drawing mode from a 3D context.  
--- This function is an alias of cam.End3D.  
function cam.End()
end

---  client
--- Switches the renderer back to the previous drawing mode from a 2D context.  
function cam.End2D()
end

---  client
--- Switches the renderer back to the previous drawing mode from a 3D context.  
function cam.End3D()
end

---  client
--- Switches the renderer back to the previous drawing mode from a 3D2D context.  
function cam.End3D2D()
end

---  client
--- Switches the renderer back to the previous drawing mode from a 3D orthographic rendering context.  
function cam.EndOrthoView()
end

---  client
--- Returns a copy of the model matrix that is at the top of the stack.  
--- ℹ **NOTE**: Editing the matrix **will not** edit the current view. To do so, you will have to use cam.PushModelMatrix.  
--- @return VMatrix @The currently active matrix.
function cam.GetModelMatrix()
end

---  client
--- Tells the renderer to ignore the depth buffer and draw any upcoming operation "ontop" of everything that was drawn yet.  
--- This is identical to calling `render.DepthRange( 0, 0.01 )` for `true` and  `render.DepthRange( 0, 1 )` for `false`. See render.DepthRange.  
--- @param ignoreZ boolean @Determines whenever to ignore the depth buffer or not.
function cam.IgnoreZ(ignoreZ)
end

---  client
--- Pops the current active rendering matrix from the stack and reinstates the previous one.  
function cam.PopModelMatrix()
end

---  client
--- Pushes the specified matrix onto the render matrix stack. Unlike opengl, this will replace the current model matrix.  
--- ℹ **NOTE**: This does not work with cam.Start3D2D if `multiply` is false.  
--- ⚠ **WARNING**: When used in the Paint function of a panel, if you want to rely on the top-left position of the panel, you must use VMatrix:Translate with the (0, 0) position of the panel relative to the screen.  
--- @param matrix VMatrix @The matrix to push.
--- @param multiply? boolean @If set, multiplies given matrix with currently active matrix (cam.GetModelMatrix) before pushing.
function cam.PushModelMatrix(matrix, multiply)
end

---  client
--- Sets up a new rendering context. This is an extended version of cam.Start3D and cam.Start2D. Must be finished by cam.End3D or cam.End2D.  
--- 🦟 **BUG**: [This will not update current view properties for 3D contexts.](https://github.com/Facepunch/garrysmod-issues/issues/2682)  
--- @param dataTbl table @Render context config
function cam.Start(dataTbl)
end

---  client
--- Sets up a new 2D rendering context. Must be finished by cam.End2D.  
--- This is almost always used with a render target from the render. To set its position use render.SetViewPort with a target already stored.  
--- ℹ **NOTE**: This will put an identity matrix at the top of the model matrix stack. If you are trying to use cam.PushModelMatrix, call it after this function and not before.  
--- 🟥 **NOTE**: Provides a 2D rendering context  
function cam.Start2D()
end

---  client
--- Sets up a new 3D rendering context. Must be finished by cam.End3D.  
--- For more advanced settings such as an orthographic view, use cam.Start instead, which this is an alias of basically.  
--- 🧱 **NOTE**: Provides a 3D rendering context  
--- 🦟 **BUG**: [Negative x/y values won't work.](https://github.com/Facepunch/garrysmod-issues/issues/1995)  
--- 🦟 **BUG**: [This will not update current view properties.](https://github.com/Facepunch/garrysmod-issues/issues/2682)  
--- @param pos? Vector @Render cam position.
--- @param angles? Angle @Render cam angles.
--- @param fov? number @Field of view.
--- @param x? number @X coordinate of where to start the new view port.
--- @param y? number @Y coordinate of where to start the new view port.
--- @param w? number @Width of the new viewport.
--- @param h? number @Height of the new viewport.
--- @param zNear? number @Distance to near clipping plane
--- @param zFar? number @Distance to far clipping plane.
function cam.Start3D(pos, angles, fov, x, y, w, h, zNear, zFar)
end

---  client
--- Sets up the model transformation matrix to draw 2D content in 3D space and pushes it into the stack (cam.PushModelMatrix).  
--- Matrix formula:  
--- ```  
--- local m = Matrix()  
--- m:SetAngles(angles)  
--- m:SetTranslation(pos)  
--- m:SetScale(Vector(scale, -scale, 1))  
--- ```  
--- ⚠ **WARNING**: This must be closed by cam.End3D2D. If not done so, unexpected issues might arise.  
--- @param pos Vector @Origin of the 3D2D context, ie
--- @param angles Angle @Angles of the 3D2D context
--- @param scale number @The scale of the render context
function cam.Start3D2D(pos, angles, scale)
end

---  client
--- Sets up a new 3d context using orthographic projection.  
--- @param leftOffset number @The left plane offset.
--- @param topOffset number @The top plane offset.
--- @param rightOffset number @The right plane offset.
--- @param bottomOffset number @The bottom plane offset.
function cam.StartOrthoView(leftOffset, topOffset, rightOffset, bottomOffset)
end

