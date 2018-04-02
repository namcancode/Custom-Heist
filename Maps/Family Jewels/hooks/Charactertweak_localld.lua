CharacterTweakData.family_jewels_010charld = CharacterTweakData.init;

function CharacterTweakData:init(...)
	
	CharacterTweakData:family_jewels_010charld(...)
	
	log("Initted Family Jewels loud character tweaks!")
	
	--Disable some pagers
	self.cop.has_alarm_pager = true
	self.city_swat.has_alarm_pager = true
	
end