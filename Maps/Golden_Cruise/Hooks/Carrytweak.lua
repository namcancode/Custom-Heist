CarryTweakData.golden_cruise = CarryTweakData.init;

function CarryTweakData:init(...)
	
	CarryTweakData:golden_cruise(...)
	
	self.money.name_id = "q006_loot_secret"
	self.money.unit = "units/payday2/pickups/gen_pku_bodybag/gen_pku_bodybag"
	self.money.default_value = 1
	self.money.is_unique_loot = true
	
end