--- The collapsible category allows you to create numerous sections of controls, and have the ability to contract/expand them.  
--- Consider using DCategoryList if you plan on using more than 1 of these.  
--- @class DCollapsibleCategory : Panel
local DCollapsibleCategory = {}
---  client|menu
--- Adds a new text button to the collapsible category, like the tool menu in Spawnmenu.  
--- @param name string @The name of the button
--- @return Panel @The DButton
function DCollapsibleCategory:Add(name)
end

---  client|menu
--- Forces the category to open or collapse  
--- @param expand boolean @True to open, false to collapse
function DCollapsibleCategory:DoExpansion(expand)
end

---  client|menu
--- Returns the expand/collapse animation time set by DCollapsibleCategory:SetAnimTime.  
--- @return number @The animation time in seconds
function DCollapsibleCategory:GetAnimTime()
end

---  client|menu
--- Returns whether the DCollapsibleCategory is expanded or not.  
--- @return boolean @If expanded it will return true.
function DCollapsibleCategory:GetExpanded()
end

---  client|menu
--- Returns the header height of the DCollapsibleCategory.  
--- See also DCollapsibleCategory:SetHeaderHeight.  
--- @return number @The current height of the header.
function DCollapsibleCategory:GetHeaderHeight()
end

---  client|menu
--- No Description  
--- @return Panel 
function DCollapsibleCategory:GetList()
end

---  client|menu
--- Doesn't actually do anything.  
--- Returns the number set by DCollapsibleCategory:SetPadding.  
--- @return number 
function DCollapsibleCategory:GetPadding()
end

---  client|menu
--- Returns whether or not the background should be painted.  
--- @return boolean @If the background is painted or not
function DCollapsibleCategory:GetPaintBackground()
end

---  client|menu
--- No Description  
--- @return number 
function DCollapsibleCategory:GetStartHeight()
end

---  client|menu
--- Called by DCollapsibleCategory:Toggle. This function does nothing by itself, as you're supposed to overwrite it.  
--- @param expanded boolean @If it was expanded or not
function DCollapsibleCategory:OnToggle(expanded)
end

---  client|menu
--- Sets the time in seconds it takes to expand the DCollapsibleCategory  
--- @param time number @The time in seconds it takes to expand
function DCollapsibleCategory:SetAnimTime(time)
end

---  client|menu
--- Sets the contents of the DCollapsibleCategory.  
--- @param pnl Panel @The panel, containing the contents for the DCollapsibleCategory, mostly an DScrollPanel
function DCollapsibleCategory:SetContents(pnl)
end

---  client|menu
--- Sets whether the DCollapsibleCategory is expanded or not upon opening the container.  
--- You should use DCollapsibleCategory:Toggle or DCollapsibleCategory:DoExpansion instead.  
--- @param expanded? boolean @Whether it shall be expanded or not by default
function DCollapsibleCategory:SetExpanded(expanded)
end

---  client|menu
--- Sets the header height of the DCollapsibleCategory.  
--- See also DCollapsibleCategory:GetHeaderHeight.  
--- @param height number @The new height to set
function DCollapsibleCategory:SetHeaderHeight(height)
end

---  client|menu
--- Sets the name of the DCollapsibleCategory.  
--- @param label string @The label/name of the DCollapsibleCategory.
function DCollapsibleCategory:SetLabel(label)
end

---  client|menu
--- No Description  
--- @param pnl Panel 
function DCollapsibleCategory:SetList(pnl)
end

---  client|menu
--- Doesn't actually do anything.  
--- @param padding number 
function DCollapsibleCategory:SetPadding(padding)
end

---  client|menu
--- Sets whether or not the background should be painted.  
--- @param paint boolean 
function DCollapsibleCategory:SetPaintBackground(paint)
end

---  client|menu
--- No Description  
--- @param height number 
function DCollapsibleCategory:SetStartHeight(height)
end

---  client|menu
--- Toggles the expanded state of the DCollapsibleCategory.  
--- See DCollapsibleCategory:GetExpanded for a function to retrieve the expanded state.  
function DCollapsibleCategory:Toggle()
end

---  client|menu
--- No Description  
function DCollapsibleCategory:UnselectAll()
end

