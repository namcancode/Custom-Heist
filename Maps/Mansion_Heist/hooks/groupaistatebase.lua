tweak_data.blame.man_charles_alerted = "hint_blame_charles_alerted"

tweak_data.carry.fake_art = {}
tweak_data.carry.fake_art.type = "light"
tweak_data.carry.fake_art.name_id = "hud_carry_fake_art"
tweak_data.carry.fake_art.visual_unit_name = "units/payday2/characters/npc_acc_cage_bag_1/npc_acc_cage_bag_1"
tweak_data.carry.fake_art.AI_carry = {SO_category = "enemies"}
tweak_data.carry.fake_art.unit = "units/payday2/pickups/gen_pku_cage_bag/gen_pku_cage_bag"
tweak_data.carry.fake_art.skip_exit_secure = true

table.insert(GroupAIStateBase.BLAME_SYNC, "man_charles_alerted")

GroupAIStateBase.unique_triggers = {
	civilian_alarm = "civ_alarm",
	cop_alarm = "cop_alarm",
	gangster_alarm = "gan_alarm",
	metal_detector = "met_criminal",
	motion_sensor = "mot_criminal",
	glass_alarm = "gls_alarm",
	blackmailer = "sys_blackmailer",
	gensec = "sys_gensec",
	police_alerted = "sys_police_alerted",
	csgo_gunfire = "sys_csgo_gunfire",
	charles_alerted = "man_charles_alerted"
}