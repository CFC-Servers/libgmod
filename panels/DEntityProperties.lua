--- <internal>  
--- Unless you know what you are doing and you benefit from this panel, you should be using the DProperties instead.  
--- </internal>  
--- A panel used by the Editable Entities system.  
--- @class DEntityProperties : DProperties
local DEntityProperties = {}
---  client
--- Called when we were editing an entity and then it became invalid (probably removed)  
function DEntityProperties:OnEntityLost()
end

---  client
--- Sets the entity to be edited by this panel. The entity must support the Editable Entities system or nothing will happen.  
--- @param ent Entity @The entity to edit
function DEntityProperties:SetEntity(ent)
end

