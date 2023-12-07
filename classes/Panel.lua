--- This is the base panel for every other [VGUI](vgui) panel.  
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
---  client|menu
--- Adds the specified object to the panel.  
--- @param object Panel @The panel to be added (parented)
--- @return Panel @New panel
function Panel:Add(object)
end

---  client|menu
--- Aligns the panel on the left of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignLeft(offset)
end

---  client|menu
--- Aligns the panel on the top of its parent with the specified offset.  
--- @param offset? number @The align offset.
function Panel:AlignTop(offset)
end

---  client|menu
--- Appends text to a RichText element. This does not automatically add a new line.  
--- @param txt string @The text to append (add on).
function Panel:AppendText(txt)
end

---  client|menu
--- Used by Panel:LoadGWENFile and Panel:LoadGWENString to apply a GWEN controls table to a panel object.  
--- You can do this manually using file.Read and util.JSONToTable to import and create a GWEN table structure from a `.gwen` file. This method can then be called, passing the GWEN table's `Controls` member.  
--- @param GWENTable table @The GWEN controls table to apply to the panel.
function Panel:ApplyGWEN(GWENTable)
end

---  client|menu
--- A think hook for Panels using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.  
--- This function is best for: checkboxes, sliders, number wangs  
--- For a string alternative, see Panel:ConVarStringThink.  
--- ℹ **NOTE**: Make sure your Panel has a SetValue function, else you may get errors.  
function Panel:ConVarNumberThink()
end

---  client|menu
--- A think hook for panels using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.  
--- This function is best for: text inputs, read-only inputs, dropdown selects  
--- For a number alternative, see Panel:ConVarNumberThink.  
--- ℹ **NOTE**: Make sure your Panel has a SetValue function, else you may get errors.  
function Panel:ConVarStringThink()
end

---  client|menu
--- Copies the position of the panel.  
--- @param base Panel @Panel to position the width from.
function Panel:CopyPos(base)
end

---  client|menu
--- Copies the width of the panel.  
--- @param base Panel @Panel to copy the width from.
function Panel:CopyWidth(base)
end

---  client|menu
--- Returns the cursor position relative to the top left of the panel.  
--- This is equivalent to calling gui.MousePos and then Panel:ScreenToLocal.  
--- ⚠ **WARNING**: This function uses a cached value for the screen position of the panel, computed at the end of the last VGUI Think/Layout pass.  
--- ie. inaccurate results may be returned if the panel or any of its ancestors have been repositioned outside of PANEL:Think or PANEL:PerformLayout within the last frame.  
--- @return number @X coordinate of the cursor, relative to the top left of the panel.
--- @return number @Y coordinate of the cursor, relative to the top left of the panel.
function Panel:CursorPos()
end

---  client|menu
--- Performs the `CONTROL` + `X` (delete text and copy it to clipboard buffer) action on selected text in a TextEntry or RichText based element.  
function Panel:CutSelected()
end

---  client|menu
--- Makes the panel "lock" the screen until it is removed. All input will be directed to the given panel.  
--- It will silently fail if used while cursor is not visible.  
--- Call Panel:MakePopup before calling this function.  
--- This must be called on a panel derived from EditablePanel.  
function Panel:DoModal()
end

---  client|menu
--- Called to inform the dragndrop that a mouse button is being held down on a panel object.  
--- @param mouseCode number @The code for the mouse button pressed, passed by, for example, PANEL:OnMousePressed
function Panel:DragMousePress(mouseCode)
end

---  client|menu
--- Called to inform the dragndrop that a mouse button has been depressed on a panel object.  
--- @param mouseCode number @The code for the mouse button pressed, passed by, for example, PANEL:OnMouseReleased
--- @return boolean @`true` if an object was being dragged, otherwise `false`.
function Panel:DragMouseRelease(mouseCode)
end

---  client|menu
--- Draws a coloured rectangle to fill the panel object this method is called on. The colour is set using surface.SetDrawColor. This should only be called within the object's PANEL:Paint or PANEL:PaintOver hooks, as a shortcut for surface.DrawRect.  
function Panel:DrawFilledRect()
end

