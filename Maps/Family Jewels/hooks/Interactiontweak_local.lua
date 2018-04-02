InteractionTweakData.family_jewels_010ov = InteractionTweakData.init;

function InteractionTweakData:init(...)
	
	InteractionTweakData:family_jewels_010ov(...)
	
	log("Initted Family Jewels overrides!")
	
	--Overrides only
	self.requires_ecm_jammer.requires_upgrade = nil
	self.requires_ecm_jammer.interact_distance = 150
	
	self.mcm_laptop.equipment_text_id = "hint_no_fbi_usb_key"
	self.mcm_laptop.special_equipment = "cas_usb_key"
	self.mcm_laptop.equipment_consume = true
	
end