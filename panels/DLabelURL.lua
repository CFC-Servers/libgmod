--- Underlined link label without a DoClick function. When a valid URL is set and the label is clicked, it will open a browser window and navigate to the address.  
--- This panel uses gui.OpenURL internally and its restrictions apply.  
--- @class DLabelURL : URLLabel
local DLabelURL = {}
---  client
--- Gets the current text color of the DLabelURL. Alias as DLabelURL:GetTextColor.  
--- @return table @The current text Global.Color.
function DLabelURL:GetColor()
end

---  client
--- Gets the current text color of the DLabelURL set by DLabelURL:SetTextColor.  
--- @return table @The current text Global.Color.
function DLabelURL:GetTextColor()
end

---  client
--- Returns the color set by DLabelURL:SetTextStyleColor.  
--- @return table @The Color
function DLabelURL:GetTextStyleColor()
end

---  client
--- Alias of DLabelURL:SetTextColor.  
--- @param col table @The Global.Color to use.
function DLabelURL:SetColor(col)
end

---  client
--- Sets the text color of the DLabelURL. Overrides DLabelURL:SetTextStyleColor.  
--- This should only be used immediately after it is created, and otherwise Panel:SetFGColor.  
--- @param col table @The Global.Color to use.
function DLabelURL:SetTextColor(col)
end

---  client
--- Sets the base text color of the DLabelURL. This is overridden by DLabelURL:SetTextColor.  
--- @param color table @The Global.Color to set
function DLabelURL:SetTextStyleColor(color)
end