---  client|menu
--- Used to draw the text in a DTextEntry within a derma skin. This should be called within the SKIN:PaintTextEntry skin hook.  
--- ℹ **NOTE**: Will silently fail if any of arguments are not Color.  
--- @param textCol table @The colour of the main text.
--- @param highlightCol table @The colour of the selection highlight (when selecting text).
--- @param cursorCol table @The colour of the text cursor (or caret).
function Panel:DrawTextEntryText(textCol, highlightCol, cursorCol)
end

---  client|menu
--- Focuses the next panel in the focus queue.  
function Panel:FocusNext()
end

---  client|menu
--- Returns a table with all the child panels of the panel.  
--- @return table @All direct children of this panel.
function Panel:GetChildren()
end

---  client|menu
--- Returns the child of this panel object that is closest to the specified point. The point is relative to the object on which the method is called. The distance the child is from this point is also returned.  
--- @param x number @The horizontal (x) position of the point.
--- @param y number @The vertical (y) position of the point.
--- @return Panel @The child object that was closest to the specified point.
--- @return number @The distance that this child was from the point.
function Panel:GetClosestChild(x, y)
end

---  client|menu
--- Gets the size of the content/children within a panel object.  
--- Only works with Label derived panels by default such as DLabel.  
--- Will also work on any panel that manually implements this method.  
--- @return number @The content width of the object.
--- @return number @The content height of the object.
function Panel:GetContentSize()
end

---  client
--- Returns the panel's HTML material. Only works with Awesomium, HTML and DHTML panels that have been fully loaded.  
--- @return IMaterial @The HTML material used by the panel
function Panel:GetHTMLMaterial()
end

