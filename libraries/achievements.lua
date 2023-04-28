--- This library is used internally by Garry's Mod to help keep track of achievement progress and unlock the appropriate achievements once a certain number is reached.  
_G.achievements = {}
---  client|menu
--- Returns the amount of achievements in Garry's Mod.  
--- @return number @The amount of achievements available.
function achievements.Count()
end

---  client|menu
--- Retrieves progress of given achievement  
--- @param achievementID number @The ID of achievement to retrieve progress of
function achievements.GetCount(achievementID)
end

---  client|menu
--- Retrieves description of given achievement  
--- @param achievementID number @The ID of achievement to retrieve description of
--- @return string @Description of an achievement
function achievements.GetDesc(achievementID)
end

---  client|menu
--- Retrieves progress goal of given achievement  
--- @param achievementID number @The ID of achievement to retrieve goal of
--- @return number @Progress goal of an achievement
function achievements.GetGoal(achievementID)
end

---  client|menu
--- Retrieves name of given achievement  
--- @param achievementID number @The ID of achievement to retrieve name of
--- @return string @Name of an achievement
function achievements.GetName(achievementID)
end

---  client|menu
--- Used in GMod 12 in the achievements menu to show the user if they have unlocked certain achievements.  
--- @param AchievementID number @Internal Achievement ID number
--- @return boolean @Returns true if the given achievementID is achieved.
function achievements.IsAchieved(AchievementID)
end

