--- @class Weapon : Entity
local Weapon = {}
---  client|server
--- Returns how much secondary ammo is in the magazine.  
--- ℹ **NOTE**: This is not shared between clients and will instead return the maximum secondary clip size.  
--- @return number @The amount of secondary ammo in the magazine.
function Weapon:Clip2()
end

---  client|server
--- Forces the weapon to reload while playing given animation.  
--- ℹ **NOTE**:   
--- This will stop the Weapon:Think function from getting called while the weapon is reloading!  
--- @param act number @Sequence to use as reload animation
--- @return boolean @Did reloading actually take place
function Weapon:DefaultReload(act)
end

---  client|server
--- Gets the primary ammo type of the given weapon.  
--- @return number @The ammo type ID, or -1 if not found.
function Weapon:GetPrimaryAmmoType()
end

---  client|server
--- Sets the activity the weapon is playing.  
--- See also Weapon:GetActivity.  
--- @param act number @The new activity to set, see Enums/ACT.
function Weapon:SetActivity(act)
end

