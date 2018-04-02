PrePlanningTweakData.golden_cruise_init = PrePlanningTweakData.init;
PrePlanningTweakData.golden_cruise_create_locations = PrePlanningTweakData._create_locations;

function PrePlanningTweakData:init(tweak_data)
	
	PrePlanningTweakData:golden_cruise_init(tweak_data)
	
	self.plans = {}
	self.plans.escape_plan = {}
	self.plans.escape_plan.category = "escape_plan"
	self.plans.vault_plan = {}
	self.plans.vault_plan.category = "vault_plan"
	self.plans.plan_of_action = {}
	self.plans.plan_of_action.category = "plan_of_action"
	self.plans.entry_plan = {}
	self.plans.entry_plan.category = "entry_plan"
	
	self.gui = {}
	self.gui.custom_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_types"
	self.gui.type_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_types"
	self.gui.category_icons_path = "guis/dlcs/big_bank/textures/pd2/pre_planning/preplan_icon_frames"
	self.gui.category_icons_bg = 42
	self.gui.MAX_DRAW_POINTS = 1000
	
	--Categories
	self.plans.loot_drop = {}
	self.plans.loot_drop.category = "loot_drop"
	
	self.plans.entry_plan2 = {}
	self.plans.entry_plan2.category = "entry_plan2"
	
	self.plans.special = {}
	self.plans.special.category = "special"
	
	self.categories.loot_drop = {}
	self.categories.loot_drop.name_id = "q006_pp_cat_loot"
	self.categories.loot_drop.desc_id = "q006_pp_cat_loot_desc"
	self.categories.loot_drop.plan = "loot_drop"
	self.categories.loot_drop.icon = 12
	self.categories.loot_drop.total = 1
	self.categories.loot_drop.prio = 2
	
	self.categories.entry_plan2 = {}
	self.categories.entry_plan2.name_id = "q006_pp_cat_entry"
	self.categories.entry_plan2.desc_id = "q006_pp_cat_entry_desc"
	self.categories.entry_plan2.plan = "entry_plan2"
	self.categories.entry_plan2.icon = 94
	self.categories.entry_plan2.total = 1
	self.categories.entry_plan2.prio = 3
	
	self.categories.special = {}
	self.categories.special.name_id = "q006_pp_cat_special"
	self.categories.special.desc_id = "q006_pp_cat_special_desc"
	self.categories.special.plan = "special"
	self.categories.special.icon = 23
	self.categories.special.total = 1
	self.categories.special.prio = 0
	
	self.categories.escape_plan.prio = 1
	
	--
	self.categories.extra_equip = {}
	self.categories.extra_equip.name_id = "q006_pp_cat_extraequip"
	self.categories.extra_equip.desc_id = "q006_pp_cat_extraequip_desc"
	self.categories.extra_equip.icon = 22
	self.categories.extra_equip.prio = 1
	
	--Types
	self.types.q006_spawn_stealth = {}
	self.types.q006_spawn_stealth.name_id = "q006_pp_spawn_stealth"
	self.types.q006_spawn_stealth.desc_id = "q006_pp_spawn_stealth_desc"
	self.types.q006_spawn_stealth.plan = "entry_plan2"
	self.types.q006_spawn_stealth.pos_not_important = true
	self.types.q006_spawn_stealth.category = "entry_plan2"
	self.types.q006_spawn_stealth.icon = 94
	self.types.q006_spawn_stealth.total = 1
	self.types.q006_spawn_stealth.cost = 0
	self.types.q006_spawn_stealth.budget_cost = 0
	self.types.q006_spawn_stealth.post_event = ""
	self.types.q006_spawn_stealth.prio = 2
	
	self.types.q006_spawn_loud = {}
	self.types.q006_spawn_loud.name_id = "q006_pp_spawn_loud"
	self.types.q006_spawn_loud.desc_id = "q006_pp_spawn_loud_desc"
	self.types.q006_spawn_loud.plan = "entry_plan2"
	self.types.q006_spawn_loud.pos_not_important = true
	self.types.q006_spawn_loud.category = "entry_plan2"
	self.types.q006_spawn_loud.icon = 95
	self.types.q006_spawn_loud.total = 1
	self.types.q006_spawn_loud.cost = 0
	self.types.q006_spawn_loud.budget_cost = 0
	self.types.q006_spawn_loud.post_event = ""
	self.types.q006_spawn_loud.prio = 1
	
	self.types.q006_loot_moretta = {}
	self.types.q006_loot_moretta.name_id = "q006_pp_easy_lootdrop"
	self.types.q006_loot_moretta.desc_id = "q006_pp_easy_lootdrop_desc"
	self.types.q006_loot_moretta.plan = "loot_drop"
	self.types.q006_loot_moretta.pos_not_important = true
	self.types.q006_loot_moretta.category = "loot_drop"
	self.types.q006_loot_moretta.icon = 34
	self.types.q006_loot_moretta.total = 1
	self.types.q006_loot_moretta.cost = 0
	self.types.q006_loot_moretta.budget_cost = 0
	self.types.q006_loot_moretta.post_event = "gus_preplan_12"
	self.types.q006_loot_moretta.prio = 1
	
	self.types.q006_loot_boat = {}
	self.types.q006_loot_boat.name_id = "q006_pp_boat_lootdrop"
	self.types.q006_loot_boat.desc_id = "q006_pp_boat_lootdrop_desc"
	self.types.q006_loot_boat.plan = "loot_drop"
	self.types.q006_loot_boat.pos_not_important = true
	self.types.q006_loot_boat.category = "loot_drop"
	self.types.q006_loot_boat.icon = 34
	self.types.q006_loot_boat.total = 1
	self.types.q006_loot_boat.cost = 5000
	self.types.q006_loot_boat.budget_cost = 4
	self.types.q006_loot_boat.post_event = "gus_preplan_12"
	self.types.q006_loot_boat.prio = 3
	
	self.types.q006_loot_chopper = {}
	self.types.q006_loot_chopper.name_id = "q006_pp_chopper_lootdrop"
	self.types.q006_loot_chopper.desc_id = "q006_pp_chopper_lootdrop_desc"
	self.types.q006_loot_chopper.plan = "loot_drop"
	self.types.q006_loot_chopper.pos_not_important = true
	self.types.q006_loot_chopper.category = "loot_drop"
	self.types.q006_loot_chopper.icon = 73
	self.types.q006_loot_chopper.total = 1
	self.types.q006_loot_chopper.cost = 10000
	self.types.q006_loot_chopper.budget_cost = 8
	self.types.q006_loot_chopper.post_event = "gus_preplan_12"
	self.types.q006_loot_chopper.prio = 2
	
	self.types.q006_escape_boat = {}
	self.types.q006_escape_boat.name_id = "q006_pp_escape_boat"
	self.types.q006_escape_boat.desc_id = "q006_pp_escape_boat_desc"
	self.types.q006_escape_boat.plan = "escape_plan"
	self.types.q006_escape_boat.pos_not_important = true
	self.types.q006_escape_boat.category = "escape_plan"
	self.types.q006_escape_boat.icon = 54
	self.types.q006_escape_boat.total = 1
	self.types.q006_escape_boat.cost = 0
	self.types.q006_escape_boat.budget_cost = 0
	self.types.q006_escape_boat.post_event = "gus_preplan_12"
	self.types.q006_escape_boat.prio = 1
	
	self.types.q006_escape_chopper = {}
	self.types.q006_escape_chopper.name_id = "q006_pp_escape_chopper"
	self.types.q006_escape_chopper.desc_id = "q006_pp_escape_chopper_desc"
	self.types.q006_escape_chopper.plan = "escape_plan"
	self.types.q006_escape_chopper.pos_not_important = true
	self.types.q006_escape_chopper.category = "escape_plan"
	self.types.q006_escape_chopper.icon = 54
	self.types.q006_escape_chopper.total = 1
	self.types.q006_escape_chopper.cost = 10000
	self.types.q006_escape_chopper.budget_cost = 4
	self.types.q006_escape_chopper.post_event = "gus_preplan_12"
	self.types.q006_escape_chopper.prio = 1
	
	self.types.q006_additional_saw = {}
	self.types.q006_additional_saw.name_id = "q006_pp_additional_saw"
	self.types.q006_additional_saw.desc_id = "q006_pp_additional_saw_desc"
	self.types.q006_additional_saw.plan = "extra_equip"
	self.types.q006_additional_saw.pos_not_important = true
	self.types.q006_additional_saw.category = "extra_equip"
	self.types.q006_additional_saw.icon = 101
	self.types.q006_additional_saw.total = 1
	self.types.q006_additional_saw.cost = 4000
	self.types.q006_additional_saw.budget_cost = 3
	self.types.q006_additional_saw.prio = 2
	
	self.types.q006_additional_crowbar = {}
	self.types.q006_additional_crowbar.name_id = "q006_pp_additional_crowbar"
	self.types.q006_additional_crowbar.desc_id = "q006_pp_additional_crowbar_desc"
	self.types.q006_additional_crowbar.plan = "extra_equip"
	self.types.q006_additional_crowbar.pos_not_important = true
	self.types.q006_additional_crowbar.category = "extra_equip"
	self.types.q006_additional_crowbar.icon = 72
	self.types.q006_additional_crowbar.total = 1
	self.types.q006_additional_crowbar.cost = 2000
	self.types.q006_additional_crowbar.budget_cost = 2
	self.types.q006_additional_crowbar.prio = 2
	
	self.types.q006_additional_paper = {}
	self.types.q006_additional_paper.name_id = "q006_pp_additional_paper"
	self.types.q006_additional_paper.desc_id = "q006_pp_additional_paper_desc"
	self.types.q006_additional_paper.plan = "extra_equip"
	self.types.q006_additional_paper.pos_not_important = true
	self.types.q006_additional_paper.category = "extra_equip"
	self.types.q006_additional_paper.icon = 102
	self.types.q006_additional_paper.total = 1
	self.types.q006_additional_paper.cost = 8000
	self.types.q006_additional_paper.budget_cost = 2
	self.types.q006_additional_paper.prio = 2
	
	self.types.q006_nothing = {}
	self.types.q006_nothing.name_id = "q006_nothing"
	self.types.q006_nothing.desc_id = "q006_nothing_desc"
	self.types.q006_nothing.plan = "special"
	self.types.q006_nothing.pos_not_important = true
	self.types.q006_nothing.category = "special"
	self.types.q006_nothing.icon = 103
	self.types.q006_nothing.total = 1
	self.types.q006_nothing.cost = 0
	self.types.q006_nothing.budget_cost = 0
	self.types.q006_nothing.prio = 2
	self.types.q006_nothing.post_event = "gus_preplan_12"
	
	self.types.q006_keycard = {}
	self.types.q006_keycard.name_id = "q006_keycard"
	self.types.q006_keycard.desc_id = "q006_keycard_desc"
	self.types.q006_keycard.plan = "special"
	self.types.q006_keycard.pos_not_important = true
	self.types.q006_keycard.category = "special"
	self.types.q006_keycard.icon = 23
	self.types.q006_keycard.total = 1
	self.types.q006_keycard.cost = 20000
	self.types.q006_keycard.budget_cost = 12
	self.types.q006_keycard.prio = 1
	self.types.q006_keycard.post_event = "gus_preplan_12"
	
	self.types.ammo_bag.pos_not_important = true
	self.types.health_bag.pos_not_important = true
	self.types.grenade_crate.pos_not_important = true
	
