--- Simply a DIconLayout which automatically displays all of the Silkicons.  
--- Used as a way to get the user to select an icon.  
--- @class DIconBrowser : DScrollPanel
local DIconBrowser = {}
---  client|menu
--- A simple unused search feature, hides all icons that do not contain given text in their file path.  
--- @param text string @The text to search for
function DIconBrowser:FilterByText(text)
end

---  client|menu
--- Returns whether or not the browser should fill itself with icons.  
--- @return boolean 
function DIconBrowser:GetManual()
end

---  client|menu
--- Returns the currently selected icon's file path.  
--- @return string @The currently selected icon's file path.
function DIconBrowser:GetSelectedIcon()
end

---  client|menu
--- Called when the selected icon was changed. Use DIconBrowser:GetSelectedIcon to get the selected icon's filepath.  
function DIconBrowser:OnChange()
end

---  client|menu
--- Scrolls the browser to the selected icon  
function DIconBrowser:ScrollToSelected()
end

---  client|menu
--- Selects an icon from file path  
--- @param icon string @The file path of the icon to select
function DIconBrowser:SelectIcon(icon)
end

---  client|menu
--- Sets whether or not the browser should automatically fill itself with icons.  
--- @param manual boolean 
function DIconBrowser:SetManual(manual)
end

