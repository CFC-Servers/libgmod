--- A simple Derma Drawer  
--- @class DDrawer : Panel
local DDrawer = {}
---  client
--- Closes the DDrawer.  
function DDrawer:Close()
end

---  client
--- Return the Open Size of DDrawer.  
--- @return number @Open size.
function DDrawer:GetOpenSize()
end

---  client
--- Return the Open Time of DDrawer.  
--- @return number @Time in seconds.
function DDrawer:GetOpenTime()
end

---  client
--- Opens the DDrawer.  
function DDrawer:Open()
end

---  client
--- Set the height of DDrawer  
--- @param Value number @Height of DDrawer
function DDrawer:SetOpenSize(Value)
end

---  client
--- Set the time (in seconds) for DDrawer to open.  
--- @param value number @Length in seconds
function DDrawer:SetOpenTime(value)
end

---  client
--- Toggles the DDrawer.  
function DDrawer:Toggle()
end

