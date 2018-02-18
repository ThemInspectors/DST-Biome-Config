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

SIZE_VARIATION = 2

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
      roads = GetModConfigData("disableRoads") or nil,
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

AddTaskSet("creepyforest", {
    name = "Forest-Only",
    location = "forest",
    tasks = {
      "Forest hunters",
      "For a nice walk",
      "Speak to the king classic",
      "TMG Merm-Blocked Pigs",
      "Beehive yourself",
      "TMG The dry Forest",
    },
    numoptionaltasks = 0,
    optionaltasks = {},
    valid_start_tasks = {
      "TMG The dry Forest",
    },
    set_pieces = {
        ["DeciduousPond"] = {tasks={"Forest hunters", "TMG Merm-Blocked Pigs", "Speak to the king classic", "For a nice walk"}},
        ["ResurrectionStone"] = {count=2,tasks={"Forest hunters", "TMG Merm-Blocked Pigs", "Speak to the king classic", "For a nice walk", "TMG the dry desert", "Beehive yourself"}},
        ["MooseNest"] = { count = 4, tasks={"Forest hunters", "TMG Merm-Blocked Pigs", "Speak to the king classic", "For a nice walk", "TMG the dry desert"} },
        ["CaveEntrance"] = { count = 5, tasks={"Forest hunters", "TMG Merm-Blocked Pigs", "Speak to the king classic", "For a nice walk", "TMG the dry desert", "Beehive yourself"} },
    }
})

AddStartLocation("bargainstart", {
    name = "BargainStart",
    location = "forest",
    start_setpeice = "BargainStartDST",
    start_node = {"Clearing"}
})

















--[======[
******************************
*       Forest-Only          *
*      Tasks & Rooms         *
******************************
--]======]
AddTask("TMG Merm-Blocked Pigs", {
  locks={LOCKS.PIGGIFTS,LOCKS.TIER3,LOCKS.ADVANCED_COMBAT},
  keys_given={KEYS.PIGS,KEYS.MEAT,KEYS.GRASS,KEYS.WOOD,KEYS.TIER2},
  entrance_room="Mermfield", -- This should be interesting
  room_choices={
    ["PigVillage"] = 1,
    ["Wormhole"] = 1,
    ["Forest"] = function() return 1 + math.random(SIZE_VARIATION) end,
    ["Marsh"] = function() return math.random(SIZE_VARIATION) end,
    ["DeepForest"] = function() return math.random(SIZE_VARIATION) end,
    ["Clearing"] = 1,
  },
  room_bg=GROUND.FOREST,
  background_room="BGForest",
  colour={r=1,g=0,b=0,a=1}
})

