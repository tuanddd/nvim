local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard_theme = require("alpha.themes.dashboard")

dashboard_theme.section.header.val = {
	-- [[ █████╗  █████╗ ███╗  ██╗ ██████╗ █████╗ ██╗     ███████╗]],
	-- [[██╔══██╗██╔══██╗████╗ ██║██╔════╝██╔══██╗██║     ██╔════╝]],
	-- [[██║  ╚═╝██║  ██║██╔██╗██║╚█████╗ ██║  ██║██║     █████╗  ]],
	-- [[██║  ██╗██║  ██║██║╚████║ ╚═══██╗██║  ██║██║     ██╔══╝  ]],
	-- [[╚█████╔╝╚█████╔╝██║ ╚███║██████╔╝╚█████╔╝███████╗███████╗]],
	-- [[ ╚════╝  ╚════╝ ╚═╝  ╚══╝╚═════╝  ╚════╝ ╚══════╝╚══════╝]],
	-- [[                                                         ]],
	-- [[            ██╗      █████╗ ██████╗  ██████╗             ]],
	-- [[            ██║     ██╔══██╗██╔══██╗██╔════╝             ]],
	-- [[            ██║     ███████║██████╦╝╚█████╗              ]],
	-- [[            ██║     ██╔══██║██╔══██╗ ╚═══██╗             ]],
	-- [[            ███████╗██║  ██║██████╦╝██████╔╝             ]],
	-- [[            ╚══════╝╚═╝  ╚═╝╚═════╝ ╚═════╝              ]],
	[[    ▒▒▒▒▒▒▒▒▒▒▒▒              ████████████████████████████                ]],
	[[▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ██              ]],
	[[▒▒▒▒▒▒▒▒░░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒██    ░░░░░░░░▒▒░░░░▒▒░░░░░░      ██            ]],
	[[░░▒▒░░▒▒▒▒░░░░░░▒▒▒▒▒▒░░▒▒██  ░░░░▒▒░░░░░░░░████░░░░░░░░░░  ██  ████      ]],
	[[▒▒░░░░░░░░░░░░████████░░░░██  ░░░░░░░░░░░░██▒▒▒▒██░░░░▒▒░░  ████▒▒▒▒██    ]],
	[[░░░░░░░░  ░░██▒▒▒▒▒▒████████  ░░░░░░░░░░░░██▒▒▒▒▒▒██░░░░░░  ██▒▒▒▒▒▒██    ]],
	[[░░  ░░░░  ░░████▒▒▒▒▒▒▒▒▒▒██  ░░░░░░▒▒░░░░██▒▒▒▒▒▒▒▒████████▒▒▒▒▒▒▒▒██    ]],
	[[░░    ░░░░  ░░  ████████▒▒██  ░░░░░░░░░░░░██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██    ]],
	[[░░░░  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████  ░░░░░░░░▒▒██▒▒▒▒▒▒  ██▒▒▒▒▒▒▒▒▒▒  ██▒▒▒▒██  ]],
	[[▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██  ░░▒▒░░░░░░██▒▒▒▒▒▒████▒▒▒▒▒▒██▒▒████▒▒▒▒██  ]],
	[[▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒██  ░░░░░░▒▒░░██▒▒░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░██  ]],
	[[▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒████    ░░▒▒░░░░██▒▒░░░░▒▒██▒▒▒▒██▒▒▒▒██▒▒░░░░██  ]],
	[[▓▓▓▓▓▓          ▓▓▒▒████████      ░░░░░░░░██▒▒▒▒▒▒██████████████▒▒▒▒██    ]],
	[[                  ██▒▒▒▒▒▒████              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██      ]],
	[[                  ██▒▒▒▒██  ██████████████████████████████████████        ]],
	[[                    ██████      ██▒▒▒▒██      ██▒▒▒▒██  ██▒▒▒▒██          ]],
	[[                                  ██████        ██████    ██████          ]],
	[[                                                                          ]],
}

alpha.setup(dashboard_theme.config)