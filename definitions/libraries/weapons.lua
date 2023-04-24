--- The weapons library allows you to access information about any scripted weapons loaded into the game, as well as register your own weapons.  
_G.weapons = {}
--- Get a `copy` of weapon table by name. This function also inherits fields from the weapon's base class, unlike weapons.GetStored.  
--- ℹ **NOTE**:  This will only work on SWEP's, this means that this will not return anything for HL2/HL:S weapons.   
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/weapons.lua:129:160
--- @param classname string @Class name of weapon to retrieve
--- @return table @The retrieved table or nil
function weapons.Get(classname)
end

--- Get a list of all the registered SWEPs. This does not include weapons added to spawnmenu manually.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/weapons.lua:174:182
--- @return table @List of all the registered SWEPs
function weapons.GetList()
end

--- Gets the REAL weapon table, not a copy. The produced table does `not` inherit fields from the weapon's base class, unlike weapons.Get.  
--- ⚠ **WARNING**: Modifying this table will modify what is stored by the weapons library. Take a copy or use weapons.Get to avoid this.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/weapons.lua:166:168
--- @param weapon_class string @Weapon class to retrieve weapon table of
--- @return table @The weapon table
function weapons.GetStored(weapon_class)
end

--- Checks if name is based on base  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/weapons.lua:32:39
--- @param name string @Entity's class name to be checked
--- @param base string @Base class name to be checked
--- @return boolean @Returns true if class name is based on base, else false.
function weapons.IsBasedOn(name, base)
end

--- Registers a Scripted Weapon (SWEP) class manually. When the engine spawns an entity, weapons registered with this function will be created if the class names match.  
--- See also scripted_ents.Register for Scripted Entities (SENTs)  
--- 🦟 **BUG**: [Sub-tables provided in the first argument will not carry over their metatable, and will receive a BaseClass key if the table was merged with the base's. Userdata references, which includes Vectors, Angles, Entities, etc. will not be copied.](https://github.com/Facepunch/garrysmod/pull/1300)  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/weapons.lua:46:105
--- @param swep_table table @The SWEP table
--- @param classname string @Classname to assign to that swep
function weapons.Register(swep_table, classname)
end

