_G.team = {}
---  client|server
--- Returns the team index of the team with the least players. Falls back to TEAM_UNASSIGNED  
--- @return number @Team index
function team.BestAutoJoinTeam()
end

---  client|server
--- Returns the selectable classes for the given team. This can be added to with team.SetClass  
--- @param index number @Index of the team
--- @return table @Selectable classes
function team.GetClass(index)
end

---  client|server
--- Returns the team's color.  
--- @param teamIndex number @The team index.
--- @return table @The team's color as a Color.
function team.GetColor(teamIndex)
end

---  client|server
--- Returns a table with all player of the specified team.  
--- ℹ **NOTE**: This function returns a sequential table, meaning it should be looped with Global.ipairs instead of Global.pairs for efficiency reasons.  
--- @param teamIndex number @The team index.
--- @return table @A sequential table of Players that belong to the requested team.
function team.GetPlayers(teamIndex)
end

---  client|server
--- Returns the score of the team.  
--- @param teamIndex number @The team index.
--- @return number @score
function team.GetScore(teamIndex)
end

---  client|server
--- Returns a table of valid spawnpoint classes the team can use. These are set with team.SetSpawnPoint.  
--- @param index number @Index of the team
--- @return table @Valid spawnpoint classes
function team.GetSpawnPoint(index)
end

---  client|server
--- Get's the total frags in a team.  
--- @param Entity_or_number Entity @Entity or number.
--- @return number @index
function team.TotalFrags(Entity_or_number)
end

