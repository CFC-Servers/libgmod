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
--- 🛑 **DEPRECATED**: You should use DCollapsibleCategory:GetPaintBackground instead.  
--- Returns whether or not the panel background is being drawn. Alias of DCollapsibleCategory:GetPaintBackground.  
--- @deprecated
--- @return boolean @True if the panel background is drawn, false otherwise.
function DCollapsibleCategory:GetDrawBackground()
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
--- If set, the DCategoryList that created this panel.  
--- See also DCollapsibleCategory:SetList.  
--- @return Panel @The DCategoryList that created us.
function DCollapsibleCategory:GetList()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Doesn't actually do anything.  
--- Returns the number set by DCollapsibleCategory:SetPadding.  
--- @deprecated
--- @return number 
function DCollapsibleCategory:GetPadding()
end

---  client|menu
--- Returns whether or not the background should be painted.  
--- @return boolean @If the background is painted or not
function DCollapsibleCategory:GetPaintBackground()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns whatever was set by DCollapsibleCategory:SetStartHeight  
--- @deprecated
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
--- 🛑 **DEPRECATED**: You should use DCollapsibleCategory:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DCollapsibleCategory:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
--- @deprecated
function DCollapsibleCategory:SetDrawBackground(draw)
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
--- Used internally by DCategoryList when it creates a DCollapsibleCategory during DCategoryList:Add.  
--- If set, Panel:UnselectAll will be called on the list, instead of calling it on the category panel itself when a category is clicked.  
--- @param pnl Panel @The Panel:UnselectAll that is the "parent" of this panel.
function DCollapsibleCategory:SetList(pnl)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Doesn't actually do anything.  
--- @param padding number 
--- @deprecated
function DCollapsibleCategory:SetPadding(padding)
end

---  client|menu
--- Sets whether or not the background should be painted.  
--- @param paint boolean 
function DCollapsibleCategory:SetPaintBackground(paint)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @param height number 
--- @deprecated
function DCollapsibleCategory:SetStartHeight(height)
end

---  client|menu
--- Toggles the expanded state of the DCollapsibleCategory.  
--- See DCollapsibleCategory:GetExpanded for a function to retrieve the expanded state.  
function DCollapsibleCategory:Toggle()
end

