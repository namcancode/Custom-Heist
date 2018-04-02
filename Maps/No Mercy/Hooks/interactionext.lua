
function VeilTakeInteractionExt:_interact_blocked(player)
	local can_pickup, has_max_quantity = managers.player:can_pickup_equipment(self._special_equipment)

	return not can_pickup, false, has_max_quantity and "max_special_equipment" or nil
end

function VeilTakeInteractionExt:interact(player)
	if not alive(self._unit) then
		return
	end

	VeilTakeInteractionExt.super.super.interact(self, player)

	if self._remove_on_interact then
		self:remove_interact()
		self:set_active(false)
	end

	managers.network:session():send_to_peers_synched("sync_interacted", self._unit, -2, "blood_sample_verified", 1)
	self:sync_interacted(nil, player)
	self:apply_item_pickup()

	return true
end

function VeilTakeInteractionExt:sync_interacted(peer, player, status, skip_alive_check)
	player = player or peer:unit()

	if self._unit:damage():has_sequence("got_blood_sample") then
		self._unit:damage():run_sequence_simple("got_blood_sample")
	end

	if self._global_event and Network:is_server() then
		managers.mission:call_global_event(self._global_event, player)
	end

	if self._remove_on_interact then
		self._unit:set_slot(0)
	end
end


function VeilTakeInteractionExt:apply_item_pickup()
	managers.player:add_special({name = "blood_sample_verified"})
end


function VeilTakeInteractionExt:can_remove_item()
	return self._remove_on_interact
end