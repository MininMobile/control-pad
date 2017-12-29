local Config = require "Config"
local Keys = Config.config;

lmc_device_set_name("numpad", "884B96C3");

sendToAHK = function (key)
    local file = io.open("F:\\Data\\Documents\\Programs\\luamacros\v2\\scripts\\keypressed.txt", "w")

    file:write(key)
    file:flush()
    file:close()

    -- use the F24 key to trigger AutoHotkey
    lmc_send_keys('{F24}')
end

lmc_set_handler("numpad", function(button, direction)
    if (direction == 1) then return end

    if type(Keys[button]) == "string" then
        sendToAHK(Keys[button])
    else
        print('This key is not assigned; ' .. button)
    end
end)

print("Launched")