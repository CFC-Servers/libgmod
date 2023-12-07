_G.navmesh = {}
---  server
--- Add this position and normal to the list of walkable positions, used before map generation with navmesh.BeginGeneration  
--- @param pos Vector @The terrain position.
--- @param dir Vector @The normal of this terrain position.
function navmesh.AddWalkableSeed(pos, dir)
end

---  server
--- Returns an integer indexed table of all CNavAreas on the current map. If the map doesn't have a navmesh generated then this will return an empty table.  
--- @return table @A table of all the CNavAreas on the current map.
function navmesh.GetAllNavAreas()
end

---  server
--- Sets the CNavArea as marked, so it can be used with editing console commands.  
--- @param area CNavArea @The CNavArea to set as the marked area.
function navmesh.SetMarkedArea(area)
end

