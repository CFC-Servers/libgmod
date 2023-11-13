--- <internal></internal>  
--- This panel is created whenever you add a node to a DTree.  
--- The root node of a DTree is also a DTree_Node and controls much of its action. it can be accessed with DTree:Root.  
--- @class DTree_Node : DPanel
local DTree_Node = {}
---  client|menu
--- A helper function that adds a new node and calls to DTree_Node:MakeFolder on it.  
--- @param name string @The name of the new node
--- @param folder string @The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @The path to search in
--- @param showFiles? boolean @Should files be added as nodes (true) or folders only (false)
--- @param wildcard? string @The wildcard to use when searching for files.
--- @param bDontForceExpandable? boolean 
--- @return Panel @The created DTree_Node
function DTree_Node:AddFolder(name, folder, path, showFiles, wildcard, bDontForceExpandable)
end

---  client|menu
--- Add a child node to the DTree_Node  
--- @param name string @Name of the node.
--- @param icon? string @The icon that will show next to the node in the DTree.
--- @return Panel @Returns the created DTree_Node panel.
function DTree_Node:AddNode(name, icon)
end

---  client|menu
--- Cleans up the internal table of items (sub-nodes) of this node from invalid panels or sub-nodes that were moved from this node to another.  
--- Appears the be completely unused by the game on its own.  
function DTree_Node:CleanList()
end

---  client|menu
--- Create and returns a copy of this node, including all the sub-nodes.  
--- @return Panel @The copied DTree_Node.
function DTree_Node:Copy()
end

---  client|menu
--- Called when the node is clicked.  
--- See also DTree_Node:DoRightClick.  
--- @return boolean @Return true to prevent DoClick from being called on parent nodes or the DTree itself.
function DTree_Node:DoClick()
end

---  client|menu
--- Called when the node is right clicked.  
--- See also DTree_Node:DoClick.  
--- @return boolean @Return true to prevent DoRightClick from being called on parent nodes or the DTree itself.
function DTree_Node:DoRightClick()
end

---  client|menu
--- Expands or collapses this node, as well as ALL child nodes of this node.  
--- Works opposite of DTree_Node:ExpandTo.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
function DTree_Node:ExpandRecurse(expand)
end

---  client|menu
--- Collapses or expands all nodes from the topmost-level node to this one.  
--- Works opposite of DTree_Node:ExpandRecurse.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
function DTree_Node:ExpandTo(expand)
end

---  client|menu
--- Returns n-th child node.  
--- Basically an alias of Panel:GetChild.  
--- @param num number @The number of the child to get, starting with 0
--- @return Panel @The child panel, if valid ID is given
function DTree_Node:GetChildNode(num)
end

---  client|menu
--- Returns the number of child nodes this node has. For use with DTree_Node:GetChildNode  
--- @return number @Number of child nodes.
function DTree_Node:GetChildNodeCount()
end

---  client|menu
--- Returns a table containing all child nodes of this node.  
--- @return table @A list of all child nodes.
function DTree_Node:GetChildNodes()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Returns value set by DTree_Node:SetDirty.  
--- @deprecated
--- @return boolean 
function DTree_Node:GetDirty()
end

---  client|menu
--- Returns whether the double clock to collapse/expand functionality is enabled on this node.  
--- @return boolean 
function DTree_Node:GetDoubleClickToOpen()
end

---  client|menu
--- Returns whether the node is expanded or not.  
--- @return boolean @Expanded or not.
function DTree_Node:GetExpanded()
end

---  client|menu
--- Returns the filepath of the file attached to this node.  
--- @return string 
function DTree_Node:GetFileName()
end

---  client|menu
--- Returns the folder path to search in, set by DTree_Node:MakeFolder.  
--- @return string @The folder path.
function DTree_Node:GetFolder()
end

---  client|menu
--- Returns whether the expand/collapse button is shown on this node regardless of whether or not it has sub-nodes.  
--- See also DTree_Node:SetForceShowExpander.  
--- @return boolean 
function DTree_Node:GetForceShowExpander()
end

---  client|menu
--- Returns whether the expand button (little + button) should be shown or hidden.  
--- @return boolean 
function DTree_Node:GetHideExpander()
end

---  client|menu
--- Returns the image path to the icon of this node.  
--- @return string @The path to the image
function DTree_Node:GetIcon()
end

---  client|menu
--- Returns the indentation level of the DTree this node belongs to.  
--- Alias of DTree:GetIndentSize, see it for more info.  
--- @return number @The indentation level.
function DTree_Node:GetIndentSize()
end

