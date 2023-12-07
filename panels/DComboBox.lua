--- @class DComboBox
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
--- Selects an option within a combo box based on its table index.  
--- @param index number @Selects the option with given index.
function DComboBox:ChooseOptionID(index)
end

---  client|menu
--- Returns the currently selected option's text and data  
--- @return string @The option's text value.
--- @return any @The option's stored data.
function DComboBox:GetSelected()
end

