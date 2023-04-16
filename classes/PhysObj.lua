--- @class PhysObj
--- This is the object returned by Entity:GetPhysicsObject and Entity:GetPhysicsObjectNum.  
--- It represents a physics object.  
local PhysObj = {}
--- Adds the specified velocity to the current.  
--- @param angularVelocity Vector @Additional velocity.
function PhysObj:AddAngleVelocity(angularVelocity)
end

--- Adds one or more bit flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function PhysObj:AddGameFlag(flags)
end

--- Adds the specified velocity to the current.  
--- @param velocity Vector @Additional velocity.
function PhysObj:AddVelocity(velocity)
end

--- Rotates the object so that it's angles are aligned to the ones inputted.  
--- @param from Angle 
--- @param to Angle 
--- @return Angle 
function PhysObj:AlignAngles(from, to)
end

--- Applies the specified force to the physics object. (in Newtons)  
--- ℹ **NOTE**: This will not work on players, use Entity:SetVelocity instead.  
--- @param force Vector @The force to be applied.
function PhysObj:ApplyForceCenter(force)
end

--- Applies the specified force on the physics object at the specified position  
--- @param force Vector @The force to be applied.
--- @param position Vector @The position in world coordinates where the force is applied to the physics object.
function PhysObj:ApplyForceOffset(force, position)
end

--- Applies specified torque to the physics object.  
--- @param torque Vector @The torque to be applied in kg * degrees / s.
function PhysObj:ApplyTorqueCenter(torque)
end

--- Calculates the force and torque on the center of mass for an offset force impulse. The outputs can be directly passed to PhysObj:ApplyForceCenter and PhysObj:ApplyTorqueCenter, respectively.  
--- @param force Vector @The initial force
--- @param pos Vector @The location of the force in world coordinates
--- @return Vector @The calculated force on the physics object's center of mass
--- @return Vector @The calculated torque on the physics object's center of mass
function PhysObj:CalculateForceOffset(force, pos)
end

--- Calculates the linear and angular velocities on the center of mass for an offset force impulse. The outputs can be directly passed to PhysObj:AddVelocity and PhysObj:AddAngleVelocity, respectively.  
--- @param force Vector @The initial force
--- @param pos Vector @The location of the force in world coordinates
--- @return Vector @The calculated linear velocity from the force on the physics object's center of mass
--- @return Vector @The calculated angular velocity from the force on the physics object's center of mass
function PhysObj:CalculateVelocityOffset(force, pos)
end

--- Removes one of more specified flags.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
function PhysObj:ClearGameFlag(flags)
end

--- Allows you to move a PhysObj to a point and angle in 3D space.  
--- @param shadowparams table @The parameters for the shadow
function PhysObj:ComputeShadowControl(shadowparams)
end

--- Sets whether the physics object should collide with anything or not, including world.  
--- ⚠ **WARNING**: This function currently has major problems with player collisions, and as such should be avoided at all costs.  
--- A better alternative to this function would be using Entity:SetCollisionGroup( COLLISION_GROUP_WORLD ).  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableCollisions(enable)
end

--- Sets whenever the physics object should be affected by drag.  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableDrag(enable)
end

--- Sets whether the PhysObject should be affected by gravity  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableGravity(enable)
end

--- Sets whether the physobject should be able to move or not.  
--- This is the exact method the Physics Gun uses to freeze props. If a motion-disabled physics object is grabbed with the physics gun, the object will be able to move again. To disallow this, use GM:PhysgunPickup.  
--- @param enable boolean @True to enable, false to disable.
function PhysObj:EnableMotion(enable)
end

--- Returns the mins and max of the physics object.  
--- @return Vector @Mins
--- @return Vector @Maxs
function PhysObj:GetAABB()
end

--- Gets the angular velocity of the object in degrees per second.  
--- @return Vector @The angular velocity
function PhysObj:GetAngleVelocity()
end

--- Returns the angles of the physics object.  
--- @return Angle @The angles of the physics object.
function PhysObj:GetAngles()
end

--- Returns the contents flag of the PhysObj.  
--- @return number @The Enums/CONTENTS.
function PhysObj:GetContents()
end

--- Returns the linear and angular damping of the physics object.  
--- @return number @The linear damping
--- @return number @The angular damping
function PhysObj:GetDamping()
end

--- Returns the kinetic energy of the physobject.  
--- @return number @The kinetic energy
function PhysObj:GetEnergy()
end

--- Returns the parent entity of the physics object.  
--- @return Entity @parent
function PhysObj:GetEntity()
end

--- Returns the friction snapshot of this physics object. This is useful for determining if an object touching ground for example.  
--- @return table @A table of tables containing the following data:
function PhysObj:GetFrictionSnapshot()
end

