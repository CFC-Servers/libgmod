--- The string *type* is a sequence of characters.  
--- The string *library* is a standard Lua library which provides functions for the manipulation of strings.[[1]](https://www.lua.org/pil/20.html)  
--- In Garry's Mod there are several extra useful functions and features added to this library.  
--- Most notably all strings will access this library through the string metatable index function.[[2]](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/includes/extensions/string.lua#L311-L322)  
--- This means all strings are treated like table objects and the string library as its Meta Table  
--- ```lua  
--- local x = "Kittens"  
--- function string.Foobar(self) return self:Right(4) end  
--- string.Right(x,4) == x:Right(4) == x:Foobar() == ("Kittens"):Right(4) == x[-4]..x[-3]..x[-2]..x[-1]  
--- ```  
--- The string *metatable* however is something else, and to access that you must use `getmetatable("")`.  
--- The difference here is related to Metamethods, such as using (+) instead of (..) to concatenate strings.  
--- ⚠ **WARNING**: Using `+` operator for concatenation breaks lua metamethod to sum string as numbers (Example: `"10" + "1"` return `11` (number)) and this is 400 times SLOWER!  
--- ```lua  
--- local stringmeta = getmetatable("")  
--- function stringmeta.__add(str,x) return str..x end -- This will work  
--- function string.__add(str,x) return str..x end -- But this will not.  
--- print("Kittens" + " And " + "Puppies")  
--- ```  
--- See Meta Tables and Metamethods for more information.  
--- ⚠ **WARNING**: Making changes to the string *metatable* is not a good idea unless you know what you are doing. Use the string *library* instead.  
--- This category lists functions available in the string *library*.  
_G.string = {}
---  menu|client|server
--- Converts a cardinal (`111`) number to its [ordinal/sequential variation](https://en.wikipedia.org/wiki/Ordinal_numeral) (`111th`).  
--- See also Global.STNDRD for a function that returns just the suffix.  
--- @param input number @A number to convert to ordinal.
--- @return string @The ordinal numeral.
function string.CardinalToOrdinal(input)
end

---  menu|client|server
--- Returns the time as a formatted string or as a table if no format is given.  
--- @param float number @The time in seconds to format.
--- @param format? string @An optional formatting to use
--- @return string @Returns the time as a formatted string only if a format was specified
function string.FormattedTime(float, format)
end

---  menu|client|server
--- Escapes special characters for JavaScript in a string, making the string safe for inclusion in to JavaScript strings.  
--- @param str string @The string that should be escaped.
--- @return string @The escaped string.
function string.JavascriptSafe(str)
end

