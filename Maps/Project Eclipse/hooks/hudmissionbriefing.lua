function HUDMissionBriefing:set_pattern_no_movement(bitmap_texture, alpha, blend_mode)
	local bg_layer = self._backdrop._panel:child("pattern_layer")
	bg_layer:clear()
	self._backdrop:_set_layers_of_layer(2, 1)
	if not bitmap_texture then
		return bg_layer
	end
	local object = bg_layer:bitmap({
		name = "object",
		texture = bitmap_texture,
		blend_mode = blend_mode
	})
	self._backdrop:set_fullscreen_bitmap_shape(object, 1)
	object:set_alpha(alpha or 0.2)
	return object
end

Hooks:PostHook( HUDMissionBriefing, "init", "eclipse_bg", function(self, hud, workspace)
	local show_contact_gui = true
	if managers.job:current_level_id() == "eclipse" then
		self:set_pattern_no_movement("guis/bd_pattern", 1, "add")
		show_contact_gui = false
	end
end)