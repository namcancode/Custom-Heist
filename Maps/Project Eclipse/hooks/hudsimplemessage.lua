if RequiredScript == "lib/managers/hudmanagerpd2" then

	HudSimpleMessage = HudSimpleMessage or class()

	function HudSimpleMessage:init(parent)
		--log("test????")
		self._parent = parent
		self._font_size = 24
		self._font = tweak_data.hud_corner.assault_font
		
		self._simple_message_panel = self._parent:panel({
			visible = false,
			name = "simple_message_panel",
			w = 350,
			h = 200,
			align = "left",
			valign = "bottom",
			y = 380,
			x = 26
		})

		local simple_message_text = self._simple_message_panel:text({
			name = "simple_message_text",
			visible = true,
			layer = 2,
			color = Color.white,
			text = "Around the Black Forest 'Schwarzwald'\n26 Dec 2016 - 5:24 PM\nGermany",
			font_size = self._font_size,
			font = self._font,
			x = 5,
			y = 0,
			w = self._simple_message_panel:w(),
			h = self._simple_message_panel:h(),
			align = "left",
			vertical = "center",
			valign = "center"
		})
	end

	function HudSimpleMessage:set_simple_text(text)
		--log("loaded!!")
		local simple_message_hud = self._simple_message_panel:child("simple_message_text")
		self._simple_message_panel:set_visible(true)

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
        self:_setup_simple_message_element()
    end

	function HUDManager:_setup_simple_message_element()
		local hud = managers.hud:script(PlayerBase.PLAYER_INFO_HUD_PD2)
		self._hud_simple_message = HudSimpleMessage:new(hud.panel)
	end
end