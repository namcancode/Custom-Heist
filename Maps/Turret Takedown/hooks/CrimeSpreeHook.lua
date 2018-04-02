---Adds Turret Takedown to the crime spree pool

CrimeSpreeTweakData.copyPrevious_92is41pz01 = CrimeSpreeTweakData.initCustomHeists;

function CrimeSpreeTweakData:initCustomHeists(...)
	CrimeSpreeTweakData:copyPrevious_92is41pz01(...)
	
	log("Test hook info!")
	self:addCustomHeist("turret_takedown", {stealth = true, spreeValue = 10})
end