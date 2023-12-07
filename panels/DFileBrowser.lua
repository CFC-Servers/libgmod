--- @class DFileBrowser
local DFileBrowser = {}
---  client
--- Returns the root directory/folder of the file tree.  
--- @return string @The path to the root folder.
function DFileBrowser:GetBaseFolder()
end

---  client
--- Returns the name being used for the file tree.  
--- @return string @The name used for the root of the file tree.
function DFileBrowser:GetName()
end

---  client
--- Returns whether or not the file tree is open.  
--- @return boolean @Whether or not the file tree is open.
function DFileBrowser:GetOpen()
end

---  client
--- Returns the current search filter on the file tree.  
--- @return string @The filter in use on the file tree.
function DFileBrowser:GetSearch()
end

---  client
--- Sets the directory/folder from which to display the file list.  
--- @param currentDir string @The directory to display files from.
function DFileBrowser:SetCurrentFolder(currentDir)
end

---  client
--- Sets the name to use for the file tree.  
--- @param treeName? string @The name for the root of the file tree
function DFileBrowser:SetName(treeName)
end

---  client
--- Sets the access path for the file tree. This is set to `GAME` by default.  
--- See file.Read for how paths work.  
--- @param path string @The access path i.e
function DFileBrowser:SetPath(path)
end

---  client
--- Sets the search filter for the file tree.  
--- This accepts the same wildcards as file.Find.  
--- @param filter? string @The filter to use on the file tree.
function DFileBrowser:SetSearch(filter)
end