end

function PrePlanningTweakData:_create_locations(tweak_data)

	PrePlanningTweakData:golden_cruise_create_locations(tweak_data)
	
	self.locations.quack_heist006 = {
		default_plans = {
			loot_drop = "q006_loot_moretta",
			escape_plan = "q006_escape_boat",
			entry_plan2 = "q006_spawn_stealth",
			special = "q006_nothing"
		},
		total_budget = 12,
		mission_briefing_texture = "guis/textures/mods/pre_planning/mission_briefing_cruise",
		start_location = {
			group = "a",
			x = 1024,
			y = 1024,
			zoom = 1
		},
		{
			name_id = "menu_pp_kenaz_loc_a",
			texture = "guis/mods/Golden_Cruise/pre_planning/quack_heist_006_loc_a_df",
			map_x = -1.1,
			map_y = 0,
			map_width = 1,
			map_height = 2,
			x1 = -6175,
			y1 = -14450,
			x2 = 4975,
			y2 = 7850,
			rotation = 0
		},
		start_location = {
			group = "b",
			x = 512,
			y = 512,
			zoom = 1
		},
		{
			name_id = "menu_pp_kenaz_loc_b",
			texture = "guis/mods/Golden_Cruise/pre_planning/quack_heist_006_loc_a_df",
			map_x = 0,
			map_y = 0,
			map_width = 1,
			map_height = 2,
			x1 = -6175,
			y1 = -14450,
			x2 = 5475,
			y2 = 8350,
			rotation = 0,
			custom_points = {}
		},
		start_location = {
			group = "c",
			x = 512,
			y = 512,
			zoom = 1
		},
		{
			name_id = "menu_pp_kenaz_loc_c",
			texture = "guis/mods/Golden_Cruise/pre_planning/quack_heist_006_loc_a_df",
			map_x = 0.85,
			map_y = -0.5,
			map_width = 0.5,
			map_height = 1,
			x1 = -200,
			y1 = -400,
			x2 = 200,
			y2 = 400,
			rotation = 0
		}
	}
	self.locations.pbr = {
		default_plans = {},
		total_budget = 6,
		mission_briefing_texture = "guis/dlcs/berry/textures/pd2/pre_planning/mission_briefing_pbr",
		start_location = {
			group = "a",
			x = 1024,
			y = 1024,
			zoom = 1
		},
		{
			name_id = "menu_pp_berry_bpr_loc_a",
			texture = "guis/dlcs/berry/textures/pd2/pre_planning/base_01",
			map_x = -0.55,
			map_y = 0,
			map_size = 1,
			x1 = -15000,
			y1 = -7600,
			x2 = -5000,
			y2 = 2400,
			rotation = 90,
			custom_points = {}
		},
		{
			name_id = "menu_pp_berry_bpr_loc_b",
			texture = "guis/dlcs/berry/textures/pd2/pre_planning/base_02",
			map_x = 0.55,
			map_y = 0,
			map_size = 1,
			x1 = -15100,
			y1 = -8000,
			x2 = -5100,
			y2 = 2000,
			rotation = 0,
			custom_points = {}
		}
	}
end