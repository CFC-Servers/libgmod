_G.game = {}
---  client|server
--- Loads a particle file. Individual particle systems will still need to be precached with Global.PrecacheParticleSystem.  
--- ℹ **NOTE**: You will still need to call this function clientside regardless if you create the particle effects serverside.  
--- @param particleFileName string @The path of the file to add
function game.AddParticles(particleFileName)
end

---  client|server
--- If called serverside it will remove **ALL** entities which were not created by the map (not players or weapons held by players).  
--- It won't remove Entities who have the EFL_KEEP_ON_RECREATE_ENTITIES Flag set.  
--- On the client it will remove decals, sounds, gibs, dead NPCs, and entities created via ents.CreateClientProp.  
--- This function calls GM:PreCleanupMap before cleaning up the map and GM:PostCleanupMap after cleaning up the map.  
--- 🦟 **BUG**: [Calling this in a ENTITY:StartTouch or ENTITY:Touch hook will crash the game.](https://github.com/Facepunch/garrysmod-issues/issues/1142)  
--- 🦟 **BUG**: [Calling this destroys all BASS streams.](https://github.com/Facepunch/garrysmod-issues/issues/2874)  
--- 🦟 **BUG**: [This can crash when removing _firesmoke entities. **You can use the example below to workaround this issue.**](https://github.com/Facepunch/garrysmod-issues/issues/3637)  
--- @param dontSendToClients? boolean @If set to `true`, don't run this functions on all clients.
--- @param extraFilters? table @Entity classes not to reset during cleanup.
function game.CleanUpMap(dontSendToClients, extraFilters)
end

---  client|server
--- Returns the ammo type ID for given ammo type name.  
--- See game.GetAmmoName for reverse.  
--- @param name string @Name of the ammo type to look up ID of
--- @return number @The ammo type ID of given ammo type name, or -1 if not found
function game.GetAmmoID(name)
end

---  client|server
--- Returns the ammo name for given ammo type ID.  
--- See game.GetAmmoID for reverse.  
--- @param id number @Ammo ID to retrieve the name of
--- @return string @The name of given ammo type ID or nil if ammo type ID is invalid.
function game.GetAmmoName(id)
end

---  server
--- Returns whether a Global State is off, active or dead ( inactive )  
--- See Global States for more information.  
--- @param name string @The name of the Global State to retrieve the state of
--- @return number @The state of the Global State
function game.GetGlobalState(name)
end

---  server
--- Returns the revision (Not to be confused with [VBSP Version](https://developer.valvesoftware.com/wiki/Source_BSP_File_Format#Versions)) of the current map.  
--- @return number @Revision of the currently loaded map.
function game.GetMapVersion()
end

---  client|server
--- Returns true if the server is a dedicated server, false if it is a listen server or a singleplayer game.  
--- @return boolean @Is the server dedicated or not.
function game.IsDedicated()
end

---  client|server
--- Removes all the clientside ragdolls.  
function game.RemoveRagdolls()
end

