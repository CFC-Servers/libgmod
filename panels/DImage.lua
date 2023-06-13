--- DImage is an advanced, more robust version of the Material panel.  
--- See DImageButton for a click-able version of this panel.  
--- @class DImage : DPanel
local DImage = {}
---  client|menu
--- Returns the image loaded in the image panel.  
--- @return string @The path to the image that is loaded.
function DImage:GetImage()
end

---  client|menu
--- Returns the color override of the image panel.  
--- @return table @The color override of the image
function DImage:GetImageColor()
end

---  client|menu
--- Returns whether the DImage should keep the aspect ratio of its image when being resized.  
--- See DImage:SetKeepAspect for more info on how it works.  
--- @return boolean @Whether the DImage should keep the aspect ratio of its image when being resized.
function DImage:GetKeepAspect()
end

---  client|menu
--- Returns the current Global.Material of the DImage.  
--- @return IMaterial 
function DImage:GetMaterial()
end

---  client|menu
--- Paints a ghost copy of the DImage panel at the given position and dimensions. This function overrides Panel:PaintAt.  
--- @param posX number @The x coordinate to draw the panel from.
--- @param posY number @The y coordinate to draw the panel from.
--- @param width number @The width of the panel image to be drawn.
--- @param height number @The height of the panel image to be drawn.
function DImage:PaintAt(posX, posY, width, height)
end

---  client|menu
--- Sets the image to load into the frame. If the first image can't be loaded and `strBackup` is set, that image will be loaded instead.  
--- This eventually calls DImage:SetMaterial.  
--- @param strImage string @The path of the image to load
--- @param strBackup? string @The path of the backup image.
function DImage:SetImage(strImage, strBackup)
end

---  client|menu
--- Sets the image's color override.  
--- @param col table @The color override of the image
function DImage:SetImageColor(col)
end

---  client|menu
--- Sets whether the DImage should keep the aspect ratio of its image when being resized.  
--- Note that this will not try to fit the image inside the button, but instead it will fill the button with the image.  
--- @param keep boolean @true to keep the aspect ratio, false not to
function DImage:SetKeepAspect(keep)
end

---  client|menu
--- Sets a Global.Material directly as an image.  
--- @param mat IMaterial @The material to set
function DImage:SetMaterial(mat)
end

---  client|menu
--- Similar to DImage:SetImage, but will only do the expensive part of actually loading the textures/material if the material is about to be rendered/viewed.  
--- Useful for cases like DIconBrowser, where there are hundreds of small icons in 1 panel in a list that do not need all to be loaded at the same time.  
--- @param mat string 
--- @param backupMat string 
function DImage:SetOnViewMaterial(mat, backupMat)
end

---  client|menu
--- Returns true if the image is **not** yet loaded.  
--- @return boolean 
function DImage:Unloaded()
end

