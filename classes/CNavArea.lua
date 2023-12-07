--- @class CNavArea
local CNavArea = {}
---  server
--- Draws this navarea on debug overlay.  
function CNavArea:Draw()
end

---  server
--- Returns the amount of CNavAreas that have a connection ( one or two way ) **from** this CNavArea in given direction.  
--- See CNavArea:GetAdjacentCount for a function that returns CNavArea count from/in all sides/directions.  
--- @param navDir number @The direction, in which to look for CNavAreas, see Enums/NavDir.
--- @return number @The amount of CNavAreas that have a connection ( one or two way ) **from** this CNavArea in given direction.
function CNavArea:GetAdjacentCountAtSide(navDir)
end

---  server
--- Returns a table of all the CNavAreas that have a one-way connection **to** this CNavArea and their pre-computed distances.  
--- If a CNavArea has a two-way connection **to or from** this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreaDistances to get outgoing (one and two way) connections.  
--- @param dir? number @If set, will only return areas in the specified direction
--- @return table @A list of tables in the following format:
function CNavArea:GetIncomingConnectionDistances(dir)
end

---  server
--- Returns whether the CNavArea would damage if traversed, as set by CNavArea:MarkAsDamaging.  
--- @return boolean @Whether the area is damaging or not
function CNavArea:IsDamaging()
end

---  server
--- Returns whether this CNavArea can see given position.  
--- @param pos Vector @The position to test.
--- @param ignoreEnt? Entity @If set, the given entity will be ignored when doing LOS tests
--- @return boolean @Whether the given position is visible from this area
function CNavArea:IsPartiallyVisible(pos, ignoreEnt)
end

---  server
--- Returns if we're shaped like a square.  
--- @return boolean @If we're a square or not.
function CNavArea:IsRoughlySquare()
end

---  server
--- Marks the area as damaging if traversed, for example when, for example having poisonous or no atmosphere, or a temporary fire present. See CNavArea:IsDamaging.  
--- @param duration number @For how long the area should stay marked as damaging
function CNavArea:MarkAsDamaging(duration)
end

---  server
--- Drops a corner or all corners of a CNavArea to the ground below it.  
--- @param corner number @The corner(s) to drop, uses Enums/NavCorner
function CNavArea:PlaceOnGround(corner)
end

---  server
--- Sets the Place of the nav area.  
--- There is a limit of 256 unique places per `.nav` file.  
--- @param place string @Set to `""` to remove place from the nav area
--- @return boolean @Returns true of operation succeeded, false otherwise.
function CNavArea:SetPlace(place)
end

---  server
--- Sets the total cost when passing from starting area to the goal area through this node.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @param cost number @The total cost of the path to set
function CNavArea:SetTotalCost(cost)
end

