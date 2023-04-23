--- Creates a slider that can be moved along the X and/or Y axis  
--- @class DSlider : Panel
local DSlider = {}
--- Identical to DSlider:IsEditing  
--- @return boolean 
function DSlider:GetDragging()
end

--- Returns the draggable panel's lock on the X axis.  
--- See DSlider:SetLockX for more info.  
--- @return number 
function DSlider:GetLockX()
end

--- Returns the draggable panel's lock on the Y axis.  
--- See DSlider:SetLockY for more info.  
--- @return number 
function DSlider:GetLockY()
end

--- 🛑 **DEPRECATED**: Does not affect anything by default.  
--- Returns the current notch color, set by DSlider:SetNotchColor  
--- @deprecated
--- @return Color @The current color
function DSlider:GetNotchColor()
end

--- 🛑 **DEPRECATED**:   
--- Appears to be non functioning, however is still used by panels such as DNumSlider.  
--- @deprecated
--- @return number 
function DSlider:GetNotches()
end

--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
--- @return any 
function DSlider:GetNumSlider()
end

--- Returns the target position of the draggable "knob" panel of the slider on the X axis.  
--- Set by DSlider:SetSlideX.  
--- @return number @The value range seems to be from 0 to 1
function DSlider:GetSlideX()
end

--- Returns the target position of the draggable "knob" panel of the slider on the Y axis.  
--- Set by DSlider:SetSlideY.  
--- @return number @The value range seems to be from 0 to 1
function DSlider:GetSlideY()
end

--- Returns the value set by DSlider:SetTrapInside.  
--- @return boolean 
function DSlider:GetTrapInside()
end

--- Returns true if this element is being edited by the player.  
--- @return boolean 
function DSlider:IsEditing()
end

--- Called when the values of this slider panel were changed.  
--- @param x number @The X axis position of the slider in range 0-1
--- @param y number @The Y axis position of the slider in range 0-1
function DSlider:OnValueChanged(x, y)
end

--- Sets the background for the slider.  
--- @param path string @Path to the image.
function DSlider:SetBackground(path)
end

--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
function DSlider:SetImage()
end

--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
function DSlider:SetImageColor()
end

--- Sets the lock on the X axis.  
--- For example the value 0.5 will lock the draggable panel to half the width of the slider's panel.  
--- @param lockX? number @Set to nil to reset lock
function DSlider:SetLockX(lockX)
end

--- Sets the lock on the Y axis.  
--- For example the value 0.5 will lock the draggable panel to half the height of the slider's panel.  
--- @param lockY? number @Set to nil to reset lock
function DSlider:SetLockY(lockY)
end

--- 🛑 **DEPRECATED**: Does not affect anything by default.  
--- Sets the current notch color, overriding the color set by the derma skin.  
--- @param clr Color @The new color to set
--- @deprecated
function DSlider:SetNotchColor(clr)
end

--- 🛑 **DEPRECATED**:   
--- Appears to be non functioning, however is still used by panels such as DNumSlider.  
--- @param notches number 
--- @deprecated
function DSlider:SetNotches(notches)
end

--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param slider any 
--- @deprecated
function DSlider:SetNumSlider(slider)
end

--- Used to position the draggable panel of the slider on the X axis.  
--- @param x number @The value range seems to be from 0 to 1
function DSlider:SetSlideX(x)
end

--- Used to position the draggable panel of the slider on the Y axis.  
--- @param y number @The value range seems to be from 0 to 1
function DSlider:SetSlideY(y)
end

--- Makes the slider itself, the "knob", trapped within the bounds of the slider panel. Example:  
--- <upload src="70c/8dafb0260022da3.png" size="6257" name="image.png">  
--- </upload>  
--- @param trap boolean 
function DSlider:SetTrapInside(trap)
end

--- For override by child panels, such as DNumSlider. Allows changing the output values of the slider.  
--- @param x number @The input X coordinate, in range of 0-1.
--- @param y number @The input Y coordinate, in range of 0-1.
--- @return number @The output X coordinate, in range of 0-1.
--- @return number @The output X coordinate, in range of 0-1.
function DSlider:TranslateValues(x, y)
end

