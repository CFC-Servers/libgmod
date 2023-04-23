--- The DFrame is the moma of basically all VGUI elements. 98% of the time you will parent your element to this.  
--- @class DFrame : EditablePanel
local DFrame = {}
--- Centers the frame relative to the whole screen and invalidates its layout. This overrides Panel:Center.  
function DFrame:Center()
end

--- Hides or removes the DFrame, and calls DFrame:OnClose.  
--- To set whether the frame is hidden or removed, use DFrame:SetDeleteOnClose.  
function DFrame:Close()
end

--- Gets whether the background behind the frame is being blurred.  
--- @return boolean @Whether or not background blur is enabled.
function DFrame:GetBackgroundBlur()
end

--- Determines whether or not the DFrame will be removed when it is closed. This is set with DFrame:SetDeleteOnClose.  
--- @return boolean @Whether or not the frame will be removed on close.
function DFrame:GetDeleteOnClose()
end

--- Gets whether or not the frame is draggable by the user.  
--- @return boolean @Whether the frame is draggable or not.
function DFrame:GetDraggable()
end

--- Gets whether or not the frame is part of a derma menu. This is set with DFrame:SetIsMenu.  
--- @return boolean @Whether or not this frame is a menu component.
function DFrame:GetIsMenu()
end

--- Gets the minimum height the DFrame can be resized to by the user.  
--- You must call DFrame:SetSizable before the user can resize the frame.  
--- @return number @The minimum height the user can resize the frame to.
function DFrame:GetMinHeight()
end

--- Gets the minimum width the DFrame can be resized to by the user.  
--- You must call DFrame:SetSizable before the user can resize the frame.  
--- @return number @The minimum width the user can resize the frame to.
function DFrame:GetMinWidth()
end

--- Gets whether or not the shadow effect bordering the DFrame is being drawn.  
--- @return boolean @Whether or not the shadow is being drawn.
function DFrame:GetPaintShadow()
end

--- Gets whether or not the DFrame is restricted to the boundaries of the screen resolution.  
--- @return boolean @Whether or not the frame is restricted.
function DFrame:GetScreenLock()
end

--- Gets whether or not the DFrame can be resized by the user.  
--- This is achieved by clicking and dragging in the bottom right corner of the frame.  
--- @return boolean @Whether the frame can be resized or not.
function DFrame:GetSizable()
end

--- Returns the title of the frame.  
--- @return string @Title of the frame.
function DFrame:GetTitle()
end

--- Determines if the frame or one of its children has the screen focus.  
--- @return boolean @Whether or not the frame has focus.
function DFrame:IsActive()
end

--- Called when the DFrame is closed with DFrame:Close. This applies when the `close` button in the DFrame's control box is clicked.  
--- This function does nothing and is safe to override.  
--- This is **not** called when the DFrame is removed with Panel:Remove, see PANEL:OnRemove for that.  
function DFrame:OnClose()
end

--- Indicate that the background elements won't be usable.  
--- @param blur boolean @Whether or not to block mouse on background panels or not.
function DFrame:SetBackgroundBlur(blur)
end

--- Determines whether or not the DFrame is removed when it is closed with DFrame:Close.  
--- @param shouldDelete boolean @Whether or not to delete the frame on close
function DFrame:SetDeleteOnClose(shouldDelete)
end

--- Sets whether the frame should be draggable by the user. The DFrame can only be dragged from its title bar.  
--- @param draggable boolean @Whether to be draggable or not.
function DFrame:SetDraggable(draggable)
end

--- Adds or removes an icon on the left of the DFrame's title.  
--- @param path string @Set to nil to remove the icon
function DFrame:SetIcon(path)
end

--- Sets whether the frame is part of a derma menu or not.  
--- If this is set to `true`, Global.CloseDermaMenus will not be called when the frame is clicked, and thus any open menus will remain open.  
--- @param isMenu boolean @Whether or not this frame is a menu component.
function DFrame:SetIsMenu(isMenu)
end

--- Sets the minimum height the DFrame can be resized to by the user.  
--- This only applies to users attempting to resize the frame; Panel:SetTall and similar methods will not be affected. You must call DFrame:SetSizable before the user can resize the frame.  
--- @param minH number @The minimum height the user can resize the frame to.
function DFrame:SetMinHeight(minH)
end

--- Sets the minimum width the DFrame can be resized to by the user.  
--- This only applies to users attempting to resize the frame; Panel:SetWide and similar methods will not be affected. You must call DFrame:SetSizable before the user can resize the frame.  
--- @param minW number @The minimum width the user can resize the frame to.
function DFrame:SetMinWidth(minW)
end

--- Sets whether or not the shadow effect bordering the DFrame should be drawn.  
--- @param shouldPaint boolean @Whether or not to draw the shadow
function DFrame:SetPaintShadow(shouldPaint)
end

--- Sets whether the DFrame is restricted to the boundaries of the screen resolution.  
--- @param lock boolean @If `true`, the frame cannot be dragged outside of the screen bounds
function DFrame:SetScreenLock(lock)
end

--- Sets whether or not the DFrame can be resized by the user.  
--- This is achieved by clicking and dragging in the bottom right corner of the frame.  
--- You can set the minimum size using DFrame:SetMinWidth and DFrame:SetMinHeight.  
--- @param sizeable boolean @Whether the frame should be resizeable or not.
function DFrame:SetSizable(sizeable)
end

--- Sets the title of the frame.  
--- @param title string @New title of the frame.
function DFrame:SetTitle(title)
end

--- Determines whether the DFrame's control box (close, minimise and maximise buttons) is displayed.  
--- @param show boolean @`false` hides the control box; this is `true` by default.
function DFrame:ShowCloseButton(show)
end

