--- This is the base panel for every other VGUI panel.  
--- It contains all of the basic methods, some of which may only work on certain VGUI elements. As their functionality is provided at the game's C/C++ level rather than by its Lua script extension, they are unfortunately unavailable for most practical purposes, however, they can still be obtained in a way similar to that provided by the baseclass library:  
--- ```  
--- -- Create a new panel type NewPanel that inherits all of its functionality from DLabel,  
--- -- but has a different SetText method than DLabel does - all without the hassle of that  
--- -- old DLabel's default text getting in the way. Fun stuff.  
--- local PANEL = {}  
--- function PANEL:Init()  
--- self:SetText_Base( "" )  
--- self:SetText( "Time for something different!" )  
--- end  
--- function PANEL:Paint( aWide, aTall )  
--- local TextX, TextY = 0, 0  
--- local TextColor = Color( 255, 0, 0, 255 )  
--- surface.SetFont( self:GetFont() or "default" )  
--- surface.SetTextColor( TextColor )  
--- surface.SetTextPos( TextX, TextY )  
--- surface.DrawText( self:GetText() )  
--- end  
--- -- And here we go:  
--- PANEL.SetText_Base = FindMetaTable( "Panel" ).SetText  
--- function PANEL:SetText( aText )  
--- self.Text = tostring( aText )  
--- end  
--- function PANEL:GetText()  
--- return self.Text or ""  
--- end  
--- vgui.Register( "NewPanel", PANEL, "DLabel" )  
--- ```  
--- @class Panel
local Panel = {}
--- Adds the specified object to the panel.  
--- @param object Panel @The panel to be added (parented)
--- @return Panel @New panel
function Panel:Add(object)
end

--- 🛑 **DEPRECATED**: Does nothing  
--- This function does nothing.  
--- @deprecated
function Panel:AddText()
end

--- Aligns the panel on the bottom of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignBottom(offset)
end

--- Aligns the panel on the left of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignLeft(offset)
end

--- Aligns the panel on the right of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignRight(offset)
end

--- Aligns the panel on the top of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignTop(offset)
end

--- Uses animation to transition the current alpha value of a panel to a new alpha, over a set period of time and after a specified delay.  
--- @param alpha number @The alpha value (0-255) to approach.
--- @param duration number @The time in seconds it should take to reach the alpha.
--- @param delay? number @The delay before the animation starts.
--- @param callback? function @The function to be called once the animation finishes
function Panel:AlphaTo(alpha, duration, delay, callback)
end

--- Returns the Global.SysTime value when all animations for this panel object will end.  
--- @return number @The system time value when all animations will end for this panel.
function Panel:AnimTail()
end

--- Appends text to a RichText element. This does not automatically add a new line.  
--- @param txt string @The text to append (add on).
function Panel:AppendText(txt)
end

--- Used by Panel:LoadGWENFile and Panel:LoadGWENString to apply a GWEN controls table to a panel object.  
--- You can do this manually using file.Read and util.JSONToTable to import and create a GWEN table structure from a `.gwen` file. This method can then be called, passing the GWEN table's `Controls` member.  
--- @param GWENTable table @The GWEN controls table to apply to the panel.
function Panel:ApplyGWEN(GWENTable)
end

--- Centers the panel on its parent.  
function Panel:Center()
end

--- Centers the panel horizontally with specified fraction.  
--- @param fraction? number @The center fraction.
function Panel:CenterHorizontal(fraction)
end

--- Centers the panel vertically with specified fraction.  
--- @param fraction? number @The center fraction.
function Panel:CenterVertical(fraction)
end

--- Returns the amount of children of the of panel.  
--- @return number @The amount of children the panel has.
function Panel:ChildCount()
end

--- Returns the width and height of the space between the position of the panel (upper-left corner) and the max bound of the children panels (farthest reaching lower-right corner).  
--- @return number @The children size width.
--- @return number @The children size height.
function Panel:ChildrenSize()
end

--- Marks all of the panel's children for deletion.  
function Panel:Clear()
end

--- Fades panels color to specified one. It won't work unless panel has SetColor function.  
--- @param color table @The color to fade to
--- @param length number @Length of the animation
--- @param delay number @Delay before start fading
--- @param callback function @Function to execute when finished
function Panel:ColorTo(color, length, delay, callback)
end

--- Sends an action command signal to the panel. The response is handled by PANEL:ActionSignal.  
--- @param command string @The command to send to the panel.
function Panel:Command(command)
end

--- Updates a panel object's associated console variable. This must first be set up with Global.Derma_Install_Convar_Functions, and have a ConVar set using Panel:SetConVar.  
--- @param newValue string @The new value to set the associated console variable to.
function Panel:ConVarChanged(newValue)
end

--- A think hook for Panels using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.  
--- This function is best for: checkboxes, sliders, number wangs  
--- For a string alternative, see Panel:ConVarStringThink.  
--- ℹ **NOTE**: Make sure your Panel has a SetValue function, else you may get errors.  
function Panel:ConVarNumberThink()
end

--- A think hook for panels using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.  
--- This function is best for: text inputs, read-only inputs, dropdown selects  
--- For a number alternative, see Panel:ConVarNumberThink.  
--- ℹ **NOTE**: Make sure your Panel has a SetValue function, else you may get errors.  
function Panel:ConVarStringThink()
end

--- Gets the size, position and dock state of the passed panel object, and applies it to this one.  
--- @param srcPanel Panel @The panel to copy the boundary and dock settings from.
function Panel:CopyBase(srcPanel)
end

--- Copies position and size of the panel.  
--- @param base Panel @The panel to copy size and position from.
function Panel:CopyBounds(base)
end

--- Copies the height of the panel.  
--- @param base Panel @Panel to copy the height from.
function Panel:CopyHeight(base)
end

--- Copies the position of the panel.  
--- @param base Panel @Panel to position the width from.
function Panel:CopyPos(base)
end

--- Performs the `CONTROL` + `C` key combination effect ( Copy selection to clipboard ) on selected text in a TextEntry or RichText based element.  
function Panel:CopySelected()
end

--- Copies the width of the panel.  
--- @param base Panel @Panel to copy the width from.
function Panel:CopyWidth(base)
end

--- Returns the cursor position relative to the top left of the panel.  
--- This is equivalent to calling gui.MousePos and then Panel:ScreenToLocal.  
--- ⚠ **WARNING**: This function uses a cached value for the screen position of the panel, computed at the end of the last VGUI Think/Layout pass.  
--- ie. inaccurate results may be returned if the panel or any of its ancestors have been repositioned outside of PANEL:Think or PANEL:PerformLayout within the last frame.  
--- @return number @X coordinate of the cursor, relative to the top left of the panel.
--- @return number @Y coordinate of the cursor, relative to the top left of the panel.
function Panel:CursorPos()
end

--- Performs the `CONTROL` + `X` (delete text and copy it to clipboard buffer) action on selected text in a TextEntry or RichText based element.  
function Panel:CutSelected()
end

--- Deletes a cookie value using the panel's cookie name ( Panel:GetCookieName ) and the passed extension.  
--- @param cookieName string @The unique cookie name to delete.
function Panel:DeleteCookie(cookieName)
end

--- Resets the panel object's Panel:SetPos method and removes its animation table (`Panel.LerpAnim`). This effectively undoes the changes made by Panel:LerpPositions.  
--- In order to use Lerp animation again, you must call Panel:Stop before setting its `SetPosReal` property to `nil`. See the example below.  
function Panel:DisableLerp()
end

--- Returns the linear distance from the center of this panel object and another. **Both panels must have the same parent for this function to work properly.**  
--- @param tgtPanel Panel @The target object with which to compare position.
--- @return number @The linear (straight-line) distance between the center of the two objects.
function Panel:Distance(tgtPanel)
end

--- Returns the distance between the center of this panel object and a specified point **local to the parent panel**.  
--- @param posX number @The horizontal (x) position in pixels of the point to compare with
--- @param posY number @The vertical (y) position in pixels of the point to compare with
--- @return number @The linear (straight-line) distance between the specified point local to parent panel and the center of this panel object.
function Panel:DistanceFrom(posX, posY)
end

--- Makes the panel "lock" the screen until it is removed. All input will be directed to the given panel.  
--- It will silently fail if used while cursor is not visible.  
--- Call Panel:MakePopup before calling this function.  
--- This must be called on a panel derived from EditablePanel.  
function Panel:DoModal()
end

--- Sets the dock type for the panel, making the panel "dock" in a certain direction, modifying it's position and size.  
--- You can set the inner spacing of a panel's docking using Panel:DockPadding, which will affect docked child panels, and you can set the outer spacing of a panel's docking using Panel:DockMargin, which affects how docked siblings are positioned/sized.  
--- You may need to use Panel:SetZPos to ensure child panels (DTextEntry) stay in a specific order.  
--- ℹ **NOTE**: After using this function, if you want to get the correct panel's bounds (position, size), use Panel:InvalidateParent (use `true` as argument if you need to update immediately)  
--- @param dockType number @Dock type using Enums/DOCK.
function Panel:Dock(dockType)
end