---  client|menu
--- Returns a table of all children of the panel object that are selected. This is recursive, and the returned table will include tables for any child objects that also have children. This means that not all first-level members in the returned table will be of type Panel.  
--- @return table @A table of any child objects that are selected, including tables for children of the child objects (These tables may also contain table memb
function Panel:GetSelectedChildren()
end

---  client|menu
--- Returns the currently selected range of text.  
--- This function will only work on RichText and TextEntry panels and their derivatives.  
--- @return number @The start of the range
--- @return number @The end of the range
function Panel:GetSelectedTextRange()
end

---  client|menu
--- Returns the table for the derma skin currently being used by this panel object.  
--- @return table @The derma skin table currently being used by this object.
function Panel:GetSkin()
end

---  client|menu
--- Returns the panel's text (where applicable).  
--- This method returns a maximum of 1023 bytes, except for DTextEntry.  
--- @return string @The panel's text.
function Panel:GetText()
end

---  client|menu
--- Returns the tooltip panel that was set with PANEL:SetTooltipPanel.  
--- @return Panel @The tooltip panel, if it was set.
function Panel:GetTooltipPanel()
end

---  client|menu
--- Returns the value the panel holds.  
--- In engine is only implemented for CheckButton, Label and TextEntry as a string.  
--- ℹ **NOTE**: This function is limited to 8092 Bytes. If using DTextEntry, use Panel:GetText for unlimited bytes.  
--- @return any @The value the panel holds.
function Panel:GetValue()
end

---  client|menu
--- Goes back one page in the HTML panel's history if available.  
function Panel:GoBack()
end

---  client|menu
--- Makes a panel invisible.  
function Panel:Hide()
end

---  client|menu
--- Returns whether this panel is draggable ( if user is able to drag it ) or not.  
--- @return boolean @Whether this panel is draggable ( if user is able to drag it ) or not.
function Panel:IsDraggable()
end

---  client|menu
--- Returns whether this panel is currently being dragged or not.  
--- @return boolean @Whether this panel is currently being dragged or not.
function Panel:IsDragging()
end

---  client|menu
--- Returns true if the panel can receive keyboard input.  
--- @return boolean @keyboardInputEnabled
function Panel:IsKeyboardInputEnabled()
end

---  client|menu
--- Determines whether or not a HTML or DHTML element is currently loading a page.  
--- ℹ **NOTE**: Before calling Panel:SetHTML or DHTML:OpenURL, the result seems to be `false` with the Awesomium web renderer and `true` for the Chromium web renderer. This difference can be used to determine the available HTML5 capabilities.  
--- ℹ **NOTE**: On Awesomium, the result remains `true` until the root document is loaded and when in-page content is loading (when adding pictures, frames, etc.). During this state, the HTML texture is not refreshed and the panel is not painted (it becomes invisible).  
--- On Chromium, the value is only `true` when the root document is not ready. The rendering is not suspended when in-page elements are loading.  
--- @return boolean @Whether or not the (D)HTML object is loading.
function Panel:IsLoading()
end

---  client|menu
--- Returns if the panel was made popup or not. See Panel:MakePopup  
--- @return boolean @`true` if the panel was made popup.
function Panel:IsPopup()
end

---  client|menu
--- Returns if the panel is visible. This will **NOT** take into account visibility of the parent.  
--- @return boolean @`true` if the panel ls visible, `false` otherwise.
function Panel:IsVisible()
end

---  client|menu
--- Returns if a panel allows world clicking set by Panel:SetWorldClicker.  
--- @return boolean @If the panel allows world clicking.
function Panel:IsWorldClicker()
end

---  client|menu
--- Loads a .gwen file (created by GWEN Designer) and calls Panel:LoadGWENString with the contents of the loaded file.  
--- Used to load panel controls from a file.  
--- @param filename string @The file to open
--- @param path? string @The path used to look up the file
function Panel:LoadGWENFile(filename, path)
end

---  client|menu
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

---  client|menu
--- Places the panel left to the passed panel with the specified offset.  
--- @param panel Panel @Panel to position relatively to.
--- @param offset? number @The align offset.
function Panel:MoveLeftOf(panel, offset)
end

---  client|menu
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

---  client
--- Causes a SpawnIcon to rebuild its model image.  
function Panel:RebuildSpawnIcon()
end

---  client|menu
--- Attempts to obtain focus for this panel.  
function Panel:RequestFocus()
end

---  client|menu
--- Saves the current state (caret position and the text inside) of a TextEntry as an undo state.  
--- See also Panel:Undo.  
function Panel:SaveUndoState()
end

---  client|menu
--- 🛑 **DEPRECATED**: Duplicate of Panel:SelectAll.  
--- Selects all the text in a panel object. Will not select non-text items; for this, use Panel:SelectAll.  
--- @param resetCursorPos boolean @Reset cursor pos?
--- @deprecated
function Panel:SelectAllText(resetCursorPos)
end

---  client|menu
--- Deselects all items in a panel object. For text-based objects, this will deselect all text.  
--- ℹ **NOTE**: Only works on RichText and TextEntry and their derived panels by default (such as DTextEntry), and on any panel that manually reimplemented this method.  
function Panel:SelectNone()
end

---  client|menu
--- 🛑 **DEPRECATED**: Does nothing at all.  
--- Used in Button to call a function when the button is clicked and in Slider when the value changes.  
--- @param func function @Function to call when the Button is clicked or the Slider value is changed
--- @deprecated
function Panel:SetActionFunction(func)
end

---  client|menu
--- Configures a TextEntry to allow user to type characters that are not included in the US-ASCII (7-bit ASCII) character set.  
--- Characters not included in US-ASCII are multi-byte characters in UTF-8. They can be accented characters, non-Latin characters and special characters.  
--- @param allowed boolean @Set to true in order not to restrict input characters.
function Panel:SetAllowNonAsciiCharacters(allowed)
end

---  client|menu
--- Sets the position of the caret (or text cursor) in a text-based panel object.  
--- @param offset number @Caret position/offset from the start of text
function Panel:SetCaretPos(offset)
end

---  client|menu
--- Sets the alignment of the contents.  
--- ℹ **NOTE**: This function only works on Label panels and its derivatives.  
--- @param alignment number @The direction of the content, based on the number pad
function Panel:SetContentAlignment(alignment)
end

---  client|menu
--- Sets the appearance of the cursor. You can find a list of all available cursors with image previews [here](https://wiki.facepunch.com/gmod/Cursors).  
--- @param cursor string @The cursor to be set
function Panel:SetCursor(cursor)
end

---  client|menu
--- Sets the drag parent.  
--- Drag parent means that when we start to drag this panel, we'll really start dragging the defined parent.  
--- @param parent Panel @The panel to set as drag parent.
function Panel:SetDragParent(parent)
end

---  client|menu
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

---  client|menu
--- Sets the height of the panel.  
--- Calls PANEL:OnSizeChanged and marks this panel for layout (Panel:InvalidateLayout).  
--- See also Panel:SetSize.  
--- @param height number @The height to be set.
function Panel:SetHeight(height)
end

---  client
--- Allows or disallows the panel to receive keyboard focus and input. This is recursively applied to all children.  
--- @param enable boolean @Whether keyboard input should be enabled for this panel.
function Panel:SetKeyboardInputEnabled(enable)
end

---  client|menu
--- Sets the minimum dimensions of the panel or object.  
--- You can restrict either or both values.  
--- Calling the function without arguments will remove the minimum size.  
--- @param minW? number @The minimum width of the object.
--- @param minH? number @The minimum height of the object.
function Panel:SetMinimumSize(minW, minH)
end

---  client|menu
--- Enables or disables the mouse input for the panel.  
--- ℹ **NOTE**: Panels parented to the context menu will not be clickable unless Panel:SetKeyboardInputEnabled is enabled or Panel:MakePopup has been called. If you want the panel to have mouse input but you do not want to prevent players from moving, set Panel:SetKeyboardInputEnabled to false immediately after calling Panel:MakePopup.  
--- @param mouseInput boolean @Whenever to enable or disable mouse input.
function Panel:SetMouseInputEnabled(mouseInput)
end

---  client|menu
--- Enables or disables the multi-line functionality of TextEntry panel and its derivatives.  
--- @param multiline boolean @Whether to enable multiline or not.
function Panel:SetMultiline(multiline)
end

---  client|menu
--- Sets whether the panel object can be selected or not (like icons in the Spawn Menu, holding `Shift`). If enabled, this will affect the function of a DButton whilst `Shift` is pressed. Panel:SetSelected can be used to select/deselect the object.  
--- @param selectable boolean @Whether the panel object should be selectable or not.
function Panel:SetSelectable(selectable)
end

---  client|menu
--- When TAB is pressed, the next selectable panel in the number sequence is selected.  
--- @param position number 
function Panel:SetTabPosition(position)
end

---  client|menu
--- Sets the panel class to be created instead of DTooltip when the player hovers over this panel and a tooltip needs creating.  
--- @param override string @The panel class to override the default DTooltip
function Panel:SetTooltipPanelOverride(override)
end

---  client|menu
--- Sets the URL of a link-based panel such as DLabelURL.  
--- @param url string @The URL to set
function Panel:SetURL(url)
end

---  client|menu
--- Sets the visibility of the vertical scrollbar.  
--- Works for RichText and TextEntry.  
--- @param display? boolean @True to display the vertical text scroll bar, false to hide it.
function Panel:SetVerticalScrollbarEnabled(display)
end

---  client|menu
--- Sets the width of the panel.  
--- Calls PANEL:OnSizeChanged and marks this panel for layout (Panel:InvalidateLayout).  
--- See also Panel:SetSize.  
--- @param width number @The new width of the panel.
function Panel:SetWidth(width)
end

---  client|menu
--- Sets whether text wrapping should be enabled or disabled on Label and DLabel panels.  
--- Use DLabel:SetAutoStretchVertical to automatically correct vertical size; Panel:SizeToContents will not set the correct height.  
--- @param wrap boolean @`True` to enable text wrapping, `false` otherwise.
function Panel:SetWrap(wrap)
end

---  client|menu
--- Sets the X position of the panel.  
--- Uses Panel:SetPos internally.  
--- @param x number @The X coordinate of the position.
function Panel:SetX(x)
end

---  client|menu
--- Stops the loading of the HTML panel's current page.  
function Panel:StopLoading()
end

