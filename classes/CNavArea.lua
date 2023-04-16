--- @class CNavArea
--- An object returned by navmesh functions.  
local CNavArea = {}
--- Adds a hiding spot onto this nav area.  
--- There's a limit of 255 hiding spots per area.  
--- @param pos Vector @The position on the nav area
--- @param flags number @Flags describing what kind of hiding spot this is
function CNavArea:AddHidingSpot(pos, flags)
end

--- Adds this CNavArea to the closed list, a list of areas that have been checked by A* pathfinding algorithm.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
function CNavArea:AddToClosedList()
end

--- Adds this CNavArea to the Open List.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
function CNavArea:AddToOpenList()
end

--- Clears the open and closed lists for a new search.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
function CNavArea:ClearSearchLists()
end

--- Returns the height difference between the edges of two connected navareas.  
--- @param navarea CNavArea 
--- @return number @The height change
function CNavArea:ComputeAdjacentConnectionHeightChange(navarea)
end

--- Returns the Enums/NavDir direction that the given vector faces on this CNavArea.  
--- @param pos Vector @The position to compute direction towards.
--- @return number @The direction the vector is in relation to this CNavArea
function CNavArea:ComputeDirection(pos)
end

--- Returns the height difference on the Z axis of the two CNavAreas. This is calculated from the center most point on both CNavAreas.  
--- @param navArea CNavArea @The nav area to test against.
--- @return number @The ground height change.
function CNavArea:ComputeGroundHeightChange(navArea)
end

--- Connects this CNavArea to another CNavArea or CNavLadder with a one way connection. ( From this area to the target )  
--- See CNavLadder:ConnectTo for making the connection from ladder to area.  
--- @param area CNavArea @The CNavArea or CNavLadder this area leads to.
function CNavArea:ConnectTo(area)
end

--- Returns true if this CNavArea contains the given vector.  
--- @param pos Vector @The position to test.
--- @return boolean @True if the vector was inside and false otherwise.
function CNavArea:Contains(pos)
end

--- Disconnects this nav area from given area or ladder. (Only disconnects one way)  
--- @param area CNavArea @The CNavArea or CNavLadder this to disconnect from.
function CNavArea:Disconnect(area)
end

--- Draws this navarea on debug overlay.  
function CNavArea:Draw()
end

--- Draws the hiding spots on debug overlay. This includes sniper/exposed spots too!  
function CNavArea:DrawSpots()
end

--- Returns a table of all the CNavAreas that have a  ( one and two way ) connection **from** this CNavArea.  
--- If an area has a one-way incoming connection to this CNavArea, then it will **not** be returned from this function, use CNavArea:GetIncomingConnections to get all one-way incoming connections.  
--- See CNavArea:GetAdjacentAreasAtSide for a function that only returns areas from one side/direction.  
--- @return table @A table of all CNavArea that have a ( one and two way ) connection **from** this CNavArea
function CNavArea:GetAdjacentAreas()
end

--- Returns a table of all the CNavAreas that have a ( one and two way ) connection **from** this CNavArea in given direction.  
--- If an area has a one-way incoming connection to this CNavArea, then it will **not** be returned from this function, use CNavArea:GetIncomingConnections to get all incoming connections.  
--- See CNavArea:GetAdjacentAreas for a function that returns all areas from all sides/directions.  
--- @param navDir number @The direction, in which to look for CNavAreas, see Enums/NavDir.
--- @return table @A table of all CNavArea that have a ( one and two way ) connection **from** this CNavArea in given direction
function CNavArea:GetAdjacentAreasAtSide(navDir)
end

--- Returns the amount of CNavAreas that have a connection ( one and two way ) **from** this CNavArea.  
--- See CNavArea:GetAdjacentCountAtSide for a function that only returns area count from one side/direction.  
--- @return number @The amount of CNavAreas that have a connection ( one and two way ) **from** this CNavArea.
function CNavArea:GetAdjacentCount()
end

--- Returns the amount of CNavAreas that have a connection ( one or two way ) **from** this CNavArea in given direction.  
--- See CNavArea:GetAdjacentCount for a function that returns CNavArea count from/in all sides/directions.  
--- @param navDir number @The direction, in which to look for CNavAreas, see Enums/NavDir.
--- @return number @The amount of CNavAreas that have a connection ( one or two way ) **from** this CNavArea in given direction.
function CNavArea:GetAdjacentCountAtSide(navDir)
end

--- Returns the attribute mask for the given CNavArea.  
--- @return boolean @Attribute mask for this CNavArea, see Enums/NAV_MESH for the specific flags
function CNavArea:GetAttributes()
end

--- Returns the center most vector point for the given CNavArea.  
--- @return Vector @The center vector.
function CNavArea:GetCenter()
end

--- Returns the closest point of this Nav Area from the given position.  
--- @param pos Vector @The given position, can be outside of the Nav Area bounds.
--- @return Vector @The closest position on this Nav Area.
function CNavArea:GetClosestPointOnArea(pos)
end

