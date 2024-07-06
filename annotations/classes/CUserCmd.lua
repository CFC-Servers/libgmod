--- A class used to store the player inputs, such as mouse movement, view angles, Enums/IN buttons pressed and analog movement, the data from this class is then transfered to a CMoveData during actual movement simulation.  
--- Can be modified during GM:CreateMove, GM:StartCommand and used in read only with GM:SetupMove and Player:GetCurrentCommand.  
--- @class CUserCmd
local CUserCmd = {}
---  client|server
--- Adds a single key to the active buttons bitflag. See also CUserCmd:SetButtons.  
--- @param key number @Key to add, see Enums/IN.
function CUserCmd:AddKey(key)
end

---  client|server
--- Removes all keys from the command.  
--- ℹ **NOTE**: If you are looking to affect player movement, you may need to use CUserCmd:ClearMovement instead of clearing the buttons.  
function CUserCmd:ClearButtons()
end

---  client|server
--- Clears the movement from the command.  
--- See also CUserCmd:SetForwardMove, CUserCmd:SetSideMove and  CUserCmd:SetUpMove.  
function CUserCmd:ClearMovement()
end

---  client|server
--- Returns an increasing number representing the index of the user cmd.  
--- ⚠ **WARNING**: The value returned is occasionally 0 inside GM:CreateMove and GM:StartCommand. It is advised to check for a non-zero value if you wish to get the correct number.  
--- @return number @The command number
function CUserCmd:CommandNumber()
end

---  client|server
--- Returns a bitflag indicating which buttons are pressed.  
--- @return number @Pressed buttons, see Enums/IN
function CUserCmd:GetButtons()
end

---  client|server
--- The speed the client wishes to move forward with, negative if the clients wants to move backwards.  
--- @return number @The desired speed
function CUserCmd:GetForwardMove()
end

