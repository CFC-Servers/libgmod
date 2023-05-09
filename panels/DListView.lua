--- A data view with rows and columns.  
--- @class DListView : DPanel
local DListView = {}
---  client
--- Adds a column to the listview.  
--- @param column string @The name of the column to add.
--- @param position? number @At which position to insert the new column compared to the other columns
--- @return Panel @The newly created DListView_Column.
function DListView:AddColumn(column, position)
end

---  client
--- Adds a line to the list view.  
--- @param ... any ... @Values for a new row in the DListView, If several arguments are supplied, each argument will correspond to a respective column in the DListV
--- @return Panel @The newly created DListView_Line.
function DListView:AddLine(...)
end

---  client
--- Clears the current selection in the DListView.  
function DListView:ClearSelection()
end

---  client
--- Gets the width of a column.  
--- @param column number @The column to get the width of.
--- @return number @Width of the column.
function DListView:ColumnWidth(column)
end

---  client
--- Creates the lines and gets the height of the contents, in a DListView.  
--- @return number @The height of the contents
function DListView:DataLayout()
end

---  client
--- Removes the scrollbar.  
function DListView:DisableScrollbar()
end

---  client
--- Called when a line in the DListView is double clicked.  
--- @param lineID number @The line number of the double clicked line.
--- @param line Panel @The double clicked DListView_Line.
function DListView:DoDoubleClick(lineID, line)
end

---  client
--- Gets the canvas.  
--- @return Panel @The canvas.
function DListView:GetCanvas()
end

---  client
--- Returns the height of the data of the DListView.  
--- See also DListView:SetDataHeight.  
--- @return number @The height of the data of the DListView.
function DListView:GetDataHeight()
end

---  client
--- Returns the height of the header of the DListView.  
--- See also DListView:SetHeaderHeight.  
--- @return number @The height of the header of the DListView.
function DListView:GetHeaderHeight()
end

---  client
--- Returns whether the header line should be visible on not.  
--- @return boolean @Whether the header line should be visible on not.
function DListView:GetHideHeaders()
end

---  client
--- Returns the height of DListView:GetCanvas.  
--- Intended to represent the height of all data lines.  
--- @return number @The height of DListView:GetCanvas.
function DListView:GetInnerTall()
end

---  client
--- Gets the DListView_Line at the given index.  
--- @param id number @The index of the line to get.
--- @return Panel @The DListView_Line at the given index.
function DListView:GetLine(id)
end

---  client
--- Gets all of the lines added to the DListView.  
--- @return table @The lines added to the DListView.
function DListView:GetLines()
end

---  client
--- Returns whether multiple lines can be selected or not.  
--- See DListView:SetMultiSelect.  
--- @return boolean @Whether multiple lines can be selected or not.
function DListView:GetMultiSelect()
end

---  client
--- Gets all of the lines that are currently selected.  
--- @return table @A table of DListView_Lines.
function DListView:GetSelected()
end

---  client
--- Gets the currently selected DListView_Line index.  
--- If DListView:SetMultiSelect is set to true, only the first line of all selected lines will be returned. Use DListView:GetSelected instead to get all of the selected lines.  
--- @return number @The index of the currently selected line.
--- @return Panel @The currently selected DListView_Line.
function DListView:GetSelectedLine()
end

---  client
--- Returns whether sorting of columns by clicking their headers is allowed or not.  
--- See also DListView:SetSortable.  
--- @return boolean @Whether sorting of columns by clicking their headers is allowed or not
function DListView:GetSortable()
end

---  client
--- Called when a row is right-clicked  
--- @param lineID number @The line ID of the right clicked line
--- @param line Panel @The line panel itself, a DListView_Line.
function DListView:OnRowRightClick(lineID, line)
end

---  client
--- Called internally by DListView:OnClickLine when a line is selected. This is the function you should override to define the behavior when a line is selected.  
--- @param rowIndex number @The index of the row/line that the user clicked on.
--- @param row Panel @The DListView_Line that the user clicked on.
function DListView:OnRowSelected(rowIndex, row)
end

---  client
--- Removes a line from the list view.  
--- @param line number @Removes the given row, by row id (same number as DListView:GetLine).
function DListView:RemoveLine(line)
end

---  client
--- Selects the line at the first index of the DListView if one has been added.  
function DListView:SelectFirstItem()
end

---  client
--- Selects a line in the listview.  
--- @param Line Panel @The line to select.
function DListView:SelectItem(Line)
end

---  client
--- Sets the height of all lines of the DListView except for the header line.  
--- See also DListView:SetHeaderHeight.  
--- @param height number @The new height to set
function DListView:SetDataHeight(height)
end

---  client
--- Sets the height of the header line of the DListView.  
--- See also DListView:SetDataHeight.  
--- @param height number @The new height to set
function DListView:SetHeaderHeight(height)
end

---  client
--- Sets whether the header line should be visible on not.  
--- @param hide boolean @Whether the header line should be visible on not.
function DListView:SetHideHeaders(hide)
end

---  client
--- Sets whether multiple lines can be selected by the user by using the `Ctrl` or `Shift` keys. When set to false, only one line can be selected.  
--- @param allowMultiSelect boolean @Whether multiple lines can be selected or not
function DListView:SetMultiSelect(allowMultiSelect)
end

---  client
--- Enables/disables the sorting of columns by clicking.  
--- ℹ **NOTE**:   
--- This will only affect columns that are created after this function is called. Existing columns will be unaffected.  
--- @param isSortable boolean @Whether sorting columns with clicking is allowed or not.
function DListView:SetSortable(isSortable)
end

---  client
--- Sorts the items in the specified column.  
--- @param columnIndex number @The index of the column that should be sorted.
--- @param descending? boolean @Whether the items should be sorted in descending order or not.
function DListView:SortByColumn(columnIndex, descending)
end

---  client
--- Sorts the list based on given columns.  
--- All arguments are optional  
--- @param column1? number 
--- @param descrending1? boolean 
--- @param column2? number 
--- @param descrending2? boolean 
--- @param column3? number 
--- @param descrending3? boolean 
--- @param column4? number 
--- @param descrending4? boolean 
function DListView:SortByColumns(column1, descrending1, column2, descrending2, column3, descrending3, column4, descrending4)
end