--- Returns the vector position of the corner for the given CNavArea.  
--- @param cornerid number @The target corner to get the position of, takes Enums/NavCorner.
--- @return Vector @The corner position.
function CNavArea:GetCorner(cornerid)
end

--- Returns the cost from starting area this area when pathfinding. Set by CNavArea:SetCostSoFar.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return number @The cost so far.
function CNavArea:GetCostSoFar()
end

--- Returns a table of very bad hiding spots in this area.  
--- See also CNavArea:GetHidingSpots.  
--- @return table @A table of Vectors
function CNavArea:GetExposedSpots()
end

--- Returns size info about the nav area.  
--- @return table @Returns a table containing the following keys:
function CNavArea:GetExtentInfo()
end

--- Returns a table of good hiding spots in this area.  
--- See also CNavArea:GetExposedSpots.  
--- @param type number @The type of spots to include
--- @return table @A table of Vectors
function CNavArea:GetHidingSpots(type)
end

--- Returns this CNavAreas unique ID.  
--- @return number @The unique ID.
function CNavArea:GetID()
end

--- Returns a table of all the CNavAreas that have a one-way connection **to** this CNavArea.  
--- If a CNavArea has a two-way connection **to or from** this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreas to get outgoing ( one and two way ) connections.  
--- See CNavArea:GetIncomingConnectionsAtSide for a function that returns one-way incoming connections from  only one side/direction.  
--- @return table @A table of all CNavAreas with one-way connection **to** this CNavArea
function CNavArea:GetIncomingConnections()
end

--- Returns a table of all the CNavAreas that have a one-way connection **to** this CNavArea from given direction.  
--- If a CNavArea has a two-way connection **to or from** this CNavArea then it will not be returned from this function, use CNavArea:GetAdjacentAreas to get outgoing ( one and two way ) connections.  
--- See CNavArea:GetIncomingConnections for a function that returns one-way incoming connections from  all sides/directions.  
--- @param navDir number @The direction, from which to look for CNavAreas, see Enums/NavDir.
--- @return table @A table of all CNavAreas with one-way connection **to** this CNavArea from given direction
function CNavArea:GetIncomingConnectionsAtSide(navDir)
end

--- Returns all CNavLadders that have a ( one or two way ) connection **from** this CNavArea.  
--- See CNavArea:GetLaddersAtSide for a function that only returns CNavLadders in given direction.  
--- @return table @The CNavLadders that have a ( one or two way ) connection **from** this CNavArea.
function CNavArea:GetLadders()
end

--- Returns all CNavLadders that have a ( one or two way ) connection **from** ( one and two way ) this CNavArea in given direction.  
--- See CNavArea:GetLadders for a function that returns CNavLadder from/in all sides/directions.  
--- @param navDir number @The direction, in which to look for CNavLadders
--- @return table @The CNavLadders that have a ( one or two way ) connection **from** this CNavArea in given direction.
function CNavArea:GetLaddersAtSide(navDir)
end

--- Returns the parent CNavArea  
--- @return CNavArea @The parent CNavArea
function CNavArea:GetParent()
end

--- Returns how this CNavArea is connected to its parent.  
--- @return number @See Enums/NavTraverseType
function CNavArea:GetParentHow()
end

--- Returns the Place of the nav area.  
--- @return string @The place of the nav area, or no value if it doesn't have a place set.
function CNavArea:GetPlace()
end

--- Returns a random CNavArea that has an outgoing ( one or two way ) connection **from** this CNavArea in given direction.  
--- @param navDir number @The direction, in which to look for CNavAreas, see Enums/NavDir.
--- @return CNavArea @The random CNavArea that has an outgoing ( one or two way ) connection **from** this CNavArea in given direction, if any.
function CNavArea:GetRandomAdjacentAreaAtSide(navDir)
end

--- Returns a random point on the nav area.  
--- @return Vector @The random point on the nav area.
function CNavArea:GetRandomPoint()
end

--- Returns the width this Nav Area.  
--- @return number 
function CNavArea:GetSizeX()
end

--- Returns the height of this Nav Area.  
--- @return number 
function CNavArea:GetSizeY()
end

--- Returns the total cost when passing from starting area to the goal area through this node. Set by CNavArea:SetTotalCost.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return number @The total cost
function CNavArea:GetTotalCost()
end

--- Returns the elevation of this Nav Area at the given position.  
--- @param pos Vector @The position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task.
--- @return number @The elevation.
function CNavArea:GetZ(pos)
end

--- Returns true if the given CNavArea has this attribute flag set.  
--- @param attribs number @Attribute mask to check for, see Enums/NAV_MESH
--- @return boolean @True if the CNavArea matches the given mask
function CNavArea:HasAttributes(attribs)
end

--- Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not.  
--- @param teamID number @The team ID to test, -2 = any team
--- @param ignoreNavBlockers boolean @Whether to ignore [func_nav_blocker](https://developer.valvesoftware.com/wiki/Func_nav_blocker) entities.
--- @return boolean @Whether the area is blocked or not
function CNavArea:IsBlocked(teamID, ignoreNavBlockers)
end

--- Returns whether this node is in the Closed List.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return boolean @Whether this node is in the Closed List.
function CNavArea:IsClosed()
end

--- Returns whether this CNavArea has an outgoing ( one or two way ) connection **to** given CNavArea.  
--- See CNavArea:IsConnectedAtSide for a function that only checks for outgoing connections in one direction.  
--- @param navArea CNavArea @The CNavArea to test against.
--- @return boolean @Whether this CNavArea has an outgoing ( one or two way ) connection **to** given CNavArea.
function CNavArea:IsConnected(navArea)
end

--- Returns whether this CNavArea has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.  
--- See CNavArea:IsConnected for a function that checks all sides.  
--- @param navArea CNavArea @The CNavArea to test against.
--- @param navDirType number @The direction, in which to look for the connection
--- @return boolean @Whether this CNavArea has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.
function CNavArea:IsConnectedAtSide(navArea, navDirType)
end

--- Returns whether this Nav Area is in the same plane as the given one.  
--- @param navArea CNavArea @The Nav Area to test.
--- @return boolean @Whether we're coplanar or not.
function CNavArea:IsCoplanar(navArea)
end

--- Returns whether this Nav Area is flat within the tolerance of the **nav_coplanar_slope_limit_displacement** and **nav_coplanar_slope_limit** convars.  
--- @return boolean @Whether this CNavArea is mostly flat.
function CNavArea:IsFlat()
end

--- Returns whether this area is in the Open List.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return boolean @Whether this area is in the Open List.
function CNavArea:IsOpen()
end

--- Returns whether the Open List is empty or not.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return boolean @Whether the Open List is empty or not.
function CNavArea:IsOpenListEmpty()
end

--- Returns if this position overlaps the Nav Area within the given tolerance.  
--- @param pos Vector @The overlapping position to test.
--- @param tolerance number @The tolerance of the overlapping, set to 0 for no tolerance.
--- @return boolean @Whether the given position overlaps the Nav Area or not.
function CNavArea:IsOverlapping(pos, tolerance)
end

--- Returns true if this CNavArea is overlapping the given CNavArea.  
--- @param navArea CNavArea @The CNavArea to test against.
--- @return boolean @True if the given CNavArea overlaps this CNavArea at any point.
function CNavArea:IsOverlappingArea(navArea)
end

--- Returns if we're shaped like a square.  
--- @return boolean @If we're a square or not.
function CNavArea:IsRoughlySquare()
end

--- Whether this Nav Area is placed underwater.  
--- @return boolean @Whether we're underwater or not.
function CNavArea:IsUnderwater()
end

--- Returns whether this CNavArea is valid or not.  
--- @return boolean @Whether this CNavArea is valid or not.
function CNavArea:IsValid()
end

--- Returns whether we can be seen from the given position.  
--- @param pos Vector @The position to check.
--- @return boolean @Whether we can be seen or not.
--- @return Vector @If we can be seen, this is returned with either the center or one of the corners of the Nav Area.
function CNavArea:IsVisible(pos)
end

--- Drops a corner or all corners of a CNavArea to the ground below it.  
--- @param corner number @The corner(s) to drop, uses Enums/NavCorner
function CNavArea:PlaceOnGround(corner)
end

--- Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @return CNavArea @The CNavArea from the Open List with the lowest cost to traverse to from the starting node.
function CNavArea:PopOpenList()
end

--- Removes the given nav area.  
function CNavArea:Remove()
end

--- Removes this node from the Closed List.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
function CNavArea:RemoveFromClosedList()
end

--- Sets the attributes for given CNavArea.  
--- @param attribs number @The attribute bitflag
function CNavArea:SetAttributes(attribs)
end

--- Sets the position of a corner of a nav area.  
--- @param corner number @The corner to set, uses Enums/NavCorner
--- @param position Vector @The new position to set.
function CNavArea:SetCorner(corner, position)
end

--- Sets the cost from starting area this area when pathfinding.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @param cost number @The cost so far
function CNavArea:SetCostSoFar(cost)
end

--- Sets the new parent of this CNavArea.  
--- @param parent CNavArea @The new parent to set
function CNavArea:SetParent(parent)
end

--- Sets the Place of the nav area.  
--- There is a limit of 256 Places per nav file.  
--- @param place string @Set to "" to remove place from the nav area.
--- @return boolean @Returns true of operation succeeded, false otherwise.
function CNavArea:SetPlace(place)
end

--- Sets the total cost when passing from starting area to the goal area through this node.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
--- @param cost number @The total cost of the path to set
function CNavArea:SetTotalCost(cost)
end

--- Moves this open list to appropriate position based on its CNavArea:GetTotalCost compared to the total cost of other areas in the open list.  
--- Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).  
--- More information can be found on the Simple Pathfinding page.  
function CNavArea:UpdateOnOpenList()
end

