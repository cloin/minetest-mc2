local normal_speed = 1.0 -- default walking speed
local fast_speed = 10.0 -- adjust this value to set the custom fast speed

minetest.register_globalstep(function(dtime)
	for _, player in ipairs(minetest.get_connected_players()) do
		if player:get_player_control().aux1 and minetest.check_player_privs(player, {fast = true}) then
			player:set_physics_override({speed = fast_speed})
		else
			player:set_physics_override({speed = normal_speed})
		end
	end
end)

