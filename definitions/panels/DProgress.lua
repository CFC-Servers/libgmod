--- A progressbar, works with a fraction between 0 and 1 where 0 is 0% and 1 is 100%.  
--- @class DProgress : Panel
local DProgress = {}
--- Returns the progress bar's fraction. 0 is 0% and 1 is 100%.  
--- @return number @Current fraction of the progress bar.
function DProgress:GetFraction()
end

--- Sets the fraction of the progress bar. 0 is 0% and 1 is 100%.  
--- @param fraction number @Fraction of the progress bar
function DProgress:SetFraction(fraction)
end