--- Sets the dock margin of the panel.  
--- The dock margin is the extra space that will be left around the edge when this element is docked inside its parent element.  
--- @param marginLeft number @The left margin to the parent.
--- @param marginTop number @The top margin to the parent.
--- @param marginRight number @The right margin to the parent.
--- @param marginBottom number @The bottom margin to the parent.
function Panel:DockMargin(marginLeft, marginTop, marginRight, marginBottom)
end

--- Sets the dock padding of the panel.  
--- The dock padding is the extra space that will be left around the edge when child elements are docked inside this element.  
--- @param paddingLeft number @The left padding to the parent.
--- @param paddingTop number @The top padding to the parent.
--- @param paddingRight number @The right padding to the parent.
--- @param paddingBottom number @The bottom padding to the parent.
function Panel:DockPadding(paddingLeft, paddingTop, paddingRight, paddingBottom)
end

--- Called to inform the dragndrop that a mouse button is being held down on a panel object.  
--- @param mouseCode number @The code for the mouse button pressed, passed by, for example, PANEL:OnMousePressed
function Panel:DragMousePress(mouseCode)
end

--- Called to inform the dragndrop that a mouse button has been depressed on a panel object.  
--- @param mouseCode number @The code for the mouse button pressed, passed by, for example, PANEL:OnMouseReleased
--- @return boolean @`true` if an object was being dragged, otherwise `false`.
function Panel:DragMouseRelease(mouseCode)
end

--- Draws a coloured rectangle to fill the panel object this method is called on. The colour is set using surface.SetDrawColor. This should only be called within the object's PANEL:Paint or PANEL:PaintOver hooks, as a shortcut for surface.DrawRect.  
function Panel:DrawFilledRect()
end

--- Draws a hollow rectangle the size of the panel object this method is called on, with a border width of 1 px. The border colour is set using surface.SetDrawColor. This should only be called within the object's PANEL:Paint or PANEL:PaintOver hooks, as a shortcut for surface.DrawOutlinedRect.  
function Panel:DrawOutlinedRect()
end

--- Used to draw the magenta highlight colour of a panel object when it is selected. This should be called in the object's PANEL:PaintOver hook. Once this is implemented, the highlight colour will be displayed only when the object is selectable and selected. This is achieved using Panel:SetSelectable and Panel:SetSelected respectively.  
function Panel:DrawSelections()
end

--- Used to draw the text in a DTextEntry within a derma skin. This should be called within the SKIN:PaintTextEntry skin hook.  
--- ℹ **NOTE**: Will silently fail if any of arguments are not Color.  
--- @param textCol table @The colour of the main text.
--- @param highlightCol table @The colour of the selection highlight (when selecting text).
--- @param cursorCol table @The colour of the text cursor (or caret).
function Panel:DrawTextEntryText(textCol, highlightCol, cursorCol)
end

--- Draws a textured rectangle to fill the panel object this method is called on. The texture is set using surface.SetTexture or surface.SetMaterial. This should only be called within the object's PANEL:Paint or PANEL:PaintOver hooks, as a shortcut for surface.DrawTexturedRect.  
function Panel:DrawTexturedRect()
end

--- Makes this panel droppable. This is used with Panel:Receiver to create drag and drop events.  
--- Can be called multiple times with different names allowing to be dropped onto different receivers.  
--- @param name string @Name of your droppable panel
--- @return table @Blank table stored on the panel itself under pnl.m_DragSlot[ name ]
function Panel:Droppable(name)
end

--- Completes a box selection. If the end point of the selection box is within the selection canvas, mouse capture is disabled for the panel object, and the selected state of each child object within the selection box is toggled.  
--- @return boolean @Whether the end point of the selection box was within the selection canvas.
function Panel:EndBoxSelection()
end

--- Finds a panel in its children(and sub children) with the given name.  
--- @param panelName string @The name of the panel that should be found.
--- @return Panel @foundPanel
function Panel:Find(panelName)
end

--- Focuses the next panel in the focus queue.  
function Panel:FocusNext()
end

--- Focuses the previous panel in the focus queue.  
function Panel:FocusPrevious()
end

--- Returns the alpha multiplier for this panel.  
--- @return number @alphaMul
function Panel:GetAlpha()
end

--- Returns the background color of a panel such as a RichText, Label or DColorCube.  
--- ℹ **NOTE**: This doesn't apply to all VGUI elements and its function varies between them  
--- @return number @The Color structure
function Panel:GetBGColor()
end

--- Returns the position and size of the panel.  
--- This is equivalent to calling Panel:GetPos and Panel:GetSize together.  
--- @return number @The x coordinate of the panel, relative to its parent's top left.
--- @return number @The y coordinate of the panel, relative to its parent's top left.
--- @return number @The width of the panel.
--- @return number @The height of the panel.
function Panel:GetBounds()
end

--- Returns the position/offset of the caret (or text cursor) in a text-based panel object.  
--- @return number @The caret position/offset from the start of the text
function Panel:GetCaretPos()
end

--- Gets a child by its index. For use with Panel:ChildCount.  
--- @param childIndex number @The index of the child to get
function Panel:GetChild(childIndex)
end

--- Gets a child object's position relative to this panel object. The number of levels is not relevant; the child may have many parents between itself and the object on which the method is called.  
--- @param pnl Panel @The panel to get the position of.
--- @return number @The horizontal (x) position of the child relative to this panel object.
--- @return number @The vertical (y) position of the child relative to this panel object.
function Panel:GetChildPosition(pnl)
end

--- Returns a table with all the child panels of the panel.  
--- @return table @All direct children of this panel.
function Panel:GetChildren()
end

--- Returns a table of all visible, selectable children of the panel object that lie at least partially within the specified rectangle.  
--- @param x number @The horizontal (x) position of the top-left corner of the rectangle, relative to the panel object.
--- @param y number @The vertical (y) position of the top-left corner of the rectangle, relative to the panel object.
--- @param w number @The width of the rectangle.
--- @param h number @The height of the rectangle.
--- @return table @A table of panel objects that lie at least partially within the specified rectangle.
function Panel:GetChildrenInRect(x, y, w, h)
end

--- Returns the class name of the panel.  
--- @return string @className
function Panel:GetClassName()
end

--- Returns the child of this panel object that is closest to the specified point. The point is relative to the object on which the method is called. The distance the child is from this point is also returned.  
--- @param x number @The horizontal (x) position of the point.
--- @param y number @The vertical (y) position of the point.
--- @return Panel @The child object that was closest to the specified point.
--- @return number @The distance that this child was from the point.
function Panel:GetClosestChild(x, y)
end

--- Gets the size of the content/children within a panel object.  
--- Only works with Label derived panels by default such as DLabel.  
--- Will also work on any panel that manually implements this method.  
--- @return number @The content width of the object.
--- @return number @The content height of the object.
function Panel:GetContentSize()
end

--- Gets the value of a cookie stored by the panel object. This can also be done with cookie.GetString, using the panel's cookie name, a fullstop, and then the actual name of the cookie.  
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with Panel:GetCookieName and Panel:SetCookieName.  
--- @param cookieName string @The name of the cookie from which to retrieve the value.
--- @param default string @The default value to return if the cookie does not exist.
--- @return string @The value of the stored cookie, or the default value should the cookie not exist.
function Panel:GetCookie(cookieName, default)
end

--- Gets the name the panel uses to store cookies. This is set with Panel:SetCookieName.  
--- @return string @The name the panel uses when reading or writing cookies
function Panel:GetCookieName()
end

--- Gets the value of a cookie stored by the panel object, as a number. This can also be done with cookie.GetNumber, using the panel's cookie name, a fullstop, and then the actual name of the cookie.  
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with Panel:GetCookieName and Panel:SetCookieName.  
--- @param cookieName string @The name of the cookie from which to retrieve the value.
--- @param default number @The default value to return if the cookie does not exist.
--- @return number @The number value of the stored cookie, or the default value should the cookie not exist.
function Panel:GetCookieNumber(cookieName, default)
end

--- Returns a dock enum for the panel's current docking type.  
--- @return number @The dock enum for the panel
function Panel:GetDock()
end

--- Returns the docked margins of the panel. (set by Panel:DockMargin)  
--- @return number @Left margin.
--- @return number @Top margin.
--- @return number @Right margin.
--- @return number @Bottom margin.
function Panel:GetDockMargin()
end

--- Returns the docked padding of the panel. (set by Panel:DockPadding)  
--- @return number @Left padding.
--- @return number @Top padding.
--- @return number @Right padding.
--- @return number @Bottom padding.
function Panel:GetDockPadding()
end

