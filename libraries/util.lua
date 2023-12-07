--- `util.worldpicker` is for picking an entity in the world while [GUI](gui) is open.  
_G.util = {}
---  server
--- Applies explosion damage to all entities in the specified radius. Performs block checking.  
--- @param inflictor Entity @The entity that caused the damage.
--- @param attacker Entity @The entity that attacked.
--- @param damageOrigin Vector @The center of the explosion
--- @param damageRadius number @The radius in which entities will be damaged.
--- @param damage number @The amount of damage to be applied.
function util.BlastDamage(inflictor, attacker, damageOrigin, damageRadius, damage)
end

---  menu|client|server
--- Returns the current date formatted like '2012-10-31 18-00-00'  
--- @return string @date
function util.DateStamp()
end

---  client|server
--- Gets the full material path by the decal name. Used with util.DecalEx.  
--- @param decalName string @Name of the decal.
--- @return string @Material path of the decal.
function util.DecalMaterial(decalName)
end

---  client|server
--- Creates an effect with the specified data.  
--- For Orange Box `.pcf` particles, see Global.ParticleEffect, Global.ParticleEffectAttach and  Global.CreateParticleSystem.  
--- ℹ **NOTE**:   
--- When dispatching an effect from the server, some values may be clamped for networking optimizations. Visit the Set accessors on CEffectData to see which ones are affected.  
--- You will need to couple this function with Global.IsFirstTimePredicted if you want to use it in a predicted hook.  
--- @param effectName string @The name of the effect to create
--- @param effectData CEffectData @The effect data describing the effect.
--- @param allowOverride? boolean @Whether Lua-defined effects should override engine-defined effects with the same name for this/single function call.
--- @param ignorePredictionOrRecipientFilter? any @Can either be a boolean to ignore the prediction filter or a CRecipientFilter
function util.Effect(effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter)
end

---  menu|client|server
--- Utility function to quickly generate a trace table that starts at the players view position, and ends `32768` units along a specified direction.  
--- @param ply Player @The player the trace should be based on
--- @param dir? Vector @The direction of the trace
--- @return table @The trace data
function util.GetPlayerTrace(ply, dir)
end

---  client|server
--- Performs OBB on OBB intersection test.  
--- @param box1Origin Vector @The center of the first box.
--- @param box1Angles Angle @The angles of the first box.
--- @param box1Mins Vector @The min position of the first box.
--- @param box1Maxs Vector @The max position of the first box.
--- @param box2Origin Vector @The center of the second box.
--- @param box2Angles Angle @The angles of the second box.
--- @param box2Mins Vector @The min position of the second box.
--- @param box2Maxs Vector @The max position of the second box.
--- @param tolerance number @Tolerance for error
--- @return boolean @Whether there is an intersection.
function util.IsOBBIntersectingOBB(box1Origin, box1Angles, box1Mins, box1Maxs, box2Origin, box2Angles, box2Mins, box2Maxs, tolerance)
end

---  menu|client|server
--- Similar to util.KeyValuesToTable but it also preserves order of keys.  
--- @param keyvals string @The key value string
--- @param usesEscapeSequences? boolean @If set to true, will replace `\t`, `\n`, `\"` and `\\` in the input text with their escaped variants
--- @param preserveKeyCase? boolean @Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table @The output table
function util.KeyValuesToTablePreserveOrder(keyvals, usesEscapeSequences, preserveKeyCase)
end

---  menu|client|server
--- Returns a vector in world coordinates based on an entity and local coordinates  
--- @param ent Entity @The entity lpos is local to
--- @param lpos Vector @Coordinates local to the ent
--- @param bonenum number @The bonenumber of the ent lpos is local to
--- @return Vector @wpos
function util.LocalToWorld(ent, lpos, bonenum)
end

---  client|server
--- Generates the [MD5 hash](https://en.wikipedia.org/wiki/MD5) of the specified string.  
--- ⚠ **WARNING**: MD5 is considered cryptographically broken and is known to be vulnerable to a variety of attacks including duplicate return values. If security or duplicate returns is a concern, use util.SHA256.  
--- @param stringToHash string @The string to calculate the MD5 hash of.
--- @return string @The MD5 hash of the string in hexadecimal form.
function util.MD5(stringToHash)
end

---  client|server
--- Precaches a sound for later use. Sound is cached after being loaded once.  
--- ℹ **NOTE**: Soundcache is limited to 16384 unique sounds on the server.  
--- 🦟 **BUG**: Broken on purpose because hitting the limit above causes the server to shutdown  
--- 🦟 **BUG**: Ultimately does nothing on client, and only works with sound scripts, not direct paths.  
--- @param soundName string @The sound to precache.
function util.PrecacheSound(soundName)
end

---  menu|client|server
--- Sets persistent data for offline player using their SteamID.  
--- See also Player:SetPData for a more convenient version of this function for online players, util.RemovePData and  
--- util.GetPData for the other accompanying functions.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player, in the `STEAM_0:0:0` format
--- @param name string @Variable name to store the value in.
--- @param value any @The value to store.
function util.SetPData(steamID, name, value)
end

---  server
--- Adds a trail to the specified entity.  
--- @param ent Entity @Entity to attach trail to
--- @param attachmentID number @Attachment ID of the entities model to attach trail to
--- @param color table @Color of the trail, use Global.Color
--- @param additive boolean @Should the trail be additive or not
--- @param startWidth number @Start width of the trail
--- @param endWidth number @End width of the trail
--- @param lifetime number @How long it takes to transition from startWidth to endWidth
--- @param textureRes number @The resolution of trails texture
--- @param texture string @Path to the texture to use as a trail.
--- @return Entity @Entity of created trail ([env_spritetrail](https://developer.valvesoftware.com/wiki/Env_spritetrail))
function util.SpriteTrail(ent, attachmentID, color, additive, startWidth, endWidth, lifetime, textureRes, texture)
end

---  menu|client|server
--- Returns the time since this function has been last called  
--- @return number @Time since this function has been last called in ms
function util.TimerCycle()
end

---  menu|client|server
--- 🛑 **DEPRECATED**: You should use Global.tobool instead.  
--- Converts string or a number to a bool, if possible. Alias of Global.tobool.  
--- @param input any @A string or a number to convert.
--- @deprecated
--- @return boolean @False if the input is equal to the string or boolean "false", if the input is equal to the string or number "0", or if the input is nil
function util.tobool(input)
end

