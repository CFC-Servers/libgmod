_G.duplicator = {}
---  server
--- Calls every function registered with duplicator.RegisterEntityModifier on the entity.  
--- @param ply Player @The player whose entity this is
--- @param ent Entity @The entity in question
function duplicator.ApplyEntityModifiers(ply, ent)
end

---  client|server
--- A list of all constraints that can be duplicated. Registered with duplicator.RegisterConstraint.  
--- @return table @The list of all constraints that can be duplicated
function duplicator.ConstraintType()
end

---  server
--- Copies the entity, and all of its constraints and entities, then returns them in a table.  
--- @param ent Entity @The entity to duplicate
--- @param tableToAdd? table @A preexisting table to add entities and constraints in from
--- @return table @A table containing duplication info which includes the following members:
function duplicator.Copy(ent, tableToAdd)
end

---  server
--- Copies the passed table of entities to save for later.  
--- @param ents table @A table of entities to save/copy.
--- @return table @A table containing duplication info which includes the following members:
function duplicator.CopyEnts(ents)
end

---  server
--- Restores the flex data using Entity:SetFlexWeight and Entity:SetFlexScale  
--- @param ent Entity @The entity to restore the flexes on
--- @param flex table @The flexes to restore
--- @param scale? number @The flex scale to apply
function duplicator.DoFlex(ent, flex, scale)
end

---  client|server
--- Returns the entity class factory registered with duplicator.RegisterEntityClass.  
--- @param name string @The name of the entity class factory
--- @return table @Is compromised of the following members:
function duplicator.FindEntityClass(name)
end

---  client|server
--- Returns whether the entity can be duplicated or not  
--- @param classname string @An entity's classname
--- @return boolean @Returns true if the entity can be duplicated (nil otherwise)
function duplicator.IsAllowed(classname)
end

---  server
--- "Given entity list and constraint list, create all entities and return their tables"  
--- Calls duplicator.CreateEntityFromTable on each sub-table of EntityList. If an entity is actually created, it calls ENTITY:OnDuplicated with the entity's duplicator data, then duplicator.ApplyEntityModifiers, duplicator.ApplyBoneModifiers and finally  ENTITY:PostEntityPaste is called.  
--- The constraints are then created with duplicator.CreateConstraintFromTable.  
--- @param Player Player @The player who wants to create something
--- @param EntityList table @A table of duplicator data to create the entities from
--- @param ConstraintList table @A table of duplicator data to create the constraints from
--- @return table @List of created entities
--- @return table @List of created constraints
function duplicator.Paste(Player, EntityList, ConstraintList)
end

---  client|server
--- "When a copy is copied it will be translated according to these.  
--- If you set them - make sure to set them back to 0 0 0!"  
--- @param v Vector @The position to offset all pastes from
function duplicator.SetLocalPos(v)
end

---  server
--- Works out the AABB size of the duplication  
--- @param Ents table @A table of entity duplication datums.
--- @return vector @AABB mins vector
--- @return vector @AABB maxs vector
function duplicator.WorkoutSize(Ents)
end

