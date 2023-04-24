--- The table `type` is an object that can store multiple values.  
--- The table `library` is a standard Lua library which provides functions to manipulate tables. In Garry's Mod there are several extra useful functions added to this library.  
--- This category lists the functions available in the table `library`.  
_G.table = {}
--- Adds the contents from one table into another. The target table will be modified.  
--- See also table.insert, table.Inherit and table.Merge.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:108:123
--- @param target table @The table to insert the new values into.
--- @param source table @The table to retrieve the values from.
--- @return table @The target table.
function table.Add(target, source)
end

--- Changes all keys to sequential integers. This creates a new table object and does not affect the original.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:493:506
--- @param table table @The original table to modify.
--- @param saveKeys? boolean @Save the keys within each member table
--- @return table @Table with integer keys.
function table.ClearKeys(table, saveKeys)
end

--- Collapses a table with keyvalue structure  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:465:487
--- @param input table @Input table
--- @return table @Output table
function table.CollapseKeyValue(input)
end

--- Creates a deep copy and returns that copy.  
--- ⚠ **WARNING**: This function does NOT copy userdata, such as Vectors and Angles!  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:18:43
--- @param originalTable table @The table to be copied.
--- @return table @A deep copy of the original table
function table.Copy(originalTable)
end

--- Empties the target table, and merges all values from the source table into it.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:63:75
--- @param source table @The table to copy from.
--- @param target table @The table to write to.
function table.CopyFromTo(source, target)
end

--- Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed. For those tables, consider the length (**#**) operator.  
--- If you only want to test if the table is empty or not, use table.IsEmpty instead as it is a lot faster.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:152:160
--- @param tbl table @The table to count the keys of.
--- @return number @The number of keyvalue pairs
function table.Count(tbl)
end

--- Converts a table that has been sanitised with table.Sanitise back to its original form  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:325:372
--- @param tbl table @Table to be de-sanitised
--- @return table @De-sanitised table
function table.DeSanitise(tbl)
end

--- Removes all values from a table.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:45:53
--- @param tbl table @The table to empty.
function table.Empty(tbl)
end

--- 🛑 **DEPRECATED**: Instead, iterate the table using ipairs or increment from the previous index using Global.next. Non-numerically indexed tables are not ordered.  
--- Returns the value positioned after the supplied value in a table. If it isn't found then the first element in the table is returned  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:630
--- @param tbl table @Table to search
--- @param value any @Value to return element after
--- @deprecated
--- @return any @Found element
function table.FindNext(tbl, value)
end

--- 🛑 **DEPRECATED**: Instead, iterate your table with ipairs, storing the previous value and checking for the target. Non-numerically indexed tables are not ordered.  
--- Returns the value positioned before the supplied value in a table. If it isn't found then the last element in the table is returned  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:640
--- @param tbl table @Table to search
--- @param value any @Value to return element before
--- @deprecated
--- @return any @Found element
function table.FindPrev(tbl, value)
end

--- Inserts a value in to the given table even if the table is non-existent  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:374:382
--- @param tab? table @Table to insert value in to
--- @param value any @Value to insert
--- @return table @The supplied or created table
function table.ForceInsert(tab, value)
end

--- 🛑 **DEPRECATED**: Instead, expect the first key to be 1.  
--- Non-numerically indexed tables are not ordered and do not have a first key.  
--- Returns the first key found in the given table  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:603
--- @param tab table @Table to retrieve key from
--- @deprecated
--- @return any @Key
function table.GetFirstKey(tab)
end

--- 🛑 **DEPRECATED**: Instead, index the table with a key of 1.  
--- Non-numerically indexed tables are not ordered and do not have a first key.  
--- Returns the first value found in the given table  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:608
--- @param tab table @Table to retrieve value from
--- @deprecated
--- @return any @Value
function table.GetFirstValue(tab)
end

--- Returns all keys of a table.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:726:738
--- @param tabl table @The table to get keys of
--- @return table @Table of keys
function table.GetKeys(tabl)
end

--- 🛑 **DEPRECATED**: Instead, use the result of the length (#) operator, ensuring it is not zero. Non-numerically indexed tables are not ordered and do not have a last key.  
--- Returns the last key found in the given table  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:613
--- @param tab table @Table to retrieve key from
--- @deprecated
--- @return any @Key
function table.GetLastKey(tab)
end

--- 🛑 **DEPRECATED**: Instead, index the table with the result of the length (#) operator, ensuring it is not zero. Non-numerically indexed tables are not ordered and do not have a last key.  
--- Returns the last value found in the given table  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:618
--- @param tab table @Table to retrieve value from
--- @deprecated
--- @return any @Value
function table.GetLastValue(tab)
end

--- Returns a key of the supplied table with the highest number value.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:639
--- @param inputTable table @The table to search in.
--- @return any @winningKey
function table.GetWinningKey(inputTable)
end

--- Checks if a table has a value.  
--- ⚠ **WARNING**: This function is **very inefficient for large tables** (O(n)) and should probably not be called in things that run each frame. Instead, consider a table structure such as example 2 below. Also see: Tables: Bad Habits  
--- ℹ **NOTE**: For optimization, functions that look for a value by sorting the table should never be needed if you work on a table that you built yourself.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:97:106
--- @param tbl table @Table to check
--- @param value any @Value to search for
--- @return boolean @Returns true if the table has that value, false otherwise
function table.HasValue(tbl, value)
end

--- Copies any missing data from base to target, and sets the target's `BaseClass` member to the base table's pointer.  
--- See table.Merge, which overrides existing values and doesn't add a BaseClass member.  
--- See also table.Add, which simply adds values of one table to another.  
--- 🦟 **BUG**: [Sub-tables aren't inherited. The target's table value will take priority.](https://github.com/Facepunch/garrysmod/pull/1304)  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:2:16
--- @param target table @Table to copy data to
--- @param base table @Table to copy data from
--- @return table @Target
function table.Inherit(target, base)
end

--- Returns whether or not the given table is empty.  
--- This works on both sequential and non-sequential tables, and is a lot faster to use than `table.Count(tbl) == 0`.  
--- If you want to check if a table is not empty, use `next(tbl) ~= nil`, as it is slightly faster.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:55:61
--- @param tab table @Table to check.
--- @return boolean @Is empty?
function table.IsEmpty(tab)
end

--- Returns whether or not the table's keys are sequential  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:187:199
--- @param tab table @Table to check
--- @return boolean @Is sequential
function table.IsSequential(tab)
end

--- Returns the first key found to be containing the supplied value  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:655:659
--- @param tab table @Table to search
--- @param value any @Value to search for
--- @return any @Key
function table.KeyFromValue(tab, value)
end

--- Returns a table of keys containing the supplied value  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:676:682
--- @param tab table @Table to search
--- @param value any @Value to search for
--- @return table @Keys
function table.KeysFromValue(tab, value)
end

--- Returns a copy of the input table with all string keys converted to be lowercase recursively  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:422:450
--- @param tbl table @Table to convert
--- @return table @New table
function table.LowerKeyNames(tbl)
end

--- Returns an array of values of given with given key from each table of given table.  
--- See also table.KeysFromValue.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:684
--- @param inputTable table @The table to search in.
--- @param keyName any @The key to lookup.
--- @return table @A list of found values, or an empty table.
function table.MemberValuesFromKey(inputTable, keyName)
end

--- Merges the contents of the second table with the content in the first one. The destination table will be modified.  
--- See table.Inherit, which doesn't override existing values.  
--- See also table.Add, which simply adds values of one table to another.  
--- ℹ **NOTE**: This function will cause a stack overflow under certain circumstances.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:77
--- @param destination table @The table you want the source table to merge with
--- @param source table @The table you want to merge with the destination table
--- @return table @Destination table
function table.Merge(destination, source)
end

--- Returns a random value from the supplied table.  
--- ⚠ **WARNING**: This function iterates over the given table **twice**, therefore with sequential tables you should instead use following:  
--- ```  
--- mytable[ math.random( #mytable ) ]  
--- ```  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:162:173
--- @param haystack table @The table to choose from.
--- @return any @A random value from the table.
--- @return any @The key associated with the random value.
function table.Random(haystack)
end

--- Removes the first instance of a given value from the specified table with table.remove, then returns the key that the value was found at.  
--- ⚠ **WARNING**: Avoid usage of this function. It does not remove all instances of given value in the table, only the first found, and it does not work with non sequential tables!  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:674:687
--- @param tbl table @The table that will be searched.
--- @param val any @The value to find within the table.
--- @return any @The key at which the value was found, or false if the value was not found.
function table.RemoveByValue(tbl, val)
end

--- Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:692:703
--- @param tbl table @Table to reverse.
--- @return table @A reversed copy of the table.
function table.Reverse(tbl)
end

--- Converts Vectors, Angles and booleans to be able to be converted to and from key-values via util.TableToKeyValues.  
--- table.DeSanitise performs the opposite transformation.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:274:323
--- @param tab table @Table to sanitise
--- @return table @Sanitised table
function table.Sanitise(tab)
end

--- Performs an inline [Fisher-Yates shuffle](https://en.wikipedia.org/wiki/Fisher%E2%80%93Yates_shuffle) on the table in `O(n)` time  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:175:185
--- @param target table @The table to shuffle.
function table.Shuffle(target)
end

--- Returns a list of keys sorted based on values of those keys.  
--- For normal sorting see table.sort.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:133:150
--- @param tab table @Table to sort
--- @param descending? boolean @Should the order be descending?
--- @return table @A table of keys sorted by values from supplied table.
function table.SortByKey(tab, descending)
end

--- Sorts a table by a named member.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:384:420
--- @param tab table @Table to sort.
--- @param memberKey any @The key used to identify the member.
--- @param ascending? boolean @Whether or not the order should be ascending.
function table.SortByMember(tab, memberKey, ascending)
end

--- Sorts a table in reverse order from table.sort.  
--- ℹ **NOTE**: This function modifies the table you give to it. Like table.sort, it does not return anything.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:125:131
--- @param tbl table @The table to sort in descending order.
function table.SortDesc(tbl)
end

--- Converts a table into a string  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/table.lua:265:272
--- @param tbl table @The table to iterate over.
--- @param displayName string @Optional
--- @param niceFormatting boolean @Adds new lines and tabs to the string.
--- @return string @The table formatted as a string.
function table.ToString(tbl, displayName, niceFormatting)
end

--- Concatenates the contents of a table to a string.  
--- @param tbl table @The table to concatenate.
--- @param concatenator string @A separator to insert between strings
--- @param startPos? number @The key to start at
--- @param endPos? number @The key to end at
--- @return string @Concatenated values
function table.concat(tbl, concatenator, startPos, endPos)
end

--- 🛑 **DEPRECATED**: This was deprecated in Lua 5.1 and removed in 5.2. You should use Global.pairs instead.  
---  Iterates for each key-value pair in the table, calling the function with the key and value of the pair. If the function returns anything, the loop is broken.  
--- This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use Global.pairs instead. The GLua interpretation of this is table.ForEach.  
--- @param tbl table @The table to iterate over.
--- @param callback function @The function to run for each key and value.
--- @deprecated
function table.foreach(tbl, callback)
end

--- 🛑 **DEPRECATED**: This was deprecated in Lua 5.1 and removed in 5.2. You should use Global.ipairs() instead.  
---  Iterates for each numeric index in the table in order.  
--- This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use Global.ipairs() instead.  
--- @param table table @The table to iterate over.
--- @param func function @The function to run for each index.
--- @deprecated
function table.foreachi(table, func)
end

--- 🛑 **DEPRECATED**: This function was deprecated in Lua 5.1 and is removed in 5.2. Use the length (#) operator instead.  
---  Returns the length of the table.  
--- @param tbl table @The table to check.
--- @deprecated
--- @return number @Sequential length.
function table.getn(tbl)
end

--- Inserts a value into a table at the end of the table or at the given position.  
--- ℹ **NOTE**: This function does not call the `__newindex` [metamethod](Metamethods).  
--- @param tbl table @The table to insert the variable into.
--- @param position number @The position in the table to insert the variable
--- @param value any @The variable to insert into the table.
--- @return number @The index the object was placed at.
function table.insert(tbl, position, value)
end

--- Returns the highest numerical key.  
--- @param tbl table @The table to search.
--- @return number @The highest numerical key.
function table.maxn(tbl)
end

--- Moves elements from one part of a table to another part a given table. This is similar to assigning elements from the source table to the destination table in multiple assignments.  
--- ℹ **NOTE**: This is only available on the x86-64 versions, because of the difference in the LuaJIT version. [See here](jit.version)  
--- @param sourceTbl table @The source table from which the elements are to be moved.
--- @param from number @The start index of the source range from which the elements are to be moved.
--- @param to number @The end index of the source range until which the elements are to be moved.
--- @param dest number @The index within the destination table where the moved elements should be inserted
--- @param destTbl table @The destination table to which the elements are to be moved
--- @return table @The modified destination table.
function table.move(sourceTbl, from, to, dest, destTbl)
end

--- Removes a value from a table and shifts any other values down to fill the gap.  
--- ℹ **NOTE**: Does nothing if index is less than 1 or greater than `#tbl`  
--- @param tbl table @The table to remove the value from.
--- @param index? number @The index of the value to remove.
--- @return any @The value that was removed.
function table.remove(tbl, index)
end

--- Sorts a sequential table either ascending or by the given sort function.  
--- ℹ **NOTE**: This function modifies the table you give to it.  
--- @param tbl table @The table to sort.
--- @param sorter function @If specified, the function will be called with 2 parameters each
function table.sort(tbl, sorter)
end
