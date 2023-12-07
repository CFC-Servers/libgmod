_G.surface = {}
---  client|menu
--- Draws a hollow circle, made of lines. For a filled circle, see examples for surface.DrawPoly.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param originX number @The center x integer coordinate.
--- @param originY number @The center y integer coordinate.
--- @param radius number @The radius of the circle.
--- @param r number @The red value of the color to draw the circle with, or a Color.
--- @param g number @The green value of the color to draw the circle with
--- @param b number @The blue value of the color to draw the circle with
--- @param a? number @The alpha value of the color to draw the circle with
function surface.DrawCircle(originX, originY, radius, r, g, b, a)
end

---  client|menu
--- Draws a solid rectangle on the screen.  
--- 🟥 **NOTE**: Requires a 2D rendering context  
--- @param x number @The X integer co-ordinate.
--- @param y number @The Y integer co-ordinate.
--- @param width number @The integer width of the rectangle.
--- @param height number @The integer height of the rectangle.
function surface.DrawRect(x, y, width, height)
end

---  client|menu
--- Returns the current color affecting draw operations.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @return table @The color that drawing operations will use as a Color.
function surface.GetDrawColor()
end

---  client|menu
--- Play a sound file directly on the client (such as UI sounds, etc).  
--- ℹ **NOTE**:   
--- Valid sample rates: **11025 Hz, 22050 Hz and 44100 Hz**, otherwise you may see this kind of message:  
--- `Unsupported 32-bit wave file your_sound.wav` and  
--- `Invalid sample rate (48000) for sound 'your_sound.wav'`  
--- @param soundfile string @The path to the sound file
function surface.PlaySound(soundfile)
end

---  client|menu
--- Sets the texture to be used in all upcoming draw operations using the surface library.  
--- See surface.SetMaterial for an IMaterial alternative.  
--- ℹ **NOTE**: It's probably best to use the alternative mentioned above.  
--- @param textureID number @The ID of the texture to draw with returned by surface.GetTextureID.
function surface.SetTexture(textureID)
end

