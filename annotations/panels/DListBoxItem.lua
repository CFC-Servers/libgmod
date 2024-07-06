--- 🛑 **DEPRECATED**:   
--- Used Internally by DListBox.  
--- @class DListBoxItem : DLabel
local DListBoxItem = {}
---  client
--- Returns the parent "mother" of this **DListBoxItem** set by DListBoxItem:SetMother.  
--- @return Panel @The "mother" DListBox.
function DListBoxItem:GetMother()
end

---  client
--- Selects this item.  
--- @param onlyMe boolean @Whether to deselect other items.
function DListBoxItem:Select(onlyMe)
end

