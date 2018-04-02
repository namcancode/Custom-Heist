Hooks:PostHook( EquipmentsTweakData, "init", "own_serum", function(self)
	self.specials.blood_sample_ascension = {
		sync_possession = true,
		icon = "equipment_vial",
		text_id = "debug_equipment_blood_sample"
	}
end)