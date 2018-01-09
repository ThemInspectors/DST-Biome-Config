local require = GLOBAL.require
require("map/lockandkey")
require("map/tasks")
require("map/rooms")
require("map/terrain")
require("map/level")
require("map/startlocations")

local blockersets = require("map/blockersets")

local LOCKS = GLOBAL.LOCKS
local KEYS = GLOBAL.KEYS

local GROUND = GLOBAL.GROUND
local LEVELTYPE = GLOBAL.LEVELTYPE

local Layouts = GLOBAL.require("map/layouts").Layouts
local StaticLayout = GLOBAL.require("map/static_layout")

Layouts["ThisMeansWarStartDST"] = StaticLayout.Get("map/static_layouts/thismeanswardst_start")
Layouts["BargainStartDST"] = StaticLayout.Get("map/static_layouts/bargainstartdst")

AddLevel(LEVELTYPE.SURVIVAL, {
    id="C_PLUS_PLUS",
    name="Classic Plus",
    desc= "Default Plus with RoG turned off.",
    location = "forest",
    version = 3,
    overrides={
        task_set = "classic",
        start_location = "plus",
        boons = "often",
--        islands = "always",
        spiders = "often",
        berrybush = "rare",
        carrot = "rare",
        rabbits = "rare",
        spring = "noseason",
        summer = "noseason",
        frograin = "never",
        wildfires = "never",
        bearger = "never",
        goosemoose = "never",
        dragonfly = "never",
        deciduousmonster = "never",
        houndmound = "never",
        buzzard = "never",
        catcoon = "never",
        moles = "never",
        lightninggoat = "never",
        rock_ice = "never",
        cactus = "never",
    },
    ordered_story_setpieces = {
        "Sculptures_1",
        "Maxwell5",
    },
    numrandom_set_pieces = 4,
    random_set_pieces = {
        "Sculptures_2",
        "Sculptures_3",
        "Sculptures_4",
        "Sculptures_5",
        "Chessy_1",
        "Chessy_2",
        "Chessy_3",
        "Chessy_4",
        "Chessy_5",
        "Chessy_6",
        --"ChessSpot1",
        --"ChessSpot2",
        --"ChessSpot3",
        "Maxwell1",
        "Maxwell2",
        "Maxwell3",
        "Maxwell4",
        "Maxwell6",
        "Maxwell7",
        "Warzone_1",
        "Warzone_2",
        "Warzone_3",
    },
})

AddLevel(LEVELTYPE.SURVIVAL, {
    id="INSPECTORMODWORLDGENLEVEL",
    name="Gen+",
    desc= "A preset required for having some options work.",
    location = "forest",
    version = 3,
    overrides={
      keep_disconnected_tiles = GetModConfigData("islandness"),
      islands = GetModConfigData("islandness") or "never", --Using "or never" to let it not crash when islandness is set to false.
      roads = GetModConfigData("disableRoads"),
    },
    ordered_story_setpieces = {
        "Sculptures_1",
        "Maxwell5",
    },
    numrandom_set_pieces = 4,
    random_set_pieces = {
        "Sculptures_2",
        "Sculptures_3",
        "Sculptures_4",
        "Sculptures_5",
        "Chessy_1",
        "Chessy_2",
        "Chessy_3",
        "Chessy_4",
        "Chessy_5",
        "Chessy_6",
        --"ChessSpot1",
        --"ChessSpot2",
        --"ChessSpot3",
        "Maxwell1",
        "Maxwell2",
        "Maxwell3",
        "Maxwell4",
        "Maxwell6",
        "Maxwell7",
        "Warzone_1",
        "Warzone_2",
        "Warzone_3",
    },
})

AddLevel(LEVELTYPE.SURVIVAL, {
    id="TWOWORLDS",
    name="Two Worlds",
    desc= "Don't Starve Adventure mode: Two Worlds",
    location = "forest",
    version = 3,
    overrides={
        task_set = "twolands",
        start_location = "bargainstart",
        day = "longday",
        season_start = "autumn",
        season = "onlyautumn",
        roads = "never",
        bearger = "never",
        deerclops = "never",
        keep_disconnected_tiles = true, --This allows islands to persist
        islands = "always" --Setting islands to always will try to seperate every task. Requires keep_disconnected_tiles
    },
    ordered_story_setpieces = {
        "Sculptures_1",
        "Maxwell5",
    },
    numrandom_set_pieces = 4,
    --These don't work.
    --[==[
    override_triggers = {
			["START"] = {	-- Quick (localised) fix for area-aware bug #677
          weather = "never",
          day = "longday",
        },
			["Land of Plenty"] = {
          weather = "never",
          day = "longday",
        },
			["The Side"] = {
			    weather = "often",
          day = "longdusk",
          deerclops = "always",
          bearger = "always",
        },
		},
    --]==]
    random_set_pieces = {
        "Sculptures_2",
        "Sculptures_3",
        "Sculptures_4",
        "Sculptures_5",
        "Chessy_1",
        "Chessy_2",
        "Chessy_3",
        "Chessy_4",
        "Chessy_5",
        "Chessy_6",
        --"ChessSpot1",
        --"ChessSpot2",
        --"ChessSpot3",
        "Maxwell1",
        "Maxwell2",
        "Maxwell3",
        "Maxwell4",
        "Maxwell6",
        "Maxwell7",
        "Warzone_1",
        "Warzone_2",
        "Warzone_3",
    },
})

