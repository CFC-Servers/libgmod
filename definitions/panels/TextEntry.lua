--- Basic text input field.  
--- @class TextEntry : Panel
local TextEntry = {}
--- Called from engine whenever a valid character is typed while the text entry is focused.  
--- Used internally for functionality of DTextEntry  
--- @param keyCode number @They key code of the key pressed, see Enums/KEY.
--- @return boolean @Whether you've handled the key press
function TextEntry:OnKeyCodeTyped(keyCode)
end

