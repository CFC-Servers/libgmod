--- Basic text input field. See DTextEntry for a more advanced version.  
--- @class TextEntry : Panel
local TextEntry = {}
---  client|menu
--- Called from engine whenever a valid character is typed while the text entry is focused.  
--- Used internally for functionality of DTextEntry  
--- @param keyCode number @They key code of the key pressed, see Enums/KEY.
--- @return boolean @Whether you've handled the key press
function TextEntry:OnKeyCodeTyped(keyCode)
end

---  client|menu
--- Called when the text inside the TextEntry changes.  
--- You may be looking for DTextEntry:OnValueChange instead.  
function TextEntry:OnTextChanged()
end

