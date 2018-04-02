local job = Global.level_data and Global.level_data.level_id

--this is probably gonna mess up rebalance mods, sorry
function CharacterTweakData:_init_drug_lord_boss(presets)
	self.drug_lord_boss = deep_clone(presets.base)
	self.drug_lord_boss.experience = {}
	self.drug_lord_boss.weapon = deep_clone(presets.weapon.good)
	self.drug_lord_boss.weapon.is_rifle = {
		aim_delay = {
			0.1,
			0.2
		},
		focus_delay = 4,
		focus_dis = 200,
		spread = 20,
		miss_dis = 40,
		RELOAD_SPEED = 1,
		melee_speed = 1,
		melee_dmg = 25,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 2500,
			far = 5000,
			close = 1000
		},
		autofire_rounds = {
			20,
			30
		},
		FALLOFF = {
			{
				dmg_mul = 3,
				r = 100,
				acc = {
					0.6,
					0.9
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 3,
				r = 500,
				acc = {
					0.5,
					0.7
				},
				recoil = {
					0.4,
					0.7
				},
				mode = {
					0,
					1,
					2,
					8
				}
			},
			{
				dmg_mul = 1.5,
				r = 1000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					3,
					6,
					6
				}
			},
			{
				dmg_mul = 1,
				r = 2000,
				acc = {
					0.2,
					0.5
				},
				recoil = {
					0.45,
					0.8
				},
				mode = {
					1,
					2,
					2,
					1
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.1,
					0.35
				},
				recoil = {
					1,
					1.2
				},
				mode = {
					4,
					2,
					1,
					0
				}
			}
		}
	}
	self.drug_lord_boss.detection = presets.detection.normal
	self.drug_lord_boss.HEALTH_INIT = 350
	self.drug_lord_boss.headshot_dmg_mul = 2
	self.drug_lord_boss.damage.explosion_damage_mul = 1
	self.drug_lord_boss.move_speed = presets.move_speed.normal
	self.drug_lord_boss.allowed_poses = {stand = true}
	self.drug_lord_boss.no_retreat = true
	self.drug_lord_boss.no_arrest = true
	self.drug_lord_boss.surrender = nil
	self.drug_lord_boss.ecm_vulnerability = 0
	self.drug_lord_boss.ecm_hurts = {ears = {
		max_duration = 0,
		min_duration = 0
	}}
	self.drug_lord_boss.weapon_voice = "3"
	self.drug_lord_boss.experience.cable_tie = "tie_swat"
	self.drug_lord_boss.access = "gangster"
	self.drug_lord_boss.speech_prefix_p1 = "bb"
	self.drug_lord_boss.speech_prefix_p2 = "n"
	self.drug_lord_boss.speech_prefix_count = 1
	self.drug_lord_boss.rescue_hostages = false
	self.drug_lord_boss.silent_priority_shout = "f37"
	self.drug_lord_boss.melee_weapon = "fists"
	self.drug_lord_boss.melee_weapon_dmg_multiplier = 2.5
	self.drug_lord_boss.steal_loot = nil
	self.drug_lord_boss.calls_in = nil
	self.drug_lord_boss.chatter = presets.enemy_chatter.no_chatter
	self.drug_lord_boss.use_radio = nil
	self.drug_lord_boss.can_be_tased = false
	self.drug_lord_boss.DAMAGE_CLAMP_BULLET = 80
	self.drug_lord_boss.DAMAGE_CLAMP_EXPLOSION = 80
	self.drug_lord_boss.use_animation_on_fire_damage = false
	self.drug_lord_boss.flammable = true
	self.drug_lord_boss.can_be_tased = false
	self.drug_lord_boss.immune_to_knock_down = true
	self.drug_lord_boss.immune_to_concussion = true
	
if job == "Victor Romeo" then
	self.drug_lord_boss.HEALTH_INIT = 33333
	self.drug_lord_boss.headshot_dmg_mul = 16
	self.drug_lord_boss.weapon.mini = {}
	self.drug_lord_boss.weapon.mini.aim_delay = {
		0.1,
		0.2
	}
	self.drug_lord_boss.weapon.mini.focus_delay = 4
	self.drug_lord_boss.weapon.mini.focus_dis = 800
	self.drug_lord_boss.weapon.mini.spread = 20
	self.drug_lord_boss.weapon.mini.miss_dis = 40
	self.drug_lord_boss.weapon.mini.RELOAD_SPEED = 1
	self.drug_lord_boss.weapon.mini.melee_speed = 1
	self.drug_lord_boss.weapon.mini.melee_dmg = 25
	self.drug_lord_boss.weapon.mini.melee_retry_delay = {
		1,
		2
	}
	self.drug_lord_boss.weapon.mini.range = {
		optimal = 2500,
		far = 5000,
		close = 1000
	}
	self.drug_lord_boss.weapon.mini.autofire_rounds = {
		20,
		40
	}
	self.drug_lord_boss.weapon.mini.FALLOFF = {
		{
			dmg_mul = 5,
			r = 100,
			acc = {
				0.1,
				0.15
			},
			recoil = {
				2,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				700
			}
		},
		{
			dmg_mul = 4,
			r = 500,
			acc = {
				0.05,
				0.1
			},
			recoil = {
				1.5,
				1.75
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				500
			}
		},
		{
			dmg_mul = 3.5,
			r = 1000,
			acc = {
				0.04,
				0.075
			},
			recoil = {
				1.2,
				1.5
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				300,
				500
			}
		},
		{
			dmg_mul = 3,
			r = 2000,
			acc = {
				0.025,
				0.05
			},
			recoil = {
				0.7,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				100,
				300
			}
		},
		{
			dmg_mul = 3,
			r = 3000,
			acc = {
				0.01,
				0.025
			},
			recoil = {
				0.5,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				40,
				100
			}
		}
	}
	self.drug_lord_boss.damage.hurt_severity = presets.hurt_severities.no_hurts
	self.drug_lord_boss.die_sound_event = "l1n_burndeath"
	end
	table.insert(self._enemy_list, "drug_lord_boss")
end