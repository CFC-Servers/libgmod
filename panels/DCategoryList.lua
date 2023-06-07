--- A host for multiple DCollapsibleCategory panels.  
--- As the name suggests, each one of them can be collapsed or expanded on demand by the user.  
--- @class DCategoryList : DScrollPanel
local DCategoryList = {}
---  client|menu
--- Adds a DCollapsibleCategory to the list.  
--- @param categoryName string @The name of the category to add.
--- @return Panel @The created DCollapsibleCategory
function DCategoryList:Add(categoryName)
end

---  client|menu
--- Adds an element to the list.  
--- @param element Panel @VGUI element to add to the list.
function DCategoryList:AddItem(element)
end

---  client|menu
--- Calls Panel:UnselectAll on all child elements, if they have it.  
function DCategoryList:UnselectAll()
end