AddTaskSet("twolands", {
    name = "Two Lands",
    location = "forest",
    tasks = {
        "Land of Plenty",
        "The other side",
    },
    numoptionaltasks = 0,
    optionaltasks = {},
    valid_start_tasks = {
        "Land of Plenty"
    },
    set_pieces = {
        ["MaxPigShrine"] = {tasks={"Land of Plenty"}},
        ["MaxMermShrine"] = {tasks={"The other side"}},
        ["ResurrectionStone"] = {count=2,tasks={"The other side", "Land of Plenty"}},
        ["MooseNest"] = { count = 3, tasks={"The other side"} },
  			["CaveEntrance"] = { count = 2, tasks={"The other side"} },
    }
})

AddStartLocation("bargainstart", {
    name = "BargainStart",
    location = "forest",
    start_setpeice = "BargainStartDST",
    start_node = {"Clearing"}
})
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
 AddLevelPreInitAny(addIslands)
end

if GetModConfigData("disableRoads") then
  print("Mod Gen Config: Attempting to disable roads.")
  local function removeRoads(level)
    if level.location ~= forest then return print("Mod Gen Config: location not in the forest, Aborting!") end
    --if level.overrides.roads then return print("Mod Gen Config: roads are already defined! Aborting!") end
    level.overrides.roads = "never"
    --if level.overrides.roads then return print("Mod Gen Config: Roads successfully removed!") else return print("Mod Gen Config: Failure removing roads!") end
  end
  AddLevelPreInitAny(removeRoads)
end
--]=====]
--[===[
AddTask("The Side", {
		locks=LOCKS.MEAT,
		keys_given=KEYS.NONE,
		entrance_room = "SanityWormholeBlocker",
		room_choices={
			["Graveyard"] = function() return math.random(2) end,
			["SpiderCity"] = function() return math.random(3) end,
			["Waspnests"] = 1,
			["WalrusHut_Rocky"] = function() return math.random(1) end,
			["Pondopolis"] = function() return math.random(2) end,
			["Tentacleland"] = function() return math.random(3) end,
			["Moundfield"] = function() return math.random(2) end,
			["MermTown"] = function() return 1 + math.random(3) end,
			["Trapfield"] = function() return 1 + math.random(2) end,
			["ChessArea"] = function() return math.random(2) end,
			["ChessMarsh"] = 1,
			["SpiderMarsh"] = function() return 2+math.random(2) end,
		},
		room_bg=GROUND.MARSH,
		background_room="BGMarsh",
		colour={r=.05,g=.5,b=.05,a=1}
	})
--]===]
--[====
--*******************************************
--** ANYTHING PAST THIS POINT IS NOT DONE! **
--*******************************************

--[===[
AddTaskSet("guardedswap", {
    name = "",
    location = "forest",
    tasks = {
        "Make a pick",
        "Dig that rock",
    },
    numoptionaltasks = 0 * GetModConfigData("optbiomescale")
    optionaltasks = {

    }
    valid_start_tasks = {
        "Make a pick"
    },
    set_pieces = {
        [""] = { count = , tasks={""} },
    }
})

-- Evil Tasks >:D



-- Evil Rooms
AddRoom("Blandlands", {


})
--]===]

--[===[
-- Ported Adventure Mode:

AddTaskSet("islandhopadventure", {
    name = "Adventure Mode - Archipelago",
    location = "forest",
    tasks = {
      "IslandHop_Start",
      "IslandHop_Hounds",
      "IslandHop_Forest",
      "IslandHop_Savanna",
      "IslandHop_Rocky",
      "IslandHop_Merm",
    },
    numoptionaltasks = 0,
    optionaltasks = {},
    valid_start_tasks = {},

set_pieces = {},
})

AddStartLocation("thismeanswardst", {
    name = "This Means War?",
    location = "forest",
    start_setpeice = "ThisMeansWarStartDST",
    start_node = {"BGGrass"}
})

AddLevel(LEVELTYPE.SURVIVAL, {
    id = "ISLANDHOP",
    name = "Archipelago",
    desc = "Don't Starve Island hop nostalgia.",
    location = "forest",
    version = 2,
    overrides = {
        task_set = "islandhopadventure",
        start_location = "thismeanswardst",
        weather = {"rare", "default", "often"},
        roads = "never",
        islands = "always",
        ordered_story_setpieces = {
            "Sculptures_1",
            "Maxwell5",
        },
        numrandom_set_pieces = 4,
        random_set_pieces = {
            "Sculptures_2",
            "Sculptures_3",
            "Sculptures_4",
            "Sculptures_5",
            "Chessy_1",
            "Chessy_2",
            "Chessy_3",
            "Chessy_4",
            "Chessy_5",
            "Chessy_6",
            "Maxwell1",
            "Maxwell2",
            "Maxwell3",
            "Maxwell4",
            "Maxwell6",
            "Maxwell7",
            "Warzone_1",
            "Warzone_2",
            "Warzone_3",
        },
    },
})
--]===]
