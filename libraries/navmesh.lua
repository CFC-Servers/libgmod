--- The navigation mesh library. To be used with CNavArea.  
--- The navigation mesh is used by NextBot to calculate path to its target.  
_G.navmesh = {}
---  server
--- Add this position and normal to the list of walkable positions, used before map generation with navmesh.BeginGeneration  
--- @param pos Vector @The terrain position.
--- @param dir Vector @The normal of this terrain position.
function navmesh.AddWalkableSeed(pos, dir)
end

---  server
--- Starts the generation of a new navmesh.  
--- ℹ **NOTE**: This process is highly resource intensive and it's not wise to use during normal gameplay  
function navmesh.BeginGeneration()
end

---  server
--- Clears all the walkable positions, used before calling navmesh.BeginGeneration.  
function navmesh.ClearWalkableSeeds()
end

---  server
--- Creates a new CNavArea.  
--- @param corner Vector @The first corner of the new CNavArea
--- @param opposite_corner Vector @The opposite (diagonally) corner of the new CNavArea
--- @return CNavArea @The new CNavArea or nil if we failed for some reason.
function navmesh.CreateNavArea(corner, opposite_corner)
end

---  server
--- Creates a new CNavLadder.  
--- @param top Vector @The top position of the ladder.
--- @param bottom Vector @The bottom position of the ladder.
--- @param width number @Width for the new ladder.
--- @param dir Vector @Directional vector in which way the ladder should be facing
--- @param maxHeightAboveTopArea? number @If above 0, will limit how much the top of the ladder can be adjusted to the closest CNavArea when automatically connecting the newly create
--- @return CNavLadder @The new CNavLadder or nil if we failed for some reason.
function navmesh.CreateNavLadder(top, bottom, width, dir, maxHeightAboveTopArea)
end

---  server
--- Returns a bunch of areas within distance, used to find hiding spots by NextBots for example.  
--- @param pos Vector @The position to search around
--- @param radius number @Radius to search within
--- @param stepdown number @Maximum stepdown( fall distance ) allowed
--- @param stepup number @Maximum stepup( jump height ) allowed
--- @return table @A table of CNavAreas
function navmesh.Find(pos, radius, stepdown, stepup)
end

---  server
--- Returns an integer indexed table of all CNavAreas on the current map. If the map doesn't have a navmesh generated then this will return an empty table.  
--- @return table @A table of all the CNavAreas on the current map.
function navmesh.GetAllNavAreas()
end

---  server
--- Returns a table of all blocked CNavAreas on the current map. See CNavArea:MarkAsBlocked.  
--- @return table @A table of all the blocked CNavAreas on the current map.
function navmesh.GetBlockedAreas()
end

---  server
--- Returns the position of the edit cursor when nav_edit is set to 1.  
--- @return Vector @The position of the edit cursor.
function navmesh.GetEditCursorPosition()
end

---  server
--- Finds the closest standable ground at, above, or below the provided position.  
--- ℹ **NOTE**: The ground must have at least 32 units of empty space above it to be considered by this function, unless 16 layers are tested without finding valid ground.  
--- @param pos Vector @Position to find the closest ground for.
--- @return number @The height of the ground layer.
--- @return Vector @The normal of the ground layer.
function navmesh.GetGroundHeight(pos)
end

---  server
--- Returns the currently marked CNavArea, for use with editing console commands.  
--- @return CNavArea @The currently marked CNavArea.
function navmesh.GetMarkedArea()
end

---  server
--- Returns the currently marked CNavLadder, for use with editing console commands.  
--- @return CNavLadder @The currently marked CNavLadder.
function navmesh.GetMarkedLadder()
end

---  server
--- Returns the Nav Area contained in this position that also satisfies the elevation limit.  
--- This function will properly see blocked CNavAreas. See navmesh.GetNearestNavArea.  
--- @param pos Vector @The position to search for.
--- @param beneathLimit number @The elevation limit at which the Nav Area will be searched.
--- @return CNavArea @The nav area.
function navmesh.GetNavArea(pos, beneathLimit)
end

---  server
--- Returns a CNavArea by the given ID.  
--- ℹ **NOTE**: Avoid calling this function every frame, as internally it does a lookup trough all the CNavAreas, call this once and store the result  
--- @param id number @ID of the CNavArea to get
--- @return CNavArea @The CNavArea with given ID.
function navmesh.GetNavAreaByID(id)
end

---  server
--- Returns the total count of nav areas on the map. If you want to get all nav areas, use navmesh.GetAllNavAreas instead as nav areas IDs are not always sequential.  
--- @return number @The total count of nav areas on the map.
function navmesh.GetNavAreaCount()
end

---  server
--- Returns a CNavLadder by the given ID.  
--- @param id number @ID of the CNavLadder to get
--- @return CNavLadder @The CNavLadder with given ID.
function navmesh.GetNavLadderByID(id)
end

---  server
--- Returns the closest CNavArea to given position at the same height, or beneath it.  
--- This function will ignore blocked CNavAreas. See navmesh.GetNavArea for a function that does see blocked areas.  
--- @param pos Vector @The position to look from
--- @param anyZ? boolean @This argument is ignored and has no effect
--- @param maxDist? number @This is the maximum distance from the given position that the function will look for a CNavArea
--- @param checkLOS? boolean @If this is set to true then the function will internally do a util.TraceLine from the starting position to each potential CNavArea with a [M
--- @param checkGround? boolean @If checkGround is true then this function will internally call navmesh.GetNavArea to check if there is a CNavArea directly below the positio
--- @param team? number @This will internally call CNavArea:IsBlocked to check if the target CNavArea is not to be navigated by the given team
--- @return CNavArea @The closest CNavArea found with the given parameters, or a NULL CNavArea if one was not found.
function navmesh.GetNearestNavArea(pos, anyZ, maxDist, checkLOS, checkGround, team)
end

---  server
--- Returns the classname of the player spawn entity.  
--- @return string @The classname of the spawn point entity
function navmesh.GetPlayerSpawnName()
end

---  server
--- Whether we're currently generating a new navmesh with navmesh.BeginGeneration.  
--- @return boolean @Whether we're generating a nav mesh or not.
function navmesh.IsGenerating()
end

---  server
--- Returns true if a navmesh has been loaded when loading the map.  
--- @return boolean @Whether a navmesh has been loaded when loading the map.
function navmesh.IsLoaded()
end

---  server
--- Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously.  
--- ⚠ **WARNING**:   
--- Calling this function too soon, causes the Server to crash!  
function navmesh.Load()
end

---  server
--- Deletes every CNavArea and CNavLadder on the map **without saving the changes**.  
function navmesh.Reset()
end

---  server
--- Saves any changes made to navmesh to the .nav file.  
function navmesh.Save()
end

---  server
--- Sets the CNavArea as marked, so it can be used with editing console commands.  
--- @param area CNavArea @The CNavArea to set as the marked area.
function navmesh.SetMarkedArea(area)
end

---  server
--- Sets the CNavLadder as marked, so it can be used with editing console commands.  
--- @param area CNavLadder @The CNavLadder to set as the marked ladder.
function navmesh.SetMarkedLadder(area)
end

---  server
--- Sets the classname of the default spawn point entity, used before generating a new navmesh with navmesh.BeginGeneration.  
--- @param spawnPointClass string @The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
function navmesh.SetPlayerSpawnName(spawnPointClass)
end

