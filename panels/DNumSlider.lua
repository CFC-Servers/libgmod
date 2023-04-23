--- The DNumSlider allows you to create a slider, allowing the user to slide it to set a value, or changing the value in the box.  
--- @class DNumSlider : Panel
local DNumSlider = {}
--- Returns the amount of numbers after the decimal point.  
--- @return number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumSlider:GetDecimals()
end

--- Returns the default value of the slider, if one was set by DNumSlider:SetDefaultValue  
--- @return number @The default value of the slider
function DNumSlider:GetDefaultValue()
end

--- Returns the maximum value of the slider  
--- @return number @The maximum value of the slider
function DNumSlider:GetMax()
end

--- Returns the minimum value of the slider  
--- @return number @The minimum value of the slider
function DNumSlider:GetMin()
end

--- Returns the range of the slider, basically maximum value - minimum value.  
--- @return number @The range of the slider
function DNumSlider:GetRange()
end

--- Returns the DTextEntry component of the slider.  
--- @return Panel @The DTextEntry.
function DNumSlider:GetTextArea()
end

--- Returns the value of the DNumSlider  
--- @return number @The value of the slider.
function DNumSlider:GetValue()
end

--- Returns true if either the DTextEntry, the DSlider or the DNumberScratch are being edited.  
--- @return boolean @Whether or not the DNumSlider is being edited by the player.
function DNumSlider:IsEditing()
end

--- Called when the value of the slider is changed, through code or changing the slider.  
--- @param value number @The new value of the DNumSlider.
function DNumSlider:OnValueChanged(value)
end

--- Resets the slider to the default value, if one was set by DNumSlider:SetDefaultValue.  
--- This function is called by the DNumSlider when user middle mouse clicks on the draggable knob of the slider.  
function DNumSlider:ResetToDefaultValue()
end

--- Sets the console variable to be updated when the value of the slider is changed.  
--- @param cvar string @The name of the ConVar to be updated.
function DNumSlider:SetConVar(cvar)
end

--- 🛑 **DEPRECATED**:   
--- Calls DLabel:SetDark on the DLabel part of the DNumSlider.  
--- @param dark boolean 
--- @deprecated
function DNumSlider:SetDark(dark)
end

--- Sets the desired amount of numbers after the decimal point.  
--- ℹ **NOTE**:   
--- This doesn't affect values passed to DNumSlider:OnValueChanged.  
--- ℹ **NOTE**:   
--- To get right values passed to DNumSlider:OnValueChanged use math.Round.  
--- @param decimals number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumSlider:SetDecimals(decimals)
end

--- Sets the default value of the slider, to be used by DNumSlider:ResetToDefaultValue or by middle mouse clicking the draggable knob of the slider.  
--- @param default number @The new default value of the slider to set
function DNumSlider:SetDefaultValue(default)
end

--- Sets the maximum value for the slider.  
--- @param max number @The value to set as maximum for the slider.
function DNumSlider:SetMax(max)
end

--- Sets the minimum value for the slider  
--- @param min number @The value to set as minimum for the slider.
function DNumSlider:SetMin(min)
end

--- Sets the minimum and the maximum value of the slider.  
--- @param min number @The minimum value of the slider.
--- @param max number @The maximum value of the slider.
function DNumSlider:SetMinMax(min, max)
end

--- Sets the value of the DNumSlider.  
--- @param val number @The value to set.
function DNumSlider:SetValue(val)
end

