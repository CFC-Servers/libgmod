--- <internal></internal>A panel used by DListView  
--- @class DListView_Line : Panel
local DListView_Line = {}
---  client|menu
--- Returns whether this line is odd or even in the list. This is internally used (and set) to change the looks of every other line.  
--- @return boolean @Whether this line is 'alternative'.
function DListView_Line:GetAltLine()
end

---  client|menu
--- Gets the string held in the specified column of a DListView_Line panel.  
--- This is the same thing as doing DListView_Line:GetValue( column_number ).  
--- @param column number @The number of the column to retrieve the text from, starts with 1.
--- @return string @The contents of the specified column.
function DListView_Line:GetColumnText(column)
end

---  client|menu
--- Returns the ID of this line, set automatically in DListView:AddLine.  
--- @return number @The ID of this line.
function DListView_Line:GetID()
end

---  client|menu
--- Returns the parent DListView of this line.  
--- @return DListView @The parent DListView of this line.
function DListView_Line:GetListView()
end

---  client|menu
--- Returns the data stored on given cell of this line.  
--- Used in the DListView:SortByColumn function in case you want to sort with something else than the text.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @return any @The data that is set for given column of this line, if any.
function DListView_Line:GetSortValue(column)
end

---  client|menu
--- Returns whether this line is selected.  
--- @return boolean @Whether this line is selected.
function DListView_Line:IsLineSelected()
end

---  client|menu
--- Called when the player right clicks this line.  
function DListView_Line:OnRightClick()
end

---  client|menu
--- Called when the player selects this line.  
function DListView_Line:OnSelect()
end

---  client|menu
--- Sets the string held in the specified column of a DListView_Line panel.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @param value string @Column text you want to set
--- @return DLabel @The DLabel in which the text was set.
function DListView_Line:SetColumnText(column, value)
end

---  client|menu
--- Sets whether this line is selected or not.  
--- @param selected boolean @Whether this line is selected.
function DListView_Line:SetSelected(selected)
end

---  client|menu
--- Allows you to store data per column.  
--- Used in the DListView:SortByColumn function in case you want to sort with something else than the text.  
--- @param column number @The number of the column to write the text from, starts with 1.
--- @param data any @Data for given column on the line you wish to set.
function DListView_Line:SetSortValue(column, data)
end

