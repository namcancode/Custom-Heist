CharacterTweakData.family_jewels_010char = CharacterTweakData.init;

function CharacterTweakData:init(...)
	
	CharacterTweakData:family_jewels_010char(...)
	
	log("Initted Family Jewels character tweaks!")
	
	--Disable some pagers
	self.gensec.has_alarm_pager = false
	self.security.has_alarm_pager = false
	
	--Disable intimidation
	self.gensec.suppression = nil
	self.gensec.surrender = nil
	self.security.suppression = nil
	self.security.surrender = nil
	
end