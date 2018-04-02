EquipmentsTweakData.golden_cruise = EquipmentsTweakData.init;

function EquipmentsTweakData:init(...)
	
	EquipmentsTweakData:golden_cruise(...)
	
	self.specials.quack_wrench = {
		text_id = "hud_equipment_wrench",
		icon = "equipment_drillfix",
		sync_possession = true
	}
	
end