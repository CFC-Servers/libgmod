--- The ents library provides functions for creating and finding entities in the game.  
_G.ents = {}
---  client
--- Creates a clientside only prop. See also Global.ClientsideModel.  
--- For physics to work you **must** use the _model_ argument, a simple `SetModel` call will not be enough.  
--- 🦟 **BUG**: [Parented clientside prop will become detached if the parent entity leaves the PVS. **A workaround is available on its github page.**](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- @param model? string @The model for the entity to be created
--- @return Entity @Created entity (`C_PhysPropClientside`).
function ents.CreateClientProp(model)
end

---  client|server
--- Gets all entities with the given hammer targetname. This works internally by iterating over ents.GetAll.  
--- Doesn't do anything on client.  
--- @param name string @The targetname to look for
--- @return table @A table of all found entities
function ents.FindByName(name)
end

---  client|server
--- Returns all entities within the specified box.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- ⚠ **WARNING**: There is a limit of 512 entities for the output!  
--- @param boxMins Vector @The box minimum coordinates.
--- @param boxMaxs Vector @The box maximum coordinates.
--- @return table @A table of all found entities.
function ents.FindInBox(boxMins, boxMaxs)
end

---  server
--- Finds all entities that lie within a [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param viewPoint any @Entity or Vector to find entities within the PVS of
--- @return table @The found Entitys.
function ents.FindInPVS(viewPoint)
end

