EquipmentsTweakData.quack_un_83028 = EquipmentsTweakData.init;

function EquipmentsTweakData:init(...)
	
	EquipmentsTweakData:quack_un_83028(...)
	
	self.specials.quack_files = {
		text_id = "hud_equipment_files",
		icon = "equipment_files",
		sync_possession = true
	}
	
	self.specials.quack_files_copied = {
		text_id = "quack_equipment_files_copied",
		icon = "equipment_files",
		sync_possession = true,
		quantity = 1,
		max_quantity = 2
	}
end