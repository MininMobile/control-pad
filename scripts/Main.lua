-- Get keys from config file
local Config = require "Config"
local Keys = Config.config;

-- Assign numpad to it's ID
lmc_device_set_name("numpad", "884B96C3");

-- Sent to AutoHotKey Function
sendToAHK = function (key)
	-- Set File Directory
	local file = io.open("F:\\Data\\Documents\\Programs\\luamacros\v2\\scripts\\key.temp", "w")

	-- Write to File
	file:write(key)
	file:flush()
	file:close()

	-- Trigger AutoHotkey
	lmc_send_keys('{F24}')
end

-- Event Handler
lmc_set_handler("numpad", function(button, direction)
	-- Ignore Double-Trigger
	if (direction == 1) then return end

	-- Check if Key is Assigned
	if type(Keys[button]) == "string" then
		-- Launch AHK
		sendToAHK(Keys[button])
	else
		-- oh. oh no.
		print('This key is not assigned; ' .. button)
	end
end)

-- Tell when Launched
print("Launched")

-- Hide
lmc.minimizeToTray = true
lmc_minimize()