_G.constraint = {}
---  server
--- Returns the constraint of a specified type between two entities, if it exists  
--- @param ent1 Entity @The first entity to check
--- @param ent2 Entity @The second entity to check
--- @param type string @The type of constraint, case sensitive
--- @param bone1 number @The bone number for the first entity (0 for monoboned entities)
--- @param bone2 number @The bone number for the second entity
--- @return Entity @constraint
function constraint.Find(ent1, ent2, type, bone1, bone2)
end

---  server
--- Returns a table of all entities recursively constrained to an entitiy.  
--- @param ent Entity @The entity to check
--- @param ResultTable? table @Table used to return result
--- @return table @A table containing all of the constrained entities
function constraint.GetAllConstrainedEntities(ent, ResultTable)
end

---  server
--- Creates a slider constraint.  
--- @param Ent1 Entity @First entity.
--- @param Ent2 Entity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls),
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @param LPos1 Vector 
--- @param LPos2 Vector 
--- @param width number @The width of the rope.
--- @param material string @The material of the rope.
--- @param color table @The color of the rope
--- @return Entity @Constraint
--- @return Entity @rope
function constraint.Slider(Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, width, material, color)
end

---  server
--- Creates a Winch constraint.  
--- @param pl Player @The player that will be used to call numpad.OnDown and numpad.OnUp.
--- @param Ent1 Entity @First entity.
--- @param Ent2 Entity @Second entity.
--- @param Bone1 number @Bone of first entity (0 for non-ragdolls),
--- @param Bone2 number @Bone of second entity (0 for non-ragdolls).
--- @param LPos1 Vector 
--- @param LPos2 Vector 
--- @param width number @The width of the rope.
--- @param fwd_bind number @The key binding for "forward", corresponding to an Enums/KEY
--- @param bwd_bind number @The key binding for "backwards", corresponding to an Enums/KEY
--- @param fwd_speed number @Forward speed.
--- @param bwd_speed number @Backwards speed.
--- @param material string @The material of the rope.
--- @param toggle boolean @Whether the winch should be on toggle.
--- @param color table @The color of the rope
--- @return Entity @Constraint
--- @return Entity @rope
--- @return Entity @controller
function constraint.Winch(pl, Ent1, Ent2, Bone1, Bone2, LPos1, LPos2, width, fwd_bind, bwd_bind, fwd_speed, bwd_speed, material, toggle, color)
end

