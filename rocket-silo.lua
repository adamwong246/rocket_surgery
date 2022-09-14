local rocketSilo = table.deepcopy(data.raw["rocket-silo"]["rocket-silo"])

rocketSilo.max_health = 1000;
rocketSilo.resistances = {};

rocketSilo.lamp_energy_usage = "10KW";
rocketSilo.idle_energy_usage = "1MW";
rocketSilo.energy_usage = "10MW"; --energy usage used when crafting the rocket
rocketSilo.active_energy_usage = "100MW";

rocketSilo.is_military_target = true;
rocketSilo.emissions_per_second = 1;
rocketSilo.energy_source.emissions_per_minute = 1000;

local rocket = table.deepcopy(data.raw["rocket-silo-rocket"]["rocket-silo-rocket"]);
rocket.emissions_per_second = 1;

data:extend{rocketSilo, rocket}