--- Returns the foreground color of the panel.  
--- For a Label or RichText, this is the color of its text.  
--- ℹ **NOTE**: This doesn't apply to all VGUI elements (such as DLabel) and its function varies between them  
--- @return table @A color structure
function Panel:GetFGColor()
end

--- Returns the name of the font that the panel renders its text with.  
--- This is the same font name set with Panel:SetFontInternal.  
--- @return string @fontName
function Panel:GetFont()
end

--- Returns the panel's HTML material. Only works with Awesomium, HTML and DHTML panels that have been fully loaded.  
--- @return IMaterial @The HTML material used by the panel
function Panel:GetHTMLMaterial()
end

--- Returns the current maximum character count.  
--- This function will only work on RichText and TextEntry panels and their derivatives.  
--- @return number @The maximum amount of characters this panel is allowed to contain.
function Panel:GetMaximumCharCount()
end

--- Returns the internal name of the panel. Can be set via Panel:SetName.  
--- @return string @The previously set internal name of the panel.
function Panel:GetName()
end

--- Returns the number of lines in a RichText. You must wait a couple frames before calling this after using Panel:AppendText or Panel:SetText, otherwise it will return the number of text lines before the text change.  
--- ℹ **NOTE**: Even though this function can be called on any panel, it will only work with RichText  
--- @return number @The number of lines.
function Panel:GetNumLines()
end

--- Returns the parent of the panel, returns nil if there is no parent.  
--- @return Panel @The parent of given panel
function Panel:GetParent()
end

--- Returns the position of the panel relative to its Panel:GetParent.  
--- If you require the panel's position **and** size, consider using Panel:GetBounds instead.  
--- If you need the position in screen space, see Panel:LocalToScreen.  
--- See also Panel:GetX and Panel:GetY.  
--- @return number @X coordinate, relative to this panels parents top left corner.
--- @return number @Y coordinate, relative to this panels parents top left corner.
function Panel:GetPos()
end

