_G.steamworks = {}
---  client|menu
--- Retrieves a customized list of Steam Workshop addons.  
--- @param type string @The type of items to retrieve
--- @param tags table @A table of tags to match.
--- @param offset number @How much of results to skip from first one
--- @param numRetrieve number @How many items to retrieve, up to 50 at a time
--- @param days number @When getting `popular` or `trending` content from Steam, this determines a time period, in range of days from 0 to 365
--- @param userID string @"0" to retrieve all addons, "1" to retrieve addons only published by you, or a valid SteamID64 of a user to get workshop items of.
--- @param resultCallback function @The function to process retrieved data
function steamworks.GetList(type, tags, offset, numRetrieve, days, userID, resultCallback)
end

---  client|menu
--- Returns whenever the specified Steam Workshop addon will be mounted or not.  
--- @param workshopItemID string @The ID of the Steam Workshop
--- @return boolean @Will the workshop item be mounted or not
function steamworks.ShouldMountAddon(workshopItemID)
end

---  client|menu
--- Opens the workshop website for specified Steam Workshop item in the Steam overlay browser.  
--- @param workshopItemID string @The ID of workshop item.
function steamworks.ViewFile(workshopItemID)
end

