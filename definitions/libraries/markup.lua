--- The markup library only contains a single function to create a MarkupObject.  
_G.markup = {}
--- A convenience function that converts a Color into its markup ready string representation.  
--- @param clr Color @The Color to convert.
--- @return string @The markup color, for example `255,255,255`.
function markup.Color(clr)
end

--- Converts a string to its escaped, markup-safe equivalent.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/markup.lua:279:281
--- @param text string @The string to sanitize.
--- @return string @The parsed markup object ready to be drawn.
function markup.Escape(text)
end

--- Parses markup into a MarkupObject. Currently, this only supports fonts and colors as demonstrated in the example.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/modules/markup.lua:295:557
--- @param markup string @The markup to be parsed.
--- @param maxWidth? number @The max width of the output
--- @return MarkupObject @The parsed markup object ready to be drawn via MarkupObject:Draw.
function markup.Parse(markup, maxWidth)
end

