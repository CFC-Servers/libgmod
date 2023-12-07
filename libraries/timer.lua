_G.timer = {}
---  menu|client|server
--- Restarts the given timer.  
--- ℹ **NOTE**: Timers use Global.CurTime for timing.  
--- ⚠ **WARNING**: Timers won't advance while the client is timing out from the server.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @true if the timer exists, false if it doesn't.
function timer.Start(identifier)
end

---  menu|client|server
--- Runs either timer.Pause or timer.UnPause based on the timer's current status.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @status of the timer.
function timer.Toggle(identifier)
end

---  menu|client|server
--- Unpauses the timer.  
--- @param identifier any @Identifier of the timer.
--- @return boolean @false if the timer didn't exist or was already running, true otherwise.
function timer.UnPause(identifier)
end

