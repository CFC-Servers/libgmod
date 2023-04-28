--- A form which may be used to display text the player is meant to select and copy or alternately allow them to enter some text of their own.  
--- ℹ **NOTE**: Do note that at least one of your `DTextEntry`'s parents must either be an EditablePanel or derived from it (like a DFrame, for example), else it won't be able to focus and thus be unselectable.  
--- You must also call Panel:MakePopup on said panel or the `DTextEntry` will not work.  
--- @class DTextEntry : TextEntry
local DTextEntry = {}
---  client
--- Called whenever the value of the panel has been updated (whether by user input or otherwise).  
--- It allows you to determine whether a user can modify the TextEntry's text.  
--- By default, this only checks whether the panel disallows numeric characters, preventing it from being edited if the value contains any.  
--- This is actually an engine hook that only works on TextEntry derived elements.  
--- @param char string @The last character entered into the panel.
--- @return boolean @Return `true` to prevent the value from changing, `false` to allow it.
function DTextEntry:AllowInput(char)
end

---  client
--- Returns whether a string is numeric or not.  
--- Always returns false if the DTextEntry:SetNumeric is set to false.  
--- @param strValue string @The string to check.
--- @return boolean @Whether the string is numeric or not.
function DTextEntry:CheckNumeric(strValue)
end

---  client
--- Called by the DTextEntry when a list of autocompletion options is requested. Meant to be overridden.  
--- @param inputText string @Player's current input.
--- @return table @If a table is returned, the values of the table will show up as autocomplete suggestions for the user.
function DTextEntry:GetAutoComplete(inputText)
end

---  client
--- Returns the cursor color of a DTextEntry.  
--- @return table @The color of the cursor as a Color.
function DTextEntry:GetCursorColor()
end

---  client
--- Returns whether pressing Enter can cause the panel to lose focus. Note that a multiline DTextEntry cannot be escaped using the Enter key even when this function returns true.  
--- @return boolean @Whether pressing the Enter key can cause the panel to lose focus.
function DTextEntry:GetEnterAllowed()
end

---  client
--- Returns the contents of the DTextEntry as a number.  
--- @return number @Text of the DTextEntry as a float, or nil if it cannot be converted to a number using Global.tonumber.
function DTextEntry:GetFloat()
end

---  client
--- Similar to DTextEntry:GetFloat, but rounds the value to the nearest integer.  
--- @return number @Text of the DTextEntry as a round number, or nil if it cannot be converted to a number.
function DTextEntry:GetInt()
end

---  client
--- Returns whether only numeric characters (123456789.-) can be entered into the DTextEntry.  
--- @return boolean @Whether the DTextEntry is numeric or not.
function DTextEntry:GetNumeric()
end

---  client
--- Whether the background is displayed or not  
--- @return boolean @`false` hides the background; this is `true` by default.
function DTextEntry:GetPaintBackground()
end

---  client
--- Return current color of panel placeholder  
--- @return table @Current placeholder color
function DTextEntry:GetPlaceholderColor()
end

---  client
--- Returns the placeholder text set with DTextEntry:SetPlaceholderText.  
--- @return string 
function DTextEntry:GetPlaceholderText()
end

---  client
--- Returns the text color of a DTextEntry.  
--- @return table @The color of the text as a Color.
function DTextEntry:GetTextColor()
end

---  client
--- Returns whether the DTextEntry is set to run DTextEntry:OnValueChange every time a character is typed or deleted or only when Enter is pressed.  
--- @return boolean 
function DTextEntry:GetUpdateOnType()
end

---  client
--- Returns whether this DTextEntry is being edited or not. (i.e. has focus)  
--- @return boolean @Whether this DTextEntry is being edited or not
function DTextEntry:IsEditing()
end

---  client
--- Determines whether or not DTextEntry is in multi-line mode. This is set with DTextEntry:SetMultiline.  
--- @return boolean @Whether the object is in multi-line mode or not.
function DTextEntry:IsMultiline()
end

---  client
--- Called internally by DTextEntry:OnTextChanged when the user modifies the text in the DTextEntry.  
--- You should override this function to define custom behavior when the DTextEntry text changes.  
function DTextEntry:OnChange()
end

---  client
--- Called whenever enter is pressed on a DTextEntry.  
--- ℹ **NOTE**: DTextEntry:IsEditing will still return true in this callback!  
--- @param value string @The current text of the DTextEntry
function DTextEntry:OnEnter(value)
end

---  client
--- Called whenever the DTextEntry gains focus.  
function DTextEntry:OnGetFocus()
end

---  client
--- Called from DTextEntry's TextEntry:OnKeyCodeTyped override whenever a valid character is typed while the text entry is focused.  
--- @param keyCode number @They key code of the key pressed, see Enums/KEY.
function DTextEntry:OnKeyCode(keyCode)
end

