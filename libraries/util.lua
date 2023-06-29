--- This is the list of utility functions.  
_G.util = {}
---  server
--- Adds the specified string to a string table, which will cache it and network it to all clients automatically.  
--- Whenever you want to create a net message with net.Start, you must add the name of that message as a networked string via this function.  
--- If the passed string already exists, nothing will happen and the ID of the existing item will be returned.  
--- ℹ **NOTE**: Each unique network name needs to be pooled once - do not put this function call into any other functions if you're using a constant string. Preferable place for this function is in a serverside lua file, or in a shared file with the net.Receive function.  
--- The string table used for this function does not interfere with the engine string tables and has 4095 slots.  
--- This limit is shared among all entities, SetNW* and SetGlobal* functions. If you exceed the limit, you cannot create new variables, and you will get the following warning:  
--- ```lua  
--- Warning:  Table networkstring is full, can't add [key]  
--- ```  
--- <warning>Existing variables will still get updated without the warning. You can check the limit by counting up until util.NetworkIDToString returns nil</warning>  
--- @param str string @Adds the specified string to the string table.
--- @return number @The id of the string that was added to the string table.<br>
function util.AddNetworkString(str)
end

---  menu|client|server
--- Function used to calculate aim vector from 2D screen position. It is used in SuperDOF calculate Distance.  
--- Essentially a generic version of gui.ScreenToVector.  
--- @param ViewAngles Angle @View angles
--- @param ViewFOV number @View Field of View
--- @param x number @Mouse X position
--- @param y number @Mouse Y position
--- @param scrWidth number @Screen width
--- @param scrHeight number @Screen height
--- @return Vector @Calculated aim vector
function util.AimVector(ViewAngles, ViewFOV, x, y, scrWidth, scrHeight)
end

---  menu|client|server
--- Decodes the specified string from base64.  
--- @param str string @String to decode.
--- @return string @The raw bytes of the decoded string.
function util.Base64Decode(str)
end

---  menu|client|server
--- Encodes the specified string to base64.  
--- ℹ **NOTE**: Unless disabled with the `inline` argument, the Base64 returned is compliant to the RFC 2045 standard. **This means it will have a line break after every 76th character.**  
--- @param str string @String to encode.
--- @param inline? boolean @`true` to disable RFC 2045 compliance (newline every 76th character)
--- @return string @Base 64 encoded string.
function util.Base64Encode(str, inline)
end

---  server
--- Applies explosion damage to all entities in the specified radius.  
--- @param inflictor Entity @The entity that caused the damage.
--- @param attacker Entity @The entity that attacked.
--- @param damageOrigin Vector @The center of the explosion
--- @param damageRadius number @The radius in which entities will be damaged.
--- @param damage number @The amount of damage to be applied.
function util.BlastDamage(inflictor, attacker, damageOrigin, damageRadius, damage)
end

---  server
--- Applies spherical damage based on damage info to all entities in the specified radius.  
--- @param dmg CTakeDamageInfo @The information about the damage
--- @param damageOrigin Vector @Center of the spherical damage
--- @param damageRadius number @The radius in which entities will be damaged.
function util.BlastDamageInfo(dmg, damageOrigin, damageRadius)
end

