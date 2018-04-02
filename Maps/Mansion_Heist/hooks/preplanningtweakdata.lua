PrePlanningTweakData.mansion_heist_create_locations = PrePlanningTweakData._create_locations
PrePlanningTweakData.mansion_heist_init = PrePlanningTweakData.init

function PrePlanningTweakData:init(...)

	PrePlanningTweakData:mansion_heist_init(...)
	
	self.categories.mansion_heist_rewire_ventilation = {}
	self.categories.mansion_heist_rewire_ventilation.name_id = "mansion_heist_rewire_ventilation"
	self.categories.mansion_heist_rewire_ventilation.desc_id = "mansion_heist_rewire_ventilation_desc"
	self.categories.mansion_heist_rewire_ventilation.icon = 23
	self.categories.mansion_heist_rewire_ventilation.prio = 0
	
	self.types.mansion_heist_phone_tracker = {}
	self.types.mansion_heist_phone_tracker.name_id = "mansion_heist_phone_tracker"
	self.types.mansion_heist_phone_tracker.desc_id = "mansion_heist_phone_tracker_desc"
	self.types.mansion_heist_phone_tracker.category = "insider_help"
	self.types.mansion_heist_phone_tracker.icon = 71
	self.types.mansion_heist_phone_tracker.total = 1
	self.types.mansion_heist_phone_tracker.post_event = "none"
	self.types.mansion_heist_phone_tracker.prio = 1
	self.types.mansion_heist_phone_tracker.budget_cost = 8
	self.types.mansion_heist_phone_tracker.pos_not_important = true
	
	self.types.mansion_heist_flare_trap = {}
	self.types.mansion_heist_flare_trap.name_id = "mansion_heist_flare_trap"
	self.types.mansion_heist_flare_trap.desc_id = "mansion_heist_flare_trap_desc"
	self.types.mansion_heist_flare_trap.category = "mission_equipment"
	self.types.mansion_heist_flare_trap.icon = 51
	self.types.mansion_heist_flare_trap.total = 1
	self.types.mansion_heist_flare_trap.post_event = "none"
	self.types.mansion_heist_flare_trap.prio = 1
	self.types.mansion_heist_flare_trap.budget_cost = 10
	
	self.types.mansion_heist_connect_vents = {}
	self.types.mansion_heist_connect_vents.name_id = "mansion_heist_connect_vents"
	self.types.mansion_heist_connect_vents.desc_id = "mansion_heist_connect_vents_desc"
	self.types.mansion_heist_connect_vents.category = "insider_help"
	self.types.mansion_heist_connect_vents.icon = 42
	self.types.mansion_heist_connect_vents.total = 1
	self.types.mansion_heist_connect_vents.post_event = "none"
	self.types.mansion_heist_connect_vents.prio = 1
	self.types.mansion_heist_connect_vents.budget_cost = 3
	
	self.types.mansion_heist_additional_fake_artifacts = {}
	self.types.mansion_heist_additional_fake_artifacts.name_id = "mansion_heist_additional_fake_artifacts"
	self.types.mansion_heist_additional_fake_artifacts.desc_id = "mansion_heist_additional_fake_artifacts_desc"
	self.types.mansion_heist_additional_fake_artifacts.category = "insider_help"
	self.types.mansion_heist_additional_fake_artifacts.icon = 23
	self.types.mansion_heist_additional_fake_artifacts.total = 3
	self.types.mansion_heist_additional_fake_artifacts.post_event = "none"
	self.types.mansion_heist_additional_fake_artifacts.prio = 1
	self.types.mansion_heist_additional_fake_artifacts.budget_cost = 2
	
	self.types.mansion_heist_thermal_lance = {}
	self.types.mansion_heist_thermal_lance.name_id = "mansion_heist_thermal_lance"
	self.types.mansion_heist_thermal_lance.desc_id = "mansion_heist_thermal_lance_desc"
	self.types.mansion_heist_thermal_lance.category = "mission_equipment"
	self.types.mansion_heist_thermal_lance.icon = 12
	self.types.mansion_heist_thermal_lance.total = 2
	self.types.mansion_heist_thermal_lance.post_event = "none"
	self.types.mansion_heist_thermal_lance.prio = 1
	self.types.mansion_heist_thermal_lance.budget_cost = 3
	
	self.types.mansion_heist_dev_remove_guards = {}
	self.types.mansion_heist_dev_remove_guards.name_id = "mansion_heist_remove_guards_and_charles"
	self.types.mansion_heist_dev_remove_guards.desc_id = "mansion_heist_remove_guards_and_charles_desc"
	self.types.mansion_heist_dev_remove_guards.category = "mission_equipment"
	self.types.mansion_heist_dev_remove_guards.icon = 12
	self.types.mansion_heist_dev_remove_guards.total = 1
	self.types.mansion_heist_dev_remove_guards.post_event = "none"
	self.types.mansion_heist_dev_remove_guards.prio = 1
	self.types.mansion_heist_dev_remove_guards.budget_cost = 0
	
	self.types.mansion_heist_disable_camera = {}
	self.types.mansion_heist_disable_camera.name_id = "mansion_heist_disable_camera"
	self.types.mansion_heist_disable_camera.desc_id = "mansion_heist_disable_camera_desc"
	self.types.mansion_heist_disable_camera.category = "insider_help"
	self.types.mansion_heist_disable_camera.icon = 11
	self.types.mansion_heist_disable_camera.total = 4
	self.types.mansion_heist_disable_camera.post_event = "none"
	self.types.mansion_heist_disable_camera.prio = 1
	self.types.mansion_heist_disable_camera.budget_cost = 2
	
