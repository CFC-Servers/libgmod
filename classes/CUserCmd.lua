--- A class used to store the player inputs, such as mouse movement, view angles, Enums/IN buttons pressed and analog movement, the data from this class is then transfered to a CMoveData during actual movement simulation.  
--- Can be modified during GM:CreateMove, GM:StartCommand and used in read only with GM:SetupMove and Player:GetCurrentCommand.  
--- @class CUserCmd
local CUserCmd = {}
---  client|server
--- Clears the movement from the command.  
--- See also CUserCmd:SetForwardMove, CUserCmd:SetSideMove and  CUserCmd:SetUpMove.  
function CUserCmd:ClearMovement()
end

---  client|server
--- Returns a bitflag indicating which buttons are pressed.  
--- @return number @Pressed buttons, see Enums/IN
function CUserCmd:GetButtons()
end

---  client|server
--- Returns the delta of the angular horizontal mouse movement of the player.  
--- @return number @xDelta
function CUserCmd:GetMouseX()
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
--- When players are not sending usercommands to the server (often due to lag), their last usercommand will be executed multiple times as a backup. This function returns true if that is happening.  
--- This will never return true clientside.  
--- @return boolean @isForced
function CUserCmd:IsForced()
end

---  client|server
--- Removes a key bit from the current key bitflag.  
--- For movement you will want to use CUserCmd:SetForwardMove, CUserCmd:SetUpMove and CUserCmd:SetSideMove.  
--- @param button number @Bitflag to be removed from the key bitflag, see Enums/IN.
function CUserCmd:RemoveKey(button)
end

---  client|server
--- Sets the scroll delta.  
--- @param speed number @The scroll delta.
function CUserCmd:SetMouseWheel(speed)
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