--- Returns a table of all children of the panel object that are selected. This is recursive, and the returned table will include tables for any child objects that also have children. This means that not all first-level members in the returned table will be of type Panel.  
--- @return table @A table of any child objects that are selected, including tables for children of the child objects (These tables may also contain table memb
function Panel:GetSelectedChildren()
end

--- Returns the currently selected range of text.  
--- This function will only work on RichText and TextEntry panels and their derivatives.  
--- @return number @The start of the range
--- @return number @The end of the range
function Panel:GetSelectedTextRange()
end

--- Returns the panel object (`self`) if it has been enabled as a selection canvas. This is achieved using Panel:SetSelectionCanvas.  
--- @return Panel @The panel object this method was called on if enabled as a selection canvas, otherwise `nil`.
function Panel:GetSelectionCanvas()
end

--- Returns the size of the panel.  
--- If you require both the panel's position and size, consider using Panel:GetBounds instead.  
--- @return number @width
--- @return number @height
function Panel:GetSize()
end

--- Returns the table for the derma skin currently being used by this panel object.  
--- @return table @The derma skin table currently being used by this object.
function Panel:GetSkin()
end

--- Returns the internal Lua table of the panel.  
--- @return table @A table containing all the members of given panel object.
function Panel:GetTable()
end

--- Returns the height of the panel.  
--- See Panel:GetWide for the width of the panel. See also Panel:GetSize for a function that returns both.  
--- @return number @height
function Panel:GetTall()
end

--- Returns the panel's text (where applicable).  
--- This method returns a maximum of 1023 bytes, except for DTextEntry.  
--- @return string @The panel's text.
function Panel:GetText()
end

--- Gets the left and top text margins of a text-based panel object, such as a DButton or DLabel. This is set with Panel:SetTextInset.  
--- @return number @The left margin of the text, in pixels.
--- @return number @The top margin of the text, in pixels.
function Panel:GetTextInset()
end

--- Gets the size of the text within a Label derived panel.  
--- @return number @The width of the text in the DLabel.
--- @return number @The height of the text in the DLabel.
function Panel:GetTextSize()
end

--- Returns the tooltip text that was set with PANEL:SetTooltip.  
--- @return string @The tooltip text, if it was set.
function Panel:GetTooltip()
end

--- Returns the tooltip delay (time between hovering over the panel, and the tooltip showing up) that was set with Panel:SetTooltipDelay, or nothing if it was not set.  
--- If the delay is not explicitly set by this function, it will fallback to the value of the `tooltip_delay` ConVar, which is `0.5` by default.  
--- @return number @The tooltip delay in seconds, if it was set.
function Panel:GetTooltipDelay()
end

--- Returns the tooltip panel that was set with PANEL:SetTooltipPanel.  
--- @return Panel @The tooltip panel, if it was set.
function Panel:GetTooltipPanel()
end

--- Gets valid receiver slot of currently dragged panel.  
--- @return Panel @The panel this was called on if a valid receiver slot exists, otherwise false.
--- @return table @The slot table.
function Panel:GetValidReceiverSlot()
end

--- Returns the value the panel holds.  
--- In engine is only implemented for CheckButton, Label and TextEntry as a string.  
--- ℹ **NOTE**: This function is limited to 8092 Bytes. If using DTextEntry, use Panel:GetText for unlimited bytes.  
--- @return any @The value the panel holds.
function Panel:GetValue()
end

--- Returns the width of the panel.  
--- See Panel:GetTall for the height of the panel. See also Panel:GetSize for a function that returns both.  
--- @return number @width
function Panel:GetWide()
end

--- Returns the X position of the panel relative to its Panel:GetParent.  
--- Uses Panel:GetPos internally.  
--- @return number @X coordinate.
function Panel:GetX()
end

--- Returns the Y position of the panel relative to its Panel:GetParent.  
--- Uses Panel:GetPos internally.  
--- @return number @Y coordinate.
function Panel:GetY()
end

--- Returns the Z position of the panel.  
--- @return number @The Z order position of the panel.
function Panel:GetZPos()
end

--- Goes back one page in the HTML panel's history if available.  
function Panel:GoBack()
end

--- Goes forward one page in the HTML panel's history if available.  
function Panel:GoForward()
end

--- Goes to the page in the HTML panel's history at the specified relative offset.  
--- @param offset number @The offset in the panel's back/forward history, relative to the current page, that you would like to skip to
function Panel:GoToHistoryOffset(offset)
end

--- Causes a RichText element to scroll to the bottom of its text.  
function Panel:GotoTextEnd()
end

--- Causes a RichText element to scroll to the top of its text.  
--- 🦟 **BUG**: [This does not work on the same frame as Panel:SetText.](https://github.com/Facepunch/garrysmod-issues/issues/2239)  
function Panel:GotoTextStart()
end

--- Returns whenever the panel has child panels.  
--- @return boolean @hasChilds
function Panel:HasChildren()
end

--- Returns if the panel is focused.  
--- @return boolean @hasFocus
function Panel:HasFocus()
end

--- Returns if the panel or any of its children(sub children and so on) has the focus.  
--- @return boolean @hasHierarchicalFocus
function Panel:HasHierarchicalFocus()
end

--- Returns whether the panel is a descendent of the given panel.  
--- @param parentPanel Panel 
--- @return boolean @True if the panel is contained within parentPanel.
function Panel:HasParent(parentPanel)
end

--- Makes a panel invisible.  
function Panel:Hide()
end

--- Marks the end of a clickable text segment in a RichText element, started with Panel:InsertClickableTextStart.  
function Panel:InsertClickableTextEnd()
end

--- Starts the insertion of clickable text for a RichText element. Any text appended with Panel:AppendText between this call and Panel:InsertClickableTextEnd will become clickable text.  
--- The hook PANEL:ActionSignal is called when the text is clicked, with "TextClicked" as the signal name and `signalValue` as the signal value.  
--- ℹ **NOTE**: The clickable text is a separate Derma panel which will not inherit the current font from the `RichText`.  
--- @param signalValue string @The text passed as the action signal's value.
function Panel:InsertClickableTextStart(signalValue)
end

--- Inserts a color change in a RichText element, which affects the color of all text added with Panel:AppendText until another color change is applied.  
--- @param r number @The red value `(0 - 255)`.
--- @param g number @The green value `(0 - 255)`.
--- @param b number @The blue value `(0 - 255)`.
--- @param a number @The alpha value `(0 - 255)`.
function Panel:InsertColorChange(r, g, b, a)
end

--- Begins a text fade for a RichText element where the last appended text segment is fully faded out after a specific amount of time, at a specific speed.  
--- The alpha of the text at any given time is determined by the text's base alpha * ((`sustain` - Global.CurTime) / `length`) where Global.CurTime is added to `sustain` when this method is called.  
--- @param sustain number @The number of seconds the text remains visible.
--- @param length number @The number of seconds it takes the text to fade out
function Panel:InsertFade(sustain, length)
end

--- Invalidates the layout of this panel object and all its children. This will cause these objects to re-layout immediately, calling PANEL:PerformLayout. If you want to perform the layout in the next frame, you will have loop manually through all children, and call Panel:InvalidateLayout on each.  
--- @param recursive? boolean @If `true`, the method will recursively invalidate the layout of all children
function Panel:InvalidateChildren(recursive)
end

--- Causes the panel to re-layout in the next frame. During the layout process  PANEL:PerformLayout will be called on the target panel.  
--- You should avoid calling this function every frame.  
--- 🦟 **BUG**: [Using this on a panel after clicking on a docked element will cause docked elements to reorient themselves incorrectly. This can be fixed by assigning a unique Panel:SetZPos to each docked element.](https://github.com/Facepunch/garrysmod-issues/issues/2574)  
--- @param layoutNow? boolean @If true the panel will re-layout instantly and not wait for the next frame.
function Panel:InvalidateLayout(layoutNow)
end

--- Calls Panel:InvalidateLayout on the panel's parent. This function will silently fail if the panel has no parent.  
--- This will cause the parent panel to re-layout, calling PANEL:PerformLayout.  
--- Internally sets `LayingOutParent` to `true` on this panel, and will silently fail if it is already set.  
--- @param layoutNow? boolean @If `true`, the re-layout will occur immediately, otherwise it will be performed in the next frame.
function Panel:InvalidateParent(layoutNow)
end

--- Determines whether the mouse cursor is hovered over one of this panel object's children. This is a reverse process using vgui.GetHoveredPanel, and looks upward to find the parent.  
--- @param immediate? boolean @Set to true to check only the immediate children of given panel ( first level )
--- @return boolean @Whether or not one of this panel object's children is being hovered over.
function Panel:IsChildHovered(immediate)
end

--- Returns whether this panel is draggable ( if user is able to drag it ) or not.  
--- @return boolean @Whether this panel is draggable ( if user is able to drag it ) or not.
function Panel:IsDraggable()
end

--- Returns whether this panel is currently being dragged or not.  
--- @return boolean @Whether this panel is currently being dragged or not.
function Panel:IsDragging()
end

--- Returns whether the the panel is enabled or disabled.  
--- See Panel:SetEnabled for a function that makes the panel enabled or disabled.  
--- @return boolean @Whether the panel is enabled or disabled.
function Panel:IsEnabled()
end

--- Returns whether the mouse cursor is hovering over this panel or not  
--- Uses vgui.GetHoveredPanel internally.  
--- Requires Panel:SetMouseInputEnabled to be set to true.  
--- @return boolean @true if the panel is hovered
function Panel:IsHovered()
end

--- Returns true if the panel can receive keyboard input.  
--- @return boolean @keyboardInputEnabled
function Panel:IsKeyboardInputEnabled()
end

--- Determines whether or not a HTML or DHTML element is currently loading a page.  
--- ℹ **NOTE**: Before calling Panel:SetHTML or DHTML:OpenURL, the result seems to be `false` with the Awesomium web renderer and `true` for the Chromium web renderer. This difference can be used to determine the available HTML5 capabilities.  
--- ℹ **NOTE**: On Awesomium, the result remains `true` until the root document is loaded and when in-page content is loading (when adding pictures, frames, etc.). During this state, the HTML texture is not refreshed and the panel is not painted (it becomes invisible).  
--- On Chromium, the value is only `true` when the root document is not ready. The rendering is not suspended when in-page elements are loading.  
--- @return boolean @Whether or not the (D)HTML object is loading.
function Panel:IsLoading()
end

--- Returns if the panel is going to be deleted in the next frame.  
--- @return boolean @markedForDeletion
function Panel:IsMarkedForDeletion()
end

--- Returns whether the panel was made modal or not. See Panel:DoModal.  
--- @return boolean @True if the panel is modal.
function Panel:IsModal()
end

--- Returns true if the panel can receive mouse input.  
--- @return boolean @mouseInputEnabled
function Panel:IsMouseInputEnabled()
end

--- Returns whether the panel contains the given panel, recursively.  
--- @param childPanel Panel 
--- @return boolean @True if the panel contains childPanel.
function Panel:IsOurChild(childPanel)
end

--- Returns if the panel was made popup or not. See Panel:MakePopup  
--- @return boolean @`true` if the panel was made popup.
function Panel:IsPopup()
end

--- Determines if the panel object is selectable (like icons in the Spawn Menu, holding `Shift`). This is set with Panel:SetSelectable.  
--- @return boolean @Whether the panel is selectable or not.
function Panel:IsSelectable()
end

--- Returns if the panel object is selected (like icons in the Spawn Menu, holding `Shift`). This can be set in Lua using Panel:SetSelected.  
--- @return boolean @Whether the panel object is selected or not
function Panel:IsSelected()
end

--- Determines if the panel object is a selection canvas or not. This is set with Panel:SetSelectionCanvas.  
--- @return any @The value (if any) set by Panel:SetSelectionCanvas.
function Panel:IsSelectionCanvas()
end

--- Returns if the panel is valid and not marked for deletion.  
--- @return boolean @True if the object is valid.
function Panel:IsValid()
end

--- Returns if the panel is visible. This will **NOT** take into account visibility of the parent.  
--- @return boolean @`true` if the panel ls visible, `false` otherwise.
function Panel:IsVisible()
end

--- Returns if a panel allows world clicking set by Panel:SetWorldClicker.  
--- @return boolean @If the panel allows world clicking.
function Panel:IsWorldClicker()
end

--- Remove the focus from the panel.  
function Panel:KillFocus()
end

--- Redefines the panel object's Panel:SetPos method to operate using frame-by-frame linear interpolation (Global.Lerp). When the panel's position is changed, it will move to the target position at the speed defined. You can undo this with Panel:DisableLerp.  
--- Unlike the other panel animation functions, such as Panel:MoveTo, this animation method will not operate whilst the game is paused. This is because it relies on Global.FrameTime.  
--- @param speed number @The speed at which to move the panel
--- @param easeOut boolean @This causes the panel object to 'jump' at the target, slowing as it approaches
function Panel:LerpPositions(speed, easeOut)
end

--- Loads a .gwen file (created by GWEN Designer) and calls Panel:LoadGWENString with the contents of the loaded file.  
--- Used to load panel controls from a file.  
--- @param filename string @The file to open
--- @param path? string @The path used to look up the file
function Panel:LoadGWENFile(filename, path)
end

--- Loads controls for the panel from a JSON string.  
--- @param str string @JSON string containing information about controls to create.
function Panel:LoadGWENString(str)
end

--- Sets a new image to be loaded by a TGAImage.  
--- @param imageName string @The file path.
--- @param strPath string @The PATH to search in
function Panel:LoadTGAImage(imageName, strPath)
end

--- Returns the cursor position local to the position of the panel (usually the upper-left corner).  
--- @return number @The x coordinate
--- @return number @The y coordinate
function Panel:LocalCursorPos()
end

--- Gets the absolute screen position of the position specified relative to the panel.  
--- See also Panel:ScreenToLocal.  
--- ⚠ **WARNING**: This function uses a cached value for the screen position of the panel, computed at the end of the last VGUI Think/Layout pass, so inaccurate results may be returned if the panel or any of its ancestors have been re-positioned outside of PANEL:Think or PANEL:PerformLayout within the last frame.  
--- ℹ **NOTE**: If the panel uses Panel:Dock, this function will return 0, 0 when the panel was created. The position will be updated in the next frame.  
--- @param posX number @The X coordinate of the position on the panel to translate.
--- @param posY number @The Y coordinate of the position on the panel to translate.
--- @return number @The X coordinate relative to the screen.
--- @return number @The Y coordinate relative to the screen.
function Panel:LocalToScreen(posX, posY)
end

--- Focuses the panel and enables it to receive input.  
--- This automatically calls Panel:SetMouseInputEnabled and Panel:SetKeyboardInputEnabled and sets them to `true`.  
--- ℹ **NOTE**: Panels derived from Panel will not work properly with this function. Due to this, any children will not be intractable with keyboard. Derive from EditablePanel instead.  
--- For non gui related mouse focus, you can use gui.EnableScreenClicker.  
function Panel:MakePopup()
end

--- Allows the panel to receive mouse input even if the mouse cursor is outside the bounds of the panel.  
--- @param doCapture boolean @Set to true to enable, set to false to disable.
function Panel:MouseCapture(doCapture)
end

--- Places the panel above the passed panel with the specified offset.  
--- @param panel Panel @Panel to position relatively to.
--- @param offset? number @The align offset.
function Panel:MoveAbove(panel, offset)
end

--- Places the panel below the passed panel with the specified offset.  
--- @param panel Panel @Panel to position relatively to.
--- @param offset? number @The align offset.
function Panel:MoveBelow(panel, offset)
end

--- Moves the panel by the specified coordinates using animation.  
--- @param moveX number @The number of pixels to move by in the horizontal (x) direction.
--- @param moveY number @The number of pixels to move by in the vertical (y) direction.
--- @param time number @The time (in seconds) in which to perform the animation.
--- @param delay? number @The delay (in seconds) before the animation begins.
--- @param ease? number @The easing of the start and/or end speed of the animation
--- @param callback? function @The function to be called once the animation is complete
function Panel:MoveBy(moveX, moveY, time, delay, ease, callback)
end

--- Places the panel left to the passed panel with the specified offset.  
--- @param panel Panel @Panel to position relatively to.
--- @param offset? number @The align offset.
function Panel:MoveLeftOf(panel, offset)
end

--- Places the panel right to the passed panel with the specified offset.  
--- @param panel Panel @Panel to position relatively to.
--- @param offset? number @The align offset.
function Panel:MoveRightOf(panel, offset)
end

--- Moves the panel to the specified position using animation.  
--- ℹ **NOTE**: Setting the ease argument to 0 will result in the animation happening instantly, this applies to all MoveTo/SizeTo functions  
--- @param posX number @The target x coordinate of the panel.
--- @param posY number @The target y coordinate of the panel.
--- @param time number @The time to perform the animation within.
--- @param delay? number @The delay before the animation starts.
--- @param ease? number @The easing of the start and/or end speed of the animation
--- @param callback function @The function to be called once the animation finishes
function Panel:MoveTo(posX, posY, time, delay, ease, callback)
end

--- Moves this panel object in front of the specified sibling (child of the same parent) in the render order, and shuffles up the Z-positions of siblings now behind.  
--- @param siblingPanel Panel @The panel to move this one in front of
--- @return boolean @`false` if the passed panel is not a sibling, otherwise `nil`.
function Panel:MoveToAfter(siblingPanel)
end

--- Moves the panel object behind all other panels on screen. If the panel has been made a pop-up with Panel:MakePopup, it will still draw in front of any panels that haven't.  
function Panel:MoveToBack()
end

--- Moves this panel object behind the specified sibling (child of the same parent) in the render order, and shuffles up the Panel:SetZPos of siblings now in front.  
--- @param siblingPanel Panel @The panel to move this one behind
--- @return boolean @`false` if the passed panel is not a sibling, otherwise `nil`.
function Panel:MoveToBefore(siblingPanel)
end

--- Moves the panel in front of all other panels on screen. Unless the panel has been made a pop-up using Panel:MakePopup, it will still draw behind any that have.  
function Panel:MoveToFront()
end

--- Creates a new animation for the panel object.  
--- Methods that use this function:  
--- * Panel:MoveTo  
--- * Panel:SizeTo  
--- * Panel:SlideUp  
--- * Panel:SlideDown  
--- * Panel:ColorTo  
--- * Panel:AlphaTo  
--- * Panel:MoveBy  
--- * Panel:LerpPositions  
--- @param length number @The length of the animation in seconds.
--- @param delay? number @The delay before the animation starts.
--- @param ease? number @The power/index to use for easing
--- @param callback? function @The function to be called when the animation ends
--- @return table @Partially filled Structures/AnimationData with members:
function Panel:NewAnimation(length, delay, ease, callback)
end

--- Sets whether this panel's drawings should be clipped within the parent panel's bounds.  
--- See also Global.DisableClipping.  
--- @param clip boolean @Whether to clip or not.
function Panel:NoClipping(clip)
end

--- Returns the number of children of the panel object that are selected. This is equivalent to calling Panel:IsSelected on all child objects and counting the number of returns that are `true`.  
--- @return number @The number of child objects that are currently selected
function Panel:NumSelectedChildren()
end

--- Instructs a HTML control to download and parse a HTML script using the passed URL.  
--- This function can also be used on [HTML](https://wiki.facepunch.com/gmod/HTML).  
--- @param URL string @URL to open
function Panel:OpenURL(URL)
end

--- Paints a ghost copy of the panel at the given position.  
--- ⚠ **WARNING**:   
--- Breaks Z pos of panel PANEL:SetZPos  
--- @param posX number @The x coordinate to draw the panel from.
--- @param posY number @The y coordinate to draw the panel from.
function Panel:PaintAt(posX, posY)
end

--- Paints the panel at its current position. To use this you must call Panel:SetPaintedManually(true).  
function Panel:PaintManual()
end

--- Set to true by the dragndrop system when the panel is being drawn for the drag'n'drop.  
--- @return boolean @Set to true if drawing for the transparent dragging render.
function Panel:PaintingDragging()
end

--- Parents the panel to the HUD.  
--- Makes it invisible on the escape-menu and disables controls.  
function Panel:ParentToHUD()
end

--- 🛑 **DEPRECATED**: Due to privacy concerns, this function has been disabled  
--- Only works for TextEntries.  
--- Pastes the contents of the clipboard into the TextEntry.  
--- ℹ **NOTE**: Tab characters will be dropped from the pasted text  
--- @deprecated
function Panel:Paste()
end

--- Sets the width and position of a DLabel and places the passed panel object directly to the right of it. Returns the `y` value of the bottom of the tallest object. The panel on which this method is run is not relevant; only the passed objects are affected.  
--- @param lblWidth number @The width to set the label to.
--- @param x number @The horizontal (x) position at which to place the label.
--- @param y number @The vertical (y) position at which to place the label.
--- @param lbl Panel @The label to resize and position.
--- @param panelObj Panel @The panel object to place to the right of the label.
--- @return number @The distance from the top of the parent panel to the bottom of the tallest object (the `y` position plus the height of the label or passed p
function Panel:PositionLabel(lblWidth, x, y, lbl, panelObj)
end

--- 🛑 **DEPRECATED**: Only used in deprecated Derma controls.  
--- Sends a command to the panel.  
--- @param messageName string @The name of the message.
--- @param valueType string @The type of the variable to post.
--- @param value string @The value to post.
--- @deprecated
function Panel:PostMessage(messageName, valueType, value)
end

--- Enables the queue for panel animations. If enabled, the next new animation will begin after all current animations have ended. This must be called before Panel:NewAnimation to work, and only applies to the next new animation. If you want to queue many, you must call this before each.  
function Panel:Queue()
end

--- Causes a SpawnIcon to rebuild its model image.  
function Panel:RebuildSpawnIcon()
end

--- Re-renders a spawn icon with customized cam data.  
--- Global.PositionSpawnIcon can be used to easily calculate the necessary camera parameters.  
--- ℹ **NOTE**: This function does **not** accept the standard Structures/CamData.  
--- @param data table @A four-membered table containing the information needed to re-render:
function Panel:RebuildSpawnIconEx(data)
end

--- Allows the panel to receive drag and drop events. Can be called multiple times with different names to receive multiple different draggable panel events.  
--- @param name string @Name of DnD panels to receive
--- @param func function @This function is called whenever a panel with valid name is hovering above and dropped on this panel
--- @param menu table @A table of strings that will act as a menu if drag'n'drop was performed with a right click
function Panel:Receiver(name, func, menu)
end

--- Refreshes the HTML panel's current page.  
--- @param ignoreCache? boolean @If true, the refresh will ignore cached content similar to "ctrl+f5" in most browsers.
function Panel:Refresh(ignoreCache)
end

--- Marks a panel for deletion so it will be deleted on the next frame.  
--- This will not mark child panels for deletion this frame, but they will be marked and deleted in the next frame.  
--- See also Panel:IsMarkedForDeletion  
--- Will automatically call Panel:InvalidateParent.  
function Panel:Remove()
end

--- Attempts to obtain focus for this panel.  
function Panel:RequestFocus()
end

--- Resets all text fades in a RichText element made with Panel:InsertFade.  
--- @param hold boolean @True to reset fades, false otherwise.
--- @param expiredOnly boolean @Any value equating to `true` will reset fades only on text segments that are completely faded out.
--- @param newSustain number @The new sustain value of each faded text segment
function Panel:ResetAllFades(hold, expiredOnly, newSustain)
end

--- Runs/Executes a string as JavaScript code in a panel.  
--- ℹ **NOTE**: This function does **NOT** evaluate expression (i.e. allow you to pass variables from JavaScript (JS) to Lua context).  
--- Because a return value is nil/no value (a.k.a. void).  
--- If you wish to pass/return values from JS to Lua, you may want to use DHTML:AddFunction function to accomplish that job.  
--- ℹ **NOTE**: The Awesomium web renderer automatically delays the code execution if the document is not ready, but the Chromium web renderer does not!  
--- This means that with Chromium, you cannot JavaScript run code immediatly after calling Panel:SetHTML or DHTML:OpenURL. You should wait for the events PANEL:OnDocumentReady or PANEL:OnFinishLoadingDocument to be triggered before proceeding, otherwise you may manipulate an empty / incomplete document.  
--- @param js string @Specify JavaScript code to be executed.
function Panel:RunJavascript(js)
end

--- Saves the current state (caret position and the text inside) of a TextEntry as an undo state.  
--- See also Panel:Undo.  
function Panel:SaveUndoState()
end

--- Translates global screen coordinate to coordinates relative to the panel.  
--- See also Panel:LocalToScreen.  
--- ⚠ **WARNING**: This function uses a cached value for the screen position of the panel, computed at the end of the last VGUI Think/Layout pass, so inaccurate results may be returned if the panel or any of its ancestors have been re-positioned outside of PANEL:Think or PANEL:PerformLayout within the last frame.  
--- @param screenX number @The x coordinate of the screen position to be translated.
--- @param screenY number @The y coordinate of the screed position be to translated.
--- @return number @Relativeposition X
--- @return number @Relativeposition Y
function Panel:ScreenToLocal(screenX, screenY)
end

--- Selects all items within a panel or object. For text-based objects, selects all text.  
function Panel:SelectAll()
end

--- If called on a text entry, clicking the text entry for the first time will automatically select all of the text ready to be copied by the user.  
function Panel:SelectAllOnFocus()
end

--- 🛑 **DEPRECATED**: Duplicate of Panel:SelectAll.  
--- Selects all the text in a panel object. Will not select non-text items; for this, use Panel:SelectAll.  
--- @deprecated
function Panel:SelectAllText()
end

--- Deselects all items in a panel object. For text-based objects, this will deselect all text.  
function Panel:SelectNone()
end

--- Sets the achievement to be displayed by AchievementIcon.  
--- @param id number @Achievement number ID
function Panel:SetAchievement(id)
end

--- 🛑 **DEPRECATED**: Does nothing at all.  
--- Used in Button to call a function when the button is clicked and in Slider when the value changes.  
--- @param func function @Function to call when the Button is clicked or the Slider value is changed
--- @deprecated
function Panel:SetActionFunction(func)
end

--- Configures a text input to allow user to type characters that are not included in the US-ASCII (7-bit ASCII) character set.  
--- Characters not included in US-ASCII are multi-byte characters in UTF-8. They can be accented characters, non-Latin characters and special characters.  
--- @param allowed boolean @Set to true in order not to restrict input characters.
function Panel:SetAllowNonAsciiCharacters(allowed)
end

--- Sets the alpha multiplier for the panel  
--- @param alpha number @The alpha value in the range of 0-255.
function Panel:SetAlpha(alpha)
end

--- Enables or disables animations for the panel object by overriding the PANEL:AnimationThink hook to nil and back.  
--- @param enable boolean @Whether to enable or disable animations.
function Panel:SetAnimationEnabled(enable)
end

--- Sets whenever the panel should be removed if the parent was removed.  
--- @param autoDelete boolean @Whenever to delete if the parent was removed or not.
function Panel:SetAutoDelete(autoDelete)
end

--- Sets the background color of a panel such as a RichText, Label or DColorCube.  
--- ℹ **NOTE**: This doesn't apply to all VGUI elements and its function varies between them  
--- For DLabel elements, you must use Panel:SetPaintBackgroundEnabled( true ) before applying the color.  
--- This will not work on setup of the panel - you should use this function in a hook like PANEL:ApplySchemeSettings or PANEL:PerformLayout.  
--- @param r_or_color number @The red channel of the color, or a Color
--- @param g number @The green channel of the color.
--- @param b number @The blue channel of the color.
--- @param a number @The alpha channel of the color.
function Panel:SetBGColor(r_or_color, g, b, a)
end

--- Sets the position of the caret (or text cursor) in a text-based panel object.  
--- @param offset number @Caret position/offset from the start of text
function Panel:SetCaretPos(offset)
end

--- Sets the action signal command that's fired when a Button is clicked. The hook PANEL:ActionSignal is called as the click response.  
--- This has no effect on buttons unless it has had its `AddActionSignalTarget` method called (an internal function not available by default in Garry's Mod LUA).  
--- A better alternative is calling Panel:Command when a DButton is clicked.  
function Panel:SetCommand()
end

--- ⚠ **WARNING**: This function does not exist on all panels  
--- ⚠ **WARNING**: This function cannot interact with serverside convars unless you are host  
--- ℹ **NOTE**: Blocked convars will not work with this, see Blocked ConCommands  
--- Sets this panel's convar. When the convar changes this panel will update automatically.  
--- For developer implementation, see Global.Derma_Install_Convar_Functions.  
--- @param convar string @The console variable to check.
function Panel:SetConVar(convar)
end

--- Sets the alignment of the contents.  
--- @param alignment number @The direction of the content, based on the number pad
function Panel:SetContentAlignment(alignment)
end

--- Stores a string in the named cookie using Panel:GetCookieName as prefix.  
--- You can also retrieve and modify this cookie by using the cookie. Cookies are stored in this format:  
--- ```  
--- panelCookieName.cookieName  
--- ```  
--- ⚠ **WARNING**: The panel's cookie name MUST be set for this function to work. See Panel:SetCookieName.  
--- @param cookieName string @The unique name used to retrieve the cookie later.
--- @param value string @The value to store in the cookie
function Panel:SetCookie(cookieName, value)
end

--- Sets the panel's cookie name. Calls PANEL:LoadCookies if defined.  
--- @param name string @The panel's cookie name
function Panel:SetCookieName(name)
end

--- Sets the appearance of the cursor. You can find a list of all available cursors with image previews [here](https://wiki.facepunch.com/gmod/Cursors).  
--- @param cursor string @The cursor to be set
function Panel:SetCursor(cursor)
end

--- Sets the drag parent.  
--- Drag parent means that when we start to drag this panel, we'll really start dragging the defined parent.  
--- @param parent Panel @The panel to set as drag parent.
function Panel:SetDragParent(parent)
end

--- Makes the panel render in front of all others, including the spawn menu and main menu.  
--- Priority is given based on the last call, so of two panels that call this method, the second will draw in front of the first.  
--- ℹ **NOTE**: This only makes the panel **draw** above other panels. If there's another panel that would have otherwise covered it, users will not be able to interact with it.  
--- Completely disregards PANEL:ParentToHUD.  
--- ⚠ **WARNING**: This does not work when using PANEL:SetPaintedManually or PANEL:PaintAt.  
--- @param drawOnTop? boolean @Whether or not to draw the panel in front of all others.
function Panel:SetDrawOnTop(drawOnTop)
end

--- Sets the target area for dropping when an object is being dragged around this panel using the dragndrop.  
--- This draws a target box of the specified size and position, until Panel:DragHoverEnd is called. It uses Panel:DrawDragHover to draw this area.  
--- @param x number @The x coordinate of the top-left corner of the drop area.
--- @param y number @The y coordinate of the top-left corner of the drop area.
--- @param width number @The width of the drop area.
--- @param height number @The height of the drop area.
function Panel:SetDropTarget(x, y, width, height)
end

--- Sets the enabled state of a disable-able panel object, such as a DButton or DTextEntry.  
--- See Panel:IsEnabled for a function that retrieves the "enabled" state of a panel.  
--- @param enable boolean @Whether to enable or disable the panel object.
function Panel:SetEnabled(enable)
end

--- Adds a shadow falling to the bottom right corner of the panel's text. This has no effect on panels that do not derive from Label.  
--- @param distance number @The distance of the shadow from the panel.
--- @param Color table @The color of the shadow
function Panel:SetExpensiveShadow(distance, Color)
end

--- Sets the foreground color of a panel.  
--- For a Label or RichText, this is the color of its text.  
--- This function calls Panel:SetFGColorEx internally.  
--- ℹ **NOTE**: This doesn't apply to all VGUI elements (such as DLabel) and its function varies between them  
--- @param r_or_color number @The red channel of the color, or a Color
--- @param g number @The green channel of the color.
--- @param b number @The blue channel of the color.
--- @param a number @The alpha channel of the color.
function Panel:SetFGColor(r_or_color, g, b, a)
end

--- Sets the panel that owns this FocusNavGroup to be the root in the focus traversal hierarchy. This function will only work on EditablePanel class panels and its derivatives.  
--- @param state boolean 
function Panel:SetFocusTopLevel(state)
end

--- Sets the font used to render this panel's text. This works for Label, TextEntry and RichText, but it's a better idea to use their local `SetFont` (DTextEntry:SetFont, DLabel:SetFont) methods when available.  
--- To retrieve the font used by a panel, call Panel:GetFont.  
--- @param fontName string @The name of the font
function Panel:SetFontInternal(fontName)
end

--- Allows you to set HTML code within a panel.  
--- @param HTML_code string @The code to set.
function Panel:SetHTML(HTML_code)
end

--- Sets the height of the panel.  
--- Calls PANEL:OnSizeChanged and marks this panel for layout (Panel:InvalidateLayout).  
--- See also Panel:SetSize.  
--- @param height number @The height to be set.
function Panel:SetHeight(height)
end

--- 🛑 **DEPRECATED**: Alias of Panel:SetKeyboardInputEnabled  
--- Enables or disables the keyboard input for the panel.  
--- @param keyboardInput boolean @Whether to enable or disable keyboard input.
--- @deprecated
function Panel:SetKeyBoardInputEnabled(keyboardInput)
end

--- Allows or disallows the panel to receive keyboard focus and input. This is recursively applied to all children.  
--- @param enable boolean @Whether keyboard input should be enabled for this panel.
function Panel:SetKeyboardInputEnabled(enable)
end

--- Sets the maximum character count this panel should have.  
--- This function will only work on RichText and TextEntry panels and their derivatives.  
--- @param maxChar number @The new maximum amount of characters this panel is allowed to contain.
function Panel:SetMaximumCharCount(maxChar)
end

--- Sets the minimum dimensions of the panel or object.  
--- You can restrict either or both values.  
--- Calling the function without arguments will remove the minimum size.  
--- @param minW? number @The minimum width of the object.
--- @param minH? number @The minimum height of the object.
function Panel:SetMinimumSize(minW, minH)
end

--- Sets the model to be displayed by SpawnIcon.  
--- ℹ **NOTE**: This must be called after setting size if you wish to use a different size spawnicon  
--- @param ModelPath string @The path of the model to set
--- @param skin? number @The skin to set
--- @param bodygroups string @The body groups to set
function Panel:SetModel(ModelPath, skin, bodygroups)
end

--- Enables or disables the mouse input for the panel.  
--- ℹ **NOTE**: Panels parented to the context menu will not be clickable unless Panel:SetKeyboardInputEnabled is enabled or Panel:MakePopup has been called. If you want the panel to have mouse input but you do not want to prevent players from moving, set Panel:SetKeyboardInputEnabled to false immediately after calling Panel:MakePopup.  
--- @param mouseInput boolean @Whenever to enable or disable mouse input.
function Panel:SetMouseInputEnabled(mouseInput)
end

--- Sets the internal name of the panel. Can be retrieved with Panel:GetName.  
--- @param name string @The new name of the panel.
function Panel:SetName(name)
end

--- Sets whenever all the default background of the panel should be drawn or not.  
--- @param paintBackground boolean @Whenever to draw the background or not.
function Panel:SetPaintBackgroundEnabled(paintBackground)
end

--- Sets whenever all the default border of the panel should be drawn or not.  
--- @param paintBorder boolean @Whenever to draw the border or not.
function Panel:SetPaintBorderEnabled(paintBorder)
end

--- 🛑 **DEPRECATED**: This function does nothing.  
--- This function does nothing.  
--- @deprecated
function Panel:SetPaintFunction()
end

--- Enables or disables painting of the panel manually with Panel:PaintManual.  
--- @param paintedManually boolean @True if the panel should be painted manually.
function Panel:SetPaintedManually(paintedManually)
end

--- Sets the parent of the panel.  
--- ℹ **NOTE**: Panels parented to the context menu will not be clickable unless Panel:SetMouseInputEnabled and Panel:SetKeyboardInputEnabled are both true or Panel:MakePopup has been called. If you want the panel to have mouse input but you do not want to prevent players from moving, set Panel:SetKeyboardInputEnabled to false immediately after calling Panel:MakePopup.  
--- @param parent Panel @The new parent of the panel.
function Panel:SetParent(parent)
end

--- Used by AvatarImage to load an avatar for given player.  
--- @param player Player @The player to use avatar of.
--- @param size number @The size of the avatar to use
function Panel:SetPlayer(player, size)
end

--- If this panel object has been made a popup with Panel:MakePopup, this method will prevent it from drawing in front of other panels when it receives input focus.  
--- @param stayAtBack boolean @If `true`, the popup panel will not draw in front of others when it gets focus, for example when it is clicked.
function Panel:SetPopupStayAtBack(stayAtBack)
end

--- Sets the position of the panel's top left corner.  
--- This will trigger PANEL:PerformLayout. You should avoid calling this function in PANEL:PerformLayout to avoid infinite loops.  
--- See also Panel:SetX and Panel:SetY.  
--- ℹ **NOTE**: If you wish to position and re-size panels without much guesswork and have them look good on different screen resolutions, you may find Panel:Dock useful  
--- @param posX number @The x coordinate of the position.
--- @param posY number @The y coordinate of the position.
function Panel:SetPos(posX, posY)
end

--- Sets whenever the panel should be rendered in the next screenshot.  
--- @param renderInScreenshot boolean @Whether to render in the screenshot or not.
function Panel:SetRenderInScreenshots(renderInScreenshot)
end

--- Sets whether the panel object can be selected or not (like icons in the Spawn Menu, holding `Shift`). If enabled, this will affect the function of a DButton whilst `Shift` is pressed. Panel:SetSelected can be used to select/deselect the object.  
--- @param selectable boolean @Whether the panel object should be selectable or not.
function Panel:SetSelectable(selectable)
end

--- Sets the selected state of a selectable panel object. This functionality is set with Panel:SetSelectable and checked with Panel:IsSelectable.  
--- @param selected? boolean @Whether the object should be selected or deselected
function Panel:SetSelected(selected)
end

--- Enables the panel object for selection (much like the spawn menu).  
--- @param set boolean @Whether to enable selection.
function Panel:SetSelectionCanvas(set)
end

--- Sets the size of the panel.  
--- Calls PANEL:OnSizeChanged and marks this panel for layout (Panel:InvalidateLayout).  
--- See also Panel:SetWidth and Panel:SetHeight.  
--- ℹ **NOTE**: If you wish to position and re-size panels without much guesswork and have them look good on different screen resolutions, you may find Panel:Dock useful  
--- @param width number @The width of the panel.
--- @param height number @The height of the panel.
function Panel:SetSize(width, height)
end

--- Sets the derma skin that the panel object will use, and refreshes all panels with derma.RefreshSkins.  
--- @param skinName string @The name of the skin to use
function Panel:SetSkin(skinName)
end

--- Sets the `.png` image to be displayed on a  SpawnIcon or the panel it is based on - ModelImage.  
--- Only `.png` images can be used with this function.  
--- @param icon string @A path to the .png material, for example one of the Silkicons shipped with the game.
function Panel:SetSpawnIcon(icon)
end

--- Used by AvatarImage panels to load an avatar by its 64-bit Steam ID (community ID).  
--- @param steamid string @The 64bit SteamID of the player to load avatar of
--- @param size number @The size of the avatar to use
function Panel:SetSteamID(steamid, size)
end

--- When TAB is pressed, the next selectable panel in the number sequence is selected.  
--- @param position number 
function Panel:SetTabPosition(position)
end

--- Sets height of a panel. An alias of Panel:SetHeight.  
--- @param height number @Desired height to set
function Panel:SetTall(height)
end

--- Removes the panel after given time in seconds.  
--- ℹ **NOTE**: This function will not work if PANEL:AnimationThink is overridden, unless Panel:AnimationThinkInternal is called every frame.  
--- @param delay number @Delay in seconds after which the panel should be removed.
function Panel:SetTerm(delay)
end

--- Sets the text value of a panel object containing text, such as a Label, TextEntry or  RichText and their derivatives, such as DLabel, DTextEntry or DButton.  
--- ⚠ **WARNING**: When used on a Label or its derivatives ( DLabel and DButton ), it will automatically call Panel:InvalidateLayout, meaning that you should avoid running this function every frame on these panels to avoid unnecessary performance loss.  
--- @param text string @The text value to set.
function Panel:SetText(text)
end

--- Sets the left and top text margins of a text-based panel object, such as a DButton or DLabel.  
--- @param insetX number @The left margin for the text, in pixels
--- @param insetY number @The top margin for the text, in pixels.
function Panel:SetTextInset(insetX, insetY)
end

--- Sets text selection colors of a RichText element.  
--- @param textColor table @The Global.Color to set for selected text.
--- @param backgroundColor table @The Global.Color to set for selected text background.
function Panel:SetTextSelectionColors(textColor, backgroundColor)
end

--- Sets the height of a RichText element to accommodate the text inside.  
--- ℹ **NOTE**: This function internally relies on Panel:GetNumLines, so it should be called at least a couple frames after modifying the text using Panel:AppendText  
function Panel:SetToFullHeight()
end

--- Sets the tooltip to be displayed when a player hovers over the panel object with their cursor.  
--- @param str string @The text to be displayed in the tooltip
function Panel:SetTooltip(str)
end

--- Sets the tooltip delay. (time between hovering over the panel, and the tooltip showing up)  
--- Can be retrieved with Panel:GetTooltipDelay.  
--- @param tooltip number @The tooltip delay to set.
function Panel:SetTooltipDelay(tooltip)
end

--- Sets the panel to be displayed as contents of a DTooltip when a player hovers over the panel object with their cursor. See Panel:SetTooltipPanelOverride if you are looking to override DTooltip itself.  
--- ℹ **NOTE**: Panel:SetTooltip will override this functionality.  
--- ⚠ **WARNING**:   
--- Calling this from PANEL:OnCursorEntered is too late! The tooltip will not be displayed or be updated.  
--- Given panel or the previously set one will **NOT** be automatically removed.  
--- @param tooltipPanel? Panel @The panel to use as the tooltip.
function Panel:SetTooltipPanel(tooltipPanel)
end

--- Sets the panel class to be created instead of DTooltip when the player hovers over this panel and a tooltip needs creating.  
--- @param override string @The panel class to override the default DTooltip
function Panel:SetTooltipPanelOverride(override)
end

--- Sets the URL of a link-based panel such as DLabelURL.  
--- @param url string @The URL to set
function Panel:SetURL(url)
end

--- Sets the underlined font for use by clickable text in a RichText. See also Panel:InsertClickableTextStart  
--- This function will only work on RichText panels.  
--- @param fontName string @The name of the font
function Panel:SetUnderlineFont(fontName)
end

--- Sets the visibility of the vertical scrollbar.  
--- Works for RichText and TextEntry.  
--- @param display? boolean @True to display the vertical text scroll bar, false to hide it.
function Panel:SetVerticalScrollbarEnabled(display)
end

--- Sets the "visibility" of the panel.  
--- @param visible boolean @The visibility of the panel.
function Panel:SetVisible(visible)
end

--- Sets width of a panel. An alias of Panel:SetWidth.  
--- @param width number @Desired width to set
function Panel:SetWide(width)
end

--- Sets the width of the panel.  
--- Calls PANEL:OnSizeChanged and marks this panel for layout (Panel:InvalidateLayout).  
--- See also Panel:SetSize.  
--- @param width number @The new width of the panel.
function Panel:SetWidth(width)
end

--- This makes it so that when you're hovering over this panel you can `click` on the world. Your viewmodel will aim etc. This is primarily used for the Sandbox context menu.  
--- 🦟 **BUG**: [This function doesn't scale with custom FOV specified by GM:CalcView or WEAPON:TranslateFOV.](https://github.com/Facepunch/garrysmod-issues/issues/3467)  
--- @param enabled boolean 
function Panel:SetWorldClicker(enabled)
end

--- Sets whether text wrapping should be enabled or disabled on Label and DLabel panels.  
--- Use DLabel:SetAutoStretchVertical to automatically correct vertical size; Panel:SizeToContents will not set the correct height.  
--- @param wrap boolean @`True` to enable text wrapping, `false` otherwise.
function Panel:SetWrap(wrap)
end

--- Sets the X position of the panel.  
--- Uses Panel:SetPos internally.  
--- @param x number @The X coordinate of the position.
function Panel:SetX(x)
end

--- Sets the Y position of the panel.  
--- Uses Panel:SetPos internally.  
--- @param y number @The Y coordinate of the position.
function Panel:SetY(y)
end

--- Sets the panels z position which determines the rendering order.  
--- Panels with lower z positions appear behind panels with higher z positions.  
--- This also controls in which order panels docked with Panel:Dock appears.  
--- @param zIndex number @The z position of the panel
function Panel:SetZPos(zIndex)
end

--- Makes a panel visible.  
function Panel:Show()
end

--- Uses animation to resize the panel to the specified size.  
--- @param sizeW? number @The target width of the panel
--- @param sizeH? number @The target height of the panel
--- @param time number @The time to perform the animation within.
--- @param delay? number @The delay before the animation starts.
--- @param ease? number @Easing of the start and/or end speed of the animation
--- @param callback function @The function to be called once the animation finishes
function Panel:SizeTo(sizeW, sizeH, time, delay, ease, callback)
end

--- Resizes the panel to fit the bounds of its children.  
--- ℹ **NOTE**: Your panel must have its layout updated (Panel:InvalidateLayout) for this function to work properly.  
--- ℹ **NOTE**: The sizeW and sizeH parameters are false by default. Therefore, calling this function with no arguments will result in a no-op.  
--- @param sizeW? boolean @Resize with width of the panel.
--- @param sizeH? boolean @Resize the height of the panel.
function Panel:SizeToChildren(sizeW, sizeH)
end

--- Resizes the panel so that its width and height fit all of the content inside.  
--- ℹ **NOTE**: Only works on Label derived panels such as DLabel by default, and on any panel that manually implemented the Panel:SizeToContents method, such as DNumberWang and DImage.  
--- ⚠ **WARNING**: You must call this function **AFTER** setting text/font, adjusting child panels or otherwise altering the panel.  
function Panel:SizeToContents()
end

--- Resizes the panel object's width to accommodate all child objects/contents.  
--- Only works on Label derived panels such as DLabel by default, and on any panel that manually implemented Panel:GetContentSize method.  
--- ℹ **NOTE**: You must call this function **AFTER** setting text/font or adjusting child panels.  
--- @param addVal? number @The number of extra pixels to add to the width
function Panel:SizeToContentsX(addVal)
end

--- Resizes the panel object's height to accommodate all child objects/contents.  
--- Only works on Label derived panels such as DLabel by default, and on any panel that manually implemented Panel:GetContentSize method.  
--- ℹ **NOTE**: You must call this function **AFTER** setting text/font or adjusting child panels.  
--- @param addVal? number @The number of extra pixels to add to the height.
function Panel:SizeToContentsY(addVal)
end

--- Slides the panel in from above.  
--- @param Length number @Time to complete the animation.
function Panel:SlideDown(Length)
end

--- Slides the panel out to the top.  
--- @param Length number @Time to complete the animation.
function Panel:SlideUp(Length)
end

--- Begins a box selection, enables mouse capture for the panel object, and sets the start point of the selection box to the mouse cursor's position, relative to this object. For this to work, either the object or its parent must be enabled as a selection canvas. This is set using Panel:SetSelectionCanvas.  
function Panel:StartBoxSelection()
end

--- Stops all panel animations by clearing its animation list. This also clears all delayed animations.  
function Panel:Stop()
end

--- Resizes the panel object's height so that its bottom is aligned with the top of the passed panel. An offset greater than zero will reduce the panel's height to leave a gap between it and the passed panel.  
--- @param tgtPanel Panel @The panel to align the bottom of this one with.
--- @param offset? number @The gap to leave between this and the passed panel
function Panel:StretchBottomTo(tgtPanel, offset)
end

--- Resizes the panel object's width so that its right edge is aligned with the left of the passed panel. An offset greater than zero will reduce the panel's width to leave a gap between it and the passed panel.  
--- @param tgtPanel Panel @The panel to align the right edge of this one with.
--- @param offset? number @The gap to leave between this and the passed panel
function Panel:StretchRightTo(tgtPanel, offset)
end

--- Sets the dimensions of the panel to fill its parent. It will only stretch in directions that aren't nil.  
--- @param offsetLeft number @The left offset to the parent.
--- @param offsetTop number @The top offset to the parent.
--- @param offsetRight number @The right offset to the parent.
--- @param offsetBottom number @The bottom offset to the parent.
function Panel:StretchToParent(offsetLeft, offsetTop, offsetRight, offsetBottom)
end

--- Toggles the selected state of a selectable panel object. This functionality is set with Panel:SetSelectable and checked with Panel:IsSelectable. To check whether the object is selected or not, Panel:IsSelected is used.  
function Panel:ToggleSelection()
end

--- Toggles the visibility of a panel and all its children.  
function Panel:ToggleVisible()
end

--- Restores the last saved state (caret position and the text inside) of a TextEntry. Should act identically to pressing CTRL+Z in a TextEntry.  
--- See also Panel:SaveUndoState.  
function Panel:Undo()
end

--- Recursively deselects this panel object and all of its children. This will cascade to all child objects at every level below the parent.  
function Panel:UnselectAll()
end

--- Forcibly updates the panels' HTML Material, similar to when Paint is called on it.  
--- This is only useful if the panel is not normally visible, i.e the panel exists purely for its HTML Material.  
--- ℹ **NOTE**: Only works on with panels that have a HTML Material. See Panel:GetHTMLMaterial for more details.  
--- ℹ **NOTE**: A good place to call this is in the GM:PreRender hook  
function Panel:UpdateHTMLTexture()
end

--- 🛑 **DEPRECATED**: Use Panel:IsValid instead.  
--- Returns if a given panel is valid or not.  
--- @deprecated
--- @return boolean @Whether the panel is valid or not, true being it is, false being it isn't.
function Panel:Valid()
end

