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
--- Returns the ammo type used by the weapon that inflicted the damage.  
--- @return number @Ammo type ID
function CTakeDamageInfo:GetAmmoType()
end

---  client|server
--- Returns the attacker ( character who originated the attack ), for example a player or an NPC that shot the weapon.  
--- @return Entity @The attacker
function CTakeDamageInfo:GetAttacker()
end

---  client|server
--- Returns the initial unmodified by skill level ( game.GetSkillLevel ) damage.  
--- @return number @baseDamage
function CTakeDamageInfo:GetBaseDamage()
end

---  client|server
--- Returns the total damage.  
--- @return number @damage
function CTakeDamageInfo:GetDamage()
end

---  client|server
--- Gets the current bonus damage.  
--- @return number @Bonus damage
function CTakeDamageInfo:GetDamageBonus()
end

---  client|server
--- Gets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.  
--- @return number @The custom damage type
function CTakeDamageInfo:GetDamageCustom()
end

---  client|server
--- Returns a vector representing the damage force.  
--- Can be set with CTakeDamageInfo:SetDamageForce.  
--- @return Vector @The damage force
function CTakeDamageInfo:GetDamageForce()
end

---  client|server
--- Returns the position where the damage was or is going to be applied to.  
--- Can be set using CTakeDamageInfo:SetDamagePosition.  
--- @return Vector @The damage position
function CTakeDamageInfo:GetDamagePosition()
end

---  client|server
--- Returns a bitflag which indicates the damage type(s) of the damage.  
--- Consider using CTakeDamageInfo:IsDamageType instead. Value returned by this function can contain multiple damage types.  
--- @return number @Damage type(s), a combination of Enums/DMG
function CTakeDamageInfo:GetDamageType()
end

---  client|server
--- Returns the inflictor of the damage. This is not necessarily a weapon.  
--- For hitscan weapons this is the weapon.  
--- For projectile weapons this is the projectile.  
--- For a more reliable method of getting the weapon that damaged an entity, use GetAttacker with GetActiveWeapon.  
--- @return Entity @The inflictor
function CTakeDamageInfo:GetInflictor()
end

---  client|server
--- Returns the maximum damage. See CTakeDamageInfo:SetMaxDamage  
--- @return number @maxDmg
function CTakeDamageInfo:GetMaxDamage()
end

---  client|server
--- Returns the initial, unmodified position where the damage occured.  
--- @return Vector @position
function CTakeDamageInfo:GetReportedPosition()
end

---  client|server
--- Returns true if the damage was caused by a bullet.  
--- @return boolean @isBulletDmg
function CTakeDamageInfo:IsBulletDamage()
end

---  client|server
--- Returns whenever the damageinfo contains the damage type specified.  
--- @param dmgType number @Damage type to test
--- @return boolean @Whether this damage contains specified damage type or not
function CTakeDamageInfo:IsDamageType(dmgType)
end

---  client|server
--- Returns whenever the damageinfo contains explosion damage.  
--- @return boolean @isExplDamage
function CTakeDamageInfo:IsExplosionDamage()
end

---  client|server
--- Returns whenever the damageinfo contains fall damage.  
--- @return boolean @isFallDmg
function CTakeDamageInfo:IsFallDamage()
end

---  client|server
--- Scales the damage by the given value.  
--- @param scale number @Value to scale the damage with.
function CTakeDamageInfo:ScaleDamage(scale)
end

---  client|server
--- Changes the ammo type used by the weapon that inflicted the damage.  
--- @param ammoType number @Ammo type ID
function CTakeDamageInfo:SetAmmoType(ammoType)
end

---  client|server
--- Sets the attacker ( character who originated the attack ) of the damage, for example a player or an NPC.  
--- @param ent Entity @The entity to be set as the attacker.
function CTakeDamageInfo:SetAttacker(ent)
end

---  client|server
--- Sets the initial unmodified by skill level ( game.GetSkillLevel ) damage. This function will not update or touch CTakeDamageInfo:GetDamage.  
--- @param  number @baseDamage
function CTakeDamageInfo:SetBaseDamage()
end

---  client|server
--- Sets the amount of damage.  
--- @param damage number @The value to set the absolute damage to.
function CTakeDamageInfo:SetDamage(damage)
end

---  client|server
--- Sets the bonus damage. Bonus damage isn't automatically applied, so this will have no outer effect by default.  
--- @param damage number @The extra damage to be added.
function CTakeDamageInfo:SetDamageBonus(damage)
end

---  client|server
--- Sets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default.  
--- @param DamageType number @Any integer - can be based on your own custom enums.
function CTakeDamageInfo:SetDamageCustom(DamageType)
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
--- Sets the damage type.  
--- @param type number @The damage type, see Enums/DMG.
function CTakeDamageInfo:SetDamageType(type)
end

---  client|server
--- Sets the inflictor of the damage for example a weapon.  
--- For hitscan/bullet weapons this should the weapon.  
--- For projectile ( rockets, etc ) weapons this should be the projectile.  
--- @param inflictor Entity @The new inflictor.
function CTakeDamageInfo:SetInflictor(inflictor)
end

---  client|server
--- Sets the maximum damage this damage event can cause.  
--- @param maxDamage number @Maximum damage value.
function CTakeDamageInfo:SetMaxDamage(maxDamage)
end

---  client|server
--- Sets the origin of the damage.  
--- @param pos Vector @The location of where the damage is originating
function CTakeDamageInfo:SetReportedPosition(pos)
end

---  client|server
--- Subtracts the specified amount from the damage.  
--- @param damage number @Value to subtract.
function CTakeDamageInfo:SubtractDamage(damage)
end

