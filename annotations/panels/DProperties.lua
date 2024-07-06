--- A grid for editing the properties of something using names and values. Properties can be categorized and strongly typed.  
--- ##  Associated controls  
--- * DProperty_VectorColor  
--- * DProperty_Boolean  
--- * DProperty_Generic  
--- * DProperty_Combo  
--- * DProperty_Float  
--- * DProperty_Int  
--- @class DProperties : Panel
local DProperties = {}
---  client
--- Returns the DScrollPanel all the properties panels are attached to.  
--- @return Panel @A DScrollPanel canvas
function DProperties:GetCanvas()
end

