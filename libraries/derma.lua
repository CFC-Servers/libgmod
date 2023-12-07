_G.derma = {}
---  client|menu
--- Defines a new Derma control with an optional base.  
--- This calls vgui.Register internally, but also does the following:  
--- * Adds the control to derma.GetControlList  
--- * Adds a key "Derma" - This is returned by derma.GetControlList  
--- * Makes a global table with the name of the control (This is technically deprecated and should not be relied upon)  
--- * If reloading (i.e. called this function with name of an existing panel), updates all existing instances of panels with this name. (Updates functions, calls PANEL:PreAutoRefresh and PANEL:PostAutoRefresh, etc.)  
--- @param name string @Name of the newly created control
--- @param description string @Description of the control
--- @param tab table @Table containing control methods and properties
--- @param base string @Derma control to base the new control off of
--- @return table @A table containing the new control's methods and properties
function derma.DefineControl(name, description, tab, base)
end

---  client|menu
--- Returns the skin table of the skin with the supplied name  
--- @param name string @Name of skin
--- @return table @Skin table
function derma.GetNamedSkin(name)
end

