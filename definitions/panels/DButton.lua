--- A standard Derma button.  
--- By default, a DButton is 22px tall.  
--- @class DButton : DLabel
local DButton = {}
--- Called when the button is left clicked (on key release) by the player.  
--- This will be called after DButton:IsDown.  
--- See also DButton:DoRightClick.  
function DButton:DoClick()
end

--- Called when the button is right clicked (on key release) by the player.  
--- See also DButton:DoClick.  
function DButton:DoRightClick()
end

--- 🛑 **DEPRECATED**:   
--- Returns value set by DButton:SetDrawBorder. See that page for more info.  
--- @deprecated
--- @return boolean @value set by DButton:SetDrawBorder.
function DButton:GetDrawBorder()
end

--- Returns true if the DButton is currently depressed (a user is clicking on it).  
--- @return boolean @Whether or not the button is depressed.
function DButton:IsDown()
end

--- Sets a console command to be called when the button is clicked.  
--- This overrides the button's `DoClick` method.  
--- @param command string @The console command to be called.
--- @param args string @The arguments for the command.
function DButton:SetConsoleCommand(command, args)
end

--- 🛑 **DEPRECATED**: Use Panel:SetEnabled instead.  
--- Sets whether or not the DButton is disabled.  
--- When disabled, the button is `greyed out` and cannot be clicked.  
--- @param disable boolean @When true Enable the button, when false Disable the button.
--- @deprecated
function DButton:SetDisabled(disable)
end

--- 🛑 **DEPRECATED**:   
--- Does absolutely nothing at all. Default value is automatically set to true.  
--- @param draw boolean @Does nothing.
--- @deprecated
function DButton:SetDrawBorder(draw)
end

--- Sets an image to be displayed as the button's background. Alias of DButton:SetImage  
--- @param img? string @The image file to use, relative to `/materials`
function DButton:SetIcon(img)
end

--- Sets an image to be displayed as the button's background.  
--- See DButton:SetMaterial for equivalent function that uses IMaterial instead.  
--- Also see: DImageButton  
--- @param img? string @The image file to use, relative to `/materials`
function DButton:SetImage(img)
end

--- Sets an image to be displayed as the button's background.  
--- See DButton:SetImage for equivalent function that uses file paths instead. Also see DImageButton.  
--- @param img? IMaterial @The material to use
function DButton:SetMaterial(img)
end

--- A hook called from within DLabel's PANEL:ApplySchemeSettings to determine the color of the text on display.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/lua/vgui/dbutton.lua:85:93
--- @param skin table @A table supposed to contain the color values listed above.
function DButton:UpdateColours(skin)
end

