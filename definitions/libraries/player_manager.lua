--- The player_manager library lets you manage players, such as setting their models or creating player classes.  
_G.player_manager = {}
--- Assigns view model hands to player model.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:27:34
--- @param name string @Player model name
--- @param model string @Hands model
--- @param skin? number @Skin to apply to the hands
--- @param bodygroups? string @Bodygroups to apply to the hands
--- @param matchBodySkin? boolean @If set to `true`, the skin of the hands will be set to the skin of the playermodel
function player_manager.AddValidHands(name, model, skin, bodygroups, matchBodySkin)
end

--- Associates a simplified name with a path to a valid player model.  
--- Only used internally.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:17:25
--- @param name string @Simplified name
--- @param model string @Valid PlayerModel path
function player_manager.AddValidModel(name, model)
end

--- Returns the entire list of valid player models.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:36:41
function player_manager.AllValidModels()
end

--- Clears a player's class association by setting their ClassID to 0  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:399:403
--- @param ply Player @Player to clear class from
function player_manager.ClearPlayerClass(ply)
end

--- Gets a players class  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:390:397
--- @param ply Player @Player to get class
--- @return string @The players class
function player_manager.GetPlayerClass(ply)
end

--- Retrieves a copy of all registered player classes.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:300:304
--- @return table @A copy of all registered player classes.
function player_manager.GetPlayerClasses()
end

--- Applies basic class variables when the player spawns.  
--- Called from GM:PlayerSpawn in the base gamemode.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:417:445
--- @param ply Player @Player to setup
function player_manager.OnPlayerSpawn(ply)
end

--- Register a class metatable to be assigned to players later  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:349:374
--- @param name string @Class name
--- @param table table @Class metatable
--- @param base string @Base class name
function player_manager.RegisterClass(name, table, base)
end

--- Execute a named function within the player's set class  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:405:415
--- @param ply Player @Player to execute function on.
--- @param funcName string @Name of function.
--- @param ... any ... @Optional arguments
--- @return any ... @The values returned by the called function.
function player_manager.RunClass(ply, funcName, ...)
end

--- Sets a player's class  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:376:388
--- @param ply Player @Player to set class
--- @param classname string @Name of class to set
function player_manager.SetPlayerClass(ply, classname)
end

--- Retrieves correct hands for given player model. By default returns citizen hands.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:69:79
--- @param name string @Player model name
--- @return table @A table with following contents:
function player_manager.TranslatePlayerHands(name)
end

--- Returns the valid model path for a simplified name.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:44:55
--- @param shortName string @The short name of the model.
--- @return string @The valid model path for the short name.
function player_manager.TranslatePlayerModel(shortName)
end

--- Returns the simplified name for a valid model path of a player model.  
--- Opposite of player_manager.TranslatePlayerModel.  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/player_manager.lua:57:67
--- @param model string @The model path to a player model
--- @return string @The simplified name for that model
function player_manager.TranslateToPlayerModelName(model)
end

