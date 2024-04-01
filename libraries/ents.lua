--- The ents library provides functions for creating and finding entities in the game.  
_G.ents = {}
---  server
--- Creates an entity. This function will fail and return `NULL` if the networked-edict limit is hit (around **8176**), or the provided entity class doesn't exist.  
--- ⚠ **WARNING**: Do not use before GM:InitPostEntity has been called, otherwise the server will crash!  
--- If you need to perform entity creation when the game starts, create a hook for GM:InitPostEntity and do it there.  
--- @param class string @The classname of the entity to create.
--- @return Entity @The created entity, or `NULL` if failed.
function ents.Create(class)
end

---  client
--- Creates a clientside only prop with optional physics. See also Global.ClientsideModel if physics is not needed.  
--- For physics to work you **must** use the _model_ argument, a simple `SetModel` call will not be enough.  
--- 🦟 **BUG**: [Parented clientside prop will become detached if the parent entity leaves the PVS. **A workaround is available on its github page.**](https://github.com/Facepunch/garrysmod-issues/issues/861)  
--- @param model? string @The model for the entity to be created.
--- @return Entity @Created entity (`C_PhysPropClientside`).
function ents.CreateClientProp(model)
end

---  client
--- Creates a clientside only scripted entity. The scripted entity must be of "anim" type.  
--- @param class string @The class name of the entity to create.
--- @return Entity @Created entity.
function ents.CreateClientside(class)
end

---  client|server
--- Returns a table of all entities along the ray. The ray does not stop on collisions, meaning it will go through walls/entities.  
--- ℹ **NOTE**: This internally uses a Spatial Partition to avoid looping through all entities.  
--- @param start Vector @The start position of the ray
--- @param end_ Vector @The end position of the ray
--- @param mins? Vector @The mins corner of the ray
--- @param maxs? Vector @The maxs corner of the ray
--- @return table @Table of the found entities
function ents.FindAlongRay(start, end_, mins, maxs)
end

---  client|server
--- Gets all entities with the given class, supports wildcards. This works internally by iterating over ents.GetAll. Even if internally ents.GetAll is used, It is faster to use ents.FindByClass than ents.GetAll with a single class comparison.  
--- ℹ **NOTE**: Asterisks (*) are the only wildcard supported.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @param class string @The class of the entities to find.
--- @return table @A table containing all found entities
function ents.FindByClass(class)
end

---  client|server
--- Finds all entities that are of given class and are children of given entity. This works internally by iterating over ents.GetAll.  
--- @param class string @The class of entities to search for
--- @param parent Entity @Parent of entities that are being searched for
--- @return table @A table of found entities or nil if none are found
function ents.FindByClassAndParent(class, parent)
end

---  client|server
--- Gets all entities with the given model, supports wildcards.  
--- ℹ **NOTE**: This works internally by iterating over ents.GetAll.  
--- @param model string @The model of the entities to find.
--- @return table @A table of all found entities.
function ents.FindByModel(model)
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
--- ℹ **NOTE**: This internally uses a Spatial Partition to avoid looping through all entities.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- ⚠ **WARNING**: There is a limit of 512 entities for the output!  
--- @param boxMins Vector @The box minimum coordinates.
--- @param boxMaxs Vector @The box maximum coordinates.
--- @return table @A table of all found entities.
function ents.FindInBox(boxMins, boxMaxs)
end

---  client|server
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

---  server
--- Finds all entities that lie within a [PVS (Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community").  
--- ℹ **NOTE**: The function won't take in to account Global.AddOriginToPVS and the like.  
--- @param viewPoint any @Entity or Vector to find entities within the PVS of
--- @return table @The found Entitys.
function ents.FindInPVS(viewPoint)
end

---  client|server
--- Gets all entities within the specified sphere.  
--- ℹ **NOTE**: This internally uses a Spatial Partition to avoid looping through all entities.  
--- ℹ **NOTE**: Clientside entities will not be returned by this function.  
--- ℹ **NOTE**: This function internally calls ents.FindInBox with some [radius checks](https://github.com/ValveSoftware/source-sdk-2013/blob/0d8dceea4310fde5706b3ce1c70609d72a38efdf/sp/src/public/collisionutils.cpp#L256-L301).  
--- @param origin Vector @Center of the sphere.
--- @param radius number @Radius of the sphere.
--- @return table @A table of all found Entitys
function ents.FindInSphere(origin, radius)
end

---  server
--- Fires a use event.  
--- @param target string @Name of the target entity.
--- @param activator Entity @Activator of the event.
--- @param caller Entity @Caller of the event.
--- @param usetype number @Use type
--- @param value number @This value is passed to ENTITY:Use, but isn't used by any default entities in the engine.
function ents.FireTargets(target, activator, caller, usetype, value)
end

---  client|server
--- Returns a table of all existing entities.  
--- Consider using ents.Iterator instead for better performance.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @return table @Table of all existing Entitys.
function ents.GetAll()
end

---  client|server
--- Returns an entity by its index. Same as Global.Entity.  
--- @param entIdx number @The index of the entity.
--- @return Entity @The entity if it exists.
function ents.GetByIndex(entIdx)
end

---  client|server
--- Gives you the amount of currently existing entities.  
--- ℹ **NOTE**: Similar to **#**ents.GetAll() but with better performance since the entity table doesn't have to be generated. If ents.GetAll is already being called for iteration, than using the **#** operator on the table will be faster than calling this function since it is JITted.  
--- @param IncludeKillMe? boolean @Include entities with the FL_KILLME flag
--- @return number @Number of entities
function ents.GetCount(IncludeKillMe)
end

---  server
--- Returns the amount of networked entities, which is limited to 8192. ents.Create will fail somewhere between 8064 and 8176 - this can vary based on the amount of existing temp ents.  
--- @return number @Number of networked entities
function ents.GetEdictCount()
end

---  client|server
--- Returns entity that has given Entity:MapCreationID.  
--- @param id number @Entity's creation id
--- @return Entity @Found entity
function ents.GetMapCreatedEntity(id)
end

---  client|server
--- Returns a [Stateless Iterator](https://www.lua.org/pil/7.3.html) for all entities.  
--- Intended for use in [Generic For Loops](https://www.lua.org/pil/4.3.5.html).  
--- See player.Iterator for a similar function for all players.  
--- Internally, this function uses cached values that exist entirely within lua, as opposed to ents.GetAll, which is a C++ function.  
--- Because switching from lua to C++ (and vice versa) incurs a performance cost, this function will be somewhat more efficient than ents.GetAll.  
--- ℹ **NOTE**: The GM:OnEntityCreated and GM:EntityRemoved hooks are used internally to invalidate this function's cache. Using this function inside those hooks is not guaranteed to use an up-to-date cache because hooks are currently executed in an arbitrary order.  
--- ⚠ **WARNING**: An error being thrown inside the GM:OnEntityCreated or GM:EntityRemoved hooks is likely to break this function. Make it certain that no addons are causing any errors in those hooks.  
--- ⚠ **WARNING**: Modifying the return table will affect all subsequent calls to this function until the cache is refreshed, replacing all of your ents.GetAll usages may come with unintended side effects because of this.  
--- @return function @The Iterator Function from ipairs
--- @return table @Table of all existing Entities
--- @return number @The starting index for the table of players
function ents.Iterator()
end

