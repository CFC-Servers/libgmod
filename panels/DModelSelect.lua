--- 🛑 **DEPRECATED**:   
--- This is derived from the deprecated DPanelList.  
--- A vertical list of models.  
--- @class DModelSelect : DPanelSelect
local DModelSelect = {}
---  client
--- Sets the height of the panel **in the amount of 64px spawnicons**.  
--- Overrides Panel:SetHeight.  
--- @param num? number @Basically how many rows of 64x64 px spawnicons should fit in this DModelSelect
function DModelSelect:SetHeight(num)
end

---  client
--- Called to set the list of models within the panel element.  
--- @param models table @Each key is a model path, the value is a kay-value table where they key is a convar name and value is the value to set to that convar.
--- @param convar string 
--- @param dontSort boolean 
--- @param DontCallListConVars boolean 
function DModelSelect:SetModelList(models, convar, dontSort, DontCallListConVars)
end

