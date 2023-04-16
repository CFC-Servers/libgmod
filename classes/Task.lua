--- @class Task
--- A single AI task. Returned by ai_task.New.  
local Task = {}
--- Initialises the AI task as an engine task.  
--- @param taskname string @The name of the task.
--- @param taskdata number 
function Task:InitEngine(taskname, taskdata)
end

--- Initialises the AI task as NPC method-based.  
--- @param startname string @The name of the NPC method to call on task start.
--- @param runname string @The name of the NPC method to call on task run.
--- @param taskdata number 
function Task:InitFunctionName(startname, runname, taskdata)
end

--- Determines if the task is an engine task (`TYPE_ENGINE`, 1).  
function Task:IsEngineType()
end

--- Determines if the task is an NPC method-based task (`TYPE_FNAME`, 2).  
function Task:IsFNameType()
end

--- Runs the AI task.  
--- @param target NPC @The NPC to run the task on.
function Task:Run(target)
end

--- Starts the AI task.  
--- @param target NPC @The NPC to start the task on.
function Task:Start(target)
end

