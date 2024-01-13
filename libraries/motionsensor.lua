--- Functions related to Kinect for Windows usage in GMod.  
--- ⚠ **WARNING**: Kinect feature works only on 32-bit version of the game.  
_G.motionsensor = {}
---  client|server
--- @param ent Entity @Entity to choose builder for
--- @return string @Chosen builder
function motionsensor.ChooseBuilderFromEntity(ent)
end

---  client|menu
--- Returns the depth map material.  
--- @return IMaterial @The material
function motionsensor.GetColourMaterial()
end

---  client
--- Returns players skeletal data if they are using Kinect. See Using The Kinect and Kinect developing.  
--- @return table @The skeleton data.
function motionsensor.GetSkeleton()
end

---  client
--- Return whether a kinect is connected - and active (ie - Start has been called).  
--- @return boolean @Connected and active or not
function motionsensor.IsActive()
end

---  client|menu
--- Returns true if we have detected that there's a kinect connected to the PC  
--- @return boolean @Connected or not
function motionsensor.IsAvailable()
end

---  client|menu
--- This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds.  
--- @return boolean @`true` if the access has been started
function motionsensor.Start()
end

---  client
--- Stops the motion capture.  
function motionsensor.Stop()
end

