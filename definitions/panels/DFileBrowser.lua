--- A tree and list-based file browser.  
--- It allows filtering by folder (directory) name and file extension, and can display models as SpawnIcons.  
--- @class DFileBrowser : DPanel
local DFileBrowser = {}
--- Clears the file tree and list, and resets all values.  
function DFileBrowser:Clear()
end

--- Returns the root directory/folder of the file tree.  
--- @return string @The path to the root folder.
function DFileBrowser:GetBaseFolder()
end

--- Returns the current directory/folder being displayed.  
--- @return string @The directory the file list is currently displaying.
function DFileBrowser:GetCurrentFolder()
end

--- Returns the current file type filter on the file list.  
--- @return string @The current filter applied to the file list.
function DFileBrowser:GetFileTypes()
end

--- Returns the DTree Node that the file tree stems from.  
--- This is a child of the root node of the DTree.  
--- @return Panel @The DTree_Node used for the tree.
function DFileBrowser:GetFolderNode()
end

--- Returns whether or not the model viewer mode is enabled. In this mode, files are displayed as SpawnIcons instead of a list.  
--- @return boolean @Whether or not files will be displayed using SpawnIcons.
function DFileBrowser:GetModels()
end

--- Returns the name being used for the file tree.  
--- @return string @The name used for the root of the file tree.
function DFileBrowser:GetName()
end

--- Returns whether or not the file tree is open.  
--- @return boolean @Whether or not the file tree is open.
function DFileBrowser:GetOpen()
end

--- Returns the access path of the file tree. This is `GAME` unless changed with DFileBrowser:SetPath.  
--- See file.Read for how paths work.  
--- @return string @The current access path i.e
function DFileBrowser:GetPath()
end

--- Returns the current search filter on the file tree.  
--- @return string @The filter in use on the file tree.
function DFileBrowser:GetSearch()
end

--- Called when a file is double-clicked.  
--- ℹ **NOTE**: Double-clicking a file or icon will trigger **both** this and DFileBrowser:OnSelect.  
--- @param filePath string @The path to the file that was double-clicked.
--- @param selectedPanel Panel @The panel that was double-clicked to select this file.<br><br>This will either be a DListView_Line or SpawnIcon depending on whether the mod
function DFileBrowser:OnDoubleClick(filePath, selectedPanel)
end

--- Called when a file is right-clicked.  
--- ℹ **NOTE**: When not in model viewer mode, DFileBrowser:OnSelect will also be called if the file is not already selected.  
--- @param filePath string @The path to the file that was right-clicked.
--- @param selectedPanel Panel @The panel that was right-clicked to select this file
function DFileBrowser:OnRightClick(filePath, selectedPanel)
end

--- Called when a file is selected.  
--- @param filePath string @The path to the file that was selected.
--- @param selectedPanel Panel @The panel that was clicked to select this file.<br><br>This will either be a DListView_Line or SpawnIcon depending on whether the model view
function DFileBrowser:OnSelect(filePath, selectedPanel)
end

--- Sets the root directory/folder of the file tree.  
--- This needs to be set for the file tree to be displayed.  
--- @param baseDir string @The path to the folder to use as the root.
function DFileBrowser:SetBaseFolder(baseDir)
end

--- Sets the directory/folder from which to display the file list.  
--- @param currentDir string @The directory to display files from.
function DFileBrowser:SetCurrentFolder(currentDir)
end

--- Sets the file type filter for the file list.  
--- This accepts the same file extension wildcards as file.Find.  
--- @param fileTypes? string @A list of file types to display, separated by spaces e.g
function DFileBrowser:SetFileTypes(fileTypes)
end

--- Enables or disables the model viewer mode. In this mode, files are displayed as SpawnIcons instead of a list.  
--- ℹ **NOTE**: This should only be used for `.mdl` files; the spawn icons will display error models for others. See DFileBrowser:SetFileTypes  
--- @param showModels? boolean @Whether or not to display files using SpawnIcons.
function DFileBrowser:SetModels(showModels)
end

--- Sets the name to use for the file tree.  
--- @param treeName? string @The name for the root of the file tree
function DFileBrowser:SetName(treeName)
end

--- Opens or closes the file tree.  
--- @param open? boolean @`true` to open the tree, `false` to close it.
--- @param useAnim? boolean @If `true`, the DTree's open/close animation is used.
function DFileBrowser:SetOpen(open, useAnim)
end

--- Sets the access path for the file tree. This is set to `GAME` by default.  
--- See file.Read for how paths work.  
--- @param path string @The access path i.e
function DFileBrowser:SetPath(path)
end

--- Sets the search filter for the file tree.  
--- This accepts the same wildcards as file.Find.  
--- @param filter? string @The filter to use on the file tree.
function DFileBrowser:SetSearch(filter)
end

--- Sorts the file list.  
--- ℹ **NOTE**: This is only functional when not using the model viewer. See DFileBrowser:SetModels  
--- @param descending? boolean @The sort order
function DFileBrowser:SortFiles(descending)
end

