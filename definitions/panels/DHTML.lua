--- The DHTML control wraps the internal Awesomium framework, supports calling Javascript functions from Lua, as well as running Lua from within the HTML. Running Lua code is disabled by default.  
--- @class DHTML : Awesomium
local DHTML = {}
--- Defines a Javascript function that when called will call a Lua callback.  
--- ℹ **NOTE**: Must be called after the HTML document has fully loaded.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dhtml.lua:123:146
--- @param library string @Library name of the JS function you are defining.
--- @param name string @Name of the JS function you are defining.
--- @param callback function @Function called when the JS function is called
function DHTML:AddFunction(library, name, callback)
end

--- Runs/Executes a string as JavaScript code in a panel.  
--- ℹ **NOTE**: This function does **NOT** evaluate expression (i.e. allow you to pass variables from JavaScript (JS) to Lua context).  
--- Because a return value is nil/no value (a.k.a. void).  
--- If you wish to pass/return values from JS to Lua, you may want to use DHTML:AddFunction function to accomplish that job.  
--- ℹ **NOTE**: This function is an alias of DHTML:QueueJavascript ([source](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/vgui/dhtml.lua#L62)).  
--- @param js string @Specify JavaScript code to be executed.
function DHTML:Call(js)
end

--- Called when the page inside the DHTML window runs `console.log`. This can also be called within the Lua environment to emulate `console.log`. If the contained message begins with `RUNLUA:` the following text will be executed as code within the Lua environment (this is how Lua is called from DHTML windows).  
--- @param msg string @The message to be logged (or Lua code to be executed; see above).
function DHTML:ConsoleMessage(msg)
end

--- Returns if the loaded page can run Lua code, set by DHTML:SetAllowLua  
--- @return boolean @Whether or not Lua code can be called from the loaded page.
function DHTML:GetAllowLua()
end

--- Runs/Executes a string as JavaScript code in a panel.  
--- ℹ **NOTE**: This function does **NOT** evaluate expression (i.e. allow you to pass variables from JavaScript (JS) to Lua context).  
--- Because a return value is nil/no value (a.k.a. void).  
--- If you wish to pass/return values from JS to Lua, you may want to use DHTML:AddFunction function to accomplish that job.  
--- ℹ **NOTE**: If Panel:IsVisible is `false`, PANEL:Think will **NOT** run, meaning the Javascript Queue will not be processed.  
--- Consider overriding PANEL:Paint to stop the panel from drawing instead.  
--- @param js string @Specify JavaScript code to be executed.
function DHTML:QueueJavascript(js)
end

--- Determines whether the loaded page can run Lua code or not. See DHTML for how to run Lua from a DHTML window.  
--- @param allow? boolean @Whether or not to allow Lua.
function DHTML:SetAllowLua(allow)
end

--- 🛑 **DEPRECATED**: Broken. Use the CSS `overflow` rule instead.  
---  Sets if the loaded window should display scrollbars when the webpage is larger than the viewing window. This is similar to the CSS `overflow` rule.  
--- @param show boolean @True if scrollbars should be visible.
--- @deprecated
function DHTML:SetScrollbars(show)
end

--- Stops the loading of the HTML panel's current page.  
function DHTML:StopLoading()
end