---  client|server
--- Generates the [CRC Checksum](https://en.wikipedia.org/wiki/Cyclic_redundancy_check) of the specified string.  
--- ⚠ **WARNING**:   
--- This is NOT a hashing function. It is a checksum, typically used for error detection/data corruption detection. It is possible for this function to generate "collisions", where two different strings will produce the same CRC. If you need a hashing function, use util.SHA256.  
--- @param stringToChecksum string @The string to calculate the checksum of.
--- @return string @The unsigned 32 bit checksum.
function util.CRC(stringToChecksum)
end

---  menu|client|server
--- Compresses the given string using the [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm.  
--- Use with net.WriteData and net.ReadData for networking and  util.Decompress to decompress the data.  
--- @param str string @String to compress.
--- @return string @The compressed string, or nil if the input string was zero length ("").
function util.Compress(str)
end

---  menu|client|server
--- Returns the current date formatted like '2012-10-31 18-00-00'  
--- @return string @date
function util.DateStamp()
end

---  client|server
--- Performs a trace and paints a decal to the surface hit.  
--- @param name string @The name of the decal to paint.
--- @param start Vector @The start of the trace.
--- @param end_ Vector @The end of the trace.
--- @param filter? Entity @If set, the decal will not be able to be placed on given entity
function util.Decal(name, start, end_, filter)
end

---  client
--- Performs a trace and paints a decal to the surface hit.  
--- ℹ **NOTE**: This function has trouble spanning across multiple brushes on the map.  
--- @param material IMaterial @The name of the decal to paint
--- @param ent Entity @The entity to apply the decal to
--- @param position Vector @The position of the decal.
--- @param normal Vector @The direction of the decal.
--- @param color table @The color of the decal
--- @param w number @The width scale of the decal.
--- @param h number @The height scale of the decal.
function util.DecalEx(material, ent, position, normal, color, w, h)
end

---  client|server
--- Gets the full material path by the decal name. Used with util.DecalEx.  
--- @param decalName string @Name of the decal.
--- @return string @Material path of the decal.
function util.DecalMaterial(decalName)
end

---  menu|client|server
--- Decompresses the given string using [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm. Used to decompress strings previously compressed with util.Compress.  
--- @param compressedString string @The compressed string to decompress.
--- @param maxSize? number @The maximal size in bytes it will decompress.
--- @return string @The original, decompressed string or an empty string on failure or invalid input.
function util.Decompress(compressedString, maxSize)
end

---  client|server
--- Gets the distance between a line and a point in 3d space.  
--- @param lineStart Vector @Start of the line.
--- @param lineEnd Vector @End of the line.
--- @param pointPos Vector @The position of the point.
--- @return number @Distance from line.
--- @return Vector @Nearest point on line.
--- @return number @Distance along line from start.
function util.DistanceToLine(lineStart, lineEnd, pointPos)
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

---  client
--- Filters given text using Steam's filtering system. The function will obey local client's Steam settings for chat filtering:  
--- ℹ **NOTE**: In some cases, especially in a chatbox, messages from some players may return an empty string if the context argument used for filtering is `TEXT_FILTER_CHAT` and [if the local player has blocked the sender of the message on Steam](https://github.com/Facepunch/garrysmod-issues/issues/5161#issuecomment-1035153941).  
--- <upload src="70c/8d9e680b626348b.png" size="50426" name="image.png">  
--- </upload>  
--- @param str string @String to filter.
--- @param context? number @Filtering context
--- @param player? Player @Used to determine if the text should be filtered according to local user's Steam chat filtering settings.
--- @return string @The filtered text based on given settings.
function util.FilterText(str, context, player)
end

---  client|server
--- Returns a table containing the info about the model.  
--- ℹ **NOTE**: This function will silently fail if used on models with following strings in them:  
--- * _shared  
--- * _anims  
--- * _gestures  
--- * _anim  
--- * _postures  
--- * _gst  
--- * _pst  
--- * _shd  
--- * _ss  
--- * _anm  
--- * _include  
--- @param mdl string @Model path
--- @return table @The model info as a table with the following keys:
function util.GetModelInfo(mdl)
end

---  client|server
--- Returns a table of visual meshes of given model.  
--- ℹ **NOTE**: This does not work on brush models (`*number` models)  
--- See also ENTITY:GetRenderMesh.  
--- @param model string @The full path to a model to get the visual meshes of.
--- @param lod? number @Which LOD to retrieve
--- @param bodygroupMask? number @Bodygroup combination for the model
--- @return table @A table of tables with the following format:
--- @return table @A table of tables containing the model bind pose (where the keys are the bone ID) with the following contents:
function util.GetModelMeshes(model, lod, bodygroupMask)
end

---  menu|client|server
--- Gets PData of an offline player using their SteamID  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player
--- @param name string @Variable name to get the value of
--- @param default string @The default value, in case there's nothing stored
--- @return string @The stored value
function util.GetPData(steamID, name, default)
end

---  client
--- Creates a new PixVis handle. See util.PixelVisible.  
--- @return pixelvis_handle_t @PixVis
function util.GetPixelVisibleHandle()
end

---  menu|client|server
--- Utility function to quickly generate a trace table that starts at the players view position, and ends `32768` units along a specified direction.  
--- @param ply Player @The player the trace should be based on
--- @param dir? Vector @The direction of the trace
--- @return table @The trace data
function util.GetPlayerTrace(ply, dir)
end

---  client
--- Gets information about the sun position and obstruction or nil if there is no sun.  
--- @return table @The sun info
function util.GetSunInfo()
end

---  client|server
--- Returns data of a surface property at given ID.  
--- @param id number @Surface property ID
--- @return table @The data or no value if there is no valid surface property at given index
function util.GetSurfaceData(id)
end

---  client|server
--- Returns the matching surface property index for the given surface property name.  
--- See also util.GetSurfaceData and util.GetSurfacePropName for opposite function.  
--- @param surfaceName string @The name of the surface.
--- @return number @The surface property index, or -1 if name doesn't correspond to a valid surface property.
function util.GetSurfaceIndex(surfaceName)
end

---  client|server
--- Returns the name of a surface property at given ID.  
--- See also util.GetSurfaceData and util.GetSurfaceIndex for opposite function.  
--- @param id number @Surface property ID
--- @return string @The name or an empty string if there is no valid surface property at given index.
function util.GetSurfacePropName(id)
end

---  server
--- Returns a table of all SteamIDs that have a usergroup.  
--- ℹ **NOTE**: This returns the original usergroups table, changes done to this table are not retroactive and will only affect newly connected users  
--- ℹ **NOTE**: This returns only groups that are registered in the **settings/users.txt** file of your server.  
--- In order to get the usergroup of a connected player, please use Player:GetUserGroup instead.  
--- @return table @A table of users where the key is the SteamID of the user and the value is a table with 2 fields:
function util.GetUserGroups()
end

---  client|server
--- Performs a "ray" box intersection and returns position, normal and the fraction.  
--- @param rayStart Vector @Origin/start position of the ray.
--- @param rayDelta Vector @The ray vector itself
--- @param boxOrigin Vector @The center of the box.
--- @param boxAngles Angle @The angles of the box.
--- @param boxMins Vector @The min position of the box.
--- @param boxMaxs Vector @The max position of the box.
--- @return Vector @Hit position, nil if not hit.
--- @return Vector @Normal/direction vector, nil if not hit.
--- @return number @Fraction of trace used, nil if not hit.
function util.IntersectRayWithOBB(rayStart, rayDelta, boxOrigin, boxAngles, boxMins, boxMaxs)
end

---  client|server
--- Performs a [ray-plane intersection](https://en.wikipedia.org/wiki/Line%E2%80%93plane_intersection) and returns the hit position or nil.  
--- @param rayOrigin Vector @Origin/start position of the ray.
--- @param rayDirection Vector @The direction of the ray.
--- @param planePosition Vector @Any position of the plane.
--- @param planeNormal Vector @The normal vector of the plane.
--- @return Vector @The position of intersection, nil if not hit.
function util.IntersectRayWithPlane(rayOrigin, rayDirection, planePosition, planeNormal)
end

---  menu|client|server
--- Returns whether a binary module is installed and is resolvable by Global.require.  
--- @param name string @Name of the binary module, exactly the same as you would enter it as the argument to Global.require.
--- @return boolean @Whether the binary module is installed and Global.require can resolve it.
function util.IsBinaryModuleInstalled(name)
end

---  server
--- Checks if a certain position is within the world bounds.  
--- @param position Vector @Position to check.
--- @return boolean @Whether the vector is in world.
function util.IsInWorld(position)
end

---  client|server
--- Checks if the model is loaded in the game.  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Returns true if the model is loaded in the game; otherwise false.
function util.IsModelLoaded(modelName)
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
--- @return boolean @Whether there is an intersection.
function util.IsOBBIntersectingOBB(box1Origin, box1Angles, box1Mins, box1Maxs, box2Origin, box2Angles, box2Mins, box2Maxs)
end

---  client
--- Check whether the skybox is visible from the point specified.  
--- ℹ **NOTE**: This will always return true in fullbright maps.  
--- @param position Vector @The position to check the skybox visibility from.
--- @return boolean @Whether the skybox is visible from the position.
function util.IsSkyboxVisibleFromPoint(position)
end

---  client|server
--- Checks if the specified model is valid.  
--- A model is considered invalid in following cases:  
--- * Starts with a space or **maps**  
--- * Doesn't start with **models**  
--- * Contains any of the following:  
--- * * _gestures  
--- * * _animations  
--- * * _postures  
--- * * _gst  
--- * * _pst  
--- * * _shd  
--- * * _ss  
--- * * _anm  
--- * * .bsp  
--- * * cs_fix  
--- * If the model isn't precached on the server, AND if the model file doesn't exist on disk  
--- * If precache failed  
--- * Model is the error model  
--- Running this function will also precache the model.  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Whether the model is valid or not
function util.IsValidModel(modelName)
end

---  menu|client|server
--- Checks if given numbered physics object of given entity is valid or not. Most useful for ragdolls.  
--- @param ent Entity @The entity
--- @param physobj number @Number of the physics object to test
--- @return boolean @true is valid, false otherwise
function util.IsValidPhysicsObject(ent, physobj)
end

---  client|server
--- Checks if the specified prop is valid.  
--- @param modelName string @Name/Path of the model to check.
--- @return boolean @Returns true if the specified prop is valid; otherwise false.
function util.IsValidProp(modelName)
end

---  client|server
--- Checks if the specified model name points to a valid ragdoll.  
--- @param ragdollName string @Name/Path of the ragdoll model to check.
--- @return boolean @Returns true if the specified model name points to a valid ragdoll; otherwise false.
function util.IsValidRagdoll(ragdollName)
end

---  menu|client|server
--- Converts a JSON string to a Lua table.  
--- ⚠ **WARNING**: Keys are converted to numbers wherever possible. This means using Player:SteamID64 as keys won't work.  
--- There is a limit of 15,000 keys total.  
--- 🦟 **BUG**: [This will attempt cast the string keys "inf", "nan", "true", and "false" to their respective Lua values. This completely ignores nulls in arrays.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- 🦟 **BUG**: [Colors will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param json string @The JSON string to convert.
--- @return table @The table containing converted information
function util.JSONToTable(json)
end

---  menu|client|server
--- Converts a Valve KeyValue string (typically from util.TableToKeyValues) to a Lua table.  
--- ℹ **NOTE**: Due to how tables work in Lua, keys will not repeat within a table. See util.KeyValuesToTablePreserveOrder for alternative.  
--- @param keyValues string @The KeyValue string to convert.
--- @param usesEscapeSequences? boolean @If set to true, will replace `\t`, `\n`, `\"` and `\\` in the input text with their escaped variants
--- @param preserveKeyCase? boolean @Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table @The converted table
function util.KeyValuesToTable(keyValues, usesEscapeSequences, preserveKeyCase)
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
--- Returns the networked string associated with the given ID from the string table.  
--- @param stringTableID number @ID to get the associated string from.
--- @return string @The networked string, or nil if it wasn't found.
function util.NetworkIDToString(stringTableID)
end

---  client|server
--- Returns the networked ID associated with the given string from the string table.  
--- @param networkString string @String to get the associated networked ID from.
--- @return number @The networked ID of the string, or 0 if it hasn't been networked with util.AddNetworkString.
function util.NetworkStringToID(networkString)
end

---  menu|client|server
--- Formats a float by stripping off extra `0's` and `.'s`.  
--- @param float number @The float to format.
--- @return string @Formatted float.
function util.NiceFloat(float)
end

---  client|server
--- Creates a tracer effect with the given parameters.  
--- @param name string @The name of the tracer effect.
--- @param startPos Vector @The start position of the tracer.
--- @param endPos Vector @The end position of the tracer.
--- @param doWhiz boolean @Play the hit miss(whiz) sound.
function util.ParticleTracer(name, startPos, endPos, doWhiz)
end

---  client|server
--- Creates a tracer effect with the given parameters.  
--- @param name string @The name of the tracer effect.
--- @param startPos Vector @The start position of the tracer.
--- @param endPos Vector @The end position of the tracer.
--- @param doWhiz boolean @Play the hit miss(whiz) sound.
--- @param entityIndex number @Entity index of the emitting entity.
--- @param attachmentIndex number @Attachment index to be used as origin.
function util.ParticleTracerEx(name, startPos, endPos, doWhiz, entityIndex, attachmentIndex)
end

---  client
--- Returns the visibility of a sphere in the world.  
--- @param position Vector @The center of the visibility test.
--- @param radius number @The radius of the sphere to check for visibility.
--- @param PixVis pixelvis_handle_t @The PixVis handle created with util.GetPixelVisibleHandle
--- @return number @Visibility, ranges from `0-1`
function util.PixelVisible(position, radius, PixVis)
end

---  client|server
--- Returns the contents of the position specified.  
--- ℹ **NOTE**: This function will sample only the world environments. It can be used to check if Entity:GetPos is underwater for example unlike Entity:WaterLevel which works for players only.  
--- @param position Vector @Position to get the contents sample from.
--- @return number @Contents bitflag, see Enums/CONTENTS
function util.PointContents(position)
end

---  client|server
--- Precaches a model for later use. Model is cached after being loaded once.  
--- ⚠ **WARNING**:   
--- Modelprecache is limited to 4096 unique models. When it reaches the limit the game will crash.  
--- @param modelName string @The model to precache.
function util.PrecacheModel(modelName)
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
--- Performs a trace with the given origin, direction, and filter.  
--- @param origin Vector @The origin of the trace.
--- @param dir Vector @The direction of the trace times the distance of the trace
--- @param filter? Entity @Entity which should be ignored by the trace
--- @return table @Trace result
function util.QuickTrace(origin, dir, filter)
end

---  menu|client|server
--- Removes PData of offline player using their SteamID.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player
--- @param name string @Variable name to remove
function util.RemovePData(steamID, name)
end

---  client|server
--- Generates the [SHA-1 hash](https://en.wikipedia.org/wiki/SHA-1) of the specified string.  
--- ⚠ **WARNING**: SHA-1 is considered cryptographically broken and is known to be vulnerable to a variety of attacks. If security is a concern, use util.SHA256.  
--- @param stringToHash string @The string to calculate the SHA-1 hash of.
--- @return string @The SHA-1 hash of the string in hexadecimal form.
function util.SHA1(stringToHash)
end

---  client|server
--- Generates the [SHA-256 hash](https://en.wikipedia.org/wiki/SHA-2) of the specified string.  
--- @param stringToHash string @The string to calculate the SHA-256 hash of.
--- @return string @The SHA-256 hash of the string in hexadecimal form.
function util.SHA256(stringToHash)
end

---  client|server
--- Makes the screen shake.  
--- ℹ **NOTE**: The screen shake effect is rendered by modifying the view origin on the client. If you override the view origin in GM:CalcView you may not be able to see the shake effect.  
--- @param pos Vector @The origin of the effect
--- @param amplitude number @The strength of the effect.
--- @param frequency number @The frequency of the effect in hertz.
--- @param duration number @The duration of the effect in seconds.
--- @param radius number @The range from the origin within which views will be affected, in Hammer units
function util.ScreenShake(pos, amplitude, frequency, duration, radius)
end

---  menu|client|server
--- Sets PData for offline player using his SteamID.  
--- ⚠ **WARNING**: This function internally uses Player:UniqueID, which can cause collisions (two or more players sharing the same PData entry). It's recommended that you don't use it. See the related wiki page for more information.  
--- @param steamID string @SteamID of the player.
--- @param name string @Variable name to store the value in.
--- @param value any @The value to store.
function util.SetPData(steamID, name, value)
end

---  client|server
--- Generates a random float value that should be the same on client and server.  
--- ℹ **NOTE**: This function is best used in a Predicted Hook  
--- @param uniqueName string @The seed for the random value
--- @param min number @The minimum value of the random range
--- @param max number @The maximum value of the random range
--- @param additionalSeed? number @The additional seed
--- @return number @The random float value
function util.SharedRandom(uniqueName, min, max, additionalSeed)
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
--- Returns a new Stack object.  
--- @return Stack @A brand new stack object.
function util.Stack()
end

---  client|server
--- Given a 64bit SteamID will return a STEAM_0: style Steam ID  
--- @param id string @The 64 bit Steam ID
--- @return string @STEAM_0 style Steam ID
function util.SteamIDFrom64(id)
end

---  client|server
--- Given a STEAM_0 style Steam ID will return a 64bit Steam ID  
--- @param id string @The STEAM_0 style id
--- @return string @64bit Steam ID or 0 (as a string) on fail
function util.SteamIDTo64(id)
end

---  menu|client|server
--- Converts a string to the specified type.  
--- This can be useful when dealing with ConVars.  
--- @param str string @The string to convert
--- @param typename string @The type to attempt to convert the string to
--- @return any @The result of the conversion, or nil if a bad type is specified.
function util.StringToType(str, typename)
end

---  menu|client|server
--- Converts a table to a JSON string.  
--- ⚠ **WARNING**: Trying to serialize or deserialize SteamID64s in JSON will NOT work correctly. They will be interpreted as numbers which cannot be precisely stored by JavaScript, Lua and JSON, leading to loss of data. You may want to use util.SteamIDFrom64 to work around this.  
--- Alternatively, just append a character to the SteamID64 to force util.JSONToTable to treat it as a string.  
--- ⚠ **WARNING**: All integers will be converted to decimals (5 -> 5.0).  
--- ⚠ **WARNING**: All keys are strings in the JSON format, so all keys will be converted to strings!  
--- 🦟 **BUG**: [This will produce invalid JSON if the provided table contains nan or inf values.](https://github.com/Facepunch/garrysmod-issues/issues/3561)  
--- @param table table @Table to convert.
--- @param prettyPrint? boolean @Format and indent the JSON.
--- @return string @A JSON formatted string containing the serialized data
function util.TableToJSON(table, prettyPrint)
end

---  menu|client|server
--- Converts the given table into a Valve key value string.  
--- Use util.KeyValuesToTable to perform the opposite transformation.  
--- You should consider using util.TableToJSON instead.  
--- @param table table @The table to convert.
--- @param rootKey? string @The root key name for the output KV table.
--- @return string @The output.
function util.TableToKeyValues(table, rootKey)
end

---  menu|client|server
--- Creates a timer object.  
--- @param startdelay? number @How long you want the timer to be.
--- @return table @A timer object
function util.Timer(startdelay)
end

---  menu|client|server
--- Returns the time since this function has been last called  
--- @return number @Time since this function has been last called in ms
function util.TimerCycle()
end

---  client|server
--- Runs a trace using the entity's collisionmodel between two points. This does not take the entity's angles into account and will trace its unrotated collisionmodel.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- @param tracedata table @Trace data
--- @param ent Entity @The entity to use
--- @return table @Trace result
function util.TraceEntity(tracedata, ent)
end

---  client|server
--- Identical to util.TraceHull but uses an entity for `mins`/`maxs` inputs.  
--- @param tracedata table @Trace data
--- @param ent Entity @The entity to use mins/maxs of for the hull trace.
--- @return table @Trace result
function util.TraceEntityHull(tracedata, ent)
end

---  client|server
--- Performs an AABB hull (axis-aligned bounding box, aka not rotated) trace with the given trace data.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- ℹ **NOTE**: This function may not always give desired results clientside due to certain physics mechanisms not existing on the client. Use it serverside for accurate results.  
--- @param TraceData table @The trace data to use
--- @return table @Trace result
function util.TraceHull(TraceData)
end

---  client|server
--- Performs a trace with the given trace data.  
--- ℹ **NOTE**: Clientside entities will not be hit by traces.  
--- When server side trace starts inside a solid, it will hit the most inner solid the beam start position is located in. Traces are triggered by change of boundary.  
--- @param TraceData table @The trace data to use
--- @return table @Trace result
function util.TraceLine(TraceData)
end

---  menu|client|server
--- Converts a type to a (nice, but still parsable) string  
--- @param input any @What to convert
--- @return string @Converted string
function util.TypeToString(input)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: You should use Global.tobool instead.  
--- Converts string or a number to a bool, if possible. Alias of Global.tobool.  
--- @param input any @A string or a number to convert.
--- @deprecated
--- @return boolean @False if the input is equal to the string or boolean "false", if the input is equal to the string or number "0", or if the input is nil
function util.tobool(input)
end

---  client
--- Returns if the user is currently picking an entity.  
--- @return boolean @Is world picking
function util.worldpicker.Active()
end

---  client
--- Starts picking an entity in the world. This will suppress the next mouse click, and instead use it as a direction in the trace sent to the callback.  
--- @param callback function @Function to call after an entity choice has been made
function util.worldpicker.Start(callback)
end

