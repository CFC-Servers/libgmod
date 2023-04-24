--- The ents library provides functions for creating and finding entities in the game.  
_G.ents = {}
--- Creates an entity. This function will fail and return `NULL` if the networked-edict limit is hit (around **8176**), or the provided entity class doesn't exist.  
--- ⚠ **WARNING**: Do not use before GM:InitPostEntity has been called, otherwise the server will crash!  
--- If you need to perform entity creation when the game starts, create a hook for GM:InitPostEntity and do it there.  
--- @param class string @The classname of the entity to create.
--- @return Entity @The created entity, or `NULL` if failed.
function ents.Create(class)
end

--- Creates a clientside only prop. See also Global.ClientsideModel.  
--- For physics to work you **must** use the _model_ argument, a simple `SetModel` call will not be enough.  
--- 🦟 **BUG**: [Parented clientside prop will become detached if the parent entity leaves the PVS. **A workaround is available on its github page.**](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- @param model? string @The model for the entity to be created
--- @return Entity @Created entity (`C_PhysPropClientside`).
function ents.CreateClientProp(model)
end

--- Creates a clientside only scripted entity. The scripted entity must be of "anim" type.  
--- @param class string @The class name of the entity to create.
--- @return Entity @Created entity.
function ents.CreateClientside(class)
end

--- Returns a table of all entities along the ray. The ray does not stop on collisions, meaning it will go through walls/entities.  
--- @param start Vector @The start position of the ray
--- @param end_ Vector @The end position of the ray
--- @param mins? Vector @The mins corner of the ray
--- @param maxs? Vector @The maxs corner of the ray
--- @return table @Table of the found entities.
function ents.FindAlongRay(start, end_, mins, maxs)
end

--- Gets all entities with the given class, supports wildcards. This works internally by iterating over ents.GetAll. Even if internally ents.GetAll is used, It is faster to use ents.FindByClass than ents.GetAll with a single class comparison.  
--- ℹ **NOTE**: Asterisks (*) are the only wildcard supported.  
--- @param class string @The class of the entities to find.
--- @return table @A table containing all found entities
function ents.FindByClass(class)
end

--- Finds all entities that are of given class and are children of given entity. This works internally by iterating over ents.GetAll.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/ents.lua:2
--- @param class string @The class of entities to search for
--- @param parent Entity @Parent of entities that are being searched for
--- @return table @A table of found entities or nil if none are found
function ents.FindByClassAndParent(class, parent)
end

--- Gets all entities with the given model, supports wildcards. This works internally by iterating over ents.GetAll.  
--- @param model string @The model of the entities to find.
--- @return table @A table of all found entities.
function ents.FindByModel(model)
end

--- Gets all entities with the given hammer targetname. This works internally by iterating over ents.GetAll.  
--- Doesn't do anything on client.  
--- @param name string @The targetname to look for
--- @return table @A table of all found entities
function ents.FindByName(name)
end

--- Returns all entities within the specified box.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- ⚠ **WARNING**: There is a limit of 512 entities for the output!  
--- @param boxMins Vector @The box minimum coordinates.
--- @param boxMaxs Vector @The box maximum coordinates.
--- @return table @A table of all found entities.
function ents.FindInBox(boxMins, boxMaxs)
end

--- Finds and returns all entities within the specified cone. Only entities whose Entity:WorldSpaceCenter is within the cone are considered to be in it.  
--- The "cone" is actually a conical "slice" of an axis-aligned box (see: ents.FindInBox). The image to the right shows approximately how this function would look in 2D. Due to this, the entity may be farther than the specified range!  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- ⚠ **WARNING**: If there are more than 512 entities in the axis-aligned box around the origin, then the result may be incomplete!  
--- @param origin Vector @The tip of the cone.
--- @param normal Vector @Direction of the cone.
--- @param range number @The range of the cone/box around the origin
--- @param angle_cos number @The cosine of the angle between the center of the cone to its edges, which is half the overall angle of the cone
--- @return table @A table of all found Entitys.
function ents.FindInCone(origin, normal, range, angle_cos)
end

--- Finds all entities that lie within a [PVS](https://developer.valvesoftware.com/wiki/PVS).  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param viewPoint any @Entity or Vector to find entities within the PVS of
--- @return table @The found Entitys.
function ents.FindInPVS(viewPoint)
end

--- Gets all entities within the specified sphere.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- This function internally calls ents.FindInBox with some [radius checks](https://github.com/ValveSoftware/source-sdk-2013/blob/0d8dceea4310fde5706b3ce1c70609d72a38efdf/sp/src/public/collisionutils.cpp#L256-L301).  
--- @param origin Vector @Center of the sphere.
--- @param radius number @Radius of the sphere.
--- @return table @A table of all found Entitys
function ents.FindInSphere(origin, radius)
end

--- Fires a use event.  
--- @param target string @Name of the target entity.
--- @param activator Entity @Activator of the event.
--- @param caller Entity @Caller of the event.
--- @param usetype number @Use type
--- @param value number @This value is passed to ENTITY:Use, but isn't used by any default entities in the engine.
function ents.FireTargets(target, activator, caller, usetype, value)
end

--- Returns a table of all existing entities. The table is sequential  
--- @return table @Table of all existing Entitys.
function ents.GetAll()
end

--- Returns an entity by its index. Same as Global.Entity.  
--- @param entIdx number @The index of the entity.
--- @return Entity @The entity if it exists.
function ents.GetByIndex(entIdx)
end

--- Gives you the amount of currently existing entities.  
--- ℹ **NOTE**: Similar to **#**ents.GetAll() but with better performance since the entity table doesn't have to be generated. If ents.GetAll is already being called for iteration, than using the **#** operator on the table will be faster than calling this function since it is JITted.  
--- @param IncludeKillMe? boolean @Include entities with the FL_KILLME flag
--- @return number @Number of entities
function ents.GetCount(IncludeKillMe)
end

--- Returns the amount of networked entities, which is limited to 8192. ents.Create will fail somewhere between 8064 and 8176 - this can vary based on the amount of existing temp ents.  
--- @return number @Number of networked entities
function ents.GetEdictCount()
end

--- Returns entity that has given Entity:MapCreationID.  
--- @param id number @Entity's creation id
--- @return Entity @Found entity
function ents.GetMapCreatedEntity(id)
end
