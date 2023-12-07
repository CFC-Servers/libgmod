--- @class PhysObj
local PhysObj = {}
---  client|server
--- Adds the specified [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) velocity to the current PhysObj.  
--- @param angularVelocity Vector @The additional velocity in `degrees/s`
function PhysObj:AddAngleVelocity(angularVelocity)
end

---  client|server
--- Calculates the linear and angular velocities on the center of mass for an offset impulse. The outputs can be directly passed to PhysObj:AddVelocity and PhysObj:AddAngleVelocity, respectively.  
--- ⚠ **WARNING**: This will return zero length vectors if the physics object's motion is disabled. See PhysObj:IsMotionEnabled.  
--- @param impulse Vector @The impulse acting on the object in `kg*source_unit/s`
--- @param position Vector @The location of the impulse in world coordinates (`source units`)
--- @return Vector @The calculated linear velocity from the impulse on the physics object's center of mass in `source_unit/s`
--- @return Vector @The calculated angular velocity from the impulse on the physics object's center of mass in `degrees/s`
function PhysObj:CalculateVelocityOffset(impulse, position)
end

---  client|server
--- Sets whether the PhysObject should be affected by gravity  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableGravity(enable)
end

---  client|server
--- Returns the mins and max of the physics object.  
--- @return Vector @Mins
--- @return Vector @Maxs
function PhysObj:GetAABB()
end

---  client|server
--- Returns the parent entity of the physics object.  
--- @return Entity @The entity this physics object belongs to
function PhysObj:GetEntity()
end

---  client|server
--- Returns the position and angle of the physics object as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return VMatrix @The position and angle matrix.
function PhysObj:GetPositionMatrix()
end

---  server
--- Returns the internal and external stress of the entity.  
--- @return number @The external stress (`𝜎𝑒`)
--- @return number @The internal stress (`𝜎𝑖`)
function PhysObj:GetStress()
end

---  client|server
--- Returns whenever the entity is affected by gravity.  
--- @return boolean @`true` if the gravity is enabled, `false` otherwise
function PhysObj:IsGravityEnabled()
end

---  client|server
--- Returns if the physics object can move itself (by velocity, acceleration)  
--- @return boolean @`true` if the motion is enabled, `false` otherwise.
function PhysObj:IsMotionEnabled()
end

---  client|server
--- Returns whenever the entity is able to move.  
--- @return boolean @movable
function PhysObj:IsMoveable()
end

---  client|server
--- Returns if the physics object is valid/not NULL.  
--- @return boolean @isValid
function PhysObj:IsValid()
end

---  client|server
--- Mapping a vector in local frame of the physics object to world frame.  
--- ℹ **NOTE**: this function does translation and rotation, with translation done first.  
--- @param LocalVec Vector @A vector in the physics object's local frame
--- @return Vector @The corresponding vector in world frame
function PhysObj:LocalToWorld(LocalVec)
end

---  client|server
--- Prints debug info about the state of the physics object to the console.  
function PhysObj:OutputDebugInfo()
end

---  client|server
--- Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate.  
--- @param coefficient number @[Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient)
function PhysObj:SetAngleDragCoefficient(coefficient)
end

---  client|server
--- Sets the angular inertia. See PhysObj:GetInertia.  
--- ℹ **NOTE**: This does not affect linear inertia.  
--- @param angularInertia Vector @The angular inertia of the object.<br>
function PhysObj:SetInertia(angularInertia)
end

---  client|server
--- Sets the mass of the physics object.  
--- @param mass number @The mass in kilograms, in range `[0, 50000]`
function PhysObj:SetMass(mass)
end

