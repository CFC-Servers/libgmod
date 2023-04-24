--- An editable DLabel, double click on it to edit.  
--- This is used in the spawnmenu spawnlist headers.  
--- @class DLabelEditable : DLabel
local DLabelEditable = {}
--- Returns whether the editable label will stretch to the text entered or not.  
--- @return boolean @Whether the editable label will stretch to the text entered or not.
function DLabelEditable:GetAutoStretch()
end

--- A hook called when the player presses Enter (i.e. the finished editing the label) and the text has changed.  
--- Allows you to override/modify the text that will be set to display.  
--- @param txt string @The original user input text
--- @return string @If provided, will override the text that will be applied to the label itself.
function DLabelEditable:OnLabelTextChanged(txt)
end

--- Sets whether the editable label should stretch to the text entered or not.  
--- @param stretch boolean @Whether the editable label should stretch to the text entered or not.
function DLabelEditable:SetAutoStretch(stretch)
end

