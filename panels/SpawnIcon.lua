--- A "spawn icon" displays an image for the given model path. It is mostly used in the Spawn Menu (`Q`). It uses ModelImage internally.  
--- @class SpawnIcon : DButton
local SpawnIcon = {}
---  client
--- Returns the currently set body groups of the spawn icon. This is set by SpawnIcon:SetBodyGroup.  
--- @return string @The bodygroups of the spawnicon
function SpawnIcon:GetBodyGroup()
end

---  client
--- Returns the currently set model name. This is set by SpawnIcon:SetModelName.  
--- @return string @The model name
function SpawnIcon:GetModelName()
end

---  client
--- Returns the currently set skin of the spawnicon. This is set by SpawnIcon:SetSkinID.  
--- @return number @Current skin ID
function SpawnIcon:GetSkinID()
end

---  client
--- Called when right clicked on the SpawnIcon. It will not be called if there is a selection (Panel:GetSelectionCanvas), in which case SANDBOX:SpawnlistOpenGenericMenu is called.  
function SpawnIcon:OpenMenu()
end

