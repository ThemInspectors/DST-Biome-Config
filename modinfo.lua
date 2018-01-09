name = "Extra Worlgen Config"
description = ""

author = "ThemInspectors"
version = "1.0"
forumthread = ""
api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"
all_clients_require_mod = false
client_only_mod = false
dst_compatible = true
server_filter_tags = {}

configuration_options = {
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
    {
      name = "islandness",
      label = "Island frequency",
      hover = "How frequently will islands spawn?",
      options = {
        {description = "never", data = false, hover = ""}, --I'm not sure what options do in regards to islands, I'll test this later.
        {description = "rare", data = "rare", hover = ""},
        {description = "default", data = "default", hover = ""},
        {description = "often", data = "often", hover = ""},
        {description = "always", data = "always", hover = ""},
      },
      default = false,
    },
    {
      name = "disableRoads",
      label = "Disable Roads?",
      hover = "Stop roads from spawning? Will abort if another mod is handling it.",
      options = {
        {description = "Enabled", data = nil, hover = "Roads should spawn."},
        {description = "Disabled", data = "never", hover = "Roads should not spawn."},
      },
      default = nil,
    },
}
