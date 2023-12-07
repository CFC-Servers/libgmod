_G.coroutine = {}
---  menu|client|server
--- Resumes the given coroutine and passes the given vararg to either the function arguments or the coroutine.yield that is inside that function and returns whatever yield is called with the next time or by the final return in the function.  
--- @param coroutine thread @Coroutine to resume.
--- @param ... any ... @Arguments to be returned by coroutine.yield.
--- @return boolean @If the executed thread code had no errors occur within it.
--- @return any ... @If an error occurred, this will be a string containing the error message
function coroutine.resume(coroutine, ...)
end

---  menu|client|server
--- Pauses the active coroutine and passes all additional variables to the call of coroutine.resume that resumed the coroutine last time, and returns all additional variables that were passed to the previous call of resume.  
--- @param ... any ... @Arguments to be returned by the last call of coroutine.resume.
--- @return any ... @Arguments that were set previously by coroutine.resume.
function coroutine.yield(...)
end

