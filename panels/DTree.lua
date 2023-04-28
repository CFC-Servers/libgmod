--- A tree view element for Derma.  
--- See also DTree_Node.  
--- @class DTree : DScrollPanel
local DTree = {}
---  client|menu
--- Add a node to the DTree  
--- @param name string @Name of the option.
--- @param icon? string @The icon that will show nexto the node in the DTree.
--- @return Panel @Returns the created DTree_Node panel.
function DTree:AddNode(name, icon)
end

---  client|menu
--- Called when the any node is clicked. Called by DTree_Node:DoClick.  
--- @param node DTree_Node @The right clicked node.
--- @return boolean 
function DTree:DoClick(node)
end

---  client|menu
--- Called when the any node is right clicked. Called by DTree_Node:DoRightClick.  
--- @param node DTree_Node @The right clicked node.
--- @return boolean 
function DTree:DoRightClick(node)
end

---  client|menu
--- Returns the status of DTree:SetClickOnDragHover. See that for more info.  
--- @return boolean 
function DTree:GetClickOnDragHover()
end

---  client|menu
--- Returns the indentation size of the DTree, the distance between each "level" of the tree is offset on the left from the previous level.  
--- Currently this feature has no effect on the DTree element.  
--- @return number @The indentation size.
function DTree:GetIndentSize()
end

---  client|menu
--- Returns the height of each DTree_Node in the tree.  
--- @return number @The height of each DTree_Node in the tree.
function DTree:GetLineHeight()
end

---  client|menu
--- Returns the currently selected node.  
--- @return Panel @Curently selected node.
function DTree:GetSelectedItem()
end

---  client|menu
--- Returns whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Individual icons can be set with DTree_Node:SetIcon or passed as the second argument in DTree:AddNode.  
--- @return boolean @Whether or not the silkicons next to each node will be displayed.
function DTree:GetShowIcons()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
function DTree:LayoutTree()
end

---  client|menu
--- Moves given node to the top of DTrees children. (Makes it the topmost mode)  
--- Used as a placeholder function alongside DTree:ExpandTo, DTree:SetExpanded and DTree:ChildExpanded.  
--- The DTree acts a root node and methods with the same name in DTree_Node call to the parent.  
--- @param child Panel @The node to move
--- @param pos number @<deprecated></deprecated> Unused, does nothing.
function DTree:MoveChildTo(child, pos)
end

---  client|menu
--- This function is called when a node within a tree is selected.  
--- @param node Panel @The node that was selected.
function DTree:OnNodeSelected(node)
end

---  client|menu
--- Returns the root DTree_Node, the node that is the parent to all other nodes of the DTree.  
--- @return Panel @Root node.
function DTree:Root()
end

---  client|menu
--- Enables the "click when drag-hovering" functionality.  
--- If enabled, when hovering over any DTree_Node of this DTree while dragging a panel, the node will be automatically clicked on (and subsequently DTree:OnNodeSelected will be called) to open any attached panels, such as spawnlists in spawnmenu.  
--- See also: PANEL:DragHoverClick.  
--- @param enable boolean 
function DTree:SetClickOnDragHover(enable)
end

---  client|menu
--- Sets the indentation size of the DTree, the distance between each "level" of the tree is offset on the left from the previous level.  
--- Currently this feature has no effect on the DTree element.  
--- @param size number @The new indentation size.
function DTree:SetIndentSize(size)
end

---  client|menu
--- Sets the height of each DTree_Node in the tree.  
--- The default value is 17.  
--- @param h number @The height to set.
function DTree:SetLineHeight(h)
end

---  client|menu
--- Set the currently selected top-level node.  
--- @param node Panel @DTree_Node to select.
function DTree:SetSelectedItem(node)
end

---  client|menu
--- Sets whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Individual icons can be set with DTree_Node:SetIcon or passed as the second argument in DTree:AddNode.  
--- @param show boolean @Whether or not to show icons.
function DTree:SetShowIcons(show)
end

---  client|menu
--- Returns whether or not the Silkicons next to each node of the DTree will be displayed.  
--- Alias of DTree:GetShowIcons.  
--- @return boolean @Whether or not the silkicons next to each node will be displayed.
function DTree:ShowIcons()
end

