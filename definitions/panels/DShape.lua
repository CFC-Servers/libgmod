--- Draw a shape on a derma panel. Only one kind of shape, a rectangle, is available for use.  
--- @class DShape : DPanel
local DShape = {}
--- Returns the current type of shape this panel is set to display.  
--- See DShape:SetBorderColor.  
--- @return table @The border color
function DShape:GetBorderColor()
end

--- Returns the color set to display the shape with.  
--- @return table @The Color
function DShape:GetColor()
end

--- Returns the current type of shape this panel is set to display.  
--- See DShape:SetType.  
--- @return string 
function DShape:GetType()
end

--- Sets the border color of the shape.  
--- Currently does nothing.  
--- @param clr table @The desired border color
function DShape:SetBorderColor(clr)
end

--- Sets the color to display the shape with.  
--- @param clr table @The Color
function DShape:SetColor(clr)
end

--- Sets the shape to be drawn.  
--- @param type string @The render type of the DShape
function DShape:SetType(type)
end

