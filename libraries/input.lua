_G.input = {}
---  client|menu
--- Gets the button code from a button name. This is opposite of input.GetKeyName.  
--- @param button string @The internal button name, such as <key>E</key> or <key>SHIFT</key>.
--- @return number @The button code, see Enums/BUTTON_CODE.
function input.GetKeyCode(button)
end

---  client|menu
--- Gets whether the specified button code is down.  
--- Unlike input.IsKeyDown this can also detect joystick presses from Enums/JOYSTICK  
--- @param button number @The button, valid values are in the range of Enums/BUTTON_CODE.
--- @return boolean @Is the button down
function input.IsButtonDown(button)
end

---  client|menu
--- Returns the bind string that the given key is bound to.  
--- @param key number @Key from Enums/BUTTON_CODE
--- @return string @The bind string of the given key.
function input.LookupKeyBinding(key)
end

