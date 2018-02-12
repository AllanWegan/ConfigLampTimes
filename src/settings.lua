--[[
This file is part of the mod ConfigLampTimes that is licensed under the
GNU GPL-3.0 or later. See the file COPYING for a copy of the GNU GPLv3.0.
]]
data:extend({
    {
        name = "config-lamp-times-brightness-start-1",
        type = "double-setting",
        order = "10",
        setting_type = "startup",
        minimum_value = 0.0,
        maximum_value = 1.0,
        default_value = 0.7,
    },
    {
        name = "config-lamp-times-brightness-end-1",
        type = "double-setting",
        order = "11",
        setting_type = "startup",
        minimum_value = 0.0,
        maximum_value = 1.0,
        default_value = 0.5,
    },
    {
        name = "config-lamp-times-debug",
        type = "bool-setting",
        order = "12",
        setting_type = "startup",
        default_value = false,
    },
})
