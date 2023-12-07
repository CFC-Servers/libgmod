_G.engine = {}
---  client|menu
--- Current tick of currently loaded demo.  
--- If not playing a demo, it will return amount of ticks since last demo playback.  
--- @return number @The amount of ticks of currently loaded demo.
function engine.GetDemoPlaybackTick()
end

---  server
--- This is a direct binding to the function `engine->LightStyle`. This function allows you to change the default light style of the map - so you can make lighting lighter or darker. You’ll need to call render.RedownloadAllLightmaps clientside to refresh the lightmaps to this new color.  
--- 🦟 **BUG**: [Calling this function with arguments 0 and "a" will cause dynamic lights such as those produced by the Light tool to stop working.](https://github.com/Facepunch/garrysmod-issues/issues/3626)  
--- @param lightstyle number @The lightstyle to edit
--- @param pattern string @The pattern to change the lightstyle to
function engine.LightStyle(lightstyle, pattern)
end

---  menu|client|server
--- Returns the number of ticks since the game server started.  
--- @return number @Number of ticks since the game server started.
function engine.TickCount()
end

---  menu|client|server
--- Returns the number of seconds between each gametick.  
--- @return number @Number of seconds between each gametick.
function engine.TickInterval()
end

