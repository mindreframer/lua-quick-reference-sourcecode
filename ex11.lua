-- Example 11. Safely load a configuration file

--8<----------------------------------------------------------------------------
local f = io.open('config.lua', 'w')
f:write([[
--8<----------------------------------------------------------------------------

-- File "config.lua".
width = 600
height = 400
home_path = "/home/mitchell"

--8<----------------------------------------------------------------------------
]])
f:close()
--8<----------------------------------------------------------------------------

-- Program code.
local config = {}
assert(loadfile("config.lua", "t", config))()
for option, setting in pairs(config) do
  --[[ process option and setting ]]
  --8<--------------------------------------------------------------------------
  print(option, setting)
  --8<--------------------------------------------------------------------------
end

--8<----------------------------------------------------------------------------
os.remove('config.lua')
--8<----------------------------------------------------------------------------
