--- A panel that fades its contents in and out once, like a notification.  
--- @class DNotify : Panel
local DNotify = {}
--- Adds a panel to the notification  
--- @param pnl Panel @The panel to add
--- @param lifeLength? number @If set, overrides DNotify:SetLife.
function DNotify:AddItem(pnl, lifeLength)
end

--- Returns the current alignment of this notification panel. Set by DNotify:SetAlignment.  
--- @return number @The numpad alignment
function DNotify:GetAlignment()
end

--- Returns all the items added with DNotify:AddItem.  
--- @return table @A table of Panels.
function DNotify:GetItems()
end

--- Returns the display time in seconds of the DNotify. This is set with  
--- DNotify:SetLife.  
--- @return number @The display time in seconds.
function DNotify:GetLife()
end

--- Returns the spacing between items set by DNotify:SetSpacing.  
--- @return number 
function DNotify:GetSpacing()
end

--- Sets the alignment of the child panels in the notification  
--- @param alignment number @It's the Numpad alignment, 6 is right, 9 is top left, etc.
function DNotify:SetAlignment(alignment)
end

--- Sets the display time in seconds for the DNotify.  
--- @param time number @The time in seconds.
function DNotify:SetLife(time)
end

--- Sets the spacing between child elements of the notification panel.  
--- @param spacing number 
function DNotify:SetSpacing(spacing)
end

