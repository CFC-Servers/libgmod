_G.debugoverlay = {}
---  client|server
--- Displays a solid coloured box at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the `developer` ConVar is set to `0`. It is not networked to clients, except for the listen server host.  
--- @param origin Vector @Position origin
--- @param mins Vector @Minimum bounds of the box
--- @param maxs Vector @Maximum bounds of the box
--- @param lifetime? number @Number of seconds to appear
--- @param color? table @The color of the box
function debugoverlay.Box(origin, mins, maxs, lifetime, color)
end

---  client|server
--- Displays 2D text at the specified coordinates.  
--- ℹ **NOTE**: This function will silently fail if the `developer` ConVar is set to `0`. It is not networked to clients, except for the listen server host.  
--- @param pos Vector @The position in 3D to display the text.
--- @param line number @Line of text, will offset text on the to display the new line unobstructed
--- @param text string @The text to display
--- @param lifetime? number @Number of seconds to appear
--- @param color? table @The color of the box
function debugoverlay.EntityTextAtPosition(pos, line, text, lifetime, color)
end

---  client|server
--- Displays a coloured line at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the `developer` ConVar is set to `0`. It is not networked to clients, except for the listen server host.  
--- @param pos1 Vector @First position of the line
--- @param pos2 Vector @Second position of the line
--- @param lifetime? number @Number of seconds to appear
--- @param color? table @The color of the line
--- @param ignoreZ? boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Line(pos1, pos2, lifetime, color, ignoreZ)
end

---  client|server
--- Displays a coloured sphere at the specified position.  
--- ℹ **NOTE**: This function will silently fail if the `developer` ConVar is set to `0`. It is not networked to clients, except for the listen server host.  
--- @param origin Vector @Position origin
--- @param size number @Size of the sphere
--- @param lifetime? number @Number of seconds to appear
--- @param color? table @The color of the sphere
--- @param ignoreZ? boolean @If true, will draw on top of everything; ignoring the Z buffer
function debugoverlay.Sphere(origin, size, lifetime, color, ignoreZ)
end

