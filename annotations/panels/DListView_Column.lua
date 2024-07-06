--- <internal></internal>  
--- A single column, used by DListView.  
--- @class DListView_Column : Panel
local DListView_Column = {}
---  client|menu
--- Called when the column is left clicked (on key release) by the client.  
--- See also DListView_Column:DoRightClick.  
function DListView_Column:DoClick()
end

---  client|menu
--- Called when the column is right clicked (on key release) by the client.  
--- See also DListView_Column:DoClick.  
function DListView_Column:DoRightClick()
end

---  client|menu
--- Gets the index used for this column.  
--- @return number @The column index of the DListView_Column.
function DListView_Column:GetColumnID()
end

---  client|menu
--- Returns whether the column is sorted in descending order or not.  
--- @return boolean @Whether the column is sorted in descending order or not.
function DListView_Column:GetDescending()
end

---  client|menu
--- Returns the fixed width of this column.  
--- @return number @The fixed width.
function DListView_Column:GetFixedWidth()
end

---  client|menu
--- Returns the maximum width set with DListView_Column:SetMaxWidth.  
--- @return number @The maximum width
function DListView_Column:GetMaxWidth()
end

---  client|menu
--- Returns the minimum width set with DListView_Column:SetMinWidth.  
--- @return number @The minimum width
function DListView_Column:GetMinWidth()
end

---  client|menu
--- Returns the text alignment for the column  
--- @return number @The direction of the content, based on the number pad
function DListView_Column:GetTextAlign()
end

---  client|menu
--- Resizes the column, additionally adjusting the size of the column to the right, if any.  
--- @param size number @The amount to add to the current column's width
function DListView_Column:ResizeColumn(size)
end

---  client|menu
--- Sets whether the column is sorted in descending order or not.  
--- @param desc boolean @Whether the column is sorted in descending order or not.
function DListView_Column:SetDescending(desc)
end

---  client|menu
--- Sets the fixed width of the column.  
--- ℹ **NOTE**:   
--- Internally this will set SetMinWidth and SetMaxWidth to the value provided  
--- @param width number @The number value which will determine a fixed width.
function DListView_Column:SetFixedWidth(width)
end

---  client|menu
--- Sets the maximum width of a column.  
--- @param width number @The number value which will determine a maximum width.
function DListView_Column:SetMaxWidth(width)
end

---  client|menu
--- Sets the minimum width of a column.  
--- @param width number @The number value which will determine a minimum width.
function DListView_Column:SetMinWidth(width)
end

---  client|menu
--- Sets the text in the column's header.  
--- @param name string @The new name that the column's header will use.
function DListView_Column:SetName(name)
end

---  client|menu
--- Sets the text alignment for the column  
--- @param alignment number @The direction of the content, based on the number pad
function DListView_Column:SetTextAlign(alignment)
end

---  client|menu
--- Sets the width of the panel.  
--- @param width number @The number value which will determine panel width.
function DListView_Column:SetWidth(width)
end

