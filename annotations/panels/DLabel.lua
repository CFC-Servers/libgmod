--- A standard Derma text label. A lot of this panels functionality is a base for button elements, such as DButton  
--- Does not support multiline text.  
--- @class DLabel : Label
local DLabel = {}
---  client|menu
--- Called when the label is left clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- This can be overridden; by default, it calls DLabel:Toggle.  
--- See also DLabel:DoRightClick, DLabel:DoMiddleClick and DLabel:DoDoubleClick.  
function DLabel:DoClick()
end

---  client|menu
--- Called just before DLabel:DoClick.  
--- In DLabel does nothing and is safe to override. Used by DMenuOption and DCollapsibleCategory's tabs.  
function DLabel:DoClickInternal()
end

---  client|menu
--- Called when the label is double clicked by the player with left clicks.  
--- DLabel:SetDoubleClickingEnabled must be set to true for this hook to work, which it is by default.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased and DLabel:DoClick.  
--- See also DLabel:DoRightClick and DLabel:DoMiddleClick.  
function DLabel:DoDoubleClick()
end

---  client|menu
--- Called just before DLabel:DoDoubleClick. In DLabel does nothing and is safe to override.  
function DLabel:DoDoubleClickInternal()
end

---  client|menu
--- Called when the label is middle mouse (Mouse wheel, also known as mouse 3) clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- See also DLabel:DoClick, DLabel:DoRightClick and DLabel:DoDoubleClick.  
function DLabel:DoMiddleClick()
end

---  client|menu
--- Called when the label is right clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick and DLabel:DoDoubleClick.  
function DLabel:DoRightClick()
end

---  client|menu
--- Returns whether the label stretches vertically or not.  
--- Set by DLabel:SetAutoStretchVertical.  
--- @return boolean @Whether the label stretches vertically or not.
function DLabel:GetAutoStretchVertical()
end

---  client|menu
--- Returns whether the DLabel should set its text color to the current skin's bright text color.  
--- See DLabel:SetBright.  
--- @return boolean 
function DLabel:GetBright()
end

---  client|menu
--- Returns the actual color of the text.  
--- See also DLabel:GetTextColor and DLabel:GetTextStyleColor.  
--- @return table @The the actual color of the text.
function DLabel:GetColor()
end

---  client|menu
--- Returns whether the DLabel should set its text color to the current skin's dark text color.  
--- See DLabel:SetDark.  
--- @return boolean 
function DLabel:GetDark()
end

---  client|menu
--- 🛑 **DEPRECATED**: Use Panel:IsEnabled instead.  
--- Gets the disabled state of the DLabel. This is set with DLabel:SetDisabled.  
--- @deprecated
--- @return boolean @The disabled state of the label.
function DLabel:GetDisabled()
end

---  client|menu
--- Returns whether or not double clicking will call DLabel:DoDoubleClick.  
--- See DLabel:SetDoubleClickingEnabled.  
--- @return boolean @true = enabled, false means disabled
function DLabel:GetDoubleClickingEnabled()
end

---  client|menu
--- 🛑 **DEPRECATED**: You should use DLabel:GetPaintBackground instead.  
--- Returns whether or not the panel background is being drawn. Alias of DLabel:GetPaintBackground.  
--- @deprecated
--- @return boolean @True if the panel background is drawn, false otherwise.
function DLabel:GetDrawBackground()
end

---  client|menu
--- Returns the current font of the DLabel. This is set with DLabel:SetFont.  
--- @return string @The name of the font in use.
function DLabel:GetFont()
end

---  client|menu
--- Returns whether the DLabel should set its text color to the current skin's highlighted text color.  
--- See DLabel:SetHighlight.  
--- @return boolean 
function DLabel:GetHighlight()
end

