--- The drive library is for adding custom control modes to the new "remote control" entity piloting system in Garry's Mod 13. See Entity Driving.  
_G.drive = {}
---  client|server
--- Player has stopped driving the entity.  
--- @param ply Player @The player
--- @param ent Entity @The entity
function drive.End(ply, ent)
end

---  client|server
--- Starts driving for the player.  
--- @param ply Player @The player to affect
--- @param ent Entity @The entity to drive
--- @param mode string @The driving mode
function drive.PlayerStartDriving(ply, ent, mode)
end

---  client|server
--- Stops the player from driving anything. ( For example a prop in sandbox )  
--- @param ply Player @The player to affect
function drive.PlayerStopDriving(ply)
end

---  client|server
--- Registers a new entity drive.  
--- @param name string @The name of the drive.
--- @param data table @The data required to create the drive
--- @param base string @The base of the drive.
function drive.Register(name, data, base)
end

---  client|server
--- Called when the player first starts driving this entity  
--- @param ply Player @The player
--- @param ent Entity @The entity
function drive.Start(ply, ent)
end