--- Returns the directional inertia of the physics object.  
--- @return Vector @directionalInertia
function PhysObj:GetInertia()
end

--- Returns 1 divided by the inertia.  
--- @return number @The inverted inertia
function PhysObj:GetInvInertia()
end

--- Returns 1 divided by the physics object's mass.  
--- @return number @The inverted mass.
function PhysObj:GetInvMass()
end

--- Returns the mass of the physics object.  
--- @return number @The mass in kilograms.
function PhysObj:GetMass()
end

--- Returns the center of mass of the physics object as a local vector.  
--- @return Vector @The center of mass of the physics object.
function PhysObj:GetMassCenter()
end

--- Returns the physical material of the physics object.  
--- @return string @The physical material
function PhysObj:GetMaterial()
end

--- Returns the physics mesh of the object which is used for physobj-on-physobj collision.  
--- @return table @Table of Structures/MeshVertexs where each three vertices represent a triangle
function PhysObj:GetMesh()
end

--- Returns all convex physics meshes of the object. See Entity.PhysicsInitMultiConvex for more information.  
--- @return table @Table of Structures/MeshVertexs where each Structures/MeshVertex is an independent convex mesh and each three vertices represent a triangle
function PhysObj:GetMeshConvexes()
end

--- Returns the name of the physics object.  
--- @return string @The name of the physics object.
function PhysObj:GetName()
end

--- Returns the position of the physics object.  
--- @return Vector @The position
function PhysObj:GetPos()
end

