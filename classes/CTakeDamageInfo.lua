--- A class used to store and modify all the data concerning a damage event.  
--- An empty CTakeDamageInfo object can be created with Global.DamageInfo  
--- List of hooks that this object is passed to:  
--- * ENTITY:OnTakeDamage  
--- * GM:DoPlayerDeath  
--- * GM:EntityTakeDamage  
--- * GM:PostEntityTakeDamage  
--- * GM:OnDamagedByExplosion  
--- * GM:ScaleNPCDamage  
--- * GM:ScalePlayerDamage  
--- * NEXTBOT:OnInjured  
--- * NEXTBOT:OnKilled  
--- * NEXTBOT:OnOtherKilled  
--- List of functions that use this object:  
--- * util.BlastDamageInfo  
--- * Entity:TakeDamageInfo  
--- * Entity:TakePhysicsDamage  
--- * Entity:DispatchTraceAttack  
--- @class CTakeDamageInfo
local CTakeDamageInfo = {}
---  client|server
--- Increases the damage by damageIncrease.  
--- @param damageIncrease number @The damage to add.
function CTakeDamageInfo:AddDamage(damageIncrease)
end

---  client|server
--- Returns the initial unmodified by skill level ( game.GetSkillLevel ) damage.  
--- @return number @baseDamage
function CTakeDamageInfo:GetBaseDamage()
end

---  client|server
--- Returns whenever the damageinfo contains explosion damage.  
--- @return boolean @isExplDamage
function CTakeDamageInfo:IsExplosionDamage()
end

---  client|server
--- Changes the ammo type used by the weapon that inflicted the damage.  
--- @param ammoType number @Ammo type ID
function CTakeDamageInfo:SetAmmoType(ammoType)
end

---  client|server
--- Sets the initial unmodified by skill level ( game.GetSkillLevel ) damage. This function will not update or touch CTakeDamageInfo:GetDamage.  
--- @param  number @baseDamage
function CTakeDamageInfo:SetBaseDamage()
end

---  client|server
--- Sets the bonus damage. Bonus damage isn't automatically applied, so this will have no outer effect by default.  
--- @param damage number @The extra damage to be added.
function CTakeDamageInfo:SetDamageBonus(damage)
end

---  client|server
--- Sets the directional force of the damage.  
--- ℹ **NOTE**:   
--- This function seems to have no effect on player knockback. To disable knockback entirely, see [EFL_NO_DAMAGE_FORCES](https://wiki.facepunch.com/gmod/Enums/EFL#EFL_NO_DAMAGE_FORCES) or use workaround example below.  
--- @param force Vector @The vector to set the force to.
function CTakeDamageInfo:SetDamageForce(force)
end

---  client|server
--- Sets the position of where the damage gets applied to.  
--- @param pos Vector @The position where the damage will be applied.
function CTakeDamageInfo:SetDamagePosition(pos)
end

---  client|server
--- Sets the inflictor of the damage for example a weapon.  
--- For hitscan/bullet weapons this should the weapon.  
--- For projectile ( rockets, etc ) weapons this should be the projectile.  
--- @param inflictor Entity @The new inflictor.
function CTakeDamageInfo:SetInflictor(inflictor)
end

