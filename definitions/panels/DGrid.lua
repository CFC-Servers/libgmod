--- A really simple grid layout panel.  
--- ℹ **NOTE**: This panel will set its size automatically based on set column count. This makes it play badly with Panel:Dock and cause a PANEL:PerformLayout call every frame.  
--- @class DGrid : Panel
local DGrid = {}
--- Adds a new item to the grid.  
--- @param item Panel @The item to add
function DGrid:AddItem(item)
end

--- Returns the width of each column of the DGrid, which is set by DGrid:SetColWide.  
--- @return number @The width of each column
function DGrid:GetColWide()
end

--- Returns the number of columns of this DGrid. Set by DGrid:SetCols.  
--- @return number @The number of columns of this DGrid
function DGrid:GetCols()
end

--- Returns a list of panels in the grid.  
--- @return table @A list of Panels.
function DGrid:GetItems()
end

--- Returns the height of each row of the DGrid, which is set by DGrid:SetRowHeight.  
--- @return number @The height of each row
function DGrid:GetRowHeight()
end

--- Removes given panel from the DGrid:GetItems.  
--- @param item Panel @Item to remove from the grid
--- @param bDontDelete? boolean @If set to true, the actual panel will not be removed via Panel:Remove.
function DGrid:RemoveItem(item, bDontDelete)
end

--- Sets the width of each column.  
--- The cell panels (grid items) will not be resized or centered.  
--- @param colWidth number @The width of each column.
function DGrid:SetColWide(colWidth)
end

--- Sets the number of columns this panel should have.  
--- The DGrid will resize its width to match this value.  
--- @param cols number @The desired number of columns
function DGrid:SetCols(cols)
end

--- Sets the height of each row.  
--- The cell panels (grid items) will not be resized or centered.  
--- @param rowHeight number @The height of each row
function DGrid:SetRowHeight(rowHeight)
end

--- Sorts the items in the grid. Does not visually update the grid, use Panel:InvalidateLayout for that.  
--- @param key string @A key in the panel from DGrid:GetItems
--- @param desc? boolean @True for descending order, false for ascending.
function DGrid:SortByMember(key, desc)
end

