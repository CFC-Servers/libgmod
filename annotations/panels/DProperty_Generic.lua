--- <internal></internal>  
--- A base for other controls for DProperties. Acts as a generic text input on its own.  
--- @class DProperty_Generic : Panel
local DProperty_Generic = {}
---  client
--- Returns the internal row panel of a DProperties that this panel belongs to.  
--- @return Panel @The row panel.
function DProperty_Generic:GetRow()
end

---  client
--- Sets up a generic control for use by DProperties.  
--- @param data table @See Editable Entities.
function DProperty_Generic:Setup(data)
end

---  client
--- Called by this control, or a derived control, to alert the row of the change.  
--- @param newVal any @The new value.
--- @param force boolean @Force an update.
function DProperty_Generic:ValueChanged(newVal, force)
end

