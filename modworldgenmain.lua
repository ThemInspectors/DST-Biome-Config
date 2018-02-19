print("Disable Roads: "..GetModConfigData("disableRoads"))
----------------
--    Init    --
----------------

local require = GLOBAL.require

modimport("scripts/map/levels/tmglevels") -- Load all custom Tasks, rooms and More.
modimport("scripts/map/tasks/tmgtasks")
modimport("scripts/map/tasksets/tmgtasksets")
modimport("scripts/map/rooms/tmgrooms")
modimport("scripts/map/startlocations")

local Layouts = GLOBAL.require("map/layouts").Layouts
local StaticLayout = GLOBAL.require("map/static_layout")

Layouts["ThisMeansWarStartDST"] = StaticLayout.Get("map/static_layouts/thismeanswardst_start") -- SetPieces
Layouts["BargainStartDST"] = StaticLayout.Get("map/static_layouts/bargainstartdst")

--------------------
--    Functions   --
--------------------

local function driveIslands(level)
  if level.location ~= "forest" then return print("Mod Gen Config: location not in the forest, Aborting!") end --Early return for caves
  if level.id ~= "INSPECTORMODWORLDGENLEVEL" then return print("Mod Gen Config Level ID is not Gen+, Aborting! Level ID is: "..level.id) end
  if GetModConfigData("islandness") == "often" then
    table.insert(level.tasks, "Island Driver 1")
  elseif GetModConfigData("islandness") == "always" then
    print("Islandness Should be Always, it is currently: "..GetModConfigData("islandness"))
    table.insert(level.tasks, "Island Driver 1")
    table.insert(level.tasks, "Island Driver 2")
    table.insert(level.tasks, "Island Driver 3")
    table.insert(level.tasks, "Island Driver 4")
    table.insert(level.tasks, "Island Driver 5")
  end
end

--These functions aren't working :/
--[=====[
if GetModConfigData("islandness") then -- This function inserts island-allowing overrides into the level.
print("Mod Gen Config: Attempting to allow islands. Islandness = "..GetModConfigData("islandness"))
 local function addIslands(level)
   if level.location ~= "forest" then return print("Mod Gen Config: location not in the forest, Aborting!") end --Early return for caves
   --if level.overrides.islands then return print("Mod Gen Config: islandness is already defined! Aborting!") end -- Early return if an other mod is handling this
--   print("World Biome Config!#S@D")
    level.overrides.keep_disconnected_tiles = true
    level.overrides.islands = GetModConfigData("islandness")
--    print("Mod Gen Config: Islandness successfully added with value of: "..level.overrides.islands)
 end
end

if GetModConfigData("disableRoads") then
  print("Mod Gen Config: Attempting to disable roads.")
  local function removeRoads(level)
    if level.location ~= forest then return print("Mod Gen Config: location not in the forest, Aborting!") end
    --if level.overrides.roads then return print("Mod Gen Config: roads are already defined! Aborting!") end
    level.overrides.roads = "never"
    --if level.overrides.roads then return print("Mod Gen Config: Roads successfully removed!") else return print("Mod Gen Config: Failure removing roads!") end
  end

end
--]=====]

-------------------------
--    Run Functions    --
-------------------------

--AddLevelPreInitAny(addIslands)
--AddLevelPreInitAny(removeRoads)
AddLevelPreInitAny(driveIslands)
