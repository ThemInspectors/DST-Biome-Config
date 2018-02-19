AddTaskSet("TMGtwolands", {
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

AddTaskSet("TMGcreepyforest", {
    name = "Forest-Only",
    location = "forest",
    tasks = {
      "Forest hunters",
      "For a nice walk",
      "Speak to the king classic",
      "TMG Merm-Blocked Pigs",
      "TMG-Beehive yourself",
      "TMG The dry Forest",
      "Dig that rock"
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

AddTaskSet("islandhopadventure", {
    name = "Adventure Mode - Archipelago",
    location = "forest",
    tasks = {
      "IslandHop_Start",
      "IslandHop_Hounds",
      "IslandHop_Forest",
      "IslandHop_Savanna",
      "TMGIslandHop_Rocky",
      "IslandHop_Merm",
    },
    numoptionaltasks = 0,
    optionaltasks = {},
    valid_start_tasks = {
      "IslandHop_Start",
    },
    set_pieces = {
        --["DeciduousPond"] = {tasks={"Forest hunters", "TMG Merm-Blocked Pigs", "Speak to the king classic", "For a nice walk"}},
        ["ResurrectionStone"] = {count=2,tasks={"IslandHop_Start","IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","IslandHop_Rocky","IslandHop_Merm"}},
        --["MooseNest"] = { count = 4, tasks={"IslandHop_Start","IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","IslandHop_Rocky","IslandHop_Merm"} },
        ["CaveEntrance"] = { count = 5, tasks={"IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","IslandHop_Rocky","IslandHop_Merm"} },
    },
})
