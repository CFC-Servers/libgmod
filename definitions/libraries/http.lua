--- The http library allows either the server or client to communicate with external websites via HTTP, both `GET` (http.Fetch) and `POST` (http.Post) are supported. A more powerful & advanced method can be used via the global Global.HTTP function.  
_G.http = {}
--- Launches an asynchronous **GET** request to a HTTP server.  
--- HTTP requests returning a status code >= `400` are still considered a success and will call the onSuccess callback.  
--- The onFailure callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).  
--- A rough overview of possible onFailure messages:  
--- * `invalid url` - Invalid/empty url ( no request was attempted )  
--- * `invalid request` - Steam HTTP lib failed to create a HTTP request  
--- * `error` - OnComplete callback's second argument, `bError`, is `true`  
--- * `unsuccessful` - OnComplete's first argument, `pResult->m_bRequestSuccessful`, returned `false`  
--- ℹ **NOTE**: HTTP-requests to destinations on private networks (such as `192.168.0.1`) won't work.  
---  To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp` (serverside only).  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/http.lua:18:44
--- @param url string @The URL of the website to fetch.
--- @param onSuccess? function @Function to be called on success
--- @param onFailure? function @Function to be called on failure
--- @param headers? table @KeyValue table for headers.
function http.Fetch(url, onSuccess, onFailure, headers)
end

--- Sends an asynchronous **POST** request to a HTTP server.  
--- HTTP requests returning a status code >= `400` are still considered a success and will call the onSuccess callback.  
--- The onFailure callback is usually only called on DNS or TCP errors (e.g. the website is unavailable or the domain does not exist).  
--- ℹ **NOTE**: HTTP-requests to destinations on private networks (such as `192.168.0.1`) won't work.  
---  To enable HTTP-requests to destinations on private networks use Command Line Parameters `-allowlocalhttp` (serverside only).  
--- @source ../../garrysmod/garrysmod/lua/includes/modules/http.lua:46:73
--- @param url string @The url to of the website to post.
--- @param parameters table @The post parameters (x-www-form-urlencoded) to be send to the server
--- @param onSuccess? function @Function to be called on success
--- @param onFailure? function @Function to be called on failure
--- @param headers? table @KeyValue table for headers.
function http.Post(url, parameters, onSuccess, onFailure, headers)
end

