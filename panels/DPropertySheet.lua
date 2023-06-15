--- A tab oriented control where you can create multiple tabs with items within. Used mainly for organization.  
--- @class DPropertySheet : Panel
local DPropertySheet = {}
---  client|menu
--- Adds a new tab.  
--- @param name string @Name of the tab
--- @param pnl Panel @Panel to be used as contents of the tab
--- @param icon? string @Icon for the tab
--- @param noStretchX? boolean @Should DPropertySheet try to fill itself with given panel horizontally.
--- @param noStretchY? boolean @Should DPropertySheet try to fill itself with given panel vertically.
--- @param tooltip? string @Tooltip for the tab when user hovers over it with his cursor
--- @return table @A table containing the following keys:
function DPropertySheet:AddSheet(name, pnl, icon, noStretchX, noStretchY, tooltip)
end

---  client|menu
--- Removes tab and/or panel from the parent DPropertySheet.  
--- @param tab Panel @The DTab of the sheet from DPropertySheet
--- @param removePanel boolean @Set to true to remove the associated panel object as well.
--- @return Panel @The panel of the tab.
function DPropertySheet:CloseTab(tab, removePanel)
end

---  client|menu
--- Returns the active DTab of this DPropertySheet.  
--- @return Panel @The DTab
function DPropertySheet:GetActiveTab()
end

---  client|menu
--- Returns the amount of time (in seconds) it takes to fade between tabs.  
--- Set by DPropertySheet:SetFadeTime  
--- @return number @The amount of time (in seconds) it takes to fade between tabs.
function DPropertySheet:GetFadeTime()
end

---  client|menu
--- Returns a list of all tabs of this DPropertySheet.  
--- @return table @A table of tables
function DPropertySheet:GetItems()
end

---  client|menu
--- Gets the padding from the parent panel to child panels.  
--- @return number @Padding
function DPropertySheet:GetPadding()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns whatever value was set by DPropertySheet:SetShowIcons.  
--- @deprecated
--- @return boolean 
function DPropertySheet:GetShowIcons()
end

---  client|menu
--- Called when a player switches the tabs.  
--- Source code states that this is meant to be overridden.  
--- @param old Panel @The previously active DTab
--- @param new Panel @The newly active DTab
function DPropertySheet:OnActiveTabChanged(old, new)
end

---  client|menu
--- Sets the active tab of the DPropertySheet.  
--- @param tab Panel @The DTab to set active
function DPropertySheet:SetActiveTab(tab)
end

---  client|menu
--- Sets the amount of time (in seconds) it takes to fade between tabs.  
--- @param time? number @The amount of time it takes (in seconds) to fade between tabs.
function DPropertySheet:SetFadeTime(time)
end

---  client|menu
--- Sets the padding from parent panel to children panel.  
--- @param padding? number @Amount of padding
function DPropertySheet:SetPadding(padding)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param show boolean 
--- @deprecated
function DPropertySheet:SetShowIcons(show)
end

---  client|menu
--- Creates a close button on the right side of the DPropertySheet that will run the given callback function when pressed.  
--- @param func function @Callback function to be called when the close button is pressed.
function DPropertySheet:SetupCloseButton(func)
end

---  client|menu
--- Sets the width of the DPropertySheet to fit the contents of all of the tabs.  
function DPropertySheet:SizeToContentWidth()
end

---  client|menu
--- Switches the active tab to a tab with given name.  
--- @param name string @Case sensitive name of the tab.
function DPropertySheet:SwitchToName(name)
end

