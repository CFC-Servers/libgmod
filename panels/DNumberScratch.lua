--- Choose a number from a number line, with zooming for precision. Zoom in by moving your mouse forward and moving back does the opposite. Looks like a blue circle until you click and hold on it  
--- @class DNumberScratch : DImageButton
local DNumberScratch = {}
---  client
--- Returns whether this panel is active or not, i.e. if the player is currently changing its value.  
--- @return boolean 
function DNumberScratch:GetActive()
end

---  client
--- Returns the desired amount of numbers after the decimal point.  
--- @return number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumberScratch:GetDecimals()
end

---  client
--- Returns the real value of the DNumberScratch as a number.  
--- See also DNumberScratch:GetTextValue and DNumberScratch:GetFraction.  
--- @return number @The real value of the DNumberScratch
function DNumberScratch:GetFloatValue()
end

---  client
--- Returns the value of the DNumberScratch as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the DNumberScratch.  
--- See also:  
--- * DNumberScratch:GetTextValue  
--- * DNumberScratch:GetFloatValue  
--- * DNumberScratch:SetFraction  
--- @return number @A value between 0 and 1
function DNumberScratch:GetFraction()
end

---  client
--- Returns the maximum value that can be selected on the number scratch  
--- @return number @The maximum value that can be selected on the number scratch
function DNumberScratch:GetMax()
end

---  client
--- Returns the minimum value that can be selected on the number scratch  
--- @return number @The minimum value that can be selected on the number scratch
function DNumberScratch:GetMin()
end

---  client
--- Returns the range of the DNumberScratch. Basically max value - min value.  
--- @return number @The range of the DNumberScratch
function DNumberScratch:GetRange()
end

---  client
--- Returns whether the scratch window should be visible or not.  
--- @return boolean 
function DNumberScratch:GetShouldDrawScreen()
end

---  client
--- Returns the real value of the DNumberScratch as a string.  
--- See also DNumberScratch:GetFloatValue and DNumberScratch:GetFraction.  
--- @return string @The real value of the DNumberScratch
function DNumberScratch:GetTextValue()
end

---  client
--- Returns the zoom level of the scratch window  
--- @return number 
function DNumberScratch:GetZoom()
end

---  client
--- Returns the ideal zoom level for the panel based on the DNumberScratch:GetRange.  
--- @return number @The ideal zoom level for the panel based on the panels range.
function DNumberScratch:IdealZoom()
end

---  client
--- Returns whether the player is currently editing the value of the DNumberScratch.  
--- @return boolean 
function DNumberScratch:IsEditing()
end

---  client
--- Called when the value of the DNumberScratch is changed.  
--- @param newValue number @The new value
function DNumberScratch:OnValueChanged(newValue)
end

---  client
--- Sets the desired amount of numbers after the decimal point.  
--- @param decimals number @0 for whole numbers only, 1 for one number after the decimal point, etc.
function DNumberScratch:SetDecimals(decimals)
end

---  client
--- Sets the value of the DNumberScratch as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the DNumberScratch  
--- @param frac number @A value between 0 and 1
function DNumberScratch:SetFraction(frac)
end

---  client
--- Sets the max value that can be selected on the number scratch  
--- @param max number @The maximum number
function DNumberScratch:SetMax(max)
end

---  client
--- Sets the minimum value that can be selected on the number scratch.  
--- @param min number @The minimum number
function DNumberScratch:SetMin(min)
end

---  client
--- Sets the value of the DNumberScratch and triggers DNumberScratch:OnValueChanged  
--- @param val number @The value to set.
function DNumberScratch:SetValue(val)
end

---  client
--- Sets the zoom level of the scratch panel.  
--- @param zoom number 
function DNumberScratch:SetZoom(zoom)
end