---  client|menu
--- Used internally by DComboBox.  
--- Returns whether the frame is part of a derma menu or not.  
--- If this is `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @return boolean @Whether this panel is a Menu Component
function DLabel:GetIsMenu()
end

---  client|menu
--- Returns whether the toggle functionality is enabled for a label. Set with DLabel:SetIsToggle.  
--- @return boolean @Whether or not toggle functionality is enabled.
function DLabel:GetIsToggle()
end

---  client|menu
--- Returns whether or not the background should be painted.  
--- @return boolean @If the background is painted or not
function DLabel:GetPaintBackground()
end

---  client|menu
--- Returns the "override" text color, set by DLabel:SetTextColor.  
--- @return table @The color of the text, or nil.
function DLabel:GetTextColor()
end

---  client|menu
--- Returns the current toggle state of the label. This can be set with DLabel:SetToggle and toggled with DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @return boolean @The current toggle state.
function DLabel:GetToggle()
end

---  client|menu
--- Called when the player presses the label with any mouse button.  
--- This works as an alternative to PANEL:OnMousePressed as that hook is used heavily by DLabel and overriding it will break functionality.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick, DLabel:DoRightClick, DLabel:OnReleased and DLabel:DoDoubleClick.  
function DLabel:OnDepressed()
end

---  client|menu
--- Called when the player releases any mouse button on the label. This is always called after DLabel:OnDepressed.  
--- This works as an alternative to PANEL:OnMouseReleased as that hook is used heavily by DLabel and overriding it will break functionality.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick, DLabel:DoRightClick and DLabel:DoDoubleClick.  
function DLabel:OnReleased()
end

---  client|menu
--- Called when the toggle state of the label is changed by DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @param toggleState boolean @The new toggle state.
function DLabel:OnToggled(toggleState)
end

---  client|menu
--- Automatically adjusts the height of the label dependent of the height of the text inside of it.  
--- @param stretch boolean @Whenever to stretch the label vertically or not.
function DLabel:SetAutoStretchVertical(stretch)
end

---  client|menu
--- Sets the color of the text to the bright text color defined in the skin.  
--- Disables DLabel:SetDark. Gets overridden by DLabel:SetHighlight.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. Otherwise use DLabel:SetTextColor.  
--- @param bright boolean @Whenever to set the text to bright or not.
function DLabel:SetBright(bright)
end

---  client|menu
--- Changes color of label. Alias of DLabel:SetTextColor.  
--- @param color table @The color to set
function DLabel:SetColor(color)
end

---  client|menu
--- Sets the color of the text to the dark text color defined in the skin.  
--- Disables DLabel:SetBright. Gets overridden by DLabel:SetHighlight.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. Otherwise use DLabel:SetTextColor.  
--- @param dark boolean @Whenever to set the text to dark or not.
function DLabel:SetDark(dark)
end

---  client|menu
--- 🛑 **DEPRECATED**: Use Panel:SetEnabled instead.  
--- Sets the disabled state of the DLabel.  
--- When disabled, the label does not respond to click, toggle or drag &amp; drop actions.  
--- @param disable boolean @`true` to disable the DLabel, `false` to enable it.
--- @deprecated
function DLabel:SetDisabled(disable)
end

---  client|menu
--- Sets whether or not double clicking should call DLabel:DoDoubleClick.  
--- This is enabled by default.  
--- @param enable boolean @true to enable, false to disable
function DLabel:SetDoubleClickingEnabled(enable)
end

---  client|menu
--- 🛑 **DEPRECATED**: You should use DLabel:SetPaintBackground instead.  
--- Sets whether or not to draw the panel background. Alias of DLabel:SetPaintBackground.  
--- @param draw boolean @True to show the panel's background, false to hide it.
--- @deprecated
function DLabel:SetDrawBackground(draw)
end

---  client|menu
--- Sets the font of the label.  
--- @param fontName string @The name of the font
function DLabel:SetFont(fontName)
end

---  client|menu
--- Sets the color of the text to the highlight text color defined in the skin.  
--- For the default Derma skin this makes the label red.  
--- Overrides colors set by both DLabel:SetBright and DLabel:SetDark while active.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. Otherwise use DLabel:SetTextColor.  
--- @param highlight boolean @true to set the label's color to skins's text highlight color, false otherwise.
function DLabel:SetHighlight(highlight)
end

---  client|menu
--- Used internally by DComboBox.  
--- Sets whether the frame is part of a derma menu or not.  
--- If this is set to `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @param isMenu boolean @Whether this pane is a Menu Component
function DLabel:SetIsMenu(isMenu)
end

---  client|menu
--- Enables or disables toggle functionality for a label. Retrieved with DLabel:GetIsToggle.  
--- You must call this before using DLabel:SetToggle, DLabel:GetToggle or DLabel:Toggle.  
--- @param allowToggle boolean @Whether or not to enable toggle functionality.
function DLabel:SetIsToggle(allowToggle)
end

---  client|menu
--- Sets whether or not the background should be painted. This is mainly used by derivative classes, such as DButton.  
--- @param paint boolean 
function DLabel:SetPaintBackground(paint)
end

---  client|menu
--- Sets the text color of the DLabel. This will take precedence over DLabel:SetTextStyleColor.  
--- @param color table @The text color
function DLabel:SetTextColor(color)
end

---  client|menu
--- Sets the toggle state of the label. This can be retrieved with DLabel:GetToggle and toggled with DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @param toggleState boolean @The toggle state to be set.
function DLabel:SetToggle(toggleState)
end

---  client|menu
--- Toggles the label's state. This can be set and retrieved with DLabel:SetToggle and DLabel:GetToggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
function DLabel:Toggle()
end

---  client|menu
--- A hook called from within PANEL:ApplySchemeSettings to determine the color of the text on display.  
--- @param skin table @A table supposed to contain the color values listed above.
function DLabel:UpdateColours(skin)
end

