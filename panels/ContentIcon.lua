--- The spawn icon used for SWEPs and other SENTs, commonly featured as part of the spawn menu.  
--- Do note that at least one of your ContentIcon's parents must either be an EditablePanel or derived from it  
--- (like a DFrame, for example), else it won't be able to focus and thus be unclickable.  
--- This control only exists in Sandbox derived gamemodes.  
--- @class ContentIcon : DButton
local ContentIcon = {}
---  client
--- Returns the color set by ContentIcon:SetColor  
--- @return table @See Color
function ContentIcon:GetColor()
end

---  client
--- Returns the content type used to save and restore the content icon in a spawnlist.  
--- @return string @The content type, for example "entity" or "weapon".
function ContentIcon:GetContentType()
end

---  client
--- Returns a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC.  
--- @return table @A table of weapon classes to be chosen from when user tries to spawn the NPC.
function ContentIcon:GetNPCWeapon()
end

---  client
--- Returns the internal "name" for the content icon, usually a class name for an entity.  
--- @return string @Internal "name" to be used when user left clicks the icon.
function ContentIcon:GetSpawnName()
end

---  client
--- A hook for override, by default does nothing. Called when user right clicks on the content icon, you are supposed to open a Global.DermaMenu here with additional options.  
function ContentIcon:OpenMenu()
end

---  client
--- Sets whether the content item is admin only. This makes the icon to display a admin icon in the top left corner of the icon.  
--- @param adminOnly boolean @Whether this content should be admin only or not
function ContentIcon:SetAdminOnly(adminOnly)
end

---  client
--- Sets the color for the content icon. Currently is not used by the content icon panel.  
--- @param clr table @The color to set
function ContentIcon:SetColor(clr)
end

---  client
--- Sets the content type used to save and restore the content icon in a spawnlist.  
--- @param type string @The content type, for example "entity" or "weapon"
function ContentIcon:SetContentType(type)
end

---  client
--- Sets the material to be displayed as the content icon.  
--- @param path string @Path to the icon to use.
function ContentIcon:SetMaterial(path)
end

---  client
--- Sets a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC.  
--- @param weapons table @A table of weapon classes to be chosen from when user tries to spawn the NPC.
function ContentIcon:SetNPCWeapon(weapons)
end

---  client
--- Sets the tool tip and the "nice" name to be displayed by the content icon.  
--- @param name string @"Nice" name to display.
function ContentIcon:SetName(name)
end

---  client
--- Sets the internal "name" for the content icon, usually a class name for an entity.  
--- @param name string @Internal "name" to be used when user left clicks the icon.
function ContentIcon:SetSpawnName(name)
end

