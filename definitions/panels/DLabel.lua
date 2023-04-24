--- A standard Derma text label. A lot of this panels functionality is a base for button elements, such as DButton  
--- @class DLabel : Label
local DLabel = {}
--- Called when the label is left clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- This can be overridden; by default, it calls DLabel:Toggle.  
--- See also DLabel:DoRightClick, DLabel:DoMiddleClick and DLabel:DoDoubleClick.  
function DLabel:DoClick()
end

--- Called just before DLabel:DoClick.  
--- In DLabel does nothing and is safe to override. Used by DMenuOption and DCollapsibleCategory's tabs.  
function DLabel:DoClickInternal()
end

--- Called when the label is double clicked by the player with left clicks.  
--- DLabel:SetDoubleClickingEnabled must be set to true for this hook to work, which it is by default.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased and DLabel:DoClick.  
--- See also DLabel:DoRightClick and DLabel:DoMiddleClick.  
function DLabel:DoDoubleClick()
end

--- Called just before DLabel:DoDoubleClick. In DLabel does nothing and is safe to override.  
function DLabel:DoDoubleClickInternal()
end

--- Called when the label is middle mouse (Mouse wheel, also known as mouse 3) clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- See also DLabel:DoClick, DLabel:DoRightClick and DLabel:DoDoubleClick.  
function DLabel:DoMiddleClick()
end

--- Called when the label is right clicked (on key release) by the player.  
--- This will be called after DLabel:OnDepressed and DLabel:OnReleased.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick and DLabel:DoDoubleClick.  
function DLabel:DoRightClick()
end

--- Returns whether the label stretches vertically or not.  
--- Set by DLabel:SetAutoStretchVertical.  
--- @return boolean @Whether the label stretches vertically or not.
function DLabel:GetAutoStretchVertical()
end

--- Returns whether the DLabel should set its text color to the current skin's bright text color.  
--- See DLabel:SetBright.  
--- @return boolean 
function DLabel:GetBright()
end

--- Returns the actual color of the text.  
--- See also DLabel:GetTextColor and DLabel:GetTextStyleColor.  
--- @return table @The the actual color of the text.
function DLabel:GetColor()
end

--- Returns whether the DLabel should set its text color to the current skin's dark text color.  
--- See DLabel:SetDark.  
--- @return boolean 
function DLabel:GetDark()
end

--- 🛑 **DEPRECATED**: Use Panel:IsEnabled instead.  
--- Gets the disabled state of the DLabel. This is set with DLabel:SetDisabled.  
--- @deprecated
--- @return boolean @The disabled state of the label.
function DLabel:GetDisabled()
end

--- Returns whether or not double clicking will call DLabel:DoDoubleClick.  
--- See DLabel:SetDoubleClickingEnabled.  
--- @return boolean @true = enabled, false means disabled
function DLabel:GetDoubleClickingEnabled()
end

--- Returns the current font of the DLabel. This is set with DLabel:SetFont.  
--- @return string @The name of the font in use.
function DLabel:GetFont()
end

--- Returns whether the DLabel should set its text color to the current skin's highlighted text color.  
--- See DLabel:SetHighlight.  
--- @return boolean 
function DLabel:GetHighlight()
end

--- Returns whether the toggle functionality is enabled for a label. Set with DLabel:SetIsToggle.  
--- @return boolean @Whether or not toggle functionality is enabled.
function DLabel:GetIsToggle()
end

--- Returns the "override" text color, set by DLabel:SetTextColor.  
--- @return table @The color of the text, or nil.
function DLabel:GetTextColor()
end

--- Returns the current toggle state of the label. This can be set with DLabel:SetToggle and toggled with DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @return boolean @The current toggle state.
function DLabel:GetToggle()
end

--- Called when the player presses the label with any mouse button.  
--- This works as an alternative to PANEL:OnMousePressed as that hook is used heavily by DLabel and overriding it will break functionality.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick, DLabel:DoRightClick, DLabel:OnReleased and DLabel:DoDoubleClick.  
function DLabel:OnDepressed()
end

