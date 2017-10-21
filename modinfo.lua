name = ""
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
    },
}
