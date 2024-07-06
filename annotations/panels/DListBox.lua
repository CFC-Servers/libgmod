--- 🛑 **DEPRECATED**:   
--- Derived from the deprecated DPanelList.  
--- A simple list box with optional multi-select.  
--- As this is deprecated, it is recommended that you use DListView, which contains the same functionality with multi-column options.  
--- @class DListBox : DPanelList
local DListBox = {}
---  client|menu
--- Returns whether the list box can select multiple items.  
--- @return boolean @Whether the list box can select multiple items.
function DListBox:GetMultiple()
end

---  client|menu
--- Returns selected items.  
--- @return table @The selected items
function DListBox:GetSelectedItems()
end

---  client|menu
--- Returns selected item values.  
--- @return table @The selected item values
function DListBox:GetSelectedValues()
end

---  client|menu
--- Select a DListBoxItem based on its value.  
--- @param val string @Panel:GetValue of a DListBoxItem to select.
function DListBox:SelectByName(val)
end

---  client|menu
--- Sets whether the list box can select multiple items.  
--- @param multiple boolean @Whether the list box can select multiple items.
function DListBox:SetMultiple(multiple)
end

