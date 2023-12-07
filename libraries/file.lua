_G.file = {}
---  menu|client|server
--- Appends a file relative to the `data` folder.  
--- @param name string @The file's name.
--- @param content string @The content which should be appended to the file.
function file.Append(name, content)
end

---  menu|client|server
--- Returns whether the given file is a directory or not.  
--- @param fileName string @The file or directory's name.
--- @param gamePath string @The path to look for the files and directories in
--- @return boolean @`true` if the given path is a directory or `false` if it's a file.
function file.IsDir(fileName, gamePath)
end

---  menu|client|server
--- Attempts to open a file with the given mode.  
--- @param fileName string @The files name
--- @param fileMode string @The mode to open the file in
--- @param gamePath string @The path to look for the files and directories in
--- @return file_class @The opened file object, or `nil` if it failed to open due to it not existing or being used by another process.
function file.Open(fileName, fileMode, gamePath)
end

