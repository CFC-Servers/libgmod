--- A field with multiple selectable values.  
--- @class DComboBox : DButton
local DComboBox = {}
--- Adds a choice to the combo box.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:142:162
--- @param value string @The text show to the user.
--- @param data? any @The data accompanying this string
--- @param select? boolean @Should this be the default selected text show to the user or not.
--- @param icon? string @Adds an icon for this choice.
--- @return number @The index of the new option.
function DComboBox:AddChoice(value, data, select, icon)
end

--- Adds a spacer below the currently last item in the drop down. Recommended to use with DComboBox:SetSortItems set to `false`.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:136:140
function DComboBox:AddSpacer()
end

--- Selects a combo box option by its index and changes the text displayed at the top of the combo box.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:86:101
--- @param value string @The text to display at the top of the combo box.
--- @param index number @The option index.
function DComboBox:ChooseOption(value, index)
end

--- Selects an option within a combo box based on its table index.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:103:108
--- @param index number @Selects the option with given index.
function DComboBox:ChooseOptionID(index)
end

--- Clears the combo box's text value, choices, and data values.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:27:41
function DComboBox:Clear()
end

--- Closes the combo box menu. Called when the combo box is clicked while open.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:232:238
function DComboBox:CloseMenu()
end

--- Returns an option's data based on the given index.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:49:53
--- @param index number @The option index.
--- @return any @The option's data value.
function DComboBox:GetOptionData(index)
end

--- Returns an option's text based on the given index.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:43:47
--- @param index number @The option index.
--- @return string @The option's text value.
function DComboBox:GetOptionText(index)
end

--- Returns an option's text based on the given data.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:55:73
--- @param data string @The data to look up the name of
--- @return string @The option's text value
function DComboBox:GetOptionTextByData(data)
end

--- Returns the currently selected option's text and data  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:116:122
--- @return string @The option's text value.
--- @return any @The option's stored data.
function DComboBox:GetSelected()
end

--- Returns the index (ID) of the currently selected option.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:110:114
--- @return number @The ID of the currently selected option.
function DComboBox:GetSelectedID()
end

--- Returns an whether the items in the dropdown will be alphabetically sorted or not.  
--- See DComboBox:SetSortItems.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:8
--- @return boolean @True if enabled, false otherwise.
function DComboBox:GetSortItems()
end

--- Returns whether or not the combo box's menu is opened.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:164:168
--- @return boolean @True if the menu is open, false otherwise.
function DComboBox:IsMenuOpen()
end

--- Called when the player opens the dropdown menu.  
--- @param menu Panel @The DMenu menu panel.
function DComboBox:OnMenuOpened(menu)
end

--- Called when an option in the combo box is selected. This function does nothing by itself, you're supposed to overwrite it.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:124:128
--- @param index number @The index of the option for use with other DComboBox functions.
--- @param value string @The name of the option.
--- @param data any @The data assigned to the option.
function DComboBox:OnSelect(index, value, data)
end

--- Opens the combo box drop down menu. Called when the combo box is clicked.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:170:230
function DComboBox:OpenMenu()
end

--- Sets whether or not the items should be sorted alphabetically in the dropdown menu of the DComboBox. If set to false, items will appear in the order they were added by DComboBox:AddChoice calls.  
--- This is enabled by default.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:8
--- @param sort boolean @true to enable, false to disable
function DComboBox:SetSortItems(sort)
end

--- Sets the text shown in the combo box when the menu is not collapsed.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dcombobox.lua:260:264
--- @param value string @The text in the DComboBox.
function DComboBox:SetValue(value)
end

