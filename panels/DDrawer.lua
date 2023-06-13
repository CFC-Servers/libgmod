--- A simple Derma Drawer  
--- @class DDrawer : Panel
local DDrawer = {}
---  client|menu
--- Closes the DDrawer.  
function DDrawer:Close()
end

---  client|menu
--- Return the Open Size of DDrawer.  
--- @return number @Open size.
function DDrawer:GetOpenSize()
end

---  client|menu
--- Return the Open Time of DDrawer.  
--- @return number @Time in seconds.
function DDrawer:GetOpenTime()
end

---  client|menu
--- Opens the DDrawer.  
function DDrawer:Open()
end

---  client|menu
--- Set the height of DDrawer  
--- @param Value number @Height of DDrawer
function DDrawer:SetOpenSize(Value)
end

---  client|menu
--- Set the time (in seconds) for DDrawer to open.  
--- @param value number @Length in seconds
function DDrawer:SetOpenTime(value)
end

---  client|menu
--- Toggles the DDrawer.  
function DDrawer:Toggle()
end

