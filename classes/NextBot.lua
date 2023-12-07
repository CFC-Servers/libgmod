--- @class NextBot
local NextBot = {}
---  server
--- Like NextBot:FindSpots but only returns a vector.  
--- @param type string @Either `"random"`, `"near"`, `"far"`.
--- @param options table @This table should contain the search info
--- @return Vector @If it finds a spot it will return a vector
function NextBot:FindSpot(type, options)
end

---  server
--- Returns a table of hiding spots.  
--- @param specs table @This table should contain the search info
--- @return table @An unsorted table of tables containing:
function NextBot:FindSpots(specs)
end

---  server
--- Returns squared distance to an entity or a position.  
--- See also NextBot:GetRangeTo.  
--- @param to Vector @The position to measure distance to
--- @return number @The squared distance
function NextBot:GetRangeSquaredTo(to)
end

