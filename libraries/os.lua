_G.os = {}
---  menu|client|server
--- Returns the date/time as a formatted string or in a table.  
--- @param format string @The format string
--- @param time? number @Time to use for the format.
--- @return string @Formatted date
function os.date(format, time)
end

---  menu|client|server
--- Subtracts the second from the first value and rounds the result.  
--- @param timeA number @The first value.
--- @param timeB number @The value to subtract.
--- @return number @diffTime
function os.difftime(timeA, timeB)
end

---  menu|client|server
--- Returns the system time in seconds past the unix epoch. If a table is supplied, the function attempts to build a system time with the specified table members.  
--- @param dateData? table @Table to generate the time from
--- @return number @Seconds passed since Unix epoch
function os.time(dateData)
end

