--- @class Task
local Task = {}
---  server
--- Initialises the AI task as NPC method-based.  
--- @param startname string @The name of the NPC method to call on task start.
--- @param runname string @The name of the NPC method to call on task run.
--- @param taskdata number 
function Task:InitFunctionName(startname, runname, taskdata)
end

---  server
--- Determines if the task is an engine task (`TYPE_ENGINE`, 1).  
function Task:IsEngineType()
end

