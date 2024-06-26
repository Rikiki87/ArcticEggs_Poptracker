-- UAT example pack by black_sliver
-- init.lua

Tracker:AddItems("items/items.json")
Tracker:AddLayouts("layouts/standard.json")

-- Maps
Tracker:AddMaps("maps/maps.json")
Tracker:AddLocations("locations/prison.json")
Tracker:AddLocations("locations/rooftops.json")
Tracker:AddLocations("locations/docks.json")
Tracker:AddLocations("locations/club.json")

ScriptHost:LoadScript("scripts/logic.lua")

if Archipelago then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
