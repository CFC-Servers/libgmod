--- An easy form with functions to quickly add form elements  
--- @class DForm : DCollapsibleCategory
local DForm = {}
---  client|menu
--- Adds one or two items to the DForm.  
--- If this method is called with only one argument, it is added to the bottom of the form. If two arguments are passed, they are placed side-by-side at the bottom of the form.  
--- Internally, this function is used by the various DForm functions to, for example, add labels to the left of buttons.  
--- @param left Panel @Left-hand element to add to the DForm.
--- @param right? Panel @Right-hand element to add to the DForm.
function DForm:AddItem(left, right)
end

---  client|menu
--- Adds a DButton onto the DForm  
--- @param text string @The text on the button
--- @param concommand string @The concommand to run when the button is clicked
--- @param ... any ... @The arguments to pass on to the concommand when the button is clicked
--- @return Panel @The created DButton
function DForm:Button(text, concommand, ...)
end

---  client|menu
--- Adds a DCheckBoxLabel onto the DForm.  
--- ℹ **NOTE**: This will run DCheckBoxLabel:OnChange when being added. This is caused by Panel:SetConVar being used when this function is used. To avoid this, use DForm:AddItem with a DCheckBoxLabel.  
--- @param label string @The label to be set next to the check box
--- @param convar string @The console variable to change when this is changed
--- @return Panel @The created DCheckBoxLabel
function DForm:CheckBox(label, convar)
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
--- Adds a DLabel onto the DForm. Unlike DForm:Help, this is indented and is colored blue, depending on the derma skin.  
--- @param help string @The help message to be displayed.
--- @return Panel @The created DLabel
function DForm:ControlHelp(help)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- An Accessor Function in DForm that does nothing.  
--- @deprecated
--- @return boolean 
function DForm:GetAutoSize()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that does nothing.  
--- @deprecated
--- @return number 
function DForm:GetSpacing()
end

---  client|menu
--- Adds a DLabel onto the DForm as a helper  
--- @param help string @The help message to be displayed
--- @return Panel @The created DLabel
function DForm:Help(help)
end

---  client|menu
--- Adds a DListBox onto the DForm  
--- 🛑 **DEPRECATED**: Use DListView with DForm:AddItem instead.  
--- @param label string @The label to set on the DListBox
--- @deprecated
--- @return Panel @The created DListBox
--- @return Panel @The created DLabel
function DForm:ListBox(label)
end

---  client|menu
--- Adds a DNumSlider onto the DForm  
--- @param label string @The label of the DNumSlider
--- @param convar string @The console variable to change when the slider is changed
--- @param min number @The minimum value of the slider
--- @param max number @The maximum value of the slider
--- @param decimals? number @The number of decimals to allow on the slider
--- @return Panel @The created DNumSlider
function DForm:NumSlider(label, convar, min, max, decimals)
end

---  client|menu
--- Adds a DNumberWang onto the DForm  
--- @param label string @The label to be placed next to the DNumberWang
--- @param convar string @The console variable to change when the slider is changed
--- @param min number @The minimum value of the slider
--- @param max number @The maximum value of the slider
--- @param decimals? number @The number of decimals to allow in the slider (Optional)
--- @return Panel @The created DNumberWang
--- @return Panel @The created DLabel
function DForm:NumberWang(label, convar, min, max, decimals)
end

---  client|menu
--- 🛑 **DEPRECATED**: This is derived from the deprecated DPanelSelect.  
--- Creates a DPanelSelect and docks it to the top of the DForm.  
--- @deprecated
--- @return Panel @The created DPanelSelect.
function DForm:PanelSelect()
end

---  client|menu
--- Creates a PropSelect panel and docks it to the top of the DForm.  
--- @param label string @The label to display above the prop select.
--- @param convar string @The convar to set the selected model to.
--- @param models table @A table of models to display for selection
--- @param height? number @The height of the prop select panel, in 64px icon increments.
--- @return Panel @The created PropSelect panel.
function DForm:PropSelect(label, convar, models, height)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- Does nothing.  
--- @deprecated
function DForm:Rebuild()
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- an Global.AccessorFunc that does nothing  
--- @param arg1 boolean 
--- @deprecated
function DForm:SetAutoSize(arg1)
end

---  client|menu
--- Sets the title (header) name of the DForm. This is `Label` until set.  
--- 🛑 **DEPRECATED**: This is an alias of derived DCollapsibleCategory:SetLabel  
--- @param name string @The new header name.
--- @deprecated
function DForm:SetName(name)
end

---  client|menu
--- 🛑 **DEPRECATED**:   
--- An Global.AccessorFunc that does nothing.  
--- @param arg1 number 
--- @deprecated
function DForm:SetSpacing(arg1)
end

---  client|menu
--- Adds a DTextEntry to a DForm  
--- @param label string @The label to be next to the text entry
--- @param convar string @The console variable to be changed when the text entry is changed
--- @return Panel @The created DTextEntry
--- @return Panel @The created DLabel
function DForm:TextEntry(label, convar)
end

