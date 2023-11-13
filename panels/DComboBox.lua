--- A field with multiple selectable values.  
--- @class DComboBox : DButton
local DComboBox = {}
---  client|menu
--- Adds a choice to the combo box.  
--- @param value string @The text show to the user.
--- @param data? any @The data accompanying this string
--- @param select? boolean @Should this be the default selected text show to the user or not.
--- @param icon? string @Adds an icon for this choice.
--- @return number @The index of the new option.
function DComboBox:AddChoice(value, data, select, icon)
end

---  client|menu
--- Adds a spacer below the currently last item in the drop down. Recommended to use with DComboBox:SetSortItems set to `false`.  
function DComboBox:AddSpacer()
end

---  client|menu
--- Selects a combo box option by its index and changes the text displayed at the top of the combo box.  
--- @param value string @The text to display at the top of the combo box.
--- @param index number @The option index.
function DComboBox:ChooseOption(value, index)
end

---  client|menu
--- Selects an option within a combo box based on its table index.  
--- @param index number @Selects the option with given index.
function DComboBox:ChooseOptionID(index)
end

---  client|menu
--- Clears the combo box's text value, choices, and data values.  
function DComboBox:Clear()
end

---  client|menu
--- Closes the combo box menu. Called when the combo box is clicked while open.  
function DComboBox:CloseMenu()
end

---  client|menu
--- Returns an option's data based on the given index.  
--- @param index number @The option index.
--- @return any @The option's data value.
function DComboBox:GetOptionData(index)
end

---  client|menu
--- Returns an option's text based on the given index.  
--- @param index number @The option index.
--- @return string @The option's text value.
function DComboBox:GetOptionText(index)
end

---  client|menu
--- Returns an option's text based on the given data.  
--- @param data string @The data to look up the name of
--- @return string @The option's text value
function DComboBox:GetOptionTextByData(data)
end

---  client|menu
--- Returns the currently selected option's text and data  
--- @return string @The option's text value.
--- @return any @The option's stored data.
function DComboBox:GetSelected()
end

---  client|menu
--- Returns the index (ID) of the currently selected option.  
--- @return number @The ID of the currently selected option.
function DComboBox:GetSelectedID()
end

---  client|menu
--- Returns an whether the items in the dropdown will be alphabetically sorted or not.  
--- See DComboBox:SetSortItems.  
--- @return boolean @True if enabled, false otherwise.
function DComboBox:GetSortItems()
end

---  client|menu
--- Returns whether or not the combo box's menu is opened.  
--- @return boolean @True if the menu is open, false otherwise.
function DComboBox:IsMenuOpen()
end

---  client|menu
--- Called when the player opens the dropdown menu.  
--- @param menu Panel @The DMenu menu panel.
function DComboBox:OnMenuOpened(menu)
end

---  client|menu
--- Called when an option in the combo box is selected. This function does nothing by itself, you're supposed to overwrite it.  
--- @param index number @The index of the option for use with other DComboBox functions.
--- @param value string @The name of the option.
--- @param data any @The data assigned to the option.
function DComboBox:OnSelect(index, value, data)
end

---  client|menu
--- Opens the combo box drop down menu. Called when the combo box is clicked.  
function DComboBox:OpenMenu()
end

---  client|menu
--- Called when the player opens the dropdown menu.  
--- @param index number @The index of the option to remove.
--- @return string @The text of the removed option.
--- @return any @The data of the removed option that was provided.
function DComboBox:RemoveChoice(index)
end

---  client|menu
--- Sets whether or not the items should be sorted alphabetically in the dropdown menu of the DComboBox. If set to false, items will appear in the order they were added by DComboBox:AddChoice calls.  
--- This is enabled by default.  
--- @param sort boolean @true to enable, false to disable
function DComboBox:SetSortItems(sort)
end

---  client|menu
--- Sets the text shown in the combo box when the menu is not collapsed.  
--- @param value string @The text in the DComboBox.
function DComboBox:SetValue(value)
end

