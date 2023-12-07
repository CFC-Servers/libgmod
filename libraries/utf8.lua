_G.utf8 = {}
---  menu|client|server
--- Receives zero or more integers, converts each one to its corresponding UTF-8 byte sequence and returns a string with the concatenation of all these sequences.  
--- @param ... any ... @Unicode code points to be converted in to a UTF-8 string.
--- @return string @UTF-8 string generated from given arguments.
function utf8.char(...)
end

---  menu|client|server
--- Returns the byte-index of the n'th UTF-8-character after the given startPos (nil if none). startPos defaults to 1 when n is positive and -1 when n is negative. If n is zero, this function instead returns the byte-index of the UTF-8-character startPos lies within.  
--- @param string string @The string that you will get the byte position from.
--- @param n number @The position to get the beginning byte position from.
--- @param startPos? number @The offset for n.
--- @return number @Starting byte-index of the given position.
function utf8.offset(string, n, startPos)
end

