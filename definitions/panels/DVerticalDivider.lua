--- Vertical version of DHorizontalDivider.  
--- @class DVerticalDivider : DPanel
local DVerticalDivider = {}
--- Returns the bottom content panel of the DVerticalDivider.  
--- @return Panel @The bottom content panel.
function DVerticalDivider:GetBottom()
end

--- Returns the minimum height of the bottom content panel.  
--- @return number @The minimum height of the bottom content panel.
function DVerticalDivider:GetBottomMin()
end

--- Returns the height of the divider bar between the top and bottom content panels of the DVerticalDivider.  
--- @return number @The height of the divider bar.
function DVerticalDivider:GetDividerHeight()
end

--- Returns whether the divider is being dragged or not.  
--- @return boolean @If true, mouse movement will alter the size of the divider.
function DVerticalDivider:GetDragging()
end

--- Returns the middle content panel of the DVerticalDivider.  
--- @return Panel @The middle content panel.
function DVerticalDivider:GetMiddle()
end

--- Returns the top content panel of the DVerticalDivider.  
--- @return Panel @The top content panel.
function DVerticalDivider:GetTop()
end

--- Returns the current height of the top content panel set by DVerticalDivider:SetTopHeight or by the user.  
--- @return number @The current height of the DVerticalDivider.
function DVerticalDivider:GetTopHeight()
end

--- Returns the maximum height of the top content panel. See DVerticalDivider:SetTopMax for more information.  
--- @return number @The maximum height of the top content panel.
function DVerticalDivider:GetTopMax()
end

--- Returns the minimum height of the top content panel.  
--- @return number @The minimum height of the top content panel.
function DVerticalDivider:GetTopMin()
end

--- Sets the passed panel as the bottom content of the DVerticalDivider.  
--- @param pnl Panel @The panel to set as the bottom content.
function DVerticalDivider:SetBottom(pnl)
end

--- Sets the minimum height of the bottom content panel.  
--- @param height number @The minimum height of the bottom content panel
function DVerticalDivider:SetBottomMin(height)
end

--- Sets the height of the divider bar between the top and bottom content panels of the DVerticalDivider.  
--- @param height number @The height of the divider bar.
function DVerticalDivider:SetDividerHeight(height)
end

--- Places the passed panel in between the top and bottom content panels of the DVerticalDivider.  
--- @param pnl Panel @The panel to set as the middle content.
function DVerticalDivider:SetMiddle(pnl)
end

--- Sets the passed panel as the top content of the DVerticalDivider.  
--- @param pnl Panel @The panel to set as the top content.
function DVerticalDivider:SetTop(pnl)
end

--- Sets the height of the top content panel.  
--- The height of the bottom content panel is automatically calculated by taking the total height of the DVerticalDivider and subtracting it with the height of the top content panel and the divider bar.  
--- @param height number @The height of the top content panel.
function DVerticalDivider:SetTopHeight(height)
end

--- Sets the maximum height of the top content panel. This is ignored if the panel would exceed the minimum bottom content panel height set from DVerticalDivider:SetBottomMin.  
--- @param height number @The maximum height of the top content panel
function DVerticalDivider:SetTopMax(height)
end

--- Sets the minimum height of the top content panel.  
--- @param height number @The minimum height of the top content panel
function DVerticalDivider:SetTopMin(height)
end

