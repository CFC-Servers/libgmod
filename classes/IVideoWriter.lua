--- @class IVideoWriter
--- This is returned from video.Record.  
local IVideoWriter = {}
--- Adds the current framebuffer to the video stream.  
--- @param frameTime number @Usually set to what Global.FrameTime is, or simply 1/fps.
--- @param downsample boolean @If true it will downsample the whole screenspace to the videos width and height, otherwise it will just record from the top left corner to t
function IVideoWriter:AddFrame(frameTime, downsample)
end

--- Ends the video recording and dumps it to disk.  
function IVideoWriter:Finish()
end

--- Returns the height of the video stream.  
--- @return number @height
function IVideoWriter:Height()
end

--- Sets whether to record sound or not.  
--- @param record boolean @Record.
function IVideoWriter:SetRecordSound(record)
end

--- Returns the width of the video stream.  
--- @return number @width
function IVideoWriter:Width()
end

