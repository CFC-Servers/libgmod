--- The **DCheckBoxLabel** is a DCheckBox with a DLabel next to it. It allows you to get a boolean value from the user (true/false - yes/no)  
--- @class DCheckBoxLabel : DPanel
local DCheckBoxLabel = {}
--- Gets the checked state of the checkbox. This calls the checkbox's DCheckBox:GetChecked function.  
--- @return boolean @Whether the box is checked or not.
function DCheckBoxLabel:GetChecked()
end

--- Gets the indentation of the element on the X axis.  
--- @return number @How much the content is moved to the right in pixels
function DCheckBoxLabel:GetIndent()
end

--- Called when the "checked" state is changed.  
--- @param bVal boolean @Whether the checkbox is checked or unchecked.
function DCheckBoxLabel:OnChange(bVal)
end

--- 🛑 **DEPRECATED**: You really should be using DCheckBoxLabel:SetTextColor instead  
--- Sets the color of the DCheckBoxLabel's text to the bright text color defined in the skin.  
--- @param bright boolean @true makes the text bright.
--- @deprecated
function DCheckBoxLabel:SetBright(bright)
end

--- Sets the checked state of the checkbox. Does not call DCheckBoxLabel:OnChange or Panel:ConVarChanged, unlike DCheckBoxLabel:SetValue.  
--- @param checked boolean @Whether the box should be checked or not.
function DCheckBoxLabel:SetChecked(checked)
end

--- Sets the console variable to be set when the checked state of the DCheckBoxLabel changes.  
--- @param convar string @The name of the convar to set
function DCheckBoxLabel:SetConVar(convar)
end

--- 🛑 **DEPRECATED**: You really should be using DCheckBoxLabel:SetTextColor instread  
--- Sets the text of the DCheckBoxLabel to be dark colored.  
--- @param darkify boolean @True to be dark, false to be default
--- @deprecated
function DCheckBoxLabel:SetDark(darkify)
end

--- Sets the font of the text part of the DCheckBoxLabel.  
--- @param font string @Font name
function DCheckBoxLabel:SetFont(font)
end

--- Sets the indentation of the element on the X axis.  
--- @param ident number @How much in pixels to move the content to the right
function DCheckBoxLabel:SetIndent(ident)
end

--- Sets the text color for the DCheckBoxLabel.  
--- @param color table @The text color
function DCheckBoxLabel:SetTextColor(color)
end

--- Sets the checked state of the checkbox, and calls DCheckBoxLabel:OnChange and the checkbox's Panel:ConVarChanged methods.  
--- @param checked boolean @Whether the box should be checked or not (1 or 0 can also be used).
function DCheckBoxLabel:SetValue(checked)
end

--- Toggles the checked state of the DCheckBoxLabel.  
function DCheckBoxLabel:Toggle()
end

