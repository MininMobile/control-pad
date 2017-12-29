-- Get keys from config file
local Config = require "Config"
local Keys = Config.config;

-- Assign numpad to it's ID
lmc_device_set_name("numpad", "884B96C3");

-- Sent to AutoHotKey Function
sendToAHK = function (key)
    local file = io.open("F:\\Data\\Documents\\Programs\\luamacros\v2\\scripts\\keypressed.txt", "w")

    file:write(key)
    file:flush()
    file:close()

    -- use the F24 key to trigger AutoHotkey
    lmc_send_keys('{F24}')
end

-- Event Handler
lmc_set_handler("numpad", function(button, direction)
    if (direction == 1) then return end

    if type(Keys[button]) == "string" then
        sendToAHK(Keys[button])
    else
        print('This key is not assigned; ' .. button)
    end
end)

-- Tell when Launched
print("Launched")

-- Hide
lmc.minimizeToTray = true
lmc_minimize()