--- Creates an invisible vertical divider between two GUI elements.  
--- @class DHorizontalDivider : DPanel
local DHorizontalDivider = {}
---  client
--- Returns the width of the horizontal divider bar, set by DHorizontalDivider:SetDividerWidth.  
--- @return number @The width of the horizontal divider bar
function DHorizontalDivider:GetDividerWidth()
end

---  client
--- Returns whether or not the player is currently dragging the middle divider bar.  
--- @return boolean @Whether or not the player is currently dragging the middle divider bar.
function DHorizontalDivider:GetDragging()
end

---  client
--- Returns the left side content of the DHorizontalDivider  
--- @return Panel @The content on the left side
function DHorizontalDivider:GetLeft()
end

---  client
--- Returns the minimum width of the left side, set by DHorizontalDivider:SetLeftMin.  
--- @return number @The minimum width of the left side
function DHorizontalDivider:GetLeftMin()
end

---  client
--- Returns the current width of the left side, set by DHorizontalDivider:SetLeftWidth or by the user.  
--- @return number @The current width of the left side
function DHorizontalDivider:GetLeftWidth()
end

---  client
--- Returns the middle content, set by DHorizontalDivider:SetMiddle.  
--- @return Panel @The middle content
function DHorizontalDivider:GetMiddle()
end

---  client
--- Returns the right side content  
--- @return Panel @The right side content
function DHorizontalDivider:GetRight()
end

---  client
--- Returns the minimum width of the right side, set by DHorizontalDivider:SetRightMin.  
--- @return number @The minimum width of the right side
function DHorizontalDivider:GetRightMin()
end

---  client
--- Sets the width of the horizontal divider bar.  
--- @param width number @The width of the horizontal divider bar.
function DHorizontalDivider:SetDividerWidth(width)
end

---  client
--- Sets the left side content of the DHorizontalDivider.  
--- @param pnl Panel @The panel to set as the left side
function DHorizontalDivider:SetLeft(pnl)
end

---  client
--- Sets the minimum width of the left side  
--- @param minWidth number @The minimum width of the left side
function DHorizontalDivider:SetLeftMin(minWidth)
end

---  client
--- Sets the current/starting width of the left side.  
--- The width of the right side is automatically calculated by subtracting this from the total width of the DHorizontalDivider.  
--- @param width number @The current/starting width of the left side
function DHorizontalDivider:SetLeftWidth(width)
end

---  client
--- Sets the middle content, over the draggable divider bar panel.  
--- @param middle Panel @The middle content
function DHorizontalDivider:SetMiddle(middle)
end

---  client
--- Sets the right side content  
--- @param pnl Panel @The right side content
function DHorizontalDivider:SetRight(pnl)
end

---  client
--- Sets the minimum width of the right side  
--- @param minWidth number @The minimum width of the right side
function DHorizontalDivider:SetRightMin(minWidth)
end

