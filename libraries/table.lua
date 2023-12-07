_G.table = {}
---  menu|client|server
--- Removes all values from a table.  
--- @param tbl table @The table to empty.
function table.Empty(tbl)
end

---  menu|client|server
--- Flips key-value pairs of each element within a table, so that each value becomes the key, and each key becomes the value.  
--- ⚠ **WARNING**: Take care when using this function, as a Lua table cannot contain multiple instances of the same key. As such, data loss is possible when using this function on tables with duplicate values.  
--- ```  
--- local test = { test = 1, test2 = 1 }  
--- local f = table.Flip( test )  
--- PrintTable( f )  
--- -- Outputs "1	=	test2"  
--- ```  
--- @param input table @The table to flip items of.
--- @return table @The flipped table.
function table.Flip(input)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: Instead, index the table with the result of the length (#) operator, ensuring it is not zero. Non-numerically indexed tables are not ordered and do not have a last key.  
--- Returns the last value found in the given table  
--- @param tab table @Table to retrieve value from
--- @deprecated
--- @return any @Value
function table.GetLastValue(tab)
end

---  menu|client|server
--- Returns a table of keys containing the supplied value  
--- @param tab table @Table to search
--- @param value any @Value to search for
--- @return table @Keys
function table.KeysFromValue(tab, value)
end

---  menu|client|server
--- Sorts a table by a named member.  
--- @param tab table @Table to sort.
--- @param memberKey any @The key used to identify the member.
--- @param ascending? boolean @Whether or not the order should be ascending.
function table.SortByMember(tab, memberKey, ascending)
end

---  menu|client|server
--- Sorts a table in reverse order from table.sort.  
--- ℹ **NOTE**: This function modifies the table you give to it. Like table.sort, it does not return anything.  
--- @param tbl table @The table to sort in descending order.
function table.SortDesc(tbl)
end

---  menu|client|server
--- Concatenates the contents of a table to a string.  
--- @param tbl table @The table to concatenate.
--- @param concatenator? string @A separator to insert between strings
--- @param startPos? number @The key to start at
--- @param endPos? number @The key to end at
--- @return string @Concatenated values
function table.concat(tbl, concatenator, startPos, endPos)
end

---  menu|client|server
--- Inserts a value into a table at the end of the table or at the given position.  
--- ℹ **NOTE**: This function does not call the `__newindex` [metamethod](Metamethods).  
--- @param tbl table @The table to insert the variable into.
--- @param position number @The position in the table to insert the variable
--- @param value any @The variable to insert into the table.
--- @return number @The index the object was placed at.
function table.insert(tbl, position, value)
end

---  menu|client|server
--- Sorts a sequential table either ascending or by the given sort function.  
--- ℹ **NOTE**: This function modifies the table you give to it and internally uses the [quick sort algorithm](http://www.lua.org/source/5.2/ltablib.c.html#sort).  
--- @param tbl table @The table to sort.
--- @param sorter function @If specified, the function will be called with 2 parameters each
function table.sort(tbl, sorter)
end

