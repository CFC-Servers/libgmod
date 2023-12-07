--- @class DForm
local DForm = {}
---  client|menu
--- Adds a DButton onto the DForm  
--- @param text string @The text on the button
--- @param concommand string @The concommand to run when the button is clicked
--- @param ... any ... @The arguments to pass on to the concommand when the button is clicked
--- @return Panel @The created DButton
function DForm:Button(text, concommand, ...)
end

---  client|menu
--- Adds a DComboBox onto the DForm  
--- @param title string @Text to the left of the combo box
--- @param convar string @Console variable to change when the user selects something from the dropdown.
--- @return Panel @The created DComboBox
--- @return Panel @The created DLabel
function DForm:ComboBox(title, convar)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
--- @return number 
function DForm:GetSpacing()
end

