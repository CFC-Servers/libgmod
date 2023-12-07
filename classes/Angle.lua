--- @class Angle
local Angle = {}
---  menu|client|server
--- Returns if the angle is equal to another angle with the given tolerance.  
--- @param compare Angle @The angle to compare to.
--- @param tolerance number @The tolerance range.
--- @return boolean @Are the angles equal or not.
function Angle:IsEqualTol(compare, tolerance)
end

---  menu|client|server
--- Randomizes each element of this Angle object.  
--- @param min? number @The minimum value for each component.
--- @param max? number @The maximum value for each component.
function Angle:Random(min, max)
end

---  menu|client|server
--- Returns the angle as a table with three elements.  
--- @return table @The table with elements 1 = p, 2 = y, 3 = r.
function Angle:ToTable()
end

