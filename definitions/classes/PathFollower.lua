--- Path object for a NextBot NPC and bots created by player.CreateNextbot. Returned by Global.Path.  
--- @class PathFollower
local PathFollower = {}
--- If you created your path with type "Chase" this functions should be used in place of PathFollower:Update to cause the bot to chase the specified entity.  
--- @param bot NextBot @The bot to update along the path
--- @param ent Entity @The entity we want to chase
function PathFollower:Chase(bot, ent)
end

--- Compute shortest path from bot to 'goal' via A* algorithm.  
--- @param from NextBot @The nextbot we're generating for
--- @param to Vector @To point
--- @param generator? function @A funtion that allows you to alter the path generation
--- @return boolean @* If returns true, path was found to the goal position
function PathFollower:Compute(from, to, generator)
end

--- Draws the path. This is meant for debugging - and uses debug overlay.  
function PathFollower:Draw()
end

--- Returns the first segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:FirstSegment()
end

--- Returns the age since the path was built  
--- @return number @Path age
function PathFollower:GetAge()
end

--- Returns all of the segments of the given path.  
--- @return table @A table of tables with Structures/PathSegment.
function PathFollower:GetAllSegments()
end

--- The closest position along the path to a position  
--- @param position Vector @The point we're querying for
--- @return Vector @The closest position on the path
function PathFollower:GetClosestPosition(position)
end

--- Returns the current goal data. Can return nil if the current goal is invalid, for example immediately after PathFollower:Update.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:GetCurrentGoal()
end

--- Returns the cursor data  
--- @return table @A table with 3 keys:
function PathFollower:GetCursorData()
end

--- Returns the current progress along the path  
--- @return number @The current progress
function PathFollower:GetCursorPosition()
end

--- Returns the path end position  
--- @return Vector @The end position
function PathFollower:GetEnd()
end

--- Returns how close we can get to the goal to call it done.  
--- @return number @The distance we're setting it to
function PathFollower:GetGoalTolerance()
end

--- @return Entity 
function PathFollower:GetHindrance()
end

--- Returns the total length of the path  
--- @return number @The length of the path
function PathFollower:GetLength()
end

--- Returns the minimum range movement goal must be along path.  
--- @return number @The minimum look ahead distance
function PathFollower:GetMinLookAheadDistance()
end

--- Returns the vector position of distance along path  
--- @param distance number @The distance along the path to query
--- @return Vector @The position
function PathFollower:GetPositionOnPath(distance)
end

--- Returns the path start position  
--- @return Vector @The start position
function PathFollower:GetStart()
end

--- Invalidates the current path  
function PathFollower:Invalidate()
end

--- Returns true if the path is valid  
--- @return boolean @Wether the path is valid or not.
function PathFollower:IsValid()
end

--- Returns the last segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:LastSegment()
end

--- Moves the cursor by give distance.  
--- For a function that sets the distance, see PathFollower:MoveCursorTo.  
--- @param distance number @The distance to move the cursor (in relative world units)
function PathFollower:MoveCursor(distance)
end

--- Sets the cursor position to given distance.  
--- For relative distance, see PathFollower:MoveCursor.  
--- @param distance number @The distance to move the cursor (in world units)
function PathFollower:MoveCursorTo(distance)
end

--- Moves the cursor of the path to the closest position compared to given vector.  
--- @param pos Vector 
--- @param type? number @Seek type
--- @param alongLimit? number 
function PathFollower:MoveCursorToClosestPosition(pos, type, alongLimit)
end

--- Moves the cursor to the end of the path  
function PathFollower:MoveCursorToEnd()
end

--- Moves the cursor to the end of the path  
function PathFollower:MoveCursorToStart()
end

--- Resets the age which is retrieved by PathFollower:GetAge to 0.  
function PathFollower:ResetAge()
end

--- How close we can get to the goal to call it done  
--- @param distance number @The distance we're setting it to
function PathFollower:SetGoalTolerance(distance)
end

--- Sets minimum range movement goal must be along path  
--- @param mindist number @The minimum look ahead distance
function PathFollower:SetMinLookAheadDistance(mindist)
end

--- Move the bot along the path.  
--- @param bot NextBot @The bot to update along the path
function PathFollower:Update(bot)
end

