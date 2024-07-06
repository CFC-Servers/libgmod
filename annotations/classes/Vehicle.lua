--- This is a list of all methods only available for vehicles. It is also possible to call [Entity](https://wiki.facepunch.com/gmod/Entity) functions on vehicles.  
--- @class Vehicle : Entity
local Vehicle = {}
---  server
--- Returns the remaining boosting time left.  
--- @return number @The remaining boosting time left
function Vehicle:BoostTimeLeft()
end

---  server
--- Tries to find an Exit Point for leaving vehicle, if one is unobstructed in the direction given.  
--- @param yaw number @Yaw/roll from vehicle angle to check for exit
--- @param distance number @Distance from origin to drop player
--- @return Vector @Returns the vector for exit position or nil if cannot exit that way.
function Vehicle:CheckExitPoint(yaw, distance)
end

---  server
--- Sets whether the engine is enabled or disabled, i.e. can be started or not.  
--- @param enable boolean @Enable or disable the engine
function Vehicle:EnableEngine(enable)
end

---  client
--- Returns information about the ammo of the vehicle  
--- @return number @Ammo type of the vehicle ammo
--- @return number @Clip size
--- @return number @Count
function Vehicle:GetAmmo()
end

---  client|server
--- Returns third person camera distance.  
--- @return number @Camera distance
function Vehicle:GetCameraDistance()
end

---  client|server
--- Gets the driver of the vehicle, returns `NULL` if no driver is present.  
--- @return Entity @The driver of the vehicle.
function Vehicle:GetDriver()
end

---  server
--- Returns the current speed of the vehicle in Half-Life Hammer Units (in/s). Same as Entity:GetVelocity + Vector:Length.  
--- @return number @The speed of the vehicle
function Vehicle:GetHLSpeed()
end

---  server
--- Returns the max speed of the vehicle in MPH.  
--- @return number @The max speed of the vehicle in MPH
function Vehicle:GetMaxSpeed()
end

---  server
--- Returns some info about the vehicle.  
--- @return table @The operating params
function Vehicle:GetOperatingParams()
end

---  client|server
--- Gets the passenger of the vehicle, returns NULL if no drivers is present.  
--- @param passenger number @The index of the passenger
--- @return Entity @The passenger
function Vehicle:GetPassenger(passenger)
end

---  server
--- Returns the seat position and angle of a given passenger seat.  
--- @param role number @The passenger role
--- @return Vector @The seat position
--- @return Angle @The seat angle
function Vehicle:GetPassengerSeatPoint(role)
end

---  server
--- Returns the current RPM of the vehicle. This value is fake and doesn't actually affect the vehicle movement.  
--- @return number @The RPM.
function Vehicle:GetRPM()
end

---  server
--- Returns the current speed of the vehicle in MPH.  
--- @return number @The speed of the vehicle in MPH
function Vehicle:GetSpeed()
end

---  server
--- Returns the current steering of the vehicle.  
--- @return number @The current steering of the vehicle.
function Vehicle:GetSteering()
end

---  server
--- Returns the maximum steering degree of the vehicle  
--- @return number @The maximum steering degree of the vehicle
function Vehicle:GetSteeringDegrees()
end

---  client|server
--- Returns if vehicle has thirdperson mode enabled or not.  
--- @return boolean @Returns true if third person mode enabled, false otherwise
function Vehicle:GetThirdPersonMode()
end

---  server
--- Returns the current throttle of the vehicle.  
--- @return number @The current throttle of the vehicle
function Vehicle:GetThrottle()
end

---  client|server
--- Returns the vehicle class name. This is only useful for Sandbox spawned vehicles or any vehicle that properly sets the vehicle class with Vehicle:SetVehicleClass.  
--- @return string @The class name of the vehicle.
function Vehicle:GetVehicleClass()
end

---  server
--- Returns the vehicle parameters of given vehicle.  
--- @return table @The vehicle parameters
function Vehicle:GetVehicleParams()
end

---  client|server
--- Returns the view position and forward angle of a given passenger seat.  
--- @param role? number @The passenger role
--- @return Vector @The view position, will be 0, 0, 0 on failure
--- @return Angle @The view angles, will be 0, 0, 0 on failure
--- @return number @The field of view, will be 0 on failure
function Vehicle:GetVehicleViewPosition(role)
end

---  server
--- Returns the PhysObj of given wheel.  
--- @param wheel number @The wheel to retrieve
--- @return PhysObj @The wheel
function Vehicle:GetWheel(wheel)
end

---  server
--- Returns the base wheel height.  
--- @param wheel number @The wheel to get the base wheel height of.
--- @return number @The base wheel height.
function Vehicle:GetWheelBaseHeight(wheel)
end

---  server
--- Returns the wheel contact point.  
--- @param wheel number @The wheel to check
--- @return Vector @The contact position
--- @return number @The Surface Properties ID of hit surface.
--- @return boolean @Whether the wheel is on ground or not
function Vehicle:GetWheelContactPoint(wheel)
end

---  server
--- Returns the wheel count of the vehicle  
--- @return number @The amount of wheels
function Vehicle:GetWheelCount()
end

---  server
--- Returns the total wheel height.  
--- @param wheel number @The wheel to get the base wheel height of.
--- @return number @The total wheel height.
function Vehicle:GetWheelTotalHeight(wheel)
end

---  server
--- Returns whether this vehicle has boost at all.  
--- @return boolean @Whether this vehicle has boost at all.
function Vehicle:HasBoost()
end

---  server
--- Returns whether this vehicle has a brake pedal. See Vehicle:SetHasBrakePedal.  
--- @return boolean @Whether this vehicle has a brake pedal or not.
function Vehicle:HasBrakePedal()
end

---  server
--- Returns whether this vehicle is currently boosting or not.  
--- @return boolean @Whether this vehicle is currently boosting or not.
function Vehicle:IsBoosting()
end

---  server
--- Returns whether the engine is enabled or not, i.e. whether it can be started.  
--- @return boolean @Whether the engine is enabled
function Vehicle:IsEngineEnabled()
end

---  server
--- Returns whether the engine is started or not.  
--- @return boolean @Whether the engine is started or not.
function Vehicle:IsEngineStarted()
end

---  client|server
--- Returns true if the vehicle object is a valid or not. This will return `false` when Vehicle functions are not usable on the vehicle.  
--- @return boolean @Is the vehicle a valid vehicle or not
function Vehicle:IsValidVehicle()
end

---  server
--- Returns whether this vehicle's engine is underwater or not. ( Internally the attachment point "engine" or "vehicle_engine" is checked )  
--- @return boolean @Whether this vehicle's engine is underwater or not.
function Vehicle:IsVehicleBodyInWater()
end

---  server
--- Releases the vehicle's handbrake (Jeep) so it can roll without any passengers.  
--- This will be overwritten if the vehicle has a driver. Same as Vehicle:SetHandbrake( false )  
function Vehicle:ReleaseHandbrake()
end

---  server
--- Sets the boost. It is possible that this function does not work while the vehicle has a valid driver in it.  
--- @param boost number @The new boost value
function Vehicle:SetBoost(boost)
end

---  client|server
--- Sets the third person camera distance of the vehicle.  
--- @param distance number @Camera distance to set to
function Vehicle:SetCameraDistance(distance)
end

---  server
--- Turns on or off the Jeep handbrake so it can roll without a driver inside.  
--- Does nothing while the vehicle has a driver in it.  
--- @param handbrake boolean @true to turn on, false to turn off.
function Vehicle:SetHandbrake(handbrake)
end

---  server
--- Sets whether this vehicle has a brake pedal.  
--- @param brakePedal boolean @Whether this vehicle has a brake pedal
function Vehicle:SetHasBrakePedal(brakePedal)
end

---  server
--- Sets maximum reverse throttle  
--- @param maxRevThrottle number @The new maximum throttle
function Vehicle:SetMaxReverseThrottle(maxRevThrottle)
end

---  server
--- Sets maximum forward throttle  
--- @param maxThrottle number @The new maximum throttle.
function Vehicle:SetMaxThrottle(maxThrottle)
end

---  server
--- Sets spring length of given wheel  
--- @param wheel number @The wheel to change spring length of
--- @param length number @The new spring length
function Vehicle:SetSpringLength(wheel, length)
end

---  server
--- Sets the steering of the vehicle.  
--- ⁉ **VALIDATE**: The correct range, 0 to 1 or -1 to 1  
--- @param front number @Angle of the front wheels (-1 to 1)
--- @param rear number @Angle of the rear wheels (-1 to 1)
function Vehicle:SetSteering(front, rear)
end

---  server
--- Sets the maximum steering degrees of the vehicle  
--- @param steeringDegrees number @The new maximum steering degree
function Vehicle:SetSteeringDegrees(steeringDegrees)
end

---  client|server
--- Sets the third person mode state.  
--- @param enable boolean @Enable or disable the third person mode for this vehicle
function Vehicle:SetThirdPersonMode(enable)
end

---  server
--- Sets the throttle of the vehicle. It is possible that this function does not work with a valid driver in it.  
--- @param throttle number @The new throttle.
function Vehicle:SetThrottle(throttle)
end

---  server
--- Sets whether the entry or exit camera animation should be played or not.  
--- @param bOn boolean @Whether the entry or exit camera animation should be played or not.
function Vehicle:SetVehicleEntryAnim(bOn)
end

---  server
--- Sets the vehicle parameters for given vehicle.  
--- ℹ **NOTE**: Not all variables from the Structures/VehicleParams can be set.  
--- @param params table @The new new vehicle parameters
function Vehicle:SetVehicleParams(params)
end

---  server
--- Sets friction of given wheel.  This function may be broken.  
--- @param wheel number @The wheel to change the friction of
--- @param friction number @The new friction to set
function Vehicle:SetWheelFriction(wheel, friction)
end

---  server
--- Starts or stops the engine.  
--- @param start boolean @True to start, false to stop.
function Vehicle:StartEngine(start)
end