---  client|menu
--- Returns whether this node is the last child on this level or not.  
--- @return boolean 
function DTree_Node:GetLastChild()
end

---  client|menu
--- The height of a single DTree_Node of the DTree this node belongs to.  
--- Alias of DTree:GetLineHeight.  
--- @return number @The height of a single DTree_Node.
function DTree_Node:GetLineHeight()
end

---  client|menu
--- Returns the parent DTree_Node. Note that Panel:GetParent will not be the same!  
--- @return Panel @The parent node.
function DTree_Node:GetParentNode()
end

---  client|menu
--- Returns the path ID (File Search Paths) used in populating the DTree from the filesystem.  
--- See DTree_Node:SetPathID and DTree_Node:MakeFolder.  
--- @return string @The Path ID
function DTree_Node:GetPathID()
end

---  client|menu
--- Returns the root node, the DTree this node is under.  
--- See also DTree_Node:GetParentNode.  
--- @return Panel @The root node
function DTree_Node:GetRoot()
end

---  client|menu
--- Returns whether or not nodes for files should/will be added when populating the node from filesystem.  
--- @return boolean 
function DTree_Node:GetShowFiles()
end

---  client|menu
--- Returns the wildcard set by DTree_Node:MakeFolder.  
--- @return string @The search wildcard
function DTree_Node:GetWildCard()
end

---  client|menu
--- Inserts a sub-node into this node before or after the given node.  
--- @param node Panel @The DTree_Node to insert.
--- @param nodeNextTo Panel @The node to insert the node above before or after.
--- @param before boolean @true to insert before, false to insert after.
function DTree_Node:Insert(node, nodeNextTo, before)
end

---  client|menu
--- Returns true if DTree_Node:GetRoot is the same as DTree_Node:GetParentNode of this node.  
--- @return boolean @If this is a root node.
function DTree_Node:IsRootNode()
end

---  client|menu
--- Removes given node as a sub-node of this node.  
--- It doesn't actually remove or unparent the panel, just removes it from the internal DListView.  
--- @param pnl Panel @The node to remove
function DTree_Node:LeaveTree(pnl)
end

---  client|menu
--- Makes this node a folder in the filesystem. This will make it automatically populated.  
--- See also DTree_Node:AddFolder.  
--- @param folder string @The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @The path to search in
--- @param showFiles? boolean @Should files be added as nodes (true) or folders only (false)
--- @param wildcard? string @The wildcard to use when searching for files.
--- @param dontForceExpandable? boolean @If set to true, don't show the expand buttons on empty nodes.
function DTree_Node:MakeFolder(folder, path, showFiles, wildcard, dontForceExpandable)
end

---  client|menu
--- Moves given panel to the top of the children of this node.  
--- Despite name of this function, it cannot move the children to any position but the topmost.  
--- @param node Panel @The node to move.
function DTree_Node:MoveChildTo(node)
end

---  client|menu
--- Moves this node to the top of the level.  
function DTree_Node:MoveToTop()
end

---  client|menu
--- Called when sub-nodes of this DTree_Node were changed, such as being rearranged if that functionality is enabled.  
function DTree_Node:OnModified()
end

---  client|menu
--- Called when a new sub-node is added this node.  
--- @param newNode DTree_Node @The newly added sub node.
function DTree_Node:OnNodeAdded(newNode)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Appears to have no effect on the DTree_Node.  
--- @param dirty boolean 
--- @deprecated
function DTree_Node:SetDirty(dirty)
end

---  client|menu
--- Sets whether double clicking the node should expand/collapse it or not.  
--- @param enable boolean @true to enable, false to disable this functionality.
function DTree_Node:SetDoubleClickToOpen(enable)
end

---  client|menu
--- Expands or collapses this node.  
--- @param expand boolean @Whether to expand (true) or collapse (false)
--- @param surpressAnimation? boolean @Whether to play animation (false) or not (true)
function DTree_Node:SetExpanded(expand, surpressAnimation)
end

---  client|menu
--- Sets whether or not the expand/collapse button (+/- button) should be shown on this node regardless of whether it has sub-elements or not.  
--- @param forceShow boolean 
function DTree_Node:SetForceShowExpander(forceShow)
end

---  client|menu
--- Sets the material for the icon of the DTree_Node.  
--- @param path string @The path to the material to be used
function DTree_Node:SetIcon(path)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Currently does nothing, not implemented.  
--- @deprecated
function DTree_Node:SetupCopy()
end

---  client|menu
--- Returns whether or not the DTree this node is in has icons enabled.  
--- See DTree:ShowIcons for more info.  
--- @return number @Whether the icons are shown or not
function DTree_Node:ShowIcons()
end