AddTask("Beehive yourself", {
  locks={LOCKS.BEEHIVE,LOCKS.TIER1},
  keys_given={KEYS.HONEY,KEYS.TIER2},
  entrance_room_chance=0.8,
  entrance_room=blockersets.all_bees,
  room_choices={
    ["ForestBeeClearing"] = 1,
    ["Wormhole"] = 1,
    ["BeeQueenBee"] = 1,
    ["Forest"] = 2,
    ["FlowerPatch"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="BGForest",
  colour={r=0,g=1,b=0.3,a=1},
})

AddTask("TMG The dry Forest", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  room_choices={
    ["Forest"] = function() return math.random(SIZE_VARIATION) end,
    ["Mod_Wormhole_Burnt"] = 1,
    ["Mod_BurntForestStart"] = 1,
    ["Mod_BurntForest"] = function() return math.random(SIZE_VARIATION) end,
    ["Mod_BurntClearing"] = function() return math.random(SIZE_VARIATION) end,
    ["DryAntlion"] = 1,
    ["IdleOasis"] = 1,
    ["DragonflyArena"] = 1,
    ["TMG Rocky Forest"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Mod_BurntClearing",
  colour={r=1,g=1,b=0.5,a=1}
})

AddRoom("ForestBeeClearing", {
    colour={r=.8,g=1,b=.8,a=.50},
    value = GROUND.FOREST,
    contents =  {
        countprefabs= {
            fireflies= 1,
            flower=6,
            beehive=1,
        },
        distributepercent = 0.4,
        distributeprefabs= {
          evergreen = 0.15,
          grass = .1,
          sapling=.2,
          twiggytree = 0.2,
          ground_twigs = 0.06,
        }
    }
})

AddRoom("TMG Rocky Forest", {
    colour={r=.55,g=.75,b=.75,a=.50},
    value = GROUND.FOREST,
    tags = {"ExitPiece", "Chester_Eyebone"},
        contents =  {
            distributepercent = .5,
            distributeprefabs= {
                rock1 = 2,
                rock2 = 2,
                rock_ice = .75,
                rocks = 1,
                flint = 1,
                blue_mushroom = .002,
                green_mushroom = .002,
                red_mushroom = .002,
                grassgekko = 0.3,
                evergreen = 4,
                grass = .1,
                sapling=.2,
                twiggytree = 0.2,
                ground_twigs = 0.06,
            },
            prefabdata={
                evergreen = {burnt={true}},
                twiggytree= {burnt={true}},
            }
        },
})

AddRoom("DryAntlion", {
    colour={r=0.3,g=0.2,b=0.1,a=0.3},
    value = GROUND.DIRT_NOISE,
    tags = {"RoadPoison", "sandstorm"},
    contents =  {
          countstaticlayouts={["AntlionSpawningGround"]=1}, -- using a static layout because this can force it to be in the center of the room
          distributepercent = 0.2,
          distributeprefabs =
          {
            marsh_bush = 0.66,
            marsh_tree= 0.66,
            oasis_cactus = 0.1,
            houndbone = .5,
            tumbleweedspawner = .05,
            cactus = 0.2,
          },
          prefabdata={
            marsh_tree = {burnt={true}},
          }
    }
})

AddRoom("IdleOasis", {
  colour={r=0.3,g=0.2,b=0.1,a=0.3},
  value = GROUND.DIRT_NOISE,
  tags = {"RoadPoison", "sandstorm"},
  contents =  {
    countstaticlayouts={["Oasis"]=1},
    countprefabs= {
        lightninggoat = function () return 2 + math.random(4) end,
    },
    distributepercent = 0.2,
    distributeprefabs =
    {
      cactus = 0.2,
      marsh_tree = 0.75,
      tumbleweedspawner = .05,
      marsh_bush = .8,
      oasis_cactus = 0.2,
    },
    prefabdata={
      marsh_tree = {burnt={true}},
    }
  }
})

AddRoom("Mod_BurntClearing", {
    colour={r=.8,g=0.5,b=.7,a=.50},
    value = GROUND.FOREST,
    tags = {"ExitPiece", "Chester_Eyebone"},
    contents =  {
      distributepercent = .1,
      distributeprefabs={
					                    evergreen = 0.15,
					                    grass = .1,
					                    sapling=.2,
										twiggytree = 0.2,
										ground_twigs = 0.06,
					                },
									prefabdata={
										evergreen = {burnt={true}},
                    twiggytree= {burnt={true}},
									}
    }
})


AddRoom("Mod_BurntForestStart", {
					colour={r=.010,g=.010,b=.010,a=.50},
					value = GROUND.FOREST,
					contents =  {
									countprefabs= {
										firepit=1,
									},
									distributepercent = 0.6,
									distributeprefabs= {
										evergreen = 3,
										charcoal = 0.2,
									},
									prefabdata={
										evergreen = {burnt={true}},
									}
								}
					})

AddRoom("Mod_Wormhole_Burnt", {
  colour={r=1,g=0,b=0,a=0.3},
  value = GROUND.FOREST,
  contents =  {
    countprefabs = {
      wormhole_MARKER = 1,
    },
    distributepercent=0.3,
    distributeprefabs= {
      grass = 0.5,
      sapling = 0.5,
      twiggytree = 0.2,
      rocks = 3,
      evergreen = 7,
    },
    prefabdata={
      evergreen = {burnt={true}},
      twiggytree = {burnt={true}},
    }
  }
})

AddRoom("Mod_BurntForest", {
					colour={r=.090,g=.10,b=.010,a=.50},
					value = GROUND.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
									distributepercent = 0.4,
									distributeprefabs= {
										evergreen = 3,
									},
									prefabdata={
										evergreen = {burnt={true}},
									}
    }
})

AddRoom("Mod_BGGrassBurnt", {
					colour={r=.5,g=.8,b=.5,a=.50},
					value = GROUND.GRASS,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
					                distributepercent = .275,
					                distributeprefabs=
					                {
					                	rock1=0.01,
										rock2=0.01,
										spiderden=0.001,
										beehive=0.003,
										flower=0.112,
										grass=0.2,
										smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}},
										flint=0.05,
										sapling=0.2,
										twiggytree = 0.2,
										ground_twigs = 0.08,
										evergreen=0.3,
					                },
									prefabdata={
										evergreen = {burnt={true}},
									}
					            }
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
