--- DNumberWang is a VGUI element that allows you to input a numeric value using up and down arrows or direct entry.  
--- @class DNumberWang : DTextEntry
local DNumberWang = {}
---  client|menu
--- Returns the amount of decimal places allowed in the number selector, set by DNumberWang:SetDecimals  
--- @return number @The amount of decimal places allowed in the number selector.
function DNumberWang:GetDecimals()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns whatever is set by DNumberWang:SetFloatValue or 0.  
--- @deprecated
--- @return number 
function DNumberWang:GetFloatValue()
end

---  client|menu
--- Returns a fraction representing the current number selector value to number selector min/max range ratio. If argument `val` is supplied, that number will be computed instead.  
--- @param val number @The fraction numerator.
function DNumberWang:GetFraction(val)
end

---  client|menu
--- Returns interval at which the up and down buttons change the current value.  
--- @return number @The current interval.
function DNumberWang:GetInterval()
end

---  client|menu
--- Returns the maximum numeric value allowed by the number selector.  
--- @return number @The maximum value.
function DNumberWang:GetMax()
end

---  client|menu
--- Returns the minimum numeric value allowed by the number selector.  
--- @return number @The minimum number.
function DNumberWang:GetMin()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- This function returns the panel it is used on.  
--- @deprecated
--- @return Panel @self
function DNumberWang:GetTextArea()
end

---  client|menu
--- Returns the numeric value inside the number selector.  
--- @return number @The numeric value.
function DNumberWang:GetValue()
end

---  client|menu
--- Hides the number selector arrows.  
function DNumberWang:HideWang()
end

---  client|menu
--- Called when the number selector value is changed.  
--- @param val number @The new value of the number selector.
function DNumberWang:OnValueChanged(val)
end

---  client|menu
--- Sets the amount of decimal places allowed in the number selector.  
--- @param num number @The amount of decimal places.
function DNumberWang:SetDecimals(num)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Appears to do nothing.  
--- @param val number 
--- @deprecated
function DNumberWang:SetFloatValue(val)
end

---  client|menu
--- Sets the value of the number selector based on the given fraction number.  
--- @param val number @The fraction of the number selector's range.
function DNumberWang:SetFraction(val)
end

---  client|menu
--- Sets interval at which the up and down buttons change the current value.  
--- @param min number @The new interval.
function DNumberWang:SetInterval(min)
end

---  client|menu
--- Sets the maximum numeric value allowed by the number selector.  
--- @param max number @The maximum value.
function DNumberWang:SetMax(max)
end

---  client|menu
--- Sets the minimum numeric value allowed by the number selector.  
--- @param min number @The minimum value.
function DNumberWang:SetMin(min)
end

---  client|menu
--- Sets the minimum and maximum value allowed by the number selector.  
--- @param min number @The minimum value.
--- @param max number @The maximum value.
function DNumberWang:SetMinMax(min, max)
end

---  client|menu
--- Sets the value of the DNumberWang and triggers DNumberWang:OnValueChanged  
--- @param val number @The value to set.
function DNumberWang:SetValue(val)
end

