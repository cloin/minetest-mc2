local function set_daytime()
	    minetest.set_timeofday(0.5) -- 0.5 corresponds to midday (12:00 PM)
	        minetest.after(1, set_daytime) -- Set the time to midday every 1 second
	end

	set_daytime() -- Start the loop to set the time to midday

