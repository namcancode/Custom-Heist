Hooks:Add("LocalizationManagerPostInit", "QMedicJokeLocalization", function(loc)
	LocalizationManager:add_localized_strings({
	["heist_medic_bag_heist_name"] = "I NEEEEED A MEDIC BAG!",
	["heist_medic_bag_heist_brief"] = "Oh no! Dallas ran out of medic bags!\n\nThere's just been an accident in a parking garage and ambulances have been signaled there! Maybe you guys could... liberate their medic bags?",
	["benja_obj_medic_find_medic_loud_short"] = "Find an ambulance",
	["benja_obj_medic_find_medic_loud"] = "We need a medic bag. It should be here somewhere.\n\nGet to it.",
	["benja_obj_medic_find_another_medic_loud_short"] = "Find another ambulance",
	["benja_obj_medic_find_another_medic_loud"] = "That one medic bag clearly wasn't enough! Find another one, quick!",
	["benja_obj_medic_wait_AI_loud_short"] = "Wait for Dallas to use the medic bag",
	["benja_obj_medic_wait_AI_loud"] = "Now to use that medic bag. Ooof.. He needed that one. Protect him whilst he's patching up!",
	["benja_obj_medic_escape_short"] = "Escape",
	["benja_obj_medic_escape"] = "Now to make our escape! Use the elevators and we'll be out of here in no-time!",
	["benja_obj_medic_saw_loud_short"] = "Saw into the hatch",
	["benja_obj_medic_saw_loud"] = "Let's get into that ambulance! Get your saw on there!",
	["benja_obj_medic_saw_wait_loud_short"] = "Wait for the saw to complete",
	["benja_obj_medic_saw_wait_loud"] = "Now wait for the saw to get through. You may have to restart it in the process, though.",
	["menu_russian"] = "Dallas",
	["menu_american"] = "Houstlas",
	["menu_german"] = "Wolflas",
	["menu_spanish"] = "Chainlas",
	["menu_jowi"] = "John Wicklas",
	["menu_old_hoxton"] = "Hoxlas",
	["menu_female_1"] = "Clovlas",
	["menu_dragan"] = "Draglas",
	["menu_jacket"] = "Jacklas",
	["menu_bonnie"] = "Bonlas",
	["menu_sokol"] = "Soklas",
	["menu_dragon"] = "Jirlas",
	["menu_bodhi"] = "Bodlas"
	})
end)

function CriminalsManager:add_character(name, unit, peer_id, ai)
	print("[CriminalsManager:add_character]", name, unit, peer_id, ai)
	for id, data in pairs(self._characters) do
		if data.name == name then
			if data.taken then
				Application:error("[CriminalsManager:set_character] Error: Trying to take a unit slot that has already been taken!")
				Application:stack_dump()
				Application:error("[CriminalsManager:set_character] -----")
				self:_remove(id)
			end
			data.taken = true
			data.unit = unit
			data.peer_id = peer_id
			data.data.ai = ai or false
			data.data.mask_obj = tweak_data.blackmarket.masks["dallas"].unit --data.static_data.ai_mask_id
			data.data.mask_id = "dallas" --data.static_data.ai_mask_id
			data.data.mask_blueprint = nil
			if not ai and unit then
				local mask_id = managers.network:session():peer(peer_id):mask_id()
				--data.data.mask_obj = managers.blackmarket:mask_unit_name_by_mask_id(mask_id, peer_id)
				--data.data.mask_id = managers.blackmarket:get_real_mask_id(mask_id, peer_id)
				data.data.mask_blueprint = managers.network:session():peer(peer_id):mask_blueprint()
			end
			managers.hud:remove_mugshot_by_character_name(name)
			if unit then
				data.data.mugshot_id = managers.hud:add_mugshot_by_unit(unit)
				if unit:base().is_local_player then
					self._local_character = name
					managers.hud:reset_player_hpbar()
				end
				unit:sound():set_voice("rb4") --data.static_data.voice
				unit:inventory():set_mask_visibility(unit:inventory()._mask_visibility)
			else
				if not ai or not managers.localization:text("menu_" .. name) then
				end
				data.data.mugshot_id = managers.hud:add_mugshot_without_unit(name, ai, peer_id, (managers.network:session():peer(peer_id):name()))
			end
		else
		end
	end
end