--- @class Vehicle : Entity
local Vehicle = {}
---  server
--- Returns the remaining boosting time left.  
--- @return number @The remaining boosting time left
function Vehicle:BoostTimeLeft()
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

---  server
--- Returns the max speed of the vehicle in MPH.  
--- @return number @The max speed of the vehicle in MPH
function Vehicle:GetMaxSpeed()
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
--- Returns the maximum steering degree of the vehicle  
--- @return number @The maximum steering degree of the vehicle
function Vehicle:GetSteeringDegrees()
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
--- Returns whether the engine is started or not.  
--- @return boolean @Whether the engine is started or not.
function Vehicle:IsEngineStarted()
end

---  client|server
--- Sets the third person camera distance of the vehicle.  
--- @param distance number @Camera distance to set to
function Vehicle:SetCameraDistance(distance)
end

---  server
--- Sets the vehicle parameters for given vehicle.  
--- ℹ **NOTE**: Not all variables from the Structures/VehicleParams can be set.  
--- @param params table @The new new vehicle parameters
function Vehicle:SetVehicleParams(params)
end

