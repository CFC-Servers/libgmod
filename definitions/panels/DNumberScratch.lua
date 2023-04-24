--- Choose a number from a number line, with zooming for precision. Zoom in by moving your mouse forward and moving back does the opposite. Looks like a blue circle until you click and hold on it  
--- @class DNumberScratch : DImageButton
local DNumberScratch = {}
--- Returns whether this panel is active or not, i.e. if the player is currently changing its value.  
--- @return boolean 
function DNumberScratch:GetActive()
end

--- Returns the desired amount of numbers after the decimal point.  
--- @return number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumberScratch:GetDecimals()
end

--- Returns the real value of the DNumberScratch as a number.  
--- See also DNumberScratch:GetTextValue and DNumberScratch:GetFraction.  
--- @return number @The real value of the DNumberScratch
function DNumberScratch:GetFloatValue()
end

--- Returns the value of the DNumberScratch as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the DNumberScratch.  
--- See also:  
--- * DNumberScratch:GetTextValue  
--- * DNumberScratch:GetFloatValue  
--- * DNumberScratch:SetFraction  
--- @return number @A value between 0 and 1
function DNumberScratch:GetFraction()
end

--- Returns the maximum value that can be selected on the number scratch  
--- @return number @The maximum value that can be selected on the number scratch
function DNumberScratch:GetMax()
end

--- Returns the minimum value that can be selected on the number scratch  
--- @return number @The minimum value that can be selected on the number scratch
function DNumberScratch:GetMin()
end

--- Returns the range of the DNumberScratch. Basically max value - min value.  
--- @return number @The range of the DNumberScratch
function DNumberScratch:GetRange()
end

--- Returns whether the scratch window should be visible or not.  
--- @return boolean 
function DNumberScratch:GetShouldDrawScreen()
end

--- Returns the real value of the DNumberScratch as a string.  
--- See also DNumberScratch:GetFloatValue and DNumberScratch:GetFraction.  
--- @return string @The real value of the DNumberScratch
function DNumberScratch:GetTextValue()
end

--- Returns the zoom level of the scratch window  
--- @return number 
function DNumberScratch:GetZoom()
end

--- Returns the ideal zoom level for the panel based on the DNumberScratch:GetRange.  
--- @return number @The ideal zoom level for the panel based on the panels range.
function DNumberScratch:IdealZoom()
end

--- Returns whether the player is currently editing the value of the DNumberScratch.  
--- @return boolean 
function DNumberScratch:IsEditing()
end

--- Called when the value of the DNumberScratch is changed.  
--- @param newValue number @The new value
function DNumberScratch:OnValueChanged(newValue)
end

--- Sets the desired amount of numbers after the decimal point.  
--- @param decimals number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumberScratch:SetDecimals(decimals)
end

--- Sets the value of the DNumberScratch as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the DNumberScratch  
--- @param frac number @A value between 0 and 1
function DNumberScratch:SetFraction(frac)
end

--- Sets the max value that can be selected on the number scratch  
--- @param max number @The maximum number
function DNumberScratch:SetMax(max)
end

--- Sets the minimum value that can be selected on the number scratch.  
--- @param min number @The minimum number
function DNumberScratch:SetMin(min)
end

--- Sets the value of the DNumberScratch and triggers DNumberScratch:OnValueChanged  
--- @param val number @The value to set.
function DNumberScratch:SetValue(val)
end

--- Sets the zoom level of the scratch panel.  
--- @param zoom number 
function DNumberScratch:SetZoom(zoom)
end