---  client|server
--- Gets the current impulse from the client, usually 0. [See impulses list](https://developer.valvesoftware.com/wiki/Impulse) and some GMod specific impulses.  
--- @return number @The impulse
function CUserCmd:GetImpulse()
end

---  client|server
--- Returns the scroll delta as whole number.  
--- @return number @Scroll delta
function CUserCmd:GetMouseWheel()
end

---  client|server
--- Returns the delta of the angular horizontal mouse movement of the player.  
--- @return number @xDelta
function CUserCmd:GetMouseX()
end

---  client|server
--- Returns the delta of the angular vertical mouse movement of the player.  
--- @return number @yDelta
function CUserCmd:GetMouseY()
end

---  client|server
--- The speed the client wishes to move sideways with, positive if it wants to move right, negative if it wants to move left.  
--- @return number @requestSpeed
function CUserCmd:GetSideMove()
end

---  client|server
--- The speed the client wishes to move up with, negative if the clients wants to move down.  
--- @return number @requestSpeed
function CUserCmd:GetUpMove()
end

---  client|server
--- Gets the direction the player is looking in.  
--- @return Angle @The direction the player is looking in.
function CUserCmd:GetViewAngles()
end

---  client|server
--- When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening.  
--- This will never return true clientside.  
--- @return boolean @isForced
function CUserCmd:IsForced()
end

---  client|server
--- Returns true if the specified button(s) is pressed.  
--- @param key number @Bitflag representing which button to check, see Enums/IN.
--- @return boolean @Is key down or not
function CUserCmd:KeyDown(key)
end

---  client|server
--- Removes a key bit from the current key bitflag.  
--- For movement you will want to use CUserCmd:SetForwardMove, CUserCmd:SetUpMove and CUserCmd:SetSideMove.  
--- @param button number @Bitflag to be removed from the key bitflag, see Enums/IN.
function CUserCmd:RemoveKey(button)
end

---  client|server
--- Forces the associated player to select a weapon. This is used internally in the default HL2 weapon selection HUD.  
--- This may not work immediately if the current command is in prediction. Use input.SelectWeapon to switch the weapon from the client when the next available command can do so.  
--- ℹ **NOTE**: This is the ideal function to use to create a custom weapon selection HUD, as it allows prediction to run properly for WEAPON:Deploy and GM:PlayerSwitchWeapon  
--- @param weapon Weapon @The weapon entity to select.
function CUserCmd:SelectWeapon(weapon)
end

---  client|server
--- Sets the buttons as a bitflag. See also CUserCmd:GetButtons.  
--- ℹ **NOTE**: If you are looking to affect player movement, you may need to use CUserCmd:SetForwardMove instead of setting the keys.  
--- @param buttons number @Bitflag representing which buttons are "down", see Enums/IN.
function CUserCmd:SetButtons(buttons)
end

---  client|server
--- Sets speed the client wishes to move forward with, negative if the clients wants to move backwards.  
--- See also CUserCmd:ClearMovement, CUserCmd:SetSideMove and CUserCmd:SetUpMove.  
--- @param speed number @The new speed to request
function CUserCmd:SetForwardMove(speed)
end

---  client|server
--- Sets the impulse command to be sent to the server.  
--- Here are a few examples of impulse numbers:  
--- - `100` toggles their flashlight  
--- - `101` gives the player all Half-Life 2 weapons with `sv_cheats` set to `1`  
--- - `200` toggles holstering / restoring the current weapon  
--- When holstered, the `EF_NODRAW` flag is set on the active weapon.  
--- - `154` toggles noclip  
--- [See full list](https://developer.valvesoftware.com/wiki/Impulse)  
--- @param impulse number @The impulse to send.
function CUserCmd:SetImpulse(impulse)
end

---  client|server
--- Sets the scroll delta.  
--- @param speed number @The scroll delta.
function CUserCmd:SetMouseWheel(speed)
end

---  client|server
--- Sets the delta of the angular horizontal mouse movement of the player.  
--- See also CUserCmd:SetMouseY.  
--- @param speed number @Angular horizontal move delta.
function CUserCmd:SetMouseX(speed)
end

---  client|server
--- Sets the delta of the angular vertical mouse movement of the player.  
--- See also CUserCmd:SetMouseX.  
--- @param speed number @Angular vertical move delta.
function CUserCmd:SetMouseY(speed)
end

---  client|server
--- Sets speed the client wishes to move sidewards with, positive to move right, negative to move left.  
--- See also CUserCmd:SetForwardMove and  CUserCmd:SetUpMove.  
--- @param speed number @The new speed to request.
function CUserCmd:SetSideMove(speed)
end

---  client|server
--- Sets speed the client wishes to move upwards with, negative to move down.  
--- See also CUserCmd:SetSideMove and  CUserCmd:SetForwardMove.  
--- ℹ **NOTE**: This function does **not** move the client up/down ladders. To force ladder movement, consider CUserCMD:SetButtons and use IN_FORWARD from Enums/IN.  
--- @param speed number @The new speed to request.
function CUserCmd:SetUpMove(speed)
end

---  client|server
--- Sets the direction the client wants to move in.  
--- ℹ **NOTE**: For human players, the pitch (vertical) angle should be clamped to +/- 89° to prevent the player's view from glitching.  
--- ℹ **NOTE**: For fake clients (those created with player.CreateNextBot), this functionally dictates the 'move angles' of the bot. This typically functions separately from the colloquial view angles. This can be utilized by CUserCmd:SetForwardMove and its related functions.  
--- @param viewAngle Angle @New view angles.
function CUserCmd:SetViewAngles(viewAngle)
end

---  client|server
--- Returns tick count since joining the server.  
--- ℹ **NOTE**: This will always return 0 for bots.  
--- ℹ **NOTE**: Returns 0 clientside during prediction calls. If you are trying to use CUserCmd:Set*() on the client in a movement or command hook, keep doing so till TickCount returns a non-zero number to maintain prediction.  
--- @return number @The amount of ticks passed since joining the server.
function CUserCmd:TickCount()
end
