--- The object returned by ai_schedule.New.  
--- @class Schedule
local Schedule = {}
--- Adds a task to the schedule. See also Schedule:AddTaskEx if you wish to customize task start and run function names.  
--- See also ENTITY:StartSchedule, NPC:StartEngineTask, and NPC:RunEngineTask.  
--- @param taskname string @Custom task name
--- @param taskdata any @Task data to be passed into the NPC's functions
function Schedule:AddTask(taskname, taskdata)
end

--- Adds a task to the schedule with completely custom function names.  
--- See also Schedule:AddTask.  
--- @param start string @The full name of a function on the entity's table to be ran when the task is started.
--- @param run string @The full name of a function on the entity's table to be ran when the task is continuously running.
--- @param data number @Task data to be passed into the NPC's functions
function Schedule:AddTaskEx(start, run, data)
end

--- Adds an engine task to the schedule.  
--- @param taskname string @Task name, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server
--- @param taskdata number @Task data, can be a float.
function Schedule:EngTask(taskname, taskdata)
end

--- Returns the task at the given index.  
--- @param num number @Task index.
function Schedule:GetTask(num)
end

--- Returns the number of tasks in the schedule.  
--- @return number @The number of tasks in this schedule.
function Schedule:NumTasks()
end
