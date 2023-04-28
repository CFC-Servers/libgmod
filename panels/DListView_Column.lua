--- <internal></internal>A single column, used by DListView.  
--- @class DListView_Column : Panel
local DListView_Column = {}
---  client
--- Gets the index used for this column.  
--- @return number @The column index of the DListView_Column.
function DListView_Column:GetColumnID()
end

---  client
--- Resizes the column, additionally adjusting the size of the column to the right, if any.  
--- @param size number @The amount to add to the current column's width
function DListView_Column:ResizeColumn(size)
end

---  client
--- Sets the fixed width of the column.  
--- @param width number @The number value which will determine a fixed width.
function DListView_Column:SetFixedWidth(width)
end

---  client
--- Sets the maximum width of a column.  
--- @param width number @The number value which will determine a maximum width.
function DListView_Column:SetMaxWidth(width)
end

---  client
--- Sets the minimum width of a column.  
--- @param width number @The number value which will determine a minimum width.
function DListView_Column:SetMinWidth(width)
end

---  client
--- Sets the text in the column's header.  
--- @param name string @The new name that the column's header will use.
function DListView_Column:SetName(name)
end

---  client
--- Sets the text alignment for the column  
--- @param alignment number @The direction of the content, based on the number pad
function DListView_Column:SetTextAlign(alignment)
end

---  client
--- Sets the width of the panel.  
--- @param width number @The number value which will determine panel width.
function DListView_Column:SetWidth(width)
end