--- Returns the position and angle of the physics object as a 3x4 matrix (VMatrix is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector.  
--- @return VMatrix @The position and angle matrix.
function PhysObj:GetPositionMatrix()
end

--- Returns the rotation damping of the physics object.  
--- @return number @The rotation damping
function PhysObj:GetRotDamping()
end

--- Returns the angles of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return Angle @The angles of the PhysObj shadow.
function PhysObj:GetShadowAngles()
end

--- Returns the position of the PhysObj shadow. See PhysObj:UpdateShadow.  
--- @return Vector @The position of the PhysObj shadow.
function PhysObj:GetShadowPos()
end

--- Returns the speed damping of the physics object.  
--- @return number @speedDamping
function PhysObj:GetSpeedDamping()
end

--- Returns the stress of the entity.  
--- @return number @exertedStress
function PhysObj:GetStress()
end

--- Returns the surface area of the physics object in source-units². Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The surface area or nil if the PhysObj is a generated sphere or box.
function PhysObj:GetSurfaceArea()
end

--- Returns the absolute directional velocity of the physobject.  
--- @return Vector @velocity
function PhysObj:GetVelocity()
end

--- Returns the world velocity of a point in world coordinates about the object.  
--- @param point Vector 
--- @return Vector 
function PhysObj:GetVelocityAtPoint(point)
end

--- Returns the volume in source units³. Or nil if the PhysObj is a generated sphere or box.  
--- @return number @The volume or nil if the PhysObj is a generated sphere or box.
function PhysObj:GetVolume()
end

--- Returns whenever the specified flag(s) is/are set.  
--- @param flags number @Bitflag, see Enums/FVPHYSICS.
--- @return boolean @If flag was set or not
function PhysObj:HasGameFlag(flags)
end

--- Returns whether the physics object is "sleeping".  
--- See PhysObj:Sleep for more information.  
--- @return boolean @Whether the physics object is sleeping.
function PhysObj:IsAsleep()
end

--- Returns whenever the entity is able to collide or not.  
--- @return boolean @isCollisionEnabled
function PhysObj:IsCollisionEnabled()
end

--- Returns whenever the entity is affected by drag.  
--- @return boolean @dragEnabled
function PhysObj:IsDragEnabled()
end

--- Returns whenever the entity is affected by gravity.  
--- @return boolean @gravitated
function PhysObj:IsGravityEnabled()
end

--- Returns if the physics object can move itself (by velocity, acceleration)  
--- @return boolean @motionEnabled
function PhysObj:IsMotionEnabled()
end

--- Returns whenever the entity is able to move.  
--- @return boolean @movable
function PhysObj:IsMoveable()
end

--- Returns whenever the physics object is penetrating another physics object.  
--- This is internally implemented as `PhysObj:HasGameFlag( FVPHYSICS_PENETRATING )` and thus is only updated for non-static physics objects.  
--- @return boolean @Whether the physics object is penetrating another object.
function PhysObj:IsPenetrating()
end

--- Returns if the physics object is valid/not NULL.  
--- @return boolean @isValid
function PhysObj:IsValid()
end

--- Mapping a vector in local frame of the physics object to world frame.  
--- ℹ **NOTE**: this function does translation and rotation, with translation done first.  
--- @param LocalVec Vector @A vector in the physics object's local frame
--- @return Vector @The corresponding vector in world frame
function PhysObj:LocalToWorld(LocalVec)
end

--- Rotate a vector from the local frame of the physics object to world frame.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param LocalVec Vector @A vector in the physics object's local frame
--- @return Vector @The corresponding vector in world frame
function PhysObj:LocalToWorldVector(LocalVec)
end

--- Prints debug info about the state of the physics object to the console.  
function PhysObj:OutputDebugInfo()
end

--- Call this when the collision filter conditions change due to this object's state (e.g. changing solid type or collision group)  
function PhysObj:RecheckCollisionFilter()
end

--- A convinience function for Angle:RotateAroundAxis.  
--- @param dir Vector @Direction, around which we will rotate
--- @param ang number @Amount of rotation, in degrees
--- @return Angle @The resulting angle
function PhysObj:RotateAroundAxis(dir, ang)
end

--- Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate.  
--- @param coefficient number @[Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient)
function PhysObj:SetAngleDragCoefficient(coefficient)
end

--- Sets the angles of the physobject.  
--- @param angles Angle @The new angles of the physobject.
function PhysObj:SetAngles(angles)
end

--- Sets the buoyancy ratio of the physics object. (How well it floats in water)  
--- @param buoyancy number @Buoyancy ratio, where 0 is not buoyant at all (like a rock), and 1 is very buoyant (like wood)
function PhysObj:SetBuoyancyRatio(buoyancy)
end

--- Sets the contents flag of the PhysObj.  
--- @param contents number @The Enums/CONTENTS.
function PhysObj:SetContents(contents)
end

--- Sets the linear and angular damping of the physics object.  
--- @param linearDamping number @Linear damping.
--- @param angularDamping number @Angular damping.
function PhysObj:SetDamping(linearDamping, angularDamping)
end

--- Modifies how much drag (air resistance) affects the object.  
--- @param drag number @The drag coefficient
function PhysObj:SetDragCoefficient(drag)
end

--- Sets the directional inertia.  
--- @param directionalInertia Vector @The directional inertia of the object.<br>
function PhysObj:SetInertia(directionalInertia)
end

--- Sets the mass of the physics object.  
--- @param mass number @The mass in kilograms.
function PhysObj:SetMass(mass)
end

--- Sets the material of the physobject.  
--- ℹ **NOTE**: Impact sounds will only change if this is called on client  
--- @param materialName string @The name of the phys material to use
function PhysObj:SetMaterial(materialName)
end

--- Sets the position of the physobject.  
--- @param position Vector @The new position of the physobject.
--- @param teleport? boolean 
function PhysObj:SetPos(position, teleport)
end

--- Sets the velocity of the physics object for the next iteration.  
--- @param velocity Vector @The new velocity of the physics object.
function PhysObj:SetVelocity(velocity)
end

--- Sets the velocity of the physics object.  
--- @param velocity Vector @The new velocity of the physics object.
function PhysObj:SetVelocityInstantaneous(velocity)
end

--- Makes the physics object "sleep".  
--- The physics object will no longer be moving unless it is "woken up" by either a collision with another moving object, or by PhysObj:Wake. This is an optimization feature of the physics engine.  
function PhysObj:Sleep()
end

--- Unlike PhysObj:SetPos and PhysObj:SetAngles, this allows the movement of a physobj while leaving physics interactions intact.  
--- This is used internally by the motion controller of the Gravity Gun , the +use pickup and the Physics Gun, and entities such as the crane.  
--- ℹ **NOTE**: This is the ideal function to move a physics shadow created with Entity:PhysicsInitShadow or Entity:MakePhysicsObjectAShadow.  
--- @param targetPosition Vector @The position we should move to.
--- @param targetAngles Angle @The angle we should rotate towards.
--- @param frameTime number @The frame time to use for this movement, can be generally filled with Global.FrameTime or ENTITY:PhysicsSimulate with the deltaTime
function PhysObj:UpdateShadow(targetPosition, targetAngles, frameTime)
end

--- Wakes the physics object.  
--- See PhysObj:Sleep for more information.  
function PhysObj:Wake()
end

--- Converts a vector to a relative to the physics object coordinate system.  
--- @param vec Vector @The vector in world space coordinates.
--- @return Vector @The vector local to PhysObj:GetPos.
function PhysObj:WorldToLocal(vec)
end

--- Rotate a vector from the world frame to the local frame of the physics object.  
--- ℹ **NOTE**: This function only rotates the vector, without any translation operation.  
--- @param WorldVec Vector @A vector in the world frame
--- @return Vector @The corresponding vector relative to the PhysObj
function PhysObj:WorldToLocalVector(WorldVec)
end

