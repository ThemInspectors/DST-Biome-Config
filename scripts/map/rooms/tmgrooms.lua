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

AddRoom("TMGEasyStart", {
    colour={r=.55,g=.75,b=.75,a=.50},
    value = GROUND.FOREST,
    tags = {"ExitPiece", "Chester_Eyebone"},
    contents =  {
        countprefabs = {
            spawnpoint_multiplayer = 1,
        },
        distributepercent = .275,
        distributeprefabs={
            spiderden=0.001,
            beehive=0.003,
            flower=0.112,
            grass=0.2,
            smallmammal = {weight = 0.02, prefabs = {"rabbithole", "molehill"}},
            carrot_planted=0.05,
            flint=0.05,
            berrybush=0.3,
            berrybush_juicy = 0.1,
            sapling=0.2,
            twiggytree = 0.2,
            ground_twigs = 0.08,
            tree = {weight = 0.3, prefabs = {"evergreen", "deciduoustree"}},
            pond=.001,
            blue_mushroom = .005,
            green_mushroom = .003,
            red_mushroom = .004,
            rock1 = .3,
            rock2 = .3,
            },
    }
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
                    berrybush=0.2,
                    berrybush_juicy = 0.1,
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
                    berrybush=0.045,
                    berrybush_juicy = 0.015,
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
      berrybush=0.3,
      berrybush_juicy = 0.1,
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
                    berrybush=0.1,
                    berrybush_juicy = 0.03,
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

          AddRoom("TMGRocky", {
          					colour={r=.55,g=.75,b=.75,a=.50},
          					value = GROUND.ROCKY,
          					tags = {"ExitPiece", "Chester_Eyebone"},
          					contents =  {
          					                distributepercent = .1,
          					                distributeprefabs=
          					                {
          					                    rock1 = 2,
          					                    rock2 = 2,
          					                    tallbirdnest=.1,
          					                    spiderden=.01,
          					                    blue_mushroom = .002,
          					                },
          					            }
          					})

                    AddRoom("TMGBasicClearing", {
                    					colour={r=.8,g=0.5,b=.6,a=.50},
                    					value = GROUND.FOREST,
                    					tags = {"ExitPiece", "Chester_Eyebone", "StagehandGarden"},
                    					contents =  {
                    									countprefabs = {
                        										spawnpoint_multiplayer = 1,
                        									},
                    									countstaticlayouts={
                                        ["MushroomRingLarge"]=
                                          function()
                      											if math.random(0,1000) > 985 then
        																				return 1
        																		end
                      											return 0
                      										end,
                                          ["SimpleBase"] = 1,
                                      },
                    					                distributepercent = .1,
                    					                distributeprefabs=
                    					                {
                    										pighouse=0.015,
                                                            fireflies = 1,
                    					                    evergreen = 1.5,
                    					                    grass = .1,
                    					                    sapling=.8,
                    										twiggytree = 0.8,
                    										ground_twigs = 0.06,
                    					                    berrybush=.1,
                    					                    berrybush_juicy = 0.05,
                    					                    beehive=.05,
                    					                    red_mushroom = .01,
                    					                    green_mushroom = .02,
                    					                },
                    					            }
                    					})
