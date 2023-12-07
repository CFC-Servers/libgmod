_G.system = {}
---  menu|client|server
--- Returns whether the current OS is OSX.  
--- @return boolean @Whether or not the game is running on OSX.
function system.IsOSX()
end

---  client|menu
--- Returns whether the game is being run in a window or in fullscreen (you can change this by opening the menu, clicking 'Options', then clicking the 'Video' tab, and changing the Display Mode using the dropdown menu):  
--- @return boolean @Is the game running in a window?
function system.IsWindowed()
end

---  menu|client|server
--- Returns the synchronized Steam time. This is the number of seconds since the [Unix epoch](http://en.wikipedia.org/wiki/Unix_time).  
--- ℹ **NOTE**: This function does not work on Dedicated Servers and will instead return no value.  
--- @return number @Current Steam-synchronized Unix time.
function system.SteamTime()
end

