--[[
This file is part of the mod ConfigLampTimes that is licensed under the
GNU GPL-3.0 or later. See the file COPYING for a copy of the GNU GPLv3.0.
]]

function modify_lamps(debugOutputEnabled)
  if debugOutputEnabled then
    print("ConfigLampTimes: Processing lamps...")
  end
  local start_b = settings.startup["config-lamp-times-brightness-start-1"].value
  local end_b = settings.startup["config-lamp-times-brightness-end-1"].value
  local start_d, end_d = 1.0 - start_b, 1.0 - end_b
  for name, proto in pairs(data.raw["lamp"]) do
    if proto.darkness_for_all_lamps_on and proto.darkness_for_all_lamps_off then
      local start_d_old = proto.darkness_for_all_lamps_off
      local end_d_old = proto.darkness_for_all_lamps_on
      print(" Changing lamp \"" .. proto.name .. "\"")
      print("  old staggering start brightness: " .. (1.0 - start_d_old))
      print("  old staggering end brightness: " .. (1.0 - end_d_old))
      print("  new staggering start brightness: " .. start_b)
      print("  new staggering end brightness: " .. end_b)
      proto.darkness_for_all_lamps_off = start_d
      proto.darkness_for_all_lamps_on = end_d
    end
  end
  if debugOutputEnabled then
    print("Done.")
  end
end

local debugOutputEnabled = settings.startup["config-lamp-times-debug"].value
modify_lamps(debugOutputEnabled)
