--[[CarryTweakData.mansion_heist_init = CarryTweakData.init

function CarryTweakData:init(...)

	CarryTweakData:mansion_heist_init(...)

	self.fake_art = {}
	self.fake_art.type = "light"
	self.fake_art.name_id = "hud_carry_fake_art"
	self.fake_art.visual_unit_name = "units/payday2/characters/npc_acc_cage_bag_1/npc_acc_cage_bag_1"
	self.fake_art.AI_carry = {SO_category = "enemies"}
	self.fake_art.unit = "units/payday2/pickups/gen_pku_cage_bag/gen_pku_cage_bag"
	self.fake_art.skip_exit_secure = true
		
end]]