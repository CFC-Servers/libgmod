--- This is the object returned by Entity:GetPhysicsObject, Entity:GetPhysicsObjectNum and Vehicle:GetWheel.  
--- It represents a physics object.  
--- @class PhysObj
local PhysObj = {}
---  client|server
--- Adds the specified [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) velocity to the current PhysObj.  
--- @param angularVelocity Vector @The additional velocity in `degrees/s`
function PhysObj:AddAngleVelocity(angularVelocity)
end

---  client|server
--- Adds one or more bit flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function PhysObj:AddGameFlag(flags)
end

---  client|server
--- Adds the specified velocity to the current.  
--- @param velocity Vector @Additional velocity in `source_unit/s`
function PhysObj:AddVelocity(velocity)
end

---  client|server
--- Rotates the object so that it's angles are aligned to the ones inputted.  
--- @param from Angle 
--- @param to Angle 
--- @return Angle 
function PhysObj:AlignAngles(from, to)
end

---  client|server
--- Applies the specified impulse in the mass center of the physics object.  
--- ℹ **NOTE**: This will not work on players, use Entity:SetVelocity instead.  
--- @param impulse Vector @The [impulse](https://en.wikipedia.org/wiki/Impulse_(physics)) to be applied in `kg*source_unit/s`
function PhysObj:ApplyForceCenter(impulse)
end

---  client|server
--- Applies the specified impulse on the physics object at the specified position.  
--- @param impulse Vector @The impulse to be applied in `kg*source_unit/s`
--- @param position Vector @The position in world coordinates (`source units`) where the force is applied to the physics object.
function PhysObj:ApplyForceOffset(impulse, position)
end

---  client|server
--- Applies the specified angular impulse to the physics object. See PhysObj:CalculateForceOffset  
--- @param angularImpulse Vector @The angular impulse to be applied in `kg * m^2 * degrees / s`
function PhysObj:ApplyTorqueCenter(angularImpulse)
end

---  client|server
--- Calculates the linear and angular impulse on the object's center of mass for an offset impulse.  
--- The outputs can be used with PhysObj:ApplyForceCenter and PhysObj:ApplyTorqueCenter, respectively. **Be careful to convert the angular impulse to world frame (PhysObj:LocalToWorldVector) if you are going to use it with ApplyTorqueCenter.**  
--- @param impulse Vector @The impulse acting on the object in `kg*source_unit/s`
--- @param position Vector @The location of the impulse in world coordinates (`source units`)
--- @return Vector @The calculated linear impulse on the physics object's center of mass in `kg*source_unit/s`
--- @return Vector @The calculated angular impulse on the physics object's center of mass in `kg*m^2*degrees/s`
function PhysObj:CalculateForceOffset(impulse, position)
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
--- Removes one of more specified flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function PhysObj:ClearGameFlag(flags)
end

---  client|server
--- Allows you to move a PhysObj to a point and angle in 3D space.  
--- @param shadowparams table @The parameters for the shadow
function PhysObj:ComputeShadowControl(shadowparams)
end

---  client|server
--- Sets whether the physics object should collide with anything or not, including world.  
--- ⚠ **WARNING**: This function currently has major problems with player collisions, and as such should be avoided at all costs.  
--- A better alternative to this function would be using Entity:SetCollisionGroup( COLLISION_GROUP_WORLD ).  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableCollisions(enable)
end

---  client|server
--- Sets whenever the physics object should be affected by drag.  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableDrag(enable)
end

---  client|server
--- Sets whether the PhysObject should be affected by gravity  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableGravity(enable)
end

---  client|server
--- Sets whether the physobject should be able to move or not.  
--- This is the exact method the Physics Gun uses to freeze props. If a motion-disabled physics object is grabbed with the physics gun, the object will be able to move again. To disallow this, use GM:PhysgunPickup.  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableMotion(enable)
end

---  client|server
--- Returns the mins and max of the physics object.  
--- @return Vector @Mins
--- @return Vector @Maxs
function PhysObj:GetAABB()
end

---  client|server
--- Gets the angular velocity of the object in degrees per second as a local vector. You can use dot product to read the magnitude from a specific axis.  
--- @return Vector @The angular velocity
function PhysObj:GetAngleVelocity()
end

---  client|server
--- Returns the angles of the physics object in degrees.  
--- @return Angle @The angles of the physics object.
function PhysObj:GetAngles()
end

---  client|server
--- Returns the contents flag of the PhysObj.  
--- @return number @The Enums/CONTENTS.
function PhysObj:GetContents()
end

---  client|server
--- Returns the linear and angular damping of the physics object.  
--- @return number @The linear damping
--- @return number @The angular damping
function PhysObj:GetDamping()
end

---  client|server
--- Returns the sum of the linear and rotational kinetic energies of the physics object.  
--- @return number @The kinetic energy
function PhysObj:GetEnergy()
end

---  client|server
--- Returns the parent entity of the physics object.  
--- @return Entity @The entity this physics object belongs to
function PhysObj:GetEntity()
end

---  server
--- Returns the friction snapshot of this physics object. This is useful for determining if an object touching ground for example.  
--- @return table @A table of tables containing the following data:
function PhysObj:GetFrictionSnapshot()
end

---  client|server
--- Returns the principal moments of inertia `(Ixx, Iyy, Izz)` of the physics object, in the local frame, with respect to the center of mass.  
--- @return Vector @The moment of inertia in `kg * m^2`
function PhysObj:GetInertia()
end

---  client|server
--- Returns 1 divided by the angular inertia. See PhysObj:GetInertia  
--- @return Vector @The inverted angular inertia
function PhysObj:GetInvInertia()
end

---  client|server
--- Returns 1 divided by the physics object's mass (in kilograms).  
--- @return number @The inverted mass
function PhysObj:GetInvMass()
end

---  client|server
--- Returns the mass of the physics object.  
--- @return number @The mass in kilograms.
function PhysObj:GetMass()
end

---  client|server
--- Returns the center of mass of the physics object as a local vector.  
--- @return Vector @The center of mass of the physics object.
function PhysObj:GetMassCenter()
end

---  client|server
--- Returns the physical material of the physics object.  
--- @return string @The physical material
function PhysObj:GetMaterial()
end

---  client|server
--- Returns the physics mesh of the object which is used for physobj-on-physobj collision.  
--- @return table @Table of Structures/MeshVertexs where each three vertices represent a triangle
function PhysObj:GetMesh()
end

---  client|server
--- Returns all convex physics meshes of the object. See Entity:PhysicsInitMultiConvex for more information.  
--- @return table @Table of Structures/MeshVertexs where each Structures/MeshVertex is an independent convex mesh and each three vertices represent a triangle
function PhysObj:GetMeshConvexes()
end

---  client|server
--- Returns the name of the physics object.  
--- @return string @The name of the physics object.
function PhysObj:GetName()
end

---  client|server
--- Returns the position of the physics object.  
--- @return Vector @The position in world coordinates
function PhysObj:GetPos()
end

---  client|server
--- Returns the position and angle of the physics object as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return VMatrix @The position and angle matrix.
function PhysObj:GetPositionMatrix()
end

---  client|server
--- Returns the rotation damping of the physics object.  
--- @return number @The rotation damping
function PhysObj:GetRotDamping()
end

---  client|server
--- Returns the angles of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return Angle @The angles of the PhysObj shadow.
function PhysObj:GetShadowAngles()
end

---  client|server
--- Returns the position of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return Vector @The position of the PhysObj shadow.
function PhysObj:GetShadowPos()
end

---  client|server
--- Returns the speed damping of the physics object.  
--- @return number @speedDamping
function PhysObj:GetSpeedDamping()
end

---  server
--- Returns the internal and external stress of the entity.  
--- @return number @The external stress (`𝜎𝑒`)
--- @return number @The internal stress (`𝜎𝑖`)
function PhysObj:GetStress()
end

---  client|server
--- Returns the surface area of the physics object in source-units². Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The surface area or nil if the PhysObj is a generated sphere or box.
function PhysObj:GetSurfaceArea()
end

---  client|server
--- Returns the absolute directional velocity of the physobject.  
--- @return Vector @velocity
function PhysObj:GetVelocity()
end

---  client|server
--- Returns the world velocity of a point in world coordinates about the object. This is useful for objects rotating around their own axis/origin.  
--- @param point Vector @A point to test in world space coordinates
--- @return Vector @Velocity at the given point
function PhysObj:GetVelocityAtPoint(point)
end

---  client|server
--- Returns the volume in source units³. Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The volume or nil if the PhysObj is a generated sphere or box.
function PhysObj:GetVolume()
end

---  client|server
--- Returns whenever the specified flag(s) is/are set.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
--- @return boolean @If flag was set or not
function PhysObj:HasGameFlag(flags)
end

---  client|server
--- Returns whether the physics object is "sleeping".  
--- See PhysObj:Sleep for more information.  
--- @return boolean @Whether the physics object is sleeping.
function PhysObj:IsAsleep()
end

---  client|server
--- Returns whenever the entity is able to collide or not.  
--- @return boolean @isCollisionEnabled
function PhysObj:IsCollisionEnabled()
end

---  client|server
--- Returns whenever the entity is affected by drag.  
--- @return boolean @dragEnabled
function PhysObj:IsDragEnabled()
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
--- Returns whenever the physics object is penetrating another physics object.  
--- This is internally implemented as `PhysObj:HasGameFlag( FVPHYSICS_PENETRATING )` and thus is only updated for non-static physics objects.  
--- @return boolean @Whether the physics object is penetrating another object.
function PhysObj:IsPenetrating()
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
--- Rotate a vector from the local frame of the physics object to world frame.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param LocalVec Vector @A vector in the physics object's local frame
--- @return Vector @The corresponding vector in world frame
function PhysObj:LocalToWorldVector(LocalVec)
end

---  client|server
--- Prints debug info about the state of the physics object to the console.  
function PhysObj:OutputDebugInfo()
end

---  client|server
--- Call this when the collision filter conditions change due to this object's state (e.g. changing solid type or collision group)  
function PhysObj:RecheckCollisionFilter()
end

---  client|server
--- A convinience function for Angle:RotateAroundAxis.  
--- @param dir Vector @Direction, around which we will rotate
--- @param ang number @Amount of rotation, in degrees
--- @return Angle @The resulting angle
function PhysObj:RotateAroundAxis(dir, ang)
end

---  client|server
--- Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate.  
--- @param coefficient number @[Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient)
function PhysObj:SetAngleDragCoefficient(coefficient)
end

---  client|server
--- Sets the specified [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) on the PhysObj  
--- @param angularVelocity Vector @The new velocity in `degrees/s`
function PhysObj:SetAngleVelocity(angularVelocity)
end

---  client|server
--- Sets the specified instantaneous [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) on the PhysObj  
--- @param angularVelocity Vector @The new velocity to set velocity.
function PhysObj:SetAngleVelocityInstantaneous(angularVelocity)
end

---  client|server
--- Sets the angles of the physobject in degrees.  
--- @param angles Angle @The new angles of the physobject
function PhysObj:SetAngles(angles)
end

---  client|server
--- Sets the buoyancy ratio of the physics object. (How well it floats in water)  
--- @param buoyancy number @Buoyancy ratio, where 0 is not buoyant at all (like a rock), and 1 is very buoyant (like wood)
function PhysObj:SetBuoyancyRatio(buoyancy)
end

---  client|server
--- Sets the contents flag of the PhysObj.  
--- @param contents number @The Enums/CONTENTS.
function PhysObj:SetContents(contents)
end

---  client|server
--- Sets the linear and angular damping of the physics object.  
--- @param linearDamping number @Linear damping.
--- @param angularDamping number @Angular damping.
function PhysObj:SetDamping(linearDamping, angularDamping)
end

---  client|server
--- Modifies how much drag (air resistance) affects the object.  
--- @param drag number @The drag coefficient
function PhysObj:SetDragCoefficient(drag)
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

---  client|server
--- Sets the material of the physobject.  
--- ℹ **NOTE**: Impact sounds will only change if this is called on client  
--- @param materialName string @The name of the phys material to use
function PhysObj:SetMaterial(materialName)
end

---  client|server
--- Sets the position of the physobject.  
--- @param position Vector @The new position of the physobject in world coordinates
--- @param teleport? boolean @If `true`, temporarily disables collisions of the physics objects just before moving it, then enables collisions back again.
function PhysObj:SetPos(position, teleport)
end

---  client|server
--- Sets the velocity of the physics object for the next iteration.  
--- @param velocity Vector @The new velocity of the physics object in `source_unit/s`
function PhysObj:SetVelocity(velocity)
end

---  client|server
--- Sets the velocity of the physics object.  
--- @param velocity Vector @The new velocity of the physics object.
function PhysObj:SetVelocityInstantaneous(velocity)
end

---  client|server
--- Makes the physics object "sleep". The physics object will no longer be moving unless it is "woken up" by either a collision with another moving object, or by PhysObj:Wake.  
--- This is an optimization feature of the physics engine. Normally physics objects will automatically "sleep" when not moving for a short while, to save resources, but it can be used for other purposes, for example to temporarily suspend an object mid air.  
function PhysObj:Sleep()
end

---  client|server
--- Unlike PhysObj:SetPos and PhysObj:SetAngles, this allows the movement of a physobj while leaving physics interactions intact.  
--- This is used internally by the motion controller of the Gravity Gun , the +use pickup and the Physics Gun, and entities such as the crane.  
--- ℹ **NOTE**: This is the ideal function to move a physics shadow created with Entity:PhysicsInitShadow or Entity:MakePhysicsObjectAShadow.  
--- @param targetPosition Vector @The position we should move to.
--- @param targetAngles Angle @The angle we should rotate towards.
--- @param frameTime number @The frame time to use for this movement, can be generally filled with Global.FrameTime or ENTITY:PhysicsSimulate with the deltaTime
function PhysObj:UpdateShadow(targetPosition, targetAngles, frameTime)
end

---  client|server
--- Wakes the physics object, so that it will continue to simulate physics/gravity.  
--- See PhysObj:Sleep for more information.  
function PhysObj:Wake()
end

---  client|server
--- Converts a vector to a relative to the physics object coordinate system.  
--- @param vec Vector @The vector in world space coordinates.
--- @return Vector @The vector local to PhysObj:GetPos.
function PhysObj:WorldToLocal(vec)
end

---  client|server
--- Rotate a vector from the world frame to the local frame of the physics object.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param WorldVec Vector @A vector in the world frame
--- @return Vector @The corresponding vector relative to the PhysObj
function PhysObj:WorldToLocalVector(WorldVec)
end

