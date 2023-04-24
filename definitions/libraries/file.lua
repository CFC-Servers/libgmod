--- The file library provides functions for finding, reading and writing to files.   
--- The following path values are most commonly used:  
--- * `LUA` searches the lua files (in /lua/, in your gamemodes, in all the addons).  
--- * `GAME` searches all the mounted content (main folder, addons, mounted games etc).  
--- * `MOD` searches only the garrysmod folder.  
--- * `DATA` searches in the data folder.  
--- See File Search Paths for the descriptive list of path values.  
--- For the full list of path values, type `path` in the console.  
_G.file = {}
--- Appends a file relative to the `data` folder.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/file.lua:31:39
--- @param name string @The file's name.
--- @param content string @The content which should be appended to the file.
function file.Append(name, content)
end

--- Returns the content of a file asynchronously.  
--- All limitations of file.Read also apply.  
--- ℹ **NOTE**: This function is currently broken in the Menu State and won't be fixed. [Bug Report](https://github.com/Facepunch/garrysmod-issues/issues/5433)  
--- @param fileName string @The name of the file.
--- @param gamePath string @The path to look for the files and directories in
--- @param callback function @A callback function that will be called when the file read operation finishes
--- @param sync? boolean @If `true` the file will be read synchronously.
--- @return number @FSASYNC_OK on success, FSASYNC_ERR_ on failure.
function file.AsyncRead(fileName, gamePath, callback, sync)
end

--- Creates a directory that is relative to the `data` folder.  
--- @param name string @The directory's name.
function file.CreateDir(name)
end

--- Deletes a file or `empty` folder that is relative to the **data** folder. You can't remove any files outside of **data** folder.  
--- @param name string @The file name.
function file.Delete(name)
end

--- Returns a boolean of whether the file or directory exists or not.  
--- 🦟 **BUG**: [ This will sometimes return false clientside for directories received from the server via a clientside lua file. You can work around this by using file.Find with the path to the directory followed by a wildcard (no trailing forward slash) and see if the directory is inside the returned directories table (**see second example)**.](https://github.com/Facepunch/garrysmod-issues/issues/1038)  
--- @param name string @The file or directory's name.
--- @param gamePath string @The path to look for the files and directories in
--- @return boolean @Returns `true` if the file exists and `false` if it does not.
function file.Exists(name, gamePath)
end

--- Returns a list of files and directories inside a single folder.  
--- @param name string @The wildcard to search for
--- @param path string @The path to look for the files and directories in
--- @param sorting? string @The sorting to be used, **optional**
--- @return table @A table of found files, or `nil` if the path is invalid
--- @return table @A table of found directories, or `nil` if the path is invalid
function file.Find(name, path, sorting)
end

--- Returns whether the given file is a directory or not.  
--- 🦟 **BUG**: [ This will sometimes return false clientside for directories received from the server via a clientside lua file. You can work around this by using file.Find with the path to the directory followed by a wildcard (no trailing forward slash) and see if the directory is inside the returned directories table (**see second example)**.](https://github.com/Facepunch/garrysmod-issues/issues/1038)  
--- @param fileName string @The file or directory's name.
--- @param gamePath string @The path to look for the files and directories in
--- @return boolean @`true` if the given path is a directory or `false` if it's a file.
function file.IsDir(fileName, gamePath)
end

--- Attempts to open a file with the given mode.  
--- @param fileName string @The files name
--- @param fileMode string @The mode to open the file in
--- @param gamePath string @The path to look for the files and directories in
--- @return file_class @The opened file object, or `nil` if it failed to open due to it not existing or being used by another process.
function file.Open(fileName, fileMode, gamePath)
end

--- Returns the content of a file.  
--- ⚠ **WARNING**: Beware of casing -- some filesystems are case-sensitive. SRCDS on Linux seems to force file/directory creation to lowercase, but will not modify read operations.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/file.lua:4:19
--- @param fileName string @The name of the file.
--- @param gamePath? string @The path to look for the files and directories in
--- @return string @The data from the file as a string, or `nil` if the file isn't found.
function file.Read(fileName, gamePath)
end

--- Attempts to rename a file with the given name to another given name.  
--- This function is constrained to the `data/` folder.  
--- @param orignalFileName string @The original file or folder name
--- @param targetFileName string @The target file or folder name
--- @return boolean @`true` on success, `false` otherwise.
function file.Rename(orignalFileName, targetFileName)
end

--- Returns the file's size in bytes. If the file is not found, returns `-1`.  
--- @param fileName string @The file's name.
--- @param gamePath string @The path to look for the files and directories in
function file.Size(fileName, gamePath)
end

--- Returns when the file or folder was last modified in Unix time.  
--- @param path string @The **file** or **folder** path.
--- @param gamePath string @The path to look for the files and directories in
--- @return number @Seconds passed since Unix epoch.
function file.Time(path, gamePath)
end

--- Writes the given string to a file. Erases all previous data in the file. To add data without deleting previous data, use file.Append.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/includes/extensions/file.lua:21:29
--- @param fileName string @The name of the file being written into
--- @param content string @The content that will be written into the file.
function file.Write(fileName, content)
end