---  client
--- Called whenever the DTextEntry lose focus.  
function DTextEntry:OnLoseFocus()
end

---  client
--- Called internally when the text changes of the DTextEntry are applied. (And set to the attached console variable, if one is given)  
--- See also DTextEntry:OnChange for a function that is called on every text change, even if the console variable is not updated.  
--- You should override this function to define custom behavior when the text changes.  
--- This method is called:  
--- * When Enter is pressed after typing  
--- * When DTextEntry:SetValue is used  
--- * For every key typed - only if DTextEntry:SetUpdateOnType was set to true (default is false)  
--- @param value string @The DTextEntry text.
function DTextEntry:OnValueChange(value)
end

---  client
--- Sets the cursor's color in  DTextEntry (the blinking line).  
--- @param color table @The color to set the cursor to.
function DTextEntry:SetCursorColor(color)
end

---  client
--- 🛑 **DEPRECATED**: Use Panel:SetEnabled instead.  
--- Disables input on a DTextEntry and greys it out visually. This differs from DTextEntry:SetEditable which doesn't visually change the textbox.  
--- @param disabled boolean @Whether the textbox should be disabled
--- @deprecated
function DTextEntry:SetDisabled(disabled)
end

---  client
--- Sets the visibility of the language selection box when typing in non-English mode.  
--- See Panel:SetDrawLanguageIDAtLeft for a function that changes the position of the language selection box.  
--- @param visible boolean @true to make it visible, false to hide it.
function DTextEntry:SetDrawLanguageID(visible)
end

---  client
--- Sets where to draw the language selection box.  
--- See Panel:SetDrawLanguageID for a function that hides or shows the language selection box.  
--- @param left boolean @true = left, false = right
function DTextEntry:SetDrawLanguageIDAtLeft(left)
end

---  client
--- Disables Input on a DTextEntry. This differs from DTextEntry:SetDisabled - SetEditable will not affect the appearance of the textbox.  
--- @param enabled boolean @Whether the DTextEntry should be editable
function DTextEntry:SetEditable(enabled)
end

---  client
--- Sets whether pressing the Enter key will cause the DTextEntry to lose focus or not, provided it is not multiline. This is true by default.  
--- @param allowEnter boolean @If set to false, pressing Enter will not cause the panel to lose focus and will never call DTextEntry:OnEnter.
function DTextEntry:SetEnterAllowed(allowEnter)
end

---  client
--- Changes the font of the DTextEntry.  
--- @param font string @The name of the font to be changed to.
function DTextEntry:SetFont(font)
end

---  client
--- Enables or disables the history functionality of  DTextEntry.  
--- @param enable boolean @Whether to enable history or not.
function DTextEntry:SetHistoryEnabled(enable)
end

---  client
--- Enables or disables the multi-line functionality of DTextEntry.  
--- @param multiline boolean @Whether to enable multiline or not.
function DTextEntry:SetMultiline(multiline)
end

---  client
--- Sets whether or not to decline non-numeric characters as input.  
--- Numeric characters are 1234567890.-  
--- @param numericOnly boolean @Whether to accept only numeric characters.
function DTextEntry:SetNumeric(numericOnly)
end

---  client
--- Sets whether to show background.  
--- @param show boolean @`false` hides the background; this is `true` by default.
function DTextEntry:SetPaintBackground(show)
end

---  client
--- Allow you to set placeholder color.  
--- @param color? table @The color of the placeholder.
function DTextEntry:SetPlaceholderColor(color)
end

---  client
--- Sets the placeholder text that will be shown while the text entry has no user text. The player will not need to delete the placeholder text if they decide to start typing.  
--- @param text? string 
function DTextEntry:SetPlaceholderText(text)
end

---  client
--- Sets whether or not the panel accepts tab key.  
--- ℹ **NOTE**: Disabling tab key prevents the panel from unfocusing by mouse, however, still works for focusing to other keyboard focus.  
--- @param enabled boolean @Whether the DTextEntry should ignore tab
function DTextEntry:SetTabbingDisabled(enabled)
end

---  client
--- Sets the text color of the DTextEntry.  
--- @param color table @The text color
function DTextEntry:SetTextColor(color)
end

---  client
--- Sets whether we should fire DTextEntry:OnValueChange every time we type or delete a character or only when Enter is pressed.  
--- @param updateOnType boolean 
function DTextEntry:SetUpdateOnType(updateOnType)
end

---  client
--- Sets the text of the DTextEntry and calls DTextEntry:OnValueChange.  
--- ℹ **NOTE**: The text of the DTextEntry only changes if it's not currently being typed in. If you would rather set the text regardless, use Panel:SetText.  
--- @param text string @The value to set.
function DTextEntry:SetValue(text)
end

