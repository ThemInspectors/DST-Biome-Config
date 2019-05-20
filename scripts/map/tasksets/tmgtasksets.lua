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
        ["ResurrectionStone"] = {count=2,tasks={"IslandHop_Start","IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","TMGIslandHop_Rocky","IslandHop_Merm"}},
        --["MooseNest"] = { count = 4, tasks={"IslandHop_Start","IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","IslandHop_Rocky","IslandHop_Merm"} },
        ["CaveEntrance"] = { count = 5, tasks={"IslandHop_Hounds","IslandHop_Forest","IslandHop_Savanna","TMGIslandHop_Rocky","IslandHop_Merm"} },
    },
})

AddTaskSet("gameisafootadventure", {
    name = "Adventure Mode - Game is Afoot",
    location = "forest",
    tasks = {
      "Resource-Rich",
      "Lots-o-Spiders",
      "Lots-o-Tentacles",
      "Lots-o-Tallbirds",
      "Lots-o-Chessmonsters",
    },
    numoptionaltasks = 4,
    optionaltasks = {
      "The hunters",
      "Trapped Forest hunters",
      "Wasps and Frogs and bugs",
      "Tentacle-Blocked The Deep Forest",
      "Hounded Greater Plains",
      "Merms ahoy",
    },
    valid_start_tasks = {
      "Resource-Rich",
    },
    set_pieces = {
      ["CaveEntrance"] = { count = 5, tasks={"Resource-Rich",
                            "Lots-o-Spiders",
                            "Lots-o-Tentacles",
                            "Lots-o-Tallbirds",
                            "Lots-o-Chessmonsters", "The hunters",
                            "Trapped Forest hunters",
                            "Wasps and Frogs and bugs",
                            "Tentacle-Blocked The Deep Forest",
                            "Hounded Greater Plains",
                            "Merms ahoy"} },
      ["SimpleBase"] = { tasks={"Lots-o-Spiders", "Lots-o-Tentacles", "Lots-o-Tallbirds", "Lots-o-Chessmonsters"}},
      ["ResurrectionStone"] = { count=2, tasks={"Resource-Rich",
                            "Lots-o-Spiders",
                            "Lots-o-Tentacles",
                            "Lots-o-Tallbirds",
                            "Lots-o-Chessmonsters", "The hunters",
                            "Trapped Forest hunters",
                            "Wasps and Frogs and bugs",
                            "Tentacle-Blocked The Deep Forest",
                            "Hounded Greater Plains",
                            "Merms ahoy"} },
    },
})

AddTaskSet("tmgcaves", {
    name = "Caves on Land",
    location = "forest",
    tasks={
        "MudWorld",
        "MudCave",
        "MudLights",
        "MudPit",

        "BigBatCave",
        "RockyLand",
        "RedForest",
        "GreenForest",
        "BlueForest",
        "SpillagmiteCaverns",

        "CaveExitTask1",
        "CaveExitTask2",
        "CaveExitTask3",
        "CaveExitTask4",
        "CaveExitTask5",
        "CaveExitTask6",
        "CaveExitTask7",
        "CaveExitTask8",
        "CaveExitTask9",
        "CaveExitTask10",

    "ToadStoolTask1",
    "ToadStoolTask2",
    "ToadStoolTask3",

        -- ruins
        "LichenLand",
        "Residential",
        "Military",
        "Sacred",
        "TheLabyrinth",
        "SacredAltar",
        "AtriumMaze",
    },
    numoptionaltasks = 8,
    optionaltasks = {
        "SwampySinkhole",
        "CaveSwamp",
        "UndergroundForest",
        "PleasantSinkhole",
        "FungalNoiseForest",
        "FungalNoiseMeadow",
        "BatCloister",
        "RabbitTown",
        "RabbitCity",
        "SpiderLand",
        "RabbitSpiderWar",

        --ruins
        "MoreAltars",
        "CaveJungle",
        "SacredDanger",
        "MilitaryPits",
        "MuddySacred",
        "Residential2",
        "Residential3",
    },
    valid_start_tasks = {
        "CaveExitTask1",
        "CaveExitTask2",
        "CaveExitTask3",
        "CaveExitTask4",
        "CaveExitTask5",
        "CaveExitTask6",
        "CaveExitTask7",
        "CaveExitTask8",
        "CaveExitTask9",
        "CaveExitTask10",
    },
    set_pieces = { -- if you add or remove tasks, don't forget to update this list!
        ["TentaclePillar"] = { count = 11, tasks= { -- Note: An odd number because AtriumMaze contains one
            "MudWorld", "MudCave", "MudLights", "MudPit", "BigBatCave", "RockyLand", "RedForest", "GreenForest", "BlueForest", "SpillagmiteCaverns", "SwampySinkhole", "CaveSwamp", "UndergroundForest", "PleasantSinkhole", "FungalNoiseForest", "FungalNoiseMeadow", "BatCloister", "RabbitTown", "RabbitCity", "SpiderLand", "RabbitSpiderWar",
        } },
        ["ResurrectionStone"] = { count = 2, tasks={
            "MudWorld", "MudCave", "MudLights", "MudPit", "BigBatCave", "RockyLand", "RedForest", "GreenForest", "BlueForest", "SpillagmiteCaverns", "SwampySinkhole", "CaveSwamp", "UndergroundForest", "PleasantSinkhole", "FungalNoiseForest", "FungalNoiseMeadow", "BatCloister", "RabbitTown", "RabbitCity", "SpiderLand", "RabbitSpiderWar",
        } },
    },
})
