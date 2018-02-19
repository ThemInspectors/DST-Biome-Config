-- Init
local require = GLOBAL.require
local SIZE_VARIATION = 2
local blockersets = require("map/blockersets")

----------------------------
--    Forest-Only Tasks   --
----------------------------

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

AddTask("TMG-Beehive yourself", {
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
--    ["TMG Rocky Forest"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Mod_BurntClearing",
  colour={r=1,g=1,b=0.5,a=1}
})

--------------------------------
--    Island Driving Tasks    --
--------------------------------

AddTask("Island Driver 1", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  entrance_room = "ForceDisconnectedRoom",
  room_choices={
    ["Blank"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Blank",
  colour={r=1,g=1,b=0.5,a=1}
})

AddTask("Island Driver 2", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  entrance_room = "ForceDisconnectedRoom",
  room_choices={
    ["Blank"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Blank",
  colour={r=1,g=1,b=0.5,a=1}
})

AddTask("Island Driver 3", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  entrance_room = "ForceDisconnectedRoom",
  room_choices={
    ["Blank"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Blank",
  colour={r=1,g=1,b=0.5,a=1}
})

AddTask("Island Driver 4", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  entrance_room = "ForceDisconnectedRoom",
  room_choices={
    ["Blank"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Blank",
  colour={r=1,g=1,b=0.5,a=1}
})

AddTask("Island Driver 5", {
  locks=LOCKS.NONE,
  keys_given=KEYS.NONE,
  entrance_room = "ForceDisconnectedRoom",
  room_choices={
    ["Blank"] = 1,
  },
  room_bg=GROUND.GRASS,
  background_room="Blank",
  colour={r=1,g=1,b=0.5,a=1}
})
--
--
--
AddTask("TMGIslandHop_Rocky", {
		locks=LOCKS.MEAT,
		keys_given=KEYS.MEAT,
		entrance_room = "ForceDisconnectedRoom",
		room_choices={
			["TMGRocky"] = 1+math.random(2),
		},
		room_bg=GROUND.DIRT,
		background_room="BGRocky",
		colour={r=math.random(),g=math.random(),b=math.random(),a=math.random()},
	})
