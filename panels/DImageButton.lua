--- An image button.  
--- This panel inherits all methods of DButton, such as DLabel:DoClick.  
--- @class DImageButton : DButton
local DImageButton = {}
---  client
--- Returns the "image" of the DImageButton. Equivalent of DImage:GetImage.  
--- @return string @The path to the image that is loaded.
function DImageButton:GetImage()
end

---  client
--- Returns whether the image inside the button should be stretched to fit it or not  
--- See DImageButton:SetStretchToFit  
--- @return boolean 
function DImageButton:GetStretchToFit()
end

---  client
--- Sets the color of the image. Equivalent of DImage:SetImageColor  
--- @param color table @The Global.Color to set
function DImageButton:SetColor(color)
end

---  client
--- 🛑 **DEPRECATED**:   
--- Alias of DImageButton:SetImage.  
--- @deprecated
function DImageButton:SetIcon()
end

---  client
--- Sets the "image" of the DImageButton. Equivalent of DImage:SetImage.  
--- @param strImage string @The path of the image to load
--- @param strBackup string @The path of the backup image.
function DImageButton:SetImage(strImage, strBackup)
end

---  client
--- Hides or shows the image of the image button. Internally this calls Panel:SetVisible on the internal DImage.  
--- @param visible boolean @Set true to make it visible ( default ), or false to hide the image
function DImageButton:SetImageVisible(visible)
end

---  client
--- Sets whether the DImageButton should keep the aspect ratio of its image. Equivalent of DImage:SetKeepAspect.  
--- Note that this will not try to fit the image inside the button, but instead it will fill the button with the image.  
--- @param keep boolean @true to keep the aspect ratio, false not to
function DImageButton:SetKeepAspect(keep)
end

---  client
--- Sets a Global.Material directly as an image. Equivalent of DImage:SetMaterial.  
--- @param mat IMaterial @The material to set
function DImageButton:SetMaterial(mat)
end

---  client
--- See DImage:SetOnViewMaterial  
--- @param mat string 
--- @param backup string 
function DImageButton:SetOnViewMaterial(mat, backup)
end

---  client
--- Sets whether the image inside the DImageButton should be stretched to fill the entire size of the button, without preserving aspect ratio.  
--- If set to false, the image will not be resized at all.  
--- @param stretch boolean @True to stretch, false to not to stretch
function DImageButton:SetStretchToFit(stretch)
end

