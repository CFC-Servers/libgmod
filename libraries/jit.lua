_G.jit = {}
---  menu|client|server
--- You can attach callbacks to a number of compiler events with jit.attach. The callback can be called:  
--- * when a function has been compiled to bytecode ("bc");  
--- * when trace recording starts or stops ("trace");  
--- * as a trace is being recorded ("record");  
--- * or when a trace exits through a side exit ("texit").  
--- Set a callback with jit.attach(callback, "event") and clear the same callback with jit.attach(callback)  
--- ⚠ **WARNING**: This function isn't officially documented on LuaJIT wiki, use it at your own risk.  
--- ⚠ **WARNING**: Using these constantly (especially bytecode) can be very performance heavy due to the constant stream of data being compiled at a time.  
--- @param callback function @The callback function
--- @param event string @The event to hook into.
function jit.attach(callback, event)
end

---  menu|client|server
--- Gets a constant at a certain index in a function.  
--- ⚠ **WARNING**: This function isn't officially documented on LuaJIT wiki, use it at your own risk.  
--- ℹ **NOTE**: Numbers constants goes from 0 (included) to n-1, n being the value of nconsts in jit.util.funcinfo in other words, the consts goes from (nconsts-1) to -n  
--- ℹ **NOTE**: This function only works for Lua defined functions.  
--- @param func function @Function to get constant from
--- @param index number @Constant index (counting down from the top of the function at -1)
--- @return any @The constant found
function jit.util.funck(func, index)
end

---  menu|client|server
--- @param tr number 
--- @return string @mcode
--- @return number @address
--- @return number @loop
function jit.util.tracemc(tr)
end

---  menu|client|server
--- A variable containing the version number of the LuaJIT core.  
--- @return number @The version number
function jit.version_num()
end

