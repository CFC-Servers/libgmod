--- @class CNewParticleEffect
local CNewParticleEffect = {}
---  client
--- Sets the forward direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param forward Vector @The forward direction for given control point
function CNewParticleEffect:SetControlPointForwardVector(cpID, forward)
end

---  client
--- Sets the orientation for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param forward Vector @The forward direction for given control point
--- @param right Vector @The right direction for given control point
--- @param up Vector @The up direction for given control point
function CNewParticleEffect:SetControlPointOrientation(cpID, forward, right, up)
end

---  client
--- Essentially makes child control point follow the parent control point.  
--- @param child number @The child control point ID, 0 to 63.
--- @param parent number @The parent control point ID, 0 to 63.
function CNewParticleEffect:SetControlPointParent(child, parent)
end

---  client
--- Sets the right direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param right Vector @The right direction for given control point.
function CNewParticleEffect:SetControlPointRightVector(cpID, right)
end

---  client
--- Sets the upward direction for given control point.  
--- @param cpID number @The control point ID, 0 to 63.
--- @param upward Vector @The upward direction for given control point
function CNewParticleEffect:SetControlPointUpVector(cpID, upward)
end

