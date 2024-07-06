--- The DHTML control wraps the internal Awesomium framework, supports calling Javascript functions from Lua,  
--- as well as running Lua from within the HTML. Running Lua code is disabled by default.  
--- @class DHTML : Awesomium
local DHTML = {}
---  client|menu
--- Defines a Javascript function that when called will call a Lua callback.  
--- ℹ **NOTE**: Must be called after the HTML document has fully loaded.  
--- @param library string @Library name of the JS function you are defining.
--- @param name string @Name of the JS function you are defining.
--- @param callback function @Function called when the JS function is called
function DHTML:AddFunction(library, name, callback)
end

---  client|menu
--- Runs/Executes a string as JavaScript code in a panel.  
--- ℹ **NOTE**: This function does **NOT** evaluate expression (i.e. allow you to pass variables from JavaScript (JS) to Lua context).  
--- Because a return value is nil/no value (a.k.a. void).  
--- If you wish to pass/return values from JS to Lua, you may want to use DHTML:AddFunction function to accomplish that job.  
--- ℹ **NOTE**: This function is an alias of DHTML:QueueJavascript ([source](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/lua/vgui/dhtml.lua#L62)).  
--- @param js string @Specify JavaScript code to be executed.
function DHTML:Call(js)
end

---  client|menu
--- Called when the page inside the DHTML window runs the `console.log` javascript function. On the x86-64 beta, it's called for all built-in `console.*` javascript functions.  
--- If DHTML:SetAllowLua is set to `true` and the message begins with `RUNLUA:`, the text following `RUNLUA:` will be executed as code within the Lua environment (this is how Lua is called from DHTML windows).  
--- @param msg string @The message to be logged (or Lua code to be executed; see above).
function DHTML:ConsoleMessage(msg)
end

---  client|menu
--- Returns if the loaded page can run Lua code, set by DHTML:SetAllowLua  
--- @return boolean @Whether or not Lua code can be called from the loaded page.
function DHTML:GetAllowLua()
end

---  client|menu
--- 🛑 **DEPRECATED**: Broken. Use the CSS `overflow` rule instead.  
--- Returns the value set by DHTML:SetScrollbars.  
--- @deprecated
--- @return boolean @True if scrollbars should be visible.
function DHTML:GetScrollbars()
end

---  client
--- Called when this panel begins loading a page.  
--- @param url string @The URL of the current page.
function DHTML:OnBeginLoadingDocument(url)
end

---  client
--- Called by the engine when a callback function is called.  
--- @param library string @Library name of the JS function that was called.
--- @param name string @Name of the JS function that was called.
--- @param arguments table @Table containing all arguments passed to the JS function.
--- @return boolean @Return `true` to suppress default engine action.
function DHTML:OnCallback(library, name, arguments)
end

---  client
--- Called by HTML panels when the target URL of the frame has changed, this happens when you hover over a link.  
--- @param url string @New target URL.
function DHTML:OnChangeTargetURL(url)
end

---  client
--- Called by HTML panels when the title of the loaded page has been changed.  
--- @param newTitle string @The new title of the page.
function DHTML:OnChangeTitle(newTitle)
end

---  client
--- Called by HTML panels when the page attempts to open a new child view (such as a popup or new tab).  
--- @param sourceURL string @The URL of the page requesting to create a child.
--- @param targetURL string @The URL of the requested child.
--- @param isPopup boolean @True if the requested view is a popup.
function DHTML:OnChildViewCreated(sourceURL, targetURL, isPopup)
end

---  client
--- Called by HTML panels when the panel's DOM has been set up. You can run JavaScript in here.  
--- @param url string @The URL of the current page.
function DHTML:OnDocumentReady(url)
end

---  client
--- Called when this panel successfully loads a page.  
--- @param url string @The URL of the current page.
function DHTML:OnFinishLoadingDocument(url)
end

---  client|menu
--- Runs/Executes a string as JavaScript code in a panel.  
--- ℹ **NOTE**: This function does **NOT** evaluate expression (i.e. allow you to pass variables from JavaScript (JS) to Lua context).  
--- Because a return value is nil/no value (a.k.a. void).  
--- If you wish to pass/return values from JS to Lua, you may want to use DHTML:AddFunction function to accomplish that job.  
--- ℹ **NOTE**: If Panel:IsVisible is `false`, PANEL:Think will **NOT** run, meaning the Javascript Queue will not be processed.  
--- Consider overriding PANEL:Paint to stop the panel from drawing instead.  
--- @param js string @Specify JavaScript code to be executed.
function DHTML:QueueJavascript(js)
end

---  client|menu
--- Determines whether the loaded page can run Lua code or not. See DHTML for how to run Lua from a DHTML window.  
--- @param allow? boolean @Whether or not to allow Lua.
function DHTML:SetAllowLua(allow)
end

---  client|menu
--- 🛑 **DEPRECATED**: Broken. Use the CSS `overflow` rule instead.  
---  Sets if the loaded window should display scrollbars when the webpage is larger than the viewing window. This is similar to the CSS `overflow` rule.  
--- @param show boolean @True if scrollbars should be visible.
--- @deprecated
function DHTML:SetScrollbars(show)
end
