--- Path object for a NextBot NPC and bots created by player.CreateNextbot. Returned by Global.Path.  
--- @class PathFollower
local PathFollower = {}
---  server
--- Compute shortest path from bot to 'goal' via A* algorithm.  
--- @param from NextBot @The nextbot we're generating for
--- @param to Vector @To point
--- @param generator? function @A funtion that allows you to alter the path generation
--- @return boolean @* If returns true, path was found to the goal position
function PathFollower:Compute(from, to, generator)
end

---  server
--- Returns the cursor data  
--- @return table @A table with 3 keys:
function PathFollower:GetCursorData()
end

---  server
--- Returns how close we can get to the goal to call it done.  
--- @return number @The distance we're setting it to
function PathFollower:GetGoalTolerance()
end

---  server
--- Sets the cursor position to given distance.  
--- For relative distance, see PathFollower:MoveCursor.  
--- @param distance number @The distance to move the cursor (in world units)
function PathFollower:MoveCursorTo(distance)
end

---  server
--- How close we can get to the goal to call it done  
--- @param distance number @The distance we're setting it to
function PathFollower:SetGoalTolerance(distance)
end

