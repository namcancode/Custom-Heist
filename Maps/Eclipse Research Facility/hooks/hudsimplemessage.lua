if RequiredScript == "lib/managers/hudmanagerpd2" then

	HudSimpleMessageNew = HudSimpleMessageNew or class()

	function HudSimpleMessageNew:init(parent)
		--log("test????")
		self._parent = parent
		self._font_size = 24
		self._font = tweak_data.hud_corner.assault_font
		
		self._simple_message_panel_new = self._parent:panel({
			visible = false,
			name = "simple_message_panel_new",
			w = 350,
			h = 200,
			align = "left",
			valign = "bottom",
			y = 380,
			x = 26
		})

		local simple_message_text = self._simple_message_panel_new:text({
			name = "simple_message_text",
			visible = true,
			layer = 2,
			color = Color.white,
			text = "Front of the E.R.F. building\n2 Jan 2017 - 9:37PM\nWashington D.C.",
			font_size = self._font_size,
			font = self._font,
			x = 5,
			y = 0,
			w = self._simple_message_panel_new:w(),
			h = self._simple_message_panel_new:h(),
			align = "left",
			vertical = "center",
			valign = "center",
			wrap = true,
			word_wrap = true
		})
	end

	function HudSimpleMessageNew:set_simple_text(text)
		--log("loaded!!")
		local simple_message_hud = self._simple_message_panel_new:child("simple_message_text")
		self._simple_message_panel_new:set_visible(true)

		local fade_in = function(o)
			local from = Color(0, 1, 1, 1)
			local to = Color(1, 1, 1, 1)
			local t = 0
			o:set_color(from)
			while t < 1 do
				local dt = coroutine.yield()
				t = t + dt
			end
			t = 0
			while t < 1 do
				local dt = coroutine.yield()
				t = t + dt
				o:set_color(from * (1 - t) + to * t)
			end
			o:set_color(to)
		end

		local fade_out = function(o)
			local from = Color(1, 1, 1, 1)
			local to = Color(0, 1, 1, 1)
			local t = 0
			o:set_color(from)
			while t < 1 do
				local dt = coroutine.yield()
				t = t + dt
			end
			t = 0
			while t < 1 do
				local dt = coroutine.yield()
				t = t + dt
				o:set_color(from * (1 - t) + to * t)
			end
			o:set_color(to)
		end

		--local text_to_string = tostring(text)
		--simple_message_hud:set_text(text_to_string)
		simple_message_hud:animate(fade_in)

		DelayedCalls:Add( "delayed_show_simple_message", 8, function()
		    simple_message_hud:animate(fade_out)
		  -- simple_message_hud:set_visible(false)
		end )

	end

    local HUDManager_setup_player_info_hud_pd2_original = HUDManager._setup_player_info_hud_pd2

	function HUDManager:_setup_player_info_hud_pd2(...)
        HUDManager_setup_player_info_hud_pd2_original(self, ...)
        self:_setup_simple_message_element_new()
    end

	function HUDManager:_setup_simple_message_element_new()
		local hud = managers.hud:script(PlayerBase.PLAYER_INFO_HUD_PD2)
		self._hud_simple_message_new = HudSimpleMessageNew:new(hud.panel)
	end
end