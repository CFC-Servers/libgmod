--- Add proxies to materials.  
_G.matproxy = {}
---  client
--- Adds a material proxy.  
--- @param MatProxyData table @The information about the proxy
function matproxy.Add(MatProxyData)
end

---  client
--- Called by the engine from OnBind  
--- @param uname string 
--- @param mat IMaterial 
--- @param ent Entity 
function matproxy.Call(uname, mat, ent)
end

---  client
--- Called by the engine from OnBind  
--- @param name string 
--- @param uname string 
--- @param mat IMaterial 
--- @param values table 
function matproxy.Init(name, uname, mat, values)
end

---  client
--- Called by engine, returns true if we're overriding a proxy  
--- @param name string @The name of proxy in question
--- @return boolean @Are we overriding it?
function matproxy.ShouldOverrideProxy(name)
end

