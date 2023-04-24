--- Used by the context menu in sandbox.  
--- @class ControlPanel : DForm
local ControlPanel = {}
--- 🛑 **DEPRECATED**: It is recommended to use DForm's members instead.  
--- Adds a control to the control panel.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:119:397
--- @param type string @The control type to add
--- @param controlinfo table @Each control takes their own table structure
--- @deprecated
function ControlPanel:AddControl(type, controlinfo)
end

--- Adds an item by calling DForm:AddItem.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:41:46
--- @param panel Panel @Panel to add as an item to the control panel.
function ControlPanel:AddPanel(panel)
end

--- 🛑 **DEPRECATED**:   
--- Alias of Panel:Clear.  
--- @deprecated
function ControlPanel:ClearControls()
end

--- Creates a CtrlColor (a color picker) panel and adds it as an item.  
--- @param label string @The label for this color picker.
--- @param convarR string @Name of the convar that will store the R component of the selected color.
--- @param convarG string @Name of the convar that will store the G component of the selected color.
--- @param convarB string @Name of the convar that will store the B component of the selected color.
--- @param convarA string @Name of the convar that will store the A component of the selected color.
--- @return Panel @The created CtrlColor panel.
function ControlPanel:ColorPicker(label, convarR, convarG, convarB, convarA)
end

--- Sets control values of the control panel.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:107:114
--- @param data table @A two-membered table:
function ControlPanel:ControlValues(data)
end

--- Calls the given function with this panel as the only argument. Used by the spawnmenu to populate the control panel.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:98:102
--- @param func function @A function that takes one argument:
function ControlPanel:FillViaFunction(func)
end

--- Returns this control panel.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:32:36
--- @return ControlPanel @The same control panel the function is being called on.
function ControlPanel:GetEmbeddedPanel()
end

--- Creates a CtrlNumPad (a Sandbox key binder) panel and adds it as an item.  
--- @param label1 string @The label for the left key binder.
--- @param convar1 string @The name of the convar that will store the key code for player selected key of the left key binder.
--- @param label2? string @If set and `convar2` is set, the label for the right key binder.
--- @param convar2? string @If set and `label2` is set, the name of the convar that will store the key code for player selected key of the right key binder.
--- @return Panel @The created CtrlNumPad panel.
function ControlPanel:KeyBinder(label1, convar1, label2, convar2)
end

--- Creates a MatSelect panel and adds it as an item.  
--- @source /home/brandon/Code/dev/libgmod/garrysmod/garrysmod/gamemodes/sandbox/gamemode/spawnmenu/controlpanel.lua:51:73
--- @param convar string @Calls MatSelect:SetConVar with this value.
--- @param options? table @If specified, calls MatSelect:AddMaterial(key, value) for each table entry
--- @param autostretch? boolean @If specified, calls MatSelect:SetAutoHeight with this value.
--- @param width? number @If specified, calls MatSelect:SetItemWidth with this value.
--- @param height? number @If specified, calls MatSelect:SetItemHeight with this value.
--- @return MatSelect @The created MatSelect panel.
function ControlPanel:MatSelect(convar, options, autostretch, width, height)
end

--- Creates a ControlPresets panel and adds it as an item.  
--- @param group string @The preset group
--- @param cvarList table @A table of convar names as keys and their defaults as the values
--- @return Panel @The created ControlPresets panel.
function ControlPanel:ToolPresets(group, cvarList)
end
