--- An object that represents a ladder for Nextbots.  
--- @class CNavLadder
local CNavLadder = {}
--- Connects this ladder to a CNavArea with a one way connection. ( From this ladder to the target area ).  
--- See CNavArea:ConnectTo for making the connection from area to ladder.  
--- @param area CNavArea @The area this ladder leads to.
function CNavLadder:ConnectTo(area)
end

--- Disconnects this ladder from given area in a single direction.  
--- @param area CNavArea @The CNavArea this to disconnect from.
function CNavLadder:Disconnect(area)
end

--- Returns the bottom most position of the ladder.  
--- @return Vector @The bottom most position of the ladder.
function CNavLadder:GetBottom()
end

--- Returns the bottom area of the CNavLadder.  
--- @return CNavArea 
function CNavLadder:GetBottomArea()
end

--- Returns this CNavLadders unique ID.  
--- @return number @The unique ID.
function CNavLadder:GetID()
end

--- Returns the length of the ladder.  
--- @return number @The length of the ladder.
function CNavLadder:GetLength()
end

--- Returns the direction of this CNavLadder. ( The direction in which players back will be facing if they are looking directly at the ladder )  
--- @return Vector @The direction of this CNavLadder.
function CNavLadder:GetNormal()
end

--- Returns the world position based on given height relative to the ladder.  
--- @param height number @The Z position in world space coordinates.
--- @return Vector @The closest point on the ladder to that height.
function CNavLadder:GetPosAtHeight(height)
end

--- Returns the topmost position of the ladder.  
--- @return Vector @The topmost position of the ladder.
function CNavLadder:GetTop()
end

--- Returns the top behind CNavArea of the CNavLadder.  
--- @return CNavArea @The top behind CNavArea of the CNavLadder.
function CNavLadder:GetTopBehindArea()
end

--- Returns the top forward CNavArea of the CNavLadder.  
--- @return CNavArea @The top forward CNavArea of the CNavLadder.
function CNavLadder:GetTopForwardArea()
end

--- Returns the top left CNavArea of the CNavLadder.  
--- @return CNavArea @The top left CNavArea of the CNavLadder.
function CNavLadder:GetTopLeftArea()
end

--- Returns the top right CNavArea of the CNavLadder.  
--- @return CNavArea @The top right CNavArea of the CNavLadder.
function CNavLadder:GetTopRightArea()
end

--- Returns the width of the ladder in Hammer Units.  
--- @return number @The width of the ladder in Hammer Units.
function CNavLadder:GetWidth()
end

--- Returns whether this CNavLadder has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.  
--- @param navArea CNavArea @The CNavArea to test against.
--- @param navDirType number @The direction, in which to look for the connection
--- @return boolean @Whether this CNavLadder has an outgoing ( one or two way ) connection **to** given CNavArea in given direction.
function CNavLadder:IsConnectedAtSide(navArea, navDirType)
end

--- Returns whether this CNavLadder is valid or not.  
--- @return boolean @Whether this CNavLadder is valid or not.
function CNavLadder:IsValid()
end

--- Removes the given nav ladder.  
function CNavLadder:Remove()
end

--- Sets the bottom area of the CNavLadder.  
--- @param area CNavArea 
function CNavLadder:SetBottomArea(area)
end

--- Sets the top behind area of the CNavLadder.  
--- @param area CNavArea 
function CNavLadder:SetTopBehindArea(area)
end

--- Sets the top forward area of the CNavLadder.  
--- @param area CNavArea 
function CNavLadder:SetTopForwardArea(area)
end

--- Sets the top left area of the CNavLadder.  
--- @param area CNavArea 
function CNavLadder:SetTopLeftArea(area)
end

--- Sets the top right area of the CNavLadder.  
--- @param area CNavArea 
function CNavLadder:SetTopRightArea(area)
end

