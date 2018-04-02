---Adds Transfer Frenzy to the crime spree pool

CrimeSpreeTweakData.copyPrevious_z83psl20zy = CrimeSpreeTweakData.initCustomHeists;

function CrimeSpreeTweakData:initCustomHeists(...)
	CrimeSpreeTweakData:copyPrevious_z83psl20zy(...)
	
	self:addCustomHeist("transfer_frenzy", {short = true, spreeValue = 4})
end