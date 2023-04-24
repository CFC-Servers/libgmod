--- <internal></internal> DComboBox control for a DProperties panel.  
--- @class DProperty_Combo : DProperty_Generic
local DProperty_Combo = {}
--- Add a choice to your combo control.  
--- @param Text string @Shown text.
--- @param data any @Stored Data.
--- @param select? boolean @Select this element?
function DProperty_Combo:AddChoice(Text, data, select)
end

--- Called after the user selects a new value.  
--- @param data any @The new data that was selected.
function DProperty_Combo:DataChanged(data)
end

--- Set the selected option.  
--- @param Id number @Id of the choice to be selected.
function DProperty_Combo:SetSelected(Id)
end

