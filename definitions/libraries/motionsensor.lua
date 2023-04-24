--- Functions related to Kinect for Windows usage in GMod.  
--- ⚠ **WARNING**: Kinect feature works only on 32-bit version of the game.  
_G.motionsensor = {}
--- @source ../../garrysmod/garrysmod/lua/includes/extensions/motionsensor.lua:221
--- @param translator table 
--- @param player Player 
--- @param rotation Angle 
--- @return Vector @Pos
--- @return Angle @ang
--- @return table @sensor
function motionsensor.BuildSkeleton(translator, player, rotation)
end

--- @source ../../garrysmod/garrysmod/lua/includes/extensions/motionsensor.lua:46
--- @param ent Entity @Entity to choose builder for
--- @return string @Chosen builder
function motionsensor.ChooseBuilderFromEntity(ent)
end

--- Returns the depth map material.  
--- @return IMaterial @The material
function motionsensor.GetColourMaterial()
end

function motionsensor.GetSkeleton()
end

--- Return whether a kinect is connected - and active (ie - Start has been called).  
--- @return boolean @Connected and active or not
function motionsensor.IsActive()
end

--- Returns true if we have detected that there's a kinect connected to the PC  
--- @return boolean @Connected or not
function motionsensor.IsAvailable()
end

--- @source ../../garrysmod/garrysmod/lua/includes/extensions/motionsensor.lua:60
--- @param translator table 
--- @param sensor table 
--- @param pos Vector 
--- @param ang Angle 
--- @param special_vectors table 
--- @param boneid number 
--- @param v table 
--- @return boolean @Return nil on failure
function motionsensor.ProcessAngle(translator, sensor, pos, ang, special_vectors, boneid, v)
end

--- @source ../../garrysmod/garrysmod/lua/includes/extensions/motionsensor.lua:126
--- @param translator table 
--- @param sensor table 
--- @param pos Vector 
--- @param rotation Angle 
--- @return Angle @Ang
function motionsensor.ProcessAnglesTable(translator, sensor, pos, rotation)
end

--- @source ../../garrysmod/garrysmod/lua/includes/extensions/motionsensor.lua:195
--- @param translator table 
--- @param sensor table 
--- @return Vector @Pos
function motionsensor.ProcessPositionTable(translator, sensor)
end

--- This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds.  
--- @return boolean @`true` if the access has been started
function motionsensor.Start()
end

--- Stops the motion capture.  
function motionsensor.Stop()
end

