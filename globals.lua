---  client|menu
--- Loads the specified image from the `/cache` folder, used in combination steamworks.Download. Most addons will provide a 512x512 png image.  
--- @param name string @The name of the file.
--- @return IMaterial @The material, returns `nil` if the cached file is not an image.
function _G.AddonMaterial(name)
end

---  client|menu
--- Automatically called by the engine when a panel is hovered over with the mouse  
--- @param panel Panel @Panel that has been hovered over
function _G.ChangeTooltip(panel)
end

---  client|menu
--- Closes all Derma menus that have been passed to Global.RegisterDermaMenuForClose and calls GM:CloseDermaMenus  
function _G.CloseDermaMenus()
end

---  menu|client|server
--- Creates a Color.  
--- ⚠ **WARNING**: This function is very expensive when used in rendering hooks or in operations requiring very frequent calls (like loops for example). It is better to store the color in a variable or to use the [default colors](https://wiki.facepunch.com/gmod/Global_Variables#misc) available.  
--- @param r number @An integer from `0-255` describing the red value of the color.
--- @param g number @An integer from `0-255` describing the green value of the color.
--- @param b number @An integer from `0-255` describing the blue value of the color.
--- @param a? number @An integer from `0-255` describing the alpha (transparency) of the color.
--- @return table @The created Color.
function _G.Color(r, g, b, a)
end

---  menu|client|server
--- Creates a Color with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized.  
--- @param a? boolean @Should alpha be randomized.
--- @return table @The created Color.
function _G.ColorRand(a)
end

---  menu|client|server
--- Converts a Color into HSV color space.  
--- @param color table @The Color.
--- @return number @The hue in degrees `[0, 360]`.
--- @return number @The saturation in the range `[0, 1]`.
--- @return number @The value in the range `[0, 1]`.
function _G.ColorToHSV(color)
end

---  menu|client|server
--- Returns whether a ConVar with the given name exists or not  
--- @param name string @Name of the ConVar.
--- @return boolean @True if the ConVar exists, false otherwise.
function _G.ConVarExists(name)
end

---  client|menu
--- Creates a new material with the specified name and shader.  
--- Materials created with this function can be used in Entity:SetMaterial and Entity:SetSubMaterial by prepending a `!` to their material name argument.  
--- This will not create a new material if another material object with the same name already exists. All Materials created by this functions are cleaned up on map shutdown.  
--- ℹ **NOTE**: This does not work with [patch materials](https://developer.valvesoftware.com/wiki/Patch).  
--- 🦟 **BUG**: [.pngs must be loaded with Global.Material before being used with this function.](https://github.com/Facepunch/garrysmod-issues/issues/1531)  
--- @param name string @The material name
--- @param shaderName string @The shader name
--- @param materialData table @Key-value table that contains shader parameters and proxies
--- @return IMaterial @Created material
function _G.CreateMaterial(name, shaderName, materialData)
end

---  client
--- Creates a new particle system, and sets control points 0 and 1 to given position, as well as optionally orientation of CP0 to the given angles. See also Global.CreateParticleSystem  
--- ℹ **NOTE**: The particle effect must be precached with Global.PrecacheParticleSystem and the file its from must be added via game.AddParticles before it can be used!  
--- @param effect string @The name of the effect to create
--- @param pos Vector @The position for the particle system.
--- @param ang? Angle @The orientation of the particle system.
--- @return CNewParticleEffect @The created particle system.
function _G.CreateParticleSystemNoEntity(effect, pos, ang)
end

---  client|server
--- Returns a sound parented to the specified entity.  
--- ℹ **NOTE**: You can only create one CSoundPatch per audio file, per entity at the same time.  
--- ℹ **NOTE**:   
--- Valid sample rates: **11025 Hz, 22050 Hz and 44100 Hz**, otherwise you may see this kind of message:  
--- `Unsupported 32-bit wave file your_sound.wav` and  
--- `Invalid sample rate (48000) for sound 'your_sound.wav'`  
--- @param targetEnt Entity @The target entity.
--- @param soundName string @The sound to play.
--- @param filter? CRecipientFilter @A CRecipientFilter of the players that will have this sound networked to them
--- @return CSoundPatch @The sound object
function _G.CreateSound(targetEnt, soundName, filter)
end

---  client
--- Creates and returns a new DSprite element with the supplied material.  
--- @param material IMaterial @Material the sprite should draw.
--- @return Panel @The new DSprite element.
function _G.CreateSprite(material)
end

---  client|server
--- Calls all NetworkVarNotify functions of the given entity with the given new value, but doesn't change the real value.  
--- internally uses Entity:CallDTVarProxies  
--- @param entity Entity @The Entity to run the NetworkVarNotify functions from.
--- @param Type string @The NetworkVar Type
--- @param index number @The NetworkVar index.
--- @param new_value any @The new value.
function _G.DTVar_ReceiveProxyGL(entity, Type, index, new_value)
end

---  menu|client|server
--- Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds.  
--- @param slot number @The location on the right hand screen to write the debug info to
--- @param info string @The debugging information to be written to the screen
function _G.DebugInfo(slot, info)
end

---  client|menu
--- Creates a DMenu and closes any current menus.  
--- @param keepOpen? boolean @If we should keep other DMenus open (`true`) or not (`false`).
--- @param parent? Panel @The panel to parent the created menu to.
--- @return Panel @The created DMenu.
function _G.DermaMenu(keepOpen, parent)
end

---  client|menu
--- Creates panel method that calls the supplied Derma skin hook via derma.SkinHook  
--- @param panel Panel @Panel to add the hook to
--- @param functionName string @Name of panel function to create
--- @param hookName string @Name of Derma skin hook to call within the function
--- @param typeName string @Type of element to call Derma skin hook for
function _G.Derma_Hook(panel, functionName, hookName, typeName)
end

---  client
--- Draws the bloom shader, which creates a glowing effect from bright objects.  
--- @param Darken number @Determines how much to darken the effect
--- @param Multiply number @Will affect how bright the glowing spots are
--- @param SizeX number @The size of the bloom effect along the horizontal axis.
--- @param SizeY number @The size of the bloom effect along the vertical axis.
--- @param Passes number @Determines how much to exaggerate the effect.
--- @param ColorMultiply number @Will multiply the colors of the glowing spots, making them more vivid.
--- @param Red number @How much red to multiply with the glowing color
--- @param Green number @How much green to multiply with the glowing color
--- @param Blue number @How much blue to multiply with the glowing color
function _G.DrawBloom(Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue)
end

---  client
--- Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See g_texturize for information on making the texture.  
--- @param Scale number @Scale of the texture
--- @param BaseTexture number @This will be the texture to use in the effect
function _G.DrawTexturize(Scale, BaseTexture)
end

---  client
--- Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name.  
--- @param Passes number @An integer determining how many times to draw the effect
--- @param Height number @The amount of screen which should be blurred on the top and bottom.
function _G.DrawToyTown(Passes, Height)
end

---  client
--- Creates or replaces a dynamic light with the given id.  
--- ℹ **NOTE**: Only 32 dlights and 64 elights can be active at once.  
--- ⚠ **WARNING**: It is not safe to hold a reference to this object after creation since its data can be replaced by another dlight at any time.  
--- 🦟 **BUG**: [The minlight parameter affects the world and entities differently.](https://github.com/Facepunch/garrysmod-issues/issues/3798)  
--- @param index number @An unsigned Integer
--- @param elight? boolean @Allocates an elight instead of a dlight
--- @return table @A DynamicLight structured table
function _G.DynamicLight(index, elight)
end

---  client|server
--- Returns a CEffectData object to be used with util.Effect.  
--- 🦟 **BUG**: [This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.](https://github.com/Facepunch/garrysmod-issues/issues/2771)  
--- @return CEffectData @The CEffectData object.
function _G.EffectData()
end

---  menu|client|server
--- Throws an error. This is currently an alias of Global.ErrorNoHalt despite it once throwing a halting error like error without the stack trace appended.  
--- 🦟 **BUG**: [This function throws a non-halting error instead of a halting error.](https://github.com/Facepunch/garrysmod-issues/issues/2113)  
--- @param ... any ... @Converts all arguments to strings and prints them with no spacing or line breaks.
function _G.Error(...)
end

---  menu|client|server
--- Throws a Lua error but does not break out of the current call stack.  
--- This function will not print a stack trace like a normal error would.  
--- Essentially similar if not equivalent to Global.Msg.  
--- @param ... any ... @Converts all arguments to strings and prints them with no spacing.
function _G.ErrorNoHalt(...)
end

---  client
--- Returns the origin of the current render context as calculated by GM:CalcView.  
--- 🦟 **BUG**: [This function is only reliable inside rendering hooks.](https://github.com/Facepunch/garrysmod-issues/issues/2516)  
--- @return Vector @Camera position.
function _G.EyePos()
end

---  menu|client|server
--- Returns the meta table for the class with the matching name.  
--- Internally returns debug.getregistry()[metaName]  
--- You can learn more about meta tables on the Meta Tables page.  
--- You can find a list of meta tables that can be retrieved with this function on Enums/TYPE. The name in the description is the string to use with this function.  
--- @param metaName string @The object type to retrieve the meta table of.
--- @return table @The corresponding meta table.
function _G.FindMetaTable(metaName)
end

---  client|menu
--- Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself  
--- @param panel Panel @Panel to find tool-tip of
--- @return string @tool-tip text
--- @return Panel @tool-tip panel
--- @return Panel @panel that the function was called with
function _G.FindTooltip(panel)
end

---  client|server
--- Returns the number of frames rendered since the game was launched.  
function _G.FrameNumber()
end

---  client
--- This function adds all models from a specified folder to a custom Spawnlist category. Internally uses Global.AddPropsOfParent  
--- ⚠ **WARNING**: Using this function before SANDBOX:PopulateContent has been called will result in an error  
--- @param folder string @the folder to search for models
--- @param path string @The path to look for the files and directories in
--- @param name string @The Spawnmenu Category name
--- @param icon? string @The Spawnmenu Category Icon to use
--- @param appid number @The AppID which is needed for the Content
function _G.GenerateSpawnlistFromPath(folder, path, name, icon, appid)
end

---  client|server
--- Returns a boolean that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? boolean @The value to return if the global value is not set.
--- @return boolean @The global value, or the default if the global value is not set.
function _G.GetGlobal2Bool(index, default)
end

---  client|server
--- Returns an entity that is shared between the server and all clients.  
--- @param index string @The unique index to identify the global value with.
--- @param default? Entity @The value to return if the global value is not set.
--- @return Entity @The global value, or the default if the global value is not set.
function _G.GetGlobal2Entity(index, default)
end

---  client|server
--- Returns an integer that is shared between the server and all clients.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Global.GetGlobalInt for a higher limit  
--- @param index string @The unique index to identify the global value with.
--- @param default? number @The value to return if the global value is not set.
--- @return number @The global value, or the default if the global value is not set.
function _G.GetGlobal2Int(index, default)
end

---  menu|client|server
--- Converts a color from [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a Color.  
--- 🦟 **BUG**: [The returned color will not have the color metatable.](https://github.com/Facepunch/garrysmod-issues/issues/2407)  
--- @param hue number @The hue in degrees from 0-360.
--- @param saturation number @The saturation from 0-1.
--- @param value number @The lightness from 0-1.
--- @return table @The Color created from the HSL color space.
function _G.HSLToColor(hue, saturation, value)
end

---  menu|client|server
--- Returns if the given NPC class name is an enemy. Returns `true` if the entity name is one of the following:  
--- * `monster_alien_grunt`  
--- * `monster_nihilanth`  
--- * `monster_tentacle`  
--- * `monster_alien_slave`  
--- * `monster_bigmomma`  
--- * `monster_bullchicken`  
--- * `monster_gargantua`  
--- * `monster_human_assassin`  
--- * `monster_babycrab`  
--- * `monster_human_grunt`  
--- * `monster_cockroach`  
--- * `monster_houndeye`  
--- * `monster_zombie`  
--- * `monster_headcrab`  
--- * `monster_alien_controller`  
--- * `monster_turret`  
--- * `monster_miniturret`  
--- * `monster_sentry`  
--- * `npc_antlion`  
--- * `npc_antlionguard`  
--- * `npc_antlionguardian`  
--- * `npc_barnacle`  
--- * `npc_breen`  
--- * `npc_clawscanner`  
--- * `npc_combine_s`  
--- * `npc_cscanner`  
--- * `npc_fastzombie`  
--- * `npc_fastzombie_torso`  
--- * `npc_headcrab`  
--- * `npc_headcrab_fast`  
--- * `npc_headcrab_poison`  
--- * `npc_hunter`  
--- * `npc_metropolice`  
--- * `npc_manhack`  
--- * `npc_poisonzombie`  
--- * `npc_strider`  
--- * `npc_stalker`  
--- * `npc_zombie`  
--- * `npc_zombie_torso`  
--- * `npc_zombine`  
--- * `npc_combine_camera`  
--- * `npc_turret_ceiling`  
--- * `npc_combinedropship`  
--- * `npc_combinegunship`  
--- * `npc_helicopter`  
--- * `npc_turret_floor`  
--- * `npc_antlion_worker`  
--- * `npc_headcrab_black`  
--- @param className string @Class name of the entity to check.
--- @return boolean @Is an enemy?
function _G.IsEnemyEntityName(className)
end

---  client|server
--- Returns if this is the first time this hook was predicted.  
--- This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.  
--- Visit Prediction for more information about this behavior.  
--- ℹ **NOTE**: This is already used internally for Entity:EmitSound, Weapon:SendWeaponAnim and Entity:FireBullets, but NOT in  util.Effect.  
--- @return boolean @Whether or not this is the first time being predicted.
function _G.IsFirstTimePredicted()
end

---  menu|client|server
--- Returns if the given NPC class name is a friend. Returns `true` if the entity name is one of the following:  
--- * `monster_scientist`  
--- * `monster_barney`  
--- * `npc_alyx`  
--- * `npc_barney`  
--- * `npc_citizen`  
--- * `npc_dog`  
--- * `npc_eli`  
--- * `npc_fisherman`  
--- * `npc_gman`  
--- * `npc_kleiner`  
--- * `npc_magnusson`  
--- * `npc_monk`  
--- * `npc_mossman`  
--- * `npc_odessa`  
--- * `npc_vortigaunt`  
--- @param className string @Class name of the entity to check
--- @return boolean @Is a friend
function _G.IsFriendEntityName(className)
end

---  menu|client|server
--- Returns whether or not every element within a table is a valid entity  
--- @param table table @Table containing entities to check
--- @return boolean @All entities valid
function _G.IsTableOfEntitiesValid(table)
end

---  menu|client|server
--- Returns whether or not a model is useless by checking that the file path is that of a proper model.  
--- If the string ".mdl" is not found in the model name, the function will return true.  
--- The function will also return true if any of the following strings are found in the given model name:  
--- * "_gesture"  
--- * "_anim"  
--- * "_gst"  
--- * "_pst"  
--- * "_shd"  
--- * "_ss"  
--- * "_posture"  
--- * "_anm"  
--- * "ghostanim"  
--- * "_paths"  
--- * "_shared"  
--- * "anim_"  
--- * "gestures_"  
--- * "shared_ragdoll_"  
--- @param modelName string @The model name to be checked
--- @return boolean @Whether or not the model is useless
function _G.IsUselessModel(modelName)
end

---  client|server
--- Returns a VMatrix object, a 4x4 matrix.  
--- @param data? table @Initial data to initialize the matrix with
--- @return VMatrix @New matrix.
function _G.Matrix(data)
end

---  menu|client|server
--- Same as Global.print, except it concatinates the arguments without inserting any whitespace in between them.  
--- See also Global.Msg, which doesn't add a newline (`"\n"`) at the end.  
--- @param ... any ... @List of values to print
function _G.MsgN(...)
end

---  client
--- Returns the amount of skins the specified model has.  
--- See also Entity:SkinCount if you have an entity.  
--- @param modelName string @Model to return amount of skins of
--- @return number @Amount of skins
function _G.NumModelSkins(modelName)
end

---  menu|client|server
--- Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors.  
--- ℹ **NOTE**: This function will irreversibly modify the given vectors  
--- @param vector1 Vector @Bounding box min resultant
--- @param vector2 Vector @Bounding box max resultant
function _G.OrderVectors(vector1, vector2)
end

---  menu|client|server
--- Calls game.AddParticles and returns given string.  
--- @param file string @The particle file.
--- @return string @The particle file.
function _G.Particle(file)
end

---  client
--- Creates a new CLuaEmitter.  
--- ℹ **NOTE**: Do not forget to delete the emitter with CLuaEmitter:Finish once you are done with it  
--- @param position Vector @The start position of the emitter
--- @param use3D? boolean @Whenever to render the particles in 2D or 3D mode
--- @return CLuaEmitter @The new particle emitter.
function _G.ParticleEmitter(position, use3D)
end

---  client
--- Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.  
--- The output table interacts nicely with Panel:RebuildSpawnIconEx with a few key renames.  
--- @param model Entity @Model that is being rendered to the spawn icon
--- @param position Vector @Position that the model is being rendered at
--- @param noAngles boolean @If true the function won't reset the angles to 0 for the model.
--- @return table @Table of information of the view which can be used for rendering
function _G.PositionSpawnIcon(model, position, noAngles)
end

---  client|server
--- Returns the uptime of the game/server in seconds (to at least **4** decimal places). This value updates itself once every time the realm thinks. For servers, this is the server tickrate. For clients, its their current FPS.  
--- ℹ **NOTE**: This is **not** synchronised or affected by the game.  
--- This will be affected by precision loss if the uptime is more than 30+(?) days, and effectively cease to be functional after 50+(?) days.  
--- Changing the map will **not** fix it like it does with Global.CurTime. A server restart is necessary.  
--- You should use this function (or Global.SysTime) for timing real-world events such as user interaction, but not for timing game events such as animations.  
--- See also: Global.CurTime, Global.SysTime  
--- @return number @Uptime of the game/server.
function _G.RealTime()
end

---  client|menu
--- Does the removing of the tooltip panel. Called by Global.EndTooltip.  
function _G.RemoveTooltip()
end

---  client
--- 🛑 **DEPRECATED**: You should be using Global.ScreenScale instead.  
--- Returns a number based on the Size argument and your screen's width. Alias of Global.ScreenScale.  
--- @param Size number @The number you want to scale.
--- @deprecated
function _G.SScale(Size)
end

---  menu|client|server
--- Removes the given entity unless it is a player or the world entity  
--- @param ent Entity @Entity to safely remove.
function _G.SafeRemoveEntity(ent)
end

---  menu|client|server
--- Removes entity after delay using Global.SafeRemoveEntity  
--- @param entity Entity @Entity to be removed
--- @param delay number @Delay for entity removal in seconds
function _G.SafeRemoveEntityDelayed(entity, delay)
end

---  client
--- Returns a number based on the `size` argument and the players' screen width. The width is scaled in relation to `640x480` resolution.  This function is primarily used for scaling font sizes.  
--- See Global.ScreenScaleH for a function that scales from height.  
--- @param size number @The number you want to scale.
--- @return number @The scaled number based on your screen's width
function _G.ScreenScale(size)
end

---  client|server
--- Send a usermessage  
--- 🛑 **DEPRECATED**:   
--- This uses the umsg internally, which has been deprecated. Use the net instead.  
--- ℹ **NOTE**:   
--- This does nothing clientside.  
--- @param name string @The name of the usermessage
--- @param recipients any @Can be a CRecipientFilter, table or Player object.
--- @param ... any ... @Data to send in the usermessage
--- @deprecated
function _G.SendUserMessage(name, recipients, ...)
end

---  client|server
--- Returns approximate duration of a sentence by name. See Global.EmitSentence.  
--- @param name string @The sentence name.
--- @return number @The approximate duration.
function _G.SentenceDuration(name)
end

---  server
--- Prints `ServerLog: PARAM` without a newline, to the server log and console.  
--- As of June 2022, if `sv_logecho` is set to `0` (defaults to `1`) the message will not print to console and will only be written to the server's log file.  
--- @param parameter string @The value to be printed to console.
function _G.ServerLog(parameter)
end

---  client|server
--- Sets an integer that is shared between the server and all clients.  
--- ⚠ **WARNING**: The integer has a 32 bit limit. Use Global.SetGlobalInt instead  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index string @The unique index to identify the global value with.
--- @param value number @The value to set the global value to
function _G.SetGlobal2Int(index, value)
end

---  client|server
--- Defines a vector to be automatically networked to clients  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param vec Vector @Vector to be networked
function _G.SetGlobal2Vector(index, vec)
end

---  client|server
--- Defines an angle to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Angle. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global angle with
--- @param angle Angle @Angle to be networked
function _G.SetGlobalAngle(index, angle)
end

---  client|server
--- Defines a variable to be automatically networked to clients  
--- | Allowed Types   |  
--- | --------------- |  
--- | Angle           |  
--- | Boolean         |  
--- | Entity          |  
--- | Float           |  
--- | Int             |  
--- | String          |  
--- | Vector          |  
--- ⚠ **WARNING**: Trying to network a type that is not listed above will result in an error!  
--- There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Var. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param value any @Value to be networked
function _G.SetGlobalVar(index, value)
end

---  client|server
--- Defines a vector to be automatically networked to clients  
--- ⚠ **WARNING**: There's a 4095 slots Network limit. If you need more, consider using the net library or Global.SetGlobal2Vector. You should also consider the fact that you have way too many variables. You can learn more about this limit here: Networking_Usage  
--- ℹ **NOTE**: Running this function clientside will only set it clientside for the client it is called on!  
--- @param index any @Index to identify the global vector with
--- @param vec Vector @Vector to be networked
function _G.SetGlobalVector(index, vec)
end

---  menu|client|server
--- Returns an iterator function that can be used to loop through a table in order of its **values**.  
--- To sort by specific **value member**, use Global.SortedPairsByMemberValue.  
--- To sort by **keys**, use Global.SortedPairs.  
--- @param table table @Table to create iterator for
--- @param descending? boolean @Whether the iterator should iterate in descending order or not
--- @return function @Iterator function
--- @return table @The table which will be iterated over
function _G.SortedPairsByValue(table, descending)
end

---  menu|client|server
--- Returns the time in seconds it took to render the VGUI.  
function _G.VGUIFrameTime()
end

---  menu|client|server
--- Executes the specified action on the garbage collector.  
--- @param action? string @The action to run
--- @param arg number @The argument of the specified action, only applicable for `step`, `setpause` and `setstepmul`.
--- @return any @If the action is count this is the number of kilobytes of memory used by Lua
function _G.collectgarbage(action, arg)
end

---  menu|client|server
--- Executes a Lua script.  
--- ℹ **NOTE**: Addon files (.gma files) do not support relative parent folders (`..` notation).  
--- This function will try to load local client file if `sv_allowcslua` is **1**.  
--- ⚠ **WARNING**: The file you are attempting to include **MUST NOT** be empty or the include will fail. Files over a certain size may fail as well.  
--- If the file you are including is clientside or shared, it **must** be Global.AddCSLuaFile'd or this function will error saying the file doesn't exist.  
--- @param fileName string @The name of the script to be executed
--- @return any ... @Anything that the executed Lua script returns.
function _G.include(fileName)
end

---  menu|client|server
--- Returns if the passed object is an Angle.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is an Angle.
function _G.isangle(variable)
end

---  menu|client|server
--- Returns if the passed object is an Entity.  
--- @param variable any @The variable to check.
--- @return boolean @True if the variable is an Entity.
function _G.isentity(variable)
end

---  menu|client|server
--- Returns if the passed object is a number.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a number.
function _G.isnumber(variable)
end

---  menu|client|server
--- Returns if the passed object is a string.  
--- @param variable any @The variable to perform the type check for.
--- @return boolean @True if the variable is a string.
function _G.isstring(variable)
end

---  menu|client|server
--- Sets, changes or removes a table's metatable. Returns Tab (the first argument).  
--- @param Tab table @The table who's metatable to change.
--- @param Metatable table @The metatable to assign
--- @return table @The first argument.
function _G.setmetatable(Tab, Metatable)
end

---  menu|client|server
--- Attempts to convert the value to a number.  
--- Returns nil on failure.  
--- @param value any @The value to convert
--- @param base? number @The base used in the string
--- @return number @The numeric representation of the value with the given base, or nil if the conversion failed.
function _G.tonumber(value, base)
end

---  menu|client|server
--- Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.  
--- Global.print also uses this functionality.  
--- @param value any @The object to be converted to a string.
--- @return string @The string representation of the value.
function _G.tostring(value)
end

---  menu|client|server
--- Returns a string representing the name of the type of the passed object.  
--- ⚠ **WARNING**: This will return `table` if the input is Global.Color, consider using Global.IsColor in that case.  
--- @param var any @The object to get the type of.
--- @return string @The name of the object's type.
function _G.type(var)
end

---  menu|client|server
--- This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index.  
--- @param tbl table @The table to generate the vararg from.
--- @param startIndex? number @Which index to start from
--- @param endIndex? number @Which index to end at
--- @return any ... @Output values
function _G.unpack(tbl, startIndex, endIndex)
end

---  menu|client|server
--- Attempts to call the first function. If the execution succeeds, this returns `true` followed by the returns of the function. If execution fails, this returns `false` and the second function is called with the error message.  
--- Unlike in Global.pcall, the stack is not unwound and can therefore be used for stack analyses with the debug.  
--- 🦟 **BUG**: [This cannot stop errors from hooks called from the engine.](https://github.com/Facepunch/garrysmod-issues/issues/2036)  
--- 🦟 **BUG**: [This does not stop Global.Error and Global.ErrorNoHalt (As well as Global.include) from sending error messages to the server (if called clientside) or calling the GM:OnLuaError hook. The success boolean returned will always return true and thus you will not get the error message returned. Global.error does not exhibit these behaviours.](https://github.com/Facepunch/garrysmod-issues/issues/2498)  
--- @param func function @The function to call initially.
--- @param errorCallback function @The function to be called if execution of the first fails; the error message is passed as a string
--- @param ... any ... @Arguments to pass to the initial function.
--- @return boolean @Status of the execution; `true` for success, `false` for failure.
--- @return any ... @The returns of the first function if execution succeeded, otherwise the **first** return value of the error callback.
function _G.xpcall(func, errorCallback, ...)
end

