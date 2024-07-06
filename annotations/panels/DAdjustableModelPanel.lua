--- A derivative of the DModelPanel in which the user may modify the perspective of the model with their mouse and keyboard by clicking and dragging.  
--- The keyboard keys `W` `S` `A` `D` `Up` `Down` `Left` `Right` `Space` and `Ctrl` can be used when the right mouse is held down, with `Shift` acting as a speed multiplier. When the left mouse is used, the Shift key holds the current `y` angle steady.  
--- This is used by IconEditor for modifying spawn icons.  
--- @class DAdjustableModelPanel : DModelPanel
local DAdjustableModelPanel = {}
---  client
--- Gets whether mouse and keyboard-based adjustment of the perspective has been enabled. See DAdjustableModelPanel:SetFirstPerson for more information.  
--- @return boolean @Whether first person controls are enabled
function DAdjustableModelPanel:GetFirstPerson()
end

---  client
--- Returns the movement speed multiplier set by DAdjustableModelPanel:SetMovementScale.  
--- @return number @The movement scale, where `1` is normal, `2` is double, etc.
function DAdjustableModelPanel:GetMovementScale()
end

---  client
--- Enables mouse and keyboard-based adjustment of the perspective.  
--- This is set to `true` automatically each time mouse capture is enabled, and hence doesn't serve as a usable setting, other than to disable this functionality after the PANEL:OnMousePressed event.  
--- @param enable boolean @Whether to enable/disable first person controls
function DAdjustableModelPanel:SetFirstPerson(enable)
end

---  client
--- Sets the movement speed multiplier. Currently this only affects first person camera controls.  
--- @param arg1 number @The movement scale, where `1` is normal, `2` is double, etc.
function DAdjustableModelPanel:SetMovementScale(arg1)
end

