--[====[
DST-Biome Congig/Extra Worldgen Config /// Add Zest to your Don't Starve Together World!
Copyright (C) 2019  ThemInspectors

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
--]====]
name = "Extra Worldgen Config-DEV"
author = "ThemInspectors"
version = "0.2.0-DEV"
description = "Extra Worlgen Config\nAdds more presets and worldgen configs\nIncludes: Forest-Only Preset, Two Worlds & Archipelago from Adventure mode and an island preset.\n\nIMPORTANT: Do not ever use the biomes \"Two Lands\" or \"Archipelago\" Without the preset!\n Your world will NOT generate.\nV-"..version..""
forumthread = ""
api_version = 10
--icon_atlas = "modicon.xml"
--icon = "modicon.tex"
all_clients_require_mod = false
client_only_mod = false
dst_compatible = true
server_filter_tags = {"Worldgen+", "Extra Worldgen", "Islands"}

configuration_options = {
  --[==[
    {
        name = "optbiomescale",
        label = "Optional biomes",
        hover = "How many optional Extra biomes will spawn",
        options = {
            {description = "less", data = 0.5, hover = ""},
            {description = "default", data = 1, hover = ""},
            {description = "more", data = 1.5, hover = ""},
            {description = "lots", data = 2, hover = ""},
        },
        default = 1,
    },
    --]==]
    {
      name = "islandness",
      label = "Island frequency",
      hover = "How frequently will islands spawn? Requires Gen+",
      options = {
        {description = "None", data = false, hover = "Islands will NEVER spawn."},
        {description = "Default", data = "rare", hover = "Islands are allowed to spawn, will not try to seperate Biomes"},
        {description = "Recommend", data = "always", hover = "There will be anywhere between 3-5 Separate landmasses randomly distributed."},
        {description = "Outer Teir", data = "outerteir", hover = "There will be 3-4 landmasses of outer/higher teir biomes."},
        --{description = "Two Landmasses", data = "twolands", hover = "There will be 2 landmasses in the world."},
        {description = "Bonanza", data = "crazy", hover = "Almost every single biome will be separated ~10 Islands!"},
      },
      default = "rare",
    },
    {
      name = "disableRoads",
      label = "Roads",
      hover = "Stop roads from spawning? Requires Gen+",
      options = {
        {description = "Enabled", data = false, hover = "Roads should spawn."},
        {description = "Disabled", data = "never", hover = "Roads should not spawn."},
      },
      default = false,
    },
    --[==[
    {
      name = "bothBerries",
      label = "Both Berries",
      hover = "Add Both Berry types",
      options = {
        {description = "Enabled", data = true, hover = "Both types of berries will spawn."},
        {description = "Disabled", data = false, hover = "Only 1 kind of berry will spawn."},
      },
      default = false,
    },
    --]==]
    {
      name = "layoutmode",
      label = "Layout Mode",
      hover = "Change the layout mode, Requires Gen+",
      options = {
        {description = "Default", data = "LinkNodesByKeys", hover = "Default worldgen layout"},
        {description = "Mode 2", data = "RestrictNodesByKey", hover = "Different layout of the world."},
      },
      default = false,
    },
    {
      name = "removeocean",
      label = "Ocean",
      hover = "Stop the ocean from spawning? Requires Gen+",
      options = {
        {description = "Enabled", data = true, hover = "The Ocean should not spawn"},
        {description = "Disabled", data = false, hover = "The Ocean should spawn"},
      },
      default = true,
    },
    {
      name = "removeocean",
      label = "Ocean",
      hover = "Stop the ocean from spawning? Requires Gen+",
      options = {
        {description = "Enabled", data = true, hover = "The Ocean should not spawn"},
        {description = "Disabled", data = false, hover = "The Ocean should spawn"},
      },
      default = true,
    },
    --[==[
  {
    name = "basestart",
    label = "Base Start?",
    hover = "Pre-Built base near the spawnpoint",
    options = {
      {description = "Yes", data = true, hover = ""},
      {description = "No", data = false, hover = ""},
    },
    default = false,
  }, --]==]

}
