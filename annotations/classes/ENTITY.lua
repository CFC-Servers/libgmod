--- @class ENTITY
local ENTITY = {}
---  server
--- Gets the NPC classification. Internally gets the `m_iClass` variable which is polled by the engine. This will be equivalent to NPC:Classify.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @return number @See Enums/CLASS
function ENTITY:GetNPCClass()
end

---  server
--- Sets the NPC max yaw speed. Internally sets the `m_fMaxYawSpeed` variable which is polled by the engine.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @param maxyaw number @The new max yaw value to set
function ENTITY:SetMaxYawSpeed(maxyaw)
end

---  server
--- Sets the NPC classification. Internally sets the `m_iClass` variable which is polled by the engine.  
--- ℹ **NOTE**: This is a helper function only available if your SENT is based on `base_ai`  
--- @param classification number @The CLASS Enum
function ENTITY:SetNPCClass(classification)
end