--- Called when the player releases any mouse button on the label. This is always called after DLabel:OnDepressed.  
--- This works as an alternative to PANEL:OnMouseReleased as that hook is used heavily by DLabel and overriding it will break functionality.  
--- See also DLabel:DoClick, DLabel:DoMiddleClick, DLabel:DoRightClick and DLabel:DoDoubleClick.  
function DLabel:OnReleased()
end

--- Called when the toggle state of the label is changed by DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @param toggleState boolean @The new toggle state.
function DLabel:OnToggled(toggleState)
end

--- Automatically adjusts the height of the label dependent of the height of the text inside of it.  
--- @param stretch boolean @Whenever to stretch the label vertically or not.
function DLabel:SetAutoStretchVertical(stretch)
end

--- 🛑 **DEPRECATED**: You really should use DLabel:SetTextColor.  
--- Sets the color of the text to the bright text color defined in the skin.  
--- See also DLabel:SetDark and DLabel:SetHighlight.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors.  
--- @param bright boolean @Whenever to set the text to bright or not.
--- @deprecated
function DLabel:SetBright(bright)
end

--- Changes color of label. Alias of DLabel:SetTextColor.  
--- @param color table @The color to set
function DLabel:SetColor(color)
end

--- 🛑 **DEPRECATED**: You really should use DLabel:SetTextColor.  
--- Sets the color of the text to the dark text color defined in the skin.  
--- See also DLabel:SetBright and DLabel:SetHighlight.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors.  
--- @param dark boolean @Whenever to set the text to dark or not.
--- @deprecated
function DLabel:SetDark(dark)
end

--- 🛑 **DEPRECATED**: Use Panel:SetEnabled instead.  
--- Sets the disabled state of the DLabel.  
--- When disabled, the label does not respond to click, toggle or drag & drop actions.  
--- @param disable boolean @`true` to disable the DLabel, `false` to enable it.
--- @deprecated
function DLabel:SetDisabled(disable)
end

--- Sets whether or not double clicking should call DLabel:DoDoubleClick.  
--- This is enabled by default.  
--- @param enable boolean @true to enable, false to disable
function DLabel:SetDoubleClickingEnabled(enable)
end

--- Sets the font of the label.  
--- @param fontName string @The name of the font
function DLabel:SetFont(fontName)
end

--- 🛑 **DEPRECATED**: You really should use DLabel:SetTextColor.  
--- Sets the color of the text to the highlight text color defined in the skin.  
--- For the default Derma skin this makes the label red.  
--- See also DLabel:SetBright and DLabel:SetDark.  
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors.  
--- @param highlight boolean @true to set the label's color to skins's text highlight color, false otherwise.
--- @deprecated
function DLabel:SetHighlight(highlight)
end

--- Enables or disables toggle functionality for a label. Retrieved with DLabel:GetIsToggle.  
--- You must call this before using DLabel:SetToggle, DLabel:GetToggle or DLabel:Toggle.  
--- @param allowToggle boolean @Whether or not to enable toggle functionality.
function DLabel:SetIsToggle(allowToggle)
end

--- Sets the text color of the DLabel. This will take precedence over DLabel:SetTextStyleColor.  
--- @param color table @The text color
function DLabel:SetTextColor(color)
end

--- Sets the toggle state of the label. This can be retrieved with DLabel:GetToggle and toggled with DLabel:Toggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
--- @param toggleState boolean @The toggle state to be set.
function DLabel:SetToggle(toggleState)
end

--- Toggles the label's state. This can be set and retrieved with DLabel:SetToggle and DLabel:GetToggle.  
--- In order to use toggle functionality, you must first call DLabel:SetIsToggle with `true`, as it is disabled by default.  
function DLabel:Toggle()
end

--- A hook called from within PANEL:ApplySchemeSettings to determine the color of the text on display.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dlabel.lua:289:279
--- @param skin table @A table supposed to contain the color values listed above.
function DLabel:UpdateColours(skin)
end

