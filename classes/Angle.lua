--- @class Angle
--- List of all possible functions to manipulate angles.  
--- Created by Global.Angle.  
--- @field p number @The pitch component of the angle.
--- @field pitch number @The pitch component of the angle.
--- @field x number @The pitch component of the angle.
--- @field y number @The yaw component of the angle.
--- @field yaw number @The yaw component of the angle.
--- @field r number @The roll  component of the angle.
--- @field roll number @The roll  component of the angle.
--- @field z number @The roll  component of the angle.
local Angle = {}
--- Adds the values of the argument angle to the orignal angle.  
--- This functions the same as angle1 + angle2 without creating a new angle object, skipping object construction and garbage collection.  
--- @param angle Angle @The angle to add.
function Angle:Add(angle)
end

--- Divides all values of the original angle by a scalar. This functions the same as angle1 / num without creating a new angle object, skipping object construction and garbage collection.  
--- @param scalar number @The number to divide by.
function Angle:Div(scalar)
end

--- Returns a normal vector facing in the direction that the angle points.  
--- @return Vector @The forward direction of the angle
function Angle:Forward()
end

--- Returns whether the pitch, yaw and roll are 0 or not.  
--- @return boolean @Whether the pitch, yaw and roll are 0 or not.
function Angle:IsZero()
end

--- Multiplies a scalar to all the values of the orignal angle. This functions the same as num * angle without creating a new angle object, skipping object construction and garbage collection.  
--- @param scalar number @The number to multiply.
function Angle:Mul(scalar)
end

--- Normalizes the angles by applying a module with 360 to pitch, yaw and roll.  
function Angle:Normalize()
end

--- Randomizes each element of this Angle object.  
--- @param min? number @The minimum value for each component.
--- @param max? number @The maximum value for each component.
function Angle:Random(min, max)
end

--- Returns a normal vector facing in the direction that points right relative to the angle's direction.  
--- @return Vector @The right direction of the angle
function Angle:Right()
end

--- Rotates the angle around the specified axis by the specified degrees.  
--- @param axis Vector @The axis to rotate around as a normalized unit vector
--- @param rotation number @The degrees to rotate around the specified axis.
function Angle:RotateAroundAxis(axis, rotation)
end

--- Copies pitch, yaw and roll from the second angle to the first.  
--- @param originalAngle Angle @The angle to copy the values from.
function Angle:Set(originalAngle)
end

--- Sets the p, y, and r of the angle.  
--- @param p number @The pitch component of the Angle
--- @param y number @The yaw component of the Angle
--- @param r number @The roll component of the Angle
function Angle:SetUnpacked(p, y, r)
end

--- Snaps the angle to nearest interval of degrees.  
--- ℹ **NOTE**: This will modify the original angle too!  
--- @param axis string @The component/axis to snap
--- @param target number @The target angle snap interval
--- @return Angle @The snapped angle.
function Angle:SnapTo(axis, target)
end

--- Subtracts the values of the argument angle to the orignal angle. This functions the same as angle1 - angle2 without creating a new angle object, skipping object construction and garbage collection.  
--- @param angle Angle @The angle to subtract.
function Angle:Sub(angle)
end

--- Returns the angle as a table with three elements.  
--- @return table @The table with elements 1 = p, 2 = y, 3 = r.
function Angle:ToTable()
end

--- Returns the pitch, yaw, and roll components of the angle.  
--- @return number @p, pitch, x, or Angle[1].
--- @return number @y, yaw, or Angle[2].
--- @return number @r, roll, r, or Angle[3].
function Angle:Unpack()
end

--- Returns a normal vector facing in the direction that points up relative to the angle's direction.  
--- @return Vector @The up direction of the angle.
function Angle:Up()
end

--- Sets pitch, yaw and roll to 0.  
--- This function is faster than doing it manually.  
function Angle:Zero()
end

