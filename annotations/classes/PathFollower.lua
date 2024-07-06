--- Path object for a NextBot NPC and bots created by player.CreateNextbot. Returned by Global.Path.  
--- @class PathFollower
local PathFollower = {}
---  server
--- If you created your path with type `"Chase"` this functions should be used in place of PathFollower:Update to cause the bot to chase the specified entity.  
--- @param bot NextBot @The bot to update along the path
--- @param ent Entity @The entity we want to chase
--- @param generator? function @A function that allows you to alter the path generation
function PathFollower:Chase(bot, ent, generator)
end

---  server
--- Compute shortest path from bot to 'goal' via A* algorithm.  
--- @param bot NextBot @The nextbot we're generating for
--- @param goal Vector @The target location, the goal.
--- @param generator? function @A function that allows you to alter the path generation
--- @return boolean @* If returns true, path was found to the goal position
function PathFollower:Compute(bot, goal, generator)
end

---  server
--- Draws the path. This is meant for debugging - and uses debugoverlay.  
function PathFollower:Draw()
end

---  server
--- Returns the first segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:FirstSegment()
end

---  server
--- Returns the age since the path was built  
--- @return number @Path age
function PathFollower:GetAge()
end

---  server
--- Returns all of the segments of the given path.  
--- @return table @A table of tables with Structures/PathSegment.
function PathFollower:GetAllSegments()
end

---  server
--- The closest position along the path to a position  
--- @param position Vector @The point we're querying for
--- @return Vector @The closest position on the path
function PathFollower:GetClosestPosition(position)
end

---  server
--- Returns the current goal data. Can return nil if the current goal is invalid, for example immediately after PathFollower:Update.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:GetCurrentGoal()
end

---  server
--- Returns the cursor data  
--- @return table @A table with 3 keys:
function PathFollower:GetCursorData()
end

---  server
--- Returns the current progress along the path  
--- @return number @The current progress
function PathFollower:GetCursorPosition()
end

---  server
--- Returns the path end position  
--- @return Vector @The end position
function PathFollower:GetEnd()
end

---  server
--- Returns how close we can get to the goal to call it done.  
--- @return number @The distance we're setting it to
function PathFollower:GetGoalTolerance()
end

---  server
--- @return Entity 
function PathFollower:GetHindrance()
end

---  server
--- Returns the total length of the path  
--- @return number @The length of the path
function PathFollower:GetLength()
end

---  server
--- Returns the minimum range movement goal must be along path.  
--- @return number @The minimum look ahead distance
function PathFollower:GetMinLookAheadDistance()
end

---  server
--- Returns the vector position of distance along path  
--- @param distance number @The distance along the path to query
--- @return Vector @The position
function PathFollower:GetPositionOnPath(distance)
end

---  server
--- Returns the path start position  
--- @return Vector @The start position
function PathFollower:GetStart()
end

---  server
--- Invalidates the current path  
function PathFollower:Invalidate()
end

---  server
--- Returns true if the path is valid  
--- @return boolean @Wether the path is valid or not.
function PathFollower:IsValid()
end

---  server
--- Returns the last segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:LastSegment()
end

---  server
--- Moves the cursor by give distance.  
--- For a function that sets the distance, see PathFollower:MoveCursorTo.  
--- @param distance number @The distance to move the cursor (in relative world units)
function PathFollower:MoveCursor(distance)
end

---  server
--- Sets the cursor position to given distance.  
--- For relative distance, see PathFollower:MoveCursor.  
--- @param distance number @The distance to move the cursor (in world units)
function PathFollower:MoveCursorTo(distance)
end

---  server
--- Moves the cursor of the path to the closest position compared to given vector.  
--- @param pos Vector 
--- @param type? number @Seek type
--- @param alongLimit? number 
function PathFollower:MoveCursorToClosestPosition(pos, type, alongLimit)
end

---  server
--- Moves the cursor to the end of the path  
function PathFollower:MoveCursorToEnd()
end

---  server
--- Moves the cursor to the end of the path  
function PathFollower:MoveCursorToStart()
end

---  server
--- Returns the next segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:NextSegment()
end

---  server
--- Returns the previous segment of the path.  
--- @return table @A table with Structures/PathSegment.
function PathFollower:PriorSegment()
end

---  server
--- Resets the age which is retrieved by PathFollower:GetAge to 0.  
function PathFollower:ResetAge()
end

---  server
--- How close we can get to the goal to call it done  
--- @param distance number @The distance we're setting it to
function PathFollower:SetGoalTolerance(distance)
end

---  server
--- Sets minimum range movement goal must be along path  
--- @param mindist number @The minimum look ahead distance
function PathFollower:SetMinLookAheadDistance(mindist)
end

---  server
--- Move the bot along the path.  
--- @param bot NextBot @The bot to update along the path
function PathFollower:Update(bot)
end

