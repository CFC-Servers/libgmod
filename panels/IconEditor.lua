--- An icon editor that permits a user to modify a SpawnIcon and re-render it. This is used by the spawn menu and is what is shown when you right-click an icon and select `Edit Icon`.  
--- This makes use of the DAdjustableModelPanel element.  
--- ℹ **NOTE**: This panel is only available in Sandbox and Sandbox derived gamemodes!  
--- @class IconEditor : DFrame
local IconEditor = {}
---  client
--- Applies the top-down view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Above` (third) button (See IconEditor).  
function IconEditor:AboveLayout()
end

---  client
--- Applies the best camera settings for the model in the DAdjustableModelPanel, using the values returned by Global.PositionSpawnIcon.  
--- Called when a user clicks the `wand` button (See the ) and when IconEditor:Refresh is called.  
function IconEditor:BestGuessLayout()
end

---  client
--- Applies the front view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Front` (second) button (See the ).  
function IconEditor:FullFrontalLayout()
end

---  client
--- Places the camera at the origin (0,0,0), relative to the entity, in the DAdjustableModelPanel.  
--- Called when a user clicks the `Center` (fifth) button (See the ).  
function IconEditor:OriginLayout()
end

---  client
--- Updates the internal DAdjustableModelPanel and SpawnIcon.  
--- This should be called immediately after setting the SpawnIcon with IconEditor:SetIcon.  
function IconEditor:Refresh()
end

---  client
--- Re-renders the SpawnIcon.  
--- Called when a user clicks the `RENDER` button, this retrieves the render data from the internal DAdjustableModelPanel and passes it as a table to Panel:RebuildSpawnIconEx.  
function IconEditor:RenderIcon()
end

---  client
--- Applies the right side view camera settings for the model in the DAdjustableModelPanel.  
--- Called when a user clicks the `Right` (fourth) button (See the ). (Note: The icon for this points left.)  
function IconEditor:RightLayout()
end

---  client
--- Sets the editor's model and icon from an entity. Alternative to IconEditor:SetIcon, with uses a SpawnIcon.  
--- You do not need to call IconEditor:Refresh after this.  
--- @param ent Entity @The entity to retrieve the model and skin from.
function IconEditor:SetFromEntity(ent)
end

---  client
--- Sets the SpawnIcon to modify. You should call Panel:Refresh immediately after this, as the user will not be able to make changes to the icon beforehand.  
--- @param icon Panel @The SpawnIcon object to be modified.
function IconEditor:SetIcon(icon)
end

