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

--local Layouts = GLOBAL.require("map/layouts").Layouts --Going to be using this later. maybe....
--local StaticLayout = GLOBAL.require("map/static_layout") -- same story

AddTaskSetPreInitAny(function(tasksetdata)
    GLOBAL.dumptable(tasksetdata)
end)

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
            islands = "always",

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
		random_set_pieces =
		{
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

--[====[
--*******************************************
--** ANYTHING PAST THIS POINT IS NOT DONE! **
--*******************************************

-- If you want to use these (for developer purposes) remove all of the text on lines #45 and #115

-- Ported Adventure Mode:

AddTaskSet("islandhop", {
    name = "Island Hopping",
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
    valid_start_tasks = {

    },

set_pieces = { --set pieces

    },
})

AddLevel(LEVELTYPE.SURVIVAL, {
    id = "ISLANDHOP",
    name = "Archipelago",
    desc = "Don't Starve Island hop nostalgia.",
    location = "forest",
    version = 2,
    overrides = {
        task_set = "islandhop",
        start_location = "",
        roads = "never",
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
--]====]