end

function PrePlanningTweakData:_create_locations(...)

	PrePlanningTweakData:mansion_heist_create_locations(...)
	
	self.locations.mansion_stage1 = {
		default_plans = {
				escape_plan = "escape_helicopter_loud",
				vault_plan = "vault_big_drill"
			},
			total_budget = 16,
			mission_briefing_texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/mission_briefing_tuskmansion",
			start_location = {
				group = "a",
				x = 1024,
				y = 1024,
				zoom = 1.5
			},
			{
				name_id = "menu_pp_mansion_heist_street",
				texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/tusk_man_street",
				map_x = -1.1,
				map_y = 0.5,
				map_size = 1,
				x1 = -4964,
				y1 = -3585,
				x2 = 4964,
				y2 = 5800,
				rotation = 0,
				custom_points = {
				}
			},
			{
				name_id = "menu_pp_mansion_heist_first_floor",
				texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/tusk_man_first",
				map_x = 0,
				map_y = 0.5,
				map_size = 1,
				x1 = -2560,
				y1 = -1395,
				x2 = 2560,
				y2 = 3725,
				rotation = 0,
				custom_points = {
				}
			},
			{
				name_id = "menu_pp_mansion_heist_second_floor",
				texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/tusk_man_second",
				map_x = 1.1,
				map_y = 0.5,
				map_size = 1,
				x1 = -2560,
				y1 = -1395,
				x2 = 2560,
				y2 = 3725,
				rotation = 0,
				custom_points = {
				}
			},
			{
				name_id = "menu_pp_mansion_heist_roof",
				texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/tusk_man_roof",
				map_x = 0,
				map_y = -0.6,
				map_size = 1,
				x1 = -2979,
				y1 = -1568,
				x2 = 2979,
				y2 = 4179,
				rotation = 0,
				custom_points = {
				}
			},
			{
				name_id = "menu_pp_mansion_heist_basement",
				texture = "guis/dlcs/tusk_man/textures/pd2/pre_planning/tusk_man_basement",
				map_x = -1.1,
				map_y = -0.6,
				map_size = 1, -- top left = -3357 4842 bottom right = 3307 -2314
				x1 = -3357,
				y1 = -1900,
				x2 = 3307,
				y2 = 4662,
				rotation = 0,
				custom_points = {
				}
			}
		}

end