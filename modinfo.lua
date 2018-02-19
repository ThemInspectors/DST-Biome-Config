name = "Extra Worlgen Config"
description = "Extra Worlgen Config\nAdds more presets and worldgen configs\nIncludes: Forest-Only Preset, Two Worlds & Archipelago from Adventure mode and an island preset.\n\nIMPORTANT: Do not ever use the biomes \"Two Lands\" or \"Archipelago\" Without the preset!\n Your world will NOT generate."

author = "ThemInspectors"
version = "0.1.0-Beta"
forumthread = ""
api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"
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
        --{description = "More", data = "often", hover = "Some Islands will spawn."},
        {description = "Lots", data = "always", hover = "Will try to seperate biomes into islands."},
      },
      default = "rare",
    },
    {
      name = "disableRoads",
      label = "Disable Roads",
      hover = "Stop roads from spawning? Requires Gen+",
      options = {
        {description = "Enabled", data = false, hover = "Roads should spawn."},
        {description = "Disabled", data = "never", hover = "Roads should not spawn."},
      },
      default = false,
    },
}
