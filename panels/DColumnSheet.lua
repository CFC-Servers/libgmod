--- Similar to DPropertySheet, but with tabs on the left.  
--- @class DColumnSheet : Panel
local DColumnSheet = {}
---  client
--- Adds a new column/tab.  
--- @param name string @Name of the column/tab
--- @param pnl Panel @Panel to be used as contents of the tab
--- @param icon? string @Icon for the tab
--- @return table @A table containing the following keys:
function DColumnSheet:AddSheet(name, pnl, icon)
end

---  client
--- Returns the active button of this DColumnSheet.  
--- @return Panel @The active button
function DColumnSheet:GetActiveButton()
end

---  client
--- Makes the tabs/buttons show only the image and no text.  
function DColumnSheet:UseButtonOnlyStyle()
end

